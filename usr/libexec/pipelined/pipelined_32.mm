uint64_t sub_1001F8A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_100251AE0(*(a1 + 280));
  v11 = sub_100251AF0(*(a1 + 280));
  result = sub_1001F3D88(a5, a2, a3, a4, (a1 + 376), v10, v11);
  if (*(a5 + 240) == 4)
  {
    sub_1000474A4(v14, "");
    sub_100383A74(__p, v14);
    sub_10003F5D0(__p);
  }

  return result;
}

void sub_1001F8B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1001DF830(v14);
    _Unwind_Resume(a1);
  }

  sub_1001DF830(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F8B8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (a1[1] == a1[2])
  {
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v18, "The caller is requesting configuration state while uninitialized.");
    std::runtime_error::runtime_error(&buf, &v18);
    buf.__vftable = &off_1004336A0;
    sub_10010A984(&v25);
  }

  if ((sub_1002517D4(a1[35]) & 1) == 0 && sub_100232F8C(a2))
  {
    goto LABEL_16;
  }

  sub_1001F8A8C(a1, a1[1], a2, 0, &v18);
  if (!v21)
  {
LABEL_24:
    size = v18.__r_.__value_.__l.__size_;
    *a3 = v18.__r_.__value_.__r.__words[0];
    *(a3 + 8) = size;
    if (size)
    {
      atomic_fetch_add_explicit((size + 8), 1uLL, memory_order_relaxed);
    }

    goto LABEL_26;
  }

  v6 = a1[4];
  if (v6 && (*(sub_100118234(v6) + 120) & 1) != 0)
  {
LABEL_7:
    sub_1001F8A8C(a1, a1[4], a2, 2, a3);
    return sub_1001DF830(&v18);
  }

  if (a1[2] - a1[1] != 72)
  {
    sub_1001DF830(&v18);
LABEL_16:
    v9 = a1[1];
    if (0x8E38E38E38E38E39 * ((a1[2] - v9) >> 3) < 2)
    {
LABEL_23:
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v18, "The above for loop always returns. How did we get here?");
      std::runtime_error::runtime_error(&buf, &v18);
      buf.__vftable = &off_1004338D0;
      sub_10010A984(&v17);
    }

    v10 = 1;
    v11 = 72;
    while (1)
    {
      sub_1001F8A8C(a1, v9 + v11, a2, 1, &v18);
      if (!v21)
      {
        goto LABEL_24;
      }

      v12 = a1[4];
      if (v12 && *(sub_100118234(v12) + 120) == 1)
      {
        goto LABEL_7;
      }

      if (v10 == -1 - 0x71C71C71C71C71C7 * ((a1[2] - a1[1]) >> 3))
      {
        break;
      }

      sub_1001DF830(&v18);
      v9 = a1[1];
      ++v10;
      v11 += 72;
      if (v10 >= 0x8E38E38E38E38E39 * ((a1[2] - v9) >> 3))
      {
        goto LABEL_23;
      }
    }
  }

  if (qword_10045B050 == -1)
  {
    v7 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sub_100385B9C();
  v7 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
LABEL_11:
    LOWORD(buf.__vftable) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "No particle filters can yield.", &buf, 2u);
  }

LABEL_12:
  v8 = v18.__r_.__value_.__l.__size_;
  *a3 = v18.__r_.__value_.__r.__words[0];
  *(a3 + 8) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_26:
  *(a3 + 16) = *(&v18.__r_.__value_.__l + 2);
  sub_1001FA76C(a3 + 24, &v19);
  sub_1001FB918(a3 + 136, v20);
  v14 = v20[12];
  *(a3 + 224) = v20[11];
  *(a3 + 232) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = v22;
  *(a3 + 240) = v21;
  *(a3 + 256) = v15;
  *(a3 + 272) = v23;
  *(a3 + 288) = v24;
  return sub_1001DF830(&v18);
}

void sub_1001F8F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  v20 = *(v18 - 104);
  if (v20)
  {
    *(v18 - 96) = v20;
    operator delete(v20);
  }

  std::runtime_error::~runtime_error((v18 - 80));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1001F90A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1001DF830(va);
  _Unwind_Resume(a1);
}

void *sub_1001F90BC@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = result[1];
  if (result[2] != v4)
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    do
    {
      v13 = sub_100251AE0(v6[35]);
      v9 = sub_100251AF0(v6[35]);
      v12 = v9;
      v11 = v8 != 0;
      v10 = a3[1];
      if (v10 >= a3[2])
      {
        result = sub_1001FDCDC(a3, v4 + v7, a2, &v13, &v12, &v11, v6 + 47);
      }

      else
      {
        sub_1001F3D88(a3[1], v4 + v7, a2, v8 != 0, v6 + 47, v13, v9);
        result = v10 + 296;
      }

      a3[1] = result;
      ++v8;
      v4 = v6[1];
      v7 += 72;
    }

    while (v8 < 0x8E38E38E38E38E39 * ((v6[2] - v4) >> 3));
  }

  return result;
}

void sub_1001F91E0(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_1001DE8B0(v1);
  _Unwind_Resume(a1);
}

unint64_t sub_1001F9220@<X0>(unint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *(result + 32);
  if (v3)
  {
    v5 = result;
    v7 = sub_100251AE0(*(result + 280));
    v12 = v7;
    v8 = sub_100251AF0(*(v5 + 280));
    v11 = v8;
    v10 = 2;
    v9 = a3[1];
    if (v9 >= a3[2])
    {
      result = sub_1001FDFF4(a3, v3, a2, &v12, &v11, &v10, (v5 + 376));
    }

    else
    {
      sub_1001F3D88(a3[1], v3, a2, 2, (v5 + 376), v7, v8);
      result = v9 + 296;
    }

    a3[1] = result;
  }

  return result;
}

void sub_1001F9308(_Unwind_Exception *a1)
{
  *(v1 + 8) = v2;
  sub_1001DE8B0(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F9348@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v4 = *(result + 8);
  v3 = *(result + 16);
  v18 = v3;
  while (v4 != v3)
  {
    result = sub_100118234(v4);
    v5 = *(result + 8);
    v6 = *(result + 16);
    while (v5 != v6)
    {
      v7 = (*(**(v5 + 56) + 64))(*(v5 + 56));
      if (!sub_1001EDFC8(a2, v7))
      {
        result = sub_1001FC3F4(a2, v7, v7, (v5 + 56));
        goto LABEL_7;
      }

      v8 = sub_1001183C0(&__p, v7);
      v9 = *(a2 + 8);
      if (!*&v9)
      {
        goto LABEL_36;
      }

      v10 = v8;
      v11 = vcnt_s8(v9);
      v11.i16[0] = vaddlv_u8(v11);
      if (v11.u32[0] > 1uLL)
      {
        v12 = v8;
        if (v8 >= *&v9)
        {
          v12 = v8 % *&v9;
        }
      }

      else
      {
        v12 = (*&v9 - 1) & v8;
      }

      v13 = *(*a2 + 8 * v12);
      if (!v13 || (v14 = *v13) == 0)
      {
LABEL_36:
        sub_10001C6D4("unordered_map::at: key not found");
      }

      if (v11.u32[0] < 2uLL)
      {
        v15 = *&v9 - 1;
        while (1)
        {
          v16 = v14[1];
          if (v16 == v10)
          {
            result = sub_1001182C8(v14 + 2, v7);
            if (result)
            {
              goto LABEL_22;
            }
          }

          else if ((v16 & v15) != v12)
          {
            goto LABEL_36;
          }

          v14 = *v14;
          if (!v14)
          {
            goto LABEL_36;
          }
        }
      }

      while (1)
      {
        v17 = v14[1];
        if (v17 == v10)
        {
          break;
        }

        if (v17 >= *&v9)
        {
          v17 %= *&v9;
        }

        if (v17 != v12)
        {
          goto LABEL_36;
        }

LABEL_29:
        v14 = *v14;
        if (!v14)
        {
          goto LABEL_36;
        }
      }

      result = sub_1001182C8(v14 + 2, v7);
      if ((result & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_22:
      if (*(v5 + 56) != v14[4])
      {
        v21 = 0;
        LOBYTE(v20) = 0;
        sub_1001FC3A4(&__p, "Two particles with the same floorKey must have the same floorEnv");
        sub_1000E661C(&v20, &__p, 1);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v21 < 0)
        {
          operator delete(v20);
        }

        sub_10003F5D0(&v19);
      }

LABEL_7:
      v5 += 80;
    }

    v4 += 72;
    v3 = v18;
  }

  return result;
}

void sub_1001F95DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_1001E1838(v22);
    _Unwind_Resume(a1);
  }

  sub_1001E1838(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_1001F9648(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v1 == v2)
  {
    return 1;
  }

  do
  {
    result = *(sub_100118234(v1) + 120);
    v1 += 72;
  }

  while (result == 1 && v1 != v2);
  return result;
}

void sub_1001F969C(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); v1 != i; v1 += 72)
  {
    sub_100118234(v1);
    nullsub_35();
  }
}

uint64_t sub_1001F96EC(void *a1, uint64_t a2)
{
  v4 = a1[45];
  if (!v4[2] || ((*(*v4 + 40))(v4) & 1) == 0)
  {
    sub_1003846E0(__p, v12);
    sub_10003F5D0(__p);
  }

  v6 = a1[1];
  v5 = a1[2];
  if (v6 == v5)
  {
    return 0;
  }

  v7 = 0;
  do
  {
    v8 = sub_100118234(v6);
    v7 |= sub_1001EB084(v8, a2, v9);
    v6 += 72;
  }

  while (v6 != v5);
  return v7 & 1;
}

void sub_1001F97CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001F97E8(void *a1, int a2)
{
  if (sub_1001825C0((a1 + 52), a2))
  {

    sub_1001F5C64(a1);
  }
}

uint64_t sub_1001F9864(uint64_t a1)
{
  v2 = *(a1 + 368);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *(a1 + 352);
  *(a1 + 352) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  if (*(a1 + 288) != 1)
  {
    if (*(a1 + 80) != 1)
    {
      goto LABEL_7;
    }

LABEL_25:
    sub_10012E8E4(a1 + 88);
    *(a1 + 80) = 0;
    v5 = *(a1 + 72);
    if (!v5)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v6 = *(a1 + 320);
  if (v6)
  {
    *(a1 + 328) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 296);
  if (v7)
  {
    v8 = *(a1 + 304);
    v9 = *(a1 + 296);
    if (v8 != v7)
    {
      v10 = v8 - 168;
      do
      {
        v12 = *(v8 - 176);
        if (v12 == v12 >> 31)
        {
          if (*(v8 - 128) == 1)
          {
            *(v8 - 128) = 0;
          }
        }

        else
        {
          v11 = *(v8 - 168);
          if (v12 < 0)
          {
            if (v11)
            {
              (*(*v11 + 8))(v11);
            }
          }

          else
          {
            (*v11)(v8 - 168);
          }
        }

        v8 -= 208;
        v10 -= 208;
      }

      while (v8 != v7);
      v9 = *(a1 + 296);
    }

    *(a1 + 304) = v7;
    operator delete(v9);
  }

  *(a1 + 288) = 0;
  if (*(a1 + 80) == 1)
  {
    goto LABEL_25;
  }

LABEL_7:
  v5 = *(a1 + 72);
  if (!v5)
  {
    goto LABEL_28;
  }

LABEL_26:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

LABEL_28:
  v13 = *(a1 + 48);
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *(a1 + 32);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = *(a1 + 8);
  if (!v15 || atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v15->__on_zero_shared)(v15);
  std::__shared_weak_count::__release_weak(v15);
  return a1;
}

uint64_t sub_1001F9AF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1001F9B44(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      *(a1 + 40) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = *(a1 + 16);
      v5 = *(a1 + 8);
      if (v4 != v3)
      {
        v6 = v4 - 168;
        do
        {
          v8 = *(v4 - 176);
          if (v8 == v8 >> 31)
          {
            if (*(v4 - 128) == 1)
            {
              *(v4 - 128) = 0;
            }
          }

          else
          {
            v7 = *(v4 - 168);
            if (v8 < 0)
            {
              if (v7)
              {
                (*(*v7 + 8))(v7);
              }
            }

            else
            {
              (*v7)(v4 - 168);
            }
          }

          v4 -= 208;
          v6 -= 208;
        }

        while (v4 != v3);
        v5 = *(a1 + 8);
      }

      *(a1 + 16) = v3;
      operator delete(v5);
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_1001F9C4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 56) = v7;
  v8 = *(a2 + 72);
  *(a1 + 72) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    sub_1001300D0(a1 + 88, a2 + 88);
    *(a1 + 80) = 1;
  }

  *(a1 + 288) = 0;
  if (*(a2 + 288) == 1)
  {
    sub_1001F9E94(a1 + 288, (a2 + 296));
  }

  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = *(a2 + 384);
  prime = *(a2 + 360);
  if (prime == 1)
  {
    prime = 2;
LABEL_29:
    sub_10000FE58(a1 + 352, prime);
    goto LABEL_30;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 360));
    v10 = *(a1 + 360);
    v11 = prime >= *&v10;
    if (prime > *&v10)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v10 = 0;
    v11 = 1;
    if (prime)
    {
      goto LABEL_29;
    }
  }

  if (!v11)
  {
    v12 = vcvtps_u32_f32(*(a1 + 376) / *(a1 + 384));
    if (*&v10 < 3uLL || (v13 = vcnt_s8(v10), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
    {
      v12 = std::__next_prime(v12);
    }

    else
    {
      v14 = 1 << -__clz(v12 - 1);
      if (v12 >= 2)
      {
        v12 = v14;
      }
    }

    if (prime <= v12)
    {
      prime = v12;
    }

    if (prime < *&v10)
    {
      goto LABEL_29;
    }
  }

LABEL_30:
  for (i = *(a2 + 368); i; i = *i)
  {
    sub_1001F9F8C((a1 + 352), (i + 4), i + 4);
  }

  return a1;
}

void sub_1001F9E2C(_Unwind_Exception *a1)
{
  if (*(v1 + 80) == 1)
  {
    sub_10012E8E4(v1 + 88);
    *(v1 + 80) = 0;
  }

  sub_10002BB1C(v3);
  sub_10002BB1C(v2);
  sub_10002BB1C(v1 + 24);
  sub_10002BB1C(v1);
  _Unwind_Resume(a1);
}

void sub_1001F9E94(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_1001CFBC8(a1 + 8, *a2, a2[1], 0x4EC4EC4EC4EC4EC5 * ((a2[1] - *a2) >> 4));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v5 = a2[3];
  v4 = a2[4];
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  *(a1 + 56) = a2[6];
  *a1 = 1;
}

void sub_1001F9F68(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  sub_1001CE6F4(v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001F9F8C(void *a1, uint64_t a2, int *a3)
{
  v27 = &v26;
  v5 = a2 + 8;
  if (*a2 == *a2 >> 31)
  {
    v6 = *v5;
    v7 = a1[1];
    if (!*&v7)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v6 = sub_1001FA420(&v27, (a2 + 8));
    v7 = a1[1];
    if (!*&v7)
    {
      goto LABEL_58;
    }
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v6;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_58:
    operator new();
  }

  v12 = *a2;
  v13 = (v12 >> 31) ^ v12;
  v14 = v12 >> 31 == v12;
  v15 = *(a2 + 8);
  if (v8.u32[0] <= 1uLL)
  {
    v16 = *&v7 - 1;
    if (v14)
    {
      while (1)
      {
        v17 = v11[1];
        if (v17 == v6)
        {
          if ((*(v11 + 4) ^ (*(v11 + 4) >> 31)) == v13 && v11[3] == v15)
          {
            return v11;
          }
        }

        else if ((v17 & v16) != v9)
        {
          goto LABEL_58;
        }

        v11 = *v11;
        if (!v11)
        {
          goto LABEL_58;
        }
      }
    }

    while (1)
    {
      v18 = v11[1];
      if (v18 == v6)
      {
        if ((*(v11 + 4) ^ (*(v11 + 4) >> 31)) == v13)
        {
          v19 = v11[3] == *v5 && v11[4] == *(v5 + 8);
          if (v19 && *(v11 + 10) == *(v5 + 16))
          {
            return v11;
          }
        }
      }

      else if ((v18 & v16) != v9)
      {
        goto LABEL_58;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_58;
      }
    }
  }

  if (v14)
  {
    while (1)
    {
      v21 = v11[1];
      if (v21 == v6)
      {
        if ((*(v11 + 4) ^ (*(v11 + 4) >> 31)) == v13 && v11[3] == v15)
        {
          return v11;
        }
      }

      else
      {
        if (v21 >= *&v7)
        {
          v21 %= *&v7;
        }

        if (v21 != v9)
        {
          goto LABEL_58;
        }
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_58;
      }
    }
  }

  while (1)
  {
    v22 = v11[1];
    if (v22 == v6)
    {
      break;
    }

    if (v22 >= *&v7)
    {
      v22 %= *&v7;
    }

    if (v22 != v9)
    {
      goto LABEL_58;
    }

LABEL_44:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_58;
    }
  }

  if ((*(v11 + 4) ^ (*(v11 + 4) >> 31)) != v13)
  {
    goto LABEL_44;
  }

  v23 = v11[3] == *v5 && v11[4] == *(v5 + 8);
  if (!v23 || *(v11 + 10) != *(v5 + 16))
  {
    goto LABEL_44;
  }

  return v11;
}

unint64_t sub_1001FA420(uint64_t a1, unsigned __int8 *a2)
{
  v2 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[8]) ^ ((0xC6A4A7935BD1E995 * a2[8]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[7]) ^ ((0xC6A4A7935BD1E995 * a2[7]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[6]) ^ ((0xC6A4A7935BD1E995 * a2[6]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[5]) ^ ((0xC6A4A7935BD1E995 * a2[5]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[4]) ^ ((0xC6A4A7935BD1E995 * a2[4]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[3]) ^ ((0xC6A4A7935BD1E995 * a2[3]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[2]) ^ ((0xC6A4A7935BD1E995 * a2[2]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[1]) ^ ((0xC6A4A7935BD1E995 * a2[1]) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * *a2) ^ ((0xC6A4A7935BD1E995 * *a2) >> 47)) + 3864292196u)) + 3864292196u)) + 3864292196u)) + 3864292196u)) + 3864292196u)) + 3864292196u)) + 3864292196u)) + 3864292196u)) + 3864292196u;
  v3 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[17]) ^ ((0xC6A4A7935BD1E995 * a2[17]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[16]) ^ ((0xC6A4A7935BD1E995 * a2[16]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[15]) ^ ((0xC6A4A7935BD1E995 * a2[15]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[14]) ^ ((0xC6A4A7935BD1E995 * a2[14]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[13]) ^ ((0xC6A4A7935BD1E995 * a2[13]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[12]) ^ ((0xC6A4A7935BD1E995 * a2[12]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[11]) ^ ((0xC6A4A7935BD1E995 * a2[11]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[10]) ^ ((0xC6A4A7935BD1E995 * a2[10]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[9]) ^ ((0xC6A4A7935BD1E995 * a2[9]) >> 47))) ^ v2) + 3864292196u)) + 3864292196u)) + 3864292196u)) + 3864292196u)) + 3864292196u)) + 3864292196u)) + 3864292196u)) + 3864292196u)) + 3864292196u;
  return 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[19]) ^ ((0xC6A4A7935BD1E995 * a2[19]) >> 47))) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[18]) ^ ((0xC6A4A7935BD1E995 * a2[18]) >> 47))) ^ v3) + 3864292196u)) + 3864292196u;
}

