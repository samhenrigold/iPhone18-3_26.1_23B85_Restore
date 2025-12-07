void sub_100334674(uint64_t a1@<X0>, uint64_t ***a2@<X1>, uint64_t a3@<X8>)
{
  v12 = 0;
  v13 = 0;
  v6 = sub_10024A8AC((a1 + 40), a2);
  v7 = v6;
  if (!v6)
  {
    sub_100333DB4(a1, a2, &v11);
  }

  v8 = v6[5];
  if (!v8 || (v9 = std::__shared_weak_count::lock(v8)) == 0)
  {
    v12 = 0;
    v13 = 0;
LABEL_7:
    sub_100333DB4(a1, a2, &v11);
  }

  v10 = v7[4];
  v12 = v10;
  v13 = v9;
  if (!v10)
  {
    goto LABEL_7;
  }

  *a3 = 0;
  *(a3 + 8) = v10;
  *(a3 + 16) = v9;
}

void sub_10033482C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_100334840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_100334854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_100334868(uint64_t a1@<X0>, const void ***a2@<X1>, uint64_t a3@<X8>)
{
  if (sub_1001182C8(a2, &qword_10045DF78))
  {
    sub_1003317E0();
  }

  v17 = 0;
  v18 = 0;
  v6 = sub_10024A8AC((a1 + 40), a2);
  v7 = v6;
  if (v6)
  {
    v8 = v6[5];
    if (v8 && (v9 = std::__shared_weak_count::lock(v8)) != 0)
    {
      v10 = v9;
      v11 = v7[4];
      v17 = v11;
      v18 = v10;
      if (v11)
      {
        v12 = (*(*v11 + 7))(v11);
        sub_10011B8B8(a3, v12);
LABEL_14:
        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }

        return;
      }
    }

    else
    {
      v17 = 0;
      v18 = 0;
    }
  }

  sub_100120A04(&v16);
  (*(**(a1 + 8) + 120))(&v14);
  sub_1002C699C(&v14, a3);
  v13 = v15;
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  sub_10011B04C(&v16);
  v10 = v18;
  if (v18)
  {
    goto LABEL_14;
  }
}

void sub_100334AA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10002BB1C(&a9);
  sub_10011B04C(va);
  sub_10002BB1C(v10 - 64);
  _Unwind_Resume(a1);
}

void sub_100334AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_100334B24(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (!(((v4 - *a2) >> 3) >> 60))
    {
      operator new();
    }

    sub_10000FC84();
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    do
    {
      while (1)
      {
        v6 = v5[5];
        if (!v6 || *(v6 + 8) == -1)
        {
          break;
        }

        v5 = *v5;
        if (!v5)
        {
          return;
        }
      }

      v7 = *v5;
      sub_100010A88((a1 + 40), v5, buf);
      v8 = *buf;
      *buf = 0;
      if (v8)
      {
        if (BYTE8(v12) == 1)
        {
          v9 = v8[5];
          if (v9)
          {
            std::__shared_weak_count::__release_weak(v9);
          }

          v10 = v8[3];
          if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
          }
        }

        operator delete(v8);
      }

      v5 = v7;
    }

    while (v7);
  }
}

void sub_100334ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002BB1C(va);
  sub_100048F1C(v5);
  _Unwind_Resume(a1);
}

void sub_100334EEC(void *a1)
{
  sub_100334F5C(a1);

  operator delete();
}

void *sub_100334F5C(void *a1)
{
  *a1 = off_10044A2C0;
  v2 = a1[7];
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    v4 = v3[5];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = v3[3];
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v3);
  }

  v6 = a1[5];
  a1[5] = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = a1[4];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a1[2];
  if (!v8 || atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  return a1;
}

void sub_100335210(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_100335228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10002BB1C(&a9);
  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v11);
  _Unwind_Resume(a1);
}

void sub_100335268(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10044A370;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1003352E8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100335320(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100335350(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteI15OnDiskRadioMapsEE")
  {
    if (((v2 & "NSt3__114default_deleteI15OnDiskRadioMapsEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteI15OnDiskRadioMapsEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteI15OnDiskRadioMapsEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_1003353D0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10044A410;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10033544C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t *a5)
{
  v9 = *a4;
  *a4 = 0uLL;
  v5 = *a5;
  *a5 = 0;
  v8 = v5;
  sub_100331AAC(a2, a3, &v9, &v8);
  v6 = v8;
  v8 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(&v9 + 1);
  if (*(&v9 + 1))
  {
    if (!atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_100335528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (a5)
  {
    sub_100387888();
  }

  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_10033561C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_10038782C();
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void sub_100335664(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10044A460;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const void ***sub_1003356E0(void *a1, uint64_t ***a2, uint64_t a3, const void ***a4)
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

void sub_100335A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100335A50(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100335A50(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[5];
      if (v3)
      {
        std::__shared_weak_count::__release_weak(v3);
      }

      v4 = v2[3];
      if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }
    }

    operator delete(v2);
  }

  return a1;
}

void sub_100335AF0()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100335B60()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

double sub_100335BD0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a1 = off_10044A4B0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 80) = 1065353216;
  return result;
}

void sub_100335C24(void *a1, uint64_t a2)
{
  v2 = a2;
  if (qword_10045B050 != -1)
  {
    sub_1003878BC();
  }

  v4 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v5 = (a1[4] - a1[3]) >> 3;
    *buf = 67109376;
    *&buf[4] = v2;
    v15 = 2048;
    __p[0] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Starting up sensor collection %d with %zu sensors in collection", buf, 0x12u);
  }

  sub_100339F88(v2, buf);
  if (((*(*a1 + 16))(a1, buf) & 1) == 0)
  {
    if (qword_10045B050 != -1)
    {
      sub_1003878D0();
    }

    v6 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      v7 = (a1[4] - a1[3]) >> 3;
      v11[0] = 67109376;
      v11[1] = v2;
      v12 = 2048;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "WARNING: Attempt to start control group %d but no matching sensors found (%zu sensors available)", v11, 0x12u);
    }
  }

  v8 = *(__p + 6);
  if (*(__p + 6))
  {
    do
    {
      v9 = *v8;
      operator delete(v8);
      v8 = v9;
    }

    while (v9);
  }

  v10 = *buf;
  *buf = 0;
  if (v10)
  {
    operator delete(v10);
  }
}

void sub_100335DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1001F9AF8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100335DF8(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4;
      v8 = (*(**v4 + 48))(*v4);
      v9 = a2[1];
      if (v9)
      {
        v10 = vcnt_s8(v9);
        v10.i16[0] = vaddlv_u8(v10);
        if (v10.u32[0] > 1uLL)
        {
          v11 = v8;
          if (v9 <= v8)
          {
            v11 = v8 % v9;
          }
        }

        else
        {
          v11 = (v9 - 1) & v8;
        }

        v12 = *(*a2 + 8 * v11);
        if (v12)
        {
          v13 = *v12;
          if (v13)
          {
            if (v10.u32[0] < 2uLL)
            {
              v14 = v9 - 1;
              while (1)
              {
                v15 = v13[1];
                if (v15 == v8)
                {
                  if (*(v13 + 4) == v8)
                  {
                    goto LABEL_3;
                  }
                }

                else if ((v15 & v14) != v11)
                {
                  goto LABEL_4;
                }

                v13 = *v13;
                if (!v13)
                {
                  goto LABEL_4;
                }
              }
            }

            do
            {
              v16 = v13[1];
              if (v16 == v8)
              {
                if (*(v13 + 4) == v8)
                {
LABEL_3:
                  (*(*v7 + 24))(v7);
                  v6 = 1;
                  break;
                }
              }

              else
              {
                if (v16 >= v9)
                {
                  v16 %= v9;
                }

                if (v16 != v11)
                {
                  break;
                }
              }

              v13 = *v13;
            }

            while (v13);
          }
        }
      }

LABEL_4:
      ++v4;
    }

    while (v4 != v5);
  }

  for (i = a2[2]; i; i = *i)
  {
    sub_10032C1AC(a1 + 6, i + 4, i + 4);
  }

  return v6 & 1;
}

void sub_100335FA0(void *a1, uint64_t a2)
{
  v2 = a2;
  if (qword_10045B050 != -1)
  {
    sub_1003878BC();
  }

  v4 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = a1;
    v14 = 1024;
    __p[0] = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Stopping sensor collection %p %d", buf, 0x12u);
  }

  sub_100339F88(v2, buf);
  if (((*(*a1 + 40))(a1, buf) & 1) == 0)
  {
    if (qword_10045B050 != -1)
    {
      sub_1003878D0();
    }

    v5 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      v6 = (a1[4] - a1[3]) >> 3;
      v10[0] = 67109376;
      v10[1] = v2;
      v11 = 2048;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "WARNING: Attempt to stop control group %d but no matching sensors found (%zu sensors available)", v10, 0x12u);
    }
  }

  v7 = *(__p + 2);
  if (*(__p + 2))
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *buf;
  *buf = 0;
  if (v9)
  {
    operator delete(v9);
  }
}

void sub_100336150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1001F9AF8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100336168(void *a1, void *a2)
{
  v4 = a1[3];
  v5 = a1[4];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4;
      v8 = (*(**v4 + 48))(*v4);
      v9 = a2[1];
      if (v9)
      {
        v10 = vcnt_s8(v9);
        v10.i16[0] = vaddlv_u8(v10);
        if (v10.u32[0] > 1uLL)
        {
          v11 = v8;
          if (v9 <= v8)
          {
            v11 = v8 % v9;
          }
        }

        else
        {
          v11 = (v9 - 1) & v8;
        }

        v12 = *(*a2 + 8 * v11);
        if (v12)
        {
          v13 = *v12;
          if (v13)
          {
            if (v10.u32[0] < 2uLL)
            {
              v14 = v9 - 1;
              while (1)
              {
                v15 = v13[1];
                if (v15 == v8)
                {
                  if (*(v13 + 4) == v8)
                  {
                    goto LABEL_3;
                  }
                }

                else if ((v15 & v14) != v11)
                {
                  goto LABEL_4;
                }

                v13 = *v13;
                if (!v13)
                {
                  goto LABEL_4;
                }
              }
            }

            do
            {
              v16 = v13[1];
              if (v16 == v8)
              {
                if (*(v13 + 4) == v8)
                {
LABEL_3:
                  (*(*v7 + 32))(v7);
                  v6 = 1;
                  break;
                }
              }

              else
              {
                if (v16 >= v9)
                {
                  v16 %= v9;
                }

                if (v16 != v11)
                {
                  break;
                }
              }

              v13 = *v13;
            }

            while (v13);
          }
        }
      }

LABEL_4:
      ++v4;
    }

    while (v4 != v5);
  }

  for (i = a2[2]; i; i = *i)
  {
    v19 = a1[7];
    if (v19)
    {
      v20 = *(i + 4);
      v21 = vcnt_s8(v19);
      v21.i16[0] = vaddlv_u8(v21);
      if (v21.u32[0] > 1uLL)
      {
        v22 = *(i + 4);
        if (*&v19 <= v20)
        {
          v22 = v20 % *&v19;
        }
      }

      else
      {
        v22 = (*&v19 - 1) & v20;
      }

      v23 = *(a1[6] + 8 * v22);
      if (v23)
      {
        v24 = *v23;
        if (*v23)
        {
          if (v21.u32[0] < 2uLL)
          {
            v25 = *&v19 - 1;
            while (1)
            {
              v26 = *(v24 + 8);
              if (v26 == v20)
              {
                if (*(v24 + 16) == v20)
                {
                  goto LABEL_51;
                }
              }

              else if ((v26 & v25) != v22)
              {
                goto LABEL_29;
              }

              v24 = *v24;
              if (!v24)
              {
                goto LABEL_29;
              }
            }
          }

          do
          {
            v27 = *(v24 + 8);
            if (v27 == v20)
            {
              if (*(v24 + 16) == v20)
              {
LABEL_51:
                sub_100010A88(a1 + 6, v24, &__p);
                v28 = __p;
                __p = 0;
                if (v28)
                {
                  operator delete(v28);
                }

                break;
              }
            }

            else
            {
              if (v27 >= *&v19)
              {
                v27 %= *&v19;
              }

              if (v27 != v22)
              {
                break;
              }
            }

            v24 = *v24;
          }

          while (v24);
        }
      }
    }

LABEL_29:
    ;
  }

  return v6 & 1;
}

void sub_100336404(void *a1, uint64_t a2)
{
  v18 = a2;
  v5 = a1[3];
  v6 = a1[4];
  v4 = a1 + 3;
  if (v5 != v6)
  {
    while (*v5 != a2)
    {
      if (++v5 == v6)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 == v6)
  {
LABEL_10:
    sub_10003ABD8(v4, &v18);
    v9 = (*(*v18 + 48))(v18);
    v10 = a1[7];
    if (v10)
    {
      v11 = vcnt_s8(v10);
      v11.i16[0] = vaddlv_u8(v11);
      if (v11.u32[0] > 1uLL)
      {
        v12 = v9;
        if (v10 <= v9)
        {
          v12 = v9 % v10;
        }
      }

      else
      {
        v12 = (v10 - 1) & v9;
      }

      v13 = *(a1[6] + 8 * v12);
      if (v13)
      {
        v14 = *v13;
        if (v14)
        {
          if (v11.u32[0] < 2uLL)
          {
            v15 = v10 - 1;
            while (1)
            {
              v17 = v14[1];
              if (v17 == v9)
              {
                if (*(v14 + 4) == v9)
                {
                  goto LABEL_31;
                }
              }

              else if ((v17 & v15) != v12)
              {
                return;
              }

              v14 = *v14;
              if (!v14)
              {
                return;
              }
            }
          }

          do
          {
            v16 = v14[1];
            if (v16 == v9)
            {
              if (*(v14 + 4) == v9)
              {
LABEL_31:
                (*(*v18 + 24))(v18);
                return;
              }
            }

            else
            {
              if (v16 >= v10)
              {
                v16 %= v10;
              }

              if (v16 != v12)
              {
                return;
              }
            }

            v14 = *v14;
          }

          while (v14);
        }
      }
    }
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_1003878BC();
    }

    v7 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      v8 = (*(*a2 + 48))(a2);
      *buf = 67109120;
      v20 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Sensor %d already in collection", buf, 8u);
    }
  }
}

void sub_100336650(uint64_t result, void *a2)
{
  v2 = *(result + 24);
  v3 = *(result + 32);
  while (v2 != v3)
  {
    v5 = *v2++;
    sub_1003387F8(v5, a2);
  }
}

void sub_100336698(uint64_t result, void *a2)
{
  v2 = *(result + 24);
  v3 = *(result + 32);
  while (v2 != v3)
  {
    v5 = *v2++;
    sub_100338D90(v5, a2);
  }
}

uint64_t sub_1003366E0(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v1 == v2)
  {
    return 0;
  }

  v3 = 0;
  LODWORD(v4) = 0;
  do
  {
    v5 = *v1++;
    v4 = v4 + sub_100338EE4(v5);
    v3 += v6;
  }

  while (v1 != v2);
  return v4;
}

void *sub_100336758(void *a1)
{
  *a1 = off_10044A4B0;
  v2 = a1[8];
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

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  v6 = a1[2];
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  return a1;
}

void sub_100336828(void *a1)
{
  *a1 = off_10044A4B0;
  v2 = a1[8];
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

  v4 = a1[6];
  a1[6] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    a1[4] = v5;
    operator delete(v5);
  }

  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete();
}

void sub_100336938()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1003369A8()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_100336A18(uint64_t result, _DWORD *a2, uint64_t a3, int a4, char a5, char a6, int a7, uint64_t a8, double a9, double a10)
{
  v11 = a2 + 2;
  v10 = *a2;
  if (v10 == v10 >> 31)
  {
    *(result + 8) = *v11;
    v12 = v10;
  }

  else
  {
    v13 = *v11;
    *(result + 24) = a2[6];
    *(result + 8) = v13;
    v12 = *a2;
    v10 = *a2 >> 31;
  }

  *result = v12 ^ v10;
  *(result + 32) = a9;
  *(result + 40) = 0;
  if (*a3 == 1)
  {
    *(result + 44) = *(a3 + 4);
    *(result + 40) = 1;
  }

  *(result + 48) = a5;
  *(result + 49) = a6;
  *(result + 56) = a8;
  *(result + 64) = a7;
  *(result + 72) = a10;
  *(result + 80) = a4;
  return result;
}

uint64_t sub_100336A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 24) = 0;
  *a4 = off_10043DC98;
  *(a4 + 8) = 0;
  *(a4 + 16) = a4 + 24;
  v7 = (a4 + 16);
  v8 = (a4 + 40);
  *(a4 + 96) = 0;
  v9 = (a4 + 96);
  *(a4 + 140) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = off_10043DC78;
  *(a4 + 48) = 0;
  *(a4 + 54) = 0;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 64) = 0;
  *(a4 + 88) = 0;
  *(a4 + 104) = 0;
  *(a4 + 112) = 0;
  *(a4 + 120) = 0;
  *(a4 + 128) = 0;
  *(a4 + 135) = 0;
  *(a4 + 144) &= 0x80u;
  *(a4 + 152) &= 0xF8u;
  sub_100126648(a4, a1);
  v10 = *(a4 + 152) | 2;
  *(a4 + 152) = v10;
  v11 = a3[1];
  if (*a3 != v11)
  {
    v12 = (*a3 + 80);
    do
    {
      v18 = off_10043DC58;
      LODWORD(v19) = 0;
      BYTE4(v19) = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 &= 0xC0u;
      sub_1001294D4(&v18, *(v12 - 6));
      sub_1001313D4(&v18, *v12);
      sub_10012A3A4(&v18, *(v12 - 32) == 0);
      sub_10012E9CC(&v18, *(v12 - 3));
      sub_1001313DC(&v18, *(v12 - 31) == 1);
      sub_1001313E4(&v18, *(v12 - 9));
      v25 = &v24;
      if (*(v12 - 20) == *(v12 - 20) >> 31)
      {
        sub_10017DCEC((v12 - 18), __p);
      }

      else
      {
        sub_10017DF00(v12 - 72, v12 - 52);
      }

      sub_100337708(v7, __p, __p, &v18);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      nullsub_80();
      v13 = v12 + 2;
      v12 += 22;
    }

    while (v13 != v11);
    v10 = *(a4 + 152);
  }

  *(a4 + 152) = v10 | 4;
  sub_100126648(v8, *(a2 + 32));
  if (*(a2 + 48) == 1)
  {
    sub_100131E0C(v8, *(a2 + 52));
  }

  sub_10012A3A4(v8, *(a2 + 56) == 0);
  sub_100131E20(v8, *(a2 + 60) == 1);
  if (*a2 == 1)
  {
    sub_100131E28(v8, (a2 + 8));
  }

  *(a4 + 88) = *(a2 + 40);
  sub_10031C068(a2, &v18);
  v14 = *v9;
  if (*v9)
  {
    *(a4 + 104) = v14;
    operator delete(v14);
  }

  *(a4 + 96) = v18;
  *(a4 + 112) = v19;
  sub_100131E5C(v8, *(a2 + 88) == 0);
  sub_100131E64(v8, *(a2 + 96));
  return sub_100131E78(v8, *(a2 + 104) != 2);
}

