float *sub_1003D1168(float *a1, float *a2, float *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_1003D1328(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 > *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          sub_1003D1328(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = v16;
          v18 = &v16[v14];
          v16 = v18 + 1;
          v19 = 2 * v14;
          v14 = (2 * v14) | 1;
          v20 = v19 + 2;
          if (v20 < v8)
          {
            v22 = v18[2];
            v21 = v18 + 2;
            if (*(v21 - 1) > v22)
            {
              v16 = v21;
              v14 = v20;
            }
          }

          *v17 = *v16;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v16 != --v6)
        {
          *v16 = *v6;
          *v6 = v15;
          v23 = (v16 - a1 + 4) >> 2;
          v24 = v23 < 2;
          v25 = v23 - 2;
          if (v24)
          {
            goto LABEL_22;
          }

          v26 = v25 >> 1;
          v27 = &a1[v26];
          v28 = *v27;
          v15 = *v16;
          if (*v27 <= *v16)
          {
            goto LABEL_22;
          }

          do
          {
            *v16 = v28;
            v16 = v27;
            if (!v26)
            {
              break;
            }

            v26 = (v26 - 1) >> 1;
            v27 = &a1[v26];
            v28 = *v27;
          }

          while (*v27 > v15);
        }

        *v16 = v15;
LABEL_22:
        v24 = v8-- <= 2;
      }

      while (!v24);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_1003D1328(uint64_t result, uint64_t a2, uint64_t a3, float *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 2)
    {
      v6 = v4 >> 1;
      v7 = (v4 >> 1) + 1;
      v8 = (result + 4 * v7);
      v9 = v6 + 2;
      if (v9 < a3 && *v8 > v8[1])
      {
        ++v8;
        v7 = v9;
      }

      v10 = *v8;
      v11 = *a4;
      if (*v8 <= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v12 = 2 * v7;
          v7 = (2 * v7) | 1;
          v8 = (result + 4 * v7);
          v13 = v12 + 2;
          if (v13 < a3 && *v8 > v8[1])
          {
            ++v8;
            v7 = v13;
          }

          v10 = *v8;
        }

        while (*v8 <= v11);
        *a4 = v11;
      }
    }
  }

  return result;
}

uint64_t sub_1003D13E4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_1003D1464(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4EE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D4EE0))
  {
    sub_1003D160C(&xmmword_1025D4EC8);
    __cxa_atexit(&std::string::~string, &xmmword_1025D4EC8, dword_100000000);
    __cxa_guard_release(&qword_1025D4EE0);
  }

  if (byte_1025D4EDF < 0)
  {
    sub_100007244(a1, xmmword_1025D4EC8, *(&xmmword_1025D4EC8 + 1));
  }

  else
  {
    *a1 = xmmword_1025D4EC8;
    *(a1 + 16) = unk_1025D4ED8;
  }
}

void sub_1003D1538(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4F00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D4F00))
  {
    sub_1003D1C24(&xmmword_1025D4EE8);
    __cxa_atexit(&std::string::~string, &xmmword_1025D4EE8, dword_100000000);
    __cxa_guard_release(&qword_1025D4F00);
  }

  if (byte_1025D4EFF < 0)
  {
    sub_100007244(a1, xmmword_1025D4EE8, *(&xmmword_1025D4EE8 + 1));
  }

  else
  {
    *a1 = xmmword_1025D4EE8;
    *(a1 + 16) = unk_1025D4EF8;
  }
}

double sub_1003D160C@<D0>(std::string *a1@<X8>)
{
  memset(&v3, 0, sizeof(v3));
  sub_1003D1670(&v3);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_1003D1654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D1670(std::string *a1)
{
  sub_1003D16D8(a1);
  sub_1003957F8(a1);
  sub_1003D17B0(a1);
  sub_1003D1894(a1);
  sub_1003D1978(a1);
  sub_1003D1A5C(a1);
  sub_1003D1B40(a1);

  return sub_10038C868(a1);
}

uint64_t sub_1003D16D8(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 0;
  v7.__r_.__value_.__s.__data_[0] = 0;
  v2 = std::string::append(&v7, "LoiType", 7uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D177C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D17B0(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "Timestamp", 9uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D1860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D1894(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "IsAssociated", 0xCuLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D1944(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D1978(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "MacAddress", 0xAuLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D1A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D1A5C(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "Band", 4uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D1B0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D1B40(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "Channel", 7uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D1BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_1003D1C24@<D0>(std::string *a1@<X8>)
{
  sub_10000EC00(&v11, "VALUES (");
  v2 = 8;
  do
  {
    if (v2 == 8)
    {
      *(&v8.__r_.__value_.__s + 23) = 0;
      v8.__r_.__value_.__s.__data_[0] = 0;
    }

    else
    {
      *(&v8.__r_.__value_.__s + 23) = 2;
      strcpy(&v8, ", ");
    }

    v3 = std::string::append(&v8, "?", 1uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v10 = v3->__r_.__value_.__r.__words[2];
    *__p = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (v10 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if (v10 >= 0)
    {
      v6 = HIBYTE(v10);
    }

    else
    {
      v6 = __p[1];
    }

    std::string::append(&v11, v5, v6);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    --v2;
  }

  while (v2);
  std::string::append(&v11, ")", 1uLL);
  result = *&v11.__r_.__value_.__l.__data_;
  *a1 = v11;
  return result;
}

void sub_1003D1D38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003D1F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 25) < 0)
  {
    operator delete(*(v40 - 48));
  }

  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003D2044(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4F20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D4F20))
  {
    sub_1003D21EC(&xmmword_1025D4F08);
    __cxa_atexit(&std::string::~string, &xmmword_1025D4F08, dword_100000000);
    __cxa_guard_release(&qword_1025D4F20);
  }

  if (byte_1025D4F1F < 0)
  {
    sub_100007244(a1, xmmword_1025D4F08, *(&xmmword_1025D4F08 + 1));
  }

  else
  {
    *a1 = xmmword_1025D4F08;
    *(a1 + 16) = unk_1025D4F18;
  }
}

void sub_1003D2118(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4F40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D4F40))
  {
    sub_1003D2488(&xmmword_1025D4F28);
    __cxa_atexit(&std::string::~string, &xmmword_1025D4F28, dword_100000000);
    __cxa_guard_release(&qword_1025D4F40);
  }

  if (byte_1025D4F3F < 0)
  {
    sub_100007244(a1, xmmword_1025D4F28, *(&xmmword_1025D4F28 + 1));
  }

  else
  {
    *a1 = xmmword_1025D4F28;
    *(a1 + 16) = unk_1025D4F38;
  }
}

double sub_1003D21EC@<D0>(std::string *a1@<X8>)
{
  memset(&v3, 0, sizeof(v3));
  sub_1003D2250(&v3);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_1003D2234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D2250(std::string *a1)
{
  sub_1003CAADC(a1);
  sub_1003D22C0(a1);
  sub_100392B60(a1);
  sub_10038C784(a1);
  sub_1003D0580(a1);
  sub_1003D0664(a1);
  sub_10038C868(a1);
  sub_1003D23A4(a1);

  return sub_100392D28(a1);
}

uint64_t sub_1003D22C0(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "RecordingTimestamp", 0x12uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D2370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D23A4(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "TriggerUUID", 0xBuLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D2454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

double sub_1003D2488@<D0>(std::string *a1@<X8>)
{
  sub_10000EC00(&v11, "VALUES (");
  v2 = 9;
  do
  {
    if (v2 == 9)
    {
      *(&v8.__r_.__value_.__s + 23) = 0;
      v8.__r_.__value_.__s.__data_[0] = 0;
    }

    else
    {
      *(&v8.__r_.__value_.__s + 23) = 2;
      strcpy(&v8, ", ");
    }

    v3 = std::string::append(&v8, "?", 1uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v10 = v3->__r_.__value_.__r.__words[2];
    *__p = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (v10 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if (v10 >= 0)
    {
      v6 = HIBYTE(v10);
    }

    else
    {
      v6 = __p[1];
    }

    std::string::append(&v11, v5, v6);
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v8.__r_.__value_.__l.__data_);
    }

    --v2;
  }

  while (v2);
  std::string::append(&v11, ")", 1uLL);
  result = *&v11.__r_.__value_.__l.__data_;
  *a1 = v11;
  return result;
}

void sub_1003D259C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003D27FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 25) < 0)
  {
    operator delete(*(v40 - 48));
  }

  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003D28A8(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4F60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D4F60))
  {
    sub_1003D2C68(&xmmword_1025D4F48);
    __cxa_atexit(&std::string::~string, &xmmword_1025D4F48, dword_100000000);
    __cxa_guard_release(&qword_1025D4F60);
  }

  if (byte_1025D4F5F < 0)
  {
    sub_100007244(a1, xmmword_1025D4F48, *(&xmmword_1025D4F48 + 1));
  }

  else
  {
    *a1 = xmmword_1025D4F48;
    *(a1 + 16) = unk_1025D4F58;
  }
}

void sub_1003D297C(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_1025D4F80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1025D4F80))
  {
    sub_1003CBB10(&xmmword_1025D4F68);
    __cxa_atexit(&std::string::~string, &xmmword_1025D4F68, dword_100000000);
    __cxa_guard_release(&qword_1025D4F80);
  }

  if (byte_1025D4F7F < 0)
  {
    sub_100007244(a1, xmmword_1025D4F68, *(&xmmword_1025D4F68 + 1));
  }

  else
  {
    *a1 = xmmword_1025D4F68;
    *(a1 + 16) = unk_1025D4F78;
  }
}

void sub_1003D2A50(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1003D2AA8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    sub_1003D2AF8(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1003D2AF8(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_1003D2B50(void ***a1)
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
        v4 -= 48;
        sub_1003D2AF8(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

char *sub_1003D2BD4(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100007244(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  return __dst;
}

void sub_1003D2C4C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

double sub_1003D2C68@<D0>(std::string *a1@<X8>)
{
  memset(&v3, 0, sizeof(v3));
  sub_1003D2CCC(&v3);
  result = *&v3.__r_.__value_.__l.__data_;
  *a1 = v3;
  return result;
}

void sub_1003D2CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D2CCC(std::string *a1)
{
  sub_1003D2D2C(a1);
  sub_1003D2E04(a1);
  sub_1003D2EE8(a1);
  sub_1003D2FCC(a1);
  sub_10038C868(a1);
  sub_10038C5BC(a1);

  return sub_1003957F8(a1);
}

uint64_t sub_1003D2D2C(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 0;
  v7.__r_.__value_.__s.__data_[0] = 0;
  v2 = std::string::append(&v7, "ModelUUID", 9uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D2DD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D2E04(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "GenerationTimestamp", 0x13uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D2EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D2EE8(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "ModelType", 9uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D2F98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D2FCC(std::string *a1)
{
  *(&v7.__r_.__value_.__s + 23) = 2;
  strcpy(&v7, ", ");
  v2 = std::string::append(&v7, "Model", 5uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v9 = v2->__r_.__value_.__r.__words[2];
  *__p = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (v9 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if (v9 >= 0)
  {
    v5 = HIBYTE(v9);
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1, v4, v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_1003D307C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003D32C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 25) < 0)
  {
    operator delete(*(v40 - 48));
  }

  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003D3370()
{
  v0 = type metadata accessor for Logger();
  sub_1003D65A0(v0, qword_1026560E0);
  sub_1003134C0(v0, qword_1026560E0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1003D342C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  LOBYTE(a7) = a7(v8, v10, v11, v13, v14, v16, ObjCClassMetadata);

  return a7 & 1;
}

uint64_t sub_1003D350C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 28)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 28)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_100134768(a1, a2);
      v7 = type metadata accessor for CryptoKitError();
      sub_1003D66B8(&qword_1025D4FC8, &type metadata accessor for CryptoKitError, &protocol conformance descriptor for CryptoKitError);
      swift_allocError();
      (*(*(v7 - 8) + 104))(v8, enum case for CryptoKitError.incorrectParameterSize(_:), v7);
      return swift_willThrow();
    }

    goto LABEL_35;
  }

  if (BYTE6(a2) < 0x1CuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29[3] = &type metadata for Data;
  v29[4] = &protocol witness table for Data;
  v29[0] = a1;
  v29[1] = a2;
  v10 = sub_1003D6510(v29, &type metadata for Data);
  v11 = *v10;
  v12 = v10[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v27, 0, 14);
      v15 = v27;
      v14 = v27;
      goto LABEL_33;
    }

    v16 = *(v11 + 16);
    v17 = *(v11 + 24);
    v18 = __DataStorage._bytes.getter();
    if (v18)
    {
      v19 = __DataStorage._offset.getter();
      v11 = v16 - v19;
      if (__OFSUB__(v16, v19))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v18 += v11;
    }

    v5 = __OFSUB__(v17, v16);
    v20 = v17 - v16;
    if (!v5)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v13)
  {
LABEL_21:
    v21 = v11;
    v22 = v11 >> 32;
    v20 = v22 - v21;
    if (v22 >= v21)
    {
      v18 = __DataStorage._bytes.getter();
      if (!v18)
      {
LABEL_25:
        v24 = __DataStorage._length.getter();
        if (v24 >= v20)
        {
          v25 = v20;
        }

        else
        {
          v25 = v24;
        }

        v26 = (v25 + v18);
        if (v18)
        {
          v14 = v26;
        }

        else
        {
          v14 = 0;
        }

        v15 = v18;
        goto LABEL_33;
      }

      v23 = __DataStorage._offset.getter();
      if (!__OFSUB__(v21, v23))
      {
        v18 += v21 - v23;
        goto LABEL_25;
      }

LABEL_38:
      __break(1u);
    }

    goto LABEL_36;
  }

  v27[0] = *v10;
  LOWORD(v27[1]) = v12;
  BYTE2(v27[1]) = BYTE2(v12);
  BYTE3(v27[1]) = BYTE3(v12);
  BYTE4(v27[1]) = BYTE4(v12);
  BYTE5(v27[1]) = BYTE5(v12);
  v14 = v27 + BYTE6(v12);
  v15 = v27;
LABEL_33:
  sub_1003D39E4(v15, v14, &v28);
  sub_1003D6554(v29);
  return AES.GCM.SealedBox.init(combined:)();
}

Class sub_1003D381C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v7 = a3;
  v8 = a4;
  v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  v15 = a5(v9, v11, v12, v14);
  v17 = v16;

  sub_100134768(v9, v11);
  if (v17 >> 60 == 15)
  {
    v18 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1003D6460(v15, v17);
    v18 = isa;
  }

  return v18;
}

id sub_1003D3904()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1003D3938()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CLMicroLocationEncryption();
  return objc_msgSendSuper2(&v2, "init");
}

id sub_1003D39AC(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CLMicroLocationEncryption();
  return objc_msgSendSuper2(&v4, "dealloc");
}

_BYTE *sub_1003D39E4@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100134980(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1003D633C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1003D63B8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1003D3A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (&class metadata base offset for ArchiveEncryptionContext)
  {
    v7 = &type metadata accessor for ArchiveEncryptionContext == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || &type metadata for ArchiveEncryptionContext == 0 || &metaclass for ArchiveEncryptionContext == 0 || &nominal type descriptor for ArchiveEncryptionContext == 0 || &class metadata base offset for ArchiveByteStream == 0 || &protocol conformance descriptor for ArchiveByteStream == 0 || &protocol witness table for ArchiveByteStream == 0 || &type metadata accessor for ArchiveByteStream == 0 || &type metadata for ArchiveByteStream == 0 || &metaclass for ArchiveByteStream == 0 || &nominal type descriptor for ArchiveByteStream == 0)
  {
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1003134C0(v18, qword_1026560E0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_41;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "encryptFile: AppleArchive Library not loaded. method aborted.";
    goto LABEL_40;
  }

  if (!&protocol conformance descriptor for SymmetricKey || !&type metadata accessor for SymmetricKey || !&nominal type descriptor for SymmetricKey || !&type metadata for SymmetricKey)
  {
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1003134C0(v39, qword_1026560E0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_41;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "encryptFile: CryptoKit Frameowrk not loaded. method aborted.";
LABEL_40:
    _os_log_impl(dword_100000000, v19, v20, v22, v21, 2u);

LABEL_41:

    return 0;
  }

  v24 = type metadata accessor for FilePath();
  v82 = v73;
  v79 = *(v24 - 8);
  v80 = v24;
  v25 = *(v79 + 64);
  __chkstk_darwin(v24);

  v83 = v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = FilePath.init(_:)();
  v81 = v73;
  __chkstk_darwin(v26);
  v27 = v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);

  FilePath.init(_:)();
  v28 = type metadata accessor for ArchiveEncryptionContext.Profile();
  __chkstk_darwin(v28 - 8);
  static ArchiveEncryptionContext.Profile.hkdf_sha256_aesctr_hmac__symmetric__none.getter();
  v29 = type metadata accessor for ArchiveCompression();
  __chkstk_darwin(v29 - 8);
  static ArchiveCompression.lzfse.getter();
  type metadata accessor for ArchiveEncryptionContext();
  swift_allocObject();
  v84 = ArchiveEncryptionContext.init(profile:compressionAlgorithm:compressionBlockSize:)();
  v30 = type metadata accessor for SymmetricKey();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1003D6474(&qword_1025D4FB0, &qword_101C663F0);
  __chkstk_darwin(v34 - 8);
  v36 = v73 - v35;
  v37 = String._bridgeToObjectiveC()();
  v38 = [swift_getObjCClassFromMetadata() retrieveSymmetricKey:v37];

  if (v38)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v85 = 0u;
    v86 = 0u;
  }

  v87[0] = v85;
  v87[1] = v86;
  v40 = v83;
  if (!*(&v86 + 1))
  {
    sub_1003D6658(v87, &qword_1025D4FB8, &qword_101C663F8);
    (*(v31 + 56))(v36, 1, 1, v30);
    goto LABEL_58;
  }

  v41 = swift_dynamicCast();
  (*(v31 + 56))(v36, v41 ^ 1u, 1, v30);
  if ((*(v31 + 48))(v36, 1, v30) == 1)
  {
LABEL_58:
    sub_1003D6658(v36, &qword_1025D4FB0, &qword_101C663F0);
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_1003134C0(v42, qword_1026560E0);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(dword_100000000, v43, v44, "Failed to retrieve symmetric key for file encryption", v45, 2u);
    }

    v46 = v80;
    v47 = *(v79 + 8);
    v47(v27, v80);
    v47(v40, v46);
    return 0;
  }

  (*(v31 + 32))(v33, v36, v30);
  dispatch thunk of ArchiveEncryptionContext.setSymmetricKey(_:)();
  type metadata accessor for ArchiveByteStream();
  v48 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
  if (!v48)
  {
    v56 = v33;
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    sub_1003134C0(v57, qword_1026560E0);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(dword_100000000, v58, v59, "Failed to create input file stream for encryption", v60, 2u);
    }

    goto LABEL_77;
  }

  v49 = v48;
  v50 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
  if (!v50)
  {
    v56 = v33;
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    sub_1003134C0(v61, qword_1026560E0);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(dword_100000000, v62, v63, "Failed to create output file stream for encryption", v64, 2u);
    }

LABEL_77:

    (*(v31 + 8))(v56, v30);
LABEL_78:
    v65 = v80;
    v66 = *(v79 + 8);
    v66(v27, v80);
    v66(v40, v65);
    return 0;
  }

  v77 = v49;
  v78 = v33;
  v51 = v50;
  v52 = type metadata accessor for ArchiveFlags();
  v75 = v73;
  v74 = *(v52 - 8);
  __chkstk_darwin(v52);
  v54 = v73 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v87[0] = &_swiftEmptyArrayStorage;
  v76 = sub_1003D66B8(&qword_1025D4FE0, &type metadata accessor for ArchiveFlags, &protocol conformance descriptor for ArchiveFlags);
  sub_1003D6474(&qword_1025D4FE8, &unk_101C66410);
  sub_1003D6700();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v76 = v51;
  v55 = static ArchiveByteStream.encryptionStream(writingTo:encryptionContext:flags:threadCount:)();
  (*(v74 + 8))(v54, v52);
  if (!v55)
  {
    v40 = v83;
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v67 = type metadata accessor for Logger();
    sub_1003134C0(v67, qword_1026560E0);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(dword_100000000, v68, v69, "Failed to create encryption stream", v70, 2u);
    }

    (*(v31 + 8))(v78, v30);
    goto LABEL_78;
  }

  static ArchiveByteStream.process(readingFrom:writingTo:)();
  v73[1] = v73;
  dispatch thunk of ArchiveByteStream.close()();
  dispatch thunk of ArchiveByteStream.close()();
  dispatch thunk of ArchiveByteStream.close()();

  (*(v31 + 8))(v78, v30);
  v71 = v80;
  v72 = *(v79 + 8);
  v72(v27, v80);
  v72(v83, v71);
  return 1;
}

uint64_t sub_1003D4AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (&class metadata base offset for ArchiveEncryptionContext)
  {
    v7 = &type metadata accessor for ArchiveEncryptionContext == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || &type metadata for ArchiveEncryptionContext == 0 || &metaclass for ArchiveEncryptionContext == 0 || &nominal type descriptor for ArchiveEncryptionContext == 0 || &class metadata base offset for ArchiveByteStream == 0 || &protocol conformance descriptor for ArchiveByteStream == 0 || &protocol witness table for ArchiveByteStream == 0 || &type metadata accessor for ArchiveByteStream == 0 || &type metadata for ArchiveByteStream == 0 || &metaclass for ArchiveByteStream == 0 || &nominal type descriptor for ArchiveByteStream == 0)
  {
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1003134C0(v18, qword_1026560E0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_41;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "decryptFile: AppleArchive Frameowrk not loaded. method aborted.";
    goto LABEL_40;
  }

  if (!&protocol conformance descriptor for SymmetricKey || !&type metadata accessor for SymmetricKey || !&nominal type descriptor for SymmetricKey || !&type metadata for SymmetricKey)
  {
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_1003134C0(v36, qword_1026560E0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_41;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "decryptFile: CryptoKit Frameowrk not loaded. method aborted.";
LABEL_40:
    _os_log_impl(dword_100000000, v19, v20, v22, v21, 2u);

LABEL_41:

    return 0;
  }

  v24 = type metadata accessor for FilePath();
  v87 = v77;
  v84 = *(v24 - 8);
  v85 = v24;
  v25 = *(v84 + 64);
  __chkstk_darwin(v24);

  v88 = v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = FilePath.init(_:)();
  v86 = v77;
  __chkstk_darwin(v26);
  v27 = v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);

  FilePath.init(_:)();
  v28 = type metadata accessor for SymmetricKey();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v83 = v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1003D6474(&qword_1025D4FB0, &qword_101C663F0);
  __chkstk_darwin(v31 - 8);
  v33 = v77 - v32;
  v34 = String._bridgeToObjectiveC()();
  v35 = [swift_getObjCClassFromMetadata() retrieveSymmetricKey:v34];

  if (v35)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v89 = 0u;
    v90 = 0u;
  }

  v91[0] = v89;
  v91[1] = v90;
  v37 = v88;
  if (!*(&v90 + 1))
  {
    sub_1003D6658(v91, &qword_1025D4FB8, &qword_101C663F8);
    (*(v29 + 56))(v33, 1, 1, v28);
    goto LABEL_60;
  }

  v38 = swift_dynamicCast();
  (*(v29 + 56))(v33, v38 ^ 1u, 1, v28);
  if ((*(v29 + 48))(v33, 1, v28) == 1)
  {
LABEL_60:
    sub_1003D6658(v33, &qword_1025D4FB0, &qword_101C663F0);
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_1003134C0(v43, qword_1026560E0);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(dword_100000000, v44, v45, "Failed to retrieve symmetric key for file decryption", v46, 2u);
    }

    v47 = v85;
    v48 = *(v84 + 8);
    v48(v27, v85);
    v48(v37, v47);
    return 0;
  }

  (*(v29 + 32))(v83, v33, v28);
  type metadata accessor for ArchiveByteStream();
  v39 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
  if (!v39)
  {
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_1003134C0(v49, qword_1026560E0);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(dword_100000000, v50, v51, "Failed to open source archive file for decryption", v52, 2u);
    }

    goto LABEL_74;
  }

  v40 = v39;
  type metadata accessor for ArchiveEncryptionContext();
  swift_allocObject();

  v41 = ArchiveEncryptionContext.init(from:)();
  if (!v41)
  {
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    sub_1003134C0(v53, qword_1026560E0);
    v50 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(dword_100000000, v50, v54, "Failed to create archive context for decryption", v55, 2u);
    }