uint64_t sub_1001FA624@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  *a2 = 0u;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      v5 = *(v3 + 32);
      if (v5 == v5 >> 31)
      {
        v6 = *(v3 + 120);
      }

      else
      {
        if (v5 >= 0)
        {
          v7 = v3 + 40;
        }

        else
        {
          v7 = *(v3 + 40);
        }

        v6 = *(v7 + 96) + 2402;
      }

      v15 = v6;
      sub_10000A688(a2, &v15);
      v3 += 208;
    }

    while (v3 != v4);
  }

  result = std::__sort<std::__less<int,int> &,int *>();
  v9 = a2[1];
  if (*a2 != v9)
  {
    v10 = (*a2 + 4);
    while (v10 != v9)
    {
      v11 = *(v10 - 1);
      v12 = *v10++;
      if (v11 == v12)
      {
        v13 = v10 - 2;
        while (v10 != v9)
        {
          v14 = v11;
          v11 = *v10;
          if (v14 != *v10)
          {
            v13[1] = v11;
            ++v13;
          }

          ++v10;
        }

        if (v13 + 1 != v9)
        {
          a2[1] = v13 + 1;
        }

        return result;
      }
    }
  }

  return result;
}

void sub_1001FA74C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001FA76C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_10000FE58(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1001FA9FC(a1, i + 2, i + 2);
  }

  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = *(a2 + 72);
  v11 = *(a2 + 48);
  if (v11 == 1)
  {
    v11 = 2;
LABEL_36:
    sub_10000FE58(a1 + 40, v11);
    goto LABEL_37;
  }

  if ((v11 & (v11 - 1)) != 0)
  {
    v11 = std::__next_prime(*(a2 + 48));
    v12 = *(a1 + 48);
    v13 = v11 >= *&v12;
    if (v11 > *&v12)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v12 = 0;
    v13 = 1;
    if (v11)
    {
      goto LABEL_36;
    }
  }

  if (!v13)
  {
    v14 = vcvtps_u32_f32(*(a1 + 64) / *(a1 + 72));
    if (*&v12 < 3uLL || (v15 = vcnt_s8(v12), v15.i16[0] = vaddlv_u8(v15), v15.u32[0] > 1uLL))
    {
      v14 = std::__next_prime(v14);
    }

    else
    {
      v16 = 1 << -__clz(v14 - 1);
      if (v14 >= 2)
      {
        v14 = v16;
      }
    }

    if (v11 <= v14)
    {
      v11 = v14;
    }

    if (v11 < *&v12)
    {
      goto LABEL_36;
    }
  }

LABEL_37:
  for (j = *(a2 + 56); j; j = *j)
  {
    sub_1001FAFAC((a1 + 40), j + 4);
  }

  sub_1001104E8((a1 + 80), (a2 + 80));
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

void sub_1001FA998(_Unwind_Exception *a1)
{
  sub_1001FB82C(v2);
  sub_1001FB8B0(v1);
  _Unwind_Resume(a1);
}

void sub_1001FA9B4(_Unwind_Exception *a1)
{
  sub_1001FB82C(v2);
  sub_1001FB8B0(v1);
  _Unwind_Resume(a1);
}

void *sub_1001FA9FC(void *a1, uint64_t *a2, void *a3)
{
  v5 = (*(**a2 + 64))();
  v6 = sub_1001183C0(&v16, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_23;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (result = *v11) == 0)
  {
LABEL_23:
    operator new();
  }

  v13 = *a2;
  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v15 = result[1];
      if (v15 == v7)
      {
        if (result[2] == v13)
        {
          return result;
        }
      }

      else if ((v15 & (*&v8 - 1)) != v10)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v14 = result[1];
    if (v14 == v7)
    {
      break;
    }

    if (v14 >= *&v8)
    {
      v14 %= *&v8;
    }

    if (v14 != v10)
    {
      goto LABEL_23;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (result[2] != v13)
  {
    goto LABEL_12;
  }

  return result;
}

void sub_1001FADD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001FAE10(va);
  _Unwind_Resume(a1);
}

void sub_1001FADE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *v4;
  if (*v4)
  {
    *(v3 + 32) = v6;
    operator delete(v6);
  }

  sub_1001FAE10(va);
  _Unwind_Resume(a1);
}

char **sub_1001FAE10(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1001FAE64(a1[1], v2 + 2);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1001FAE64(uint64_t a1, void *a2)
{
  v3 = a2[4];
  if (v3)
  {
    v4 = a2[5];
    v5 = a2[4];
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 16);
        if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }

        v4 -= 80;
      }

      while (v4 != v3);
      v5 = a2[4];
    }

    a2[5] = v3;
    operator delete(v5);
  }

  v7 = a2[1];
  if (v7)
  {
    a2[2] = v7;

    operator delete(v7);
  }
}