void sub_100336DB8(_Unwind_Exception *a1)
{
  nullsub_80();
  sub_10013338C(v1);
  _Unwind_Resume(a1);
}

void sub_100336DD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    nullsub_80();
    sub_10013338C(v16);
    _Unwind_Resume(a1);
  }

  nullsub_80();
  sub_10013338C(v16);
  _Unwind_Resume(a1);
}

void sub_100336E1C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a1;
  sub_1000A825C(a4);
  *(a4 + 60) |= 1u;
  v7 = *(a4 + 40);
  if (!v7)
  {
    operator new();
  }

  v8 = sub_10010C670();
  *(v7 + 52) |= 8u;
  *(v7 + 40) = v8;
  *(a4 + 60) |= 1u;
  v9 = *(a4 + 40);
  if (!v9)
  {
    operator new();
  }

  v10 = sub_1001CA208();
  *(v9 + 52) |= 2u;
  *(v9 + 24) = v10;
  *(a4 + 60) |= 1u;
  v11 = *(a4 + 40);
  if (!v11)
  {
    operator new();
  }

  v12 = sub_1001CA2CC();
  *(v11 + 52) |= 4u;
  *(v11 + 32) = v12;
  *(a4 + 60) |= 1u;
  v13 = *(a4 + 40);
  if (!v13)
  {
    operator new();
  }

  Current = CFAbsoluteTimeGetCurrent();
  *(v13 + 52) |= 1u;
  *(v13 + 16) = Current;
  *(a4 + 60) |= 2u;
  v15 = *(a4 + 48);
  if (!v15)
  {
    operator new();
  }

  *(v15 + 76) |= 4u;
  v16 = *(v15 + 32);
  if (!v16)
  {
    operator new();
  }

  *(v16 + 60) |= 1u;
  v17 = *(v16 + 16);
  if (!v17)
  {
    operator new();
  }

  v18 = sub_10010C730(&v39);
  *(v17 + 44) |= 2u;
  *(v17 + 24) = v18;
  if (*(a2 + 48) == 1 && *(a2 + 52))
  {
    v19 = 5;
  }

  else
  {
    v19 = 4;
  }

  v20 = *(v16 + 60);
  *(v16 + 28) = v19;
  *(v16 + 60) = v20 | 0x44;
  v21 = *(v16 + 40);
  if (!v21)
  {
    operator new();
  }

  v38 = a2;
  v22 = a3[1];
  if (*a3 != v22)
  {
    v23 = *a3 + 8;
    do
    {
      v24 = *(v21 + 36);
      v25 = *(v21 + 32);
      if (v25 >= v24)
      {
        if (v24 == *(v21 + 40))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v21 + 24), v24 + 1);
          v24 = *(v21 + 36);
        }

        *(v21 + 36) = v24 + 1;
        operator new();
      }

      v26 = *(v21 + 24);
      *(v21 + 32) = v25 + 1;
      v27 = *(v26 + 8 * v25);
      v28 = v23 - 8;
      v41 = &v40;
      if (*(v23 - 8) != *(v23 - 8) >> 31)
      {
        sub_10017910C();
      }

      v29 = *v23;
      *(v27 + 64) |= 1u;
      *(v27 + 16) = v29;
      LODWORD(v41) = *(v23 + 56);
      v30 = sub_10031BBC4(&v41);
      v31 = *(v27 + 64);
      *(v27 + 36) = v30;
      v32 = *(v23 + 64);
      *(v27 + 64) = v31 | 0x28;
      *(v27 + 44) = v32;
      v33 = sub_1000E0718(*(v23 + 72));
      v34 = *(v27 + 64);
      *(v27 + 40) = v33;
      *(v27 + 32) = *(v23 + 24);
      v35 = *(v23 + 41) == 1;
      *(v27 + 64) = v34 | 0x54;
      *(v27 + 48) = v35;
      v23 += 88;
    }

    while (v28 + 88 != v22);
  }

  *(v21 + 52) |= 1u;
  v36 = *(v21 + 16);
  if (!v36)
  {
    operator new();
  }

  v41 = *(v38 + 32);
  v37 = sub_10010C730(&v41);
  *(v36 + 44) |= 2u;
  *(v36 + 24) = v37;
}

void sub_100337488(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  sub_100309E68(a2, a1[2]);
  v6 = *a1;
  v4 = a1 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    while (1)
    {
      v33[0] = 0;
      v7 = *(v5 + 96);
      if ((v7 & 0x20) != 0)
      {
        v8 = *(v5 + 23);
        v33[0] = 1;
        v34 = v8;
      }

      v32 = *(v5 + 76) ^ 1;
      v9 = *(v5 + 8);
      v31 = *(v5 + 88);
      if (v9 < 0.0)
      {
        break;
      }

      if ((v7 & 0x20) != 0)
      {
        goto LABEL_15;
      }

LABEL_16:
      v20 = v5[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v5[2];
          v22 = *v21 == v5;
          v5 = v21;
        }

        while (!v22);
      }

      v5 = v21;
      if (v21 == v4)
      {
        return;
      }
    }

    sub_10032618C(v5 + 32, &v35);
    v10 = v5[10];
    v30 = v10;
    v11 = *(a2 + 8);
    if (v11 >= *(a2 + 16))
    {
      v23 = sub_100337930(a2, &v35, v5 + 8, v33, v5 + 18, &v32, &v31, &v30);
      v24 = v33[0];
      *(a2 + 8) = v23;
      if ((v24 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v12 = v35;
      if (v35 >> 31 != v35)
      {
        v39 = v37;
        v40 = v38;
        v12 = v35 >> 31;
      }

      v13 = v12 ^ v35;
      v14 = (v12 ^ v35) >> 31;
      v15 = v13;
      if (v14 != v13)
      {
        v41 = v39;
        v42 = v40;
        v15 = v13 >> 31;
      }

      v16 = v5[8];
      v17 = *(v5 + 18);
      v18 = v15 ^ v13;
      v19 = v18 >> 31;
      if (v18 >> 31 == v18)
      {
        *(v11 + 8) = v36;
        v19 = v18;
      }

      else
      {
        v25 = v41;
        *(v11 + 8) = v36;
        *(v11 + 16) = v25;
        *(v11 + 24) = v42;
      }

      v26 = v33[0];
      v27 = v34;
      v28 = v32;
      v29 = v31;
      *v11 = v19 ^ v18;
      *(v11 + 32) = v16;
      *(v11 + 40) = 0;
      if (v26)
      {
        *(v11 + 44) = v27;
        *(v11 + 40) = 1;
      }

      *(v11 + 48) = v28;
      *(v11 + 49) = v29;
      *(v11 + 56) = v10;
      *(v11 + 64) = 0;
      *(v11 + 72) = 0;
      *(v11 + 80) = v17;
      *(a2 + 8) = v11 + 88;
      if ((v26 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

LABEL_15:
    v33[0] = 0;
    goto LABEL_16;
  }
}

uint64_t *sub_100337708(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  if (!v4)
  {
LABEL_25:
    operator new();
  }

  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v5 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v8 = v4;
      v11 = v4[4];
      v9 = v4 + 4;
      v10 = v11;
      v12 = *(v9 + 23);
      if (v12 >= 0)
      {
        v13 = *(v9 + 23);
      }

      else
      {
        v13 = v9[1];
      }

      if (v12 >= 0)
      {
        v14 = v9;
      }

      else
      {
        v14 = v10;
      }

      if (v13 >= v6)
      {
        v15 = v6;
      }

      else
      {
        v15 = v13;
      }

      v16 = memcmp(v7, v14, v15);
      v17 = v6 < v13;
      if (v16)
      {
        v17 = v16 < 0;
      }

      if (!v17)
      {
        break;
      }

      v4 = *v8;
      if (!*v8)
      {
        goto LABEL_25;
      }
    }

    v18 = memcmp(v14, v7, v15);
    v19 = v13 < v6;
    if (v18)
    {
      v19 = v18 < 0;
    }

    if (!v19)
    {
      return v8;
    }

    v4 = v8[1];
    if (!v4)
    {
      goto LABEL_25;
    }
  }
}

void sub_1003378B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 55) < 0)
  {
    operator delete(*(v3 + 32));
  }

  sub_1003378D4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003378D4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      nullsub_80();
      if (*(v1 + 55) < 0)
      {
        operator delete(*(v1 + 32));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_100337930(uint64_t *a1, uint64_t a2, uint64_t *a3, char *a4, int *a5, char *a6, char *a7, uint64_t *a8)
{
  v8 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v9 = v8 + 1;
  if ((v8 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_10000FC84();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v9)
  {
    v9 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v11 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    sub_10000D444();
  }

  v42 = *a2;
  v12 = *a2;
  if (*a2 >> 31 != *a2)
  {
    v43 = *(a2 + 16);
    v44 = *(a2 + 24);
    v12 = *a2 >> 31;
  }

  v13 = (8 * ((a1[1] - *a1) >> 3));
  v14 = v12 ^ v42;
  v15 = v12 ^ v42;
  if ((v12 ^ v42) >> 31 != (v12 ^ v42))
  {
    v45 = v43;
    v46 = v44;
    v15 = v14 >> 31;
  }

  v16 = *a3;
  v17 = *a4;
  v18 = v15 ^ v14;
  v19 = v18 >> 31;
  *(8 * ((a1[1] - *a1) >> 3) + 8) = *(a2 + 8);
  if (v18 >> 31 == v18)
  {
    v19 = v18;
  }

  else
  {
    *(88 * v8 + 0x10) = v45;
    *(88 * v8 + 0x18) = v46;
  }

  v20 = *(a4 + 1);
  v21 = *a5;
  v22 = *a6;
  v23 = *a7;
  v24 = *a8;
  *v13 = v19 ^ v18;
  *(88 * v8 + 0x20) = v16;
  *(88 * v8 + 0x28) = 0;
  if (v17)
  {
    *(88 * v8 + 0x2C) = v20;
    *(88 * v8 + 0x28) = 1;
  }

  *(88 * v8 + 0x30) = v22;
  *(88 * v8 + 0x31) = v23;
  *(88 * v8 + 0x38) = v24;
  *(88 * v8 + 0x40) = 0;
  *(88 * v8 + 0x48) = 0;
  *(88 * v8 + 0x50) = v21;
  v25 = *a1;
  v26 = a1[1];
  v27 = v13 - (v26 - *a1);
  v28 = (v13 + 22);
  if (v26 != *a1)
  {
    v29 = 0;
    v30 = -8 * ((v26 - *a1) >> 3) + 88 * v8;
    do
    {
      v33 = v30 + v29;
      v35 = &v25[v29 + 8];
      v34 = *&v25[v29];
      if (v34 == v34 >> 31)
      {
        *(v33 + 8) = *v35;
        v36 = v34;
      }

      else
      {
        v37 = *v35;
        *(v33 + 24) = *&v25[v29 + 24];
        *(v33 + 8) = v37;
        v36 = *&v25[v29];
        v34 = v36 >> 31;
      }

      v38 = v36 ^ v34;
      v39 = v30 + v29;
      *v39 = v38;
      v40 = &v25[v29];
      *(v39 + 32) = *&v25[v29 + 32];
      *(v39 + 40) = 0;
      if (v25[v29 + 40] == 1)
      {
        *(v39 + 44) = *(v40 + 11);
        *(v39 + 40) = 1;
      }

      v31 = *(v40 + 3);
      v32 = *(v40 + 4);
      *(v39 + 80) = *(v40 + 20);
      *(v39 + 48) = v31;
      *(v39 + 64) = v32;
      v29 += 88;
    }

    while (&v25[v29] != v26);
    do
    {
      if (v25[40] == 1)
      {
        v25[40] = 0;
      }

      v25 += 88;
    }

    while (v25 != v26);
    v25 = *a1;
  }

  *a1 = v27;
  a1[1] = v28;
  a1[2] = 0;
  if (v25)
  {
    operator delete(v25);
  }

  return v28;
}

void sub_100337C7C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100337CEC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_100337D5C(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_100338704(a1);
  *a1 = off_10044A560;
  objc_initWeak((a1 + 96), v3);

  return a1;
}

id sub_100337DCC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained sensorPresent];

    return v3;
  }

  else
  {

    return 0;
  }
}

void sub_100337E34(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained start];
}

void sub_100337E90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 96));
  [WeakRetained stop];
}

void sub_100337EEC(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0uLL;
  sub_100324468(&v5, a2, &v4, a4);
  operator new();
}

void sub_1003380E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_100050568(v10 - 48);
  sub_100338158(va);
  sub_10002BB1C(&a9);
  _Unwind_Resume(a1);
}

void sub_10033810C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10002BB1C(v11);
  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v13);
  sub_100338158(va);
  sub_10002BB1C(&a9);
  _Unwind_Resume(a1);
}

void sub_10033813C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_100338158(va);
  sub_10002BB1C(&a9);
  _Unwind_Resume(a1);
}

void *sub_100338158(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    for (i = a1[4]; i != v2; i -= 88)
    {
      if (*(i - 48) == 1)
      {
        *(i - 48) = 0;
      }
    }

    a1[4] = v2;
    operator delete(v2);
  }

  v4 = a1[2];
  if (!v4 || atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v4->__on_zero_shared)(v4);
  std::__shared_weak_count::__release_weak(v4);
  return a1;
}

void sub_10033820C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = *a3;
  *a3 = 0uLL;
  memset(v3, 0, sizeof(v3));
  sub_100324468(&v5, a2, &v4, v3);
  operator new();
}

void sub_10033844C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, char *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  sub_100050568(v3 - 48);
  sub_100338158(va2);
  sub_100261424(va);
  sub_10002BB1C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1003384A4(uint64_t a1)
{
  objc_destroyWeak((a1 + 96));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));
  return a1;
}

void sub_100338540(uint64_t a1)
{
  objc_destroyWeak((a1 + 96));
  *a1 = off_10044A5C0;
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = *(a1 + 80);
    v4 = *(a1 + 72);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = *(a1 + 72);
    }

    *(a1 + 80) = v2;
    operator delete(v4);
  }

  std::mutex::~mutex((a1 + 8));

  operator delete();
}

void sub_1003385FC()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10033866C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1003386DC()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_100338704(uint64_t a1)
{
  *a1 = off_10044A5C0;
  *(a1 + 8) = 850045863;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  if (qword_10045B050 != -1)
  {
    sub_100387900();
  }

  v2 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v4 = 134217984;
    v5 = a1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Creating sensor %p", &v4, 0xCu);
  }

  return a1;
}

void sub_1003387F8(uint64_t a1, void *a2)
{
  std::mutex::lock((a1 + 8));
  if (!*a2)
  {
    sub_100014A08(__p, "");
    sub_10017FD24(&buf, "Trying to add null observer");
    sub_1000E661C(__p, &buf, 1);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    sub_1000BC6D8(&v20);
  }

  v4 = sub_100338B1C(a1 + 72, a2);
  v5 = *(a1 + 80);
  if (v5 != v4)
  {
    if (qword_10045B050 != -1)
    {
      sub_100387914();
    }

    v6 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Attempt to add observer already present", &buf, 2u);
    }

    goto LABEL_26;
  }

  v7 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = *(a1 + 80);
    v9 = *(a1 + 88);
    if (v4 < v9)
    {
      *v4 = v7;
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v10 = v4 + 2;
      goto LABEL_24;
    }

LABEL_12:
    v11 = *(a1 + 72);
    v12 = (v4 - v11) >> 4;
    if ((v12 + 1) >> 60)
    {
      sub_10000FC84();
    }

    v13 = v9 - v11;
    v14 = v13 >> 3;
    if (v13 >> 3 <= (v12 + 1))
    {
      v14 = v12 + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      if (!(v15 >> 60))
      {
        operator new();
      }

      sub_10000D444();
    }

    v19 = 16 * v12;
    *(16 * v12) = v7;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = (v19 + 16);
    v16 = *(a1 + 72);
    v17 = *(a1 + 80) - v16;
    v18 = v19 - v17;
    memcpy((v19 - v17), v16, v17);
    *(a1 + 72) = v18;
    *(a1 + 80) = v10;
    *(a1 + 88) = 0;
    if (v16)
    {
      operator delete(v16);
    }

    goto LABEL_24;
  }

  v9 = *(a1 + 88);
  if (v9 <= v4)
  {
    goto LABEL_12;
  }

  *v5 = v7;
  v5[1] = 0;
  v10 = v5 + 2;
LABEL_24:
  *(a1 + 80) = v10;
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_26:
  std::mutex::unlock((a1 + 8));
}

void sub_100338A9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
    std::mutex::unlock((v22 + 8));
    _Unwind_Resume(a1);
  }

  std::mutex::unlock((v22 + 8));
  _Unwind_Resume(a1);
}

void *sub_100338B1C(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 == v3)
  {
    return *(a1 + 8);
  }

  while (1)
  {
    v6 = v2[1];
    if (!v6)
    {
      break;
    }

    v7 = std::__shared_weak_count::lock(v6);
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = *v2;
    if (*v2 == *a2)
    {
      goto LABEL_32;
    }

LABEL_10:
    if (!v8)
    {
      if (qword_10045B050 != -1)
      {
        sub_100387914();
      }

      v9 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        v10 = (v2 - *a1) >> 4;
        *buf = 134217984;
        v20 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "WARNING: Invalid weak reference in collection @ [%ld]. Removing", buf, 0xCu);
      }

      v11 = *(a1 + 8);
      if (v2 + 2 == v11)
      {
        v13 = v2;
      }

      else
      {
        v12 = v2;
        do
        {
          v15 = *(v12 + 1);
          v12[2] = 0;
          v12[3] = 0;
          v16 = v12[1];
          *v12 = v15;
          if (v16)
          {
            std::__shared_weak_count::__release_weak(v16);
          }

          v13 = v12 + 2;
          v14 = v12 + 4;
          v12 += 2;
        }

        while (v14 != v11);
        v11 = *(a1 + 8);
      }

      while (v11 != v13)
      {
        v17 = *(v11 - 1);
        if (v17)
        {
          std::__shared_weak_count::__release_weak(v17);
        }

        v11 -= 2;
      }

      *(a1 + 8) = v13;
      v2 -= 2;
      if (!v7)
      {
        goto LABEL_3;
      }

LABEL_29:
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }

      goto LABEL_3;
    }

    if (v7)
    {
      goto LABEL_29;
    }

LABEL_3:
    v2 += 2;
    if (v2 == v3)
    {
      return *(a1 + 8);
    }
  }

  v7 = 0;
LABEL_9:
  v8 = 0;
  if (*a2)
  {
    goto LABEL_10;
  }

LABEL_32:
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  return v2;
}