LABEL_74:

LABEL_75:
    (*(v29 + 8))(v83, v28);
    v56 = v85;
    v57 = *(v84 + 8);
    v57(v27, v85);
    v57(v37, v56);
    return 0;
  }

  v42 = v41;
  dispatch thunk of ArchiveEncryptionContext.setSymmetricKey(_:)();
  v82 = v42;
  v58 = type metadata accessor for ArchiveFlags();
  v79 = v77;
  v78 = *(v58 - 8);
  __chkstk_darwin(v58);
  v80 = v40;
  v60 = v77 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v91[0] = &_swiftEmptyArrayStorage;
  v77[1] = sub_1003D66B8(&qword_1025D4FE0, &type metadata accessor for ArchiveFlags, &protocol conformance descriptor for ArchiveFlags);
  sub_1003D6474(&qword_1025D4FE8, &unk_101C66410);
  sub_1003D6700();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v61 = static ArchiveByteStream.decryptionStream(readingFrom:encryptionContext:flags:threadCount:)();
  (*(v78 + 8))(v60, v58);
  if (!v61)
  {
    v37 = v88;
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_1003134C0(v64, qword_1026560E0);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(dword_100000000, v65, v66, "Failed to create decryption stream", v67, 2u);
    }

    goto LABEL_75;
  }

  v62 = static ArchiveByteStream.fileStream(path:mode:options:permissions:)();
  v63 = v88;
  if (!v62)
  {
    v68 = v88;
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_1003134C0(v69, qword_1026560E0);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(dword_100000000, v70, v71, "Failed to create output file stream for decryption", v72, 2u);
    }

    (*(v29 + 8))(v83, v28);
    v73 = v85;
    v74 = *(v84 + 8);
    v74(v27, v85);
    v74(v68, v73);
    return 0;
  }

  v79 = v62;
  static ArchiveByteStream.process(readingFrom:writingTo:)();
  v81 = v77;
  dispatch thunk of ArchiveByteStream.close()();
  dispatch thunk of ArchiveByteStream.close()();
  dispatch thunk of ArchiveByteStream.close()();

  (*(v29 + 8))(v83, v28);
  v75 = v85;
  v76 = *(v84 + 8);
  v76(v27, v85);
  v76(v63, v75);
  return 1;
}