void **sub_1001FAF44(void **a1)
{
  v2 = a1[2];
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_1001FAE64(a1, v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *sub_1001FAFAC(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_23:
    sub_1001FB2C4();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = result[1];
      if (v9 == v2)
      {
        if (*(result + 4) == v2)
        {
          return result;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (*(result + 4) != v2)
  {
    goto LABEL_12;
  }

  return result;
}

void sub_1001FB2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001FB44C(va);
  _Unwind_Resume(a1);
}

void sub_1001FB42C(_Unwind_Exception *a1)
{
  sub_1001F9AF8(v2);
  sub_1001FB44C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FB44C(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[5];
      if (v3)
      {
        do
        {
          v4 = *v3;
          operator delete(v3);
          v3 = v4;
        }

        while (v4);
      }

      v5 = v1[3];
      v1[3] = 0;
      if (v5)
      {
        operator delete(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void *sub_1001FB4C0(void *a1, unint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = HIDWORD(*a2);
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_23;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
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
        if (v11[2] == v3)
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

  if (v11[2] != v3)
  {
    goto LABEL_12;
  }

  return v11;
}

uint64_t sub_1001FB82C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[5];
      if (v6)
      {
        do
        {
          v7 = *v6;
          operator delete(v6);
          v6 = v7;
        }

        while (v7);
      }

      v8 = v2[3];
      v2[3] = 0;
      if (v8)
      {
        operator delete(v8);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void **sub_1001FB8B0(void **a1)
{
  v2 = a1[2];
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_1001FAE64(a1, v2 + 2);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1001FB918(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_10000FE58(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1001FBB80(a1, i + 2, (i + 2));
  }

  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = *(a2 + 72);
  v11 = *(a2 + 48);
  if (v11 == 1)
  {
    v11 = 2;
LABEL_36:
    sub_10000FE58(a1 + 40, v11);
    goto LABEL_37;
  }

  if ((v11 & (v11 - 1)) != 0)
  {
    v11 = std::__next_prime(*(a2 + 48));
    v12 = *(a1 + 48);
    v13 = v11 >= *&v12;
    if (v11 > *&v12)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v12 = 0;
    v13 = 1;
    if (v11)
    {
      goto LABEL_36;
    }
  }

  if (!v13)
  {
    v14 = vcvtps_u32_f32(*(a1 + 64) / *(a1 + 72));
    if (*&v12 < 3uLL || (v15 = vcnt_s8(v12), v15.i16[0] = vaddlv_u8(v15), v15.u32[0] > 1uLL))
    {
      v14 = std::__next_prime(v14);
    }

    else
    {
      v16 = 1 << -__clz(v14 - 1);
      if (v14 >= 2)
      {
        v14 = v16;
      }
    }

    if (v11 <= v14)
    {
      v11 = v14;
    }

    if (v11 < *&v12)
    {
      goto LABEL_36;
    }
  }

LABEL_37:
  for (j = *(a2 + 56); j; j = *j)
  {
    sub_1001FBEE8((a1 + 40), j + 4, (j + 4));
  }

  *(a1 + 80) = *(a2 + 80);
  return a1;
}

void sub_1001FBB38(_Unwind_Exception *a1)
{
  sub_1001DF9C0(v2);
  sub_10004D7DC(v1);
  _Unwind_Resume(a1);
}

const void ***sub_1001FBB80(void *a1, uint64_t ***a2, uint64_t a3)
{
  v5 = sub_1001183C0(&v15, a2);
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
        if (sub_1001182C8(v11 + 2, a2))
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

  if (!sub_1001182C8(v11 + 2, a2))
  {
    goto LABEL_12;
  }

  return v11;
}

void sub_1001FBED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001C6420(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FBEE8(void *a1, int *a2, uint64_t a3)
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
    if (*&v4 <= v3)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (result = *v7) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = *(result + 8);
      if (v10 == v3)
      {
        if (*(result + 16) == v3)
        {
          return result;
        }
      }

      else if ((v10 & (*&v4 - 1)) != v6)
      {
        goto LABEL_23;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v9 = *(result + 8);
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
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (*(result + 16) != v3)
  {
    goto LABEL_12;
  }

  return result;
}

void sub_1001FC2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001FC2D0(va);
  _Unwind_Resume(a1);
}

void sub_1001FC2B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_1001811E8(va1);
  sub_1001FC2D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FC2D0(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[4];
      if (v3)
      {
        v4 = v1[5];
        v5 = v1[4];
        if (v4 != v3)
        {
          do
          {
            v6 = *(v4 - 8);
            if (v6)
            {
              if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v6->__on_zero_shared)(v6);
                std::__shared_weak_count::__release_weak(v6);
              }
            }

            v4 -= 16;
          }

          while (v4 != v3);
          v5 = v1[4];
        }

        v1[5] = v3;
        operator delete(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

std::string *sub_1001FC3A4@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_1001FC3D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

const void ***sub_1001FC3F4(void *a1, uint64_t ***a2, const void **a3, const void **a4)
{
  v6 = sub_1001183C0(&v16, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_23;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v12[1];
      if (v14 == v7)
      {
        if (sub_1001182C8(v12 + 2, a2))
        {
          return v12;
        }
      }

      else if ((v14 & (*&v8 - 1)) != v10)
      {
        goto LABEL_23;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_23;
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
      goto LABEL_23;
    }

LABEL_12:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  if (!sub_1001182C8(v12 + 2, a2))
  {
    goto LABEL_12;
  }

  return v12;
}

void sub_1001FC764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001FC778(va);
  _Unwind_Resume(a1);
}

char **sub_1001FC778(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1001FC7CC(a1[1], v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1001FC7CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a2 + 8);
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *(a2 + 8);
    if (!v3)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1001FC8C0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100442C88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void **sub_1001FC91C(void **a1)
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
        v3 = sub_10023590C(v3 - 9);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t **sub_1001FC978(uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10023590C(v2);
    operator delete();
  }

  return a1;
}

void sub_1001FC9EC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100442CD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001FCA70(uint64_t a1, uint64_t a2, char **a3, uint64_t *a4)
{
  __p = 0;
  v16 = 0;
  v4 = *a3;
  v5 = a3[1];
  v17 = 0;
  p_p = &__p;
  v19 = 0;
  if (v5 != v4)
  {
    if (((v5 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  v6 = a4[1];
  v13 = *a4;
  v14 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7.n128_f64[0] = sub_10024642C(a2, &__p, &v13);
  v8 = v14;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8, v7.n128_f64[0]);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = __p;
  if (__p)
  {
    v10 = v16;
    v11 = __p;
    if (v16 != __p)
    {
      do
      {
        v12 = *(v10 - 1);
        if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12, v7);
          std::__shared_weak_count::__release_weak(v12);
        }

        v10 -= 16;
      }

      while (v10 != v9);
      v11 = __p;
    }

    v16 = v9;
    operator delete(v11);
  }
}

void sub_1001FCC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_10002BB1C(va);
  sub_100048F1C(va1);
  _Unwind_Resume(a1);
}

void sub_1001FCC38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1001811E8(va);
  _Unwind_Resume(a1);
}

void sub_1001FCC4C(uint64_t a1, char **a2)
{
  sub_1001DF260((a2 + 5));
  v3 = a2[4];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = *a2;
    if (!*a2)
    {
      return;
    }
  }

  else
  {
    v4 = *a2;
    if (!*a2)
    {
      return;
    }
  }

  v5 = a2[1];
  v6 = v4;
  if (v5 != v4)
  {
    do
    {
      v7 = *(v5 - 1);
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }

      v5 -= 16;
    }

    while (v5 != v4);
    v6 = *a2;
  }

  a2[1] = v4;

  operator delete(v6);
}

uint64_t sub_1001FCD74(void **a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, std::__shared_weak_count_vtbl **a5, uint64_t *a6, unsigned int *a7, uint64_t *a8)
{
  v8 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0x38E38E38E38E38ELL)
  {
    sub_10000FC84();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v9)
  {
    v9 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v11 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_10000D444();
  }

  sub_1001FCF6C(a1, 8 * ((a1[1] - *a1) >> 3), a2, a3, a4, a5, a6, a7, a8);
  v12 = *a1;
  v13 = a1[1];
  v14 = (72 * v8 + *a1 - v13);
  if (v13 != *a1)
  {
    v15 = *a1;
    v16 = (72 * v8 + *a1 - v13);
    do
    {
      v17 = *v15;
      *v15 = 0uLL;
      *v16 = v17;
      v18 = *(v15 + 1);
      v15[2] = 0;
      *(v16 + 1) = v18;
      *(v16 + 4) = v15[4];
      *(v15 + 3) = 0uLL;
      *(v16 + 40) = *(v15 + 5);
      *(v15 + 5) = 0uLL;
      *(v16 + 56) = *(v15 + 7);
      v15 += 9;
      v16 += 72;
    }

    while (v15 != v13);
    do
    {
      v12 = sub_10023590C(v12) + 9;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = (72 * v8 + 72);
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return 72 * v8 + 72;
}

void sub_1001FCF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001FD274(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FCF6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, std::__shared_weak_count_vtbl **a6, uint64_t *a7, unsigned int *a8, uint64_t *a9)
{
  v9 = *a3;
  *a3 = 0;
  v18 = v9;
  v16 = *a6;
  if (v16)
  {
    operator new();
  }

  v17 = 0;
  *a6 = 0;
  v13 = a7[1];
  v14 = *a7;
  v15 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10023576C(a2, &v18, a4, a5, &v16, &v14, *a8, *a9);
  v10 = v15;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  result = v18;
  v18 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_1001FD13C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
    (*(*v14 + 8))(v14, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001FD198(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1001FD1D0(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1001749A4(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1001FD214(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteI17ParticleGeneratorEE")
  {
    if (((v2 & "NSt3__114default_deleteI17ParticleGeneratorEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteI17ParticleGeneratorEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteI17ParticleGeneratorEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1001FD274(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    sub_10023590C((i - 72));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void **sub_1001FD2C8(void **a1)
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
        v3 = sub_1001F9864(v3 - 392);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1001FD324(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 392;
    sub_1001F9864(i - 392);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1001FD378(void **a1, uint64_t a2)
{
  v2 = 0x7D6343EB1A1F58D1 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xA72F05397829CBLL)
  {
    sub_10000FC84();
  }

  if (0xFAC687D6343EB1A2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xFAC687D6343EB1A2 * ((a1[2] - *a1) >> 3);
  }

  if ((0x7D6343EB1A1F58D1 * ((a1[2] - *a1) >> 3)) >= 0x5397829CBC14E5)
  {
    v5 = 0xA72F05397829CBLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0xA72F05397829CBLL)
    {
      operator new();
    }

    sub_10000D444();
  }

  v15 = 8 * ((a1[1] - *a1) >> 3);
  sub_1001FD544(v15, a2);
  v6 = 392 * v2 + 392;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = &v9[v15];
  if (*a1 != v8)
  {
    v11 = 0;
    v12 = *a1;
    v13 = &v9[v15];
    do
    {
      sub_1001F9C4C(v13, v12);
      v12 += 392;
      v13 += 392;
      v11 -= 392;
    }

    while (v12 != v8);
    do
    {
      sub_1001F9864(v7);
      v7 += 392;
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

void sub_1001FD504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001FD324(va);
  _Unwind_Resume(a1);
}

void sub_1001FD518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v4)
  {
    v6 = v3 - 392;
    do
    {
      v6 = sub_1001F9864(v6) - 392;
      v4 += 392;
    }

    while (v4);
  }

  sub_1001FD324(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FD544(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(result + 16) = *(a2 + 16);
  *(result + 32) = *(a2 + 32);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v3 = *(a2 + 56);
  *(result + 64) = *(a2 + 64);
  *(result + 56) = v3;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(result + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    v4 = result;
    sub_1001300D0(result + 88, a2 + 88);
    result = v4;
    *(v4 + 80) = 1;
  }

  *(result + 288) = 0;
  if (*(a2 + 288) == 1)
  {
    *(result + 296) = 0;
    *(result + 304) = 0;
    *(result + 312) = 0;
    *(result + 296) = *(a2 + 296);
    *(result + 304) = *(a2 + 304);
    *(a2 + 296) = 0;
    *(a2 + 304) = 0;
    *(a2 + 312) = 0;
    *(result + 320) = 0;
    *(result + 328) = 0;
    *(result + 336) = 0;
    *(result + 320) = *(a2 + 320);
    v5 = *(a2 + 344);
    *(result + 336) = *(a2 + 336);
    *(a2 + 328) = 0;
    *(a2 + 336) = 0;
    *(a2 + 320) = 0;
    *(result + 344) = v5;
    *(result + 288) = 1;
  }

  v6 = *(a2 + 352);
  v7 = *(a2 + 360);
  *(a2 + 352) = 0;
  *(result + 352) = v6;
  *(result + 360) = v7;
  *(a2 + 360) = 0;
  v9 = *(a2 + 368);
  v8 = *(a2 + 376);
  *(result + 368) = v9;
  *(result + 376) = v8;
  *(result + 384) = *(a2 + 384);
  if (v8)
  {
    v10 = *(v9 + 8);
    v11 = *(result + 360);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v10 >= v11)
      {
        v10 %= v11;
      }
    }

    else
    {
      v10 &= v11 - 1;
    }

    *(v6 + 8 * v10) = result + 368;
    *(a2 + 368) = 0;
    *(a2 + 376) = 0;
  }

  return result;
}

void sub_1001FD698(_Unwind_Exception *a1)
{
  sub_10002BB1C(v2);
  sub_10002BB1C(v1);
  sub_10002BB1C(v3 + 24);
  sub_10002BB1C(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FD6C4(unsigned int **a1)
{
  sub_10004DAA4(v8);
  sub_10003C2E4(&v9, "[", 1);
  v4 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    std::ostream::operator<<();
    for (i = (v4 + 4); i != v3; ++i)
    {
      sub_10003C2E4(&v9, ", ", 2);
      std::ostream::operator<<();
    }
  }

  sub_10003C2E4(&v9, "]", 1);
  std::stringbuf::str();
  v9 = v6;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  std::locale::~locale(v11);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1001FD8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D8FE0(va);
  _Unwind_Resume(a1);
}

void sub_1001FD8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D8FE0(va);
  _Unwind_Resume(a1);
}

void sub_1001FD8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D8FE0(va);
  _Unwind_Resume(a1);
}

void sub_1001FD900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D8FE0(va);
  _Unwind_Resume(a1);
}

void sub_1001FD914(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x80;
  v3 = v1 - 128;
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

    sub_10000D444();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = (v4 + 1);
  sub_1001C7D6C(a1, &v10);
}

void sub_1001FDC84(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FDCDC(void **a1, uint64_t a2, uint64_t *a3, double *a4, double *a5, int *a6, uint64_t *a7)
{
  v7 = 0x14C1BACF914C1BADLL * ((a1[1] - *a1) >> 3);
  v8 = v7 + 1;
  if ((v7 + 1) > 0xDD67C8A60DD67CLL)
  {
    sub_10000FC84();
  }

  if (0x2983759F2298375ALL * ((a1[2] - *a1) >> 3) > v8)
  {
    v8 = 0x2983759F2298375ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x14C1BACF914C1BADLL * ((a1[2] - *a1) >> 3)) >= 0x6EB3E45306EB3ELL)
  {
    v10 = 0xDD67C8A60DD67CLL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (v10 <= 0xDD67C8A60DD67CLL)
    {
      operator new();
    }

    sub_10000D444();
  }

  sub_1001F3D88(8 * ((a1[1] - *a1) >> 3), a2, a3, *a6, a7, *a4, *a5);
  v11 = a1[1];
  v12 = (296 * v7 + *a1 - v11);
  sub_1001FDEC4(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  a1[1] = (296 * v7 + 296);
  a1[2] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  return 296 * v7 + 296;
}

void sub_1001FDE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001FDE70(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FDE70(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 296;
    sub_1001DF830(i - 296);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1001FDEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v12 = v6 + v7;
      v13 = (a4 + v7);
      v14 = *(v6 + v7 + 8);
      *v13 = *(v6 + v7);
      v13[1] = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

      v13[2] = *(v12 + 16);
      sub_1001FA76C((v13 + 3), v12 + 24);
      v15 = a4 + v7;
      result = sub_1001FB918(a4 + v7 + 136, v6 + v7 + 136);
      v17 = *(v12 + 232);
      *(v15 + 224) = *(v12 + 224);
      *(v15 + 232) = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a4 + v7;
      v9 = *(v12 + 240);
      v10 = *(v12 + 256);
      v11 = *(v12 + 272);
      *(v8 + 288) = *(v12 + 288);
      *(v8 + 256) = v10;
      *(v8 + 272) = v11;
      *(v8 + 240) = v9;
      v7 += 296;
    }

    while (v12 + 296 != a3);
    while (v6 != a3)
    {
      result = sub_1001DF830(v6);
      v6 += 296;
    }
  }

  return result;
}

void sub_1001FDFB4(_Unwind_Exception *a1)
{
  v4 = sub_10002BB1C(v1 + v2);
  if (v2)
  {
    v5 = v4 - 296;
    v6 = -v2;
    do
    {
      v5 = sub_1001DF830(v5) - 296;
      v6 += 296;
    }

    while (v6);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001FDFF4(uint64_t *a1, uint64_t a2, uint64_t *a3, double *a4, double *a5, int *a6, uint64_t *a7)
{
  v7 = 0x14C1BACF914C1BADLL * ((a1[1] - *a1) >> 3);
  v8 = v7 + 1;
  if ((v7 + 1) > 0xDD67C8A60DD67CLL)
  {
    sub_10000FC84();
  }

  if (0x2983759F2298375ALL * ((a1[2] - *a1) >> 3) > v8)
  {
    v8 = 0x2983759F2298375ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x14C1BACF914C1BADLL * ((a1[2] - *a1) >> 3)) >= 0x6EB3E45306EB3ELL)
  {
    v10 = 0xDD67C8A60DD67CLL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (v10 <= 0xDD67C8A60DD67CLL)
    {
      operator new();
    }

    sub_10000D444();
  }

  sub_1001F3D88(8 * ((a1[1] - *a1) >> 3), a2, a3, *a6, a7, *a4, *a5);
  v11 = a1[1];
  v12 = 296 * v7 + *a1 - v11;
  sub_1001FDEC4(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  a1[1] = 296 * v7 + 296;
  a1[2] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  return 296 * v7 + 296;
}

void sub_1001FE174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001FDE70(va);
  _Unwind_Resume(a1);
}

std::string *sub_1001FE188@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1001FE1BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001FE1D8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1001FE248()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1001FE2B8(uint64_t a1)
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
        v5 = *(v3 - 16);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 80;
      }

      while (v3 != v2);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

  v6 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v6;
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_1001FE37C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0u;
  v4 = (a1 + 40);
  *(a1 + 32) = 1065353216;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1065353216;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a3;
  v5 = *a2;
  v6 = a2[1];
  v7 = -INFINITY;
  if (*a2 != v6)
  {
    do
    {
      v37 = *(v5 + 56);
      v38 = &v37;
      v9 = sub_1001FF07C(a1, &v37, &unk_1003DB4B0, &v38);
      v15 = v9;
      v16 = v9[7];
      if (v16 >= v9[8])
      {
        v20 = sub_1001FF408(v9 + 6, v5, v10, v11, v12, v13, v14);
      }

      else
      {
        sub_100217150(v9[7], v5);
        v17 = *(v5 + 16);
        v18 = *(v5 + 32);
        *(v16 + 48) = *(v5 + 48);
        *(v16 + 16) = v17;
        *(v16 + 32) = v18;
        *(v16 + 56) = *(v5 + 56);
        v19 = *(v5 + 64);
        *(v16 + 64) = v19;
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        *(v16 + 72) = *(v5 + 72);
        v20 = (v16 + 80);
        v15[7] = v16 + 80;
      }

      v15[7] = v20;
      v38 = ((*(*v37 + 56))(v37) + 1616);
      v21 = sub_1001FF574(v4, v38, &unk_1003DB4B0, &v38);
      sub_1001FF8C0(v21 + 3, &v37, &v37);
      v22 = sub_10021569C(v5);
      v23 = v22;
      v25 = v15[4];
      v24 = v15[5];
      if (v25 < v24)
      {
        *v25 = v22;
        v8 = v25 + 1;
      }

      else
      {
        v26 = v15[3];
        v27 = v25 - v26;
        v28 = (v25 - v26) >> 3;
        v29 = v28 + 1;
        if ((v28 + 1) >> 61)
        {
          sub_10000FC84();
        }

        v30 = v24 - v26;
        if (v30 >> 2 > v29)
        {
          v29 = v30 >> 2;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFF8)
        {
          v31 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v29;
        }

        if (v31)
        {
          if (!(v31 >> 61))
          {
            operator new();
          }

          sub_10000D444();
        }

        v32 = (v25 - v26) >> 3;
        v33 = (8 * v28);
        v34 = (8 * v28 - 8 * v32);
        *v33 = v22;
        v8 = v33 + 1;
        memcpy(v34, v26, v27);
        v15[3] = v34;
        v15[4] = v8;
        v15[5] = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      v15[4] = v8;
      if (v7 < v23)
      {
        v7 = v23;
      }

      v5 += 80;
    }

    while (v5 != v6);
  }

  for (i = (a1 + 16); ; sub_10031C244(i + 3, v7))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  return a1;
}

void sub_1001FE618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9)
{
  *(v11 + 56) = v12;
  sub_1000D1490(a9);
  sub_1001FB82C(v10);
  sub_1001FB8B0(v9);
  _Unwind_Resume(a1);
}

uint64_t sub_1001FE65C(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 88);
    v4 = *(a1 + 80);
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
      v4 = *(a1 + 80);
    }

    *(a1 + 88) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    do
    {
      v9 = *v6;
      v10 = v6[5];
      if (v10)
      {
        do
        {
          v11 = *v10;
          operator delete(v10);
          v10 = v11;
        }

        while (v11);
      }

      v12 = v6[3];
      v6[3] = 0;
      if (v12)
      {
        operator delete(v12);
      }

      operator delete(v6);
      v6 = v9;
    }

    while (v9);
  }

  v7 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    do
    {
      v13 = *v8;
      v14 = v8[6];
      if (v14)
      {
        v15 = v8[7];
        v16 = v8[6];
        if (v15 != v14)
        {
          do
          {
            v17 = *(v15 - 16);
            if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v17->__on_zero_shared)(v17);
              std::__shared_weak_count::__release_weak(v17);
            }

            v15 -= 80;
          }

          while (v15 != v14);
          v16 = v8[6];
        }

        v8[7] = v14;
        operator delete(v16);
      }

      v18 = v8[3];
      if (v18)
      {
        v8[4] = v18;
        operator delete(v18);
      }

      operator delete(v8);
      v8 = v13;
    }

    while (v13);
  }

  v19 = *a1;
  *a1 = 0;
  if (v19)
  {
    operator delete(v19);
  }

  return a1;
}

uint64_t sub_1001FE808@<X0>(int8x8_t *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  result = (*(**a2 + 56))();
  v7 = a1[6];
  if (!*&v7)
  {
    goto LABEL_21;
  }

  v8 = *(result + 1616);
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = *(result + 1616);
    if (*&v7 <= v8)
    {
      v10 = v8 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v8;
  }

  v11 = a1[5];
  v12 = *(*&v11 + 8 * v10);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_21:
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return result;
  }

  v14 = *&v7 - 1;
  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v15 = v13[1];
      if (v15 == v8)
      {
        if (*(v13 + 4) == v8)
        {
          goto LABEL_22;
        }
      }

      else if ((v15 & v14) != v10)
      {
        goto LABEL_21;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v16 = v13[1];
    if (v16 == v8)
    {
      break;
    }

    if (v16 >= *&v7)
    {
      v16 %= *&v7;
    }

    if (v16 != v10)
    {
      goto LABEL_21;
    }

LABEL_16:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_21;
    }
  }

  if (*(v13 + 4) != v8)
  {
    goto LABEL_16;
  }

LABEL_22:
  if (v9.u32[0] > 1uLL)
  {
    v17 = *(result + 1616);
    if (*&v7 <= v8)
    {
      v17 = v8 % *&v7;
    }
  }

  else
  {
    v17 = v14 & v8;
  }

  v18 = *(*&v11 + 8 * v17);
  if (!v18 || (v19 = *v18) == 0)
  {
LABEL_102:
    sub_10001C6D4("unordered_map::at: key not found");
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v20 = v19[1];
      if (v20 == v8)
      {
        if (*(v19 + 4) == v8)
        {
          goto LABEL_34;
        }
      }

      else if ((v20 & v14) != v17)
      {
        goto LABEL_102;
      }

      v19 = *v19;
      if (!v19)
      {
        goto LABEL_102;
      }
    }
  }

  while (2)
  {
    v60 = v19[1];
    if (v60 != v8)
    {
      if (v60 >= *&v7)
      {
        v60 %= *&v7;
      }

      if (v60 != v17)
      {
        goto LABEL_102;
      }

      goto LABEL_93;
    }

    if (*(v19 + 4) != v8)
    {
LABEL_93:
      v19 = *v19;
      if (!v19)
      {
        goto LABEL_102;
      }

      continue;
    }

    break;
  }

LABEL_34:
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  memset(v86, 0, sizeof(v86));
  v87 = 1065353216;
  v88 = 0;
  v21 = v19[5];
  if (v21)
  {
    v22 = (a3 + 24);
    v64 = v3;
    v61 = a1;
    while (1)
    {
      v68 = v21[2];
      v23 = sub_1001FFC2C(a1, &v68);
      if (!v23)
      {
        sub_10001C6D4("unordered_map::at: key not found");
      }

      v63 = v21;
      sub_100176F74(v86, v68, *v3, v66);
      v24 = v23;
      v25 = v23[6];
      v62 = v24;
      v26 = v24[7];
      if (v25 != v26)
      {
        break;
      }

LABEL_38:
      sub_1001FFD90(a3, *(a3 + 8), v62[3], v62[4], (v62[4] - v62[3]) >> 3);
      nullsub_75();
      v21 = *v63;
      a1 = v61;
      if (!*v63)
      {
        return sub_1001DF260(v86);
      }
    }

    while (2)
    {
      if (v68 != *(v25 + 56))
      {
        HIBYTE(v71) = 0;
        LOBYTE(__p) = 0;
        memset(v80, 0, 24);
        std::string::assign(v80, "The floors should be the same.");
        sub_1000E661C(&__p, v80, 1);
        if ((v80[23] & 0x80000000) != 0)
        {
          operator delete(*v80);
        }

        if (SHIBYTE(v71) < 0)
        {
          operator delete(__p);
        }

        sub_10003F5D0(&v74);
      }

      sub_100217150(v80, v25);
      v27 = *(v25 + 16);
      v28 = *(v25 + 32);
      v82 = *(v25 + 48);
      *&v80[16] = v27;
      v81 = v28;
      v29 = *(v25 + 64);
      v83 = *(v25 + 56);
      v84 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v85 = *(v25 + 72);
      *&v80[16] = vaddq_f64(v67, *&v80[16]);
      v30 = v3[1];
      *&v65 = *v3;
      *(&v65 + 1) = v30;
      if (v30)
      {
        atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
      }

      sub_1001E8D30(v80, &v65);
      v31 = *(&v65 + 1);
      if (*(&v65 + 1) && !atomic_fetch_add((*(&v65 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v31->__on_zero_shared)(v31);
        std::__shared_weak_count::__release_weak(v31);
        v33 = *(a3 + 32);
        v32 = *(a3 + 40);
        if (v33 >= v32)
        {
          goto LABEL_54;
        }

LABEL_49:
        sub_100217150(v33, v80);
        v34 = *&v80[16];
        v35 = v81;
        *(v33 + 48) = v82;
        *(v33 + 16) = v34;
        *(v33 + 32) = v35;
        *(v33 + 56) = v83;
        v36 = v84;
        *(v33 + 64) = v84;
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *(v33 + 72) = v85;
        *(a3 + 32) = v33 + 80;
        v37 = v84;
        if (v84)
        {
LABEL_79:
          if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v37->__on_zero_shared)(v37);
            std::__shared_weak_count::__release_weak(v37);
          }
        }
      }

      else
      {
        v33 = *(a3 + 32);
        v32 = *(a3 + 40);
        if (v33 < v32)
        {
          goto LABEL_49;
        }

LABEL_54:
        v38 = 0xCCCCCCCCCCCCCCCDLL * ((v33 - *v22) >> 4);
        v39 = v38 + 1;
        if (v38 + 1 > 0x333333333333333)
        {
          sub_10000FC84();
        }

        v40 = 0xCCCCCCCCCCCCCCCDLL * ((v32 - *v22) >> 4);
        if (2 * v40 > v39)
        {
          v39 = 2 * v40;
        }

        if (v40 >= 0x199999999999999)
        {
          v41 = 0x333333333333333;
        }

        else
        {
          v41 = v39;
        }

        v73 = v22;
        if (v41)
        {
          if (v41 <= 0x333333333333333)
          {
            operator new();
          }

          sub_10000D444();
        }

        __p = 0;
        v70 = 80 * v38;
        v71 = 80 * v38;
        v72 = 0;
        sub_100217150((80 * v38), v80);
        v43 = v81;
        *(v42 + 16) = *&v80[16];
        *(v42 + 32) = v43;
        *(v42 + 48) = v82;
        v44 = v84;
        *(v42 + 56) = v83;
        *(v42 + 64) = v44;
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        *(v42 + 72) = v85;
        v45 = v71 + 80;
        v71 += 80;
        v46 = *(a3 + 24);
        v47 = *(a3 + 32);
        v74 = (a3 + 24);
        v75 = &v78;
        v76 = &v79;
        v77 = 0;
        v48 = v70 + v46 - v47;
        v78 = v48;
        v79 = v48;
        if (v46 != v47)
        {
          v49 = (v70 + v46 - v47);
          v50 = v46;
          do
          {
            sub_100217150(v49, v50);
            v52 = *(v50 + 16);
            v53 = *(v50 + 32);
            *(v51 + 48) = *(v50 + 48);
            *(v51 + 16) = v52;
            *(v51 + 32) = v53;
            *(v51 + 56) = *(v50 + 56);
            v54 = *(v50 + 64);
            *(v51 + 64) = v54;
            if (v54)
            {
              atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
            }

            *(v51 + 72) = *(v50 + 72);
            v50 += 80;
            v49 = v79 + 5;
            v79 += 5;
          }

          while (v50 != v47);
          v77 = 1;
          do
          {
            v55 = *(v46 + 64);
            if (v55 && !atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v55->__on_zero_shared)(v55);
              std::__shared_weak_count::__release_weak(v55);
            }

            v46 += 80;
          }

          while (v46 != v47);
          if ((v77 & 1) == 0)
          {
            v57 = *v76;
            v58 = *v75;
            while (v57 != v58)
            {
              v59 = v57[-1].n128_u64[0];
              if (v59 && !atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v59->__on_zero_shared)(v59);
                std::__shared_weak_count::__release_weak(v59);
              }

              v57 -= 5;
            }
          }
        }

        v56 = *(a3 + 24);
        *(a3 + 24) = v48;
        *(a3 + 32) = v45;
        *(a3 + 40) = v72;
        if (v56)
        {
          operator delete(v56);
        }

        v3 = v64;
        *(a3 + 32) = v45;
        v37 = v84;
        if (v84)
        {
          goto LABEL_79;
        }
      }

      v25 += 80;
      v22 = (a3 + 24);
      if (v25 == v26)
      {
        goto LABEL_38;
      }

      continue;
    }
  }

  return sub_1001DF260(v86);
}

void sub_1001FEFA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  nullsub_75();
  sub_1001DF260(v45 - 208);
  sub_1001FE2B8(v44);
  _Unwind_Resume(a1);
}

void *sub_1001FF07C(void *a1, uint64_t *a2, uint64_t a3, void **a4)
{
  v6 = (*(**a2 + 64))();
  v7 = sub_1001183C0(&v17, v6);
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_23;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v7;
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v7;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_23:
    operator new();
  }

  v13 = *a2;
  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v15 = v12[1];
      if (v15 == v7)
      {
        if (v12[2] == v13)
        {
          return v12;
        }
      }

      else if ((v15 & (*&v8 - 1)) != v10)
      {
        goto LABEL_23;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v14 = v12[1];
    if (v14 == v7)
    {
      break;
    }

    if (v14 >= *&v8)
    {
      v14 %= *&v8;
    }

    if (v14 != v10)
    {
      goto LABEL_23;
    }

LABEL_12:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  if (v12[2] != v13)
  {
    goto LABEL_12;
  }

  return v12;
}

void sub_1001FF3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001FAE10(va);
  _Unwind_Resume(a1);
}

__n128 *sub_1001FF408(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4) + 1;
  if (v7 > 0x333333333333333)
  {
    sub_10000FC84();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v7)
  {
    v7 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v10 = 0x333333333333333;
  }

  else
  {
    v10 = v7;
  }

  if (v10)
  {
    if (v10 <= 0x333333333333333)
    {
      operator new();
    }

    sub_10000D444();
  }

  v21 = (16 * ((a1[1] - *a1) >> 4));
  sub_100217150(v21, a2);
  v15 = *(a2 + 32);
  *(v11 + 16) = *(a2 + 16);
  *(v11 + 32) = v15;
  *(v11 + 48) = *(a2 + 48);
  v16 = *(a2 + 64);
  *(v11 + 56) = *(a2 + 56);
  *(v11 + 64) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  *(v11 + 72) = *(a2 + 72);
  v17 = a1[1];
  v18 = v21 + *a1 - v17;
  sub_1001E9438(a1, *a1, v17, v18, v12, v13, v14);
  v19 = *a1;
  *a1 = v18;
  a1[1] = &v21[5];
  a1[2] = 0;
  if (v19)
  {
    operator delete(v19);
  }

  return v21 + 5;
}