void sub_100338D90(uint64_t a1, void *a2)
{
  std::mutex::lock((a1 + 8));
  v4 = sub_100338B1C(a1 + 72, a2);
  v5 = v4;
  v6 = *(a1 + 80);
  if (v6 == v4)
  {
    if (qword_10045B050 == -1)
    {
      v12 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_100387900();
      v12 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }
    }

    v13[0] = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Attempt to remove observer not in list", v13, 2u);
    goto LABEL_16;
  }

  if (v4 + 2 != v6)
  {
    do
    {
      v9 = *(v5 + 1);
      v5[2] = 0;
      v5[3] = 0;
      v10 = v5[1];
      *v5 = v9;
      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }

      v7 = v5 + 2;
      v8 = v5 + 4;
      v5 += 2;
    }

    while (v8 != v6);
    v6 = *(a1 + 80);
    v5 = v7;
  }

  while (v6 != v5)
  {
    v11 = *(v6 - 1);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }

    v6 -= 2;
  }

  *(a1 + 80) = v5;
LABEL_16:
  std::mutex::unlock((a1 + 8));
}

uint64_t sub_100338EE4(uint64_t a1)
{
  std::mutex::lock((a1 + 8));
  v2 = *(a1 + 72);
  v3 = *(a1 + 80);
  if (v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v7 = v2[1];
      if (v7 && (v8 = std::__shared_weak_count::lock(v7)) != 0)
      {
        v6 = *v2 == 0;
        if (*v2)
        {
          ++v5;
        }

        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v9 = v8;
          (v8->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v9);
        }
      }

      else
      {
        v6 = 1;
      }

      v4 += v6;
      v2 += 2;
    }

    while (v2 != v3);
    v2 = *(a1 + 72);
    v3 = *(a1 + 80);
  }

  while (v3 != v2)
  {
    v10 = *(v3 - 1);
    if (v10)
    {
      std::__shared_weak_count::__release_weak(v10);
    }

    v3 -= 2;
  }

  *(a1 + 80) = v2;
  std::mutex::unlock((a1 + 8));
  return v5;
}

double sub_100338FF8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v3 = *(*(*a1 - 8) + 8);
  v4 = strlen((v3 & 0x7FFFFFFFFFFFFFFFLL));
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v10 = v4;
  if (v4)
  {
    memmove(&__dst, (v3 & 0x7FFFFFFFFFFFFFFFLL), v4);
  }

  *(&__dst + v5) = 0;
  sub_1000DF33C(&__dst, &v7);
  if (v10 < 0)
  {
    operator delete(__dst);
  }

  result = *&v7;
  *a2 = v7;
  *(a2 + 16) = v8;
  return result;
}

void sub_1003390FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100339118(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 8));
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  if (v3 != v4)
  {
    for (i = *(a1 + 72); i != v4; i += 2)
    {
      v15 = 0;
      v16 = 0;
      v6 = i[1];
      if (v6)
      {
        v7 = std::__shared_weak_count::lock(v6);
        v16 = v7;
        if (v7)
        {
          v8 = *i;
          v15 = v8;
          if (v8)
          {
            (*(*v8 + 16))(v8, a2);
LABEL_16:
            if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v7->__on_zero_shared)(v7);
              std::__shared_weak_count::__release_weak(v7);
            }

            goto LABEL_3;
          }
        }
      }

      else
      {
        v7 = 0;
      }

      if (qword_10045B050 != -1)
      {
        sub_100387914();
      }

      v9 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        goto LABEL_15;
      }

      v10 = *(a1 + 72);
      (*(*a1 + 40))(__p, a1);
      v11 = __p;
      if (v14 < 0)
      {
        v11 = __p[0];
      }

      *buf = 134218242;
      v18 = (v3 - v10) >> 4;
      v19 = 2080;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "WARNING: Reference to dead observer @ [%ld] in %s. Did you forget to remove it?", buf, 0x16u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
        if (v7)
        {
          goto LABEL_16;
        }
      }

      else
      {
LABEL_15:
        if (v7)
        {
          goto LABEL_16;
        }
      }

LABEL_3:
      v3 += 2;
    }
  }

  std::mutex::unlock((a1 + 8));
}

void sub_100339344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_10002BB1C(va);
  std::mutex::unlock((v16 + 8));
  _Unwind_Resume(a1);
}

void sub_100339394()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100339404()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t *sub_100339474()
{
  if ((atomic_load_explicit(&qword_10045D778, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D778))
  {
    return &qword_10045D8B8;
  }

  qword_10045D8B8 = sub_1000DD388();
  unk_10045D8C0 = v1;
  byte_10045D8C8 = 0;
  byte_10045D8D0 = 0;
  byte_10045D8D2 = 0;
  __cxa_guard_release(&qword_10045D778);
  return &qword_10045D8B8;
}

uint64_t *sub_100339504()
{
  if ((atomic_load_explicit(qword_10045D780, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(qword_10045D780))
  {
    return &qword_10045D7F8;
  }

  qword_10045D7F8 = sub_1000DD3A8();
  *&word_10045D800 = v1;
  byte_10045D808 = 0;
  byte_10045D80A = 0;
  byte_10045D80C = 0;
  __cxa_guard_release(qword_10045D780);
  return &qword_10045D7F8;
}

uint64_t *sub_100339598()
{
  if ((atomic_load_explicit(&qword_10045D7A0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D7A0))
  {
    return &qword_10045D810;
  }

  qword_10045D810 = sub_1000DD48C();
  *&word_10045D818 = v1;
  byte_10045D820 = 0;
  byte_10045D822 = 0;
  byte_10045D824 = 0;
  __cxa_guard_release(&qword_10045D7A0);
  return &qword_10045D810;
}

uint64_t *sub_10033962C()
{
  if ((atomic_load_explicit(&qword_10045D7A8, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D7A8))
  {
    return &qword_10045D828;
  }

  qword_10045D828 = sub_1000DD49C();
  *&word_10045D830 = v1;
  byte_10045D838 = 0;
  byte_10045D83A = 0;
  byte_10045D83C = 0;
  __cxa_guard_release(&qword_10045D7A8);
  return &qword_10045D828;
}

uint64_t *sub_1003396C0()
{
  if ((atomic_load_explicit(&qword_10045D7B0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D7B0))
  {
    return &qword_10045D840;
  }

  qword_10045D840 = sub_1000DD4AC();
  *&word_10045D848 = v1;
  byte_10045D850 = 0;
  byte_10045D852 = 0;
  byte_10045D854 = 0;
  __cxa_guard_release(&qword_10045D7B0);
  return &qword_10045D840;
}

uint64_t *sub_100339754()
{
  if ((atomic_load_explicit(&qword_10045D7B8, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D7B8))
  {
    return &qword_10045D858;
  }

  qword_10045D858 = sub_1000DD580();
  *&word_10045D860 = v1;
  byte_10045D868 = 0;
  byte_10045D86A = 0;
  byte_10045D86C = 0;
  __cxa_guard_release(&qword_10045D7B8);
  return &qword_10045D858;
}

uint64_t *sub_1003397E8()
{
  if ((atomic_load_explicit(&qword_10045D7C0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D7C0))
  {
    return &qword_10045D870;
  }

  qword_10045D870 = sub_1000DD5C0();
  *&word_10045D878 = v1;
  byte_10045D880 = 0;
  byte_10045D882 = 0;
  byte_10045D884 = 0;
  __cxa_guard_release(&qword_10045D7C0);
  return &qword_10045D870;
}

uint64_t *sub_10033987C()
{
  if ((atomic_load_explicit(&qword_10045D7C8, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D7C8))
  {
    return &qword_10045D938;
  }

  qword_10045D938 = sub_1000DD5D0();
  unk_10045D940 = v1;
  byte_10045D948 = 0;
  byte_10045D950 = 0;
  byte_10045D952 = 0;
  __cxa_guard_release(&qword_10045D7C8);
  return &qword_10045D938;
}

uint64_t *sub_10033990C()
{
  if ((atomic_load_explicit(&qword_10045D7D0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D7D0))
  {
    return &qword_10045D888;
  }

  qword_10045D888 = sub_1000DD5E0();
  *&word_10045D890 = v1;
  byte_10045D898 = 0;
  byte_10045D89A = 0;
  byte_10045D89C = 0;
  __cxa_guard_release(&qword_10045D7D0);
  return &qword_10045D888;
}

uint64_t *sub_1003399A0()
{
  if ((atomic_load_explicit(&qword_10045D7D8, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D7D8))
  {
    return &qword_10045D8A0;
  }

  qword_10045D8A0 = sub_1000DD630();
  *&word_10045D8A8 = v1;
  byte_10045D8B0 = 0;
  byte_10045D8B2 = 0;
  byte_10045D8B4 = 0;
  __cxa_guard_release(&qword_10045D7D8);
  return &qword_10045D8A0;
}

uint64_t *sub_100339A34()
{
  if ((atomic_load_explicit(&qword_10045D7E0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D7E0))
  {
    return &qword_10045D958;
  }

  qword_10045D958 = sub_1000DD6F8();
  unk_10045D960 = v1;
  byte_10045D968 = 0;
  byte_10045D970 = 0;
  byte_10045D972 = 0;
  __cxa_guard_release(&qword_10045D7E0);
  return &qword_10045D958;
}

uint64_t *sub_100339AC4()
{
  if ((atomic_load_explicit(&qword_10045D7E8, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D7E8))
  {
    return &qword_10045D978;
  }

  qword_10045D978 = sub_1000DD708();
  unk_10045D980 = v1;
  byte_10045D988 = 0;
  byte_10045D990 = 0;
  byte_10045D992 = 0;
  __cxa_guard_release(&qword_10045D7E8);
  return &qword_10045D978;
}

uint64_t *sub_100339B54()
{
  if ((atomic_load_explicit(&qword_10045D7F0, memory_order_acquire) & 1) != 0 || !__cxa_guard_acquire(&qword_10045D7F0))
  {
    return &qword_10045D998;
  }

  qword_10045D998 = sub_1000DD728();
  unk_10045D9A0 = v1;
  byte_10045D9A8 = 0;
  byte_10045D9B0 = 0;
  byte_10045D9B2 = 0;
  __cxa_guard_release(&qword_10045D7F0);
  return &qword_10045D998;
}

void sub_100339BE4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100339C54()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100339CC4()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void *sub_100339CEC(void *a1, int *a2)
{
  v2 = *a2;
  if (*a2 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        goto LABEL_22;
      }

      v3 = "additional sensors needed for pdr";
      v4 = 33;
    }

    else
    {
      v3 = "sensor list for localization (no pdr)";
      v4 = 37;
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        v3 = "additional sensors for extra tracing of localizers";
        v4 = 50;

        break;
      case 3:
        v3 = "sensor list for survey capture";
        v4 = 30;

        break;
      case 4:
        v3 = "invalid control group (num control groups)";
        v4 = 42;

        return sub_10003C2E4(a1, v3, v4);
      default:
LABEL_22:
        __cxa_allocate_exception(0x40uLL);
        sub_1000474A4(&v7, "unsupported control group");
        std::runtime_error::runtime_error(&v8, &v7);
        v8.__vftable = &off_1004338D0;
        sub_10010A984(&v6);
    }
  }

  return sub_10003C2E4(a1, v3, v4);
}

void sub_100339F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, std::runtime_error a20, std::runtime_error a21)
{
  sub_10003FDD8(&a21);
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a20);
  if (a19 < 0)
  {
    operator delete(a14);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t *sub_100339F88@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      LODWORD(v9) = 14;
      return sub_10033AC30(a2, &v9, &v9);
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_15;
      }

      LODWORD(v9) = 1;
      sub_10033AC30(a2, &v9, &v9);
      v9 = sub_1000DD5F0();
      v10[0] = v4;
      if (sub_100008F80(&v9, v10 + 1))
      {
        LODWORD(v9) = 11;
        sub_10033AC30(a2, &v9, &v9);
      }

      LODWORD(v9) = 7;
      sub_10033AC30(a2, &v9, &v9);
      LODWORD(v9) = 14;
      sub_10033AC30(a2, &v9, &v9);
      LODWORD(v9) = 17;
      sub_10033AC30(a2, &v9, &v9);
      LODWORD(v9) = 8;
      sub_10033AC30(a2, &v9, &v9);
      LODWORD(v9) = 16;
      return sub_10033AC30(a2, &v9, &v9);
    }
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        LODWORD(v9) = 8;
        sub_10033AC30(a2, &v9, &v9);
        LODWORD(v9) = 16;
        return sub_10033AC30(a2, &v9, &v9);
      }

LABEL_15:
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v7, "Unsupported control group to get thrift types for");
      std::runtime_error::runtime_error(&v8, &v7);
      v8.__vftable = &off_1004338D0;
      sub_10010A984(&v6);
    }

    LODWORD(v9) = 1;
    sub_10033AC30(a2, &v9, &v9);
    v9 = sub_1000DD5F0();
    v10[0] = v5;
    if (sub_100008F80(&v9, v10 + 1))
    {
      LODWORD(v9) = 11;
      sub_10033AC30(a2, &v9, &v9);
    }

    LODWORD(v9) = 17;
    return sub_10033AC30(a2, &v9, &v9);
  }
}

void sub_10033A250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, std::runtime_error a20, std::runtime_error a21)
{
  sub_10003FDD8(&a21);
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a20);
  if (a19 < 0)
  {
    operator delete(a14);
    if ((v23 & 1) == 0)
    {
LABEL_8:
      sub_1001F9AF8(v21);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v22);
  sub_1001F9AF8(v21);
  _Unwind_Resume(a1);
}

void sub_10033A3C4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10003BEA8(("PN13SensorManager12ControlGroupE" & 0x7FFFFFFFFFFFFFFFLL), &v13);
  if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4.__i_ = &v13;
  }

  else
  {
    v4.__i_ = v13.__r_.__value_.__r.__words[0];
  }

  std::string::insert(&v13, v4, 91);
  v14 = v13;
  memset(&v13, 0, sizeof(v13));
  v5 = std::string::append(&v14, "] = ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_10003BFA8(&v17);
  sub_100339CEC(&v17, (a1 + 8));
  std::stringbuf::str();
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  std::locale::~locale(v19);
  std::ostream::~ostream();
  std::ios::~ios();
  if ((v12 & 0x80u) == 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = v11[0];
  }

  if ((v12 & 0x80u) == 0)
  {
    v8 = v12;
  }

  else
  {
    v8 = v11[1];
  }

  v9 = std::string::append(&v15, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v16, 10);
  *a2 = v16;
  memset(&v16, 0, sizeof(v16));
  if (v12 < 0)
  {
    operator delete(v11[0]);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_14:
      if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }
  }

  else if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v15.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_20:
    operator delete(v13.__r_.__value_.__l.__data_);
    return;
  }

LABEL_19:
  operator delete(v14.__r_.__value_.__l.__data_);
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_20;
  }
}

void sub_10033A660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (a40 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a33 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a26 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_10033A9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10033AB84(va);
  _Unwind_Resume(a1);
}

void sub_10033A9DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10033AB84(va1);
  _Unwind_Resume(a1);
}

void sub_10033AAF8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_10038301C(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_10033AB3C(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_10033AB84(uint64_t result)
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

uint64_t *sub_10033AC30(void *a1, int *a2, _DWORD *a3)
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
        if (*(v8 + 4) == v3)
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

  if (*(v8 + 4) != v3)
  {
    goto LABEL_12;
  }

  return v8;
}

void sub_10033AF64()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10033AFD4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10033B320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10033B378(va);
  _Unwind_Resume(a1);
}

void sub_10033B334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10033B378(va);
  _Unwind_Resume(a1);
}

void sub_10033B348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  sub_10033B378(va);
  _Unwind_Resume(a1);
}

void sub_10033B364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10033B378(va);
  _Unwind_Resume(a1);
}

char **sub_10033B378(char **a1)
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
        v5 = *(v3 - 1);
        v3 -= 8;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_10033B3D8()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10033B400()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10033B470()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

double sub_10033B4E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
LABEL_75:
    sub_1000474A4(v59, "");
    sub_1000D36B0(v61, "Polygon bounds must never be zero!");
    sub_100382FC4(v61, v58, v59);
    sub_10003F5D0(v58);
  }

  v3 = 0.0;
  while (2)
  {
    v4 = *(v1 + 8);
    v5 = *(v1 + 16);
    v56 = (*(v1 + 40) - *(v1 + 32)) >> 3;
    v57 = v5 - v4;
    if (v57 != v56)
    {
      sub_1000474A4(v59, "");
      sub_1001D0C58(v61, "PolygonBounds objects must have xs.size() == ys.size()! ");
      sub_100181374(&v57, &__p[1]);
      sub_100211558(&v64, " ");
      sub_100181374(&v56, &v65);
      sub_1000E661C(v59, v61, 4);
      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_60:
          if ((SHIBYTE(v63) & 0x80000000) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_71;
        }
      }

      else if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_60;
      }

      operator delete(v64.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v63) & 0x80000000) == 0)
      {
LABEL_61:
        if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_72;
      }

LABEL_71:
      operator delete(__p[1]);
      if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
      {
LABEL_62:
        if ((v60 & 0x80000000) == 0)
        {
          goto LABEL_63;
        }

LABEL_73:
        operator delete(v59[0]);
LABEL_63:
        sub_10003F5D0(v58);
      }

LABEL_72:
      operator delete(v61[0]);
      if ((v60 & 0x80000000) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_73;
    }

    if (v5 == v4)
    {
      sub_1000474A4(v59, "");
      sub_100232548(v61, "All PolygonBounds must be non-empty!");
      sub_1000E661C(v59, v61, 1);
      if (SHIBYTE(__p[0]) < 0)
      {
        operator delete(v61[0]);
      }

      if (v60 < 0)
      {
        operator delete(v59[0]);
      }

      sub_10003F5D0(v58);
    }

    v6 = v5 - v4;
    if (v6 == 2)
    {
      v3 = v3 + hypot(*v4 - v4[1], **(v1 + 32) - *(*(v1 + 32) + 8)) * (*(v1 + 56) + *(v1 + 56)) + *(v1 + 56) * (*(v1 + 56) * 3.14159265);
      goto LABEL_4;
    }

    if (v6 == 1)
    {
      v3 = v3 + *(v1 + 56) * 3.14159265 * *(v1 + 56);
      goto LABEL_4;
    }

    *__p = 0u;
    v63 = 0u;
    *v61 = 0u;
    if (v5 != v4)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = v4[v8];
        v10 = *(*(v1 + 32) + 8 * v8);
        if (v7 < __p[0])
        {
          *v7 = v9;
          *(v7 + 1) = v10;
          v7 += 16;
        }

        else
        {
          v11 = v61[0];
          v12 = v7 - v61[0];
          v13 = (v7 - v61[0]) >> 4;
          v14 = v13 + 1;
          if ((v13 + 1) >> 60)
          {
            sub_10000FC84();
          }

          v15 = __p[0] - v61[0];
          if ((__p[0] - v61[0]) >> 3 > v14)
          {
            v14 = v15 >> 3;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF0)
          {
            v16 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            if (!(v16 >> 60))
            {
              operator new();
            }

            sub_10000D444();
          }

          v17 = v13;
          v18 = (16 * v13);
          *v18 = v9;
          *(v18 + 1) = v10;
          v7 = (16 * v13 + 16);
          v19 = &v18[-2 * v17];
          memcpy(v19, v11, v12);
          v61[0] = v19;
          v61[1] = v7;
          __p[0] = 0;
          if (v11)
          {
            operator delete(v11);
          }
        }

        v61[1] = v7;
        ++v8;
        v4 = *(v1 + 8);
      }

      while (v8 < (*(v1 + 16) - v4) >> 3);
    }

    sub_100027918(v61);
    v20 = v61[0];
    v21 = 0.0;
    if ((v61[1] - v61[0]) < 0x40)
    {
      goto LABEL_35;
    }

    v22 = (v61[0] + 16);
    if (v61[0] + 16 == v61[1])
    {
      goto LABEL_35;
    }

    v23 = v61[1] - v61[0] - 32;
    if (v23 > 0x2F)
    {
      v25 = (v23 >> 4) + 1;
      v26 = 16 * (v25 & 0x1FFFFFFFFFFFFFFCLL);
      v22 = (v22 + v26);
      v24 = (v61[0] + v26);
      v27 = (v61[0] + 32);
      v28 = v25 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v29 = v27 - 4;
        v66 = vld2q_f64(v29);
        v67 = vld2q_f64(v27);
        v30 = v27 - 2;
        v31 = v27 + 2;
        v69 = vld2q_f64(v30);
        v71 = vld2q_f64(v31);
        v66.val[0] = vmulq_f64(vaddq_f64(v66.val[0], v69.val[0]), vsubq_f64(v66.val[1], v69.val[1]));
        v66.val[1] = vmulq_f64(vaddq_f64(v67.val[0], v71.val[0]), vsubq_f64(v67.val[1], v71.val[1]));
        v21 = v21 + v66.val[0].f64[0] + v66.val[0].f64[1] + v66.val[1].f64[0] + v66.val[1].f64[1];
        v27 += 8;
        v28 -= 4;
      }

      while (v28);
      if (v25 == (v25 & 0x1FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_34;
      }
    }

    else
    {
      v24 = v61[0];
    }

    do
    {
      v32 = *v22;
      v22 += 2;
      v21 = v21 + (*v24 + v32) * (v24[1] - v24[3]);
      v24 += 2;
    }

    while (v22 != v61[1]);