uint64_t sub_1003D5B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (&protocol conformance descriptor for SymmetricKey)
  {
    v4 = &type metadata accessor for SymmetricKey == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || &nominal type descriptor for SymmetricKey == 0 || &type metadata for SymmetricKey == 0 || &type metadata accessor for AES == 0 || &nominal type descriptor for AES == 0 || &type metadata for AES == 0)
  {
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1003134C0(v10, qword_1026560E0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_26;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "encryptData: CryptoKit Frameowrk not loaded. method aborted.";
    goto LABEL_25;
  }

  v20 = type metadata accessor for SymmetricKey();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1003D6474(&qword_1025D4FB0, &qword_101C663F0);
  __chkstk_darwin(v24 - 8);
  v26 = &v40 - v25;
  type metadata accessor for CLMicroLocationKeychain();
  sub_1003D778C(a3, a4, v45);
  if (!v45[3])
  {
    sub_1003D6658(v45, &qword_1025D4FB8, &qword_101C663F8);
    (*(v21 + 56))(v26, 1, 1, v20);
    goto LABEL_31;
  }

  v27 = swift_dynamicCast();
  (*(v21 + 56))(v26, v27 ^ 1u, 1, v20);
  if ((*(v21 + 48))(v26, 1, v20) == 1)
  {
LABEL_31:
    sub_1003D6658(v26, &qword_1025D4FB0, &qword_101C663F0);
    if (qword_1026560D8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1003134C0(v38, qword_1026560E0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_26;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "Failed to retrieve symmetric key for data encryption";
LABEL_25:
    _os_log_impl(dword_100000000, v11, v12, v14, v13, 2u);

LABEL_26:

    return 0;
  }

  v44 = &v40;
  (*(v21 + 32))(v23, v26, v20);
  v28 = type metadata accessor for AES.GCM.Nonce();
  v43 = &v40;
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  AES.GCM.Nonce.init()();
  v41 = type metadata accessor for AES.GCM.SealedBox();
  v42 = &v40;
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v33 = &v40 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45[0] = a1;
  v45[1] = a2;
  v34 = sub_1003D6474(&qword_1025D4FD0, &qword_101C66408);
  v35 = __chkstk_darwin(v34 - 8);
  v37 = &v40 - v36;
  (*(v29 + 16))(&v40 - v36, v31, v28, v35);
  (*(v29 + 56))(v37, 0, 1, v28);
  sub_1003D6604();
  static AES.GCM.seal<A>(_:using:nonce:)();
  sub_1003D6658(v37, &qword_1025D4FD0, &qword_101C66408);
  v39 = AES.GCM.SealedBox.combined.getter();
  (*(v40 + 8))(v33, v41);
  (*(v29 + 8))(v31, v28);
  (*(v21 + 8))(v23, v20);
  return v39;
}

uint64_t sub_1003D633C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1003D63B8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1003D6460(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100134768(result, a2);
  }

  return result;
}

uint64_t sub_1003D6474(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1003D64BC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *sub_1003D6510(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1003D6554(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t *sub_1003D65A0(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1003D6604()
{
  result = qword_1025D4FD8;
  if (!qword_1025D4FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1025D4FD8);
  }

  return result;
}

uint64_t sub_1003D6658(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1003D6474(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1003D66B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1003D6700()
{
  result = qword_1025D4FF0;
  if (!qword_1025D4FF0)
  {
    sub_1003D6764(&qword_1025D4FE8, &unk_101C66410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1025D4FF0);
  }

  return result;
}

uint64_t sub_1003D6764(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1003D67AC()
{
  v0 = type metadata accessor for Logger();
  sub_1003D65A0(v0, qword_102656100);
  sub_1003134C0(v0, qword_102656100);
  return Logger.init(subsystem:category:)();
}

void sub_1003D6830(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (&protocol conformance descriptor for SymmetricKey)
  {
    v4 = &type metadata accessor for SymmetricKey == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || &nominal type descriptor for SymmetricKey == 0 || &type metadata for SymmetricKey == 0)
  {
    if (qword_1026560F8 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1003134C0(v21, qword_102656100);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(dword_100000000, v22, v23, "getSymmetricKeyOrCreateNew: CryptoKit Frameowrk not loaded. method aborted.", v24, 2u);
    }

    *a3 = 0u;
    a3[1] = 0u;
    return;
  }

  v59 = a3;
  v63 = 0;
  v9 = sub_1003D6474(&qword_1025D4FB0, &qword_101C663F0);
  v58 = &v51;
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v51 - v11;
  v56 = a1;
  v57 = a2;
  v13 = sub_1003D6F98(a1, a2, &v63, &v51 - v11);
  __chkstk_darwin(v13);
  sub_1003DA170(&v51 - v11, &v51 - v11, &qword_1025D4FB0, &qword_101C663F0);
  v14 = type metadata accessor for SymmetricKey();
  v15 = *(v14 - 8);
  v16 = v15 + 48;
  v60 = *(v15 + 48);
  v17 = v60(&v51 - v11, 1, v14);
  v18 = sub_1003D82CC(&v51 - v11);
  if (v17 == 1 && v63 == -25300)
  {
    __chkstk_darwin(v18);
    v25 = type metadata accessor for SymmetricKeySize();
    __chkstk_darwin(v25 - 8);
    static SymmetricKeySize.bits256.getter();
    SymmetricKey.init(size:)();
    sub_1003D82CC(&v51 - v11);
    v55 = v15;
    (*(v15 + 56))(&v51 - v11, 0, 1, v14);
    v26 = sub_1003D8398(&v51 - v11, &v51 - v11);
    __chkstk_darwin(v26);
    sub_1003DA170(&v51 - v11, &v51 - v11, &qword_1025D4FB0, &qword_101C663F0);
    v27 = v60;
    v28 = v60(&v51 - v11, 1, v14);
    v29 = sub_1003D82CC(&v51 - v11);
    if (v28 == 1)
    {
LABEL_24:
      if (qword_1026560F8 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_1003134C0(v30, qword_102656100);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();
      v33 = os_log_type_enabled(v31, v32);
      v34 = v59;
      if (v33)
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(dword_100000000, v31, v32, "Failed to generate a symmetric key", v35, 2u);
      }

      sub_1003D82CC(v12);
      *v34 = 0u;
      v34[1] = 0u;
      return;
    }

    v52 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
    __chkstk_darwin(v29);
    v54 = v10;
    sub_1003DA170(v12, &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1025D4FB0, &qword_101C663F0);
    v53 = v16;
    if (v27(&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v14) != 1)
    {
      sub_1003D8408();
      dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
      v39 = v61;
      v38 = v62;
      v40 = *(v55 + 8);
      v40(&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
      v41 = v38 >> 62;
      if ((v38 >> 62) > 1)
      {
        if (v41 != 2)
        {
          sub_100134768(v39, v38);
          goto LABEL_24;
        }

        v44 = &v51 - v11;
        v46 = *(v39 + 16);
        v45 = *(v39 + 24);
        v42 = sub_100134768(v39, v38);
        v47 = v45 - v46;
        if (!__OFSUB__(v45, v46))
        {
          v12 = v44;
          if (!v47)
          {
            goto LABEL_24;
          }

LABEL_41:
          __chkstk_darwin(v42);
          v49 = &v51 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
          sub_1003DA170(v12, v49, &qword_1025D4FB0, &qword_101C663F0);
          if (v27(v49, 1, v14) != 1)
          {
            v50 = sub_1003D9910(v49, v56, v57);
            v18 = (v40)(v49, v14);
            v15 = v55;
            v11 = v52;
            if (!v50)
            {
              sub_1003D82CC(v12);
              goto LABEL_17;
            }

            goto LABEL_15;
          }

LABEL_48:
          __break(1u);
          return;
        }

        __break(1u);
      }

      else
      {
        if (!v41)
        {
          v42 = sub_100134768(v39, v38);
          v43 = BYTE6(v38);
          goto LABEL_40;
        }

        v42 = sub_100134768(v39, v38);
        LODWORD(v43) = HIDWORD(v39) - v39;
        if (!__OFSUB__(HIDWORD(v39), v39))
        {
          v43 = v43;
LABEL_40:
          if (!v43)
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_48;
  }

LABEL_15:
  __chkstk_darwin(v18);
  sub_1003DA170(v12, &v51 - v11, &qword_1025D4FB0, &qword_101C663F0);
  if (v60(&v51 - v11, 1, v14) == 1)
  {
    sub_1003D82CC(v12);
    sub_1003D82CC(&v51 - v11);
LABEL_17:
    v20 = v59;
    *v59 = 0u;
    v20[1] = 0u;
    return;
  }

  v36 = v59;
  *(v59 + 3) = v14;
  v37 = sub_1003D8334(v36);
  (*(v15 + 32))(v37, &v51 - v11, v14);
  sub_1003D82CC(v12);
}

uint64_t sub_1003D6F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, OSStatus *a3@<X2>, char *a4@<X8>)
{
  v51 = a3;
  v48[1] = a2;
  v49 = a1;
  v48[0] = a4;
  sub_1003D6474(&qword_1025D5000, &qword_101C66448);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101C66420;
  *(inited + 32) = kSecClass;
  v50 = inited + 32;
  type metadata accessor for CFString();
  *(inited + 40) = kSecClassKey;
  *(inited + 64) = v6;
  *(inited + 72) = kSecUseDataProtectionKeychain;
  *(inited + 80) = 1;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 112) = kSecAttrAccessible;
  *(inited + 120) = kSecAttrAccessibleWhenUnlocked;
  *(inited + 144) = v6;
  *(inited + 152) = kSecAttrSynchronizable;
  *(inited + 160) = 1;
  *(inited + 184) = &type metadata for Bool;
  *(inited + 192) = kSecAttrApplicationLabel;
  *(inited + 200) = v49;
  *(inited + 208) = a2;
  *(inited + 224) = &type metadata for String;
  *(inited + 232) = kSecReturnData;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  v7 = kSecClass;
  v8 = kSecClassKey;
  v9 = kSecUseDataProtectionKeychain;
  v10 = kSecAttrAccessible;
  v11 = kSecAttrAccessibleWhenUnlocked;
  v12 = kSecAttrSynchronizable;
  v13 = kSecAttrApplicationLabel;

  v14 = kSecReturnData;
  sub_1003D97E8(inited);
  swift_setDeallocating();
  sub_1003D6474(&qword_1025D5008, &unk_101C66450);
  swift_arrayDestroy();
  v54 = 0;
  v15 = sub_1003D6474(&qword_1025D4FB0, &qword_101C663F0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v48 - v17;
  v19 = type metadata accessor for SymmetricKey();
  v20 = *(*(v19 - 8) + 56);
  v20(v18, 1, 1, v19);
  sub_1003D9CFC();
  sub_1003D9D48();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v22 = SecItemCopyMatching(isa, &v54);

  v23 = v54;
  *v51 = v22;
  if (v22 == -25300)
  {
    if (qword_1026560F8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1003134C0(v26, qword_102656100);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(dword_100000000, v27, v28, "key not found in keychain", v29, 2u);
    }

    goto LABEL_24;
  }

  if (v22)
  {
    if (qword_1026560F8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1003134C0(v30, qword_102656100);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v53[0] = v34;
      *v33 = 67109378;
      *(v33 + 4) = v22;
      *(v33 + 8) = 2080;
      v35 = SecCopyErrorMessageString(v22, 0);
      if (v35)
      {
        v36 = v35;
        v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v39 = v38;

        v40 = v37;
      }

      else
      {
        LODWORD(v52) = v22;
        v40 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v45;
      }

      v46 = sub_1003D8454(v40, v39, v53);

      *(v33 + 10) = v46;
      _os_log_impl(dword_100000000, v31, v32, "Failed to retrieve key from keychain, error %d, %s", v33, 0x12u);
      sub_1003D6554(v34);
    }

    goto LABEL_24;
  }

  if (v23)
  {
    v52 = v23;
    swift_unknownObjectRetain();
    v24 = swift_dynamicCast();
    if (v24)
    {
      *&v25 = __chkstk_darwin(v24);
      *v53 = v25;
      SymmetricKey.init<A>(data:)();
      sub_1003D82CC(v18);
      v20(v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), 0, 1, v19);
      sub_1003D8398(v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
LABEL_24:
      sub_1003D8398(v18, v48[0]);
      return swift_unknownObjectRelease();
    }
  }

  if (qword_1026560F8 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_1003134C0(v41, qword_102656100);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(dword_100000000, v42, v43, "Failed to get key from keychain. Got invalid data", v44, 2u);
  }

  sub_1003D82CC(v18);
  v20(v48[0], 1, 1, v19);
  return swift_unknownObjectRelease();
}

void sub_1003D778C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (&protocol conformance descriptor for SymmetricKey)
  {
    v4 = &type metadata accessor for SymmetricKey == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || &nominal type descriptor for SymmetricKey == 0 || &type metadata for SymmetricKey == 0)
  {
    if (qword_1026560F8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1003134C0(v14, qword_102656100);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(dword_100000000, v15, v16, "retrieveSymmetricKey: CryptoKit Frameowrk not loaded. method aborted.", v17, 2u);
    }

    goto LABEL_18;
  }

  v9 = sub_1003D6474(&qword_1025D4FB0, &qword_101C663F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19[-v10];
  sub_1003D6F98(a1, a2, &v20, &v19[-v10]);
  v12 = type metadata accessor for SymmetricKey();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1003D82CC(v11);
LABEL_18:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  *(a3 + 24) = v12;
  v18 = sub_1003D8334(a3);
  (*(v13 + 32))(v18, v11, v12);
}

void sub_1003D7A64(UInt8 *bytes@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (bytes)
  {
    v4 = a2 - bytes;
  }

  else
  {
    v4 = 0;
  }

  v5 = CFDataCreateWithBytesNoCopy(0, bytes, v4, kCFAllocatorNull);
  if (v5)
  {
    v6 = v5;
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xC000000000000000;
  }

  *a3 = v7;
  a3[1] = v9;
}

uint64_t sub_1003D7B00@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result == 0x79656B5F6F6ELL && a2 == 0xE600000000000000;
  if (v4 || (v6 = result, result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    v7 = type metadata accessor for SymmetricKey();
    v27 = &v27;
    v8 = *(v7 - 8);
    v9 = *(v8 + 64);
    __chkstk_darwin(v7);
    v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
    v11 = &v27 - v10;
    if (qword_102656118 != -1)
    {
      swift_once();
    }

    v12 = swift_beginAccess();
    v13 = qword_102656120;
    __chkstk_darwin(v12);
    v14 = &v27 - v10;
    if (*(v13 + 16) && (v15 = sub_1003D8A40(v6, a2), (v16 & 1) != 0))
    {
      (*(v8 + 16))(v14, *(v13 + 56) + *(v8 + 72) * v15, v7);
      v17 = *(v8 + 32);
      v17(v11, v14, v7);
      swift_endAccess();
      *(a3 + 24) = v7;
      v18 = sub_1003D8334(a3);
      return (v17)(v18, v11, v7);
    }

    else
    {
      v19 = swift_endAccess();
      __chkstk_darwin(v19);
      v20 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v21 = type metadata accessor for SymmetricKeySize();
      __chkstk_darwin(v21 - 8);
      static SymmetricKeySize.bits256.getter();
      SymmetricKey.init(size:)();
      v22 = sub_1003D6474(&qword_1025D4FB0, &qword_101C663F0);
      v23 = __chkstk_darwin(v22 - 8);
      v25 = &v27 - v24;
      (*(v8 + 16))(&v27 - v24, v20, v7, v23);
      (*(v8 + 56))(v25, 0, 1, v7);
      swift_beginAccess();

      sub_1003D7EB0(v25, v6, a2);
      swift_endAccess();
      *(a3 + 24) = v7;
      v26 = sub_1003D8334(a3);
      return (*(v8 + 32))(v26, v20, v7);
    }
  }

  return result;
}

uint64_t sub_1003D7EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for SymmetricKey();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(a1, 1, v7);
  if (v9 == 1)
  {
    sub_1003D82CC(a1);
    v10 = sub_1003D6474(&qword_1025D4FB0, &qword_101C663F0);
    __chkstk_darwin(v10 - 8);
    v12 = &v18 - v11;
    sub_1003D8C34(a2, a3, &v18 - v11);

    return sub_1003D82CC(v12);
  }

  else
  {
    v14 = __chkstk_darwin(v9);
    v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 32))(v16, a1, v7, v14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1003D9338(v16, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  return result;
}

id sub_1003D8080(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, uint64_t))
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  a4(v14, v5);

  v6 = v15;
  if (v15)
  {
    v7 = sub_1003D6510(v14, v15);
    v8 = *(v6 - 8);
    v9 = __chkstk_darwin(v7);
    v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v11, v9);
    v12 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v8 + 8))(v11, v6);
    sub_1003D6554(v14);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_1003D81E4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "init");
}

id sub_1003D8234(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, "init");
}

id sub_1003D8290(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1003D82CC(uint64_t a1)
{
  v2 = sub_1003D6474(&qword_1025D4FB0, &qword_101C663F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1003D8334(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1003D8398(uint64_t a1, uint64_t a2)
{
  v4 = sub_1003D6474(&qword_1025D4FB0, &qword_101C663F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1003D8408()
{
  result = qword_1025D4FF8;
  if (!qword_1025D4FF8)
  {
    type metadata accessor for SymmetricKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1025D4FF8);
  }

  return result;
}

unint64_t sub_1003D8454(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1003D8520(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1003DA110(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1003D6554(v11);
  return v7;
}

unint64_t sub_1003D8520(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1003D862C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1003D862C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1003D8678(a1, a2);
  sub_1003D87A8(&off_102449EE8);
  return v3;
}

char *sub_1003D8678(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1003D8894(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1003D8894(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1003D87A8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1003D8908(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1003D8894(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_1003D6474(&qword_1025D5080, &qword_101C664C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1003D8908(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1003D6474(&qword_1025D5080, &qword_101C664C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1003D89FC(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_1003D8AB8(a1, v4);
}

unint64_t sub_1003D8A40(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1003D8B7C(a1, a2, v4);
}

unint64_t sub_1003D8AB8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1003D9CFC();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1003D8B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1003D8C34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1003D8A40(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1003D9568();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = type metadata accessor for SymmetricKey();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_1003D914C(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = type metadata accessor for SymmetricKey();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

Swift::Int sub_1003D8DA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1003D6474(&qword_1025D5078, &qword_101C664C0);
  v41 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v39 = v2;
    v40 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v44 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = type metadata accessor for SymmetricKey();
      v43 = &v39;
      v22 = *(v21 - 8);
      v24 = __chkstk_darwin(v21);
      v25 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
      v26 = *(v5 + 56);
      v27 = (*(v5 + 48) + 16 * v20);
      v28 = v27[1];
      v45 = *v27;
      v42 = *(v29 + 72);
      v30 = v26 + v42 * v20;
      if (v41)
      {
        (*(v22 + 32))(&v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v21, v24);
      }

      else
      {
        (*(v22 + 16))(&v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v21, v24);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v45;
      v16[1] = v28;
      result = (*(v22 + 32))(*(v7 + 56) + v42 * v15, v25, v21);
      ++*(v7 + 16);
      v12 = v44;
      v5 = v40;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v44 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v9, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_1003D914C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    while (1)
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(type metadata accessor for SymmetricKey() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1003D9338(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1003D8A40(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1003D9568();
      goto LABEL_7;
    }

    sub_1003D8DA4(v15, a4 & 1);
    v26 = sub_1003D8A40(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = type metadata accessor for SymmetricKey();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_1003D94B8(v12, a2, a3, a1, v18);
}

uint64_t sub_1003D94B8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for SymmetricKey();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void *sub_1003D9568()
{
  v1 = v0;
  sub_1003D6474(&qword_1025D5078, &qword_101C664C0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v34 = v1;
    result = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v7)
    {
      result = memmove(result, (v2 + 64), 8 * v7);
    }

    v9 = 0;
    v10 = *(v2 + 16);
    v35 = v2;
    v36 = v4;
    *(v4 + 16) = v10;
    v11 = 1 << *(v2 + 32);
    v12 = *(v2 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v9 << 6);
        v20 = v35;
        v21 = 16 * v19;
        v22 = (*(v35 + 48) + 16 * v19);
        v23 = *v22;
        v37 = v22[1];
        v38 = v23;
        v24 = type metadata accessor for SymmetricKey();
        v39 = &v34;
        v25 = *(v24 - 8);
        v26 = __chkstk_darwin(v24);
        v28 = &v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
        v30 = *(v29 + 72) * v19;
        (*(v25 + 16))(v28, *(v20 + 56) + v30, v24, v26);
        v31 = v36;
        v32 = (*(v36 + 48) + v21);
        v33 = v37;
        *v32 = v38;
        v32[1] = v33;
        (*(v25 + 32))(*(v31 + 56) + v30, v28, v24);
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v34;
        v4 = v36;
        goto LABEL_21;
      }

      v18 = *(v6 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_1003D97E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1003D6474(&qword_1025D5088, &qword_101C664D0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1003DA170(v4, &v11, &qword_1025D5008, &unk_101C66450);
      v5 = v11;
      result = sub_1003D89FC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1003DA1D8(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

BOOL sub_1003D9910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1003D6474(&qword_1025D5000, &qword_101C66448);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101C66420;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString();
  *(inited + 40) = kSecClassKey;
  *(inited + 64) = v4;
  *(inited + 72) = kSecUseDataProtectionKeychain;
  *(inited + 80) = 1;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 112) = kSecAttrAccessible;
  *(inited + 120) = kSecAttrAccessibleWhenUnlocked;
  *(inited + 144) = v4;
  *(inited + 152) = kSecAttrSynchronizable;
  *(inited + 160) = 1;
  *(inited + 184) = &type metadata for Bool;
  *(inited + 192) = kSecValueData;
  type metadata accessor for SymmetricKey();
  sub_1003D8408();
  v5 = kSecClass;
  v6 = kSecClassKey;
  v7 = kSecUseDataProtectionKeychain;
  v8 = kSecAttrAccessible;
  v9 = kSecAttrAccessibleWhenUnlocked;
  v10 = kSecAttrSynchronizable;
  v11 = kSecValueData;
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  *(inited + 200) = *v31;
  *(inited + 224) = &type metadata for Data;
  *(inited + 232) = kSecAttrApplicationLabel;
  *(inited + 264) = &type metadata for String;
  *(inited + 240) = a2;
  *(inited + 248) = a3;
  v12 = kSecAttrApplicationLabel;

  sub_1003D97E8(inited);
  swift_setDeallocating();
  sub_1003D6474(&qword_1025D5008, &unk_101C66450);
  swift_arrayDestroy();
  sub_1003D9CFC();
  sub_1003D9D48();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v14 = SecItemAdd(isa, 0);

  if (v14)
  {
    if (qword_1026560F8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1003134C0(v15, qword_102656100);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v31[0] = v19;
      *v18 = 67109378;
      *(v18 + 4) = v14;
      *(v18 + 8) = 2080;
      v20 = SecCopyErrorMessageString(v14, 0);
      if (v20)
      {
        v21 = v20;
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v25 = v22;
      }

      else
      {
        v25 = dispatch thunk of CustomStringConvertible.description.getter();
        v24 = v26;
      }

      v27 = sub_1003D8454(v25, v24, v31);

      *(v18 + 10) = v27;
      _os_log_impl(dword_100000000, v16, v17, "Failed to store key in keychain, error %d, %s", v18, 0x12u);
      sub_1003D6554(v19);
    }
  }

  return v14 == 0;
}

void type metadata accessor for CFString()
{
  if (!qword_1025D5070)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1025D5070);
    }
  }
}

unint64_t sub_1003D9CFC()
{
  result = qword_1025D5010;
  if (!qword_1025D5010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1025D5010);
  }

  return result;
}

unint64_t sub_1003D9D48()
{
  result = qword_1025D5018;
  if (!qword_1025D5018)
  {
    sub_1003D9CFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1025D5018);
  }

  return result;
}

BOOL sub_1003D9DA0(uint64_t a1, uint64_t a2)
{
  sub_1003D6474(&qword_1025D5000, &qword_101C66448);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_101C66430;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString();
  *(inited + 40) = kSecClassKey;
  *(inited + 64) = v4;
  *(inited + 72) = kSecUseDataProtectionKeychain;
  *(inited + 80) = 1;
  *(inited + 104) = &type metadata for Bool;
  *(inited + 112) = kSecAttrAccessible;
  *(inited + 120) = kSecAttrAccessibleAfterFirstUnlock;
  *(inited + 144) = v4;
  *(inited + 152) = kSecAttrSynchronizable;
  *(inited + 160) = 1;
  *(inited + 184) = &type metadata for Bool;
  *(inited + 192) = kSecAttrApplicationLabel;
  *(inited + 224) = &type metadata for String;
  *(inited + 200) = a1;
  *(inited + 208) = a2;
  v5 = kSecClass;
  v6 = kSecClassKey;
  v7 = kSecUseDataProtectionKeychain;
  v8 = kSecAttrAccessible;
  v9 = kSecAttrAccessibleAfterFirstUnlock;
  v10 = kSecAttrSynchronizable;
  v11 = kSecAttrApplicationLabel;

  sub_1003D97E8(inited);
  swift_setDeallocating();
  sub_1003D6474(&qword_1025D5008, &unk_101C66450);
  swift_arrayDestroy();
  sub_1003D9CFC();
  sub_1003D9D48();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v13 = SecItemDelete(isa);

  if (v13)
  {
    if (qword_1026560F8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1003134C0(v14, qword_102656100);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v29 = v18;
      *v17 = 67109378;
      *(v17 + 4) = v13;
      *(v17 + 8) = 2080;
      v19 = SecCopyErrorMessageString(v13, 0);
      if (v19)
      {
        v20 = v19;
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v24 = v21;
      }

      else
      {
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v25;
      }

      v26 = sub_1003D8454(v24, v23, &v29);

      *(v17 + 10) = v26;
      _os_log_impl(dword_100000000, v15, v16, "Failed to remove key from keychain, error %d, %s", v17, 0x12u);
      sub_1003D6554(v18);
    }
  }

  return v13 == 0;
}

uint64_t sub_1003DA110(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1003DA170(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1003D6474(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_1003DA1D8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1003DA1EC(uint64_t result)
{
  *result = 2147450879;
  *(result + 4) = 0x7FFF;
  *(result + 6) = 2147450879;
  *(result + 10) = 0x7FFF;
  *(result + 12) = 2147450879;
  *(result + 16) = 0x7FFF;
  *(result + 18) = 2147450879;
  *(result + 22) = 0x7FFF;
  *(result + 28) = 0x7FFF;
  *(result + 24) = 2147450879;
  *(result + 34) = 0x7FFF;
  *(result + 30) = 2147450879;
  *(result + 40) = 0x7FFF;
  *(result + 36) = 2147450879;
  *(result + 46) = 0x7FFF;
  *(result + 42) = 2147450879;
  *(result + 52) = 0x7FFF;
  *(result + 48) = 2147450879;
  *(result + 58) = 0x7FFF;
  *(result + 54) = 2147450879;
  *(result + 64) = 0x7FFF;
  *(result + 60) = 2147450879;
  *(result + 70) = 0x7FFF;
  *(result + 66) = 2147450879;
  *(result + 76) = 0x7FFF;
  *(result + 72) = 2147450879;
  *(result + 82) = 0x7FFF;
  *(result + 78) = 2147450879;
  *(result + 88) = 0x7FFF;
  *(result + 84) = 2147450879;
  *(result + 94) = 0x7FFF;
  *(result + 90) = 2147450879;
  *(result + 100) = 0x7FFF;
  *(result + 96) = 2147450879;
  *(result + 106) = 0x7FFF;
  *(result + 102) = 2147450879;
  *(result + 112) = 0x7FFF;
  *(result + 108) = 2147450879;
  *(result + 118) = 0x7FFF;
  *(result + 114) = 2147450879;
  *(result + 124) = 0x7FFF;
  *(result + 120) = 2147450879;
  *(result + 130) = 0x7FFF;
  *(result + 126) = 2147450879;
  *(result + 136) = 0x7FFF;
  *(result + 132) = 2147450879;
  *(result + 142) = 0x7FFF;
  *(result + 138) = 2147450879;
  *(result + 148) = 0x7FFF;
  *(result + 144) = 2147450879;
  *(result + 154) = 0x7FFF;
  *(result + 150) = 2147450879;
  *(result + 160) = 0x7FFF;
  *(result + 156) = 2147450879;
  *(result + 166) = 0x7FFF;
  *(result + 162) = 2147450879;
  *(result + 172) = 0x7FFF;
  *(result + 168) = 2147450879;
  *(result + 178) = 0x7FFF;
  *(result + 174) = 2147450879;
  *(result + 184) = 0x7FFF;
  *(result + 180) = 2147450879;
  *(result + 190) = 0x7FFF;
  *(result + 186) = 2147450879;
  return result;
}

uint64_t sub_1003DA300(__int16 a1, __int16 a2, __int16 a3, uint64_t a4, _WORD *a5)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  *a5 = 1;
  sub_1003DC798(v6, 32, 1, a4);
  return 1;
}

uint64_t sub_1003DA344(int a1, int a2)
{
  v2 = 2 * a1;
  v3 = v2 >= a2;
  if (v2 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = 2 * (v2 - v4);
  v6 = v5 >= a2;
  if (v5 < a2)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = 2 * (v5 - v7);
  if (v8 >= a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  v10 = (4 * v6) | (8 * v3) | (2 * (v8 >= a2));
  v11 = 2 * (v8 - v9);
  if (v11 < a2)
  {
    v12 = 0;
  }

  else
  {
    ++v10;
    v12 = a2;
  }

  v13 = 2 * (v11 - v12);
  if (v13 >= a2)
  {
    v14 = a2;
  }

  else
  {
    v14 = 0;
  }

  v15 = (2 * (v13 >= a2)) | (4 * v10);
  v16 = 2 * (v13 - v14);
  if (v16 < a2)
  {
    v17 = 0;
  }

  else
  {
    ++v15;
    v17 = a2;
  }

  v18 = 2 * (v16 - v17);
  if (v18 >= a2)
  {
    v19 = a2;
  }

  else
  {
    v19 = 0;
  }

  v20 = (2 * (v18 >= a2)) | (4 * v15);
  v21 = 2 * (v18 - v19);
  if (v21 < a2)
  {
    v22 = 0;
  }

  else
  {
    ++v20;
    v22 = a2;
  }

  v23 = 2 * (v21 - v22);
  if (v23 >= a2)
  {
    v24 = a2;
  }

  else
  {
    v24 = 0;
  }

  v25 = (2 * (v23 >= a2)) | (4 * v20);
  v26 = 2 * (v23 - v24);
  if (v26 < a2)
  {
    v27 = 0;
  }

  else
  {
    ++v25;
    v27 = a2;
  }

  v28 = 2 * (v26 - v27);
  if (v28 >= a2)
  {
    v29 = a2;
  }

  else
  {
    v29 = 0;
  }

  v30 = (2 * (v28 >= a2)) | (4 * v25);
  v31 = 2 * (v28 - v29);
  if (v31 < a2)
  {
    v32 = 0;
  }

  else
  {
    ++v30;
    v32 = a2;
  }

  v33 = 2 * (v31 - v32);
  if (v33 >= a2)
  {
    v34 = a2;
  }

  else
  {
    v34 = 0;
  }

  v35 = (2 * (v33 >= a2)) | (4 * v30);
  v36 = 2 * (v33 - v34);
  if (v36 < a2)
  {
    v37 = 0;
  }

  else
  {
    ++v35;
    v37 = a2;
  }

  return ((a2 <= 2 * (v36 - v37)) | (2 * v35));
}

uint64_t sub_1003DA4A8(unint64_t a1)
{
  if (a1 < 1)
  {
    if (a1)
    {
      return 0;
    }

    else
    {
      return 31;
    }
  }

  else
  {
    v1 = a1 >> 30;
    if (a1 >> 30)
    {
      return 0;
    }

    else
    {
      do
      {
        v2 = a1 >> 29;
        a1 *= 2;
        LOWORD(v1) = v1 + 1;
      }

      while (!v2);
      return v1;
    }
  }
}

uint64_t sub_1003DA4EC(int a1)
{
  if (a1 >= 0)
  {
    LOWORD(v1) = a1;
  }

  else
  {
    v1 = -a1;
  }

  if (a1 == -32768)
  {
    LOWORD(v1) = 0x7FFF;
  }

  return v1;
}

uint64_t sub_1003DA508(uint64_t a1, unsigned int a2, __int16 *a3, _WORD *a4)
{
  if (a2 > 32)
  {
    return 0;
  }

  v6 = sub_1003DA344(1, a2);
  if (a2 < 1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_34;
  }

  v7 = v6;
  v8 = a2;
  if (a2 == 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
LABEL_9:
    v31 = (a1 + 6 * v9 + 4);
    v32 = a2 - v9;
    do
    {
      v12 += *(v31 - 2) * v7;
      v11 += *(v31 - 1) * v7;
      v10 += *v31 * v7;
      v31 += 3;
      --v32;
    }

    while (v32);
    goto LABEL_11;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v9 = a2 & 0x7FFELL;
  v28 = (a1 + 6);
  v29 = v9;
  do
  {
    v26 += *(v28 - 3) * v7;
    v27 += *v28 * v7;
    v24 += *(v28 - 2) * v7;
    v25 += v28[1] * v7;
    v30 = v28[2];
    v22 += *(v28 - 1) * v7;
    v28 += 6;
    v23 += v30 * v7;
    v29 -= 2;
  }

  while (v29);
  v10 = v23 + v22;
  v11 = v25 + v24;
  v12 = v27 + v26;
  if (v9 != a2)
  {
    goto LABEL_9;
  }

LABEL_11:
  if (a2 < 4)
  {
    v33 = 0;
    goto LABEL_22;
  }

  if (a2 >= 0x10)
  {
    v33 = a2 & 0x30;
    v34 = &v85;
    v35 = a2 & 0x7FF0;
    v36 = a1;
    do
    {
      v37 = v36;
      v36 += 96;
      v89 = vld3q_s16(v37);
      v37 += 24;
      v90 = vld3q_s16(v37);
      v34[-1] = vshrn_high_n_s32(vshrn_n_s32(vmlal_s16(vmlal_s16(vmull_s16(*v89.val[1].i8, *v89.val[1].i8), *v89.val[0].i8, *v89.val[0].i8), *v89.val[2].i8, *v89.val[2].i8), 0xBuLL), vmlal_high_s16(vmlal_high_s16(vmull_high_s16(v89.val[1], v89.val[1]), v89.val[0], v89.val[0]), v89.val[2], v89.val[2]), 0xBuLL);
      *v34 = vshrn_high_n_s32(vshrn_n_s32(vmlal_s16(vmlal_s16(vmull_s16(*v90.val[1].i8, *v90.val[1].i8), *v90.val[0].i8, *v90.val[0].i8), *v90.val[2].i8, *v90.val[2].i8), 0xBuLL), vmlal_high_s16(vmlal_high_s16(vmull_high_s16(v90.val[1], v90.val[1]), v90.val[0], v90.val[0]), v90.val[2], v90.val[2]), 0xBuLL);
      v34 += 2;
      v35 -= 16;
    }

    while (v35);
    if (v33 == a2)
    {
      goto LABEL_24;
    }

    if ((a2 & 0xCLL) == 0)
    {
LABEL_22:
      v42 = &v84[v33];
      v43 = (a1 + 6 * v33 + 4);
      v44 = a2 - v33;
      do
      {
        *v42++ = (*(v43 - 2) * *(v43 - 2) + *(v43 - 1) * *(v43 - 1) + *v43 * *v43) >> 11;
        v43 += 3;
        --v44;
      }

      while (v44);
      goto LABEL_24;
    }
  }

  else
  {
    v33 = 0;
  }

  v38 = v33;
  v33 = a2 & 0x7FFCLL;
  v39 = (a1 + 6 * v38);
  v40 = &v84[v38];
  v41 = v38 - v33;
  do
  {
    v88 = vld3_s16(v39);
    v39 += 12;
    *v40++ = vshrn_n_s32(vmlal_s16(vmlal_s16(vmull_s16(v88.val[1], v88.val[1]), v88.val[0], v88.val[0]), v88.val[2], v88.val[2]), 0xBuLL);
    v41 += 4;
  }

  while (v41);
  if (v33 != a2)
  {
    goto LABEL_22;
  }

LABEL_24:
  if (a2 > 7)
  {
    v46 = vdupq_n_s16(v12 >> 15);
    v47 = vdupq_n_s16(v11 >> 15);
    v45 = a2 & 0x7FF8;
    v48 = vdupq_n_s16(v10 >> 15);
    v49 = v86;
    v50 = v45;
    v51 = a1;
    do
    {
      v91 = vld3q_s16(v51);
      v51 += 24;
      v92.val[0] = vsubq_s16(v91.val[0], v46);
      v92.val[1] = vsubq_s16(v91.val[1], v47);
      v92.val[2] = vsubq_s16(v91.val[2], v48);
      vst3q_s16(v49, v92);
      v49 += 24;
      v50 -= 8;
    }

    while (v50);
    if (v45 == a2)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v45 = 0;
  }

  v52 = a2 - v45;
  v53 = 6 * v45 + 4;
  v54 = (a1 + v53);
  v55 = &v86[v53];
  do
  {
    *(v55 - 2) = *(v54 - 2) - (v12 >> 15);
    *(v55 - 1) = *(v54 - 1) - (v11 >> 15);
    v56 = *v54;
    v54 += 3;
    *v55 = v56 - (v10 >> 15);
    v55 += 3;
    --v52;
  }

  while (v52);
LABEL_31:
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = (a1 + 4);
  v61 = v87;
  v62 = v84;
  do
  {
    v21 += *(v61 - 1) * *(v60 - 2);
    v20 += *v61 * *(v60 - 1);
    v63 = v61[1];
    v19 += v61[1] * *v60;
    v18 += *(v60 - 1) * *(v61 - 1);
    v17 += *v60 * *(v61 - 1);
    v16 += *v60 * *v61;
    v64 = *v62++;
    v57 += v64 * *(v61 - 1);
    v58 += v64 * *v61;
    v60 += 3;
    v61 += 3;
    v59 += v64 * v63;
    --v8;
  }

  while (v8);
  v15 = v57 >> 1;
  v14 = v58 >> 1;
  v13 = v59 >> 1;
LABEL_34:
  v65 = sub_1003DA4A8(v21);
  v66 = sub_1003DA4A8(v18);
  if (v65 >= v66)
  {
    v65 = v66;
  }

  v67 = sub_1003DA4A8(v17);
  if (v65 >= v67)
  {
    v65 = v67;
  }

  v68 = sub_1003DA4A8(v18);
  if (v65 >= v68)
  {
    v65 = v68;
  }

  v69 = sub_1003DA4A8(v20);
  if (v65 >= v69)
  {
    v65 = v69;
  }

  v70 = sub_1003DA4A8(v16);
  if (v65 >= v70)
  {
    v65 = v70;
  }

  v71 = sub_1003DA4A8(v17);
  if (v65 >= v71)
  {
    v65 = v71;
  }

  v72 = sub_1003DA4A8(v16);
  if (v65 >= v72)
  {
    v65 = v72;
  }

  v73 = sub_1003DA4A8(v19);
  if (v65 >= v73)
  {
    v65 = v73;
  }

  v74 = sub_1003DA4A8(v15);
  if (v65 >= v74)
  {
    v65 = v74;
  }

  v75 = sub_1003DA4A8(v14);
  if (v65 >= v75)
  {
    v65 = v75;
  }

  v76 = sub_1003DA4A8(v13);
  if (v65 >= v76)
  {
    v77 = v76;
  }

  else
  {
    v77 = v65;
  }

  if (v77 >= 32)
  {
    LOBYTE(v77) = 32;
  }

  v78 = v18 << v77 >> 18;
  a3[3] = v78;
  a3[1] = v78;
  v79 = v17 << v77 >> 18;
  a3[6] = v79;
  a3[2] = v79;
  v80 = v16 << v77 >> 18;
  a3[7] = v80;
  a3[5] = v80;
  *a3 = v21 << v77 >> 18;
  a3[4] = v20 << v77 >> 18;
  a3[8] = v19 << v77 >> 18;
  *a4 = v15 << v77 >> 18;
  a4[1] = v14 << v77 >> 18;
  a4[2] = v13 << v77 >> 18;
  if (*a3 >= 6 && a3[4] >= 6 && a3[8] > 5)
  {
    return 4;
  }

  return 0;
}

uint64_t sub_1003DAA68(__int16 *a1, int a2, __int16 *a3, __int16 *a4, _WORD *a5)
{
  v7 = a3[8];
  v8 = a3[5];
  v9 = v7 * a3[4] - v8 * v8;
  v10 = *a3;
  v11 = a3[6];
  v12 = *a3 * v7 - v11 * v11;
  v13 = a3[1];
  v14 = *a3 * a3[4] - v13 * v13;
  if (v12 <= v9)
  {
    v15 = a3[8] * a3[4] - a3[5] * a3[5];
  }

  else
  {
    v15 = *a3 * a3[8] - a3[6] * a3[6];
  }

  if (v14 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = *a3 * a3[4] - a3[1] * a3[1];
  }

  if (v16 >= 1)
  {
    v19 = a3[4];
    v51 = 0;
    v20 = v12 > v9;
    if (v14 > v15)
    {
      v20 = 2;
    }

    if (v20 == 2)
    {
      v58 = v10;
      v59 = v13;
      v56 = -v11;
      v60 = a3[3];
      v61 = v19;
      v57 = -v8;
      if (sub_1003DAE94(&v58, 2, v55, v54))
      {
        sub_1003DB100(&v58, 2, v55, v54, &v56, &v52);
        v21 = v52 >> 2;
        *a4 = v52 >> 2;
        v22 = v53 >> 2;
        a4[1] = v53 >> 2;
        v24 = 2048;
        goto LABEL_19;
      }
    }

    else if (v20 == 1)
    {
      v58 = v7;
      v59 = v11;
      v56 = -v8;
      v60 = v11;
      v61 = v10;
      v57 = -v13;
      if (sub_1003DAE94(&v58, 2, v55, v54))
      {
        sub_1003DB100(&v58, 2, v55, v54, &v56, &v52);
        v21 = v53 >> 2;
        *a4 = v53 >> 2;
        v22 = 2048;
        a4[1] = 2048;
        v23 = v52;
LABEL_18:
        v24 = v23 >> 2;
LABEL_19:
        a4[2] = v24;
        v25 = sub_1003DC6F0(v22 * v22 + v21 * v21 + v24 * v24, &v51);
        v26 = (v25 >> 8) * *a4;
        *a4 = v26 >> 11;
        v27 = (v25 >> 8) * a4[1];
        a4[1] = v27 >> 11;
        v28 = (v25 >> 8) * a4[2];
        a4[2] = v28 >> 11;
        v29 = (v26 << 37) >> 48;
        v30 = (v27 << 37) >> 48;
        v31 = v29 * *a1 + (v27 >> 11) * a1[1];
        v32 = (v28 << 37) >> 48;
        v33 = v31 + (v28 >> 11) * a1[2];
        if (a2 < 2)
        {
          LODWORD(v36) = v31 + (v28 >> 11) * a1[2];
          LODWORD(v35) = v36;
        }

        else
        {
          if (a2 == 2)
          {
            v34 = 1;
            v35 = v33;
            v36 = v33;
          }

          else
          {
            v39 = 0;
            v34 = (a2 - 1) | 1;
            v40 = a1 + 4;
            v41 = (a2 - 1) & 0xFFFFFFFFFFFFFFFELL;
            v42 = v33;
            v43 = v33;
            v44 = v33;
            v45 = v33;
            do
            {
              v46 = v29 * *(v40 - 1) + v30 * *v40 + (v28 >> 11) * v40[1];
              v47 = v29 * v40[2] + v30 * v40[3] + (v28 >> 11) * v40[4];
              if (v44 <= v46)
              {
                v44 = v29 * *(v40 - 1) + v30 * *v40 + (v28 >> 11) * v40[1];
              }

              if (v45 <= v47)
              {
                v45 = v29 * v40[2] + v30 * v40[3] + (v28 >> 11) * v40[4];
              }

              if (v42 >= v46)
              {
                v42 = v29 * *(v40 - 1) + v30 * *v40 + (v28 >> 11) * v40[1];
              }

              if (v43 >= v47)
              {
                v43 = v29 * v40[2] + v30 * v40[3] + (v28 >> 11) * v40[4];
              }

              LODWORD(v33) = v46 + v33;
              v39 += v47;
              v40 += 6;
              v41 -= 2;
            }

            while (v41);
            LODWORD(v33) = v39 + v33;
            if (v42 >= v43)
            {
              v35 = v43;
            }

            else
            {
              v35 = v42;
            }

            if (v44 <= v45)
            {
              v36 = v45;
            }

            else
            {
              v36 = v44;
            }

            if (a2 - 1 == ((a2 - 1) & 0xFFFFFFFFFFFFFFFELL))
            {
              goto LABEL_48;
            }
          }

          v48 = &a1[3 * v34 + 2];
          v49 = a2 - v34;
          do
          {
            v50 = v29 * *(v48 - 2) + v30 * *(v48 - 1) + v32 * *v48;
            if (v36 <= v50)
            {
              v36 = v29 * *(v48 - 2) + v30 * *(v48 - 1) + v32 * *v48;
            }

            if (v35 >= v50)
            {
              v35 = v29 * *(v48 - 2) + v30 * *(v48 - 1) + v32 * *v48;
            }

            LODWORD(v33) = v50 + v33;
            v48 += 3;
            --v49;
          }

          while (v49);
        }

LABEL_48:
        *a5 = (v36 - v35) >> 11;
        v37 = 1;
        a4[3] = -(((v33 >> 11) * sub_1003DA344(1, a2)) >> 15);
        return v37;
      }
    }

    else
    {
      v58 = v19;
      v60 = v8;
      v56 = -v13;
      v59 = v8;
      v61 = v7;
      v57 = -v11;
      if (sub_1003DAE94(&v58, 2, v55, v54))
      {
        sub_1003DB100(&v58, 2, v55, v54, &v56, &v52);
        v21 = 2048;
        *a4 = 2048;
        v22 = v52 >> 2;
        a4[1] = v52 >> 2;
        v23 = v53;
        goto LABEL_18;
      }
    }
  }

  return 0;
}

uint64_t sub_1003DAE94(_WORD *a1, int a2, __int16 *a3, __int16 *a4)
{
  if (a2 < 1)
  {
    return 1;
  }

  v29 = v4;
  v30 = v5;
  v9 = 0;
  v28 = 0;
  v10 = a2;
  v11 = a1;
  v12 = a1;
  while (2)
  {
    v27 = v11;
    if (v9)
    {
      v13 = v9;
      while (1)
      {
        v14 = a1[3 * v9 + v13] << 15;
        if (v9 >= 2)
        {
          v16 = 0;
          v17 = 0;
          do
          {
            v18 = &a1[3 * v9];
            v19 = &a1[3 * v13];
            v14 -= 4 * v18[(v9 - v16 - 1)] * v19[(v9 - v16 - 1)];
            v17 -= 4 * v18[(v9 - v16 - 2)] * v19[(v9 - v16 - 2)];
            v16 += 2;
          }

          while ((v9 & 0xFFFFFFFE) != v16);
          v14 += v17;
          LOWORD(v15) = v9 & 1;
          if ((v9 & 0xFFFFFFFE) == v9)
          {
            goto LABEL_13;
          }
        }

        else
        {
          LOWORD(v15) = v9;
        }

        do
        {
          v20 = v15 - 1;
          v15 = (v15 - 1);
          v14 -= 4 * a1[3 * v9 + v20] * a1[3 * v13 + v20];
        }

        while (v15 > 0);
LABEL_13:
        if (v9 == v13)
        {
          if (v14 < 1)
          {
            return 0;
          }

          v21 = sub_1003DC6F0(v14, &v28);
          a3[v9] = HIWORD(v21);
          a4[v9] = v21 >> 1;
          if (++v13 == v10)
          {
            goto LABEL_3;
          }
        }

        else
        {
          a1[3 * v13++ + v9] = 2 * (WORD1(v14) * a3[v9] + ((((v14 >> 1) & 0x7FFE) * a3[v9]) >> 15) + (((v14 >> 16) * a4[v9]) >> 15));
          if (v13 == v10)
          {
            goto LABEL_3;
          }
        }
      }
    }

    for (i = 0; i != v10; ++i)
    {
      while (1)
      {
        v23 = v12[i];
        v24 = v23 << 15;
        if (!i)
        {
          break;
        }

        *v11 = 2 * ((v23 >> 1) * *a3 + ((((v24 >> 1) & 0x4000) * *a3) >> 15) + (((v23 >> 1) * *a4) >> 15));
        v11 += 3;
        if (v10 == ++i)
        {
          goto LABEL_3;
        }
      }

      if (v23 < 1)
      {
        return 0;
      }

      v25 = sub_1003DC6F0(v24, &v28);
      *a3 = HIWORD(v25);
      *a4 = v25 >> 1;
      v11 += 3;
    }

LABEL_3:
    ++v9;
    v12 += 3;
    v11 = v27 + 1;
    if (v9 != v10)
    {
      continue;
    }

    return 1;
  }
}

uint64_t sub_1003DB100(uint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a2 - 1;
  if (a2 >= 1)
  {
    v7 = 0;
    while (!v7)
    {
      v8 = 0;
LABEL_4:
      v9 = (*(a5 + 2 * v7) << 15) - v8;
      *(a6 + 2 * v7) = 2 * (HIWORD(v9) * *(a3 + 2 * v7) + (((v9 >> 16) * *(a4 + 2 * v7)) >> 15) + ((((v9 >> 1) & 0x7FFE) * *(a3 + 2 * v7)) >> 15));
      if (++v7 == a2)
      {
        goto LABEL_13;
      }
    }

    if (v7 > 1)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      LOWORD(v11) = v7 - (v7 & 0xFFFE);
      do
      {
        v15 = result + 6 * v7;
        v13 += *(a6 + 2 * (v7 - v12 - 1)) * *(v15 + 2 * (v7 - v12 - 1));
        v14 += *(a6 + 2 * (v7 - v12 - 2)) * *(v15 + 2 * (v7 - v12 - 2));
        v12 += 2;
      }

      while ((v7 & 0xFFFFFFFE) != v12);
      v10 = v14 + v13;
      if ((v7 & 0xFFFFFFFE) == v7)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v10 = 0;
      LOWORD(v11) = v7;
    }

    do
    {
      v16 = v11 - 1;
      v11 = (v11 - 1);
      v10 += *(a6 + 2 * v16) * *(result + 6 * v7 + 2 * v16);
    }

    while (v11 > 0);
LABEL_12:
    v8 = 4 * v10;
    goto LABEL_4;
  }

LABEL_13:
  if (((a2 - 1) & 0x8000) == 0)
  {
    v17 = 0;
    v18 = v6;
    v19 = result + 2 * v6;
    v20 = v18;
    v21 = v19 + 6;
    v22 = -1;
    v23 = a2;
    do
    {
      v25 = *(a6 + 2 * v20) << 15;
      if (a2 > v23)
      {
        v26 = v23;
        if (v17 == 1)
        {
          goto LABEL_21;
        }

        v27 = 0;
        v28 = (v22 + 1) & 0x1FFFE;
        v29 = (v21 + 6 * v23);
        v30 = (a6 + 2 + 2 * v23);
        v31 = (v17 - 1) + 1;
        v26 = (v31 & 0x1FFFE) + v23;
        do
        {
          v25 -= 4 * *(v29 - 3) * *(v30 - 1);
          v27 -= 4 * *v29 * *v30;
          v29 += 6;
          v30 += 2;
          v28 -= 2;
        }

        while (v28);
        v25 += v27;
        if (v31 != (v31 & 0x1FFFE))
        {
LABEL_21:
          v32 = (a6 + 2 * v26);
          v33 = (v19 + 6 * v26);
          v34 = v26 + 1;
          do
          {
            v36 = *v33;
            v33 += 3;
            v35 = v36;
            v37 = *v32++;
            v25 -= 4 * v35 * v37;
            v38 = v34++;
          }

          while (v38 != a2);
        }
      }

      result = *(a3 + 2 * v20);
      *(a6 + 2 * v20) = 2 * (HIWORD(v25) * result + ((((v25 >> 1) & 0x7FFE) * result) >> 15) + (((v25 >> 16) * *(a4 + 2 * v20)) >> 15));
      --v23;
      ++v17;
      ++v22;
      v21 -= 2;
      v19 -= 2;
    }

    while (v20-- > 0);
  }

  return result;
}

uint64_t sub_1003DB360(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, __int16 a6)
{
  *a1 = a2;
  *(a1 + 400) = a3;
  result = sub_1003DB3A8(a1, a5, a6, 1);
  *(a1 + 396) = 0;
  *(a1 + 398) = a4;
  *(a1 + 504) = 0;
  return result;
}

uint64_t sub_1003DB3A8(uint64_t result, uint64_t a2, __int16 a3, int a4)
{
  v5 = result;
  if (a4)
  {
    *(result + 8) = 2147450879;
    *(result + 12) = 0x7FFF;
    *(result + 14) = 2147450879;
    *(result + 18) = 0x7FFF;
    *(result + 20) = 2147450879;
    *(result + 24) = 0x7FFF;
    *(result + 26) = 2147450879;
    *(result + 30) = 0x7FFF;
    *(result + 36) = 0x7FFF;
    *(result + 32) = 2147450879;
    *(result + 42) = 0x7FFF;
    *(result + 38) = 2147450879;
    *(result + 48) = 0x7FFF;
    *(result + 44) = 2147450879;
    *(result + 54) = 0x7FFF;
    *(result + 50) = 2147450879;
    *(result + 60) = 0x7FFF;
    *(result + 56) = 2147450879;
    *(result + 66) = 0x7FFF;
    *(result + 62) = 2147450879;
    *(result + 72) = 0x7FFF;
    *(result + 68) = 2147450879;
    *(result + 78) = 0x7FFF;
    *(result + 74) = 2147450879;
    *(result + 84) = 0x7FFF;
    *(result + 80) = 2147450879;
    *(result + 90) = 0x7FFF;
    *(result + 86) = 2147450879;
    *(result + 96) = 0x7FFF;
    *(result + 92) = 2147450879;
    *(result + 102) = 0x7FFF;
    *(result + 98) = 2147450879;
    *(result + 108) = 0x7FFF;
    *(result + 104) = 2147450879;
    *(result + 114) = 0x7FFF;
    *(result + 110) = 2147450879;
    *(result + 120) = 0x7FFF;
    *(result + 116) = 2147450879;
    *(result + 126) = 0x7FFF;
    *(result + 122) = 2147450879;
    *(result + 132) = 0x7FFF;
    *(result + 128) = 2147450879;
    *(result + 138) = 0x7FFF;
    *(result + 134) = 2147450879;
    *(result + 144) = 0x7FFF;
    *(result + 140) = 2147450879;
    *(result + 150) = 0x7FFF;
    *(result + 146) = 2147450879;
    *(result + 156) = 0x7FFF;
    *(result + 152) = 2147450879;
    *(result + 162) = 0x7FFF;
    *(result + 158) = 2147450879;
    *(result + 168) = 0x7FFF;
    *(result + 164) = 2147450879;
    *(result + 174) = 0x7FFF;
    *(result + 170) = 2147450879;
    *(result + 180) = 0x7FFF;
    *(result + 176) = 2147450879;
    *(result + 186) = 0x7FFF;
    *(result + 182) = 2147450879;
    *(result + 192) = 0x7FFF;
    *(result + 188) = 2147450879;
    *(result + 198) = 0x7FFF;
    *(result + 194) = 2147450879;
    *(result + 204) = 0x7FFF;
    *(result + 200) = 2147450879;
    *(result + 210) = 0x7FFF;
    *(result + 206) = 2147450879;
    *(result + 216) = 0x7FFF;
    *(result + 212) = 2147450879;
    *(result + 222) = 0x7FFF;
    *(result + 218) = 2147450879;
    *(result + 228) = 0x7FFF;
    *(result + 224) = 2147450879;
    *(result + 234) = 0x7FFF;
    *(result + 230) = 2147450879;
    *(result + 240) = 0x7FFF;
    *(result + 236) = 2147450879;
    *(result + 246) = 0x7FFF;
    *(result + 242) = 2147450879;
    *(result + 252) = 0x7FFF;
    *(result + 248) = 2147450879;
    *(result + 258) = 0x7FFF;
    *(result + 254) = 2147450879;
    *(result + 264) = 0x7FFF;
    *(result + 260) = 2147450879;
    *(result + 270) = 0x7FFF;
    *(result + 266) = 2147450879;
    *(result + 276) = 0x7FFF;
    *(result + 272) = 2147450879;
    *(result + 282) = 0x7FFF;
    *(result + 278) = 2147450879;
    *(result + 288) = 0x7FFF;
    *(result + 284) = 2147450879;
    *(result + 294) = 0x7FFF;
    *(result + 290) = 2147450879;
    *(result + 300) = 0x7FFF;
    *(result + 296) = 2147450879;
    *(result + 412) = 0x7FFF;
    *(result + 408) = 2147450879;
    *(result + 306) = 0x7FFF;
    *(result + 302) = 2147450879;
    *(result + 418) = 0x7FFF;
    *(result + 414) = 2147450879;
    *(result + 312) = 0x7FFF;
    *(result + 308) = 2147450879;
    *(result + 424) = 0x7FFF;
    *(result + 420) = 2147450879;
    *(result + 318) = 0x7FFF;
    *(result + 314) = 2147450879;
    *(result + 430) = 0x7FFF;
    *(result + 426) = 2147450879;
    *(result + 324) = 0x7FFF;
    *(result + 320) = 2147450879;
    *(result + 436) = 0x7FFF;
    *(result + 432) = 2147450879;
    *(result + 330) = 0x7FFF;
    *(result + 326) = 2147450879;
    *(result + 442) = 0x7FFF;
    *(result + 438) = 2147450879;
    *(result + 336) = 0x7FFF;
    *(result + 332) = 2147450879;
    *(result + 448) = 0x7FFF;
    *(result + 444) = 2147450879;
    *(result + 342) = 0x7FFF;
    *(result + 338) = 2147450879;
    *(result + 454) = 0x7FFF;
    *(result + 450) = 2147450879;
    *(result + 348) = 0x7FFF;
    *(result + 344) = 2147450879;
    *(result + 460) = 0x7FFF;
    *(result + 456) = 2147450879;
    *(result + 354) = 0x7FFF;
    *(result + 350) = 2147450879;
    *(result + 466) = 0x7FFF;
    *(result + 462) = 2147450879;
    *(result + 360) = 0x7FFF;
    *(result + 356) = 2147450879;
    *(result + 472) = 0x7FFF;
    *(result + 468) = 2147450879;
    *(result + 366) = 0x7FFF;
    *(result + 362) = 2147450879;
    *(result + 478) = 0x7FFF;
    *(result + 474) = 2147450879;
    *(result + 372) = 0x7FFF;
    *(result + 368) = 2147450879;
    *(result + 484) = 0x7FFF;
    *(result + 480) = 2147450879;
    *(result + 378) = 0x7FFF;
    *(result + 374) = 2147450879;
    *(result + 490) = 0x7FFF;
    *(result + 486) = 2147450879;
    *(result + 384) = 0x7FFF;
    *(result + 380) = 2147450879;
    *(result + 496) = 0x7FFF;
    *(result + 492) = 2147450879;
    *(result + 390) = 0x7FFF;
    *(result + 386) = 2147450879;
    *(result + 502) = 0x7FFF;
    *(result + 498) = 2147450879;
  }

  v6 = a3;
  if (a3 <= 0)
  {
    *(result + 392) = 0;
    *(result + 394) = 0;
  }

  else
  {
    *(result + 392) = 1;
    result = sub_1003DC798(a2, 16, 1, result + 296);
    if (v6 <= 3)
    {
      v7 = a3 - 1;
    }

    else
    {
      v7 = 2;
    }

    *(v5 + 394) = v7;
  }

  return result;
}

uint64_t sub_1003DB70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, __int16 a6, int a7, int a8, uint64_t a9, _DWORD *a10, uint64_t a11)
{
  v88 = 0;
  if (*(a4 + 199) > 1u || *(a4 + 197) > 2u)
  {
    LOWORD(v12) = 0;
    return v12;
  }

  v90 = 0;
  v89 = 0;
  if (((a6 - 1) & 0x8000) == 0)
  {
    v12 = 0;
    v86 = a4 + 37;
    v16 = (a6 - 1);
    v84 = a4 + 43;
    v85 = a4 + 300;
    while (1)
    {
      v18 = *(a4 + 199);
      LOWORD(v19) = *(a4 + 197);
      if (*a4)
      {
        v20 = *(*a4 + 8 * v18);
      }

      else
      {
        v20 = &unk_101C75A70 + 90 * *(a4 + 199);
      }

      v21 = &v20[30 * *(a4 + 197)];
      if (!a7)
      {
        LODWORD(v18) = 0;
      }

      if (!a8)
      {
        LOWORD(v19) = 0;
      }

      v22 = a4[50];
      if (v22)
      {
        v23 = *(v22 + 8 * v18);
        v19 = v19;
      }

      else
      {
        v19 = v19;
        v23 = &unk_101C75B24 + 90 * v18;
      }

      v24 = &v23[30 * v19];
      v25 = *v21;
      v26 = *(v21 + 2);
      *v87 = *v24;
      *&v87[7] = *(v24 + 14);
      v87[0] = v25;
      v87[2] = v26;
      v27 = sub_1003DBD84((a5 + 6 * v16), v87, a4 + 4, a4 + 204, &v89, a4 + 252, &v88, 0, 0);
      LODWORD(v28) = *(a4 + 199);
      if (v27 != 2)
      {
        goto LABEL_26;
      }

      if (v28 > 0)
      {
        break;
      }

      v33 = *(v21 + 12);
      if (v33 < 0 || *(a4 + 252) < v33)
      {
        goto LABEL_26;
      }

      *(a4 + 199) = v28 + 1;
      if ((v28 & 0x80000000) == 0)
      {
        LOWORD(v28) = 1;
        v29 = *(v21 + 13);
        if (v29 < 0)
        {
LABEL_26:
          v30 = *(a4 + 197);
          v31 = *a4;
          v28 = v28;
          if (*a4)
          {
            goto LABEL_27;
          }

          goto LABEL_22;
        }

LABEL_20:
        if (*(a4 + 252) <= v29)
        {
          LOWORD(v28) = v28 - 1;
          *(a4 + 199) = v28;
          v30 = *(a4 + 197);
          v31 = *a4;
          v28 = v28;
          if (*a4)
          {
            goto LABEL_27;
          }

          goto LABEL_22;
        }

        goto LABEL_26;
      }

      v30 = *(a4 + 197);
      v31 = *a4;
      v28 = (v28 + 1);
      if (*a4)
      {
LABEL_27:
        v32 = (*(v31 + 8 * v28) + 30 * v30);
        if (v88 != 1)
        {
          goto LABEL_6;
        }

        goto LABEL_28;
      }

LABEL_22:
      v32 = (&unk_101C75A70 + 90 * v28 + 30 * v30);
      if (v88 != 1)
      {
        goto LABEL_6;
      }

LABEL_28:
      if (sub_1003DBD84((a5 + 6 * v16), v32, a4 + 4, a4 + 100, &v89, a4 + 198, &v88, 1, a11) != 2)
      {
        goto LABEL_6;
      }

      v34 = *(a4 + 196);
      if (v34 < 16)
      {
        v35 = v34 + 1;
      }

      else
      {
        v35 = 16;
      }

      *(a4 + 196) = v35;
      sub_1003DC798(&v89, 16, 1, v86);
      v36 = *(a4 + 196);
      if (v36 < 2 || (v37 = v32[11], v37 <= 1))
      {
        *a9 = v89;
        *(a9 + 4) = v90;
        ++v12;
        if (*(a4 + 196) >= v32[10])
        {
          goto LABEL_73;
        }

        goto LABEL_6;
      }

      v90 = 0;
      v89 = 0;
      if (v36 >= v37)
      {
        v38 = sub_1003DA344(1, v37);
        v40 = v89;
        v41 = HIWORD(v89);
        v42 = v90;
        v44 = v32[11];
        if (v44 < 1)
        {
          goto LABEL_72;
        }

        if (v44 < 4)
        {
          v45 = 0;
LABEL_69:
          v79 = &v85[6 * v45];
          do
          {
            v40 += *(v79 - 2);
            v41 += *(v79 - 1);
            v80 = *v79;
            v79 += 6;
            v42 += v80;
            ++v45;
          }

          while (v45 < v44);
          goto LABEL_71;
        }

        if (v44 >= 0x10)
        {
          v45 = v44 & 0x7FF0;
          v64 = 0uLL;
          v65 = v89;
          v66 = HIWORD(v89);
          v67 = v90;
          v68 = v45;
          v69 = v84;
          v70 = 0uLL;
          v71 = 0uLL;
          do
          {
            v72 = v69 - 24;
            v94 = vld3q_s16(v72);
            v96 = vld3q_s16(v69);
            v65 = vaddq_s16(v65, v94.val[0]);
            v64 = vaddq_s16(v64, v96.val[0]);
            v66 = vaddq_s16(v66, v94.val[1]);
            v70 = vaddq_s16(v70, v96.val[1]);
            v67 = vaddq_s16(v67, v94.val[2]);
            v71 = vaddq_s16(v71, v96.val[2]);
            v69 += 48;
            v68 -= 16;
          }

          while (v68);
          v40 = vaddvq_s16(vaddq_s16(v64, v65));
          v41 = vaddvq_s16(vaddq_s16(v70, v66));
          v42 = vaddvq_s16(vaddq_s16(v71, v67));
          if (v45 == v44)
          {
            goto LABEL_71;
          }

          if ((v44 & 0xC) == 0)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v45 = 0;
        }

        v73 = v45;
        v74 = v40;
        v75 = v41;
        v45 = v44 & 0x7FFC;
        v76 = v42;
        v77 = v86 + 3 * v73;
        v78 = v73 - v45;
        do
        {
          v92 = vld3_s16(v77);
          v77 += 12;
          v74 = vadd_s16(v74, v92.val[0]);
          v75 = vadd_s16(v75, v92.val[1]);
          v76 = vadd_s16(v76, v92.val[2]);
          v78 += 4;
        }

        while (v78);
        v40 = vaddv_s16(v74);
        v41 = vaddv_s16(v75);
        v42 = vaddv_s16(v76);
        if (v45 == v44)
        {
          goto LABEL_71;
        }

        goto LABEL_69;
      }

      v38 = sub_1003DA344(1, v36);
      v39 = *(a4 + 196);
      v40 = v89;
      v41 = HIWORD(v89);
      v42 = v90;
      if (v39 < 1)
      {
        goto LABEL_72;
      }

      if (v39 >= 4)
      {
        if (v39 < 0x10)
        {
          v43 = 0;
LABEL_56:
          v55 = v43;
          v56 = v40;
          v57 = v41;
          v43 = v39 & 0x7FFC;
          v58 = v42;
          v59 = v86 + 3 * v55;
          v60 = v55 - v43;
          do
          {
            v91 = vld3_s16(v59);
            v59 += 12;
            v56 = vadd_s16(v56, v91.val[0]);
            v57 = vadd_s16(v57, v91.val[1]);
            v58 = vadd_s16(v58, v91.val[2]);
            v60 += 4;
          }

          while (v60);
          v40 = vaddv_s16(v56);
          v41 = vaddv_s16(v57);
          v42 = vaddv_s16(v58);
          if (v43 == v39)
          {
            goto LABEL_71;
          }

          goto LABEL_59;
        }

        v43 = v39 & 0x7FF0;
        v46 = 0uLL;
        v47 = v89;
        v48 = HIWORD(v89);
        v49 = v90;
        v50 = v43;
        v51 = v84;
        v52 = 0uLL;
        v53 = 0uLL;
        do
        {
          v54 = v51 - 24;
          v93 = vld3q_s16(v54);
          v95 = vld3q_s16(v51);
          v47 = vaddq_s16(v47, v93.val[0]);
          v46 = vaddq_s16(v46, v95.val[0]);
          v48 = vaddq_s16(v48, v93.val[1]);
          v52 = vaddq_s16(v52, v95.val[1]);
          v49 = vaddq_s16(v49, v93.val[2]);
          v53 = vaddq_s16(v53, v95.val[2]);
          v51 += 48;
          v50 -= 16;
        }

        while (v50);
        v40 = vaddvq_s16(vaddq_s16(v46, v47));
        v41 = vaddvq_s16(vaddq_s16(v52, v48));
        v42 = vaddvq_s16(vaddq_s16(v53, v49));
        if (v43 == v39)
        {
          goto LABEL_71;
        }

        if ((v39 & 0xC) != 0)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v43 = 0;
      }

LABEL_59:
      v61 = &v85[6 * v43];
      v62 = v39 - v43;
      do
      {
        v40 += *(v61 - 2);
        v41 += *(v61 - 1);
        v63 = *v61;
        v61 += 6;
        v42 += v63;
        --v62;
      }

      while (v62);
LABEL_71:
      LOWORD(v89) = v40;
      HIWORD(v89) = v41;
      v90 = v42;
LABEL_72:
      *a9 = (v40 * v38) >> 15;
      *(a9 + 2) = (v41 * v38) >> 15;
      *(a9 + 4) = (v42 * v38) >> 15;
      ++v12;
      if (*(a4 + 196) >= v32[10])
      {
LABEL_73:
        v81 = *(a4 + 197);
        if (v81 <= 1)
        {
          *(a4 + 196) = 0;
          *(a4 + 197) = v81 + 1;
        }
      }

LABEL_6:
      if (v16-- <= 0)
      {
        goto LABEL_76;
      }
    }

    v29 = *(v21 + 13);
    if (v29 < 0)
    {
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  LOWORD(v12) = 0;
LABEL_76:
  v82 = *(a4 + 197);
  if (*(a4 + 196))
  {
    ++v82;
  }

  *a10 = v82;
  return v12;
}

uint64_t sub_1003DBD84(_WORD *a1, __int16 *a2, __int16 *a3, __int16 *a4, __int16 *a5, __int16 *a6, _WORD *a7, int a8, uint64_t a9)
{
  if (*a2 < 1)
  {
    return 0;
  }

  v9 = a6;
  v11 = a4;
  *a7 = 0;
  if (a8)
  {
    v14 = a2 + 14;
    if (a2[14])
    {
      if (a8 != 1)
      {
        v15 = a6;
        v16 = a4;
        v17 = a1;
        v87 = a7;
        if (a2[2] <= 0)
        {
          goto LABEL_20;
        }

        return 0;
      }

LABEL_11:
      v86 = a2 + 14;
      goto LABEL_23;
    }

    if (a8 == 1)
    {
      goto LABEL_11;
    }

    v15 = a6;
    v16 = a4;
    v17 = a1;
    v87 = a7;
    v19 = 0;
    v20 = 0;
    v21 = 0;
LABEL_13:
    v22 = a2[2];
    if (v19 < v22 || v20 < v22 || v21 < v22)
    {
      return 0;
    }

    goto LABEL_20;
  }

  v15 = a6;
  v16 = a4;
  v87 = a7;
  v19 = sub_1003DA4EC((*a3 - *a1));
  v20 = sub_1003DA4EC((a3[1] - a1[1]));
  v17 = a1;
  v21 = sub_1003DA4EC((a3[2] - a1[2]));
  a8 = 0;
  v14 = a2 + 14;
  if (!a2[14])
  {
    goto LABEL_13;
  }

  if (v20 + v19 + v21 < a2[2])
  {
    return 0;
  }

LABEL_20:
  v86 = v14;
  if (!a8)
  {
    sub_1003DC798(v17, *a2, 1, a3);
    *v87 = 1;
  }

  v11 = v16;
  v9 = v15;
LABEL_23:
  v25 = *a2;
  v26 = &a3[3 * *a2];
  if (*(v26 - 3) == 0x7FFF && *(v26 - 2) == 0x7FFF && *(v26 - 1) == 0x7FFF)
  {
    return 0;
  }

  v96 = 0;
  v95 = 0;
  v93 = 0;
  v94 = 0;
  v91 = 0;
  v92 = 0;
  v89 = 0;
  v90 = 0;
  sub_1003DC824(a3, v25, &v95, &v93, &v91, &v89);
  v28 = *a2;
  v29 = *a2;
  if (v28 >= 1)
  {
    v30 = v91;
    v31 = HIWORD(v91);
    v32 = v92;
    if (v29 >= 8)
    {
      v33 = v28 & 0x7FF8;
      v34 = vdupq_n_s16(v91);
      v35 = vdupq_n_s16(HIWORD(v91));
      v36 = vdupq_n_s16(v92);
      v37 = v33;
      v38 = a3;
      do
      {
        v111 = vld3q_s16(v38);
        v113.val[0] = vsubq_s16(v111.val[0], v34);
        v113.val[1] = vsubq_s16(v111.val[1], v35);
        v113.val[2] = vsubq_s16(v111.val[2], v36);
        vst3q_s16(v38, v113);
        v38 += 24;
        v37 -= 8;
      }

      while (v37);
      if (v33 == v28)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v33 = 0;
    }

    v39 = v28 - v33;
    v40 = &a3[3 * v33 + 2];
    do
    {
      *(v40 - 2) -= v30;
      *(v40 - 1) -= v31;
      *v40 -= v32;
      v40 += 3;
      --v39;
    }

    while (v39);
LABEL_35:
    v29 = *a2;
  }

  v41 = v29;
  v42 = sub_1003DA508(a3, v29, &v107, &v105);
  v109 = v107;
  v110 = v108;
  if (v42 == 4 && sub_1003DAE94(&v109, 3, &v101, &v99))
  {
    v88 = v11;
    sub_1003DB100(&v109, 3, &v101, &v99, &v105, &v103);
    v43 = v103 >> 2;
    *a5 = v43;
    v44 = SHIWORD(v103) >> 2;
    a5[1] = v44;
    v45 = v104 >> 2;
    a5[2] = v104 >> 2;
    v46 = (*a3 - v43) * (*a3 - v43) + (a3[1] - v44) * (a3[1] - v44) + (a3[2] - v45) * (a3[2] - v45);
    v47 = sub_1003DC4E4(v46);
    v48 = v47;
    if (v29 < 2)
    {
      v51 = v47;
    }

    else
    {
      v49 = v29 - 1;
      v50 = a3 + 5;
      v51 = v47;
      do
      {
        v52 = *(v50 - 2) - *a5;
        v53 = *(v50 - 1) - a5[1];
        v54 = v52 * v52 + v53 * v53;
        v55 = *v50 - a5[2];
        v56 = v54 + v55 * v55;
        v46 += v56;
        v57 = sub_1003DC4E4(v56);
        if (v57 > v51)
        {
          v51 = v57;
        }

        if (v57 < v48)
        {
          v48 = v57;
        }

        v50 += 3;
        --v49;
      }

      while (v49);
    }

    v59 = 1;
    v61 = sub_1003DA344(1, v41);
    v62 = sub_1003DC4E4((((v61 >> 3) & 1) + (v61 >> 4)) * (((v46 >> 6) & 1) + (v46 >> 7)));
    v60 = 0;
    *v9 = ((v62 >> 1) & 1) + (v62 >> 2);
    v58 = v51 - v48;
    v11 = v88;
  }

  else
  {
    v58 = 0;
    v59 = 0;
    a5[2] = 0;
    *a5 = 0;
    v60 = 1;
    *v9 = 0;
  }

  v63 = HIWORD(v91);
  v64 = v92;
  *a5 += v91;
  a5[1] += v63;
  a5[2] += v64;
  sub_1003DC798(a5, a2[1], 1, v11);
  if (v60)
  {
    goto LABEL_84;
  }

  v65 = *v9;
  if (a9)
  {
    *(a9 + 12) = *(a2 + 7);
    *(a9 + 16) = a2[9];
    *(a9 + 18) = v58;
  }

  if (!v59 || a2[8] >= v65 || a2[7] <= v65 || a2[9] * v65 <= v58 << 11)
  {
    goto LABEL_84;
  }

  v106 = 0;
  v105 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  *&v109 = 0;
  v101 = 0;
  v99 = 0;
  v100 = 0;
  v97 = 0;
  v98 = 0;
  sub_1003DC824(v11, a2[1], &v101, &v99, &v97, &v103);
  if (a9)
  {
    *(a9 + 2) = a2[1];
    *(a9 + 20) = v103;
    *(a9 + 24) = v104;
    v66 = a2[5];
    *(a9 + 8) = v66;
  }

  else
  {
    v66 = a2[5];
  }

  if (v103 >= v66 || SHIWORD(v103) >= v66 || v104 >= v66)
  {
    if (*v86 < 2)
    {
      goto LABEL_84;
    }

    v70 = v66;
    v71 = v66 > v103;
    v72 = v104 < v70 || v71;
    if (v104 >= v70)
    {
      v71 = 0;
    }

    v73 = SHIWORD(v103) < v70 ? v72 : 0;
    if ((v73 & 1) == 0 && !v71)
    {
LABEL_84:
      result = 0;
      goto LABEL_85;
    }
  }

  sub_1003DC824(a3, *a2, &v101, &v99, &v97, &v105);
  v67 = v105;
  if (a9)
  {
    *a9 = *a2;
    *(a9 + 26) = v105;
    *(a9 + 30) = v106;
    *(a9 + 6) = a2[4];
  }

  result = 0;
  v68 = a2[3];
  if (v67 > v68 && SHIWORD(v105) > v68 && v106 > v68)
  {
    if ((HIWORD(v105) + v67 + v106) >= a2[4])
    {
      v69 = sub_1003DAA68(a3, *a2, &v107, &v109, &v102 + 1);
      if (a9)
      {
        *(a9 + 10) = a2[6];
        *(a9 + 32) = HIWORD(v102);
      }

      if (v69 && SHIWORD(v102) > a2[6])
      {
        result = 2;
        goto LABEL_85;
      }
    }

    goto LABEL_84;
  }

LABEL_85:
  v74 = *a2;
  if (v74 < 1)
  {
    return result;
  }

  v75 = v91;
  v76 = HIWORD(v91);
  v77 = v92;
  if (v74 < 8)
  {
    v78 = 0;
LABEL_91:
    v84 = v74 - v78;
    v85 = &a3[3 * v78 + 2];
    do
    {
      *(v85 - 2) += v75;
      *(v85 - 1) += v76;
      *v85 += v77;
      v85 += 3;
      --v84;
    }

    while (v84);
    return result;
  }

  v78 = v74 & 0x7FF8;
  v79 = vdupq_n_s16(v91);
  v80 = vdupq_n_s16(HIWORD(v91));
  v81 = vdupq_n_s16(v92);
  v82 = v78;
  v83 = a3;
  do
  {
    v112 = vld3q_s16(v83);
    v114.val[0] = vaddq_s16(v112.val[0], v79);
    v114.val[1] = vaddq_s16(v112.val[1], v80);
    v114.val[2] = vaddq_s16(v112.val[2], v81);
    vst3q_s16(v83, v114);
    v83 += 24;
    v82 -= 8;
  }

  while (v82);
  if (v78 != v74)
  {
    goto LABEL_91;
  }

  return result;
}

uint64_t sub_1003DC4E4(unint64_t a1)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v1 = a1 >> 30 != 0;
  v2 = ((a1 >> 28) & 0x3FFFFFFFFLL) + 4 * ((a1 >> 30) - v1);
  v3 = 4 * v1 >= v2;
  v4 = 4 * v1 < v2 && ~(4 * v1);
  v5 = v4 + v2;
  if (v3)
  {
    v6 = 8 * v1;
  }

  else
  {
    v6 = (8 * v1) | 4;
  }

  v7 = v6 >> 2;
  v8 = ((a1 >> 26) & 0x3FFFFFFFFLL) + 4 * v5;
  v9 = v6 >= v8;
  if (v6 < v8)
  {
    v10 = ~v6;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 + v8;
  v12 = 2 * v6;
  if (!v9)
  {
    v12 = (8 * (v7 & 3)) | 4;
  }

  v13 = ((a1 >> 24) & 0x3FFFFFFFFLL) + 4 * v11;
  v14 = v12 >= v13;
  if (v12 < v13)
  {
    v15 = ~v12;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15 + v13;
  v17 = 2 * v12;
  if (!v14)
  {
    v17 |= 4uLL;
  }

  v18 = ((a1 >> 22) & 0x3FFFFFFFFLL) + 4 * v16;
  v19 = v17 >= v18;
  if (v17 < v18)
  {
    v20 = ~v17;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20 + v18;
  v22 = 2 * v17;
  if (!v19)
  {
    v22 |= 4uLL;
  }

  v23 = ((a1 >> 20) & 0x3FFFFFFFFLL) + 4 * v21;
  v24 = v22 >= v23;
  if (v22 < v23)
  {
    v25 = ~v22;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25 + v23;
  v27 = 2 * v22;
  if (!v24)
  {
    v27 |= 4uLL;
  }

  v28 = ((a1 >> 18) & 0x3FFFFFFFFLL) + 4 * v26;
  v29 = v27 >= v28;
  if (v27 < v28)
  {
    v30 = ~v27;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30 + v28;
  v32 = 2 * v27;
  if (!v29)
  {
    v32 |= 4uLL;
  }

  v33 = ((a1 >> 16) & 0x3FFFFFFFFLL) + 4 * v31;
  v34 = v32 >= v33;
  if (v32 < v33)
  {
    v35 = ~v32;
  }

  else
  {
    v35 = 0;
  }

  v36 = v35 + v33;
  v37 = 2 * v32;
  if (!v34)
  {
    v37 |= 4uLL;
  }

  v38 = ((a1 >> 14) & 0x3FFFFFFFFLL) + 4 * v36;
  v39 = v37 >= v38;
  if (v37 < v38)
  {
    v40 = ~v37;
  }

  else
  {
    v40 = 0;
  }

  v41 = v40 + v38;
  v42 = 2 * v37;
  if (!v39)
  {
    v42 |= 4uLL;
  }

  v43 = ((a1 >> 12) & 0x3FFFFFFFFLL) + 4 * v41;
  v44 = v42 >= v43;
  if (v42 < v43)
  {
    v45 = ~v42;
  }

  else
  {
    v45 = 0;
  }

  v46 = v45 + v43;
  v47 = 2 * v42;
  if (!v44)
  {
    v47 |= 4uLL;
  }

  v48 = ((a1 >> 10) & 0x3FFFFFFFFLL) + 4 * v46;
  v49 = v47 >= v48;
  if (v47 < v48)
  {
    v50 = ~v47;
  }

  else
  {
    v50 = 0;
  }

  v51 = v50 + v48;
  v52 = 2 * v47;
  if (!v49)
  {
    v52 |= 4uLL;
  }

  v53 = ((a1 >> 8) & 0x3FFFFFFFFLL) + 4 * v51;
  v54 = v52 >= v53;
  if (v52 < v53)
  {
    v55 = ~v52;
  }

  else
  {
    v55 = 0;
  }

  v56 = v55 + v53;
  v57 = 2 * v52;
  if (!v54)
  {
    v57 |= 4uLL;
  }

  v58 = ((a1 >> 6) & 0x3FFFFFFFFLL) + 4 * v56;
  v59 = v57 >= v58;
  if (v57 < v58)
  {
    v60 = ~v57;
  }

  else
  {
    v60 = 0;
  }

  v61 = v60 + v58;
  v62 = 2 * v57;
  if (!v59)
  {
    v62 |= 4uLL;
  }

  v63 = ((a1 >> 4) & 0x3FFFFFFFFLL) + 4 * v61;
  v64 = v62 >= v63;
  if (v62 < v63)
  {
    v65 = ~v62;
  }

  else
  {
    v65 = 0;
  }

  v66 = v65 + v63;
  v67 = 2 * v62;
  if (!v64)
  {
    v67 |= 4uLL;
  }

  v68 = ((a1 >> 2) & 0x3FFFFFFFFLL) + 4 * v66;
  v69 = v67 >= v68;
  if (v67 < v68)
  {
    v70 = ~v67;
  }

  else
  {
    v70 = 0;
  }

  v71 = v70 + v68;
  v72 = 2 * v67;
  if (!v69)
  {
    v72 |= 4uLL;
  }

  return ((v72 >> 1) | (v72 < (a1 & 0x3FFFFFFFFLL) + 4 * v71));
}

uint64_t sub_1003DC6F0(int64_t a1, _WORD *a2)
{
  if (a1 < 1)
  {
    result = 0x40000000;
    *a2 = 0;
  }

  else
  {
    v4 = sub_1003DA4A8(a1);
    v5 = a1 << v4 >> (((30 - v4) & 1) == 0);
    v6 = ((30 - v4) << 16 >> 17) + 1;
    v7 = (v5 >> 10) & 0x7FFF;
    v8 = (&unk_101C75B7E + 2 * (((v5 << 23) - 0x10000000000000) >> 48));
    result = ((*v8 << 16) - 2 * (*v8 - v8[1]) * v7) >> (((30 - v4) << 16 >> 17) + 1);
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1003DC798(uint64_t result, int a2, int a3, uint64_t a4)
{
  if (a3 >= 1 && a2 >= a3)
  {
    for (i = (a2 - 1); i >= a3; i = (i - 1))
    {
      v5 = a4 + 6 * i;
      v6 = (a4 + 6 * (i - a3));
      v7 = *v6;
      *(v5 + 4) = *(v6 + 2);
      *v5 = v7;
    }

    v8 = 6 * (a3 - 1);
    do
    {
      v9 = a4 + v8;
      v10 = *(result + v8);
      *(v9 + 4) = *(result + v8 + 4);
      *v9 = v10;
      v8 -= 6;
    }

    while (v8 != -6);
  }

  return result;
}

__int16 *sub_1003DC824(__int16 *result, int a2, __int16 *a3, __int16 *a4, _WORD *a5, _WORD *a6)
{
  v6 = *result;
  *a4 = *result;
  *a3 = v6;
  if (a2 > 1)
  {
    v7 = result + 3;
    v8 = a2 - 1;
    v9 = v8;
    while (1)
    {
      v10 = *v7;
      if (v10 < *a4)
      {
        *a4 = v10;
        LOWORD(v10) = *v7;
        v6 = *a3;
        if (*v7 > *a3)
        {
LABEL_8:
          *a3 = v10;
          v6 = v10;
        }
      }

      else if (v10 > v6)
      {
        goto LABEL_8;
      }

      v7 += 3;
      if (!--v9)
      {
        v22 = (*a4 >> 1) + (v6 >> 1);
        *a5 = (*a4 >> 1) + (v6 >> 1);
        v23 = *a3;
        if (*a3 & 1) != 0 || (v24 = *a4, (*a4))
        {
          *a5 = v22 + 1;
          v23 = *a3;
          v24 = *a4;
        }

        v25 = (v23 - v24);
        if (v25 >= 0x7FFF)
        {
          LOWORD(v25) = 0x7FFF;
        }

        *a6 = v25;
        v26 = result[1];
        a4[1] = v26;
        a3[1] = v26;
        v27 = result + 4;
        v28 = a2 - 1;
        while (2)
        {
          v29 = *v27;
          if (v29 < a4[1])
          {
            a4[1] = v29;
            LOWORD(v29) = *v27;
            v26 = a3[1];
            if (*v27 > v26)
            {
              goto LABEL_32;
            }
          }

          else if (v29 > v26)
          {
LABEL_32:
            a3[1] = v29;
            v26 = v29;
          }

          v27 += 3;
          if (--v28)
          {
            continue;
          }

          break;
        }

        v30 = (a4[1] >> 1) + (v26 >> 1);
        a5[1] = (a4[1] >> 1) + (v26 >> 1);
        v31 = a3[1];
        if (v31 & 1) != 0 || (v32 = a4[1], (v32))
        {
          a5[1] = v30 + 1;
          v31 = a3[1];
          v32 = a4[1];
        }

        v33 = (v31 - v32);
        if (v33 >= 0x7FFF)
        {
          LOWORD(v33) = 0x7FFF;
        }

        a6[1] = v33;
        v34 = result[2];
        a4[2] = v34;
        a3[2] = v34;
        v35 = result + 5;
        while (2)
        {
          v36 = *v35;
          if (v36 < a4[2])
          {
            a4[2] = v36;
            LOWORD(v36) = *v35;
            v34 = a3[2];
            if (*v35 > v34)
            {
              goto LABEL_44;
            }
          }

          else if (v36 > v34)
          {
LABEL_44:
            a3[2] = v36;
            v34 = v36;
          }

          v35 += 3;
          if (!--v8)
          {
            v20 = (a4[2] >> 1) + (v34 >> 1);
            a5[2] = v20;
            v21 = a3[2];
            if ((v21 & 1) == 0)
            {
              goto LABEL_46;
            }

LABEL_47:
            a5[2] = v20 + 1;
            LOWORD(v21) = a3[2];
            v37 = a4[2];
            goto LABEL_48;
          }

          continue;
        }
      }
    }
  }

  v11 = (*a4 >> 1) + (v6 >> 1);
  *a5 = (*a4 >> 1) + (v6 >> 1);
  v12 = *a3;
  if (*a3 & 1) != 0 || (v13 = *a4, (*a4))
  {
    *a5 = v11 + 1;
    v12 = *a3;
    v13 = *a4;
  }

  v14 = (v12 - v13);
  if (v14 >= 0x7FFF)
  {
    LOWORD(v14) = 0x7FFF;
  }

  *a6 = v14;
  v15 = result[1];
  a4[1] = v15;
  a3[1] = v15;
  v16 = (a4[1] >> 1) + (v15 >> 1);
  a5[1] = (a4[1] >> 1) + (v15 >> 1);
  v17 = a3[1];
  if (v17 & 1) != 0 || (v18 = a4[1], (v18))
  {
    a5[1] = v16 + 1;
    v17 = a3[1];
    v18 = a4[1];
  }

  v19 = (v17 - v18);
  if (v19 >= 0x7FFF)
  {
    LOWORD(v19) = 0x7FFF;
  }

  a6[1] = v19;
  LODWORD(v21) = result[2];
  a4[2] = v21;
  a3[2] = v21;
  v20 = (a4[2] >> 1) + (v21 >> 1);
  a5[2] = (a4[2] >> 1) + (v21 >> 1);
  LOWORD(v21) = a3[2];
  if (v21)
  {
    goto LABEL_47;
  }

LABEL_46:
  v37 = a4[2];
  if (v37)
  {
    goto LABEL_47;
  }

LABEL_48:
  v38 = (v21 - v37);
  if (v38 >= 0x7FFF)
  {
    LOWORD(v38) = 0x7FFF;
  }

  a6[2] = v38;
  return result;
}

uint64_t sub_1003DCB18(const char *a1, const char *a2, uint64_t a3, _DWORD *a4, _DWORD *a5, double a6)
{
  snprintf(__str, 0x80uLL, "%s-%s-%s", a1, a2, "fwd");
  v11 = sub_1003DCC28(__str, "AFKEndpointInterface", a6);
  *a4 = v11;
  if (v11)
  {
    result = 0;
  }

  else
  {
    result = 5;
  }

  if (a5 && v11)
  {
    snprintf(__str, 0x80uLL, "%s-%s-%s", a1, a2, "rev");
    v13 = sub_1003DCC28(__str, "AFKEndpointInterface", a6);
    *a5 = v13;
    if (v13)
    {
      return 0;
    }

    else
    {
      return 5;
    }
  }

  return result;
}

uint64_t sub_1003DCC28(const char *a1, char *name, double a3)
{
  v5 = IOServiceMatching(name);
  if (v5)
  {
    v6 = v5;
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v5);
    CFRelease(v6);
    if (MutableCopy)
    {
      v8 = CFStringCreateWithCString(kCFAllocatorDefault, a1, 0x8000100u);
      if (v8)
      {
        v9 = v8;
        CFDictionarySetValue(MutableCopy, @"IONameMatch", v8);
      }

      else
      {
        v9 = MutableCopy;
        MutableCopy = 0;
      }

      CFRelease(v9);
    }
  }

  else
  {
    MutableCopy = 0;
  }

  *notification = 0;
  Current = CFRunLoopGetCurrent();
  v11 = IONotificationPortCreate(kIOMainPortDefault);
  if (v11)
  {
    v12 = v11;
    RunLoopSource = IONotificationPortGetRunLoopSource(v11);
    if (RunLoopSource)
    {
      v14 = RunLoopSource;
      CFRunLoopAddSource(Current, RunLoopSource, kCFRunLoopDefaultMode);
      if (IOServiceAddMatchingNotification(v12, "IOServiceFirstMatch", MutableCopy, sub_1003DCE54, notification, &notification[1]))
      {
        v15 = 0;
        notification[0] = 0;
      }

      else
      {
        v16 = IOIteratorNext(notification[1]);
        v15 = 0;
        notification[0] = v16;
        if (a3 != 0.0 && !v16)
        {
          if (a3 >= 0.0)
          {
            v17 = CFAbsoluteTimeGetCurrent();
            v15 = CFRunLoopTimerCreate(kCFAllocatorDefault, v17 + a3, 0.0, 0, 0, sub_1003DCEA4, 0);
            CFRunLoopAddTimer(Current, v15, kCFRunLoopDefaultMode);
          }

          else
          {
            v15 = 0;
          }

          CFRunLoopRun();
        }
      }

      CFRunLoopRemoveSource(Current, v14, kCFRunLoopDefaultMode);
      if (notification[1])
      {
        IOObjectRelease(notification[1]);
      }

      IONotificationPortDestroy(v12);
      if (v15)
      {
        CFRunLoopRemoveTimer(Current, v15, kCFRunLoopDefaultMode);
        CFRunLoopTimerInvalidate(v15);
        CFRelease(v15);
      }
    }

    else
    {
      IONotificationPortDestroy(v12);
    }
  }

  return notification[0];
}

void sub_1003DCE54(io_object_t *a1, io_iterator_t iterator)
{
  v3 = IOIteratorNext(iterator);
  if (v3)
  {
    *a1 = v3;
    Current = CFRunLoopGetCurrent();

    CFRunLoopStop(Current);
  }
}

void sub_1003DCEA4()
{
  Current = CFRunLoopGetCurrent();

  CFRunLoopStop(Current);
}

uint64_t sub_1003DCED8(const char *a1, const char *a2, void ***a3)
{
  v13 = 0;
  if (pthread_mutex_lock(&stru_1025D5358))
  {
    v6 = 0;
    v7 = 6;
  }

  else
  {
    v8 = qword_102656130;
    if (qword_102656130)
    {
      v9 = 0;
      do
      {
        v9 += sub_1003DD258(v8, a1, a2);
        v8 = *(v8 + 224);
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    v7 = sub_1003DD20C(8 * v9 + 8, &v13);
    v6 = v13;
    if (v7)
    {
LABEL_9:
      sub_1003DD008(v6);
      v6 = 0;
    }

    else
    {
      v7 = qword_102656130;
      if (qword_102656130)
      {
        v11 = 0;
        do
        {
          if (v11 >= v9)
          {
            v7 = 3;
            goto LABEL_9;
          }

          if (sub_1003DD258(v7, a1, a2))
          {
            v12 = strdup(v7);
            if (!v12)
            {
              v7 = 4;
              goto LABEL_9;
            }

            v6[v11++] = v12;
          }

          v7 = *(v7 + 224);
        }

        while (v7);
      }
    }

    pthread_mutex_unlock(&stru_1025D5358);
  }

  *a3 = v6;
  return v7;
}

void sub_1003DD008(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      v3 = 1;
      do
      {
        free(v2);
        v2 = a1[v3++];
      }

      while (v2);
    }

    free(a1);
  }
}

char *sub_1003DD060(const char *a1)
{
  v7 = 0;
  v2 = sub_1003DCED8(a1, 0, &v7);
  v3 = 0;
  v4 = v7;
  if (!v2)
  {
    v5 = *v7;
    if (!*v7)
    {
      v5 = a1;
    }

    v3 = strdup(v5);
  }

  sub_1003DD008(v4);
  return v3;
}

uint64_t sub_1003DD0CC(const char *a1, const char *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, double a6)
{
  if (!pthread_mutex_lock(&stru_1025D5358))
  {
    v13 = qword_102656130;
    if (!qword_102656130)
    {
      goto LABEL_7;
    }

    while (strcmp(v13, a1) || strcmp((v13 + 128), a2))
    {
      v13 = *(v13 + 224);
      if (!v13)
      {
        goto LABEL_7;
      }
    }

    v12 = (*(v13 + 192))(*(v13 + 200), a3, a4, a5);
    if (v12 == 5)
    {
LABEL_7:
      v17 = 0;
      if (a5)
      {
        v14 = &v17;
      }

      else
      {
        v14 = 0;
      }

      v15 = sub_1003DCB18(a1, a2, a3, &v17 + 1, v14, a6);
      if (v15)
      {
        return v15;
      }

      *a4 = tb_endpoint_create_with_data();
      if (a5)
      {
        *a5 = tb_endpoint_create_with_data();
      }

      v12 = 0;
    }

    pthread_mutex_unlock(&stru_1025D5358);
    return v12;
  }

  return 6;
}

uint64_t sub_1003DD20C(size_t a1, void *a2)
{
  v4 = malloc_type_malloc(a1, 0xF83BD267uLL);
  *a2 = v4;
  if (!v4)
  {
    return 4;
  }

  bzero(v4, a1);
  return 0;
}

uint64_t sub_1003DD258(char *__s1, const char *a2, const char *a3)
{
  if (!a2)
  {
    v5 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v6 | v5;
  }

  v5 = strcmp(__s1, a2) == 0;
  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = strcmp(__s1 + 64, a3) == 0;
  return v6 | v5;
}

void sub_1003DD2F0(uint64_t a1)
{
  if (qword_1025D4600 != -1)
  {
    sub_101873CF0();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v6[0] = 68289026;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:catch-all location unavailable timer fired}", v6, 0x12u);
  }

  [*(a1 + 664) setNextFireDelay:1.79769313e308];
  if (*(a1 + 160) == 255)
  {
    if (qword_1025D4600 != -1)
    {
      sub_101873804();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "Location unavailable timer fired,required granularity is none,ignoring", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101873FB0();
    }
  }

  else if ([objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")])
  {
    if (qword_1025D4600 != -1)
    {
      sub_101873804();
    }

    v3 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "LocationController,#Warning,Location unavailable fired while sleeping", v6, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101873ED4();
    }
  }

  else
  {
    v6[0] = 9;
    sub_100E6ED50(a1, v6, 1);
    v6[0] = 2;
    if (sub_10000608C(a1, v6, 1) || (v6[0] = 1, sub_10000608C(a1, v6, 1)) || (v6[0] = 0, sub_10000608C(a1, v6, 1)))
    {
      if (qword_1025D4600 != -1)
      {
        sub_101873804();
      }

      v5 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v6[0]) = 0;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "Location unavailable timer fired, restart with fine granularity as client still wants location", v6, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101873DF8();
      }

      LOBYTE(v6[0]) = 1;
      sub_10010FB88(a1, v6);
    }
  }
}

void sub_1003DD5B0(uint64_t a1)
{
  [*(a1 + 664) invalidate];

  *(a1 + 664) = 0;
  v2 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 184);
  *(a1 + 184) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 192);
  *(a1 + 192) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = [*(a1 + 32) vendor];
  v7 = *(a1 + 256);
  if (v7 != (a1 + 264))
  {
    v8 = v6;
    do
    {
      if (qword_1025D4600 != -1)
      {
        sub_101873804();
      }

      v9 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v10 = sub_1003DD9F8(a1 + 232, v7 + 8);
        v13 = v10[1];
        v11 = v10 + 1;
        v12 = v13;
        if (*(v11 + 23) >= 0)
        {
          v12 = v11;
        }

        *buf = 136446210;
        v39 = v12;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "shutting down %{public}s location provider", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_101873804();
        }

        v25 = qword_1025D4608;
        v26 = sub_1003DD9F8(a1 + 232, v7 + 8);
        v29 = v26[1];
        v27 = v26 + 1;
        v28 = v29;
        if (*(v27 + 23) >= 0)
        {
          v28 = v27;
        }

        v36 = 136446210;
        v37 = v28;
        LODWORD(v34) = 12;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v25, 2, "shutting down %{public}s location provider", &v36, v34);
        v31 = v30;
        sub_100152C7C("Generic", 1, 0, 2, "void CLLocationController::shutdownProviders()", "%s\n", v30);
        if (v31 != buf)
        {
          free(v31);
        }
      }

      v14 = sub_1003DD9F8(a1 + 232, v7 + 8);
      v17 = v14[4];
      v15 = v14 + 4;
      v16 = v17;
      if (*(v15 + 23) >= 0)
      {
        v18 = v15;
      }

      else
      {
        v18 = v16;
      }

      v19 = [NSString stringWithUTF8String:v18];
      v20 = +[CLSilo main];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = sub_1003DDA50;
      v35[3] = &unk_1024473F0;
      v35[4] = v8;
      v35[5] = v19;
      [v20 async:v35];
      v21 = *(v7 + 5);
      *(v7 + 5) = 0;
      if (v21)
      {
        (*(*v21 + 8))(v21);
      }

      v22 = *(v7 + 1);
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = *(v7 + 2);
          v24 = *v23 == v7;
          v7 = v23;
        }

        while (!v24);
      }

      v7 = v23;
    }

    while (v23 != (a1 + 264));
  }

  *(a1 + 656) = 0;
  v32 = *(a1 + 640);
  if (v32)
  {
    [*(v32 + 16) unregister:*(v32 + 8) forNotification:0];
    [*(*(a1 + 640) + 16) unregister:*(*(a1 + 640) + 8) forNotification:9];
    [objc_msgSend(*(a1 + 32) "vendor")];
    v33 = *(a1 + 640);
    *(a1 + 640) = 0;
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }
  }
}

uint64_t *sub_1003DD9F8(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_1000432E8("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 8);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

id sub_1003DDA5C(uint64_t a1)
{
  if ((*(a1 + 672) & 1) == 0)
  {
    v2 = [objc_msgSend(*(a1 + 32) "vendor")];
    *(a1 + 328) = v2;
    sub_10001A3E8(v2, v3);
    if (sub_10071BA20())
    {
      if (qword_1025D4600 != -1)
      {
        sub_101873CF0();
      }

      v4 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "CELL_LOC:choosing CLUnifiedCellLocationProvider", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10187408C();
      }

      v153[0] = _NSConcreteStackBlock;
      v153[1] = 3221225472;
      v153[2] = sub_1003DF778;
      v153[3] = &unk_10244F910;
      v153[4] = a1;
      sub_100CF73C0(v153);
    }

    else
    {
      *(a1 + 332) = 0;
    }

    v152[0] = _NSConcreteStackBlock;
    v152[1] = 3221225472;
    v152[2] = sub_1003DF790;
    v152[3] = &unk_10244F910;
    v152[4] = a1;
    sub_1006F7434(v152);
    v151[0] = _NSConcreteStackBlock;
    v151[1] = 3221225472;
    v151[2] = sub_1003DF7A8;
    v151[3] = &unk_10244F910;
    v151[4] = a1;
    sub_100951BD8(v151);
  }

  v5 = [objc_msgSend(*(a1 + 32) "vendor")];
  *(a1 + 656) = v5;
  if (v5)
  {
    *(a1 + 336) = 4;
  }

  if (*(a1 + 328))
  {
    v6 = [objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")];
    if (v6)
    {
      sub_10000EC00(&v141, [v6 UTF8String]);
      v7 = *(a1 + 328);
      sub_10000EC00(v149, "CLWifiLocationProvider");
      sub_1003DFC20(buf, v7, &v141, v149, 4, 1, 1);
      v148[0] = (a1 + 328);
      v8 = sub_100109DF4(a1 + 232, (a1 + 328), &unk_101C66300, v148);
      v9 = v8;
      *(v8 + 10) = *buf;
      if (*(v8 + 71) < 0)
      {
        operator delete(v8[6]);
      }

      v9[8] = v156;
      *(v9 + 3) = v155;
      HIBYTE(v156) = 0;
      LOBYTE(v155) = 0;
      if (*(v9 + 95) < 0)
      {
        operator delete(v9[9]);
      }

      *(v9 + 9) = __p;
      v9[11] = v158;
      HIBYTE(v158) = 0;
      LOBYTE(__p) = 0;
      v10 = v160;
      *(v9 + 6) = v159;
      *(v9 + 7) = v10;
      v11 = v164;
      *(v9 + 10) = v163;
      *(v9 + 11) = v11;
      *(v9 + 236) = *(v167 + 12);
      v12 = v167[0];
      v13 = v166;
      *(v9 + 12) = v165;
      *(v9 + 13) = v13;
      *(v9 + 14) = v12;
      v14 = v162;
      *(v9 + 8) = v161;
      *(v9 + 9) = v14;
      memcpy(v9 + 32, v168, 0x201uLL);
      v15 = v169;
      v169 = 0u;
      v16 = v9[98];
      *(v9 + 97) = v15;
      if (v16)
      {
        sub_100008080(v16);
        v17 = v172;
        v18 = v171;
        *(v9 + 99) = v170;
        v19 = *(v175 + 9);
        v20 = v175[0];
        v21 = v174;
        *(v9 + 105) = v173;
        *(v9 + 107) = v21;
        v22 = *(&v169 + 1);
        *(v9 + 109) = v20;
        *(v9 + 881) = v19;
        *(v9 + 101) = v18;
        *(v9 + 103) = v17;
        *(v9 + 113) = v176;
        if (v22)
        {
          sub_100008080(v22);
        }
      }

      else
      {
        v23 = v175[0];
        v24 = v172;
        v25 = v171;
        *(v9 + 99) = v170;
        *(v9 + 101) = v25;
        *(v9 + 103) = v24;
        v26 = *(v175 + 9);
        v27 = v174;
        *(v9 + 105) = v173;
        *(v9 + 107) = v27;
        *(v9 + 109) = v23;
        *(v9 + 881) = v26;
        *(v9 + 113) = v176;
      }

      if (SHIBYTE(v158) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v156) < 0)
      {
        operator delete(v155);
      }

      if (v150 < 0)
      {
        operator delete(v149[0]);
      }

      sub_10067D718();
    }
  }

  if (*(a1 + 332))
  {
    v28 = [objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")];
    if (v28)
    {
      sub_10000EC00(&v141, [v28 UTF8String]);
      v29 = *(a1 + 332);
      sub_10000EC00(v149, "CLUnifiedCellLocationProvider");
      sub_1003DFC20(buf, v29, &v141, v149, 6, 0, -1);
      v148[0] = (a1 + 332);
      v30 = sub_100109DF4(a1 + 232, (a1 + 332), &unk_101C66300, v148);
      v31 = v30;
      *(v30 + 10) = *buf;
      if (*(v30 + 71) < 0)
      {
        operator delete(v30[6]);
      }

      v31[8] = v156;
      *(v31 + 3) = v155;
      HIBYTE(v156) = 0;
      LOBYTE(v155) = 0;
      if (*(v31 + 95) < 0)
      {
        operator delete(v31[9]);
      }

      *(v31 + 9) = __p;
      v31[11] = v158;
      HIBYTE(v158) = 0;
      LOBYTE(__p) = 0;
      v32 = v160;
      *(v31 + 6) = v159;
      *(v31 + 7) = v32;
      v33 = v164;
      *(v31 + 10) = v163;
      *(v31 + 11) = v33;
      *(v31 + 236) = *(v167 + 12);
      v34 = v167[0];
      v35 = v166;
      *(v31 + 12) = v165;
      *(v31 + 13) = v35;
      *(v31 + 14) = v34;
      v36 = v162;
      *(v31 + 8) = v161;
      *(v31 + 9) = v36;
      memcpy(v31 + 32, v168, 0x201uLL);
      v37 = v169;
      v169 = 0u;
      v38 = v31[98];
      *(v31 + 97) = v37;
      if (v38)
      {
        sub_100008080(v38);
        v39 = v172;
        v40 = v171;
        *(v31 + 99) = v170;
        v41 = *(v175 + 9);
        v42 = v175[0];
        v43 = v174;
        *(v31 + 105) = v173;
        *(v31 + 107) = v43;
        v44 = *(&v169 + 1);
        *(v31 + 109) = v42;
        *(v31 + 881) = v41;
        *(v31 + 101) = v40;
        *(v31 + 103) = v39;
        *(v31 + 113) = v176;
        if (v44)
        {
          sub_100008080(v44);
        }
      }

      else
      {
        v45 = v175[0];
        v46 = v172;
        v47 = v171;
        *(v31 + 99) = v170;
        *(v31 + 101) = v47;
        *(v31 + 103) = v46;
        v48 = *(v175 + 9);
        v49 = v174;
        *(v31 + 105) = v173;
        *(v31 + 107) = v49;
        *(v31 + 109) = v45;
        *(v31 + 881) = v48;
        *(v31 + 113) = v176;
      }

      if (SHIBYTE(v158) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v156) < 0)
      {
        operator delete(v155);
      }

      if (v150 < 0)
      {
        operator delete(v149[0]);
      }

      sub_100CF72C4();
    }
  }

  v50 = *(a1 + 336);
  if (v50)
  {
    sub_10000EC00(&v141, "gps");
    sub_10000EC00(v149, "CLGnssProvider");
    sub_1003DFC20(buf, v50, &v141, v149, 1, 2, 2);
    v148[0] = (a1 + 336);
    v51 = sub_100109DF4(a1 + 232, (a1 + 336), &unk_101C66300, v148);
    v52 = v51;
    *(v51 + 10) = *buf;
    if (*(v51 + 71) < 0)
    {
      operator delete(v51[6]);
    }

    v52[8] = v156;
    *(v52 + 3) = v155;
    HIBYTE(v156) = 0;
    LOBYTE(v155) = 0;
    if (*(v52 + 95) < 0)
    {
      operator delete(v52[9]);
    }

    *(v52 + 9) = __p;
    v52[11] = v158;
    HIBYTE(v158) = 0;
    LOBYTE(__p) = 0;
    v53 = v160;
    *(v52 + 6) = v159;
    *(v52 + 7) = v53;
    v54 = v164;
    *(v52 + 10) = v163;
    *(v52 + 11) = v54;
    *(v52 + 236) = *(v167 + 12);
    v55 = v167[0];
    v56 = v166;
    *(v52 + 12) = v165;
    *(v52 + 13) = v56;
    *(v52 + 14) = v55;
    v57 = v162;
    *(v52 + 8) = v161;
    *(v52 + 9) = v57;
    memcpy(v52 + 32, v168, 0x201uLL);
    v58 = v169;
    v169 = 0u;
    v59 = v52[98];
    *(v52 + 97) = v58;
    if (v59)
    {
      sub_100008080(v59);
      v60 = v172;
      v61 = v171;
      *(v52 + 99) = v170;
      v62 = *(v175 + 9);
      v63 = v175[0];
      v64 = v174;
      *(v52 + 105) = v173;
      *(v52 + 107) = v64;
      v65 = *(&v169 + 1);
      *(v52 + 109) = v63;
      *(v52 + 881) = v62;
      *(v52 + 101) = v61;
      *(v52 + 103) = v60;
      *(v52 + 113) = v176;
      if (v65)
      {
        sub_100008080(v65);
      }
    }

    else
    {
      v66 = v175[0];
      v67 = v172;
      v68 = v171;
      *(v52 + 99) = v170;
      *(v52 + 101) = v68;
      *(v52 + 103) = v67;
      v69 = *(v175 + 9);
      v70 = v174;
      *(v52 + 105) = v173;
      *(v52 + 107) = v70;
      *(v52 + 109) = v66;
      *(v52 + 881) = v69;
      *(v52 + 113) = v176;
    }

    if (SHIBYTE(v158) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v156) < 0)
    {
      operator delete(v155);
    }

    if (v150 < 0)
    {
      operator delete(v149[0]);
    }

    if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v141.__r_.__value_.__l.__data_);
    }

    sub_100D64FE8();
  }

  *(a1 + 340) = 0;
  memset(&v141, 0, sizeof(v141));
  v71 = (a1 + 340);
  if ([objc_msgSend(*(a1 + 32) "vendor")])
  {
    v72 = [objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")];
    if (v72)
    {
      sub_100006044(&v141, [v72 UTF8String]);
      v73 = 5;
      *v71 = 5;
      goto LABEL_70;
    }
  }

  v73 = *v71;
  if (*v71)
  {
LABEL_70:
    sub_10000EC00(v149, "CLPipelineLocationProvider");
    sub_1003DFC20(buf, v73, &v141, v149, 10, 2, 4);
    v148[0] = (a1 + 340);
    v74 = sub_100109DF4(a1 + 232, (a1 + 340), &unk_101C66300, v148);
    v75 = v74;
    *(v74 + 10) = *buf;
    if (*(v74 + 71) < 0)
    {
      operator delete(v74[6]);
    }

    v75[8] = v156;
    *(v75 + 3) = v155;
    HIBYTE(v156) = 0;
    LOBYTE(v155) = 0;
    if (*(v75 + 95) < 0)
    {
      operator delete(v75[9]);
    }

    *(v75 + 9) = __p;
    v75[11] = v158;
    HIBYTE(v158) = 0;
    LOBYTE(__p) = 0;
    v76 = v160;
    *(v75 + 6) = v159;
    *(v75 + 7) = v76;
    v77 = v164;
    *(v75 + 10) = v163;
    *(v75 + 11) = v77;
    *(v75 + 236) = *(v167 + 12);
    v78 = v167[0];
    v79 = v166;
    *(v75 + 12) = v165;
    *(v75 + 13) = v79;
    *(v75 + 14) = v78;
    v80 = v162;
    *(v75 + 8) = v161;
    *(v75 + 9) = v80;
    memcpy(v75 + 32, v168, 0x201uLL);
    v81 = v169;
    v169 = 0u;
    v82 = v75[98];
    *(v75 + 97) = v81;
    if (v82)
    {
      sub_100008080(v82);
      v83 = v172;
      v84 = v171;
      *(v75 + 99) = v170;
      v85 = *(v175 + 9);
      v86 = v175[0];
      v87 = v174;
      *(v75 + 105) = v173;
      *(v75 + 107) = v87;
      v88 = *(&v169 + 1);
      *(v75 + 109) = v86;
      *(v75 + 881) = v85;
      *(v75 + 101) = v84;
      *(v75 + 103) = v83;
      *(v75 + 113) = v176;
      if (v88)
      {
        sub_100008080(v88);
      }
    }

    else
    {
      v89 = v175[0];
      v90 = v172;
      v91 = v171;
      *(v75 + 99) = v170;
      *(v75 + 101) = v91;
      *(v75 + 103) = v90;
      v92 = *(v175 + 9);
      v93 = v174;
      *(v75 + 105) = v173;
      *(v75 + 107) = v93;
      *(v75 + 109) = v89;
      *(v75 + 881) = v92;
      *(v75 + 113) = v176;
    }

    if (SHIBYTE(v158) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v156) < 0)
    {
      operator delete(v155);
    }

    if (v150 < 0)
    {
      operator delete(v149[0]);
    }

    sub_1010A6A78();
  }

  if (SHIBYTE(v141.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v141.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 344))
  {
    v141.__r_.__value_.__r.__words[0] = 0;
    v141.__r_.__value_.__l.__size_ = &v141;
    v141.__r_.__value_.__r.__words[2] = 0x4812000000;
    v142 = sub_10004738C;
    v143 = sub_100048384;
    v144 = &unk_10238AE8B;
    v146 = 0;
    v147 = 0;
    v145 = 0;
    v140[0] = _NSConcreteStackBlock;
    v140[1] = 3221225472;
    v140[2] = sub_1003DF7C0;
    v140[3] = &unk_10244F938;
    v140[4] = &v141;
    sub_1006F7434(v140);
    v94 = *(a1 + 344);
    size = v141.__r_.__value_.__l.__size_;
    sub_10000EC00(v149, "CLAccessoryLocationProvider");
    sub_1003DFC20(buf, v94, (size + 48), v149, 3, 2, 5);
    v148[0] = (a1 + 344);
    v96 = sub_100109DF4(a1 + 232, (a1 + 344), &unk_101C66300, v148);
    v97 = v96;
    *(v96 + 10) = *buf;
    if (*(v96 + 71) < 0)
    {
      operator delete(v96[6]);
    }

    v97[8] = v156;
    *(v97 + 3) = v155;
    HIBYTE(v156) = 0;
    LOBYTE(v155) = 0;
    if (*(v97 + 95) < 0)
    {
      operator delete(v97[9]);
    }

    *(v97 + 9) = __p;
    v97[11] = v158;
    HIBYTE(v158) = 0;
    LOBYTE(__p) = 0;
    v98 = v160;
    *(v97 + 6) = v159;
    *(v97 + 7) = v98;
    v99 = v164;
    *(v97 + 10) = v163;
    *(v97 + 11) = v99;
    *(v97 + 236) = *(v167 + 12);
    v100 = v167[0];
    v101 = v166;
    *(v97 + 12) = v165;
    *(v97 + 13) = v101;
    *(v97 + 14) = v100;
    v102 = v162;
    *(v97 + 8) = v161;
    *(v97 + 9) = v102;
    memcpy(v97 + 32, v168, 0x201uLL);
    v103 = v169;
    v169 = 0u;
    v104 = v97[98];
    *(v97 + 97) = v103;
    if (v104)
    {
      sub_100008080(v104);
      v105 = v172;
      v106 = v171;
      *(v97 + 99) = v170;
      v107 = *(v175 + 9);
      v108 = v175[0];
      v109 = v174;
      *(v97 + 105) = v173;
      *(v97 + 107) = v109;
      v110 = *(&v169 + 1);
      *(v97 + 109) = v108;
      *(v97 + 881) = v107;
      *(v97 + 101) = v106;
      *(v97 + 103) = v105;
      *(v97 + 113) = v176;
      if (v110)
      {
        sub_100008080(v110);
      }
    }

    else
    {
      v111 = v175[0];
      v112 = v172;
      v113 = v171;
      *(v97 + 99) = v170;
      *(v97 + 101) = v113;
      *(v97 + 103) = v112;
      v114 = *(v175 + 9);
      v115 = v174;
      *(v97 + 105) = v173;
      *(v97 + 107) = v115;
      *(v97 + 109) = v111;
      *(v97 + 881) = v114;
      *(v97 + 113) = v176;
    }

    if (SHIBYTE(v158) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v156) < 0)
    {
      operator delete(v155);
    }

    if (v150 < 0)
    {
      operator delete(v149[0]);
    }

    sub_1006F7338();
  }

  if (*(a1 + 348))
  {
    v141.__r_.__value_.__r.__words[0] = 0;
    v141.__r_.__value_.__l.__size_ = &v141;
    v141.__r_.__value_.__r.__words[2] = 0x4812000000;
    v142 = sub_10004738C;
    v143 = sub_100048384;
    v144 = &unk_10238AE8B;
    v146 = 0;
    v147 = 0;
    v145 = 0;
    v139[0] = _NSConcreteStackBlock;
    v139[1] = 3221225472;
    v139[2] = sub_1003DF83C;
    v139[3] = &unk_10244F938;
    v139[4] = &v141;
    sub_100951BD8(v139);
    v116 = *(a1 + 348);
    v117 = v141.__r_.__value_.__l.__size_;
    sub_10000EC00(v149, "CLSimulatedLocationProvider");
    sub_1003DFC20(buf, v116, (v117 + 48), v149, 0, 0, -1);
    v148[0] = (a1 + 348);
    v118 = sub_100109DF4(a1 + 232, (a1 + 348), &unk_101C66300, v148);
    v119 = v118;
    *(v118 + 10) = *buf;
    if (*(v118 + 71) < 0)
    {
      operator delete(v118[6]);
    }

    v119[8] = v156;
    *(v119 + 3) = v155;
    HIBYTE(v156) = 0;
    LOBYTE(v155) = 0;
    if (*(v119 + 95) < 0)
    {
      operator delete(v119[9]);
    }

    *(v119 + 9) = __p;
    v119[11] = v158;
    HIBYTE(v158) = 0;
    LOBYTE(__p) = 0;
    v120 = v160;
    *(v119 + 6) = v159;
    *(v119 + 7) = v120;
    v121 = v164;
    *(v119 + 10) = v163;
    *(v119 + 11) = v121;
    *(v119 + 236) = *(v167 + 12);
    v122 = v167[0];
    v123 = v166;
    *(v119 + 12) = v165;
    *(v119 + 13) = v123;
    *(v119 + 14) = v122;
    v124 = v162;
    *(v119 + 8) = v161;
    *(v119 + 9) = v124;
    memcpy(v119 + 32, v168, 0x201uLL);
    v125 = v169;
    v169 = 0u;
    v126 = v119[98];
    *(v119 + 97) = v125;
    if (v126)
    {
      sub_100008080(v126);
      v127 = v172;
      v128 = v171;
      *(v119 + 99) = v170;
      v129 = *(v175 + 9);
      v130 = v175[0];
      v131 = v174;
      *(v119 + 105) = v173;
      *(v119 + 107) = v131;
      v132 = *(&v169 + 1);
      *(v119 + 109) = v130;
      *(v119 + 881) = v129;
      *(v119 + 101) = v128;
      *(v119 + 103) = v127;
      *(v119 + 113) = v176;
      if (v132)
      {
        sub_100008080(v132);
      }
    }

    else
    {
      v133 = v175[0];
      v134 = v172;
      v135 = v171;
      *(v119 + 99) = v170;
      *(v119 + 101) = v135;
      *(v119 + 103) = v134;
      v136 = *(v175 + 9);
      v137 = v174;
      *(v119 + 105) = v173;
      *(v119 + 107) = v137;
      *(v119 + 109) = v133;
      *(v119 + 881) = v136;
      *(v119 + 113) = v176;
    }

    if (SHIBYTE(v158) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v156) < 0)
    {
      operator delete(v155);
    }

    if (v150 < 0)
    {
      operator delete(v149[0]);
    }

    sub_100951AA8();
  }

  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "vendor")];
  if (result)
  {
    sub_100E09B40();
  }

  return result;
}

void sub_1003DF59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1003DF790(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  *(*(result + 32) + 344) = v2;
  return result;
}

uint64_t sub_1003DF7A8(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = 7;
  }

  else
  {
    v2 = 0;
  }

  *(*(result + 32) + 348) = v2;
  return result;
}

double sub_1003DF7C0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    sub_100007244(&v5, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v6 = *(a2 + 24);
  }

  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 71) < 0)
  {
    operator delete(*(v3 + 48));
  }

  result = *&v5;
  *(v3 + 48) = v5;
  *(v3 + 64) = v6;
  return result;
}

double sub_1003DF83C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 31) < 0)
  {
    sub_100007244(&v5, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v6 = *(a2 + 24);
  }

  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 71) < 0)
  {
    operator delete(*(v3 + 48));
  }

  result = *&v5;
  *(v3 + 48) = v5;
  *(v3 + 64) = v6;
  return result;
}

void sub_1003DF8B8(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018741E8();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLLocationController::onLoiNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018741FC();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLLocationController::onLoiNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100675FD8(a4, a1, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1003DFA94(uint64_t result)
{
  v1 = *(result + 232);
  v2 = (result + 240);
  if (v1 != (result + 240))
  {
    v3 = result;
    do
    {
      v4 = *(v1 + 8);
      if (v4)
      {
        result = sub_10010FF14(v3, v4);
      }

      v5 = v1[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v1[2];
          v7 = *v6 == v1;
          v1 = v6;
        }

        while (!v7);
      }

      v1 = v6;
    }

    while (v6 != v2);
  }

  return result;
}

uint64_t sub_1003DFB20(uint64_t a1, char a2)
{
  if (a2 & 1) != 0 || (*(a1 + 681))
  {
    v2 = 1;
  }

  else
  {
    if (!off_1025D53B8)
    {
      operator new();
    }

    if (*(off_1025D53B8 + 1))
    {
      v2 = *off_1025D53B8;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_1003DFC20(uint64_t a1, int a2, __int128 *a3, __int128 *a4, int a5, char a6, char a7)
{
  *a1 = a2;
  if (*(a3 + 23) < 0)
  {
    sub_100007244((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v12 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v12;
  }

  if (*(a4 + 23) < 0)
  {
    sub_100007244((a1 + 32), *a4, *(a4 + 1));
  }

  else
  {
    v13 = *a4;
    *(a1 + 48) = *(a4 + 2);
    *(a1 + 32) = v13;
  }

  *(a1 + 56) = 0xFFFF;
  *(a1 + 68) = 0;
  *(a1 + 60) = 0;
  *(a1 + 76) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 92) = _Q0;
  *(a1 + 108) = _Q0;
  *(a1 + 124) = _Q0;
  *(a1 + 140) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0xBFF0000000000000;
  *(a1 + 168) = 0;
  *(a1 + 172) = 0xBFF0000000000000;
  *(a1 + 180) = 0x7FFFFFFF;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 208) = 0;
  sub_100021ED8(a1 + 216);
  *(a1 + 864) = a5;
  *(a1 + 868) = a6;
  *(a1 + 869) = a7;
  *(a1 + 870) = 1;
  *(a1 + 872) = 0;
  return a1;
}

void sub_1003DFD34(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003DFD50(uint64_t a1)
{
  v2 = *(a1 + 744);
  if (v2)
  {
    sub_100008080(v2);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t **sub_1003DFE00(uint64_t **a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      sub_100D83C9C(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1003DFE80(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0xFFFF;
  *(a1 + 68) = 0;
  *(a1 + 60) = 0;
  *(a1 + 76) = xmmword_101C75BF0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 92) = _Q0;
  *(a1 + 108) = _Q0;
  *(a1 + 124) = _Q0;
  *(a1 + 140) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 144) = 0xBFF0000000000000;
  *(a1 + 168) = 0;
  *(a1 + 172) = 0xBFF0000000000000;
  *(a1 + 180) = 0x7FFFFFFF;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 208) = 0;
  *(a1 + 200) = 0;
  sub_100021ED8(a1 + 216);
  *(a1 + 864) = 0;
  *(a1 + 868) = 1;
  *(a1 + 872) = 0;
  return a1;
}

void sub_1003DFF28()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_1003DFFEC()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

void sub_1003E00A4(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v5 = *a3;
  if (v5 > 0x38)
  {
LABEL_40:
    if (v5)
    {
      if ((*(a1 + 88) & 1) == 0)
      {
        v22 = sub_10000B1F8(v5, a2);
        v32 = 1;
        v23 = sub_10001A6B0(v22, &v32);
        *(a1 + 88) = 1;
        *(a1 + 96) = v23;
        if (qword_1025D4600 != -1)
        {
          sub_1018754B0();
        }

        v24 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v25 = *a3;
          v32 = 67240192;
          v33 = v25;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,notification,fitness,%{public}d", &v32, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101876EB8(a3);
        }
      }

      *(a1 + 136) = 0;
      *(a1 + 144) = 0xBFF0000000000000;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0xBFF0000000000000;
      *(a1 + 120) = 0;
      *(a1 + 128) = 0xBFF0000000000000;
      if (*(a1 + 520) > 0.0)
      {
        *(a1 + 466) = 1;
      }
    }

    goto LABEL_50;
  }

  if (((1 << v5) & 0x28E) == 0)
  {
    if (((1 << v5) & 0x110000000000C20) != 0)
    {
      if ((*(a1 + 104) & 1) == 0)
      {
        v6 = sub_10000B1F8(v5, a2);
        v32 = 1;
        v7 = sub_10001A6B0(v6, &v32);
        *(a1 + 104) = 1;
        *(a1 + 112) = v7;
        if (qword_1025D4600 != -1)
        {
          sub_1018754B0();
        }

        v8 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v9 = *a3;
          v32 = 67240192;
          v33 = v9;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,notification,driving,%{public}d", &v32, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101876BF4(a3);
        }
      }

      *(a1 + 136) = 0;
      *(a1 + 144) = 0xBFF0000000000000;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0xBFF0000000000000;
      *(a1 + 120) = 0;
      *(a1 + 128) = 0xBFF0000000000000;
      if (*(a1 + 520) > 0.0)
      {
        *(a1 + 467) = 1;
      }

      goto LABEL_50;
    }

    if (((1 << v5) & 0x20000000010) != 0)
    {
      if ((*(a1 + 120) & 1) == 0)
      {
        v18 = sub_10000B1F8(v5, a2);
        v32 = 1;
        v19 = sub_10001A6B0(v18, &v32);
        *(a1 + 120) = 1;
        *(a1 + 128) = v19;
        if (qword_1025D4600 != -1)
        {
          sub_1018754B0();
        }

        v20 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          v21 = *a3;
          v32 = 67240192;
          v33 = v21;
          _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,notification,walking,%{public}d", &v32, 8u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101876B08(a3);
        }
      }

      *(a1 + 136) = 0;
      *(a1 + 144) = 0xBFF0000000000000;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0xBFF0000000000000;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0xBFF0000000000000;
      goto LABEL_50;
    }

    goto LABEL_40;
  }

  isTypeUnclassifiedMoving = CLMotionActivity::isTypeUnclassifiedMoving();
  if (isTypeUnclassifiedMoving && ((*(a1 + 104) & 1) != 0 || (*(a1 + 88) & 1) != 0 || *(a1 + 120) == 1))
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018754D8();
    }

    v12 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v13 = *a3;
      v32 = 67240192;
      v33 = v13;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,notification,moving_non_stationary,%{public}d", &v32, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101876DCC(a3);
    }
  }

  else
  {
    if ((*(a1 + 136) & 1) == 0)
    {
      v14 = sub_10000B1F8(isTypeUnclassifiedMoving, v11);
      v32 = 1;
      v15 = sub_10001A6B0(v14, &v32);
      *(a1 + 136) = 1;
      *(a1 + 144) = v15;
      *(a1 + 472) = 0;
      *(a1 + 480) = 0;
      *(a1 + 488) = 0;
      if (qword_1025D4600 != -1)
      {
        sub_1018754B0();
      }

      v16 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v17 = *a3;
        v32 = 67240192;
        v33 = v17;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,notification,plausibly_stationary,%{public}d", &v32, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101876CE0(a3);
      }
    }

    *(a1 + 104) = 0;
    *(a1 + 112) = 0xBFF0000000000000;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0xBFF0000000000000;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0xBFF0000000000000;
  }

LABEL_50:
  if (*(a1 + 520) > 0.0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1018754B0();
    }

    v26 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v27 = *a3;
      v28 = *(a1 + 136);
      v29 = *(a1 + 467);
      v30 = *(a1 + 466);
      v31 = *(a1 + 120);
      v32 = 67241216;
      v33 = v27;
      v34 = 1026;
      v35 = v28;
      v36 = 1026;
      v37 = v29;
      v38 = 1026;
      v39 = v30;
      v40 = 1026;
      v41 = v31;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,raw,motion,%{public}d,fPlausiblyStationary,%{public}d,fWasDriving,%{public}d,fWasFitness,%{public}d,fIsWalking,%{public}d", &v32, 0x20u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101876FA4();
    }
  }
}

void sub_1003E0614(uint64_t a1)
{
  if (qword_1025D4600 != -1)
  {
    sub_1018754D8();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "#GPSPowerSavings,accessory connected", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018770D8();
  }

  *(a1 + 468) = 1;
}

void sub_1003E06B4(uint64_t a1, char a2)
{
  if ((atomic_load_explicit(&qword_102656140, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102656140))
  {
    sub_10001CAF4(buf);
    v9 = 0;
    v7 = sub_10001CB4C(*buf, "LocationControllerIgnoreCharging", &v9, 0xFFFFFFFFLL);
    v8 = v7 & v9;
    if (v11)
    {
      sub_100008080(v11);
    }

    byte_102656138 = v8;
    __cxa_guard_release(&qword_102656140);
  }

  *(a1 + 51) = (a2 | byte_102656138) & 1;
  v4 = (a1 + 51);
  if (qword_1025D4600 != -1)
  {
    sub_1018754B0();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v6 = *v4;
    *buf = 67240192;
    *&buf[4] = v6;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,notification,fIsBatteryNotCharging,%{public}d", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101877290(v4);
  }
}

void sub_1003E0818(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  __cxa_guard_abort(&qword_102656140);
  _Unwind_Resume(a1);
}

void sub_1003E084C(uint64_t a1, char a2)
{
  *(a1 + 49) = a2;
  v2 = (a1 + 49);
  if (qword_1025D4600 != -1)
  {
    sub_1018754D8();
  }

  v3 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v4 = *v2;
    v5[0] = 67240192;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,emergency state,%{public}d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101877384(v2);
  }
}

void sub_1003E0928(double *a1, double *a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_1018754D8();
  }

  v4 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
  {
    v5 = a1[18];
    v6 = *a2;
    v7 = 0xBFF0000000000000;
    if (v5 <= 0.0)
    {
      v8 = -1.0;
    }

    else
    {
      v8 = *a2 - v5;
    }

    v9 = *(a1 + 464);
    v10 = *(a1 + 136);
    v11 = *(a1 + 98);
    if (v11)
    {
      v12 = *v11;
      LODWORD(v11) = v11[1];
    }

    else
    {
      v12 = 0;
    }

    v13 = ((*(a1 + 119) * *(a1 + 119)) + (*(a1 + 118) * *(a1 + 118))) + (*(a1 + 120) * *(a1 + 120));
    v14 = *(a1 + 121);
    v15 = a1[10];
    v33 = 134353152;
    v16 = v14 + sqrtf(v13);
    v17 = v6 - v15;
    v19 = a1[8];
    v18 = a1[9];
    v20 = v6 - v18;
    if (v15 <= 0.0)
    {
      v17 = -1.0;
    }

    v21 = v18 == 0.0;
    v22 = v18 < 0.0;
    v23 = *(a1 + 122);
    v24 = *(a1 + 466);
    v25 = *(a1 + 467);
    v26 = *(a1 + 468);
    v27 = *(a1 + 48);
    v28 = *a1;
    v29 = *(a1 + 49);
    v30 = *(a1 + 51);
    v31 = v16;
    if (v22 || v21)
    {
      v20 = -1.0;
    }

    v32 = v6 - v19;
    if (v19 > 0.0)
    {
      v7 = *&v32;
    }

    v34 = v8;
    v35 = 1026;
    v36 = v9;
    v37 = 1026;
    v38 = v10;
    v39 = 1026;
    v40 = v12;
    v41 = 1026;
    v42 = v11;
    v43 = 2050;
    v44 = v31;
    v45 = 2050;
    v46 = v17;
    v47 = 2050;
    v48 = v20;
    v49 = 2050;
    v50 = v7;
    v51 = 2050;
    v52 = v23;
    v53 = 1026;
    v54 = v24;
    v55 = 1026;
    v56 = v25;
    v57 = 1026;
    v58 = v26;
    v59 = 1026;
    v60 = v27;
    v61 = 1026;
    v62 = v28;
    v63 = 1026;
    v64 = v29;
    v65 = 1026;
    v66 = v30;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "#GPSPowerSavings,reasons,stationaryTime,%{public}.0lf,startedStationary,%{public}d,fPlausiblyStationary,%{public}d,assocToAnyAP,%{public}d,assocToPersonalizedAP,%{public}d,IODisplacement,%{public}.1lf,ageOfGpsOn,%{public}.0lf,ageOfGpsFix,%{public}.0lf,ageOfWifiFix,%{public}.0lf,maxIOv,%{public}.1lf,fWasFitness,%{public}d,fWasDriving,%{public}d,fIsConVehicleFlag,%{public}d,fCanSafelyTurnOffGps,%{public}d,fFeatureEnabled,%{public}d,fInEmergencyState,%{public}d,fIsBatteryNotCharging,%{public}d", &v33, 0x80u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101877470(a1, a2);
  }
}

uint64_t sub_1003E0B84(uint64_t a1)
{
  *(a1 + 192) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 200) = xmmword_101C75CB0;
  v2 = (a1 + 200);
  *(a1 + 216) = xmmword_101C75CC0;
  v3 = (a1 + 216);
  *(a1 + 232) = 0xBFF0000000000000;
  sub_10001CAF4(buf);
  v4 = *(a1 + 208);
  v14 = 0.0;
  v5 = sub_1000B9370(*buf, "LCStatsSubmitMetricsThrSec", &v14);
  v6 = v14;
  if (!v5)
  {
    v6 = v4;
  }

  *v2 = v6;
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  sub_10001CAF4(buf);
  v7 = *(a1 + 224);
  v14 = 0.0;
  v8 = sub_1000B9370(*buf, "LCStatsSubmitMetricsThrSize", &v14);
  v9 = v14;
  if (!v8)
  {
    v9 = v7;
  }

  *v3 = v9;
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if (qword_1025D4600 != -1)
  {
    sub_1018777D4();
  }

  v10 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v11 = *v2;
    v12 = *v3;
    *buf = 134349312;
    *&buf[4] = v11;
    *&buf[12] = 2050;
    *&buf[14] = v12;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,CAStats,fMetricsCollectionDuration,%{public}.0lf,fMetricsMinimumSessionLength,%{public}.0lf", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018777FC(v2, v3);
  }

  return a1;
}