void sub_1001FF560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001E95F0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1001FF574(void *a1, int *a2, uint64_t a3, _DWORD **a4)
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
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
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

void sub_1001FF8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001FB44C(va);
  _Unwind_Resume(a1);
}

void *sub_1001FF8C0(void *a1, unint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = HIDWORD(*a2);
  v5 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v4);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_23;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) ^ ((0x9DDFEA08EB382D69 * (v4 ^ (v5 >> 47) ^ v5)) >> 47));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
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
        if (v11[2] == v3)
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

  if (v11[2] != v3)
  {
    goto LABEL_12;
  }

  return v11;
}

void *sub_1001FFC2C(void *a1, uint64_t *a2)
{
  v4 = (*(**a2 + 64))();
  v5 = sub_1001183C0(&v15, v4);
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v5;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return v9;
  }

  v9 = *v9;
  if (!v9)
  {
    return v9;
  }

  v11 = *a2;
  if (v7.u32[0] < 2uLL)
  {
    v12 = *&v6 - 1;
    while (1)
    {
      v13 = v9[1];
      if (v5 == v13)
      {
        if (v9[2] == v11)
        {
          return v9;
        }
      }

      else if ((v13 & v12) != v8)
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

  while (1)
  {
    v14 = v9[1];
    if (v5 == v14)
    {
      if (v9[2] == v11)
      {
        return v9;
      }

      goto LABEL_18;
    }

    if (v14 >= *&v6)
    {
      v14 %= *&v6;
    }

    if (v14 != v8)
    {
      return 0;
    }

LABEL_18:
    v9 = *v9;
    if (!v9)
    {
      return v9;
    }
  }
}

char *sub_1001FFD90(size_t *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  v6 = a5 - 1;
  if (a5 < 1)
  {
    return v5;
  }

  v8 = a1[1];
  v7 = a1[2];
  if (a5 > (v7 - v8) >> 3)
  {
    v9 = *a1;
    v10 = a5 + ((v8 - *a1) >> 3);
    if (v10 >> 61)
    {
      sub_10000FC84();
    }

    v11 = v7 - v9;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      sub_10000D444();
    }

    v30 = (__dst - v9);
    v31 = 8 * ((__dst - v9) >> 3);
    v32 = (v31 + 8 * a5);
    v33 = v6 & 0x1FFFFFFFFFFFFFFFLL;
    if ((v6 & 0x1FFFFFFFFFFFFFFFuLL) >= 7 && (v30 - __src) >= 0x20)
    {
      v54 = v33 + 1;
      v55 = (v33 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v34 = (v31 + 8 * v55);
      v35 = &__src[8 * v55];
      v56 = __src + 16;
      v57 = (v31 + 16);
      v58 = v55;
      do
      {
        v59 = *v56;
        *(v57 - 1) = *(v56 - 1);
        *v57 = v59;
        v56 += 32;
        v57 += 2;
        v58 -= 4;
      }

      while (v58);
      if (v54 == v55)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v34 = v31;
      v35 = __src;
    }

    do
    {
      v36 = *v35;
      v35 += 8;
      *v34++ = v36;
    }

    while (v34 != v32);
LABEL_31:
    v37 = a1[1] - __dst;
    memcpy((v31 + 8 * a5), __dst, v37);
    v39 = v32 + v37;
    a1[1] = v5;
    v40 = *a1;
    v41 = &v5[-*a1];
    v42 = v31 - v41;
    memcpy((v31 - v41), *a1, v41);
    *a1 = v42;
    a1[1] = v39;
    a1[2] = 0;
    if (v40)
    {
      operator delete(v40);
    }

    return v31;
  }

  v13 = v8 - __dst;
  v14 = (v8 - __dst) >> 3;
  if (v14 >= a5)
  {
    v13 = 8 * a5;
    v17 = &__dst[8 * a5];
    v18 = (v8 - 8 * a5);
    if (v18 >= v8)
    {
      v22 = a1[1];
    }

    else
    {
      v19 = v18 + 1;
      if (v8 > (v18 + 1))
      {
        v19 = a1[1];
      }

      v20 = v19 + v13 + ~v8;
      v21 = v20 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v22 = a1[1];
      if (v21)
      {
        goto LABEL_74;
      }

      v23 = (v20 >> 3) + 1;
      v24 = 8 * (v23 & 0x3FFFFFFFFFFFFFFCLL);
      v18 = (v18 + v24);
      v22 = (v8 + v24);
      v25 = (v8 + 16);
      v26 = (v8 + 16 - v13);
      v27 = v23 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v28 = *v26;
        *(v25 - 1) = *(v26 - 1);
        *v25 = v28;
        v25 += 2;
        v26 += 2;
        v27 -= 4;
      }

      while (v27);
      if (v23 != (v23 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_74:
        do
        {
          v29 = *v18++;
          *v22++ = v29;
        }

        while (v18 < v8);
      }
    }

    a1[1] = v22;
    if (v8 != v17)
    {
      v51 = __src;
      memmove(v17, __dst, v8 - v17);
      __src = v51;
    }

    v52 = v5;
    v53 = __src;
    goto LABEL_68;
  }

  v15 = &__src[v13];
  if (&__src[v13] == a4)
  {
    v16 = a1[1];
  }

  else
  {
    v43 = &__src[v13];
    v44 = a4 - v15 - 8;
    if (v44 < 0x18)
    {
      v16 = a1[1];
    }

    else
    {
      v16 = a1[1];
      if (v8 - v15 >= 0x20)
      {
        v45 = (v44 >> 3) + 1;
        v46 = 8 * (v45 & 0x3FFFFFFFFFFFFFFCLL);
        v43 = &v15[v46];
        v16 = v8 + v46;
        v47 = (v8 + 16);
        v48 = (v15 + 16);
        v49 = v45 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v50 = *v48;
          *(v47 - 1) = *(v48 - 1);
          *v47 = v50;
          v47 += 2;
          v48 += 2;
          v49 -= 4;
        }

        while (v49);
        if (v45 == (v45 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_50;
        }
      }
    }

    do
    {
      v60 = *v43;
      v43 += 8;
      *v16 = v60;
      v16 += 8;
    }

    while (v43 != a4);
  }

LABEL_50:
  a1[1] = v16;
  if (v14 >= 1)
  {
    v61 = a5;
    v62 = &__dst[8 * a5];
    v63 = (v16 - 8 * a5);
    v64 = __src;
    if (v63 >= v8)
    {
      v68 = v16;
    }

    else
    {
      v65 = v63 + 1;
      if (v8 > (v63 + 1))
      {
        v65 = v8;
      }

      v66 = &v65[v61] + ~v16;
      v67 = v66 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v68 = v16;
      if (v67)
      {
        goto LABEL_75;
      }

      v69 = (v66 >> 3) + 1;
      v70 = 8 * (v69 & 0x3FFFFFFFFFFFFFFCLL);
      v63 = (v63 + v70);
      v68 = (v16 + v70);
      v71 = (v16 + 16);
      v72 = (v16 + 16 - v61 * 8);
      v73 = v69 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v74 = *v72;
        *(v71 - 1) = *(v72 - 1);
        *v71 = v74;
        v71 += 2;
        v72 += 2;
        v73 -= 4;
      }

      while (v73);
      if (v69 != (v69 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_75:
        do
        {
          v75 = *v63++;
          *v68++ = v75;
        }

        while (v63 < v8);
      }
    }

    a1[1] = v68;
    if (v16 != v62)
    {
      memmove(&__dst[8 * a5], __dst, v16 - v62);
    }

    if (v8 != v5)
    {
      v52 = v5;
      v53 = v64;
LABEL_68:
      memmove(v52, v53, v13);
    }
  }

  return v5;
}

void sub_1002001A0()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100200210()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_100200280()
{
  xmmword_10045D1E8 = 0u;
  unk_10045D1F8 = 0u;
  xmmword_10045D1D8 = 0u;
  return __cxa_atexit(sub_1001FE2B8, &xmmword_10045D1D8, &_mh_execute_header);
}

uint64_t sub_1002002B0(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, void *a5)
{
  sub_100251AB4(a3, v20);
  v10 = *a2;
  v11 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  *a1 = off_100438CA0;
  sub_10014C1B4((a1 + 8), v20);
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  sub_10014C254(v20);
  *a1 = off_100442D90;
  sub_100250BA8(a3, v20);
  sub_100259EAC(a1 + 72, v20, 0.25);
  if (a4 == 1)
  {
    v12.n128_u64[0] = 0.25;
    sub_100250B64(a3, a1 + 120, v12);
  }

  else if (!a4)
  {
    v12.n128_u64[0] = 0.25;
    sub_100250B20(a3, a1 + 120, v12);
  }

  sub_100253968();
  *(a1 + 184) = v13;
  *(a1 + 192) = v14;
  sub_10025397C();
  *(a1 + 200) = v15;
  *(a1 + 208) = v16;
  *(a1 + 224) = *a5;
  v17 = a5[1];
  *(a1 + 232) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  if (a4 == 1)
  {
    v18 = sub_100251850(a3, 0.25);
    goto LABEL_11;
  }

  if (!a4)
  {
    v18 = sub_100251838(a3, 0.25);
LABEL_11:
    v15 = v18;
  }

  *(a1 + 216) = sqrt(v15 * 12.0);
  return a1;
}

void sub_100200430(_Unwind_Exception *a1)
{
  sub_10002BB1C(v2);
  sub_1000BE7D4(v1);
  _Unwind_Resume(a1);
}

void sub_10020044C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10002BB1C(&a9);
  sub_10014C254(va);
  _Unwind_Resume(a1);
}

double sub_100200494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 24) == 1 && *(a4 + 56) == 1)
  {
    result = *(a2 + 32) + *(a4 + 64) * 0.25;
    *(a2 + 32) = result;
    return result;
  }

  v7 = *(a4 + 4);
  v8 = sub_1002C0CFC(a3);
  if (v8 != 1)
  {
    if (v8)
    {
      return result;
    }

LABEL_8:
    result = *(a2 + 32) + *(a3 + 16) * ((*(a3 + 8) - *a3) * 0.000000001);
    *(a2 + 32) = result;
    return result;
  }

  if (v7 == 3)
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_100200558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100259ED8(a1 + 72, *(a1 + 56));
  *(a2 + 40) = v8;
  result = sub_1002005CC(a1, a2, a3, a4);
  if (*(a3 + 4) != 2)
  {
    *(a2 + 48) = (result & 1) == 0;
  }

  return result;
}

uint64_t sub_1002005CC(uint64_t a1, double *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2[2];
  v9 = a2[3];
  v10 = a1 + 56;
  v11 = *(a1 + 56);
  if (*(a3 + 24) == 1 && *(a3 + 72) == 1)
  {
    v12 = sqrt(*(a3 + 80) * 0.25 * 0.25 * 12.0);
LABEL_7:
    v13 = (*(*v11 + 24))(*(a1 + 56), v12 * -0.5, v12 * 0.5) + a2[4];
LABEL_8:
    a2[4] = v13;
    goto LABEL_9;
  }

  if (*a3 != 1)
  {
    if (*a3)
    {
      goto LABEL_9;
    }

    v12 = *(a1 + 216);
    goto LABEL_7;
  }

  if (!sub_1002C4F78(a1 + 120, v11))
  {
    v20 = (*(*v11 + 16))(v11);
    v13 = (v20 + v20) * 3.14159265;
    goto LABEL_8;
  }

LABEL_9:
  if (*(a3 + 24) == 1)
  {
    v14 = sub_100253A64((a1 + 184), *(a3 + 32));
    v15.n128_f64[0] = sub_1002C4FCC(a1 + 120);
    if (*(a3 + 40) == 1)
    {
      v15.n128_f64[0] = sqrt(*(a3 + 48) * 0.25 * 0.25 * 12.0);
      v17 = a2[4];
      if (v15.n128_f64[0] <= 0.0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v15.n128_f64[0] = sqrt(v14 * (v14 * v15.n128_f64[0]) * 12.0);
      v17 = a2[4];
      if (v15.n128_f64[0] <= 0.0)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_25;
  }

  v14 = sub_100253A64((a1 + 184), *(a3 + 8));
  v15.n128_f64[0] = sqrt(v14 * (v14 * sub_1002C4FCC(a1 + 120)) * 12.0);
  v18 = *(a3 + 4);
  if (!*a3)
  {
    if (v18 == 3)
    {
      v17 = a2[4];
      v15.n128_f64[0] = -v14;
      v16.n128_f64[0] = v14;
      v19 = (*(*v11 + 24))(v11, v15, v16);
      goto LABEL_26;
    }

    if (v18 == 2)
    {
      v17 = (*(*v11 + 48))(v11, v15.n128_f64[0]);
      v23 = (*(*v11 + 16))(v11) * 0.5;
      v14 = v23 * sub_1002C4F64(a1 + 120);
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if (v18 == 3)
  {
    v17 = (*(*v11 + 48))(v11, v15.n128_f64[0]);
    v19 = sub_10025399C((a1 + 200), v11, *(a3 + 8));
    goto LABEL_26;
  }

  if (v18 != 2)
  {
LABEL_23:
    if (v18 == 1)
    {
      v17 = a2[4];
LABEL_25:
      v16.n128_f64[0] = v15.n128_f64[0] * 0.5;
      v15.n128_f64[0] = v14 - v15.n128_f64[0] * 0.5;
      v16.n128_f64[0] = v14 + v16.n128_f64[0];
      v19 = (*(*v11 + 24))(v11, v15, v16);
      goto LABEL_26;
    }

    sub_100014A08(v25, "");
    sub_100200CCC(&v27, "Unimplemented pedometryLikelihood or bodyFixed");
    sub_100200D1C((a3 + 4), &v28);
    sub_1000E661C(v25, &v27, 2);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_30:
        if ((v26 & 0x80000000) == 0)
        {
          goto LABEL_31;
        }

LABEL_35:
        operator delete(v25[0]);
LABEL_31:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    operator delete(v27.__r_.__value_.__l.__data_);
    if ((v26 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_35;
  }

  v17 = (*(*v11 + 48))(v11, v15.n128_f64[0]);
  v19 = sub_1002C4F5C(a1 + 120);
LABEL_26:
  v14 = v19;
LABEL_27:
  v21 = __sincos_stret(v17);
  return sub_1001E8DB8(a2, v8 + v21.__cosval * v14, v9 + v21.__sinval * v14, *(a3 + 16), a4, v10, a1 + 8, (a1 + 224));
}

void sub_100200A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100200AAC(void *a1)
{
  *a1 = off_100442D90;
  v2 = a1[29];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *a1 = off_100438CA0;
  v3 = a1[8];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    sub_10014C254((a1 + 1));
    return a1;
  }

  else
  {
    sub_10014C254((a1 + 1));
    return a1;
  }
}

void sub_100200BB8(void *a1)
{
  *a1 = off_100442D90;
  v2 = a1[29];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *a1 = off_100438CA0;
  v3 = a1[8];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_10014C254((a1 + 1));

  operator delete();
}

std::string *sub_100200CCC@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_100200D00(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100200D1C@<X0>(unsigned int *a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  result = sub_1001280B0(a1, a2);
  if ((result & 1) == 0)
  {
    std::bad_cast::bad_cast(&v3);
    v3.__vftable = &off_100434090;
    sub_100049F88(&v3);
  }

  return result;
}

void sub_100200DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::bad_cast a10)
{
  std::bad_cast::~bad_cast(&a10);
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

void sub_100200DCC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100200E3C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100200EAC(int a1)
{
  if (qword_10045B050 != -1)
  {
    sub_100385BC4();
  }

  v2 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "@AutoBugCapture, triggering diagnostic report...", buf, 2u);
  }

  v3 = objc_alloc_init(NSMutableDictionary);
  [v3 setObject:&__kCFBooleanTrue forKey:kSymptomDiagnosticActionDiagnosticExtensions];
  if (qword_10045D218[0] != -1)
  {
    sub_100385BD8();
  }

  v4 = [qword_10045D210 signatureWithDomain:@"Location" type:@"Indoor" subType:@"database crash" subtypeContext:@"corrupt_db_abort" detectedProcess:@"pipelined" triggerThresholdValues:0];
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x3812000000;
  v9[3] = sub_100201470;
  v9[4] = sub_100201480;
  v9[5] = "";
  v10 = 0;
  if (a1)
  {
    operator new();
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1002014CC;
  v8[3] = &unk_100442DF0;
  v8[4] = v9;
  if (![qword_10045D210 snapshotWithSignature:v4 delay:0 events:0 payload:v3 actions:v8 reply:0.0])
  {
    if (qword_10045B050 != -1)
    {
      sub_100385C00();
    }

    v5 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "@AutoBugCapture, error, the parameters passed in are invalid!", buf, 2u);
    }
  }

  if (qword_10045B050 != -1)
  {
    sub_100385C00();
  }

  v6 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "@AutoBugCapture, done triggering diagnostic report", buf, 2u);
  }

  _Block_object_dispose(v9, 8);
  v7 = v10;
  v10 = 0;
  if (v7)
  {
    std::condition_variable::~condition_variable(v7);
    operator delete();
  }
}

void sub_1002013E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::mutex *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::mutex::~mutex(&a25);
  _Block_object_dispose(&a16, 8);
  sub_10020178C((v27 + 48));

  _Unwind_Resume(a1);
}