LABEL_34:
    v21 = v21 * 0.5;
LABEL_35:
    v34 = __p[1];
    v33 = v63;
    if (__p[1] == v63)
    {
      v3 = v3 + v21 + 0.0;
      v54 = __p[1];
      if (__p[1])
      {
        goto LABEL_55;
      }

      goto LABEL_56;
    }

    v35 = 0.0;
    v36 = __p[1];
    do
    {
      v39 = *v36;
      v38 = v36[1];
      v40 = v38 - *v36;
      v37 = 0.0;
      if (v40 >= 0x40)
      {
        v41 = v39 + 2;
        if (v39 + 2 != v38)
        {
          v42 = v40 - 32;
          if (v42 > 0x2F)
          {
            v44 = (v42 >> 4) + 1;
            v45 = 2 * (v44 & 0x1FFFFFFFFFFFFFFCLL);
            v41 = (v41 + v45 * 8);
            v43 = &v39[v45];
            v46 = v39 + 4;
            v47 = v44 & 0x1FFFFFFFFFFFFFFCLL;
            do
            {
              v48 = v46 - 4;
              v68 = vld2q_f64(v48);
              v70 = vld2q_f64(v46);
              v49 = v46 - 2;
              v50 = v46 + 2;
              v72 = vld2q_f64(v49);
              v73 = vld2q_f64(v50);
              v68.val[0] = vmulq_f64(vaddq_f64(v68.val[0], v72.val[0]), vsubq_f64(v68.val[1], v72.val[1]));
              v68.val[1] = vmulq_f64(vaddq_f64(v70.val[0], v73.val[0]), vsubq_f64(v70.val[1], v73.val[1]));
              v37 = v37 + v68.val[0].f64[0] + v68.val[0].f64[1] + v68.val[1].f64[0] + v68.val[1].f64[1];
              v46 += 8;
              v47 -= 4;
            }

            while (v47);
            if (v44 == (v44 & 0x1FFFFFFFFFFFFFFCLL))
            {
              goto LABEL_37;
            }
          }

          else
          {
            v43 = *v36;
          }

          do
          {
            v51 = *v41;
            v41 += 2;
            v37 = v37 + (*v43 + v51) * (v43[1] - v43[3]);
            v43 += 2;
          }

          while (v41 != v38);
LABEL_37:
          v37 = v37 * 0.5;
        }
      }

      v35 = v35 + v37;
      v36 += 3;
    }

    while (v36 != v63);
    v3 = v3 + v21 + v35;
    if (!__p[1])
    {
      goto LABEL_56;
    }

    do
    {
      v53 = (v33 - 3);
      v52 = *(v33 - 3);
      if (v52)
      {
        *(v33 - 2) = v52;
        operator delete(v52);
      }

      v33 = v53;
    }

    while (v53 != v34);
    v54 = __p[1];
LABEL_55:
    *&v63 = v34;
    operator delete(v54);
    v20 = v61[0];
LABEL_56:
    if (v20)
    {
      v61[1] = v20;
      operator delete(v20);
    }

LABEL_4:
    v1 += 72;
    if (v1 != v2)
    {
      continue;
    }

    break;
  }

  if (v3 <= 0.0)
  {
    goto LABEL_75;
  }

  return v3;
}

void sub_10033BB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a20 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10033BC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_10033BC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_10033BC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_10033BC44(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v3 = a1[1];
  if (a1[2] != v3)
  {
    v5 = 0;
    do
    {
      v6 = *(a1[4] + 8 * v5);
      *&v7 = *(v3 + 8 * v5);
      *(&v7 + 1) = v6;
      sub_1000277F8(a2, &v7);
      ++v5;
      v3 = a1[1];
    }

    while (v5 < (a1[2] - v3) >> 3);
  }

  sub_100027918(a2);
}

void sub_10033BCF8(void *a1@<X0>, unint64_t *a2@<X8>)
{
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  v4 = a1[2];
  if (a1[3] != v4)
  {
    v5 = 0;
    do
    {
      v6 = *(a1[5] + 8 * v5);
      *&v24 = *(v4 + 8 * v5);
      *(&v24 + 1) = v6;
      sub_1000277F8(a2, &v24);
      ++v5;
      v4 = a1[2];
    }

    while (v5 < (a1[3] - v4) >> 3);
  }

  sub_10033D804(a2 + 3, 0x8E38E38E38E38E39 * ((a1[11] - a1[10]) >> 3));
  v7 = a1[10];
  for (i = a1[11]; v7 != i; v7 += 9)
  {
    v8 = sub_10033D93C(a2 + 3, a2[4]);
    v9 = v7[1];
    if (v7[2] != v9)
    {
      v10 = v8;
      v11 = 0;
      v12 = *(v8 + 1);
      do
      {
        v13 = *(v9 + 8 * v11);
        v14 = *(v7[4] + 8 * v11);
        v15 = *(v10 + 2);
        if (v12 < v15)
        {
          *v12 = v13;
          v12[1] = v14;
          v12 += 2;
        }

        else
        {
          v16 = *v10;
          v17 = v12 - *v10;
          v18 = v17 >> 4;
          v19 = (v17 >> 4) + 1;
          if (v19 >> 60)
          {
            sub_10000FC84();
          }

          v20 = v15 - v16;
          if (v20 >> 3 > v19)
          {
            v19 = v20 >> 3;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF0)
          {
            v21 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            if (!(v21 >> 60))
            {
              operator new();
            }

            sub_10000D444();
          }

          v22 = (16 * v18);
          *v22 = v13;
          v22[1] = v14;
          v12 = (16 * v18 + 16);
          memcpy(0, v16, v17);
          *v10 = 0;
          *(v10 + 1) = v12;
          *(v10 + 2) = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        *(v10 + 1) = v12;
        ++v11;
        v9 = v7[1];
      }

      while (v11 < (v7[2] - v9) >> 3);
    }
  }

  sub_100027918(a2);
}

double sub_10033BF80(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v46 = *(a2 + 8);
  v4 = *(a1 + 1800);
  v5 = *(a1 + 1808);
  if (v4 == v5)
  {
    return NAN;
  }

  v6 = INFINITY;
  v7 = NAN;
  do
  {
    *__p = 0u;
    v45 = 0u;
    *v43 = 0u;
    v14 = *(v4 + 8);
    if (*(v4 + 16) != v14)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = *(v14 + 8 * v16);
        v18 = *(*(v4 + 32) + 8 * v16);
        if (v15 < __p[0])
        {
          *v15 = v17;
          *(v15 + 1) = v18;
          v15 += 16;
        }

        else
        {
          v19 = v43[0];
          v20 = v15 - v43[0];
          v21 = (v15 - v43[0]) >> 4;
          v22 = v21 + 1;
          if ((v21 + 1) >> 60)
          {
            sub_10000FC84();
          }

          v23 = __p[0] - v43[0];
          if ((__p[0] - v43[0]) >> 3 > v22)
          {
            v22 = v23 >> 3;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFF0)
          {
            v24 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            if (!(v24 >> 60))
            {
              operator new();
            }

            sub_10000D444();
          }

          v25 = v21;
          v26 = (16 * v21);
          *v26 = v17;
          v26[1] = v18;
          v15 = (16 * v21 + 16);
          v27 = &v26[-2 * v25];
          memcpy(v27, v19, v20);
          v43[0] = v27;
          v43[1] = v15;
          __p[0] = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        v43[1] = v15;
        ++v16;
        v14 = *(v4 + 8);
      }

      while (v16 < (*(v4 + 16) - v14) >> 3);
    }

    sub_100027918(v43);
    if (v43[0] == v43[1])
    {
      v35 = __p[1];
      if (__p[1] == v45)
      {
LABEL_46:
        v49 = &off_10043FEC8;
        v47.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_wcugD8w_6gRz7HY0Av3w2R9xnn4s-x0-9me1Q/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/geometry/algorithms/detail/throw_on_empty_input.hpp";
        v47.i64[1] = "void boost::geometry::detail::throw_on_empty_input(const Geometry &) [Geometry = boost::geometry::model::polygon<boost::geometry::model::d2::point_xy<double>>]";
        v48 = 54;
        sub_10016B3C8(&v49, &v47);
      }

      while (*v35 == v35[1])
      {
        v35 += 3;
        if (v35 == v45)
        {
          goto LABEL_46;
        }
      }
    }

    v28 = sub_10016BBBC(&v46, v43, &v47);
    v29 = __p[1];
    if (__p[1])
    {
      v30 = v45;
      v31 = __p[1];
      if (v45 != __p[1])
      {
        v32 = v45;
        do
        {
          v34 = *(v32 - 3);
          v32 -= 24;
          v33 = v34;
          if (v34)
          {
            *(v30 - 2) = v33;
            operator delete(v33);
          }

          v30 = v32;
        }

        while (v32 != v29);
        v31 = __p[1];
      }

      *&v45 = v29;
      operator delete(v31);
    }

    if (v43[0])
    {
      v43[1] = v43[0];
      operator delete(v43[0]);
    }

    v8 = fabs(v28);
    v9 = *(v4 + 56);
    if (!a3)
    {
      v9 = 0.0;
    }

    v10 = -(v8 - v9);
    if (v28 >= 0.0)
    {
      v10 = v8 - v9;
    }

    v11 = v8 < v9;
    if (v8 >= v9)
    {
      v12 = v8 - v9;
    }

    else
    {
      v12 = 0.0;
    }

    if (v11)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = v10;
    }

    if (v12 < v6)
    {
      v6 = v12;
      v7 = v13;
    }

    v4 += 72;
  }

  while (v4 != v5);
  if (v7 <= 0.0 && (a4 & 1) != 0)
  {
    sub_10012D378(v42, a2);
    sub_10033C340(a1, v42, a3);
    v7 = v36;
    nullsub_75();
  }

  return v7;
}

void sub_10033C2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_10033C2E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_10033C2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_10033C310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::exception::~exception((v16 - 144));
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_10033C32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_10033C340(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 1832);
  v68 = *(a1 + 1840);
  if (v3 != v68)
  {
    v4 = *(a2 + 8);
    v5 = *(a2 + 16);
    v6 = fabs(v4);
    v7 = fabs(v5);
    do
    {
      v8 = v3;
      v9 = *(v3 + 80);
      v69 = v8;
      v10 = *(v8 + 88);
      v70 = v10;
      while (v9 != v10)
      {
        *__p = 0u;
        v73 = 0u;
        *v71 = 0u;
        v11 = v9[1];
        if (v9[2] != v11)
        {
          v12 = 0;
          v13 = 0;
          do
          {
            v14 = *(v11 + 8 * v13);
            v15 = *(v9[4] + 8 * v13);
            if (v12 < __p[0])
            {
              *v12 = v14;
              *(v12 + 1) = v15;
              v12 += 16;
            }

            else
            {
              v16 = v71[0];
              v17 = v12 - v71[0];
              v18 = (v12 - v71[0]) >> 4;
              v19 = v18 + 1;
              if ((v18 + 1) >> 60)
              {
                sub_10000FC84();
              }

              v20 = __p[0] - v71[0];
              if ((__p[0] - v71[0]) >> 3 > v19)
              {
                v19 = v20 >> 3;
              }

              if (v20 >= 0x7FFFFFFFFFFFFFF0)
              {
                v21 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v21 = v19;
              }

              if (v21)
              {
                if (!(v21 >> 60))
                {
                  operator new();
                }

                sub_10000D444();
              }

              v22 = (16 * v18);
              *v22 = v14;
              v22[1] = v15;
              v12 = (16 * v18 + 16);
              memcpy(0, v16, v17);
              v71[0] = 0;
              v71[1] = v12;
              __p[0] = 0;
              if (v16)
              {
                operator delete(v16);
              }
            }

            v71[1] = v12;
            ++v13;
            v11 = v9[1];
          }

          while (v13 < (v9[2] - v11) >> 3);
        }

        sub_100027918(v71);
        v23 = v71[1];
        v24 = (v71[0] + 16);
        if ((v71[1] - v71[0]) >= 0x40 && v24 != v71[1])
        {
          v32 = 0;
          while (1)
          {
            v35 = v24 - 2;
            v36 = *(v24 - 2);
            if (v36 == v4)
            {
              v37 = 1;
            }

            else
            {
              v37 = 0;
              if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                v38 = fabs(v36);
                v39 = vabdd_f64(v36, v4);
                if (v38 < v6)
                {
                  v38 = v6;
                }

                if (v38 < 1.0)
                {
                  v38 = 1.0;
                }

                v37 = v39 <= v38 * 2.22044605e-16;
              }
            }

            v40 = *v24;
            if (*v24 == v4)
            {
              break;
            }

            if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              v46 = fabs(v40);
              v47 = vabdd_f64(v40, v4);
              if (v46 < v6)
              {
                v46 = v6;
              }

              if (v46 < 1.0)
              {
                v46 = 1.0;
              }

              v41 = v47 <= v46 * 2.22044605e-16;
              if (v37 && v41)
              {
LABEL_56:
                v42 = *(v24 - 1);
                v43 = v24[1];
                if (v42 <= v5 && v43 >= v5)
                {
                  goto LABEL_27;
                }

                if (v42 >= v5 && v43 <= v5)
                {
                  goto LABEL_27;
                }

                goto LABEL_44;
              }

LABEL_73:
              if (v37)
              {
                goto LABEL_81;
              }

              if (v41)
              {
                if (v36 <= v4)
                {
                  v48 = 1;
                }

                else
                {
                  v48 = -1;
                }

                v49 = v24[1];
                if (v5 == v49)
                {
                  goto LABEL_27;
                }

LABEL_87:
                if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v49 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                {
                  v50 = fabs(v49);
                  v51 = vabdd_f64(v5, v49);
                  if (v7 >= v50)
                  {
                    v50 = v7;
                  }

                  if (v50 < 1.0)
                  {
                    v50 = 1.0;
                  }

                  if (v51 <= v50 * 2.22044605e-16)
                  {
                    goto LABEL_27;
                  }
                }

                if (v5 >= v49)
                {
                  v33 = v48;
                }

                else
                {
                  v33 = -v48;
                }

                goto LABEL_40;
              }

              goto LABEL_95;
            }

            if (v37)
            {
LABEL_81:
              if (v40 <= v4)
              {
                v48 = -1;
              }

              else
              {
                v48 = 1;
              }

              if (!v37)
              {
                v35 = v24;
              }

              v49 = v35[1];
              if (v5 == v49)
              {
                goto LABEL_27;
              }

              goto LABEL_87;
            }

LABEL_95:
            if (v36 >= v4 || v40 <= v4)
            {
              if (v36 <= v4 || v40 >= v4)
              {
                goto LABEL_44;
              }

              v48 = -2;
            }

            else
            {
              v48 = 2;
            }

            v78 = *(v24 - 2);
            v79 = *(v24 - 1);
            v54 = v24[1];
            v77[0] = *v24;
            v77[1] = v54;
            v76[0] = v4;
            v76[1] = v5;
            v55 = v36 - v4;
            *v74.i64 = v36 - v4;
            v56 = v54 - v5;
            v85[0] = v54 - v5;
            v57 = v79 - v5;
            v84[0] = v79 - v5;
            v58 = v77[0] - v4;
            v83[0] = v77[0] - v4;
            v59 = vabdd_f64(v36, v4);
            v60 = vabdd_f64(v54, v5);
            v61 = vabdd_f64(v79, v5);
            v62 = vabdd_f64(v77[0], v4);
            if (v59 < v60)
            {
              v59 = v60;
            }

            if (v59 < v61)
            {
              v59 = v61;
            }

            if (v59 < v62)
            {
              v59 = v62;
            }

            if (v59 >= 1.0)
            {
              v63 = v59;
            }

            else
            {
              v63 = 1.0;
            }

            v64 = v55 * v56;
            v82[0] = v55 * v56;
            v65 = v57 * v58;
            v66 = v55 * v56 - v57 * v58;
            v80 = fabs(v57 * v58) + fabs(v55 * v56);
            v81[0] = v57 * v58;
            if (vabdd_f64(v55 * v56, v57 * v58) < v80 * 3.33066907e-16 && (v64 <= 0.0 || v65 > 0.0) && (v64 >= 0.0 || v65 < 0.0))
            {
              v66 = sub_10016C58C(&v78, v77, v76, v74.i64, v85, v84, v83, v82, v81, &v80);
            }

            if (v66 == 0.0)
            {
              goto LABEL_27;
            }

            if ((*&v66 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
            {
              v67 = fabs(v66);
              if (v66 > 0.0)
              {
                v33 = 1;
              }

              else
              {
                v33 = -1;
              }

              if (v67 <= v63 * 2.22044605e-16)
              {
                goto LABEL_27;
              }
            }

            else if (v66 > 0.0)
            {
              v33 = 1;
            }

            else
            {
              v33 = -1;
            }

LABEL_40:
            if (v33 * v48 <= 0)
            {
              v34 = 0;
            }

            else
            {
              v34 = v48;
            }

            v32 += v34;
LABEL_44:
            v24 += 2;
            if (v24 == v23)
            {
              if (v32)
              {
                if (v71[1] != v71[0])
                {
                  if (((v71[1] - v71[0]) & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

                  sub_10000FC84();
                }

                *&v85[0] = &off_10043FEC8;
                v74.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_wcugD8w_6gRz7HY0Av3w2R9xnn4s-x0-9me1Q/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/geometry/algorithms/detail/throw_on_empty_input.hpp";
                v74.i64[1] = "void boost::geometry::detail::throw_on_empty_input(const Geometry &) [Geometry = boost::geometry::model::linestring<boost::geometry::model::d2::point_xy<double>>]";
                v75 = 54;
                sub_10016B3C8(v85, &v74);
              }

              goto LABEL_27;
            }
          }

          v41 = 1;
          if (v37)
          {
            goto LABEL_56;
          }

          goto LABEL_73;
        }

LABEL_27:
        v26 = __p[1];
        if (__p[1])
        {
          v27 = v73;
          v28 = __p[1];
          if (v73 != __p[1])
          {
            v29 = v73;
            do
            {
              v31 = *(v29 - 3);
              v29 -= 24;
              v30 = v31;
              if (v31)
              {
                *(v27 - 2) = v30;
                operator delete(v30);
              }

              v27 = v29;
            }

            while (v29 != v26);
            v28 = __p[1];
          }

          *&v73 = v26;
          operator delete(v28);
        }

        if (v71[0])
        {
          v71[1] = v71[0];
          operator delete(v71[0]);
        }

        v9 += 9;
        v10 = v70;
      }

      v3 = v69 + 112;
    }

    while (v69 + 112 != v68);
  }
}

void sub_10033CC48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

double sub_10033CC98(double *a1, double **a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v3 == v4)
  {
    v22 = &off_10043FEC8;
    v18.i64[0] = "/AppleInternal/Library/BuildRoots/4~B_wcugD8w_6gRz7HY0Av3w2R9xnn4s-x0-9me1Q/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS26.1.Internal.sdk/usr/local/include/boost/geometry/algorithms/detail/throw_on_empty_input.hpp";
    v18.i64[1] = "void boost::geometry::detail::throw_on_empty_input(const Geometry &) [Geometry = boost::geometry::model::linestring<boost::geometry::model::d2::point_xy<double>>]";
    v19 = 54;
    sub_10016B3C8(&v22, &v18);
  }

  v21 = 0;
  v18.i64[0] = 0;
  v22 = 0;
  sub_10016CB60(a1, v3, v4, &v20, &v18, &v22, &v21);
  v6 = *(v22 + 1);
  v7 = *a1;
  v8 = a1[1];
  v9 = *(v18.i64[0] + 8);
  v10 = *v22 - *v18.i64[0];
  v11 = v6 - v9;
  v12 = *a1 - *v18.i64[0];
  v13 = (v8 - v9) * (v6 - v9) + v12 * v10;
  if (v13 <= 0.0)
  {
    return sqrt(v12 * v12 + 0.0 + (v8 - v9) * (v8 - v9));
  }

  v14 = v11 * v11 + v10 * v10;
  if (v14 <= v13)
  {
    v15 = v8 - v6;
    v16 = v7 - *v22;
  }

  else
  {
    v15 = v8 - (v9 + v11 * (v13 / v14));
    v16 = v7 - (*v18.i64[0] + v10 * (v13 / v14));
  }

  return sqrt(v16 * v16 + 0.0 + v15 * v15);
}