void sub_1003E0D54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003E0D7C(uint64_t a1, unsigned __int16 *a2, uint64_t **a3)
{
  if (qword_1025D4600 != -1)
  {
    sub_101877918();
  }

  v5 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v6 = a3;
    if (*(a3 + 23) < 0)
    {
      v6 = *a3;
    }

    v7 = *a2;
    v8 = a2[1];
    v9 = a2[2];
    v10 = a2[3];
    v11 = a2[4];
    v12 = a2[5];
    v13 = a2[6];
    v14 = 136448002;
    v15 = v6;
    v16 = 1026;
    v17 = v7;
    v18 = 1026;
    v19 = v8;
    v20 = 1026;
    v21 = v9;
    v22 = 1026;
    v23 = v10;
    v24 = 1026;
    v25 = v11;
    v26 = 1026;
    v27 = v12;
    v28 = 1026;
    v29 = v13;
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,submitCAStats,%{public}s,fCountsLT0,%{public}d,fCountsLT5,%{public}d,fCountsLT10,%{public}d,fCountsLT30,%{public}d,fCountsLT60,%{public}d,fCountsLT90,%{public}d,fCountsGE90,%{public}d", &v14, 0x36u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10187792C(a3, a2);
  }
}

void sub_1003E0EC8(unsigned __int16 *a1, void *a2)
{
  if (*a2 - *(a1 + 29) >= *(a1 + 25))
  {
    v12 = a1 + 4;
    if (a1[4] && *(a1 + 3) && *(a1 + 4) && *(a1 + 5) && (v13 = a1 + 20, *(a1 + 27) <= *(a1 + 10)))
    {
      if (qword_1025D4600 != -1)
      {
        sub_101877918();
      }

      v21 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v22 = *(a1 + 4);
        *v150 = *(a1 + 3);
        v24 = *(a1 + 5);
        v23 = *(a1 + 6);
        *&v150[6] = v22;
        *(&v151 + 2) = v24;
        v25 = *(a1 + 8);
        *v152 = *(a1 + 7);
        v153 = v25;
        v26 = *(a1 + 10);
        v155 = *(a1 + 9);
        v157 = v26;
        v27 = *(a1 + 12);
        v159 = *(a1 + 11);
        v161 = v27;
        v28 = *(a1 + 14);
        v163 = *(a1 + 13);
        v165 = v28;
        v29 = *(a1 + 16);
        v167 = *(a1 + 15);
        v169 = v29;
        v30 = *(a1 + 18);
        v171 = *(a1 + 17);
        v173 = v30;
        v31 = *(a1 + 26);
        v175 = *(a1 + 25);
        v177 = v31;
        v32 = *(a1 + 28);
        v179 = *(a1 + 27);
        v181 = v32;
        v33 = *(a1 + 30);
        v183 = *(a1 + 29);
        v185 = v33;
        v34 = *(a1 + 32);
        v187 = *(a1 + 31);
        v189 = v34;
        v35 = *(a1 + 34);
        v191 = *(a1 + 33);
        v193 = v35;
        v195 = *a1;
        v197 = a1[1];
        v199 = a1[2];
        v201 = a1[3];
        v203 = a1[4];
        v205 = a1[5];
        v207 = v23;
        v36 = *(a1 + 20);
        v209 = *(a1 + 19);
        v211 = v36;
        v37 = *(a1 + 22);
        v213 = *(a1 + 21);
        v215 = v37;
        v38 = *(a1 + 24);
        v217 = *(a1 + 23);
        *&v150[4] = 1026;
        LOWORD(v151) = 1026;
        HIWORD(v151) = 1026;
        *&v152[4] = 1026;
        v154 = 1026;
        v156 = 1026;
        v158 = 1026;
        v160 = 1026;
        v162 = 1026;
        v164 = 1026;
        v166 = 1026;
        v168 = 1026;
        v170 = 1026;
        v172 = 1026;
        v174 = 1026;
        v176 = 1026;
        v178 = 1026;
        v180 = 1026;
        v182 = 1026;
        v184 = 1026;
        v186 = 1026;
        v188 = 1026;
        v190 = 1026;
        v192 = 1026;
        v194 = 1026;
        v196 = 1026;
        v198 = 1026;
        v200 = 1026;
        v202 = 1026;
        v204 = 1026;
        v206 = 1026;
        v208 = 1026;
        v210 = 1026;
        v212 = 1026;
        v214 = 1026;
        v216 = 1026;
        v218 = 1026;
        v219 = v38;
        *buf = 67249664;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,submitCAStats,fCountWifiAssociatedAndStaticAP,%{public}d,fCountWifiYieldingPersonalized,%{public}d,fCountStationaryWithPersonalizedWifiAP,%{public}d,fCountDMMostlyStationary,%{public}d,fCountDMnonStationary,%{public}d,fCountScreenOff,%{public}d,fCountTotalSeconds,%{public}d,fCountCanSafelyTurnOffGpsCount,%{public}d,fCountIOMotionFromStaticLT1m,%{public}d,fCountIOMotionFromStaticLT2m,%{public}d,fCountIOMotionFromStaticLT5m,%{public}d,fCountIOMotionFromStaticLT10m,%{public}d,fCountIOMotionFromStaticLT20m,%{public}d,fCountIOMotionFromStaticLT50m,%{public}d,fCountIOMotionFromStaticGE50m,%{public}d,fCountGpsWifiDistanceLT5m,%{public}d,fCountGpsWifiDistanceLT10m,%{public}d,fCountGpsWifiDistanceLT20m,%{public}d,fCountGpsWifiDistanceLT50m,%{public}d,fCountGpsWifiDistanceLT100m,%{public}d,fCountGpsWifiDistanceLT200m,%{public}d,fCountGpsWifiDistanceLT500m,%{public}d,fCountGpsWifiDistanceLT1000m,%{public}d,fCountGpsWifiDistanceGE1000m,%{public}d,fCountBestAccuracyWithoutGps,%{public}d,fCountStartedStatic,%{public}d,fCountIncludedFitness,%{public}d,fCountIncludedDriving,%{public}d,fCountIncludedConnectedVehicleFlag,%{public}d,fCountSessions,%{public}d,fCountSessionsStartedFromLC,%{public}d,fCountStationaryWithoutPersonalizedWifiAP,%{public}d,fCountIOMaxVelocityWhileStaticLT1ms,%{public}d,fCountIOMaxVelocityWhileStaticLT2ms,%{public}d,fCountIOMaxVelocityWhileStaticLT3ms,%{public}d,fCountIOMaxVelocityWhileStaticLT4ms,%{public}d,fCountIOMaxVelocityWhileStaticLT5ms,%{public}d,fCountIOMaxVelocityWhileStaticGE5ms,%{public}d,", buf, 0xE6u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4600 != -1)
        {
          sub_1018777D4();
        }

        v48 = *(a1 + 7);
        v47 = *(a1 + 8);
        v50 = *(a1 + 9);
        v49 = *(a1 + 10);
        v52 = *(a1 + 11);
        v51 = *(a1 + 12);
        v53 = *(a1 + 13);
        v54 = *(a1 + 14);
        v56 = *(a1 + 15);
        v55 = *(a1 + 16);
        *&v79[6] = *(a1 + 4);
        v57 = *(a1 + 17);
        v58 = *(a1 + 18);
        *v81 = v48;
        v84 = v50;
        v59 = *(a1 + 25);
        v60 = *(a1 + 26);
        v88 = v52;
        v92 = v53;
        v62 = *(a1 + 27);
        v61 = *(a1 + 28);
        v96 = v56;
        v100 = v57;
        v63 = *(a1 + 29);
        v64 = *(a1 + 30);
        v104 = v59;
        v108 = v62;
        v65 = *(a1 + 31);
        v66 = *(a1 + 32);
        v112 = v63;
        v116 = v65;
        v67 = *(a1 + 34);
        v120 = *(a1 + 33);
        v124 = *a1;
        v128 = a1[2];
        v132 = a1[4];
        v136 = *(a1 + 6);
        v140 = *(a1 + 20);
        v144 = *(a1 + 22);
        v148 = *(a1 + 24);
        *v79 = *(a1 + 3);
        *(&v80 + 2) = *(a1 + 5);
        v82 = v47;
        v86 = v49;
        v90 = v51;
        v94 = v54;
        v98 = v55;
        v102 = v58;
        v106 = v60;
        v110 = v61;
        v114 = v64;
        v118 = v66;
        v122 = v67;
        v126 = a1[1];
        v130 = a1[3];
        v134 = a1[5];
        v138 = *(a1 + 19);
        v142 = *(a1 + 21);
        v146 = *(a1 + 23);
        *&v79[4] = 1026;
        LOWORD(v80) = 1026;
        HIWORD(v80) = 1026;
        *&v81[4] = 1026;
        v83 = 1026;
        v85 = 1026;
        v87 = 1026;
        v89 = 1026;
        v91 = 1026;
        v93 = 1026;
        v95 = 1026;
        v97 = 1026;
        v99 = 1026;
        v101 = 1026;
        v103 = 1026;
        v105 = 1026;
        v107 = 1026;
        v109 = 1026;
        v111 = 1026;
        v113 = 1026;
        v115 = 1026;
        v117 = 1026;
        v119 = 1026;
        v121 = 1026;
        v123 = 1026;
        v125 = 1026;
        v127 = 1026;
        v129 = 1026;
        v131 = 1026;
        v133 = 1026;
        v135 = 1026;
        v137 = 1026;
        v139 = 1026;
        v141 = 1026;
        v143 = 1026;
        v145 = 1026;
        v147 = 1026;
        v78 = 67249664;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "#GPSPowerSavings,submitCAStats,fCountWifiAssociatedAndStaticAP,%{public}d,fCountWifiYieldingPersonalized,%{public}d,fCountStationaryWithPersonalizedWifiAP,%{public}d,fCountDMMostlyStationary,%{public}d,fCountDMnonStationary,%{public}d,fCountScreenOff,%{public}d,fCountTotalSeconds,%{public}d,fCountCanSafelyTurnOffGpsCount,%{public}d,fCountIOMotionFromStaticLT1m,%{public}d,fCountIOMotionFromStaticLT2m,%{public}d,fCountIOMotionFromStaticLT5m,%{public}d,fCountIOMotionFromStaticLT10m,%{public}d,fCountIOMotionFromStaticLT20m,%{public}d,fCountIOMotionFromStaticLT50m,%{public}d,fCountIOMotionFromStaticGE50m,%{public}d,fCountGpsWifiDistanceLT5m,%{public}d,fCountGpsWifiDistanceLT10m,%{public}d,fCountGpsWifiDistanceLT20m,%{public}d,fCountGpsWifiDistanceLT50m,%{public}d,fCountGpsWifiDistanceLT100m,%{public}d,fCountGpsWifiDistanceLT200m,%{public}d,fCountGpsWifiDistanceLT500m,%{public}d,fCountGpsWifiDistanceLT1000m,%{public}d,fCountGpsWifiDistanceGE1000m,%{public}d,fCountBestAccuracyWithoutGps,%{public}d,fCountStartedStatic,%{public}d,fCountIncludedFitness,%{public}d,fCountIncludedDriving,%{public}d,fCountIncludedConnectedVehicleFlag,%{public}d,fCountSessions,%{public}d,fCountSessionsStartedFromLC,%{public}d,fCountStationaryWithoutPersonalizedWifiAP,%{public}d,fCountIOMaxVelocityWhileStaticLT1ms,%{public}d,fCountIOMaxVelocityWhileStaticLT2ms,%{public}d,fCountIOMaxVelocityWhileStaticLT3ms,%{public}d,fCountIOMaxVelocityWhileStaticLT4ms,%{public}d,fCountIOMaxVelocityWhileStaticLT5ms,%{public}d,fCountIOMaxVelocityWhileStaticGE5ms,%{public}d,", &v78, 230);
        v69 = v68;
        sub_100152C7C("Generic", 1, 0, 2, "void CLGpsPowerSavingsMonitorCAStats::submitCAStats(const CFTimeInterval &)", "%s\n", v68);
        if (v69 != buf)
        {
          free(v69);
        }
      }

      v39 = sub_10000EC00(__p, "fThrottleStartToDriving");
      sub_1003E0D7C(v39, a1 + 70, __p);
      if (v77 < 0)
      {
        operator delete(__p[0]);
      }

      v40 = sub_10000EC00(v74, "fThrottleEndToDriving");
      sub_1003E0D7C(v40, a1 + 77, v74);
      if (v75 < 0)
      {
        operator delete(v74[0]);
      }

      v41 = sub_10000EC00(v72, "fThrottleStartToFitness");
      sub_1003E0D7C(v41, a1 + 84, v72);
      if (v73 < 0)
      {
        operator delete(v72[0]);
      }

      v42 = sub_10000EC00(v70, "fThrottleEndToFitness");
      sub_1003E0D7C(v42, a1 + 91, v70);
      if (v71 < 0)
      {
        operator delete(v70[0]);
      }

      if (*(a1 + 25) >= *(a1 + 26))
      {
        AnalyticsSendEventLazy();
        if (qword_1025D4600 != -1)
        {
          sub_1018777D4();
        }

        v44 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_INFO))
        {
          v45 = *v13;
          v46 = *v12;
          *buf = 67240448;
          *v150 = v45;
          *&v150[4] = 1026;
          *&v150[6] = v46;
          _os_log_impl(dword_100000000, v44, OS_LOG_TYPE_INFO, "#GPSPowerSavings,submitCAStats,complete,seconds,%{public}d,sessions,%{public}d", buf, 0xEu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101877A94(a1 + 10, a1 + 4);
        }

        *(a1 + 48) = 0;
        *(a1 + 10) = 0u;
        *(a1 + 11) = 0u;
        *(a1 + 8) = 0u;
        *(a1 + 9) = 0u;
        *(a1 + 6) = 0u;
        *(a1 + 7) = 0u;
        *(a1 + 4) = 0u;
        *(a1 + 5) = 0u;
        *(a1 + 2) = 0u;
        *(a1 + 3) = 0u;
        *a1 = 0u;
        *(a1 + 1) = 0u;
        *(a1 + 29) = *a2;
      }

      else
      {
        *(a1 + 29) = *a2;
        if (qword_1025D4600 != -1)
        {
          sub_1018777D4();
        }

        v43 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,submitCAStats,skipping CA submission", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101877BB0();
        }
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_101877918();
      }

      v14 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
      {
        v15 = a1[4];
        v16 = *(a1 + 10);
        v17 = *(a1 + 3);
        v18 = *(a1 + 4);
        v19 = *(a1 + 5);
        *buf = 67241216;
        *v150 = v15;
        *&v150[4] = 1026;
        *&v150[6] = v16;
        LOWORD(v151) = 1026;
        *(&v151 + 2) = v17;
        HIWORD(v151) = 1024;
        *v152 = v18;
        *&v152[4] = 1026;
        v153 = v19;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,submitCAStats,small_or_invalid_sessions,%{public}d,%{public}d,%{public}d,%{[ublic}d,%{public}d", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101877CBC(a1 + 4, a1);
      }
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_101877918();
    }

    v3 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 29);
      v5 = *(a1 + 25);
      v6 = *(a1 + 34);
      *buf = 134349568;
      *v150 = v4;
      *&v150[8] = 2050;
      v151 = v5;
      *v152 = 1026;
      *&v152[2] = v6;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#GPSPowerSavings,submitCAStats,less than threshold time to submit metrics,fLastAnalyticsSubmissionMctSeconds,%{public}.0lf,fMetricsCollectionDurationSeconds,%{public}.0lf,fCountBestAccuracyWithoutGps,%{public}d", buf, 0x1Cu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4600 != -1)
      {
        sub_1018777D4();
      }

      v7 = *(a1 + 29);
      v8 = *(a1 + 25);
      v9 = *(a1 + 34);
      v78 = 134349568;
      *v79 = v7;
      *&v79[8] = 2050;
      v80 = v8;
      *v81 = 1026;
      *&v81[2] = v9;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4608, 2, "#GPSPowerSavings,submitCAStats,less than threshold time to submit metrics,fLastAnalyticsSubmissionMctSeconds,%{public}.0lf,fMetricsCollectionDurationSeconds,%{public}.0lf,fCountBestAccuracyWithoutGps,%{public}d", &v78, 28);
      v11 = v10;
      sub_100152C7C("Generic", 1, 0, 2, "void CLGpsPowerSavingsMonitorCAStats::submitCAStats(const CFTimeInterval &)", "%s\n", v10);
      if (v11 != buf)
      {
        free(v11);
      }
    }
  }
}