void sub_100201434(id a1)
{
  v1 = objc_alloc_init(SDRDiagnosticReporter);
  v2 = qword_10045D210;
  qword_10045D210 = v1;
}

uint64_t sub_100201470(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

std::condition_variable *sub_100201480(uint64_t a1)
{
  result = *(a1 + 48);
  *(a1 + 48) = 0;
  if (result)
  {
    std::condition_variable::~condition_variable(result);

    operator delete();
  }

  return result;
}

void sub_1002014CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:kSymptomDiagnosticReplySuccess];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = [v3 objectForKeyedSubscript:kSymptomDiagnosticReplySessionID];
    if (qword_10045B050 != -1)
    {
      sub_100385BC4();
    }

    v7 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = v6;
      v8 = "{msg%{public}.0s:@AutoBugCapture, success, diagnostic report accepted, sessionID:%{public, location:escape_only}@}";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, &v10, 0x1Cu);
    }
  }

  else
  {
    v6 = [v3 objectForKeyedSubscript:kSymptomDiagnosticReplyReasonString];
    if (qword_10045B050 != -1)
    {
      sub_100385BC4();
    }

    v7 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 68289282;
      v11 = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2114;
      v15 = v6;
      v8 = "{msg%{public}.0s:@AutoBugCapture, warning, diagnostic report rejected, reason:%{public, location:escape_only}@}";
      goto LABEL_10;
    }
  }

  if (*(*(*(a1 + 32) + 8) + 48))
  {
    if (qword_10045B050 != -1)
    {
      sub_100385C00();
    }

    v9 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "@AutoBugCapture: notifying waiting thread via condition variable", &v10, 2u);
    }

    std::condition_variable::notify_one(*(*(*(a1 + 32) + 8) + 48));
  }
}

void sub_100201748(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

std::condition_variable **sub_10020178C(std::condition_variable **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::condition_variable::~condition_variable(v2);
    operator delete();
  }

  return a1;
}

void sub_1002017E0()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

BOOL sub_100201808(uint64_t a1, uint64_t *a2)
{
  if (a1)
  {
    return (*(a1 + 108) != 1 || (*(a1 + 109) & 1) == 0) && *(a1 + 40) == 110 && *(a1 + 104) == 2;
  }

  else
  {
    v19 = v2;
    v20 = v3;
    sub_1001CE974(a2, &__p);
    v5 = v17;
    v6 = v18 < 2;
    if (v17)
    {
      do
      {
        v9 = *v5;
        v10 = v5[6];
        if (v10)
        {
          v5[7] = v10;
          operator delete(v10);
        }

        v11 = v5[3];
        if (v11)
        {
          v12 = v5[4];
          v8 = v5[3];
          if (v12 != v11)
          {
            v13 = v12 - 168;
            do
            {
              v15 = *(v12 - 176);
              if (v15 == v15 >> 31)
              {
                if (*(v12 - 128) == 1)
                {
                  *(v12 - 128) = 0;
                }
              }

              else
              {
                v14 = *(v12 - 168);
                if (v15 < 0)
                {
                  if (v14)
                  {
                    (*(*v14 + 8))(v14);
                  }
                }

                else
                {
                  (*v14)(v12 - 168);
                }
              }

              v12 -= 208;
              v13 -= 208;
            }

            while (v12 != v11);
            v8 = v5[3];
          }

          v5[4] = v11;
          operator delete(v8);
        }

        operator delete(v5);
        v5 = v9;
      }

      while (v9);
    }

    v7 = __p;
    __p = 0;
    if (v7)
    {
      operator delete(v7);
    }

    return v6;
  }
}

uint64_t sub_10020198C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1002511B4(a2);
  *(a1 + 8) = v3;
  *(a1 + 16) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *a1 = off_100442E40;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 1065353216;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 1065353216;
  *(a1 + 224) = 0;
  return a1;
}

void *sub_100201A1C(void *a1)
{
  *a1 = off_100442E40;
  v2 = a1[25];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[23];
  a1[23] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[20];
  if (v5)
  {
    do
    {
      v17 = *v5;
      v18 = v5[6];
      if (v18)
      {
        v5[7] = v18;
        operator delete(v18);
      }

      v19 = v5[3];
      if (v19)
      {
        v20 = v5[4];
        v16 = v5[3];
        if (v20 != v19)
        {
          v21 = v20 - 168;
          do
          {
            v23 = *(v20 - 176);
            if (v23 == v23 >> 31)
            {
              if (*(v20 - 128) == 1)
              {
                *(v20 - 128) = 0;
              }
            }

            else
            {
              v22 = *(v20 - 168);
              if (v23 < 0)
              {
                if (v22)
                {
                  (*(*v22 + 8))(v22);
                }
              }

              else
              {
                (*v22)(v20 - 168);
              }
            }

            v20 -= 208;
            v21 -= 208;
          }

          while (v20 != v19);
          v16 = v5[3];
        }

        v5[4] = v19;
        operator delete(v16);
      }

      operator delete(v5);
      v5 = v17;
    }

    while (v17);
  }

  v6 = a1[18];
  a1[18] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = a1[15];
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = a1[13];
  a1[13] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  *a1 = off_100442E98;
  sub_100203444(a1 + 7);
  v10 = a1[8];
  v11 = a1[9];
  if (v10 != v11)
  {
    do
    {
      v12 = *v10++;
      operator delete(v12);
    }

    while (v10 != v11);
    v10 = a1[8];
    v11 = a1[9];
  }

  if (v11 != v10)
  {
    a1[9] = v11 + ((v10 - v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v13 = a1[7];
  if (v13)
  {
    operator delete(v13);
  }

  v14 = a1[3];
  if (v14)
  {
    a1[4] = v14;
    operator delete(v14);
  }

  return a1;
}

void sub_100201C34(void *a1)
{
  sub_100201A1C(a1);

  operator delete();
}

void sub_100201C6C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v4 = *(a1 + 128);
  prime = v4;
  if (v4 == 1)
  {
    prime = 2;
LABEL_6:
    sub_10000FE58(a2, prime);
    goto LABEL_7;
  }

  if ((prime & (v4 - 1)) != 0)
  {
    prime = std::__next_prime(v4);
  }

  if (prime)
  {
    goto LABEL_6;
  }

LABEL_7:
  for (i = *(a1 + 120); i; i = *i)
  {
    v7 = *(i + 4);
    if (v7 == v7 >> 31)
    {
      *&v10 = i[3];
      v8 = v7;
    }

    else
    {
      v10 = *(i + 3);
      v11 = *(i + 10);
      v8 = *(i + 4);
      v7 = v8 >> 31;
    }

    v9 = v8 ^ v7;
    sub_100204BFC(a2, &v9, &v9);
  }
}

void sub_100201DA0(uint64_t *a1, uint64_t a2, int **a3)
{
  sub_100201F9C(a1, a3[6]);
  v7 = a3[3];
  v6 = a3[4];
  if (v7 == v6)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v8 = v6 - v7 - 8;
  if (v8 > 0x17)
  {
    v11 = (v8 >> 3) + 1;
    v10 = (v7 + 8 * (v11 & 0x3FFFFFFFFFFFFFFCLL));
    v12 = (v7 + 16);
    v13 = 0uLL;
    v14 = v11 & 0x3FFFFFFFFFFFFFFCLL;
    v15 = 0uLL;
    do
    {
      v13 = vsubq_s64(v13, vcgtzq_f64(v12[-1]));
      v15 = vsubq_s64(v15, vcgtzq_f64(*v12));
      v12 += 2;
      v14 -= 4;
    }

    while (v14);
    v9 = vaddvq_s64(vaddq_s64(v15, v13));
    if (v11 == (v11 & 0x3FFFFFFFFFFFFFFCLL))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = 0;
    v10 = a3[3];
  }

  do
  {
    v16 = *v10++;
    if (v16 > 0.0)
    {
      ++v9;
    }
  }

  while (v10 != v6);
LABEL_11:
  *&v26 = a3[6];
  *(&v26 + 1) = v9;
  sub_1000277F8((a1 + 3), &v26);
  sub_1000462CC(a1 + 2, ((a1[4] - a1[3]) >> 4) - 1);
  v17 = *a3;
  v18 = a3[1];
  if (*a3 != v18)
  {
    do
    {
      LODWORD(v26) = 1;
      v19 = sub_100205CA0(a1 + 13, v17, v17, &v26);
      if ((v20 & 1) == 0)
      {
        ++v19[6];
      }

      v17 += 52;
    }

    while (v17 != v18);
  }

  v21 = a1[8];
  v22 = a1[9];
  v23 = 73 * ((v22 - v21) >> 3) - 1;
  if (v22 == v21)
  {
    v23 = 0;
  }

  if (v23 == a1[12] + a1[11])
  {
    sub_100206148(a1 + 7);
    v21 = a1[8];
    v22 = a1[9];
  }

  if (v22 == v21)
  {
    v25 = 0;
  }

  else
  {
    v24 = a1[12] + a1[11];
    v25 = (*(v21 + 8 * (v24 / 0x49)) + 56 * (v24 % 0x49));
  }

  sub_100203650(v25, a3);
  ++a1[12];
  sub_1002027C8(a1, a2, a3);
}

int64x2_t sub_100201F9C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v5 != v4)
  {
    v6 = 0;
    v7 = (v4 - v5) >> 4;
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    while (1)
    {
      v10 = *v9;
      v9 += 2;
      if (v8 >= a2 - v10)
      {
        break;
      }

      ++v6;
      *(a1 + 48) = 2;
      if (v7 == v6)
      {
        goto LABEL_7;
      }
    }

    if (v7 != v6)
    {
      goto LABEL_8;
    }

LABEL_7:
    *(a1 + 48) = 1;
    v6 = v7;
LABEL_8:
    if (v6)
    {
      if ((v6 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_10000FC84();
    }
  }

  sub_100202B60(a1, a2);
  if (!*(a1 + 96))
  {
    return result;
  }

  v12 = *(a1 + 88);
  result = xmmword_1003D1DF0;
  do
  {
    while (2)
    {
      v14 = *(*(a1 + 64) + 8 * (v12 / 0x49));
      v15 = v12 % 0x49;
      v16 = (v14 + 56 * v15);
      if (*(a1 + 8) + v16[6] >= a2)
      {
        return result;
      }

      v17 = *v16;
      v18 = v16[1];
      if (*v16 == v18)
      {
        v19 = (v14 + 56 * v15);
        v20 = v19[3];
        if (!v20)
        {
          goto LABEL_18;
        }

LABEL_17:
        v19[4] = v20;
        operator delete(v20);
        goto LABEL_18;
      }

      do
      {
        v26 = (v17 + 8);
        v25 = *v17;
        if (v25 == v25 >> 31)
        {
          v66.__r_.__value_.__l.__size_ = *v26;
          v27 = v25;
        }

        else
        {
          v28 = *v26;
          LODWORD(v67.__r_.__value_.__l.__data_) = *(v17 + 24);
          *&v66.__r_.__value_.__r.__words[1] = v28;
          v27 = *v17;
          v25 = *v17 >> 31;
        }

        LODWORD(v66.__r_.__value_.__l.__data_) = v27 ^ v25;
        v29 = sub_100203E28((a1 + 104), &v66);
        if (!v29)
        {
          v41 = *(a1 + 128);
          v62 = 0;
          LOBYTE(v61) = 0;
          memset(&v66, 0, sizeof(v66));
          std::string::assign(&v66, "Can't find mac ");
          memset(&v67, 0, sizeof(v67));
          if ((sub_10017D830(v17, &v67) & 1) == 0)
          {
            v57 = std::bad_cast::bad_cast(__n_del_1);
            __n_del_1[0].__vftable = &off_100434090;
            sub_100049F88(v57);
          }

          memset(&v68, 0, sizeof(v68));
          std::string::assign(&v68, " among size=");
          v69 = 0;
          __old_sz = 0;
          v71 = 0;
          v74 = &__n_del_1[0].__vftable + 2;
          v75 = v73;
          v63[0] = v41;
          v63[1] = v73;
          v64 = 48;
          v65 = 48;
          v42 = sub_100181514(v63);
          v74 = v42;
          v75 = v73;
          v43 = &v73[-v42];
          v44 = SHIBYTE(v71);
          if ((SHIBYTE(v71) & 0x8000000000000000) != 0)
          {
            v46 = (v71 & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v46 >= v43)
            {
              v47 = HIBYTE(v71);
            }

            else
            {
              v59 = v42;
              v44 = __old_sz;
LABEL_60:
              v58 = &v73[-v42];
              std::string::__grow_by(&v69, v46, v43 - v46, v44, 0, v44, 0);
              v42 = v59;
              __old_sz = 0;
              LOBYTE(v47) = HIBYTE(v71);
              v43 = v58;
            }

            if ((v47 & 0x80u) == 0)
            {
              v45 = &v69;
            }

            else
            {
              v45 = v69;
            }
          }

          else
          {
            v45 = &v69;
            if (v43 > 0x16)
            {
              v59 = v42;
              v46 = 22;
              goto LABEL_60;
            }
          }

          if (v42 == v73)
          {
            v48 = v45;
          }

          else
          {
            if (v43 < 0x20 || &v45[-v42] < 0x20)
            {
              v48 = v45;
              v49 = v42;
            }

            else
            {
              v48 = &v45[v43 & 0xFFFFFFFFFFFFFFE0];
              v49 = (v42 + (v43 & 0xFFFFFFFFFFFFFFE0));
              v50 = (v42 + 16);
              v51 = v45 + 16;
              v52 = v43 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v53 = *v50;
                *(v51 - 1) = *(v50 - 1);
                *v51 = v53;
                v50 += 2;
                v51 += 2;
                v52 -= 32;
              }

              while (v52);
              if (v43 == (v43 & 0xFFFFFFFFFFFFFFE0))
              {
                goto LABEL_75;
              }
            }

            do
            {
              v54 = *v49++;
              *v48++ = v54;
            }

            while (v49 != v73);
          }

LABEL_75:
          *v48 = 0;
          if (SHIBYTE(v71) < 0)
          {
            __old_sz = v43;
          }

          else
          {
            HIBYTE(v71) = v43 & 0x7F;
          }

          sub_1000E661C(&v61, &v66, 4);
          if (SHIBYTE(v71) < 0)
          {
            operator delete(v69);
            if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_85;
            }

LABEL_80:
            if ((SHIBYTE(v67.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_81;
            }

LABEL_86:
            operator delete(v67.__r_.__value_.__l.__data_);
            if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_87;
            }

LABEL_82:
            if (v62 < 0)
            {
LABEL_88:
              operator delete(v61);
            }
          }

          else
          {
            if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_80;
            }

LABEL_85:
            operator delete(v68.__r_.__value_.__l.__data_);
            if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_86;
            }

LABEL_81:
            if ((SHIBYTE(v66.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_82;
            }

LABEL_87:
            operator delete(v66.__r_.__value_.__l.__data_);
            if (v62 < 0)
            {
              goto LABEL_88;
            }
          }

          sub_10003F5D0(&__p);
        }

        v30 = v29[6] - 1;
        v29[6] = v30;
        if (!v30)
        {
          v31 = *(a1 + 112);
          v32 = v29[1];
          v33 = vcnt_s8(v31);
          v33.i16[0] = vaddlv_u8(v33);
          if (v33.u32[0] > 1uLL)
          {
            if (v32 >= *&v31)
            {
              v32 %= *&v31;
            }
          }

          else
          {
            v32 &= *&v31 - 1;
          }

          v34 = *v29;
          v35 = *(a1 + 104);
          v36 = *(v35 + 8 * v32);
          do
          {
            v37 = v36;
            v36 = *v36;
          }

          while (v36 != v29);
          if (v37 == (a1 + 120))
          {
            goto LABEL_45;
          }

          v38 = v37[1];
          if (v33.u32[0] > 1uLL)
          {
            if (v38 >= *&v31)
            {
              v38 %= *&v31;
            }
          }

          else
          {
            v38 &= *&v31 - 1;
          }

          if (v38 != v32)
          {
LABEL_45:
            if (v34)
            {
              v39 = *(v34 + 8);
              if (v33.u32[0] > 1uLL)
              {
                if (v39 >= *&v31)
                {
                  v39 %= *&v31;
                }
              }

              else
              {
                v39 &= *&v31 - 1;
              }

              if (v39 == v32)
              {
                goto LABEL_48;
              }
            }

            *(v35 + 8 * v32) = 0;
            v34 = *v29;
          }

          if (!v34)
          {
LABEL_21:
            *v37 = v34;
            *v29 = 0;
            --*(a1 + 128);
            operator delete(v29);
            goto LABEL_22;
          }

LABEL_48:
          v40 = *(v34 + 8);
          if (v33.u32[0] > 1uLL)
          {
            if (v40 >= *&v31)
            {
              v40 %= *&v31;
            }
          }

          else
          {
            v40 &= *&v31 - 1;
          }

          if (v40 != v32)
          {
            *(v35 + 8 * v40) = v37;
            v34 = *v29;
          }

          goto LABEL_21;
        }

LABEL_22:
        v17 += 208;
      }

      while (v17 != v18);
      v19 = (*(*(a1 + 64) + 8 * (*(a1 + 88) / 0x49uLL)) + 56 * (*(a1 + 88) % 0x49uLL));
      v20 = v19[3];
      if (v20)
      {
        goto LABEL_17;
      }

LABEL_18:
      v21 = *v19;
      if (*v19)
      {
        v22 = v19[1];
        v23 = *v19;
        if (v22 != v21)
        {
          v24 = v22 - 168;
          do
          {
            v56 = *(v22 - 44);
            if (v56 == v56 >> 31)
            {
              if (*(v22 - 128) == 1)
              {
                *(v22 - 128) = 0;
              }
            }

            else
            {
              v55 = *(v22 - 21);
              if (v56 < 0)
              {
                if (v55)
                {
                  (*(*v55 + 8))(v55);
                }
              }

              else
              {
                (*v55)(v22 - 168);
              }
            }

            v22 -= 208;
            v24 -= 208;
          }

          while (v22 != v21);
          v23 = *v19;
        }

        v19[1] = v21;
        operator delete(v23);
      }

      result = vaddq_s64(*(a1 + 88), xmmword_1003D1DF0);
      *(a1 + 88) = result;
      v12 = result.i64[0];
      if (result.i64[0] >= 0x92uLL)
      {
        operator delete(**(a1 + 64));
        *(a1 + 64) += 8;
        v13 = *(a1 + 96);
        v12 = *(a1 + 88) - 73;
        *(a1 + 88) = v12;
        if (!v13)
        {
          return result;
        }

        continue;
      }

      break;
    }
  }

  while (result.i64[1]);
  return result;
}

void sub_100202708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002027C8(int8x8_t *a1, uint64_t a2, uint64_t *a3)
{
  if (sub_100201808(a2, a3))
  {

    sub_100202F1C(a1, a2, a3);
    return;
  }

  if (a2)
  {
    if (*(a2 + 108) == 1)
    {
      if (*(a2 + 109))
      {
        v6 = "merged";
      }

      else
      {
        v6 = "not merged";
      }
    }

    else
    {
      v6 = "unknown";
    }

    v18 = strlen(v6);
    if (v18 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000D39C();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      operator new();
    }

    v29 = v18;
    if (v18)
    {
      memcpy(buf, v6, v18);
    }

    buf[v19] = 0;
    if (qword_10045B050 != -1)
    {
      sub_100385C30();
    }

    v20 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      v21 = buf;
      if (v29 < 0)
      {
        v21 = *buf;
      }

      v22 = *(a2 + 40);
      v23 = *(a2 + 104);
      *v24 = 136315650;
      *&v24[4] = v21;
      v25 = 2048;
      *v26 = v22;
      *&v26[8] = 1024;
      LODWORD(v27) = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Scan not used for coarse indoor. merged = %s, dwell = %lld, scanType = %d", v24, 0x1Cu);
    }

    if (v29 < 0)
    {
      v9 = *buf;
LABEL_47:
      operator delete(v9);
    }
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_100385C30();
    }

    v7 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      sub_1001CE974(a3, v24);
      *buf = 134217984;
      *&buf[4] = v27;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Scan not used for coarse indoor. splitByFrequency size = %zu", buf, 0xCu);
      v8 = *&v26[2];
      if (*&v26[2])
      {
        do
        {
          v11 = *v8;
          v12 = v8[6];
          if (v12)
          {
            v8[7] = v12;
            operator delete(v12);
          }

          v13 = v8[3];
          if (v13)
          {
            v14 = v8[4];
            v10 = v8[3];
            if (v14 != v13)
            {
              v15 = v14 - 168;
              do
              {
                v17 = *(v14 - 176);
                if (v17 == v17 >> 31)
                {
                  if (*(v14 - 128) == 1)
                  {
                    *(v14 - 128) = 0;
                  }
                }

                else
                {
                  v16 = *(v14 - 168);
                  if (v17 < 0)
                  {
                    if (v16)
                    {
                      (*(*v16 + 8))(v16);
                    }
                  }

                  else
                  {
                    (*v16)(v14 - 168);
                  }
                }

                v14 -= 208;
                v15 -= 208;
              }

              while (v14 != v13);
              v10 = v8[3];
            }

            v8[4] = v13;
            operator delete(v10);
          }

          operator delete(v8);
          v8 = v11;
        }

        while (v11);
      }

      v9 = *v24;
      *v24 = 0;
      if (v9)
      {
        goto LABEL_47;
      }
    }
  }
}