double sub_10033CDF4(void *a1, uint64_t a2, int a3, int a4, int a5, double a6)
{
  v44 = *(a2 + 8);
  v7 = a1[225];
  v8 = a1[226];
  if (v7 == v8)
  {
    return NAN;
  }

  v9 = INFINITY;
  do
  {
    *__p = 0u;
    v47 = 0u;
    *v45 = 0u;
    v10 = *(v7 + 8);
    if (*(v7 + 16) != v10)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v13 = *(v10 + 8 * v12);
        v14 = *(*(v7 + 32) + 8 * v12);
        if (v11 < __p[0])
        {
          *v11 = v13;
          *(v11 + 1) = v14;
          v11 += 16;
        }

        else
        {
          v15 = v45[0];
          v16 = v11 - v45[0];
          v17 = (v11 - v45[0]) >> 4;
          v18 = v17 + 1;
          if ((v17 + 1) >> 60)
          {
            sub_10000FC84();
          }

          v19 = __p[0] - v45[0];
          if ((__p[0] - v45[0]) >> 3 > v18)
          {
            v18 = v19 >> 3;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFF0)
          {
            v20 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            if (!(v20 >> 60))
            {
              operator new();
            }

            sub_10000D444();
          }

          v21 = v17;
          v22 = (16 * v17);
          *v22 = v13;
          v22[1] = v14;
          v11 = (16 * v17 + 16);
          v23 = &v22[-2 * v21];
          memcpy(v23, v15, v16);
          v45[0] = v23;
          v45[1] = v11;
          __p[0] = 0;
          if (v15)
          {
            operator delete(v15);
          }
        }

        v45[1] = v11;
        ++v12;
        v10 = *(v7 + 8);
      }

      while (v12 < (*(v7 + 16) - v10) >> 3);
    }

    sub_100027918(v45);
    v24 = *(v7 + 56);
    if (a3)
    {
      v24 = 0.0;
    }

    v25 = sub_10033D150(v45, &v44, a4, v24, a6);
    if (v25 < v9)
    {
      v9 = v25;
    }

    v26 = __p[1];
    if (__p[1])
    {
      v27 = v47;
      v28 = __p[1];
      if (v47 != __p[1])
      {
        v29 = v47;
        do
        {
          v31 = *(v29 - 3);
          v29 -= 24;
          v30 = v31;
          if (v31)
          {
            *(v27 - 2) = v30;
            operator delete(v30);
          }

          v27 = v29;
        }

        while (v29 != v26);
        v28 = __p[1];
      }

      *&v47 = v26;
      operator delete(v28);
    }

    if (v45[0])
    {
      v45[1] = v45[0];
      operator delete(v45[0]);
    }

    v7 += 72;
  }

  while (v7 != v8);
  if (a5)
  {
    if (v9 < 0.0)
    {
      v32 = a1[229];
      v33 = a1[230];
      if (v32 != v33)
      {
        while (1)
        {
          sub_10011A8C8(v45, v32);
          v34 = v48;
          v35 = v49;
          sub_10011A514(v45);
          if (v34 != v35)
          {
            break;
          }

          v32 += 112;
          if (v32 == v33)
          {
            return v9;
          }
        }

        sub_10012D378(v43, a2);
        v37 = sub_10033D634(a1, v43, a3, a4, a6);
        nullsub_75();
        if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v37 >= v9)
        {
          return v37;
        }
      }
    }
  }

  return v9;
}

void sub_10033D100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_10033D114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_10033D128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

void sub_10033D13C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  sub_1002725B0(va);
  _Unwind_Resume(a1);
}

double sub_10033D150(double **a1, double *a2, int a3, double a4, double a5)
{
  v11 = *a1;
  v10 = a1[1];
  v58 = 0;
  v59 = 0;
  *&__p = 0.0;
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_117;
  }

  v12 = sub_10033CC98(a2, &__p);
  v56 = a3;
  if (*&__p != 0.0)
  {
    v58 = __p;
    operator delete(__p);
  }

  v14 = *a1;
  v13 = a1[1];
  if ((v13 - *a1) < 0x40)
  {
    goto LABEL_114;
  }

  LODWORD(__p) = 0;
  BYTE4(__p) = 0;
  if (v14 + 2 == v13)
  {
    goto LABEL_114;
  }

  do
  {
    if (!sub_10016C110(a2, v14, v14 + 2, &__p))
    {
      break;
    }

    v15 = v14 + 4;
    v14 += 2;
  }

  while (v15 != v13);
  if ((BYTE4(__p) & 1) != 0 || !__p)
  {
    goto LABEL_114;
  }

  v16 = a1[3];
  v17 = a1[4];
  if (v16 == v17)
  {
    v18 = v12;
LABEL_113:
    v12 = -v18;
    goto LABEL_114;
  }

  v18 = v12;
  while (1)
  {
    v20 = *v16;
    v19 = *(v16 + 1);
    *&__p = 0.0;
    v58 = 0;
    v59 = 0;
    if (v19 != v20)
    {
      if (((v19 - v20) & 0x8000000000000000) == 0)
      {
        operator new();
      }

LABEL_117:
      sub_10000FC84();
    }

    v12 = sub_10033CC98(a2, &__p);
    if (*&__p != 0.0)
    {
      v58 = __p;
      operator delete(__p);
    }

    v22 = *(v16 + 1);
    v23 = (*v16 + 16);
    if (v22 - *v16 >= 0x40 && v23 != v22)
    {
      break;
    }

LABEL_15:
    if (v12 < v18)
    {
      v18 = v12;
    }

    v16 += 3;
    if (v16 == v17)
    {
      goto LABEL_113;
    }
  }

  v25 = 0;
  do
  {
    v28 = *(v23 - 2);
    v21.n128_f64[0] = *a2;
    if (v28 == *a2)
    {
      v29 = 1;
      v30 = *v23;
      if (*v23 == v21.n128_f64[0])
      {
        goto LABEL_38;
      }
    }

    else if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v21.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v38 = fabs(v28);
      v39 = fabs(v21.n128_f64[0]);
      v40 = vabdd_f64(v28, v21.n128_f64[0]);
      if (v38 < v39)
      {
        v38 = v39;
      }

      if (v38 < 1.0)
      {
        v38 = 1.0;
      }

      v29 = v40 <= v38 * 2.22044605e-16;
      v30 = *v23;
      if (*v23 == v21.n128_f64[0])
      {
LABEL_38:
        v31 = 1;
        if (v29)
        {
          goto LABEL_39;
        }

LABEL_69:
        if (v29)
        {
LABEL_70:
          if (v30 <= v21.n128_f64[0])
          {
            v44 = -1;
          }

          else
          {
            v44 = 1;
          }

          if (v29)
          {
            v45 = v23 - 2;
          }

          else
          {
            v45 = v23;
          }

          v46 = a2[1];
          v47 = v45[1];
          if (v46 == v47)
          {
            goto LABEL_15;
          }

LABEL_83:
          if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&v47 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v48 = fabs(v46);
            v49 = fabs(v47);
            v50 = vabdd_f64(v46, v47);
            if (v48 < v49)
            {
              v48 = v49;
            }

            if (v48 < 1.0)
            {
              v48 = 1.0;
            }

            if (v50 <= v48 * 2.22044605e-16)
            {
              goto LABEL_15;
            }
          }

          if (v46 >= v47)
          {
            v26 = v44;
          }

          else
          {
            v26 = -v44;
          }

          goto LABEL_31;
        }

        if (v31)
        {
          if (v28 <= v21.n128_f64[0])
          {
            v44 = 1;
          }

          else
          {
            v44 = -1;
          }

          v46 = a2[1];
          v47 = v23[1];
          if (v46 == v47)
          {
            goto LABEL_15;
          }

          goto LABEL_83;
        }

        goto LABEL_91;
      }
    }

    else
    {
      v29 = 0;
      v30 = *v23;
      if (*v23 == v21.n128_f64[0])
      {
        goto LABEL_38;
      }
    }

    if ((*&v30 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v21.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v41 = fabs(v30);
      v42 = fabs(v21.n128_f64[0]);
      v43 = vabdd_f64(v30, v21.n128_f64[0]);
      if (v41 < v42)
      {
        v41 = v42;
      }

      if (v41 < 1.0)
      {
        v41 = 1.0;
      }

      v31 = v43 <= v41 * 2.22044605e-16;
      if (v29 && v31)
      {
LABEL_39:
        v32 = a2[1];
        v33 = *(v23 - 1);
        v34 = v23[1];
        if (v33 <= v32 && v34 >= v32)
        {
          goto LABEL_15;
        }

        if (v33 >= v32 && v34 <= v32)
        {
          goto LABEL_15;
        }

        goto LABEL_35;
      }

      goto LABEL_69;
    }

    if (v29)
    {
      goto LABEL_70;
    }

LABEL_91:
    if (v28 < v21.n128_f64[0] && v30 > v21.n128_f64[0])
    {
      v44 = 2;
LABEL_102:
      *&__p = 1.0;
      v21.n128_f64[0] = sub_10016C468(v23 - 2, v23, a2, &__p, v21);
      if (v21.n128_f64[0] == 0.0)
      {
        goto LABEL_15;
      }

      if ((v21.n128_u64[0] & 0x7FFFFFFFFFFFFFFFLL) < 0x7FF0000000000000)
      {
        v53 = fabs(v21.n128_f64[0]);
        if (v21.n128_f64[0] > 0.0)
        {
          v26 = 1;
        }

        else
        {
          v26 = -1;
        }

        if (v53 <= *&__p * 2.22044605e-16)
        {
          goto LABEL_15;
        }
      }

      else if (v21.n128_f64[0] > 0.0)
      {
        v26 = 1;
      }

      else
      {
        v26 = -1;
      }

LABEL_31:
      if (v44 * v26 <= 0)
      {
        v27 = 0;
      }

      else
      {
        v27 = v44;
      }

      v25 += v27;
      goto LABEL_35;
    }

    if (v28 > v21.n128_f64[0] && v30 < v21.n128_f64[0])
    {
      v44 = -2;
      goto LABEL_102;
    }

LABEL_35:
    v23 += 2;
  }

  while (v23 != v22);
  if (!v25)
  {
    goto LABEL_15;
  }

LABEL_114:
  v54 = -1.0;
  if (v56 == 1)
  {
    v54 = 1.0;
  }

  return v12 + v54 * (a4 + a5);
}

void sub_10033D614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_10033D634(uint64_t a1, uint64_t a2, int a3, int a4, double a5)
{
  v29 = *(a2 + 8);
  v6 = *(a1 + 1832);
  v7 = *(a1 + 1840);
  if (v6 == v7)
  {
    return NAN;
  }

  v9 = INFINITY;
  if (a3)
  {
    do
    {
      sub_10033BCF8(v6, &v25);
      v10 = sub_10033D150(&v25, &v29, a4, 0.0, a5);
      if (v10 < v9)
      {
        v9 = v10;
      }

      v11 = __p;
      if (__p)
      {
        v12 = v28;
        v13 = __p;
        if (v28 != __p)
        {
          v14 = v28;
          do
          {
            v16 = *(v14 - 3);
            v14 -= 24;
            v15 = v16;
            if (v16)
            {
              *(v12 - 2) = v15;
              operator delete(v15);
            }

            v12 = v14;
          }

          while (v14 != v11);
          v13 = __p;
        }

        v28 = v11;
        operator delete(v13);
      }

      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }

      v6 += 112;
    }

    while (v6 != v7);
  }

  else
  {
    do
    {
      sub_10033BCF8(v6, &v25);
      v17 = sub_10033D150(&v25, &v29, a4, *(v6 + 64), a5);
      if (v17 < v9)
      {
        v9 = v17;
      }

      v18 = __p;
      if (__p)
      {
        v19 = v28;
        v20 = __p;
        if (v28 != __p)
        {
          v21 = v28;
          do
          {
            v23 = *(v21 - 3);
            v21 -= 24;
            v22 = v23;
            if (v23)
            {
              *(v19 - 2) = v22;
              operator delete(v22);
            }

            v19 = v21;
          }

          while (v21 != v18);
          v20 = __p;
        }

        v28 = v18;
        operator delete(v20);
      }

      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }

      v6 += 112;
    }

    while (v6 != v7);
  }

  return v9;
}

void sub_10033D804(void ***a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_10000FC84();
  }
}

char *sub_10033D93C(uint64_t *a1, char *a2)
{
  v2 = a2;
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v13 = *a1;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3) + 1;
    if (v14 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_10000FC84();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v13) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 >= 0x555555555555555)
    {
      v16 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v16 = v14;
    }

    v27 = a1;
    if (v16)
    {
      if (v16 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_10000D444();
    }

    __p = 0;
    v24 = 8 * (&a2[-v13] >> 3);
    v25 = v24;
    v26 = 0;
    sub_10033DBFC(&__p);
    v2 = sub_10033DDF0(a1, &__p, v2);
    v19 = v24;
LABEL_28:
    for (i = v25; i != v19; i -= 24)
    {
      v20 = *(i - 24);
      v25 = i - 24;
      if (v20)
      {
        *(i - 16) = v20;
        operator delete(v20);
        goto LABEL_28;
      }
    }

    if (__p)
    {
      operator delete(__p);
    }
  }

  else if (a2 == v4)
  {
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 0;
    a1[1] = v4 + 24;
  }

  else
  {
    v5 = (v4 - 24);
    v6 = a1[1];
    if (v4 >= 0x18)
    {
      v6 = v4 + 24;
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      *v4 = *v5;
      *(v4 + 16) = *(v4 - 8);
      *v5 = 0;
      *(v4 - 16) = 0;
      *(v4 - 8) = 0;
    }

    a1[1] = v6;
    if (v4 != a2 + 24)
    {
      v7 = 0;
      v8 = &a2[-v4 + 24];
      do
      {
        v10 = &v7[v4];
        v12 = &v7[v4 - 24];
        v11 = *v12;
        if (*v12)
        {
          *(v10 - 2) = v11;
          operator delete(v11);
          *v12 = 0;
          *&v7[v4 - 16] = 0;
          *&v7[v4 - 8] = 0;
        }

        v9 = v10 - 48;
        *v12 = *(v10 - 3);
        *(v10 - 1) = *(v10 - 4);
        *v9 = 0;
        *(v9 + 1) = 0;
        *(v9 + 2) = 0;
        v7 -= 24;
      }

      while (v8 != v7);
    }

    v17 = *v2;
    if (*v2)
    {
      *(v2 + 1) = v17;
      operator delete(v17);
      *v2 = 0;
      *(v2 + 1) = 0;
      *(v2 + 2) = 0;
    }

    *v2 = 0;
    *(v2 + 1) = 0;
    *(v2 + 2) = 0;
  }

  return v2;
}