void sub_100202B60(void *a1, uint64_t a2)
{
  v2 = a1[20];
  if (!v2)
  {
    return;
  }

  v5 = a1 + 25;
  do
  {
    while (a1[1] + *(v2 + 72) < a2)
    {
      v7 = *(v2 + 24);
      v6 = *(v2 + 32);
      if (v7 != v6)
      {
        while (1)
        {
          *buf = v7;
          v14 = sub_100203984(a1 + 23, v7, &unk_1003DB4B0, buf);
          if (v14[6] != 1)
          {
            break;
          }

          v15 = sub_100203E28(a1 + 23, v7);
          if (v15)
          {
            v16 = a1[24];
            v17 = v15[1];
            v18 = vcnt_s8(v16);
            v18.i16[0] = vaddlv_u8(v18);
            if (v18.u32[0] > 1uLL)
            {
              if (v17 >= *&v16)
              {
                v17 %= *&v16;
              }
            }

            else
            {
              v17 &= *&v16 - 1;
            }

            v19 = a1[23];
            v20 = *(v19 + 8 * v17);
            do
            {
              v21 = v20;
              v20 = *v20;
            }

            while (v20 != v15);
            if (v21 == v5)
            {
              goto LABEL_35;
            }

            v22 = v21[1];
            if (v18.u32[0] > 1uLL)
            {
              if (v22 >= *&v16)
              {
                v22 %= *&v16;
              }
            }

            else
            {
              v22 &= *&v16 - 1;
            }

            if (v22 != v17)
            {
LABEL_35:
              if (!*v15)
              {
                goto LABEL_36;
              }

              v23 = *(*v15 + 8);
              if (v18.u32[0] > 1uLL)
              {
                if (v23 >= *&v16)
                {
                  v23 %= *&v16;
                }
              }

              else
              {
                v23 &= *&v16 - 1;
              }

              if (v23 != v17)
              {
LABEL_36:
                *(v19 + 8 * v17) = 0;
              }
            }

            v24 = *v15;
            if (*v15)
            {
              v25 = *(v24 + 8);
              if (v18.u32[0] > 1uLL)
              {
                if (v25 >= *&v16)
                {
                  v25 %= *&v16;
                }
              }

              else
              {
                v25 &= *&v16 - 1;
              }

              if (v25 != v17)
              {
                *(v19 + 8 * v25) = v21;
                v24 = *v15;
              }
            }

            *v21 = v24;
            *v15 = 0;
            --a1[26];
            operator delete(v15);
            v7 += 208;
            if (v7 == v6)
            {
              goto LABEL_6;
            }
          }

          else
          {
LABEL_18:
            v7 += 208;
            if (v7 == v6)
            {
              goto LABEL_6;
            }
          }
        }

        --v14[6];
        goto LABEL_18;
      }

LABEL_6:
      if (qword_10045B050 != -1)
      {
        sub_100385C44();
      }

      v8 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
      {
        v9 = *(v2 + 16);
        v10 = 0x4EC4EC4EC4EC4EC5 * ((*(v2 + 32) - *(v2 + 24)) >> 4);
        v11 = a1[1];
        v12 = a2 - *(v2 + 72);
        *buf = 67175425;
        *&buf[4] = v9;
        v32 = 2048;
        v33 = v10;
        v34 = 2048;
        v35 = v11;
        v36 = 2048;
        v37 = v12;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Age out freq=%{private}d, size=%zu, fWindowLength=%lld, age = %lld", buf, 0x26u);
      }

      v13 = *v2;
      sub_100010A88(a1 + 18, v2, buf);
      sub_1001D118C(buf);
      v2 = v13;
      if (!v13)
      {
        return;
      }
    }

    if (qword_10045B050 != -1)
    {
      sub_100385C44();
    }

    v26 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(v2 + 16);
      v28 = 0x4EC4EC4EC4EC4EC5 * ((*(v2 + 32) - *(v2 + 24)) >> 4);
      v29 = a1[1];
      v30 = a2 - *(v2 + 72);
      *buf = 67175425;
      *&buf[4] = v27;
      v32 = 2048;
      v33 = v28;
      v34 = 2048;
      v35 = v29;
      v36 = 2048;
      v37 = v30;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "Keeping freq= %{private}d, size=%zu, fWindowLength=%lld, age = %lld", buf, 0x26u);
    }

    v2 = *v2;
  }

  while (v2);
}

void sub_100202F1C(int8x8_t *a1, uint64_t a2, uint64_t *a3)
{
  sub_1001CE974(a3, &__p);
  v5 = v38;
  if (!v38)
  {
    goto LABEL_49;
  }

  do
  {
    v6 = v5[3];
    v36 = *(v5 + 4);
    for (i = v5[4]; v6 != i; v6 += 52)
    {
      while (1)
      {
        v8 = sub_100203E28(&a1[23], v6);
        if (!v8)
        {
          break;
        }

        ++v8[6];
        v6 += 52;
        if (v6 == i)
        {
          goto LABEL_10;
        }
      }

      v39 = v6;
      sub_100203984(&a1[23], v6, &unk_1003DB4B0, &v39)[6] = 1;
    }

LABEL_10:
    v9 = sub_100206510(&a1[18], &v36, &v36, v5 + 3);
    if ((v10 & 1) == 0)
    {
      v11 = v9;
      if (!a2 || v5[9] - v9[9] >= 500000 * *(a2 + 40))
      {
        v12 = v9[3];
        v13 = v9[4];
        if (v12 == v13)
        {
LABEL_14:
          if (v5 != v11)
          {
            sub_100204098(v11 + 3, v5[3], v5[4], 0x4EC4EC4EC4EC4EC5 * ((v5[4] - v5[3]) >> 4));
            sub_10011DD68(v11 + 6, v5[6], v5[7], (v5[7] - v5[6]) >> 3);
          }

          v11[9] = v5[9];
          a1[28].i8[0] = 1;
          goto LABEL_4;
        }

        while (1)
        {
          v39 = v12;
          v14 = sub_100203984(&a1[23], v12, &unk_1003DB4B0, &v39);
          if (v14[6] != 1)
          {
            break;
          }

          v15 = sub_100203E28(&a1[23], v12);
          if (v15)
          {
            v16 = a1[24];
            v17 = v15[1];
            v18 = vcnt_s8(v16);
            v18.i16[0] = vaddlv_u8(v18);
            if (v18.u32[0] > 1uLL)
            {
              if (v17 >= *&v16)
              {
                v17 %= *&v16;
              }
            }

            else
            {
              v17 &= *&v16 - 1;
            }

            v19 = a1[23];
            v20 = *(*&v19 + 8 * v17);
            do
            {
              v21 = v20;
              v20 = *v20;
            }

            while (v20 != v15);
            if (v21 == &a1[25])
            {
              goto LABEL_39;
            }

            v22 = v21[1];
            if (v18.u32[0] > 1uLL)
            {
              if (*&v22 >= *&v16)
              {
                *&v22 %= *&v16;
              }
            }

            else
            {
              *&v22 &= *&v16 - 1;
            }

            if (*&v22 != v17)
            {
LABEL_39:
              if (!*v15)
              {
                goto LABEL_40;
              }

              v23 = *(*v15 + 8);
              if (v18.u32[0] > 1uLL)
              {
                if (v23 >= *&v16)
                {
                  v23 %= *&v16;
                }
              }

              else
              {
                v23 &= *&v16 - 1;
              }

              if (v23 != v17)
              {
LABEL_40:
                *(*&v19 + 8 * v17) = 0;
              }
            }

            v24 = *v15;
            if (*v15)
            {
              v25 = *(v24 + 8);
              if (v18.u32[0] > 1uLL)
              {
                if (v25 >= *&v16)
                {
                  v25 %= *&v16;
                }
              }

              else
              {
                v25 &= *&v16 - 1;
              }

              if (v25 != v17)
              {
                *(*&v19 + 8 * v25) = v21;
                v24 = *v15;
              }
            }

            *v21 = v24;
            *v15 = 0;
            --*&a1[26];
            operator delete(v15);
            v12 += 52;
            if (v12 == v13)
            {
              goto LABEL_14;
            }
          }

          else
          {
LABEL_22:
            v12 += 52;
            if (v12 == v13)
            {
              goto LABEL_14;
            }
          }
        }

        --v14[6];
        goto LABEL_22;
      }
    }

LABEL_4:
    v5 = *v5;
  }

  while (v5);
  v26 = v38;
  if (v38)
  {
    do
    {
      v29 = *v26;
      v30 = v26[6];
      if (v30)
      {
        v26[7] = v30;
        operator delete(v30);
      }

      v31 = v26[3];
      if (v31)
      {
        v32 = v26[4];
        v28 = v26[3];
        if (v32 != v31)
        {
          v33 = v32 - 168;
          do
          {
            v35 = *(v32 - 176);
            if (v35 == v35 >> 31)
            {
              if (*(v32 - 128) == 1)
              {
                *(v32 - 128) = 0;
              }
            }

            else
            {
              v34 = *(v32 - 168);
              if (v35 < 0)
              {
                if (v34)
                {
                  (*(*v34 + 8))(v34);
                }
              }

              else
              {
                (*v34)(v32 - 168);
              }
            }

            v32 -= 208;
            v33 -= 208;
          }

          while (v32 != v31);
          v28 = v26[3];
        }

        v26[4] = v31;
        operator delete(v28);
      }

      operator delete(v26);
      v26 = v29;
    }

    while (v29);
  }

LABEL_49:
  v27 = __p;
  __p = 0;
  if (v27)
  {
    operator delete(v27);
  }
}

void sub_100203324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D0CA8(va);
  _Unwind_Resume(a1);
}

void sub_100203338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D0CA8(va);
  _Unwind_Resume(a1);
}

void sub_10020334C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D0CA8(va);
  _Unwind_Resume(a1);
}

void sub_100203360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D0CA8(va);
  _Unwind_Resume(a1);
}

void sub_100203374(uint64_t *a1, unint64_t a2)
{
  v3 = a2;
  sub_1000277F8((a1 + 3), &v3);
  sub_1000462CC(a1 + 2, ((a1[4] - a1[3]) >> 4) - 1);
}

uint64_t sub_1002033C4@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  for (i = (result + 160); ; result = sub_100205090(a2, a2[1], i[3], i[4], 0x4EC4EC4EC4EC4EC5 * ((i[4] - i[3]) >> 4)))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  return result;
}

void sub_100203444(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v16 = v3 - v2;
    if (v16 < 3)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v4 = a1[4];
  v5 = &v2[v4 / 0x49];
  v6 = *v5 + 56 * (v4 % 0x49);
  v7 = v2[(a1[5] + v4) / 0x49] + 56 * ((a1[5] + v4) % 0x49);
  if (v6 != v7)
  {
    do
    {
      v8 = *(v6 + 3);
      if (v8)
      {
        *(v6 + 4) = v8;
        operator delete(v8);
      }

      v9 = *v6;
      if (*v6)
      {
        v10 = *(v6 + 1);
        v11 = *v6;
        if (v10 != v9)
        {
          v12 = v10 - 168;
          do
          {
            v14 = *(v10 - 44);
            if (v14 == v14 >> 31)
            {
              if (*(v10 - 128) == 1)
              {
                *(v10 - 128) = 0;
              }
            }

            else
            {
              v13 = *(v10 - 21);
              if (v14 < 0)
              {
                if (v13)
                {
                  (*(*v13 + 8))(v13);
                }
              }

              else
              {
                (*v13)(v10 - 168);
              }
            }

            v10 -= 208;
            v12 -= 208;
          }

          while (v10 != v9);
          v11 = *v6;
        }

        *(v6 + 1) = v9;
        operator delete(v11);
      }

      v6 += 56;
      if (v6 - *v5 == 4088)
      {
        v15 = v5[1];
        ++v5;
        v6 = v15;
      }
    }

    while (v6 != v7);
    v2 = a1[1];
    v3 = a1[2];
  }

  a1[5] = 0;
  v16 = v3 - v2;
  if (v16 >= 3)
  {
    do
    {
LABEL_24:
      operator delete(*v2);
      v17 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v16 = (v17 - v2) >> 3;
    }

    while (v16 > 2);
  }

LABEL_25:
  if (v16 == 1)
  {
    v18 = 36;
  }

  else
  {
    if (v16 != 2)
    {
      return;
    }

    v18 = 73;
  }

  a1[4] = v18;
}

uint64_t *sub_100203650(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if ((0x4EC4EC4EC4EC4EC5 * ((v2 - *a2) >> 4)) < 0x13B13B13B13B13CLL)
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
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  a1[6] = a2[6];
  return a1;
}

void sub_10020377C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_1001CE6F4(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002037B4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v22 = *(result + 8);
  if (a2 == a3)
  {
    v6 = *(result + 8);
  }

  else
  {
    v5 = (a2 + 88);
    v6 = *(result + 8);
    do
    {
      v11 = *(v5 - 22);
      v12 = v5 - 5;
      if (v11 == v11 >> 31)
      {
        *(v6 + 8) = *v12;
        v13 = v11;
      }

      else
      {
        v14 = *v12;
        *(v6 + 24) = *(v5 - 16);
        *(v6 + 8) = v14;
        v13 = *(v5 - 22);
        v11 = v13 >> 31;
      }

      *v6 = v13 ^ v11;
      result = v6 + 40;
      v15 = *(v5 - 14);
      v16 = (v5 - 3);
      if (v15 == v15 >> 31)
      {
        v17 = *(v5 - 12);
        v18 = v5 - 5;
        if (v17 == v17 >> 31)
        {
          *(v6 + 48) = *v18;
          v19 = v17;
        }

        else
        {
          v21 = *v18;
          *(v6 + 64) = *(v5 - 6);
          *(v6 + 48) = v21;
          v19 = *v16;
          v17 = v19 >> 31;
        }

        *(v6 + 40) = v19 ^ v17;
        *(v6 + 72) = *(v5 - 2);
        *(v6 + 80) = 0;
        if (*(v5 - 8) == 1)
        {
          *(v6 + 84) = *(v5 - 1);
          *(v6 + 80) = 1;
        }

        v7 = *v5;
        v8 = v5[1];
        *(v6 + 120) = *(v5 + 8);
        *(v6 + 104) = v8;
        *(v6 + 88) = v7;
        v9 = v6;
      }

      else
      {
        if (v15 >= 0)
        {
          v20 = (v5 - 3);
        }

        else
        {
          v20 = *v16;
        }

        result = sub_100131324(result, v20);
        v9 = v22;
      }

      *(v6 + 32) = *(v5 - 14) ^ (*(v5 - 14) >> 31);
      v6 = v9 + 208;
      v22 = v9 + 208;
      v10 = v5 + 120;
      v5 += 13;
    }

    while (v10 != a3);
  }

  *(v3 + 8) = v6;
  return result;
}

void sub_10020393C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1001CFDE4(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t *sub_100203984(void *a1, uint64_t a2, uint64_t a3, int **a4)
{
  v28 = &v27;
  v6 = a2 + 8;
  if (*a2 == *a2 >> 31)
  {
    v7 = *v6;
    v8 = a1[1];
    if (!*&v8)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v7 = sub_1001FA420(&v28, (a2 + 8));
    v8 = a1[1];
    if (!*&v8)
    {
      goto LABEL_58;
    }
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v7;
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v7;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_58:
    operator new();
  }

  v13 = *a2;
  v14 = (v13 >> 31) ^ v13;
  v15 = v13 >> 31 == v13;
  v16 = *(a2 + 8);
  if (v9.u32[0] <= 1uLL)
  {
    v17 = *&v8 - 1;
    if (v15)
    {
      while (1)
      {
        v18 = v12[1];
        if (v18 == v7)
        {
          if ((*(v12 + 4) ^ (*(v12 + 4) >> 31)) == v14 && v12[3] == v16)
          {
            return v12;
          }
        }

        else if ((v18 & v17) != v10)
        {
          goto LABEL_58;
        }

        v12 = *v12;
        if (!v12)
        {
          goto LABEL_58;
        }
      }
    }

    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        if ((*(v12 + 4) ^ (*(v12 + 4) >> 31)) == v14)
        {
          v20 = v12[3] == *v6 && v12[4] == *(v6 + 8);
          if (v20 && *(v12 + 10) == *(v6 + 16))
          {
            return v12;
          }
        }
      }

      else if ((v19 & v17) != v10)
      {
        goto LABEL_58;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_58;
      }
    }
  }

  if (v15)
  {
    while (1)
    {
      v22 = v12[1];
      if (v22 == v7)
      {
        if ((*(v12 + 4) ^ (*(v12 + 4) >> 31)) == v14 && v12[3] == v16)
        {
          return v12;
        }
      }

      else
      {
        if (v22 >= *&v8)
        {
          v22 %= *&v8;
        }

        if (v22 != v10)
        {
          goto LABEL_58;
        }
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_58;
      }
    }
  }

  while (1)
  {
    v23 = v12[1];
    if (v23 == v7)
    {
      break;
    }

    if (v23 >= *&v8)
    {
      v23 %= *&v8;
    }

    if (v23 != v10)
    {
      goto LABEL_58;
    }

LABEL_44:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_58;
    }
  }

  if ((*(v12 + 4) ^ (*(v12 + 4) >> 31)) != v14)
  {
    goto LABEL_44;
  }

  v24 = v12[3] == *v6 && v12[4] == *(v6 + 8);
  if (!v24 || *(v12 + 10) != *(v6 + 16))
  {
    goto LABEL_44;
  }

  return v12;
}

uint64_t *sub_100203E28(void *a1, uint64_t a2)
{
  v25 = &v24;
  v4 = a2 + 8;
  if (*a2 != *a2 >> 31)
  {
    v5 = sub_1001FA420(&v25, (a2 + 8));
    v6 = a1[1];
    if (v6)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v5 = *v4;
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

LABEL_3:
  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v5;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v10 = *(*a1 + 8 * v8);
  if (!v10)
  {
    return v10;
  }

  v10 = *v10;
  if (!v10)
  {
    return v10;
  }

  v11 = *a2;
  v12 = (v11 >> 31) ^ v11;
  v13 = v11 >> 31 == v11;
  v14 = *(a2 + 8);
  if (v7.u32[0] <= 1uLL)
  {
    v15 = *&v6 - 1;
    if (v13)
    {
      while (1)
      {
        v16 = v10[1];
        if (v16 == v5)
        {
          if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12 && v10[3] == v14)
          {
            return v10;
          }
        }

        else if ((v16 & v15) != v8)
        {
          return 0;
        }

        v10 = *v10;
        if (!v10)
        {
          return v10;
        }
      }
    }

    while (1)
    {
      v17 = v10[1];
      if (v17 == v5)
      {
        if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12)
        {
          v18 = v10[3] == *v4 && v10[4] == *(v4 + 8);
          if (v18 && *(v10 + 10) == *(v4 + 16))
          {
            return v10;
          }
        }
      }

      else if ((v17 & v15) != v8)
      {
        return 0;
      }

      v10 = *v10;
      if (!v10)
      {
        return v10;
      }
    }
  }

  if (v13)
  {
    while (1)
    {
      v20 = v10[1];
      if (v20 == v5)
      {
        if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12 && v10[3] == v14)
        {
          return v10;
        }
      }

      else
      {
        if (v20 >= *&v6)
        {
          v20 %= *&v6;
        }

        if (v20 != v8)
        {
          return 0;
        }
      }

      v10 = *v10;
      if (!v10)
      {
        return v10;
      }
    }
  }

  while (1)
  {
    v21 = v10[1];
    if (v21 != v5)
    {
      break;
    }

    if ((*(v10 + 4) ^ (*(v10 + 4) >> 31)) == v12)
    {
      v22 = v10[3] == *v4 && v10[4] == *(v4 + 8);
      if (v22 && *(v10 + 10) == *(v4 + 16))
      {
        return v10;
      }
    }

LABEL_44:
    v10 = *v10;
    if (!v10)
    {
      return v10;
    }
  }

  if (v21 >= *&v6)
  {
    v21 %= *&v6;
  }

  if (v21 == v8)
  {
    goto LABEL_44;
  }

  return 0;
}

uint64_t *sub_100204098(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0x4EC4EC4EC4EC4EC5 * ((v7 - *result) >> 4) < a4)
  {
    if (v8)
    {
      v9 = result[1];
      v10 = *result;
      if (v9 != v8)
      {
        v11 = v9 - 168;
        do
        {
          v13 = *(v9 - 176);
          if (v13 == v13 >> 31)
          {
            if (*(v9 - 128) == 1)
            {
              *(v9 - 128) = 0;
            }
          }

          else
          {
            v12 = *(v9 - 168);
            if (v13 < 0)
            {
              if (v12)
              {
                (*(*v12 + 8))(v12, a2);
              }
            }

            else
            {
              (*v12)(v9 - 168);
            }
          }

          v9 -= 208;
          v11 -= 208;
        }

        while (v9 != v8);
        v10 = *v6;
      }

      v6[1] = v8;
      operator delete(v10);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x13B13B13B13B13BLL)
    {
      v31 = 0x4EC4EC4EC4EC4EC5 * (v7 >> 4);
      v32 = 2 * v31;
      if (2 * v31 <= a4)
      {
        v32 = a4;
      }

      if (v31 >= 0x9D89D89D89D89DLL)
      {
        v33 = 0x13B13B13B13B13BLL;
      }

      else
      {
        v33 = v32;
      }

      if (v33 <= 0x13B13B13B13B13BLL)
      {
        operator new();
      }
    }

    sub_10000FC84();
  }

  v14 = result[1];
  if (0x4EC4EC4EC4EC4EC5 * ((v14 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      v26 = (a2 + 8);
      do
      {
        v29 = v26 - 8;
        v28 = *(v26 - 2);
        if (*v8 == v28)
        {
          if (*v8 == *v8 >> 31)
          {
            *(v8 + 8) = *v26;
          }

          else
          {
            v30 = *v26;
            *(v8 + 24) = *(v26 + 4);
            *(v8 + 8) = v30;
          }
        }

        else
        {
          if (v28 >> 31 == v28)
          {
            *(v8 + 8) = *v26;
          }

          else
          {
            v27 = *v26;
            *(v8 + 24) = *(v26 + 4);
            *(v8 + 8) = v27;
          }

          *v8 = (v28 >> 31) ^ v28;
        }

        result = sub_1002044C0(v8 + 32, v26 + 24);
        v8 += 208;
        v26 += 13;
      }

      while (v29 + 208 != a3);
      v14 = v6[1];
    }

    if (v14 != v8)
    {
      v34 = v14 - 168;
      do
      {
        v35 = *(v14 - 176);
        if (v35 == v35 >> 31)
        {
          if (*(v14 - 128) == 1)
          {
            *(v14 - 128) = 0;
          }
        }

        else
        {
          result = *(v14 - 168);
          if (v35 < 0)
          {
            if (result)
            {
              result = (*(*result + 8))(result);
            }
          }

          else
          {
            result = (*result)(v14 - 168);
          }
        }

        v14 -= 208;
        v34 -= 208;
      }

      while (v14 != v8);
    }

    v6[1] = v8;
  }

  else
  {
    v15 = a2 + v14 - v8;
    if (v14 != v8)
    {
      v16 = v8 + 32;
      v17 = (a2 + 8);
      do
      {
        v21 = v17 - 8;
        v20 = *(v17 - 2);
        v22 = *(v16 - 32);
        if (v22 == v20)
        {
          v23 = (v16 - 24);
          if (v22 == v22 >> 31)
          {
            *v23 = *v17;
          }

          else
          {
            v25 = *v17;
            *(v16 - 8) = *(v17 + 4);
            *v23 = v25;
          }
        }

        else
        {
          v24 = (v20 >> 31) ^ v20;
          if (v20 >> 31 == v20)
          {
            *(v16 - 24) = *v17;
          }

          else
          {
            v18 = v16 - 24;
            v19 = *v17;
            *(v18 + 16) = *(v17 + 4);
            *v18 = v19;
          }

          *(v16 - 32) = v24;
        }

        sub_1002044C0(v16, v17 + 24);
        v16 += 208;
        v17 += 13;
      }

      while (v21 + 208 != v15);
    }

    return sub_1002037B4(v6, v15, a3);
  }

  return result;
}

uint64_t sub_1002044C0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 != *a2)
  {
    v8 = (v4 >> 31) ^ v4;
    v27 = a1;
    v28 = v8;
    if (v4 >> 31 != v4)
    {
      v18 = a2 + 8;
      if (v4 < 0)
      {
        *&v29 = a1;
        DWORD2(v29) = (v4 >> 31) ^ v4;
        *&v30 = v18;
        *(&v30 + 1) = sub_100204BF4;
        if (v3 == v3 >> 31)
        {
          sub_100204954(&v29, a1 + 8);
        }

        else
        {
          if ((v3 & 0x80000000) == 0)
          {
            sub_100204AE0(&v29, (a1 + 8));
          }

          v26 = *(a1 + 8);
          *(a1 + 8) = 0;
          *a1 = v8;
          if (v26)
          {
            (*(*v26 + 8))(v26);
          }
        }
      }

      else
      {
        sub_100204840(&v27, v18);
      }

      return a1;
    }

    v9 = *(a2 + 8);
    v10 = v9;
    if (v9 >> 31 != v9)
    {
      v32 = *(a2 + 24);
      v33 = *(a2 + 32);
      v10 = v9 >> 31;
    }

    v11 = *(a2 + 16);
    v12 = v10 ^ v9;
    v13 = *(a2 + 40);
    v14 = *(a2 + 48);
    v15 = *(a2 + 52);
    v16 = *(a2 + 72);
    v29 = *(a2 + 56);
    v30 = v16;
    v31 = *(a2 + 88);
    if (v3 != v3 >> 31)
    {
      v17 = *(a1 + 8);
      if (v3 < 0)
      {
        if (v17)
        {
          (*(*v17 + 8))(v17);
        }
      }

      else
      {
        (*v17)(a1 + 8);
      }
    }

    if (v12 >> 31 == v12)
    {
      *(a1 + 16) = v11;
      *(a1 + 8) = 0;
      *(a1 + 40) = v13;
      *(a1 + 48) = 0;
      if (!v14)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v23 = v32;
      *(a1 + 16) = v11;
      *(a1 + 24) = v23;
      *(a1 + 32) = v33;
      *(a1 + 8) = (v12 >> 31) ^ v12;
      *(a1 + 40) = v13;
      *(a1 + 48) = 0;
      if (!v14)
      {
LABEL_38:
        v24 = v30;
        *(a1 + 56) = v29;
        *(a1 + 72) = v24;
        *(a1 + 88) = v31;
        *a1 = v8;
        return a1;
      }
    }

    *(a1 + 52) = v15;
    *(a1 + 48) = 1;
    goto LABEL_38;
  }

  if (v3 == v3 >> 31)
  {
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    if (v5 == v6)
    {
      if (v5 == v5 >> 31)
      {
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 40) = *(a2 + 40);
        v7 = *(a2 + 48);
        if (*(a1 + 48) == 1)
        {
LABEL_27:
          if (v7)
          {
            *(a1 + 52) = *(a2 + 52);
          }

          else
          {
            *(a1 + 48) = 0;
          }

LABEL_30:
          v21 = *(a2 + 56);
          v22 = *(a2 + 72);
          *(a1 + 88) = *(a2 + 88);
          *(a1 + 72) = v22;
          *(a1 + 56) = v21;
          return a1;
        }
      }

      else
      {
        v19 = *(a2 + 16);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 16) = v19;
        *(a1 + 40) = *(a2 + 40);
        v7 = *(a2 + 48);
        if (*(a1 + 48) == 1)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      if (v6 >> 31 == v6)
      {
        *(a1 + 16) = *(a2 + 16);
      }

      else
      {
        v20 = *(a2 + 16);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 16) = v20;
      }

      *(a1 + 8) = (v6 >> 31) ^ v6;
      *(a1 + 40) = *(a2 + 40);
      v7 = *(a2 + 48);
      if (*(a1 + 48) == 1)
      {
        goto LABEL_27;
      }
    }

    if (v7)
    {
      *(a1 + 52) = *(a2 + 52);
      *(a1 + 48) = 1;
    }

    goto LABEL_30;
  }

  if (v3 < 0)
  {
    sub_100131328(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    sub_100131328(a1 + 8, a2 + 8);
  }

  return a1;
}

uint64_t sub_100204840(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v9 = *a1;
  v10 = v3;
  v11 = a2;
  v12 = sub_100204950;
  v4 = (v9 + 2);
  v5 = *v9;
  if (v5 == v5 >> 31)
  {
    return sub_100204954(&v9, v4);
  }

  if ((v5 & 0x80000000) == 0)
  {
    sub_100204AE0(&v9, v4);
  }

  v7 = *v4;
  *v4 = 0;
  result = sub_100131324(v4, a2);
  *v9 = v10;
  if (v7)
  {
    v8 = *(*v7 + 1);

    return v8(v7);
  }

  return result;
}

void sub_100204928(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_begin_catch(a1);
  *(a9 + 8) = v9;
  __cxa_rethrow();
}

uint64_t sub_100204954(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 40))
  {
    *(a2 + 40) = 0;
  }

  result = (*(a1 + 24))(*a1 + 8, *(a1 + 16));
  **a1 = *(a1 + 8);
  return result;
}

void sub_100204A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, int a11, uint64_t a12, int a13)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    v19 = *v13;
    v20 = v15 >> 31;
    *(*v13 + 16) = v17;
    if (v15 >> 31 == v15)
    {
      v20 = v15;
    }

    else
    {
      *(v19 + 24) = a12;
      *(v19 + 32) = a13;
    }

    *(v19 + 8) = v20 ^ v15;
    *(v19 + 40) = v18;
    *(v19 + 48) = 0;
    if (v14)
    {
      *(v19 + 52) = v16;
      *(v19 + 48) = 1;
    }

    *(v19 + 56) = a9;
    *(v19 + 72) = a10;
    *(v19 + 88) = a11;
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_100204BAC(void *a1)
{
  __cxa_begin_catch(a1);
  v3 = *v2;
  *(v3 + 8) = v1;
  *v3 ^= ~(*v3 >> 31);
  __cxa_rethrow();
}

uint64_t *sub_100204BFC(void *a1, uint64_t a2, int *a3)
{
  v27 = &v26;
  v5 = a2 + 8;
  if (*a2 == *a2 >> 31)
  {
    v6 = *v5;
    v7 = a1[1];
    if (!*&v7)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v6 = sub_1001FA420(&v27, (a2 + 8));
    v7 = a1[1];
    if (!*&v7)
    {
      goto LABEL_58;
    }
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v6;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_58:
    operator new();
  }

  v12 = *a2;
  v13 = (v12 >> 31) ^ v12;
  v14 = v12 >> 31 == v12;
  v15 = *(a2 + 8);
  if (v8.u32[0] <= 1uLL)
  {
    v16 = *&v7 - 1;
    if (v14)
    {
      while (1)
      {
        v17 = v11[1];
        if (v17 == v6)
        {
          if ((*(v11 + 4) ^ (*(v11 + 4) >> 31)) == v13 && v11[3] == v15)
          {
            return v11;
          }
        }

        else if ((v17 & v16) != v9)
        {
          goto LABEL_58;
        }

        v11 = *v11;
        if (!v11)
        {
          goto LABEL_58;
        }
      }
    }

    while (1)
    {
      v18 = v11[1];
      if (v18 == v6)
      {
        if ((*(v11 + 4) ^ (*(v11 + 4) >> 31)) == v13)
        {
          v19 = v11[3] == *v5 && v11[4] == *(v5 + 8);
          if (v19 && *(v11 + 10) == *(v5 + 16))
          {
            return v11;
          }
        }
      }

      else if ((v18 & v16) != v9)
      {
        goto LABEL_58;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_58;
      }
    }
  }

  if (v14)
  {
    while (1)
    {
      v21 = v11[1];
      if (v21 == v6)
      {
        if ((*(v11 + 4) ^ (*(v11 + 4) >> 31)) == v13 && v11[3] == v15)
        {
          return v11;
        }
      }

      else
      {
        if (v21 >= *&v7)
        {
          v21 %= *&v7;
        }

        if (v21 != v9)
        {
          goto LABEL_58;
        }
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_58;
      }
    }
  }

  while (1)
  {
    v22 = v11[1];
    if (v22 == v6)
    {
      break;
    }

    if (v22 >= *&v7)
    {
      v22 %= *&v7;
    }

    if (v22 != v9)
    {
      goto LABEL_58;
    }

LABEL_44:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_58;
    }
  }

  if ((*(v11 + 4) ^ (*(v11 + 4) >> 31)) != v13)
  {
    goto LABEL_44;
  }

  v23 = v11[3] == *v5 && v11[4] == *(v5 + 8);
  if (!v23 || *(v11 + 10) != *(v5 + 16))
  {
    goto LABEL_44;
  }

  return v11;
}