void sub_10033DB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10033DB8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10033DB8C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v5 = v2 - 24;
        v4 = *(v2 - 24);
        *(a1 + 16) = v2 - 24;
        if (!v4)
        {
          break;
        }

        *(v2 - 16) = v4;
        operator delete(v4);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 24;
    }

    while (v5 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10033DBFC(unint64_t *a1)
{
  v2 = a1[2];
  v3 = v2;
  if (v2 == a1[3])
  {
    v4 = a1[1];
    v5 = v4 - *a1;
    if (v4 <= *a1)
    {
      v8 = 0x5555555555555556 * ((v2 - *a1) >> 3);
      if (v2 == *a1)
      {
        v8 = 1;
      }

      if (v8 < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_10000D444();
    }

    v6 = (0xAAAAAAAAAAAAAAABLL * (v5 >> 3) + 1) / -2;
    v3 = v4 - 24 * ((0xAAAAAAAAAAAAAAABLL * (v5 >> 3) + 1) / 2);
    if (v4 != v2)
    {
      do
      {
        v7 = *v3;
        if (*v3)
        {
          *(v3 + 8) = v7;
          operator delete(v7);
          *v3 = 0;
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *v3 = *v4;
        *(v3 + 16) = *(v4 + 16);
        *v4 = 0;
        *(v4 + 8) = 0;
        *(v4 + 16) = 0;
        v4 += 24;
        v3 += 24;
      }

      while (v4 != v2);
      v4 = a1[1];
    }

    a1[1] = v4 + 24 * v6;
    a1[2] = v3;
  }

  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  a1[2] += 24;
}

uint64_t sub_10033DDF0(uint64_t *a1, void *a2, uint64_t a3)
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

void sub_10033DF54()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10033DFC4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10033E1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10004A800(va);
  operator delete();
}

void sub_10033E350()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10033E3C0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_10033E430(uint64_t a1, uint64_t **a2, uint64_t a3, uint64_t **a4, uint64_t **a5, uint64_t a6, uint64_t **a7)
{
  sub_10003BFA8(&v49);
  v14 = sub_10003C2E4(&v49, "dimension mismatch between '", 28);
  v15 = *(a2 + 23);
  if (v15 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  if (v15 >= 0)
  {
    v17 = *(a2 + 23);
  }

  else
  {
    v17 = a2[1];
  }

  v18 = sub_10003C2E4(v14, v16, v17);
  sub_10003C2E4(v18, "' (", 3);
  v19 = std::ostream::operator<<();
  v20 = sub_10003C2E4(v19, ") and '", 7);
  v21 = *(a5 + 23);
  if (v21 >= 0)
  {
    v22 = a5;
  }

  else
  {
    v22 = *a5;
  }

  if (v21 >= 0)
  {
    v23 = *(a5 + 23);
  }

  else
  {
    v23 = a5[1];
  }

  v24 = sub_10003C2E4(v20, v22, v23);
  sub_10003C2E4(v24, "'(", 2);
  v25 = std::ostream::operator<<();
  sub_10003C2E4(v25, ")", 1);
  v26 = sub_10003C2E4(&v49, ".  ", 3);
  v27 = *(a2 + 23);
  if (v27 >= 0)
  {
    v28 = a2;
  }

  else
  {
    v28 = *a2;
  }

  if (v27 >= 0)
  {
    v29 = *(a2 + 23);
  }

  else
  {
    v29 = a2[1];
  }

  v30 = sub_10003C2E4(v26, v28, v29);
  v31 = sub_10003C2E4(v30, "=", 1);
  v32 = *(a4 + 23);
  if (v32 >= 0)
  {
    v33 = a4;
  }

  else
  {
    v33 = *a4;
  }

  if (v32 >= 0)
  {
    v34 = *(a4 + 23);
  }

  else
  {
    v34 = a4[1];
  }

  v35 = sub_10003C2E4(v31, v33, v34);
  v36 = sub_10003C2E4(v35, ", ", 2);
  v37 = *(a5 + 23);
  if (v37 >= 0)
  {
    v38 = a5;
  }

  else
  {
    v38 = *a5;
  }

  if (v37 >= 0)
  {
    v39 = *(a5 + 23);
  }

  else
  {
    v39 = a5[1];
  }

  v40 = sub_10003C2E4(v36, v38, v39);
  v41 = sub_10003C2E4(v40, "=", 1);
  v42 = *(a7 + 23);
  if (v42 >= 0)
  {
    v43 = a7;
  }

  else
  {
    v43 = *a7;
  }

  if (v42 >= 0)
  {
    v44 = *(a7 + 23);
  }

  else
  {
    v44 = a7[1];
  }

  sub_10003C2E4(v41, v43, v44);
  std::stringbuf::str();
  if (v52 < 0)
  {
    operator delete(v51[7].__locale_);
  }

  std::locale::~locale(v51);
  std::ostream::~ostream();
  std::ios::~ios();
  std::logic_error::logic_error(a1, &v48);
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  *a1 = off_10044A700;
  v45 = *a2;
  *(a1 + 32) = a2[2];
  *(a1 + 16) = v45;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  *(a1 + 40) = a3;
  v46 = *a5;
  *(a1 + 64) = a5[2];
  *(a1 + 48) = v46;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  *(a1 + 72) = a6;
  return a1;
}

void sub_10033E768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10033E7AC(std::logic_error *this)
{
  this->__vftable = off_10044A700;
  if (SHIBYTE(this[4].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
    if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this;

      goto LABEL_5;
    }
  }

  else if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[1].__vftable);
  v2 = this;

LABEL_5:
  std::logic_error::~logic_error(v2);
}

void sub_10033E844(std::logic_error *this)
{
  this->__vftable = off_10044A700;
  if (SHIBYTE(this[4].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
    if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = this;

      goto LABEL_5;
    }
  }

  else if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[1].__vftable);
  v2 = this;

LABEL_5:
  std::logic_error::~logic_error(v2);
}

void sub_10033E8DC(std::logic_error *this)
{
  this->__vftable = off_10044A700;
  if (SHIBYTE(this[4].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
    if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(this[2].__vftable) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[1].__vftable);
LABEL_3:
  std::logic_error::~logic_error(this);

  operator delete();
}

void sub_10033E96C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10033E9DC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10033EAF0()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10033EC98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10033EE64()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10033EED4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10033EF44()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10033F224()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10033F364()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10033F7CC()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10033F95C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_10033FDD8(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 32), *(a1 + 40));
  if (*(a1 + 40))
  {
    [*(a1 + 32) onQueueRegisterDevices];
    v2 = *(a1 + 40);
  }

  else
  {
    v2 = 0;
  }

  v3 = [*(a1 + 32) isDisabled] ^ 1;

  return [v2 wifiDidChangeIsPowered:v3];
}

void sub_10033FF9C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  [WeakRetained wifiDidChangeIsPowered:{objc_msgSend(*(a1 + 32), "isDisabled") ^ 1}];
}

void sub_100340088()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1003400F8()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100340168()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_100340190(uint64_t a1@<X0>, const void ***a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v4 + 20 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  if (v4 + 20 >= 0x17)
  {
    operator new();
  }

  memset(&v8, 0, sizeof(v8));
  *(&v8.__r_.__value_.__s + 23) = v4 + 20;
  if (v4)
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    memmove(&v8, a2, v4);
  }

  strcpy(&v8 + v4, "-%%%%-%%%%-%%%%-%%%%");
  v9 = v8;
  if (*(a1 + 23) < 0)
  {
    sub_100003228(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  sub_1000032E4(&__p, &v9);
  sub_10001C92C(&__p, 0, v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(v9.__r_.__value_.__l.__data_);
LABEL_16:
  sub_100007D28(v11, 0, 0);
  sub_100018AFC(0, &v9);
  sub_100017430(v11, &v9, 0, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100003228(a3, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
  }

  else
  {
    v6 = 0;
    *a3 = __p;
  }

  v7 = *(a3 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a3 + 8);
  }

  *(a3 + 24) = v7 != 0;
  if (v6)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      if ((v12 & 0x80000000) == 0)
      {
        return;
      }

LABEL_29:
      operator delete(v11[0]);
      return;
    }
  }

  else if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(v9.__r_.__value_.__l.__data_);
  if (v12 < 0)
  {
    goto LABEL_29;
  }
}

void sub_1003403E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a31 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a26);
      goto LABEL_8;
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a13);
  if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_100340490(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100003228(a1, *a2, *(a2 + 1));
    *(a1 + 24) = *(a2 + 24);
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 24) = *(a2 + 24);
  if (*(a2 + 23) < 0)
  {
LABEL_3:
    operator delete(*a2);
  }

LABEL_4:
  *a2 = 0;
  *(a2 + 1) = 0;
  *(a2 + 24) = 0;
  *(a2 + 2) = 0;
  return a1;
}

void sub_100340514(void **a1)
{
  if (*(a1 + 24) != 1)
  {
    return;
  }

  if (qword_10045B050 == -1)
  {
    v2 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
LABEL_4:
      v3 = a1;
      if (*(a1 + 23) < 0)
      {
        v3 = *a1;
      }

      v4 = 136315138;
      v5 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Removing temporary path %s", &v4, 0xCu);
    }
  }

  else
  {
    sub_10038793C();
    v2 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_4;
    }
  }

  sub_100019F68(a1, 0);
  *(a1 + 24) = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_100340628(uint64_t a1)
{
  sub_100340514(a1);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1003406A4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100340714()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100340784(void *a1@<X0>, std::string *a2@<X8>)
{
  sub_100340E38(&v23, *(a1[3] + 8));
  v4 = std::string::insert(&v23, 0, "Listener ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v24, " for event ");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v25.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v25.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  sub_100340E38(v21, *(*a1 + 8));
  if ((v22 & 0x80u) == 0)
  {
    v8 = v21;
  }

  else
  {
    v8 = v21[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v9 = v22;
  }

  else
  {
    v9 = v21[1];
  }

  v10 = std::string::append(&v25, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v26, " (0x");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  memset(&__p, 0, sizeof(__p));
  if ((sub_1000D3958(a1 + 2, &__p) & 1) == 0)
  {
    v19 = std::bad_cast::bad_cast(&v29);
    v29.__vftable = &off_100434090;
    sub_100049F88(v19);
  }

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

  v16 = std::string::append(&v27, p_p, size);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v28, ")");
  *a2 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_16:
      if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_25;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(v27.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_18:
    if ((v22 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(v26.__r_.__value_.__l.__data_);
  if ((v22 & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(v21[0]);
  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_20:
    if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(v25.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_21:
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_30:
    operator delete(v23.__r_.__value_.__l.__data_);
    return;
  }

LABEL_29:
  operator delete(v24.__r_.__value_.__l.__data_);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_30;
  }
}

void sub_100340A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (*(v47 - 57) < 0)
  {
    operator delete(*(v47 - 80));
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v47 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((*(v47 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    if ((a47 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(*(v47 - 112));
  if ((a47 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a42);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a40 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a16);
  if ((a40 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a35);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_9:
    _Unwind_Resume(exception_object);
  }

LABEL_17:
  operator delete(a22);
  _Unwind_Resume(exception_object);
}

void sub_100340B74(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  sub_100340F6C();
}

void sub_100340BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100340BEC(uint64_t a1)
{
  v2 = *a1;
  if (!*a1)
  {
    goto LABEL_19;
  }

  v3 = *(a1 + 8);
  if (!v3 || *(v3 + 8))
  {
    goto LABEL_19;
  }

  v4 = v2[1];
  if (!v4)
  {
LABEL_9:
    v7 = 0;
    v9 = v2 + 2;
    if (qword_10045B050 != -1)
    {
      goto LABEL_24;
    }

    goto LABEL_10;
  }

  v5 = std::__shared_weak_count::lock(v4);
  v6 = *a1;
  if (!v5)
  {
    v2 = *a1;
    goto LABEL_9;
  }

  v7 = v5;
  v8 = *v2;
  if (!v8)
  {
    v9 = v6 + 2;
    if (qword_10045B050 != -1)
    {
LABEL_24:
      sub_100387950();
      v10 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        goto LABEL_16;
      }

      goto LABEL_11;
    }

LABEL_10:
    v10 = qword_10045B058;
    if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
    {
      goto LABEL_16;
    }

LABEL_11:
    sub_100340784(v9, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v16 = p_p;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "WARNING: Registered listener handle %s still active but event bus is gone", buf, 0xCu);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_16:
    if (!v7)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  std::mutex::lock((v8 + 48));
  sub_1000E7D3C(v8, v6[2], v6[4], v6[5]);
  std::mutex::unlock((v8 + 48));
LABEL_17:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_19:
  v12 = *(a1 + 8);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  return a1;
}

void sub_100340E08(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    std::mutex::unlock((v2 + 48));
    sub_10000D388(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_100340E38(uint64_t a1, uint64_t a2)
{
  v4 = strlen((a2 & 0x7FFFFFFFFFFFFFFFLL));
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  v10 = v4;
  if (v4)
  {
    memmove(&__dst, (a2 & 0x7FFFFFFFFFFFFFFFLL), v4);
  }

  *(&__dst + v5) = 0;
  sub_1000DF33C(&__dst, &v7);
  if (v10 < 0)
  {
    operator delete(__dst);
  }

  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  return result;
}

void sub_100340F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100341048(_Unwind_Exception *a1)
{
  shared_owners = v1[1].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_weak(shared_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void sub_10034108C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10044A7C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1003410E0(void *a1)
{
  v2 = a1[10];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[4];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_10034119C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10034120C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10034127C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

const char *sub_1003412A4(uint64_t a1)
{
  result = (a1 + 8);
  if (*(a1 + 31) < 0)
  {
    if (*(a1 + 16))
    {
      return *result;
    }
  }

  else if (*(a1 + 31))
  {
    return result;
  }

  v3 = *(a1 + 32);
  if (v3 > 7)
  {
    return "TTransportException: (Invalid exception type)";
  }

  else
  {
    return off_10044A840[v3];
  }
}

void sub_1003412F8(std::exception *this)
{
  this->__vftable = &off_1004341F8;
  if (SHIBYTE(this[3].__vftable) < 0)
  {
    operator delete(this[1].__vftable);
  }

  std::exception::~exception(this);

  operator delete();
}

void sub_10034136C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1003417FC(a1, a2, a3, a4);
  wireless_diagnostics::google::protobuf::DescriptorPool::generated_pool(v4);
  operator new();
}

void sub_100341788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_10034179C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003417B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003417FC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((byte_10045D9B8 & 1) == 0)
  {
    byte_10045D9B8 = 1;
    v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/purpleslam/protobuf/gen/indoor_availability.pb.cc", a4);
    sub_10013E214(v4, v5, v6, v7);
    sub_1001404F8(v8, v9, v10, v11);
    sub_1002E2D40(v12, v13, v14, v15);
    wireless_diagnostics::google::protobuf::DescriptorPool::InternalAddGeneratedFile( "\n&protobuf/gen/indoor_availability.proto\x12\x12proto.availability\x1A'protobuf/gen/locationd_parameters.proto\x1A\x1Dprotobuf/gen/parameters.proto\x1A\x18protobuf/gen/venue.protoO\n\rLatLonPolygon\x12\x14\n\blatitude\x18\x01 \x03(\x01B\x02\x10\x01\x12\x15\n\tlongitude\x18\x02 \x03(\x01B\x02\x10\x01\x12\x11\n\ttolerance\x18\x03 \x02(\x01A\n\x19TileDownloadConfiguration\x12$\n\x1CfloorIdxsForWifiDownloadOnly\x18\x01 \x03(\r\xC2\x02\n\vVenueBounds\x12\v\n\x03ids\x18\x01 \x03(\t\x124\n\texteriors\x18\x03 \x03(\v2!.proto.availability.LatLonPolygon\x12P\n\x19tileDownloadConfiguration\x18\x05 \x01(\v2-.proto.availability.TileDownloadConfiguration\x12-\n\acontext\x18\x06 \x01(\x0E2\x1C.proto.venue.LocationContext\x12>\n\x13DEPRECATED_exterior\x18\x02 \x01(\v2!.proto.availability.LatLonPolygon\x12/\n'DEPRECATED_floorIdxsForWifiDownloadOnly\x18\x04 \x03(\r\x99\x06\n\x10AvailabilityTile\x12/\n\x06venues\x18\x01 \x03(\v2\x1F.proto.availability.VenueBounds\x12=\n\x12parameterOverrides\x18\x10 \x01(\v2!.proto.params.LocalizerParameters\x122\n$availabilityZScoreConfidenceInterval\x18\x11 \x01(\x01:\x041.96\x12#\n\x16indoorPrefetchRadiusKM\x18\x12 \x01(\r:\x03200\x12%\n\x18regionalPrefetchRadiusKM\x18\x16 \x01(\r:\x03200\x12(\n\x1BindoorPrefetchMaxFloorCount\x18\x13 \x01(\r:\x03200\x12*\n\x1DregionalPrefetchMaxFloorCount\x18\x17 \x01(\r:\x03200\x12.\n\x1BindoorPrefetchMaxTotalBytes\x18\x19 \x01(\r:\t200000000\x120\n\x1DregionalPrefetchMaxTotalBytes\x18\x1A \x01(\r:\t100000000\x121\n%indoorLocationOfInterestMergeRadiusKM\x18\x14 \x01(\r:\x0250\x123\n'regionalLocationOfInterestMergeRadiusKM\x18\x18 \x01(\r:\x0250\x120\n%preferPredictionWithinNActivityCycles\x18\x15 \x01(\r:\x011\x121\n&indoorNumberOfDaysBeforeTileRedownload\x18\x1B \x01(\x02:\x017\x123\n(regionalNumberOfDaysBeforeTileRedownload\x18\x1C \x01(\x02:\x017\x12[\n motionActivityDebounceParameters\x18\x1D \x01(\v21.proto.locationd.MotionActivityDebounceParameters\xC8\x02\n\x18AvailabilityTileMetadata\x12\f\n\x04uuid\x18\x01 \x01(\t\x12\x15\n\rtimeGenerated\x18\x02 \x01(\x01\x12\x10\n\bnumTiles\x18\x03 \x01(\r\x12\x11\n\tnumVenues\x18\x04 \x01(\r\x12\x11\n\tsizeBytes\x18\x05 \x01(\r\x12\x1B\n\x13compressedSizeBytes\x18\x06 \x01(\r\x12\x13\n\vgeneratedBy\x18\a \x01(\t\x12\x17\n\x0FgeneratedReason\x18\b \x01(\t\x12\x1B\n\x13numOverriddenParams\x18\t \x01(\r\x12\f\n\x04sha1\x18\n \x01(\f\x12\x11\n\tnumGroups\x18\v \x01(\r\x12F\n\btileType\x18\f \x01(\x0E2(.proto.availability.AvailabilityTileType:\nIndoorOnlym\n\x1BGroupedAvailabilityLocation\x12\x12\n\nlocationId\x18\x01 \x01(\t\x12\x0F\n\agroupId\x18\x02 \x01(\t\x12\x0F\n\avenueId\x18\x03 \x01(\t\x12\v\n\x03lat\x18\x04 \x01(\x01\x12\v\n\x03lng\x18\x05 \x01(\x01\xB8\x01\n\x17AvailabilityTileDetails\x12\f\n\x04uuid\x18\x01 \x01(\t\x12\x11\n\ttileUuids\x18\x02 \x03(\t\x122\n\x04tile\x18\x03 \x01(\v2$.proto.availability.AvailabilityTile\x12H\n\x0FgroupingDetails\x18\x04 \x03(\v2/.proto.availability.GroupedAvailabilityLocation*>\n\x14AvailabilityTileType\x12\x0E\n\nIndoorOnly\x10\x01\x12\x16\n\x12IndoorPlusRegional\x10\x02B\x1F\n\x1Dcom.apple.indoor.availability",  0x869,  v16);
    wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedFile();
    operator new();
  }
}

uint64_t sub_100341C70()
{
  if (qword_100471CF0)
  {
    (*(*qword_100471CF0 + 8))(qword_100471CF0);
  }

  if (qword_10045D9C8)
  {
    (*(*qword_10045D9C8 + 8))(qword_10045D9C8);
  }

  if (qword_100471CF8)
  {
    (*(*qword_100471CF8 + 8))(qword_100471CF8);
  }

  if (qword_10045D9D8)
  {
    (*(*qword_10045D9D8 + 8))(qword_10045D9D8);
  }

  if (qword_100471D00)
  {
    (*(*qword_100471D00 + 8))(qword_100471D00);
  }

  if (qword_10045D9E8)
  {
    (*(*qword_10045D9E8 + 8))(qword_10045D9E8);
  }

  if (qword_100471D08)
  {
    (*(*qword_100471D08 + 8))(qword_100471D08);
  }

  if (qword_10045D9F8)
  {
    (*(*qword_10045D9F8 + 8))(qword_10045D9F8);
  }

  if (qword_100471D10)
  {
    (*(*qword_100471D10 + 8))(qword_100471D10);
  }

  if (qword_10045DA08)
  {
    (*(*qword_10045DA08 + 8))(qword_10045DA08);
  }

  if (qword_100471D18)
  {
    (*(*qword_100471D18 + 8))(qword_100471D18);
  }

  if (qword_10045DA18)
  {
    (*(*qword_10045DA18 + 8))(qword_10045DA18);
  }

  if (qword_100471D20)
  {
    (*(*qword_100471D20 + 8))(qword_100471D20);
  }

  result = qword_10045DA28;
  if (qword_10045DA28)
  {
    v1 = *(*qword_10045DA28 + 8);

    return v1();
  }

  return result;
}

uint64_t sub_100341F38(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = qword_10045DA38;
  __dmb(0xBu);
  if (v4 != 2)
  {
    v24[1] = sub_10034136C;
    v25 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v24);
  }

  if (!qword_100471CF0)
  {
    sub_1003417FC(a1, 0, a3, a4);
  }

  v5 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471CF8)
  {
    sub_1003417FC(v5, 0, v6, v7);
  }

  v8 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471D00)
  {
    sub_1003417FC(v8, 0, v9, v10);
  }

  v11 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471D08)
  {
    sub_1003417FC(v11, 0, v12, v13);
  }

  v14 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471D10)
  {
    sub_1003417FC(v14, 0, v15, v16);
  }

  v17 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471D18)
  {
    sub_1003417FC(v17, 0, v18, v19);
  }

  v20 = wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
  if (!qword_100471D20)
  {
    sub_1003417FC(v20, 0, v21, v22);
  }

  return wireless_diagnostics::google::protobuf::MessageFactory::InternalRegisterGeneratedMessage();
}

void sub_1003420D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

void *sub_1003420E4(void *a1)
{
  *a1 = off_10044A890;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[5] = 0;
  a1[6] = 0;
  a1[8] = 0;
  a1[9] = 0;
  return a1;
}

void *sub_100342148(void *a1)
{
  *a1 = off_10044A940;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  return a1;
}

uint64_t sub_1003421A8(uint64_t a1)
{
  *a1 = off_10044A9F0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 104) = 0;
  return a1;
}

uint64_t sub_100342230(uint64_t a1)
{
  *a1 = off_10044AAA0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0x3FFF5C28F5C28F5CLL;
  *&v2 = 0xC8000000C8;
  *(&v2 + 1) = 0xC8000000C8;
  *(a1 + 56) = v2;
  *(a1 + 72) = xmmword_1003DEC90;
  *(a1 + 88) = 0x40E0000000000001;
  *(a1 + 96) = 0;
  *(a1 + 108) = 0;
  *(a1 + 112) = 0;
  *(a1 + 104) = 1088421888;
  return a1;
}

uint64_t sub_1003422D8(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 28);
    v7 = v5 + v4;
    if (v6 < v7)
    {
      v8 = 2 * v6;
      if (2 * v6 <= v7)
      {
        v8 = v7;
      }

      if (v8 <= 4)
      {
        v8 = 4;
      }

      *(a1 + 28) = v8;
      operator new[]();
    }

    memcpy((*(a1 + 16) + 8 * v5), *(a2 + 16), 8 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 52);
    v12 = v10 + v9;
    if (v11 < v12)
    {
      v13 = 2 * v11;
      if (2 * v11 <= v12)
      {
        v13 = v12;
      }

      if (v13 <= 4)
      {
        v13 = 4;
      }

      *(a1 + 52) = v13;
      operator new[]();
    }

    memcpy((*(a1 + 40) + 8 * v10), *(a2 + 40), 8 * *(a2 + 48));
    *(a1 + 48) += *(a2 + 48);
  }

  if ((*(a2 + 76) & 4) != 0)
  {
    v14 = *(a2 + 64);
    *(a1 + 76) |= 4u;
    *(a1 + 64) = v14;
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1003424D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003424EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100342500(void *a1)
{
  *a1 = off_10044A890;
  if (a1[5])
  {
    operator delete[]();
  }

  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100342588(void *a1)
{
  *a1 = off_10044A890;
  if (a1[5])
  {
    operator delete[]();
  }

  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_1003426BC(uint64_t a1)
{
  if ((*(a1 + 76) & 0x3FC) != 0)
  {
    *(a1 + 64) = 0;
  }

  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 10) = 0;
  *(result + 17) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_1003426E8(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
    while (1)
    {
      v6 = *(this + 1);
      if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
        *(this + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(this + 8) = TagFallback;
        *(this + 1) = v6 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v8 = TagFallback >> 3;
      v9 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        if (v9 == 1)
        {
          goto LABEL_62;
        }

        goto LABEL_19;
      }

      if (v8 == 2)
      {
        break;
      }

      if (v8 != 1)
      {
        goto LABEL_19;
      }

      if (v9 == 1)
      {
        result = sub_10009D754(1, 0xAu, this, (a1 + 16));
        if (!result)
        {
          return result;
        }

        v16 = *(this + 1);
        v15 = *(this + 2);
        if (v16 < v15)
        {
LABEL_41:
          if (*v16 == 18)
          {
            v13 = v16 + 1;
            *(this + 1) = v13;
            v29 = 0;
            if (v13 >= v15)
            {
              goto LABEL_45;
            }

LABEL_43:
            v22 = *v13;
            if ((v22 & 0x80000000) != 0)
            {
LABEL_45:
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29))
              {
                return 0;
              }

              v22 = v29;
              goto LABEL_47;
            }

            v29 = *v13;
            *(this + 1) = v13 + 1;
LABEL_47:
            v23 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v22);
            while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
            {
              v30 = 0;
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v30))
              {
                return 0;
              }

              v25 = v30;
              v26 = *(a1 + 48);
              if (v26 == *(a1 + 52))
              {
                if (2 * v26 <= v26 + 1)
                {
                  v27 = v26 + 1;
                }

                else
                {
                  v27 = 2 * v26;
                }

                if (v27 <= 4)
                {
                  v27 = 4;
                }

                *(a1 + 52) = v27;
                operator new[]();
              }

              v24 = *(a1 + 40);
              *(a1 + 48) = v26 + 1;
              *(v24 + 8 * v26) = v25;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v23);
LABEL_59:
            v28 = *(this + 1);
            if (v28 < *(this + 2) && *v28 == 25)
            {
              *(this + 1) = v28 + 1;
LABEL_62:
              v30 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v30) & 1) == 0)
              {
                return 0;
              }

              *(a1 + 64) = v30;
              *(a1 + 76) |= 4u;
              if (*(this + 1) == *(this + 2) && (*(this + 11) || *(this + 6) == *(this + 10)))
              {
                *(this + 8) = 0;
                result = 1;
                *(this + 36) = 1;
                return result;
              }
            }
          }
        }
      }

      else
      {
        if (v9 != 2)
        {
          goto LABEL_19;
        }

        v29 = 0;
        v10 = *(this + 1);
        if (v10 >= *(this + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v29))
          {
            return 0;
          }

          v11 = v29;
        }

        else
        {
          v29 = *v10;
          *(this + 1) = v10 + 1;
        }

        v17 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v11);
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
        {
          v30 = 0;
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v30))
          {
            return 0;
          }

          v19 = v30;
          v20 = *(a1 + 24);
          if (v20 == *(a1 + 28))
          {
            if (2 * v20 <= v20 + 1)
            {
              v21 = v20 + 1;
            }

            else
            {
              v21 = 2 * v20;
            }

            if (v21 <= 4)
            {
              v21 = 4;
            }

            *(a1 + 28) = v21;
            operator new[]();
          }

          v18 = *(a1 + 16);
          *(a1 + 24) = v20 + 1;
          *(v18 + 8 * v20) = v19;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v17);
        v16 = *(this + 1);
        v15 = *(this + 2);
        if (v16 < v15)
        {
          goto LABEL_41;
        }
      }
    }

    if (v9 == 1)
    {
      result = sub_10009D754(1, 0x12u, this, (a1 + 40));
      if (!result)
      {
        return result;
      }

      goto LABEL_59;
    }

    if (v9 == 2)
    {
      v13 = *(this + 1);
      v12 = *(this + 2);
      v29 = 0;
      if (v13 >= v12)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

LABEL_19:
    if (v9 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t sub_100342AD4(uint64_t result, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = result;
  if (*(result + 24) >= 1)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2, 0xAu);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2, *(v4 + 32));
    if (*(v4 + 24) >= 1)
    {
      v5 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(a2, *(*(v4 + 16) + 8 * v5++));
      }

      while (v5 < *(v4 + 24));
    }
  }

  if (*(v4 + 48) > 0)
  {
    wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2, 0x12u);
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32(a2, *(v4 + 56));
    if (*(v4 + 48) >= 1)
    {
      v6 = 0;
      do
      {
        result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteLittleEndian64(a2, *(*(v4 + 40) + 8 * v6++));
      }

      while (v6 < *(v4 + 48));
    }
  }

  if ((*(v4 + 76) & 4) != 0)
  {
    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 64), a3);
  }

  v9 = *(v4 + 8);
  v8 = (v4 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

_BYTE *sub_100342BFC(wireless_diagnostics::google::protobuf::internal::WireFormat *this, _BYTE *a2, unsigned __int8 *a3)
{
  if (*(this + 6) >= 1)
  {
    *a2 = 10;
    v4 = *(this + 8);
    if (v4 > 0x7F)
    {
      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v4, a2 + 1, a3);
      if (*(this + 6) < 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      a2[1] = v4;
      a2 += 2;
      if (*(this + 6) < 1)
      {
        goto LABEL_8;
      }
    }

    v5 = 0;
    do
    {
      *a2 = *(*(this + 2) + 8 * v5);
      a2 += 8;
      ++v5;
    }

    while (v5 < *(this + 6));
  }

LABEL_8:
  if (*(this + 12) <= 0)
  {
    goto LABEL_15;
  }

  *a2 = 18;
  v6 = *(this + 14);
  if (v6 > 0x7F)
  {
    a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
    if (*(this + 12) < 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    a2[1] = v6;
    a2 += 2;
    if (*(this + 12) < 1)
    {
      goto LABEL_15;
    }
  }

  v7 = 0;
  do
  {
    *a2 = *(*(this + 5) + 8 * v7);
    a2 += 8;
    ++v7;
  }

  while (v7 < *(this + 12));
LABEL_15:
  if ((*(this + 76) & 4) != 0)
  {
    v8 = *(this + 8);
    *a2 = 25;
    *(a2 + 1) = v8;
    a2 += 9;
  }

  v11 = *(this + 1);
  v10 = (this + 8);
  v9 = v11;
  if (!v11 || *v9 == v9[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v10, a2, a3);
}

uint64_t sub_100342D90(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = (*(a1 + 76) << 29 >> 31) & 9;
  v4 = *(a1 + 24);
  v5 = 8 * v4;
  if (v4 >= 1)
  {
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v4), a2) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 += v6;
  }

  *(a1 + 32) = v5;
  v7 = v3 + v5;
  v8 = *(a1 + 48);
  v9 = 8 * v8;
  if (v8 >= 1)
  {
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback((8 * v8), a2) + 1;
    }

    else
    {
      v10 = 2;
    }

    v7 += v10;
  }

  v11 = *(a1 + 8);
  *(a1 + 56) = v9;
  v12 = v7 + v9;
  if (v11 && *v11 != v11[1])
  {
    v12 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize((a1 + 8), a2) + v12;
  }

  *(a1 + 72) = v12;
  return v12;
}