uint64_t sub_100205090(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if (0x4EC4EC4EC4EC4EC5 * ((v9 - v10) >> 4) >= a5)
    {
      v15 = v10 - a2;
      if (0x4EC4EC4EC4EC4EC5 * ((v10 - a2) >> 4) >= a5)
      {
        v27 = 208 * a5;
        sub_10020557C(a1, a2, a1[1], a2 + 208 * a5);
        v28 = 0;
        v29 = v27 + v7;
        do
        {
          v31 = v7 + v28;
          v32 = *(v5 + v28);
          v33 = *(v7 + v28);
          if (v32 == v33)
          {
            v34 = v5 + v28;
            if (v32 == v32 >> 31)
            {
              *(v34 + 8) = *(v31 + 8);
            }

            else
            {
              v36 = *(v31 + 8);
              *(v34 + 24) = *(v31 + 24);
              *(v34 + 8) = v36;
            }
          }

          else
          {
            v35 = v5 + v28;
            if (v33 >> 31 == v33)
            {
              *(v35 + 8) = *(v31 + 8);
            }

            else
            {
              v30 = *(v31 + 8);
              *(v35 + 24) = *(v31 + 24);
              *(v35 + 8) = v30;
            }

            *(v5 + v28) = (v33 >> 31) ^ v33;
          }

          sub_1002044C0(v5 + v28 + 32, v31 + 32);
          v28 += 208;
        }

        while (v31 + 208 != v29);
      }

      else
      {
        v17 = v15 + a3;
        v63 = a1[1];
        v18 = v63;
        if (v15 + a3 != a4)
        {
          v44 = (v17 + 88);
          v18 = a1[1];
          do
          {
            v49 = *(v44 - 22);
            v50 = v44 - 5;
            if (v49 == v49 >> 31)
            {
              *(v18 + 8) = *v50;
              v51 = v49;
            }

            else
            {
              v52 = *v50;
              *(v18 + 24) = *(v44 - 16);
              *(v18 + 8) = v52;
              v51 = *(v44 - 22);
              v49 = v51 >> 31;
            }

            *v18 = v51 ^ v49;
            v53 = *(v44 - 14);
            v54 = (v44 - 3);
            if (v53 == v53 >> 31)
            {
              v55 = *(v44 - 12);
              v56 = v44 - 5;
              if (v55 == v55 >> 31)
              {
                *(v18 + 48) = *v56;
                v57 = v55;
              }

              else
              {
                v59 = *v56;
                *(v18 + 64) = *(v44 - 6);
                *(v18 + 48) = v59;
                v57 = *v54;
                v55 = v57 >> 31;
              }

              *(v18 + 40) = v57 ^ v55;
              *(v18 + 72) = *(v44 - 2);
              *(v18 + 80) = 0;
              if (*(v44 - 8) == 1)
              {
                *(v18 + 84) = *(v44 - 1);
                *(v18 + 80) = 1;
              }

              v45 = *v44;
              v46 = v44[1];
              *(v18 + 120) = *(v44 + 8);
              *(v18 + 104) = v46;
              *(v18 + 88) = v45;
              v47 = v18;
            }

            else
            {
              if (v53 >= 0)
              {
                v58 = (v44 - 3);
              }

              else
              {
                v58 = *v54;
              }

              sub_100131324(v18 + 40, v58);
              v47 = v63;
            }

            *(v18 + 32) = *(v44 - 14) ^ (*(v44 - 14) >> 31);
            v18 = v47 + 208;
            v63 = v47 + 208;
            v48 = v44 + 120;
            v44 += 13;
          }

          while (v48 != a4);
        }

        a1[1] = v18;
        if (v15 >= 1)
        {
          sub_10020557C(a1, v5, v10, v5 + 208 * a5);
          v19 = 0;
          do
          {
            v21 = v7 + v19;
            v22 = *(v5 + v19);
            v23 = *(v7 + v19);
            if (v22 == v23)
            {
              v24 = v5 + v19;
              if (v22 == v22 >> 31)
              {
                *(v24 + 8) = *(v21 + 8);
              }

              else
              {
                v26 = *(v21 + 8);
                *(v24 + 24) = *(v21 + 24);
                *(v24 + 8) = v26;
              }
            }

            else
            {
              v25 = v5 + v19;
              if (v23 >> 31 == v23)
              {
                *(v25 + 8) = *(v21 + 8);
              }

              else
              {
                v20 = *(v21 + 8);
                *(v25 + 24) = *(v21 + 24);
                *(v25 + 8) = v20;
              }

              *(v5 + v19) = (v23 >> 31) ^ v23;
            }

            sub_1002044C0(v5 + v19 + 32, v21 + 32);
            v19 += 208;
          }

          while (v21 + 208 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 + 0x4EC4EC4EC4EC4EC5 * ((v10 - *a1) >> 4);
      if (v12 > 0x13B13B13B13B13BLL)
      {
        sub_10000FC84();
      }

      v13 = 0x4EC4EC4EC4EC4EC5 * ((v9 - v11) >> 4);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x9D89D89D89D89DLL)
      {
        v14 = 0x13B13B13B13B13BLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (v14 <= 0x13B13B13B13B13BLL)
        {
          operator new();
        }

        sub_10000D444();
      }

      v37 = 16 * ((a2 - v11) >> 4);
      v60 = v37;
      v38 = 208 * a5;
      v39 = v37 + 208 * a5;
      do
      {
        sub_1002057C0(a1, v37, v7);
        v37 += 208;
        v7 += 208;
        v38 -= 208;
      }

      while (v38);
      sub_1001D03F8(a1, v5, a1[1], v39);
      v40 = *a1;
      v61 = v39 + a1[1] - v5;
      a1[1] = v5;
      v41 = v60 + v40 - v5;
      sub_1001D03F8(a1, v40, v5, v41);
      v42 = *a1;
      *a1 = v41;
      a1[1] = v61;
      a1[2] = 0;
      if (v42)
      {
        operator delete(v42);
      }

      return v60;
    }
  }

  return v5;
}

void sub_100205538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D06E4(va);
  _Unwind_Resume(a1);
}

void sub_10020554C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001CFDE4(va);
  *(v3 + 8) = v4;
  _Unwind_Resume(a1);
}

void sub_100205564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001D06E4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10020557C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = *(result + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = 0;
    do
    {
      v13 = v6 + v10;
      v15 = (v7 + v10 + 8);
      v14 = *(v7 + v10);
      if (v14 == v14 >> 31)
      {
        *(v13 + 8) = *v15;
        v16 = v14;
      }

      else
      {
        v17 = *v15;
        *(v13 + 24) = *(v7 + v10 + 24);
        *(v13 + 8) = v17;
        v16 = *(v7 + v10);
        v14 = v16 >> 31;
      }

      v18 = v16 ^ v14;
      v19 = v6 + v10;
      *(v6 + v10) = v18;
      result = v6 + v10 + 40;
      v20 = v7 + v10;
      v21 = *(v7 + v10 + 32);
      v22 = (v7 + v10 + 40);
      if (v21 == v21 >> 31)
      {
        v23 = *v22;
        if (v23 == v23 >> 31)
        {
          *(v19 + 48) = *(v20 + 48);
          v24 = v23;
        }

        else
        {
          v26 = *(v20 + 48);
          *(v19 + 64) = *(v20 + 64);
          *(v19 + 48) = v26;
          v24 = *v22;
          v23 = *v22 >> 31;
        }

        *result = v24 ^ v23;
        v27 = v6 + v10;
        v28 = v7 + v10;
        *(v27 + 72) = *(v7 + v10 + 72);
        *(v27 + 80) = 0;
        if (*(v7 + v10 + 80) == 1)
        {
          *(v27 + 84) = *(v28 + 84);
          *(v27 + 80) = 1;
        }

        v11 = *(v28 + 88);
        v12 = *(v28 + 104);
        *(v27 + 120) = *(v28 + 120);
        *(v27 + 104) = v12;
        *(v27 + 88) = v11;
      }

      else
      {
        if (v21 >= 0)
        {
          v25 = v7 + v10 + 40;
        }

        else
        {
          v25 = *v22;
        }

        result = sub_100131324(result, v25);
      }

      *(v6 + v10 + 32) = *(v20 + 32) ^ (*(v20 + 32) >> 31);
      v10 += 208;
    }

    while (v7 + v10 < a3);
    v8 = v6 + v10;
  }

  *(v5 + 8) = v8;
  if (v6 != a4)
  {
    v29 = 0;
    v30 = a4 - v6;
    do
    {
      v32 = v7 + v29;
      v33 = v6 + v29;
      v34 = *(v6 + v29 - 208);
      v35 = *(v7 + v29 - 208);
      if (v34 == v35)
      {
        v36 = (v32 - 200);
        v37 = v33 - 200;
        if (v34 == v34 >> 31)
        {
          *v37 = *v36;
        }

        else
        {
          v40 = *v36;
          *(v37 + 16) = *(v32 - 184);
          *v37 = v40;
        }
      }

      else
      {
        v38 = (v32 - 200);
        v39 = (v33 - 200);
        if (v35 >> 31 == v35)
        {
          *v39 = *v38;
        }

        else
        {
          v31 = *v38;
          *(v33 - 184) = *(v38 + 4);
          *v39 = v31;
        }

        *(v33 - 208) = (v35 >> 31) ^ v35;
      }

      result = sub_1002058E8(v6 + v29 - 176, v7 + v29 - 176);
      v29 -= 208;
    }

    while (v30 != v29);
  }

  return result;
}

__n128 sub_1002057C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a3 + 8);
  v5 = *a3;
  if (v5 == v5 >> 31)
  {
    *(a2 + 8) = *v6;
    v7 = v5;
  }

  else
  {
    v8 = *v6;
    *(a2 + 24) = *(a3 + 24);
    *(a2 + 8) = v8;
    v7 = *a3;
    v5 = *a3 >> 31;
  }

  *a2 = v7 ^ v5;
  v9 = a2 + 40;
  v10 = *(a3 + 32);
  v11 = (a3 + 40);
  if (v10 == v10 >> 31)
  {
    v12 = *(a3 + 40);
    if (v12 == v12 >> 31)
    {
      *(a2 + 48) = *(a3 + 48);
      v13 = v12;
    }

    else
    {
      v16 = *(a3 + 48);
      *(a2 + 64) = *(a3 + 64);
      *(a2 + 48) = v16;
      v13 = *v11;
      v12 = v13 >> 31;
    }

    *(a2 + 40) = v13 ^ v12;
    *(a2 + 72) = *(a3 + 72);
    *(a2 + 80) = 0;
    if (*(a3 + 80) == 1)
    {
      *(a2 + 84) = *(a3 + 84);
      *(a2 + 80) = 1;
    }

    result = *(a3 + 88);
    v17 = *(a3 + 104);
    *(a2 + 120) = *(a3 + 120);
    *(a2 + 104) = v17;
    *(a2 + 88) = result;
    *(a2 + 32) = *(a3 + 32) ^ (*(a3 + 32) >> 31);
  }

  else
  {
    if (v10 >= 0)
    {
      v14 = a3 + 40;
    }

    else
    {
      v14 = *v11;
    }

    sub_100131324(v9, v14);
    *(a2 + 32) = *(a3 + 32) ^ (*(a3 + 32) >> 31);
  }

  return result;
}

uint64_t sub_1002058E8(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *a2;
  if (*result != *a2)
  {
    v7 = (v3 >> 31) ^ v3;
    v28 = result;
    v29 = v7;
    v8 = (a2 + 8);
    if (v3 >> 31 != v3)
    {
      if (v3 < 0)
      {
        v30 = result;
        v31 = (v3 >> 31) ^ v3;
        v32 = a2 + 8;
        v33 = sub_100204BF4;
        if (v2 == v2 >> 31)
        {
          v16 = result;
          sub_100204954(&v30, result + 8);
          return v16;
        }

        else
        {
          if ((v2 & 0x80000000) == 0)
          {
            sub_100204AE0(&v30, (result + 8));
          }

          v26 = *(result + 8);
          *(result + 8) = 0;
          *result = v7;
          if (v26)
          {
            v27 = result;
            (*(*v26 + 8))(v26);
            return v27;
          }
        }
      }

      else
      {
        v12 = result;
        sub_100204840(&v28, a2 + 8);
        return v12;
      }

      return result;
    }

    if (v2 == v2 >> 31)
    {
      if (*(result + 48) == 1)
      {
        *(result + 48) = 0;
      }

      goto LABEL_36;
    }

    v13 = *(result + 8);
    if (v2 < 0)
    {
      if (!v13)
      {
LABEL_36:
        v21 = *(a2 + 8);
        if (v21 == v21 >> 31)
        {
          *(result + 16) = *(a2 + 16);
          v22 = v21;
        }

        else
        {
          v23 = *(a2 + 16);
          *(result + 32) = *(a2 + 32);
          *(result + 16) = v23;
          v22 = *v8;
          v21 = *v8 >> 31;
        }

        *(result + 8) = v22 ^ v21;
        *(result + 40) = *(a2 + 40);
        *(result + 48) = 0;
        if (*(a2 + 48) == 1)
        {
          *(result + 52) = *(a2 + 52);
          *(result + 48) = 1;
        }

        v24 = *(a2 + 56);
        v25 = *(a2 + 72);
        *(result + 88) = *(a2 + 88);
        *(result + 72) = v25;
        *(result + 56) = v24;
        *result = v7;
        return result;
      }

      v14 = result;
      v15 = a2;
      (*(*v13 + 8))(*(result + 8));
    }

    else
    {
      v14 = result;
      v15 = a2;
      (*v13)(result + 8);
    }

    a2 = v15;
    result = v14;
    goto LABEL_36;
  }

  if (v2 == v2 >> 31)
  {
    v4 = *(result + 8);
    v5 = *(a2 + 8);
    if (v4 == v5)
    {
      if (v4 == v4 >> 31)
      {
        *(result + 16) = *(a2 + 16);
        *(result + 40) = *(a2 + 40);
        v6 = *(a2 + 48);
        if (*(result + 48) != 1)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v17 = *(a2 + 16);
        *(result + 32) = *(a2 + 32);
        *(result + 16) = v17;
        *(result + 40) = *(a2 + 40);
        v6 = *(a2 + 48);
        if (*(result + 48) != 1)
        {
LABEL_6:
          if (v6)
          {
            *(result + 52) = *(a2 + 52);
            *(result + 48) = 1;
          }

LABEL_32:
          v19 = *(a2 + 56);
          v20 = *(a2 + 72);
          *(result + 88) = *(a2 + 88);
          *(result + 72) = v20;
          *(result + 56) = v19;
          return result;
        }
      }
    }

    else
    {
      if (v5 >> 31 == v5)
      {
        *(result + 16) = *(a2 + 16);
      }

      else
      {
        v18 = *(a2 + 16);
        *(result + 32) = *(a2 + 32);
        *(result + 16) = v18;
      }

      *(result + 8) = (v5 >> 31) ^ v5;
      *(result + 40) = *(a2 + 40);
      v6 = *(a2 + 48);
      if (*(result + 48) != 1)
      {
        goto LABEL_6;
      }
    }

    if (v6)
    {
      *(result + 52) = *(a2 + 52);
    }

    else
    {
      *(result + 48) = 0;
    }

    goto LABEL_32;
  }

  if (v2 < 0)
  {
    v11 = *(a2 + 8);
    v9 = result;
    v10 = *(result + 8);
  }

  else
  {
    v9 = result;
    v10 = result + 8;
    v11 = a2 + 8;
  }

  sub_100131328(v10, v11);
  return v9;
}

uint64_t *sub_100205CA0(void *a1, uint64_t a2, int *a3, int *a4)
{
  v28 = &v27;
  v6 = a2 + 8;
  if (*a2 == *a2 >> 31)
  {
    v7 = *v6;
    v8 = a1[1];
    if (!*&v8)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v7 = sub_1001FA420(&v28, (a2 + 8));
    v8 = a1[1];
    if (!*&v8)
    {
      goto LABEL_58;
    }
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v7;
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v7;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_58:
    operator new();
  }

  v13 = *a2;
  v14 = (v13 >> 31) ^ v13;
  v15 = v13 >> 31 == v13;
  v16 = *(a2 + 8);
  if (v9.u32[0] <= 1uLL)
  {
    v17 = *&v8 - 1;
    if (v15)
    {
      while (1)
      {
        v18 = v12[1];
        if (v18 == v7)
        {
          if ((*(v12 + 4) ^ (*(v12 + 4) >> 31)) == v14 && v12[3] == v16)
          {
            return v12;
          }
        }

        else if ((v18 & v17) != v10)
        {
          goto LABEL_58;
        }

        v12 = *v12;
        if (!v12)
        {
          goto LABEL_58;
        }
      }
    }

    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        if ((*(v12 + 4) ^ (*(v12 + 4) >> 31)) == v14)
        {
          v20 = v12[3] == *v6 && v12[4] == *(v6 + 8);
          if (v20 && *(v12 + 10) == *(v6 + 16))
          {
            return v12;
          }
        }
      }

      else if ((v19 & v17) != v10)
      {
        goto LABEL_58;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_58;
      }
    }
  }

  if (v15)
  {
    while (1)
    {
      v22 = v12[1];
      if (v22 == v7)
      {
        if ((*(v12 + 4) ^ (*(v12 + 4) >> 31)) == v14 && v12[3] == v16)
        {
          return v12;
        }
      }

      else
      {
        if (v22 >= *&v8)
        {
          v22 %= *&v8;
        }

        if (v22 != v10)
        {
          goto LABEL_58;
        }
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_58;
      }
    }
  }

  while (1)
  {
    v23 = v12[1];
    if (v23 == v7)
    {
      break;
    }

    if (v23 >= *&v8)
    {
      v23 %= *&v8;
    }

    if (v23 != v10)
    {
      goto LABEL_58;
    }

LABEL_44:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_58;
    }
  }

  if ((*(v12 + 4) ^ (*(v12 + 4) >> 31)) != v14)
  {
    goto LABEL_44;
  }

  v24 = v12[3] == *v6 && v12[4] == *(v6 + 8);
  if (!v24 || *(v12 + 10) != *(v6 + 16))
  {
    goto LABEL_44;
  }

  return v12;
}

void sub_100206148(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x49;
  v3 = v1 - 73;
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

    sub_10000D444();
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = (v4 + 1);
  sub_1001C7D6C(a1, &v10);
}

void sub_1002064B8(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_100206510(void *a1, int *a2, _DWORD *a3, uint64_t *a4)
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
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
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