uint64_t sub_100342E60(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (v4)
  {
    return sub_1003422D8(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_100342F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100342F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100342F68(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_100343000()
{
  v0 = qword_10045DA38;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10034136C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D9C0;
}

void sub_100343090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1003430A4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a1 + 24);
    v6 = *(a1 + 28);
    v7 = v5 + v4;
    if (v6 < v7)
    {
      v8 = 2 * v6;
      if (2 * v6 <= v7)
      {
        v8 = v7;
      }

      if (v8 <= 4)
      {
        v8 = 4;
      }

      *(a1 + 28) = v8;
      operator new[]();
    }

    memcpy((*(a1 + 16) + 4 * v5), *(a2 + 16), 4 * *(a2 + 24));
    *(a1 + 24) += *(a2 + 24);
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_1003431D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1003431EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *sub_100343200(void *a1, uint64_t a2)
{
  *a1 = off_10044A940;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 1));
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  sub_1003430A4(a1, a2);
  return a1;
}

void sub_100343270(_Unwind_Exception *a1)
{
  if (*v3)
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

void sub_1003432BC(void *a1)
{
  *a1 = off_10044A940;
  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100343330(void *a1)
{
  *a1 = off_10044A940;
  if (a1[2])
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 1));
  wireless_diagnostics::google::protobuf::Message::~Message(a1);

  operator delete();
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_10034344C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 7) = 0;
  if (v2)
  {
    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(result);
  }

  return result;
}

uint64_t sub_100343464(uint64_t a1, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  while (1)
  {
LABEL_1:
    v6 = *(this + 1);
    if (v6 >= *(this + 2) || (TagFallback = *v6, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
      *(this + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(this + 8) = TagFallback;
      *(this + 1) = v6 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v8 = TagFallback & 7;
    if ((TagFallback & 0xFFFFFFF8) == 8)
    {
      if ((TagFallback & 7) == 0)
      {
        v11 = *(this + 1);
        v10 = *(this + 2);
        v24 = 0;
        if (v11 >= v10)
        {
          goto LABEL_17;
        }

LABEL_15:
        if ((*v11 & 0x80000000) == 0)
        {
          v24 = *v11;
          *(this + 1) = v11 + 1;
          goto LABEL_18;
        }

LABEL_17:
        while (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24))
        {
LABEL_18:
          v12 = *(a1 + 24);
          v13 = *(a1 + 16);
          if (v12 == *(a1 + 28))
          {
            if (2 * v12 <= v12 + 1)
            {
              v14 = v12 + 1;
            }

            else
            {
              v14 = 2 * v12;
            }

            if (v14 <= 4)
            {
              v14 = 4;
            }

            *(a1 + 28) = v14;
            operator new[]();
          }

          v15 = v24;
          *(a1 + 24) = v12 + 1;
          *(v13 + 4 * v12) = v15;
          v16 = *(a1 + 28) - *(a1 + 24);
          if (v16 >= 1)
          {
            for (i = v16 + 1; i > 1; --i)
            {
              v19 = *(this + 1);
              v20 = *(this + 2);
              if (v19 >= v20 || *v19 != 8)
              {
                break;
              }

              *(this + 1) = v19 + 1;
              if ((v19 + 1) >= v20 || (v21 = v19[1], (v21 & 0x80000000) != 0))
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v24))
                {
                  return 0;
                }

                v21 = v24;
                v13 = *(a1 + 16);
              }

              else
              {
                v24 = v19[1];
                *(this + 1) = v19 + 2;
              }

              v18 = *(a1 + 24);
              *(a1 + 24) = v18 + 1;
              *(v13 + 4 * v18) = v21;
            }
          }

LABEL_35:
          v23 = *(this + 1);
          v22 = *(this + 2);
          if (v23 >= v22 || *v23 != 8)
          {
            if (v23 == v22 && (*(this + 11) || *(this + 6) == *(this + 10)))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }

            goto LABEL_1;
          }

          v11 = v23 + 1;
          *(this + 1) = v11;
          v24 = 0;
          if (v11 < v22)
          {
            goto LABEL_15;
          }
        }

        return 0;
      }

      if (v8 == 2)
      {
        break;
      }
    }

    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, TagFallback, a1 + 8, a4) & 1) == 0)
    {
      return 0;
    }
  }

  result = sub_100343714(this, (a1 + 16));
  if (result)
  {
    goto LABEL_35;
  }

  return result;
}

uint64_t sub_100343714(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t *a2)
{
  v14 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v14);
    if (!result)
    {
      return result;
    }

    v5 = v14;
  }

  else
  {
    v14 = *v4;
    *(this + 1) = v4 + 1;
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v5);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) >= 1)
  {
    do
    {
      v13 = 0;
      v10 = *(this + 1);
      if (v10 >= *(this + 2) || *v10 < 0)
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v13);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v13 = *v10;
        *(this + 1) = v10 + 1;
      }

      v11 = *(a2 + 2);
      if (v11 == *(a2 + 3))
      {
        if (2 * v11 <= v11 + 1)
        {
          v12 = v11 + 1;
        }

        else
        {
          v12 = 2 * v11;
        }

        if (v12 <= 4)
        {
          v12 = 4;
        }

        *(a2 + 3) = v12;
        operator new[]();
      }

      v8 = *a2;
      v9 = v13;
      *(a2 + 2) = v11 + 1;
      *(v8 + 4 * v11) = v9;
    }

    while (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) > 0);
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v7);
  return 1;
}

uint64_t sub_100343898(uint64_t result, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = result;
  if (*(result + 24) >= 1)
  {
    v6 = 0;
    do
    {
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(*(v5 + 16) + 4 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  v9 = *(v5 + 8);
  v8 = (v5 + 8);
  v7 = v9;
  if (v9 && *v7 != v7[1])
  {

    return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFields(v8, a2, a3);
  }

  return result;
}

wireless_diagnostics::google::protobuf::UnknownFieldSet *sub_100343934(wireless_diagnostics::google::protobuf::internal::WireFormat *this, wireless_diagnostics::google::protobuf::UnknownFieldSet *a2, unsigned __int8 *a3)
{
  if (*(this + 6) >= 1)
  {
    v5 = 0;
    do
    {
      while (1)
      {
        v6 = *(*(this + 2) + 4 * v5);
        *a2 = 8;
        if (v6 > 0x7F)
        {
          break;
        }

        *(a2 + 1) = v6;
        a2 = (a2 + 2);
        if (++v5 >= *(this + 6))
        {
          goto LABEL_6;
        }
      }

      a2 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::WriteVarint32FallbackToArray(v6, a2 + 1, a3);
      ++v5;
    }

    while (v5 < *(this + 6));
  }

LABEL_6:
  v9 = *(this + 1);
  v8 = (this + 8);
  v7 = v9;
  if (!v9 || *v7 == v7[1])
  {
    return a2;
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormat::SerializeUnknownFieldsToArray(v8, a2, a3);
}

uint64_t sub_100343A00(uint64_t a1, const wireless_diagnostics::google::protobuf::UnknownFieldSet *a2)
{
  v3 = *(a1 + 24);
  if (v3 < 1)
  {
    v8 = v3;
    v9 = (a1 + 8);
    v10 = *(a1 + 8);
    if (!v10)
    {
LABEL_7:
      *(a1 + 32) = v8;
      return v8;
    }
  }

  else
  {
    v4 = 0;
    v5 = 0;
    do
    {
      while (1)
      {
        v7 = *(*(a1 + 16) + 4 * v4);
        if (v7 < 0x80)
        {
          break;
        }

        v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7, a2);
        v3 = *(a1 + 24);
        v5 += v6;
        if (++v4 >= v3)
        {
          goto LABEL_6;
        }
      }

      ++v5;
      ++v4;
    }

    while (v4 < v3);
LABEL_6:
    v8 = (v3 + v5);
    v9 = (a1 + 8);
    v10 = *(a1 + 8);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  if (*v10 == v10[1])
  {
    goto LABEL_7;
  }

  v12 = wireless_diagnostics::google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v9, a2) + v8;
  *(a1 + 32) = v12;
  return v12;
}

uint64_t sub_100343AD4(const wireless_diagnostics::google::protobuf::Message *a1, const wireless_diagnostics::google::protobuf::Message *lpsrc)
{
  if (lpsrc == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  if (v4)
  {
    return sub_1003430A4(a1, v4);
  }

  else
  {
    return wireless_diagnostics::google::protobuf::internal::ReflectionOps::Merge(lpsrc, a1, v5);
  }
}

void sub_100343BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100343BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100343BDC(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    (*(*result + 32))();
    v5 = *(*v4 + 112);

    return v5(v4, a2);
  }

  return result;
}

uint64_t sub_100343C70()
{
  v0 = qword_10045DA38;
  __dmb(0xBu);
  if (v0 != 2)
  {
    v2[1] = sub_10034136C;
    v3 = 0;
    wireless_diagnostics::google::protobuf::GoogleOnceInitImpl();
    wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(v2);
  }

  return qword_10045D9D0;
}

void sub_100343D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::FunctionClosure0::~FunctionClosure0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100343D14(uint64_t a1)
{
  v2 = *(a1 + 12);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 12);
      }
    }
  }

  if (*a1)
  {
    operator delete[]();
  }

  return a1;
}

uint64_t sub_100343DAC(uint64_t a1, uint64_t a2)
{
  *a1 = off_10044A9F0;
  wireless_diagnostics::google::protobuf::UnknownFieldSet::UnknownFieldSet((a1 + 8));
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 104) = 0;
  sub_100343EB0(a1, a2);
  return a1;
}

void sub_100343E54(_Unwind_Exception *a1)
{
  if (*v5)
  {
    operator delete[]();
  }

  sub_100343D14(v4);
  sub_1000918BC(v3);
  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet(v2);
  wireless_diagnostics::google::protobuf::Message::~Message(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100343EB0(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v30);
  }

  v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), *(a2 + 24) + *(a1 + 24));
  if (*(a2 + 24) >= 1)
  {
    v5 = 0;
    do
    {
      while (1)
      {
        v9 = *(*(a2 + 16) + 8 * v5);
        v10 = *(a1 + 28);
        v11 = *(a1 + 24);
        if (v11 >= v10)
        {
          break;
        }

        v12 = *(a1 + 16);
        *(a1 + 24) = v11 + 1;
        v4 = std::string::operator=(*(v12 + 8 * v11), v9);
        if (++v5 >= *(a2 + 24))
        {
          goto LABEL_11;
        }
      }

      if (v10 == *(a1 + 32))
      {
        v4 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16), v10 + 1);
        v10 = *(a1 + 28);
      }

      *(a1 + 28) = v10 + 1;
      v6 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(v4);
      v7 = *(a1 + 16);
      v8 = *(a1 + 24);
      *(a1 + 24) = v8 + 1;
      *(v7 + 8 * v8) = v6;
      v4 = std::string::operator=(v6, v9);
      ++v5;
    }

    while (v5 < *(a2 + 24));
  }

LABEL_11:
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40), *(a2 + 48) + *(a1 + 48));
  if (*(a2 + 48) >= 1)
  {
    v13 = 0;
    do
    {
      v15 = *(*(a2 + 40) + 8 * v13);
      v16 = *(a1 + 52);
      v17 = *(a1 + 48);
      if (v17 >= v16)
      {
        if (v16 == *(a1 + 56))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40), v16 + 1);
          v16 = *(a1 + 52);
        }

        *(a1 + 52) = v16 + 1;
        operator new();
      }

      v14 = *(a1 + 40);
      *(a1 + 48) = v17 + 1;
      sub_1003422D8(*(v14 + 8 * v17), v15);
      ++v13;
    }

    while (v13 < *(a2 + 48));
  }

  v18 = *(a2 + 88);
  if (v18)
  {
    v19 = *(a1 + 88);
    v20 = *(a1 + 92);
    v21 = v19 + v18;
    if (v20 < v21)
    {
      v22 = 2 * v20;
      if (2 * v20 <= v21)
      {
        v22 = v21;
      }

      if (v22 <= 4)
      {
        v22 = 4;
      }

      *(a1 + 92) = v22;
      operator new[]();
    }

    memcpy((*(a1 + 80) + 4 * v19), *(a2 + 80), 4 * *(a2 + 88));
    *(a1 + 88) += *(a2 + 88);
  }

  v23 = *(a2 + 104);
  if ((v23 & 0x3FC) != 0)
  {
    if ((v23 & 4) != 0)
    {
      *(a1 + 104) |= 4u;
      v24 = *(a1 + 64);
      if (!v24)
      {
        operator new();
      }

      v25 = *(a2 + 64);
      if (!v25)
      {
        v25 = *(qword_100471D00 + 64);
      }

      sub_1003430A4(v24, v25);
      v23 = *(a2 + 104);
    }

    if ((v23 & 8) != 0)
    {
      v26 = *(a2 + 96);
      *(a1 + 104) |= 8u;
      *(a1 + 96) = v26;
      v23 = *(a2 + 104);
    }

    if ((v23 & 0x10) != 0)
    {
      *(a1 + 104) |= 0x10u;
      v27 = *(a1 + 72);
      if (!v27)
      {
        operator new();
      }

      v28 = *(a2 + 72);
      if (!v28)
      {
        v28 = *(qword_100471D00 + 72);
      }

      sub_1003422D8(v27, v28);
    }
  }

  return wireless_diagnostics::google::protobuf::UnknownFieldSet::MergeFrom((a1 + 8), (a2 + 8));
}

void sub_100344320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100344334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_100344368(uint64_t a1)
{
  *a1 = off_10044A9F0;
  if (qword_100471D00 != a1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(a1 + 72);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  if (*(a1 + 80))
  {
    operator delete[]();
  }

  v4 = *(a1 + 52);
  if (v4 >= 1)
  {
    for (i = 0; i < v4; ++i)
    {
      v6 = *(*(a1 + 40) + 8 * i);
      if (v6)
      {
        (*(*v6 + 8))(v6);
        v4 = *(a1 + 52);
      }
    }
  }

  if (*(a1 + 40))
  {
    operator delete[]();
  }

  if (*(a1 + 28) >= 1)
  {
    v7 = 0;
    do
    {
      wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::Delete();
      ++v7;
    }

    while (v7 < *(a1 + 28));
  }

  if (*(a1 + 16))
  {
    operator delete[]();
  }

  wireless_diagnostics::google::protobuf::UnknownFieldSet::~UnknownFieldSet((a1 + 8));

  wireless_diagnostics::google::protobuf::Message::~Message(a1);
}

void sub_100344508(uint64_t a1)
{
  sub_100344368(a1);

  operator delete();
}

uint64_t sub_1003445FC(uint64_t this)
{
  v1 = this;
  v2 = *(this + 104);
  if ((v2 & 0x3FC) != 0)
  {
    if ((v2 & 4) != 0)
    {
      this = *(this + 64);
      if (this)
      {
        v3 = *(this + 8);
        this += 8;
        *(this + 16) = 0;
        *(this + 28) = 0;
        if (v3)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }

    *(v1 + 96) = 1;
    if ((*(v1 + 104) & 0x10) != 0)
    {
      this = *(v1 + 72);
      if (this)
      {
        if ((*(this + 76) & 0x3FC) != 0)
        {
          *(this + 64) = 0;
        }

        v4 = *(this + 8);
        this += 8;
        *(this + 16) = 0;
        *(this + 40) = 0;
        *(this + 68) = 0;
        if (v4)
        {
          this = wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(this);
        }
      }
    }
  }

  if (*(v1 + 24) >= 1)
  {
    v5 = 0;
    do
    {
      while (1)
      {
        v6 = *(*(v1 + 16) + 8 * v5);
        if (*(v6 + 23) < 0)
        {
          break;
        }

        *v6 = 0;
        *(v6 + 23) = 0;
        if (++v5 >= *(v1 + 24))
        {
          goto LABEL_17;
        }
      }

      **v6 = 0;
      *(v6 + 8) = 0;
      ++v5;
    }

    while (v5 < *(v1 + 24));
  }

LABEL_17:
  *(v1 + 24) = 0;
  if (*(v1 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      v8 = *(*(v1 + 40) + 8 * v7);
      this = (*(*v8 + 32))(v8);
      ++v7;
    }

    while (v7 < *(v1 + 48));
  }

  v10 = *(v1 + 8);
  v9 = (v1 + 8);
  *(v9 + 10) = 0;
  *(v9 + 20) = 0;
  *(v9 + 24) = 0;
  if (v10)
  {

    return wireless_diagnostics::google::protobuf::UnknownFieldSet::ClearFallback(v9);
  }

  return this;
}

uint64_t sub_100344764(uint64_t result, wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a3, wireless_diagnostics::google::protobuf::UnknownFieldSet *a4)
{
  v5 = result;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_2:
          v6 = *(this + 1);
          if (v6 >= *(this + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(this);
            v7 = result;
            *(this + 8) = result;
            if (!result)
            {
              return 1;
            }
          }

          else
          {
            *(this + 8) = v7;
            *(this + 1) = v6 + 1;
            if (!v7)
            {
              return 1;
            }
          }

          v8 = v7 >> 3;
          v9 = v7 & 7;
          if (v7 >> 3 > 3)
          {
            break;
          }

          if (v8 == 1)
          {
            if (v9 != 2)
            {
              goto LABEL_44;
            }

            while (1)
            {
              v16 = *(v5 + 28);
              v17 = *(v5 + 24);
              if (v17 >= v16)
              {
                if (v16 == *(v5 + 32))
                {
                  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 16), v16 + 1);
                  v16 = *(v5 + 28);
                }

                *(v5 + 28) = v16 + 1;
                v18 = wireless_diagnostics::google::protobuf::internal::StringTypeHandlerBase::New(result);
                v19 = *(v5 + 16);
                v20 = *(v5 + 24);
                *(v5 + 24) = v20 + 1;
                *(v19 + 8 * v20) = v18;
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                if (!result)
                {
                  return result;
                }
              }

              else
              {
                *(v5 + 24) = v17 + 1;
                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                if (!result)
                {
                  return result;
                }
              }

              v21 = *(this + 1);
              if (v21 >= *(this + 2))
              {
                break;
              }

              v22 = *v21;
              if (v22 != 10)
              {
                if (v22 != 18)
                {
                  goto LABEL_2;
                }

                *(this + 1) = v21 + 1;
                goto LABEL_38;
              }

              *(this + 1) = v21 + 1;
            }
          }

          else
          {
            if (v8 != 2)
            {
              if (v8 == 3 && v9 == 2)
              {
                v10 = *(v5 + 52);
                v11 = *(v5 + 48);
                if (v11 >= v10)
                {
                  goto LABEL_57;
                }

                goto LABEL_13;
              }

              goto LABEL_44;
            }

            if (v9 != 2)
            {
              goto LABEL_44;
            }

LABEL_38:
            *(v5 + 104) |= 0x10u;
            v23 = *(v5 + 72);
            if (!v23)
            {
              operator new();
            }

            v67 = 0;
            v24 = *(this + 1);
            if (v24 >= *(this + 2) || *v24 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v67))
              {
                return 0;
              }
            }

            else
            {
              v67 = *v24;
              *(this + 1) = v24 + 1;
            }

            v27 = *(this + 14);
            v28 = *(this + 15);
            *(this + 14) = v27 + 1;
            if (v27 >= v28)
            {
              return 0;
            }

            v29 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v67);
            if (!sub_1003426E8(v23, this, v30, v31) || *(this + 36) != 1)
            {
              return 0;
            }

            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v29);
            v32 = *(this + 14);
            v33 = __OFSUB__(v32, 1);
            v34 = v32 - 1;
            if (v34 < 0 == v33)
            {
              *(this + 14) = v34;
            }

            v35 = *(this + 1);
            if (v35 < *(this + 2) && *v35 == 26)
            {
              while (1)
              {
                *(this + 1) = v35 + 1;
                v10 = *(v5 + 52);
                v11 = *(v5 + 48);
                if (v11 >= v10)
                {
LABEL_57:
                  if (v10 == *(v5 + 56))
                  {
                    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 40), v10 + 1);
                    v10 = *(v5 + 52);
                  }

                  *(v5 + 52) = v10 + 1;
                  operator new();
                }

LABEL_13:
                v12 = *(v5 + 40);
                *(v5 + 48) = v11 + 1;
                v13 = *(v12 + 8 * v11);
                v67 = 0;
                v36 = *(this + 1);
                if (v36 >= *(this + 2) || *v36 < 0)
                {
                  if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v67))
                  {
                    return 0;
                  }
                }

                else
                {
                  v67 = *v36;
                  *(this + 1) = v36 + 1;
                }

                v37 = *(this + 14);
                v38 = *(this + 15);
                *(this + 14) = v37 + 1;
                if (v37 >= v38)
                {
                  return 0;
                }

                v39 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v67);
                if (!sub_1003426E8(v13, this, v40, v41) || *(this + 36) != 1)
                {
                  return 0;
                }

                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v39);
                v42 = *(this + 14);
                v33 = __OFSUB__(v42, 1);
                v43 = v42 - 1;
                if (v43 < 0 == v33)
                {
                  *(this + 14) = v43;
                }

                v35 = *(this + 1);
                v25 = *(this + 2);
                if (v35 >= v25)
                {
                  break;
                }

                v44 = *v35;
                if (v44 != 26)
                {
                  goto LABEL_71;
                }
              }
            }
          }
        }

        if (v8 == 4)
        {
          break;
        }

        if (v8 == 5)
        {
          if (v9 != 2)
          {
            goto LABEL_44;
          }

LABEL_97:
          *(v5 + 104) |= 4u;
          v55 = *(v5 + 64);
          if (!v55)
          {
            operator new();
          }

          v67 = 0;
          v56 = *(this + 1);
          if (v56 >= *(this + 2) || *v56 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v67))
            {
              return 0;
            }
          }

          else
          {
            v67 = *v56;
            *(this + 1) = v56 + 1;
          }

          v57 = *(this + 14);
          v58 = *(this + 15);
          *(this + 14) = v57 + 1;
          if (v57 >= v58)
          {
            return 0;
          }

          v59 = wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this, v67);
          if (!sub_100343464(v55, this, v60, v61) || *(this + 36) != 1)
          {
            return 0;
          }

          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this, v59);
          v62 = *(this + 14);
          v33 = __OFSUB__(v62, 1);
          v63 = v62 - 1;
          if (v63 < 0 == v33)
          {
            *(this + 14) = v63;
          }

          v65 = *(this + 1);
          v64 = *(this + 2);
          if (v65 < v64 && *v65 == 48)
          {
            v15 = v65 + 1;
            *(this + 1) = v15;
            v67 = 0;
            if (v15 >= v64)
            {
              goto LABEL_115;
            }

LABEL_111:
            v66 = *v15;
            if (v66 < 0)
            {
              goto LABEL_115;
            }

            *(this + 1) = v15 + 1;
            result = sub_1002E3580(v66);
            if (result)
            {
              goto LABEL_113;
            }

LABEL_117:
            result = wireless_diagnostics::google::protobuf::UnknownFieldSet::AddVarint((v5 + 8), 6, v66);
            if (*(this + 1) == *(this + 2))
            {
              goto LABEL_118;
            }
          }
        }

        else
        {
          if (v8 != 6 || (v7 & 7) != 0)
          {
            goto LABEL_44;
          }

          v15 = *(this + 1);
          v14 = *(this + 2);
          v67 = 0;
          if (v15 < v14)
          {
            goto LABEL_111;
          }

LABEL_115:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v67);
          if (!result)
          {
            return result;
          }

          v66 = v67;
          result = sub_1002E3580(v67);
          if (!result)
          {
            goto LABEL_117;
          }

LABEL_113:
          *(v5 + 104) |= 8u;
          *(v5 + 96) = v66;
          if (*(this + 1) == *(this + 2))
          {
LABEL_118:
            if (*(this + 11) || *(this + 6) == *(this + 10))
            {
              *(this + 8) = 0;
              result = 1;
              *(this + 36) = 1;
              return result;
            }
          }
        }
      }

      if ((v7 & 7) != 0)
      {
        break;
      }

      v26 = *(this + 1);
      v25 = *(this + 2);
      while (1)
      {
        v67 = 0;
        if (v26 >= v25 || *v26 < 0)
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v67);
          if (!result)
          {
            return 0;
          }
        }

        else
        {
          v67 = *v26;
          *(this + 1) = v26 + 1;
        }

        v45 = *(v5 + 88);
        v46 = *(v5 + 80);
        if (v45 == *(v5 + 92))
        {
          if (2 * v45 <= v45 + 1)
          {
            v47 = v45 + 1;
          }

          else
          {
            v47 = 2 * v45;
          }

          if (v47 <= 4)
          {
            v47 = 4;
          }

          *(v5 + 92) = v47;
          operator new[]();
        }

        v48 = v67;
        *(v5 + 88) = v45 + 1;
        *(v46 + 4 * v45) = v48;
        v49 = *(v5 + 92) - *(v5 + 88);
        if (v49 >= 1)
        {
          for (i = v49 + 1; i > 1; --i)
          {
            v52 = *(this + 1);
            v53 = *(this + 2);
            if (v52 >= v53 || *v52 != 32)
            {
              break;
            }

            *(this + 1) = v52 + 1;
            if ((v52 + 1) >= v53 || (v54 = v52[1], (v54 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v67);
              if (!result)
              {
                return 0;
              }

              v54 = v67;
              v46 = *(v5 + 80);
            }

            else
            {
              v67 = v52[1];
              *(this + 1) = v52 + 2;
            }

            v51 = *(v5 + 88);
            *(v5 + 88) = v51 + 1;
            *(v46 + 4 * v51) = v54;
          }
        }

LABEL_94:
        v35 = *(this + 1);
        v25 = *(this + 2);
        if (v35 >= v25)
        {
          break;
        }

        v44 = *v35;
        if (v44 == 42)
        {
          *(this + 1) = v35 + 1;
          goto LABEL_97;
        }

LABEL_71:
        if (v44 != 32)
        {
          goto LABEL_2;
        }

        v26 = v35 + 1;
        *(this + 1) = v26;
      }
    }

    if (v9 == 2)
    {
      result = sub_100343714(this, (v5 + 80));
      if (!result)
      {
        return result;
      }

      goto LABEL_94;
    }

LABEL_44:
    if (v9 == 4)
    {
      return 1;
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormat::SkipField(this, v7, v5 + 8, a4);
    if ((result & 1) == 0)
    {
      return 0;
    }
  }
}