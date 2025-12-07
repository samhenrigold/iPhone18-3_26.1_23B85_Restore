uint64_t sub_100237CC8@<X0>(_BYTE *a2@<X8>)
{
  sub_10003848C(v14);
  v3 = sub_100038730(&v15, "latlon ", 7);
  v4 = *v3;
  *(v3 + *(*v3 - 24) + 16) = 7;
  *(v3 + *(v4 - 24) + 8) = *(v3 + *(v4 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v5 = sub_100038730(&v15, ",", 1);
  v6 = *v5;
  *(v5 + *(*v5 - 24) + 16) = 7;
  *(v5 + *(v6 - 24) + 8) = *(v5 + *(v6 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  v7 = sub_100038730(&v15, ", acc ", 6);
  v8 = *v7;
  *(v7 + *(*v7 - 24) + 16) = 0;
  *(v7 + *(v8 - 24) + 8) = *(v7 + *(v8 - 24) + 8) & 0xFFFFFEFB | 4;
  std::ostream::operator<<();
  if ((v22 & 0x10) != 0)
  {
    v10 = v21;
    if (v21 < v18)
    {
      v21 = v18;
      v10 = v18;
    }

    locale = v17[4].__locale_;
  }

  else
  {
    if ((v22 & 8) == 0)
    {
      v9 = 0;
      a2[23] = 0;
      goto LABEL_14;
    }

    locale = v17[1].__locale_;
    v10 = v17[3].__locale_;
  }

  v9 = v10 - locale;
  if ((v10 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  a2[23] = v9;
  if (v9)
  {
    memmove(a2, locale, v9);
  }

LABEL_14:
  a2[v9] = 0;
  v15 = v12;
  if (v20 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100238074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1002380A8(uint64_t a1, uint64_t *a2, uint64_t *a3, double a4)
{
  sub_1002382B8(a1 + 168, a2);
  v8 = sub_10023854C(*(a1 + 24), a4);
  if (v8 <= *(sub_1001CCA30() + 1))
  {
    v9 = *a3;
    if (*a3)
    {
      v16 = *a2;
      sub_10018C8C0(v9, __p);
      if (v15 == 1)
      {
        if (qword_1025D4620 != -1)
        {
          sub_1019688C4();
        }

        v10 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          sub_1002386FC(a2, __p);
          v11 = (__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? __p : __p[0].__r_.__value_.__r.__words[0];
          *buf = 136642819;
          v18 = v11;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "MovingApDetector, centroid %{sensitive}s was previously detected as bad. Mark it as valid again.", buf, 0xCu);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101969494();
        }

        sub_1006C077C(*a3, &v16);
        sub_1008DB6B0(v12, a3);
        sub_10121C224(a1 + 168, &v16);
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101968930();
      }

      v13 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_FAULT))
      {
        LOWORD(__p[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_FAULT, "MovingApDetector, centroid database is null!", __p, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_10196959C();
      }
    }
  }
}

void sub_1002382B8(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 4);
  v2 = *(a1 + 104);
  v3[0] = *(a1 + 96);
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100238350((a1 + 160), v3, a2);
  if (v2)
  {

    sub_100008080(v2);
  }
}

void sub_100238338(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

int8x16_t sub_100238350(float64x2_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_1001AB7A0(a3, v16);
  v5 = *a2;
  Current = CFAbsoluteTimeGetCurrent();
  if (sub_10019B6E0(v5, Current))
  {
    v7 = sub_100238438(*a2, v16);
    v8.f64[0] = a1->f64[0];
    v8.f64[1] = v7;
    v9.f64[1] = a1->f64[1];
    v9.f64[0] = v7;
    *a1 = vbslq_s8(vornq_s8(vcgtq_f64(v8, v9), vcgezq_f64(*a1)), vdupq_laneq_s64(v8, 1), *a1);
  }

  v10 = *a2;
  v11 = CFAbsoluteTimeGetCurrent();
  if (sub_10019B77C(v10, v11))
  {
    v13 = sub_10120BD38(*a2, v16);
    v14.f64[0] = a1[1].f64[0];
    v14.f64[1] = v13;
    v15.f64[1] = a1[1].f64[1];
    v15.f64[0] = v13;
    result = vbslq_s8(vornq_s8(vcgtq_f64(v14, v15), vcgezq_f64(a1[1])), vdupq_laneq_s64(v14, 1), a1[1]);
    a1[1] = result;
  }

  return result;
}

double sub_100238438(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 344));
  v4 = sub_10023849C(a1, a2);
  std::mutex::unlock((a1 + 344));
  return v4;
}

double sub_10023849C(float64x2_t *a1, uint64_t a2)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (!*&a1[10].f64[0])
  {
    return NAN;
  }

  v5 = a1[9].f64[1];
  v6 = *(*&a1[8].f64[0] + 8 * (*&v5 / 0x1AuLL));
  v7 = *&v5 % 0x1AuLL;
  if (vabdd_f64(Current, *(v6 + 156 * v7 + 76)) >= 900.0)
  {
    return NAN;
  }

  sub_1001097CC(a1, v6 + 156 * v7, a2);
  return result;
}

double sub_10023854C(uint64_t a1, double a2)
{
  std::mutex::lock((a1 + 344));
  if (*(a1 + 160))
  {
    v4 = vabdd_f64(a2, *(*(*(a1 + 128) + 8 * (*(a1 + 152) / 0x1AuLL)) + 156 * (*(a1 + 152) % 0x1AuLL) + 76));
  }

  else
  {
    v4 = 1.79769313e308;
  }

  std::mutex::unlock((a1 + 344));
  return v4;
}

uint64_t sub_1002385DC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_102664858, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_102664858))
  {
    unk_102664850 = sub_101226EA4();
    __cxa_guard_release(&qword_102664858);
  }

  v2 = &unk_102664850;
  if (!byte_102664851)
  {
    v2 = (a1 + 141);
  }

  return *v2;
}

uint64_t sub_10023866C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W8>)
{
  if (a2 <= 0)
  {
    if (a2 == -1)
    {
      a3 = a1[115];
    }

    else if (!a2)
    {
      return sub_101226920(a1);
    }
  }

  else
  {
    switch(a2)
    {
      case 1:
        a3 = a1[112];
        break;
      case 2:
        a3 = a1[113];
        break;
      case 3:
        a3 = a1[114];
        break;
    }
  }

  return a3 & 1;
}

_DWORD *sub_1002386C0(_DWORD *result, int a2, int a3)
{
  if (a2 == a3)
  {
    ++result[8];
  }

  else if (a2)
  {
    ++result[9];
  }

  else
  {
    ++result[10];
  }

  return result;
}

void sub_1002386FC(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  v12 = *a1;
  sub_10018F0D0(&v13);
  v4 = std::string::append(&v13, ", ", 2uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  sub_1001AB7A0(a1, v9);
  sub_100237CC8(v10);
  if ((v11 & 0x80u) == 0)
  {
    v6 = v10;
  }

  else
  {
    v6 = v10[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = v10[1];
  }

  v8 = std::string::append(&v14, v6, v7);
  *a2 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v11 < 0)
  {
    operator delete(v10[0]);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_1002387F8(_Unwind_Exception *exception_object)
{
  if (*(v2 - 97) < 0)
  {
    operator delete(*v1);
  }

  if (*(v2 - 41) < 0)
  {
    operator delete(v1[7]);
  }

  if (*(v2 - 65) < 0)
  {
    operator delete(v1[4]);
  }

  _Unwind_Resume(exception_object);
}

double sub_100238844(uint64_t a1, uint64_t a2)
{
  v4 = sub_100100690();
  if (sub_1001E49C8(v4))
  {
    v6 = sub_100100690();
    if (sub_1002385DC(v6))
    {
      result = fabs(*a2);
      if (result <= 90.0)
      {
        result = fabs(*(a2 + 8));
        if (result <= 180.0)
        {
          *(a1 + 712) = *(a2 + 16);
          result = *(a2 + 40);
          *(a1 + 736) = result;
        }
      }
    }
  }

  return result;
}

uint64_t *sub_1002388C0(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100242FF4(result, a4);
  }

  return result;
}

void sub_100238928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_1002394D8(&a9);
  _Unwind_Resume(a1);
}

void sub_100238948(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1A41A41A41A41A5)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1002389A4(uint64_t result, int a2)
{
  v2 = *(result + 56);
  if (v2)
  {
    v3 = *(result + 24);
    v4 = result + 56;
    do
    {
      if (*(v2 + 28) >= v3)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * (*(v2 + 28) < v3));
    }

    while (v2);
    if (v4 != result + 56 && v3 >= *(v4 + 28))
    {
      v5 = *(v4 + 32);
      *(v4 + 32) = 1;
      if (a2 <= 4)
      {
        if (a2 > 2)
        {
          if (a2 == 3)
          {
            ++*(v4 + 72);
          }

          else
          {
            ++*(v4 + 76);
          }

          return result;
        }

        if (a2 == 1)
        {
          ++*(v4 + 64);
          return result;
        }

        if (a2 == 2)
        {
          ++*(v4 + 68);
          return result;
        }
      }

      else
      {
        if (a2 <= 6)
        {
          if (a2 == 5)
          {
            ++*(v4 + 80);
          }

          else
          {
            ++*(v4 + 84);
          }

          return result;
        }

        switch(a2)
        {
          case 7:
            ++*(v4 + 88);
            return result;
          case 8:
            ++*(v4 + 92);
            return result;
          case 9:
            ++*(v4 + 96);
            return result;
        }
      }

      *(v4 + 32) = v5;
    }
  }

  return result;
}

void sub_100238AEC(uint64_t a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  if (sub_10018E854(a1))
  {
    sub_10003848C(v20);
    v6 = sub_100038730(&v21, "SELECT * FROM ", 14);
    v7 = *(a1 + 255);
    if (v7 >= 0)
    {
      v8 = a1 + 232;
    }

    else
    {
      v8 = *(a1 + 232);
    }

    if (v7 >= 0)
    {
      v9 = *(a1 + 255);
    }

    else
    {
      v9 = *(a1 + 240);
    }

    sub_100038730(v6, v8, v9);
    if (*a2 == 1)
    {
      v10 = sub_100239F0C(a2 + 2);
      {
        v11 = sub_100038730(&v21, " WHERE ", 7);
        v12 = "MAC";
        v13 = 3;
      }

      else
      {
        if ((*a2 & 1) == 0)
        {
          goto LABEL_22;
        }

        v16 = sub_100239F0C(a2 + 2);
        {
          goto LABEL_22;
        }

        v11 = sub_100038730(&v21, " WHERE ", 7);
        v12 = "CKRecordName";
        v13 = 12;
      }

      v14 = sub_100038730(v11, v12, v13);
      sub_100038730(v14, " = ?", 4);
    }

LABEL_22:
    sub_100073518(v20, __p);
    if (v19 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    sub_1000388D8(a1 + 64, v17);
  }

  if (qword_1025D4620 != -1)
  {
    sub_101A4C3D8();
  }

  v15 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    buf[0] = 0;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "#Warning Attempt to call getAllEntries() without a backing database in CLWifiAssociatedApCentroidDatabase!", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A4C534();
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

void sub_1002392F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1002394D8(&a65);
  if (a24)
  {
    (*(*a24 + 8))(a24);
  }

  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_10026C504(&a31);
  _Unwind_Resume(a1);
}

void sub_1002393EC(uint64_t a1@<X0>, void *a2@<X8>)
{
  LOBYTE(v2[0]) = 0;
  sub_100238AEC(a1, v2, a2);
  if (LOBYTE(v2[0]) == 1)
  {
    sub_100239D74(&v3);
  }
}

void sub_100239460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10)
{
  if (a9 == 1)
  {
    sub_100239D74(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100239484(uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_1002388C0(a1, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4));
  return a1;
}

void sub_1002394D8(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_100243224(v4 - 112);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1002395C8(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1002393EC(a1, v3);
  sub_100239484(v4, v3);
  v5 = v3;
  sub_1002394D8(&v5);
  sub_100239658(v4, a2);
  v3[0] = v4;
  sub_1002394D8(v3);
}

void sub_100239630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002394D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100239658@<X0>(uint64_t **a1@<X0>, _BYTE *a2@<X8>)
{
  sub_10003848C(v25);
  v5 = *a1;
  v4 = a1[1];
  sub_100038730(&v26, "count: ", 7);
  std::ostream::operator<<();
  if (v4 != v5)
  {
    v6 = sub_100038730(&v26, ", samples: ", 11);
    v7 = [(__CFString *)sub_10023756C(a1 UTF8String];
    v8 = strlen(v7);
    if (v8 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_100061080();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    v24 = v8;
    if (v8)
    {
      memmove(__p, v7, v8);
    }

    *(__p + v9) = 0;
    if ((v24 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if ((v24 & 0x80u) == 0)
    {
      v11 = v24;
    }

    else
    {
      v11 = __p[1];
    }

    sub_100038730(v6, v10, v11);
    if (v24 < 0)
    {
      operator delete(__p[0]);
    }

    v12 = sub_100038730(&v26, ", average age: ", 15);
    v13 = *v12;
    *(v12 + *(*v12 - 24) + 16) = 2;
    *(v12 + *(v13 - 24) + 8) = *(v12 + *(v13 - 24) + 8) & 0xFFFFFEFB | 4;
    sub_100243270(a1);
    v14 = std::ostream::operator<<();
    sub_100038730(v14, "h", 1);
    v15 = sub_100038730(&v26, ", oldest age: ", 14);
    v16 = *v15;
    *(v15 + *(*v15 - 24) + 16) = 2;
    *(v15 + *(v16 - 24) + 8) = *(v15 + *(v16 - 24) + 8) & 0xFFFFFEFB | 4;
    sub_100243328(a1);
    v17 = std::ostream::operator<<();
    sub_100038730(v17, "h", 1);
  }

  if ((v33 & 0x10) != 0)
  {
    v19 = v32;
    if (v32 < v29)
    {
      v32 = v29;
      v19 = v29;
    }

    locale = v28[4].__locale_;
  }

  else
  {
    if ((v33 & 8) == 0)
    {
      v18 = 0;
      a2[23] = 0;
      goto LABEL_30;
    }

    locale = v28[1].__locale_;
    v19 = v28[3].__locale_;
  }

  v18 = v19 - locale;
  if ((v19 - locale) > 0x7FFFFFFFFFFFFFF7)
  {
    sub_100061080();
  }

  if (v18 >= 0x17)
  {
    operator new();
  }

  a2[23] = v18;
  if (v18)
  {
    memmove(a2, locale, v18);
  }

LABEL_30:
  a2[v18] = 0;
  v26 = v21;
  if (v31 < 0)
  {
    operator delete(v30);
  }

  std::locale::~locale(v28);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100239AF0(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100239B3C(uint64_t a1@<X0>, void ****a2@<X1>, _BYTE *a3@<X8>)
{
  v12 = *a2;
  LODWORD(v11) = 0;
  v13 = 0;
  sub_100239D0C(v14, &v11);
  v13 = 1;
  sub_100239D74(&v11);
  v9[0] = 0;
  if (v13 == 1)
  {
    sub_100239DCC(v10, v14);
    v9[0] = 1;
  }

  sub_100238AEC(a1, v9, &v11);
  if (v9[0] == 1)
  {
    sub_100239D74(v10);
    v9[0] = 0;
  }

  v6 = v11;
  v7 = v12;
  while (1)
  {
    if (v6 == v7)
    {
      v8 = &v11;
      sub_1002394D8(&v8);
      *a3 = 0;
      a3[112] = 0;
      goto LABEL_11;
    }

    v8 = *v6;
    if (sub_100195A00(&v8, a2))
    {
      break;
    }

    v6 += 14;
  }

  sub_100237568();
  a3[112] = 1;
  v8 = &v11;
  sub_1002394D8(&v8);
LABEL_11:
  if (v13 == 1)
  {
    sub_100239D74(v14);
  }
}

void sub_100239CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  a9 = &a15;
  sub_1002394D8(&a9);
  if (a19 == 1)
  {
    sub_100239D74(v19 + 8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100239D0C(uint64_t result, uint64_t a2)
{
  v2 = (a2 + 8);
  v3 = *a2 ^ (*a2 >> 31);
  if (v3 == 1)
  {
    v4 = *v2;
    *(result + 24) = *(a2 + 24);
    *(result + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *v2 = 0;
    v3 = *a2 ^ (*a2 >> 31);
  }

  else
  {
    if (v3)
    {
      sub_10053508C();
    }

    *(result + 8) = *v2;
  }

  *result = v3;
  return result;
}

void sub_100239D74(uint64_t a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  if (v1)
  {
    if (v1 != 1)
    {
      sub_10053508C();
    }

    if (*(a1 + 31) < 0)
    {
      v2 = *(a1 + 8);

      operator delete(v2);
    }
  }
}

uint64_t sub_100239DCC(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 8);
  switch(*a2 ^ (*a2 >> 31))
  {
    case 0:
      *(a1 + 8) = *v2;
      break;
    case 1:
      if (*(a2 + 31) < 0)
      {
        sub_100007244((a1 + 8), *(a2 + 8), *(a2 + 16));
      }

      else
      {
        v5 = *v2;
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 8) = v5;
      }

      break;
    default:
      sub_10053508C();
  }

  *a1 = *a2 ^ (*a2 >> 31);
  return a1;
}

_UNKNOWN **sub_100239F0C(int *a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      break;
    default:
      sub_10053508C();
  }

  return result;
}

_DWORD *sub_10023A004(int *a1)
{
  v2 = *a1;
  result = a1 + 2;
  switch(v2 ^ (v2 >> 31))
  {
    case 0:
      return result;
    case 1:
      result = 0;
      break;
    default:
      sub_10053508C();
  }

  return result;
}

_BYTE *sub_10023A0F0(_BYTE *a1)
{
  if (*a1 != 1)
  {
    std::logic_error::logic_error(&v2, "Attempted to access the value of an uninitialized optional object.");
    v2.__vftable = &off_1024A5018;
    sub_100CB6C0C(&v2);
  }

  return a1 + 8;
}

void sub_10023A188(uint64_t a1@<X0>, double *a2@<X1>, double *a3@<X2>, uint64_t *a4@<X8>)
{
  sub_1002393EC(a1, v7);
  sub_100239484(v8, v7);
  v9 = v7;
  sub_1002394D8(&v9);
  sub_10023A230(v8, a2, a3, a4);
  v7[0] = v8;
  sub_1002394D8(v7);
}

void sub_10023A208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002394D8(va);
  _Unwind_Resume(a1);
}

void sub_10023A230(uint64_t *a1@<X0>, double *a2@<X1>, double *a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    do
    {
      if (sub_1008613B4(v4, a3) > *a2)
      {
        v9 = a4[1];
        if (v9 >= a4[2])
        {
          v10 = sub_100ADEA74(a4);
        }

        else
        {
          sub_100237568();
          v10 = v9 + 112;
        }

        a4[1] = v10;
      }

      v4 += 112;
    }

    while (v4 != v5);
  }
}

void sub_10023A2D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *(v10 + 8) = v11;
  a10 = v10;
  sub_1002394D8(&a10);
  _Unwind_Resume(a1);
}

NSString *sub_10023A2FC(uint64_t a1)
{
  sub_10018F0D0(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v2 = [NSString stringWithUTF8String:p_p];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_10023A368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023A384(uint64_t a1, __n128 a2)
{
  if (sub_10023A7D0(a1, a2))
  {
    if (sub_10023AB68(a1, a1 + 320))
    {
      if (sub_10023ABE4(a1, a1 + 264, *(a1 + 632), *(a1 + 640)))
      {
        v3 = *(a1 + 632) - *(a1 + 952);
        if (v3 > *(a1 + 32))
        {
          *(a1 + 888) = 0u;
          *(a1 + 904) = 0x4063A28C59D5433BLL;
          *(a1 + 912) = xmmword_101CE3F20;
          sub_10023A9A4(a1, xmmword_101CE3F20);
          __asm { FMOV            V1.2D, #-1.0 }

          *(a1 + 928) = xmmword_101CE3F50;
          *(a1 + 944) = _Q1;
          *(a1 + 960) = 0xBFF0000000000000;
          if (qword_1025D4600 != -1)
          {
            sub_1003121A4();
          }

          v9 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            v10 = *(a1 + 32);
            *buf = 134349312;
            *&buf[4] = v3;
            *&buf[12] = 2050;
            *&buf[14] = v10;
            _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "#pbio, CLBackgroundInertialOdometryNorthAlignment::updateCalibrationFilter time since last filter update, %{public}.3f, greater than threshold, %{public}.3f, resetting calibration filter parameters.", buf, 0x16u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019DD1EC((a1 + 32), v3);
          }
        }

        *buf = xmmword_101CE3F60;
        *&buf[16] = xmmword_101CE3F30;
        if (sub_1002534A8(a1, buf, xmmword_101CE3F60) && (sub_100A9DFFC(a1, buf, v11) & 1) == 0)
        {
          if (qword_1025D4600 != -1)
          {
            sub_1019DC4B0();
          }

          v12 = qword_1025D4608;
          if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
          {
            *v25 = 0;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "#pbio, CLBackgroundInertialOdometryNorthAlignment::updateAlignmentParametersFilter unsuccessful, resetting calibration filter parameters.", v25, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019DD300();
          }

          *(a1 + 888) = 0u;
          *(a1 + 904) = 0x4063A28C59D5433BLL;
          *(a1 + 912) = xmmword_101CE3F20;
          sub_10023A9A4(a1, xmmword_101CE3F20);
          __asm { FMOV            V1.2D, #-1.0 }

          *(a1 + 928) = xmmword_101CE3F50;
          *(a1 + 944) = _Q1;
          *(a1 + 960) = 0xBFF0000000000000;
        }
      }

      else
      {
        if (qword_1025D4600 != -1)
        {
          sub_1003121A4();
        }

        v20 = (a1 + 632);
        v21 = (a1 + 640);
        v22 = qword_1025D4608;
        if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
        {
          v23 = *v20;
          v24 = *v21;
          *buf = 134349312;
          *&buf[4] = v23;
          *&buf[12] = 2050;
          *&buf[14] = v24;
          _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_ERROR, "#pbio, CLBackgroundInertialOdometryNorthAlignment::computeIOStatisticsForInterval failed, fMachContinuousTimeAtStart_s, %{public}.3f, fMachContinuousTimeAtEnd_s, %{public}.3f.", buf, 0x16u);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1019DD0E8();
        }
      }
    }

    else
    {
      if (qword_1025D4600 != -1)
      {
        sub_1003121A4();
      }

      v17 = qword_1025D4608;
      if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
      {
        v18 = *(a1 + 632);
        v19 = *(a1 + 640);
        *buf = 134349312;
        *&buf[4] = v18;
        *&buf[12] = 2050;
        *&buf[14] = v19;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "#pbio, CLBackgroundInertialOdometryNorthAlignment::computeLocationStatistics failed, fMachContinuousTimeAtStart_s, %{public}.3f, fMachContinuousTimeAtEnd_s, %{public}.3f.", buf, 0x16u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1019DCFF0();
      }
    }
  }

  else
  {
    if (qword_1025D4600 != -1)
    {
      sub_1003121A4();
    }

    v14 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 632);
      v16 = *(a1 + 640);
      *buf = 134349312;
      *&buf[4] = v15;
      *&buf[12] = 2050;
      *&buf[14] = v16;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_ERROR, "#pbio, CLBackgroundInertialOdometryNorthAlignment::propagateAlignmentParametersFilterState failed, fMachContinuousTimeAtStart_s, %{public}.3f, fMachContinuousTimeAtEnd_s, %{public}.3f.", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019DCEF8();
    }
  }
}

BOOL sub_10023A7D0(double *a1, __n128 a2)
{
  v3 = a1[118];
  if (v3 < 0.0)
  {
    v3 = a2.n128_f64[0] - a1[4];
    a1[118] = v3;
  }

  v4 = a2.n128_f64[0] - v3;
  if (a2.n128_f64[0] - v3 <= 0.0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1003121A4();
    }

    v8 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v10 = 134349056;
      v11 = v4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "#pbio, CLBackgroundInertialOdometryNorthAlignment::filterAlignmentParameters, unexpected value for timeSinceLastUpdate_seconds, %{public}.3f.", &v10, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019DD3DC();
    }
  }

  else
  {
    a1[118] = a2.n128_f64[0];
    a1[111] = a1[111] + a1[112] * v4;
    a2.n128_f64[0] = a1[115];
    v5 = a1[114];
    a1[113] = a1[113] + (a2.n128_f64[0] + a2.n128_f64[0]) * v4 + v4 * v5 * v4 + v4 * 0.001142;
    a1[115] = a2.n128_f64[0] + v5 * v4;
    a2.n128_f64[0] = v5 + v4 * 0.0000000052885;
    a1[114] = a2.n128_f64[0];
    sub_10023A9A4(a1, a2);
    v6 = a1[117];
    if (v6 < 0.001)
    {
      v6 = 0.001;
    }

    if (v6 > 1000.0)
    {
      v6 = 1000.0;
    }

    v7 = log10(v6) * 10.0 + v4 * 0.016;
    if (v7 < -40.0)
    {
      v7 = -40.0;
    }

    if (v7 > 40.0)
    {
      v7 = 40.0;
    }

    a1[117] = __exp10(v7 / 10.0);
  }

  return v4 > 0.0;
}

void sub_10023A9A4(uint64_t result, __n128 a2)
{
  v3 = (result + 904);
  if (*(result + 904) <= 0.0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1003121A4();
    }

    v4 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v5 = v3->f64[0];
      v12 = 134349056;
      v13 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "#pbio, CLBackgroundInertialOdometryNorthAlignment::filterAlignmentParameters, unexpected value for fCalibrationFilter.rotationToTrueNorthVar_rad2, %{public}.3f.", &v12, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019DDB48();
    }
  }

  if (*(result + 912) <= 0.0)
  {
    if (qword_1025D4600 != -1)
    {
      sub_1019DC4B0();
    }

    v6 = qword_1025D4608;
    if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(result + 912);
      v12 = 134349056;
      v13 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "#pbio, CLBackgroundInertialOdometryNorthAlignment::filterAlignmentParameters, unexpected value for fCalibrationFilter.rotationRateToTrueNorthVar_rad2_s2, %{public}.3f.", &v12, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019DDC34();
    }
  }

  v8 = vmaxnmq_f64(vminnmq_f64(*v3, xmmword_101CE3FA0), 0);
  *v3 = v8;
  v9 = vsqrtq_f64(v8);
  v10 = vmulq_laneq_f64(v9, v9, 1).f64[0];
  v11 = -v10;
  if (*(result + 920) < v10)
  {
    v10 = *(result + 920);
  }

  if (v10 <= v11)
  {
    v10 = v11;
  }

  *(result + 920) = v10;
}

BOOL sub_10023AB68(float64x2_t *a1, uint64_t a2)
{
  v6 = 0.0;
  v7 = 0.0;
  v5 = 0;
  v3 = sub_1001063B0(a1 + 12, &v7, &v6, &v5, *(a2 + 4), *(a2 + 12), *(a2 + 28), *(a2 + 160), *(a2 + 168), *(a2 + 184));
  *(a2 + 328) = hypot(v7, v6);
  *(a2 + 336) = hypot(*(a2 + 20), *(a2 + 176));
  return v3;
}

uint64_t sub_10023ABE4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = *(a1 + 160);
  if (!v5)
  {
    return 0;
  }

  v30 = 0;
  v31 = 0;
  v9 = sub_1001EBD50(v5, &v31, &v30, a3, a4);
  if (v9)
  {
    v20 = 0uLL;
    v21 = 0xBFF0000000000000;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = xmmword_101CE3F00;
    v26 = xmmword_101CE3F10;
    v27 = 257;
    v28 = 0;
    v29 = 0;
    *a2 = 0xBFF0000000000000;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    v10 = v31;
    v19 = v31;
    v11 = sub_100252CF0(*(a1 + 160), &v30);
    v12 = 0;
    if (v10 != v11)
    {
      v13 = v11;
      do
      {
        v14 = sub_100252EBC(*(a1 + 160), &v20, v10);
        v15 = sub_100252CF0(*(a1 + 160), &v19);
        v10 = v15;
        v19 = v15;
        if (v14 && *(&v20 + 1) >= *(a1 + 632) && *(&v20 + 1) <= *(a1 + 640))
        {
          v16 = v29;
          v17.i32[0] = 1;
          v17.i32[1] = v29 & 1;
          v17.u64[1] = vbic_s8(0x100000001, vceqz_s32(vand_s8(vdup_n_s32(v29), 0x400000002)));
          *(a2 + 16) = vaddq_s32(*(a2 + 16), v17);
          if (v16)
          {
            *(a2 + 32) = vaddq_f64(*(a2 + 32), vcvtq_f64_f32(*(&v22 + 4)));
          }
        }
      }

      while (v15 != v13);
      v12 = *(&v20 + 1);
    }

    *(a2 + 48) = hypot(*(a2 + 32), *(a2 + 40));
    *a2 = v12;
    *(a2 + 8) = a4 - a3;
  }

  return v9;
}

void sub_10023ADAC(uint64_t a1, uint64_t a2)
{
  v4 = *a2 - *(a1 + 72);
  if (v4 >= (*(**(a1 + 32) + 56))(*(a1 + 32)))
  {
    *(a1 + 72) = *a2;
    v5 = (*(**(a1 + 16) + 136))(*(a1 + 16));
    v6 = objc_alloc_init(CLPIndoorEvent);
    [v6 setType:1];
    [v6 setCmAttitude:objc_alloc_init(CLPIndoorCMAttitude)];
    [objc_msgSend(v6 "cmAttitude")];
    LODWORD(v5) = *(a2 + 40);
    v7 = [v6 cmAttitude];
    LODWORD(v8) = LODWORD(v5);
    [v7 setMagneticAccuracy:v8];
    [objc_msgSend(v6 "cmAttitude")];
    [objc_msgSend(v6 "cmAttitude")];
    if (*(a2 + 72) < 0.0)
    {
      v9 = -1.0;
    }

    else
    {
      v9 = 1.0;
    }

    v10 = *(a2 + 80) * v9;
    v11 = [objc_msgSend(v6 "cmAttitude")];
    *&v12 = v10;
    [v11 setX:v12];
    v13 = v9 * *(a2 + 88);
    v14 = [objc_msgSend(v6 "cmAttitude")];
    *&v15 = v13;
    [v14 setY:v15];
    v16 = v9 * *(a2 + 96);
    v17 = [objc_msgSend(v6 "cmAttitude")];
    *&v18 = v16;
    [v17 setZ:v18];
    [*(a1 + 48) addObject:v6];

    sub_100063090(a1);
  }
}

void sub_10023AF90(uint64_t a1, uint64_t a2)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a2 + 256) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101955644();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v7 = 1;
    v4 = _os_activity_create(dword_100000000, "CL: CLSubHarvesterTraceExternal::onCompass", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101955658();
    }

    v5 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "activity";
      v14 = 2050;
      v15 = a2;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLSubHarvesterTraceExternal::onCompass, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v7 = 0;
  }

  (*(**(a2 + 304) + 16))(*(a2 + 304), a1);
  if (v7 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10023B174(uint64_t a1, uint64_t a2)
{
  if (!sub_100062F64(a1 - 352))
  {

    sub_10023ADAC(a1 + 256, a2);
  }
}

BOOL sub_10023B1D0(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) < 1)
  {
    goto LABEL_24;
  }

  if (*(a1 + 24) > 60.0 && CFAbsoluteTimeGetCurrent() - *(a1 + 32) >= *(a1 + 24))
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101A80650();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 16);
      *buf = 68289282;
      *&buf[4] = 0;
      v45 = 2082;
      v46 = "";
      v47 = 2114;
      v48 = v5;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Tried to take power assertion that has already timed out, AssertionIdentifier:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_101A80664();
      }
    }

    v6 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v7 = *(a1 + 16);
      *buf = 68289282;
      *&buf[4] = 0;
      v45 = 2082;
      v46 = "";
      v47 = 2114;
      v48 = v7;
      _os_signpost_emit_with_name_impl(dword_100000000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Tried to take power assertion that has already timed out", "{msg%{public}.0s:Tried to take power assertion that has already timed out, AssertionIdentifier:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  v8 = *(a1 + 8);
  if (v8 < 1)
  {
LABEL_24:
    v14 = a2;
    if (*(a2 + 23) < 0)
    {
      v14 = *a2;
    }

    v15 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@(%s)", *(a1 + 16), v14);
    v16 = *(a1 + 24);
    v17 = *(a1 + 40);
    *buf = 0;
    v18 = objc_alloc_init(NSMutableDictionary);
    [v18 setObject:@"PreventUserIdleSystemSleep" forKeyedSubscript:@"AssertType"];
    [v18 setObject:v15 forKeyedSubscript:@"AssertName"];
    [v18 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKeyedSubscript:{"numberWithUnsignedInt:", v17), @"Category"}];
    if (v16 <= 60.0)
    {
      [v18 setObject:&off_10254FB30 forKeyedSubscript:@"AssertLevel"];
    }

    else
    {
      [v18 setObject:+[NSNumber numberWithDouble:](NSNumber forKeyedSubscript:{"numberWithDouble:", v16), @"TimeoutSeconds"}];
      [v18 setObject:@"TimeoutActionRelease" forKeyedSubscript:@"TimeoutAction"];
    }

    v19 = IOPMAssertionCreateWithProperties(v18, buf) != 0;
    v20 = *buf;

    if (v20)
    {
      v21 = v19;
    }

    else
    {
      v21 = 1;
    }

    if ((v21 & 1) == 0)
    {
      *(a1 + 8) = 1;
      *(a1 + 12) = v20;
      *(a1 + 32) = CFAbsoluteTimeGetCurrent();
      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      *(a1 + 48) = [[CLOSTransaction alloc] initWithDescription:a2];
    }

    v22 = *(a1 + 8);
    v13 = v22 > 0;
    if (qword_1025D48A0 != -1)
    {
      sub_101A8068C();
    }

    v23 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v24 = v22 <= 0 ? "Fail" : "Took";
      sub_1000238CC(v15, buf);
      v25 = SBYTE3(v48) >= 0 ? buf : *buf;
      *__p = 136315394;
      *&__p[4] = v24;
      *&__p[12] = 2080;
      *&__p[14] = v25;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "%s, %s", __p, 0x16u);
      if (SBYTE3(v48) < 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_101A8068C();
      }

      v27 = qword_1025D48A8;
      if (v22 <= 0)
      {
        v28 = "Fail";
      }

      else
      {
        v28 = "Took";
      }

      sub_1000238CC(v15, __p);
      if (__p[23] >= 0)
      {
        v29 = __p;
      }

      else
      {
        v29 = *__p;
      }

      *v39 = 136315394;
      *&v39[4] = v28;
      v40 = 2080;
      v41 = v29;
      LODWORD(v38) = 22;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v27, 2, "%s, %s", v39, v38);
      v31 = v30;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLPowerAssertion::takePowerAssertion(std::string)", "%s\n", v31);
      if (v31 != buf)
      {
        free(v31);
      }
    }

    CFRelease(v15);
  }

  else
  {
    *(a1 + 8) = v8 + 1;
    if (qword_1025D48A0 != -1)
    {
      sub_101A8068C();
    }

    v9 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 8);
      sub_1000238CC(*(a1 + 16), __p);
      if (__p[23] >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = *__p;
      }

      v12 = a2;
      if (*(a2 + 23) < 0)
      {
        v12 = *a2;
      }

      *buf = 67109634;
      *&buf[4] = v10;
      v45 = 2080;
      v46 = v11;
      v47 = 2080;
      v48 = v12;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "Took, inc ref, %d, %s, thisReason, %s", buf, 0x1Cu);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_101A8068C();
      }

      v32 = qword_1025D48A8;
      v33 = *(a1 + 8);
      sub_1000238CC(*(a1 + 16), v39);
      if (v42 >= 0)
      {
        v34 = v39;
      }

      else
      {
        v34 = *v39;
      }

      if (*(a2 + 23) < 0)
      {
        a2 = *a2;
      }

      *__p = 67109634;
      *&__p[4] = v33;
      *&__p[8] = 2080;
      *&__p[10] = v34;
      *&__p[18] = 2080;
      *&__p[20] = a2;
      LODWORD(v37) = 28;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v32, 2, "Took, inc ref, %d, %s, thisReason, %s", __p, v37, *v39);
      v36 = v35;
      if (v42 < 0)
      {
        operator delete(*v39);
      }

      sub_100152C7C("Generic", 1, 0, 2, "BOOL CLPowerAssertion::takePowerAssertion(std::string)", "%s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }
    }

    return 1;
  }

  return v13;
}

void sub_10023BAC8(uint64_t a1, uint64_t *a2, CLConnectionMessage **a3)
{
  v3 = *a2;
  v5 = *a3;
  v4 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v6 = _os_activity_create(dword_100000000, "CL: kCLConnectionMessageRequestAuthorization", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v7 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(v3 + 72);
    *buf = 68290050;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2050;
    v18 = v3;
    v19 = 1026;
    v20 = 1;
    v21 = 1026;
    v22 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:kCLConnectionMessageRequestAuthorization, event:%{public, location:escape_only}s, this:%{public}p, registrationRequired:%{public}hhd, registrationReceived:%{public}hhd}", buf, 0x32u);
  }

  if (*(v3 + 72) != 1)
  {
    os_activity_scope_leave(&state);
    if (!v4)
    {
      return;
    }

    goto LABEL_11;
  }

  v9[0] = v5;
  v9[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10023BCC0(v3, v9);
  if (v4)
  {
    sub_100008080(v4);
    os_activity_scope_leave(&state);
LABEL_11:
    sub_100008080(v4);
    return;
  }

  os_activity_scope_leave(&state);
}

void sub_10023BCC0(uint64_t a1, CLConnectionMessage **a2)
{
  v4 = objc_alloc_init(NSAutoreleasePool);
  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v6);
  v8 = [DictionaryOfClasses objectForKeyedSubscript:@"kCLConnectionMessageStatusKey"];
  v9 = [DictionaryOfClasses objectForKeyedSubscript:@"kCLConnectionMessagePurposeIdentifierKey"];
  if (v9)
  {
    sub_10000EC00(v35, [v9 UTF8String]);
  }

  else
  {
    sub_10000EC00(v35, "");
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = [v8 intValue];
    v11 = v10;
    v13 = sub_10001A3E8(v10, v12);
    if ((**v13)(v13) && *(a1 + 88) == 1)
    {
      if (qword_1025D4790 != -1)
      {
        sub_1001456E8();
      }

      v14 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
      {
        v15 = *(a1 + 48);
        buf = 68289282;
        v38 = 2082;
        v39 = "";
        v40 = 2114;
        v41 = v15;
        _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:WatchKit-1.0 client requesting authorization on companion, ClientKeyPath:%{public, location:escape_only}@}", &buf, 0x1Cu);
        if (qword_1025D4790 != -1)
        {
          sub_1001456E8();
        }
      }

      v16 = qword_1025D4798;
      if (os_signpost_enabled(qword_1025D4798))
      {
        v17 = *(a1 + 48);
        buf = 68289282;
        v38 = 2082;
        v39 = "";
        v40 = 2114;
        v41 = v17;
        v18 = "WatchKit-1.0 client requesting authorization on companion";
        v19 = "{msg%{public}.0s:WatchKit-1.0 client requesting authorization on companion, ClientKeyPath:%{public, location:escape_only}@}";
LABEL_21:
        _os_signpost_emit_with_name_impl(dword_100000000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v18, v19, &buf, 0x1Cu);
        goto LABEL_45;
      }

      goto LABEL_45;
    }

    if ((*(a1 + 90) & (v11 == 3)) != 0)
    {
      v23 = 4;
    }

    else
    {
      v23 = v11;
    }

    if (v23 == 4)
    {
      v24 = *(a1 + 74) == 0;
      v25 = 1;
    }

    else
    {
      if (v23 != 3)
      {
        if (qword_1025D4790 != -1)
        {
          sub_1001456E8();
        }

        v27 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
        {
          v28 = *(a1 + 48);
          buf = 68289282;
          v38 = 2082;
          v39 = "";
          v40 = 2114;
          v41 = v28;
          _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#AuthPrompt Malformed authorization status, ClientKeyPath:%{public, location:escape_only}@}", &buf, 0x1Cu);
          if (qword_1025D4790 != -1)
          {
            sub_1001456E8();
          }
        }

        v29 = qword_1025D4798;
        if (os_signpost_enabled(qword_1025D4798))
        {
          v30 = *(a1 + 48);
          buf = 68289282;
          v38 = 2082;
          v39 = "";
          v40 = 2114;
          v41 = v30;
          _os_signpost_emit_with_name_impl(dword_100000000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#AuthPrompt Malformed authorization status", "{msg%{public}.0s:#AuthPrompt Malformed authorization status, ClientKeyPath:%{public, location:escape_only}@}", &buf, 0x1Cu);
        }

        v26 = 0;
        goto LABEL_40;
      }

      v24 = *(a1 + 74) == 0;
      v25 = 3;
    }

    if (v24)
    {
      v26 = v25 + 1;
    }

    else
    {
      v26 = v25;
    }

LABEL_40:
    v31 = *(a1 + 48);
    if (SHIBYTE(v36) < 0)
    {
      sub_100007244(__p, v35[0], v35[1]);
    }

    else
    {
      *__p = *v35;
      v33 = v36;
    }

    sub_10023C2AC(v34, v26, v31, 0, __p);
    sub_10023C350(a1, v34, 0, 1);
    sub_10023DF30(v34);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_45;
  }

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v20 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
  {
    v21 = *(a1 + 48);
    buf = 68289282;
    v38 = 2082;
    v39 = "";
    v40 = 2114;
    v41 = v21;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#AuthPrompt Malformed authorization request, ClientKeyPath:%{public, location:escape_only}@}", &buf, 0x1Cu);
    if (qword_1025D4790 != -1)
    {
      sub_1001456E8();
    }
  }

  v16 = qword_1025D4798;
  if (os_signpost_enabled(qword_1025D4798))
  {
    v22 = *(a1 + 48);
    buf = 68289282;
    v38 = 2082;
    v39 = "";
    v40 = 2114;
    v41 = v22;
    v18 = "#AuthPrompt Malformed authorization request";
    v19 = "{msg%{public}.0s:#AuthPrompt Malformed authorization request, ClientKeyPath:%{public, location:escape_only}@}";
    goto LABEL_21;
  }

LABEL_45:
  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[0]);
  }
}

uint64_t sub_10023C2AC(uint64_t a1, int a2, uint64_t a3, void *a4, __int128 *a5)
{
  *a1 = a2;
  *(a1 + 4) = 0;
  *(a1 + 8) = a3;
  if (*(a5 + 23) < 0)
  {
    sub_100007244((a1 + 16), *a5, *(a5 + 1));
  }

  else
  {
    v7 = *a5;
    *(a1 + 32) = *(a5 + 2);
    *(a1 + 16) = v7;
  }

  v8 = [a4 copy];
  *(a1 + 40) = v8;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (!v8)
  {
    *(a1 + 40) = [&stru_102470718 copy];
  }

  v9 = *(a1 + 8);
  return a1;
}

void sub_10023C334(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_10023C350(uint64_t a1, unsigned int *a2, NSDictionary *a3, int a4)
{
  if (*(a1 + 72) == 1 && (*(a1 + 104) & 1) == 0)
  {
    sub_1000F7D18(*(a1 + 16), *(a1 + 48), 1);
  }

  if (((*(*a1 + 80))(a1) & 1) != 0 || [*(a1 + 48) isAuthLimited])
  {
    if (qword_1025D4790 != -1)
    {
      sub_1019EEFF0();
    }

    v8 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      v9 = *(a1 + 48);
      v10 = *a2;
      *buf = 68289538;
      *v118 = 2082;
      *&v118[2] = "";
      *&v118[10] = 2114;
      *&v118[12] = v9;
      *&v118[20] = 2050;
      *&v118[22] = v10;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#AuthPrompt System services may not request authorization, ClientKeyPath:%{public, location:escape_only}@, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}", buf, 0x26u);
      if (qword_1025D4790 != -1)
      {
        sub_1001456E8();
      }
    }

    v11 = qword_1025D4798;
    if (os_signpost_enabled(qword_1025D4798))
    {
      v12 = *(a1 + 48);
      v13 = *a2;
      *buf = 68289538;
      *v118 = 2082;
      *&v118[2] = "";
      *&v118[10] = 2114;
      *&v118[12] = v12;
      *&v118[20] = 2050;
      *&v118[22] = v13;
      v14 = "#AuthPrompt System services may not request authorization";
      v15 = "{msg%{public}.0s:#AuthPrompt System services may not request authorization, ClientKeyPath:%{public, location:escape_only}@, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}";
LABEL_13:
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v14, v15, buf, 0x26u);
      return;
    }

    return;
  }

  if (([*(a1 + 112) inUseLevelIsAtLeast:5] & 1) == 0)
  {
    if (*(a1 + 369) == 1)
    {
      if (qword_1025D4790 != -1)
      {
        sub_1019EEFF0();
      }

      v16 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 48);
        v18 = *a2;
        [*(a1 + 112) inUseLevel];
        v19 = [*(a1 + 112) inUseLevel];
        *buf = 68289794;
        *&buf[4] = 0;
        *v118 = 2082;
        *&v118[2] = "";
        *&v118[10] = 2114;
        *&v118[12] = v17;
        *&v118[20] = 2050;
        *&v118[22] = v18;
        *&v118[30] = 2050;
        v119 = v19;
        v20 = "{msg%{public}.0s:#AuthPrompt Permitting authorization request placed by client entitled to specially request prompts despite being insufficiently in-use, ClientKeyPath:%{public, location:escape_only}@, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, inUseLevel:%{public, location:CLClientInUseLevel}lld}";
LABEL_28:
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, v20, buf, 0x30u);
      }
    }

    else
    {
      sub_10000EC00(buf, "com.apple.locationd.prompt_from_background");
      v21 = (*(*a1 + 40))(a1, buf);
      if ((v118[15] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      if (!v21)
      {
        if (a4)
        {
          v40 = *(a1 + 408);
          v39 = *(a1 + 416);
          if (v39)
          {
            atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
            atomic_fetch_add_explicit(&v39->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_100008080(v39);
          }

          *buf = 0;
          *v118 = buf;
          *&v118[8] = 0x7812000000;
          *&v118[16] = sub_1000478A0;
          *&v118[24] = sub_100048554;
          sub_1007AAEE4(&v120, a2);
          v41 = *(a1 + 32);
          v105[0] = _NSConcreteStackBlock;
          v105[1] = 3321888768;
          v105[2] = sub_100B22000;
          v105[3] = &unk_102494D90;
          v105[6] = a1;
          v105[7] = v40;
          v106 = v39;
          if (v39)
          {
            atomic_fetch_add_explicit(&v39->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v105[4] = a3;
          v105[5] = buf;
          [v41 afterInterval:v105 async:3.0];
          if (qword_1025D4790 != -1)
          {
            sub_1001456E8();
          }

          v42 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
          {
            v43 = *(a1 + 48);
            v44 = *a2;
            [*(a1 + 112) inUseLevel];
            v45 = [*(a1 + 112) inUseLevel];
            *v107 = 68289794;
            v108 = 0;
            v109 = 2082;
            v110 = "";
            v111 = 2114;
            v112 = v43;
            v113 = 2050;
            v114 = v44;
            v115 = 2050;
            v116 = v45;
            _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt #Warning Delaying authorization request placed while insufficiently in-use, ClientKeyPath:%{public, location:escape_only}@, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, inUseLevel:%{public, location:CLClientInUseLevel}lld}", v107, 0x30u);
          }

          if (v106)
          {
            std::__shared_weak_count::__release_weak(v106);
          }

          _Block_object_dispose(buf, 8);
          sub_10023DF30(&v120);
          if (v39)
          {
            std::__shared_weak_count::__release_weak(v39);
          }
        }

        else
        {
          if (qword_1025D4790 != -1)
          {
            sub_1001456E8();
          }

          v59 = qword_1025D4798;
          if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
          {
            v61 = *(a1 + 112);
            v60 = (a1 + 112);
            v62 = *(v60 - 8);
            v63 = *a2;
            [v61 inUseLevel];
            v64 = [*v60 inUseLevel];
            *buf = 68289794;
            *&buf[4] = 0;
            *v118 = 2082;
            *&v118[2] = "";
            *&v118[10] = 2114;
            *&v118[12] = v62;
            *&v118[20] = 2050;
            *&v118[22] = v63;
            *&v118[30] = 2050;
            v119 = v64;
            _os_log_impl(dword_100000000, v59, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt #Warning Dropping authorization request placed while insufficiently in-use, ClientKeyPath:%{public, location:escape_only}@, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, inUseLevel:%{public, location:CLClientInUseLevel}lld}", buf, 0x30u);
          }

          sub_10023D820(a2, @"App is in the background");
        }

        return;
      }

      if (qword_1025D4790 != -1)
      {
        sub_1001456E8();
      }

      v16 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(a1 + 48);
        v23 = *a2;
        [*(a1 + 112) inUseLevel];
        v24 = [*(a1 + 112) inUseLevel];
        *buf = 68289794;
        *&buf[4] = 0;
        *v118 = 2082;
        *&v118[2] = "";
        *&v118[10] = 2114;
        *&v118[12] = v22;
        *&v118[20] = 2050;
        *&v118[22] = v23;
        *&v118[30] = 2050;
        v119 = v24;
        v20 = "{msg%{public}.0s:#AuthPrompt #widgetkit Permitting authorization request placed by client entitled to specially request prompts for Widgets, ClientKeyPath:%{public, location:escape_only}@, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, inUseLevel:%{public, location:CLClientInUseLevel}lld}";
        goto LABEL_28;
      }
    }
  }

  v25 = *a2 - 1;
  if (v25 < 0xB && ((0x50Fu >> v25) & 1) != 0)
  {
    v26 = qword_101CECD18[v25];
    v27 = sub_10023D76C(*(a1 + 16), *(a1 + 48));
    if (!v27)
    {
      if (qword_1025D4790 != -1)
      {
        sub_1001456E8();
      }

      v28 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
      {
        v29 = *(a1 + 48);
        v30 = *(a1 + 80);
        *buf = 68289538;
        *v118 = 2082;
        *&v118[2] = "";
        *&v118[10] = 2114;
        *&v118[12] = v29;
        *&v118[20] = 1026;
        *&v118[22] = v30;
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning #AuthPrompt CLCM:allowableAuthMask in invalid, considering fSupportedAuthMaskBuilder, ClientKeyPath:%{public, location:escape_only}@, fSupportedAuthMaskBuilder:%{public}d}", buf, 0x22u);
      }

      v27 = *(a1 + 80);
    }

    if ((v27 | v26) != 0xFFFFFFFFFFFFFFFFLL)
    {
      if (qword_1025D4790 != -1)
      {
        sub_1001456E8();
      }

      v31 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *a2;
        v33 = *(a1 + 48);
        *buf = 68289794;
        *v118 = 2082;
        *&v118[2] = "";
        *&v118[10] = 2050;
        *&v118[12] = v32;
        *&v118[20] = 2114;
        *&v118[22] = v33;
        *&v118[30] = 2050;
        v119 = v27;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Authorization value requested by client ignored because not in its allowable mask, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, ClientKeyPath:%{public, location:escape_only}@, authMaskAllowable:%{public}lu}", buf, 0x30u);
      }

      sub_10023D820(a2, @"Requested authorization level isn't supported by the app");
      return;
    }

    if (sub_10023D7E4(*(a1 + 16)) && !sub_10076CC80(*(a1 + 48)))
    {
      if (qword_1025D4790 != -1)
      {
        sub_1001456E8();
      }

      v70 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
      {
        v71 = *a2;
        v72 = *(a1 + 48);
        *buf = 68289538;
        *v118 = 2082;
        *&v118[2] = "";
        *&v118[10] = 2050;
        *&v118[12] = v71;
        *&v118[20] = 2114;
        *&v118[22] = v72;
        _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Authorization request ignored, at lock-screen, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x26u);
      }

      sub_10023D820(a2, @"App is requesting authorization prompt while the screen is locked");
      return;
    }

    if (sub_10023D7EC(*(a1 + 16)))
    {
      v46 = sub_1007A3F2C(*(a1 + 16));
      [*(a1 + 32) currentLatchedAbsoluteTimestamp];
      v48 = v47 - v46;
      if (v48 < 900.0)
      {
        if (qword_1025D4790 != -1)
        {
          sub_1001456E8();
        }

        v77 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
        {
          v78 = *a2;
          v79 = (a1 + 16);
          sub_100774024(*(a1 + 16));
          v80 = sub_100774024(*(a1 + 16));
          v81 = *(a1 + 48);
          v82 = sub_10077403C(*v79);
          *buf = 68290306;
          *v118 = 2082;
          *&v118[2] = "";
          *&v118[10] = 2050;
          *&v118[12] = v78;
          *&v118[20] = 2050;
          *&v118[22] = v80;
          *&v118[30] = 2114;
          v119 = v81;
          v120 = 2114;
          v121 = *&v82;
          v122 = 2050;
          v123 = v48;
          _os_log_impl(dword_100000000, v77, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Authorization request ignored because another authorization effort is already in flight, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, existingRequestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, ClientKeyPath:%{public, location:escape_only}@, existingClientKey:%{public, location:escape_only}@, InflightRequestSquattingDurationSeconds:%{public}ld}", buf, 0x44u);
        }

        sub_10023D820(a2, @"Outstanding authorization prompt detected.");
        return;
      }

      if (qword_1025D4790 != -1)
      {
        sub_1001456E8();
      }

      v49 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_ERROR))
      {
        v50 = *(a1 + 48);
        v51 = sub_10077403C(*(a1 + 16));
        sub_100774024(*(a1 + 16));
        v52 = sub_100774024(*(a1 + 16));
        *buf = 68290050;
        *v118 = 2082;
        *&v118[2] = "";
        *&v118[10] = 2114;
        *&v118[12] = v50;
        *&v118[20] = 2114;
        *&v118[22] = v51;
        *&v118[30] = 2050;
        v119 = v52;
        v120 = 2050;
        v121 = v48 / 60.0;
        _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#AuthPrompt Inflight auth-request squatting for more than 15 mins. TearingDown, ClientKeyPath:%{public, location:escape_only}@, squattingClient:%{public, location:escape_only}@, squattingRequestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, InflightRequestSquattingDurationMinutes:%{public}.2f}", buf, 0x3Au);
        if (qword_1025D4790 != -1)
        {
          sub_1001456E8();
        }
      }

      v53 = qword_1025D4798;
      if (os_signpost_enabled(qword_1025D4798))
      {
        v54 = *(a1 + 48);
        v55 = sub_10077403C(*(a1 + 16));
        sub_100774024(*(a1 + 16));
        v56 = sub_100774024(*(a1 + 16));
        *buf = 68290050;
        *&buf[4] = 0;
        *v118 = 2082;
        *&v118[2] = "";
        *&v118[10] = 2114;
        *&v118[12] = v54;
        *&v118[20] = 2114;
        *&v118[22] = v55;
        *&v118[30] = 2050;
        v119 = v56;
        v120 = 2050;
        v121 = v48 / 60.0;
        _os_signpost_emit_with_name_impl(dword_100000000, v53, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#AuthPrompt Inflight auth-request squatting for more than 15 mins. TearingDown", "{msg%{public}.0s:#AuthPrompt Inflight auth-request squatting for more than 15 mins. TearingDown, ClientKeyPath:%{public, location:escape_only}@, squattingClient:%{public, location:escape_only}@, squattingRequestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, InflightRequestSquattingDurationMinutes:%{public}.2f}", buf, 0x3Au);
      }

      sub_10079EDEC(*(a1 + 16), 1, 0);
    }

    if ([*(a1 + 112) transientAwareRegistrationResult] == 4)
    {
      if (*a2 == 9)
      {
        if (qword_1025D4790 != -1)
        {
          sub_1001456E8();
        }

        v57 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
        {
          v58 = *(a1 + 48);
          *buf = 68289282;
          *v118 = 2082;
          *&v118[2] = "";
          *&v118[10] = 2114;
          *&v118[12] = v58;
          _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Ignoring request for temporary precise from app with no authorization yet, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        sub_10023D820(a2, @"App's authorization status is not yet determined. App needs to ask for authorization before asking for temporary precise upgrade.");
        return;
      }

      if (qword_1025D4790 != -1)
      {
        sub_1001456E8();
      }

      v83 = qword_1025D4798;
      if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
      {
        v84 = *(a1 + 48);
        v85 = *a2;
        *buf = 68289538;
        *v118 = 2082;
        *&v118[2] = "";
        *&v118[10] = 2114;
        *&v118[12] = v84;
        *&v118[20] = 2050;
        *&v118[22] = v85;
        v86 = "{msg%{public}.0s:#AuthPrompt Allowing standard prompt because no auth yet, ClientKeyPath:%{public, location:escape_only}@, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}";
        v87 = v83;
        v88 = 38;
LABEL_136:
        _os_log_impl(dword_100000000, v87, OS_LOG_TYPE_DEFAULT, v86, buf, v88);
      }
    }

    else
    {
      if ([*(a1 + 112) registrationResult] == 1 && *a2 == 4 && sub_1007A4E58(*(a1 + 16), *(a1 + 48)))
      {
        if (qword_1025D4790 != -1)
        {
          sub_1001456E8();
        }

        v65 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
        {
          v66 = *(a1 + 48);
          v67 = *a2;
          v68 = sub_10023D7FC([*(a1 + 112) registrationResult]);
          *buf = 68289794;
          *v118 = 2082;
          *&v118[2] = "";
          *&v118[10] = 2114;
          *&v118[12] = v66;
          *&v118[20] = 2050;
          *&v118[22] = v67;
          *&v118[30] = 2082;
          v119 = v68;
          _os_log_impl(dword_100000000, v65, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Allowing one-shot upgrade attempt, ClientKeyPath:%{public, location:escape_only}@, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, RegistrationResult:%{public, location:escape_only}s}", buf, 0x30u);
        }

        *buf = 0;
        *v118 = buf;
        *&v118[8] = 0x7812000000;
        *&v118[16] = sub_1000478A0;
        *&v118[24] = sub_100048554;
        sub_1007AAEE4(&v120, a2);
        v69 = *(a1 + 48);
        v104[0] = _NSConcreteStackBlock;
        v104[1] = 3221225472;
        v104[2] = sub_100B22108;
        v104[3] = &unk_102494DC8;
        v104[4] = buf;
        sub_10000EC00(__p, "");
        sub_10023C2AC(v107, 7, v69, v104, __p);
        sub_1007AAF48(a2, v107);
        sub_10023DF30(v107);
        if (v103 < 0)
        {
          operator delete(__p[0]);
        }

        _Block_object_dispose(buf, 8);
        sub_10023DF30(&v120);
        goto LABEL_137;
      }

      if ([*(a1 + 112) registrationResult] == 2 && (*(a1 + 369) & 1) == 0)
      {
        if (qword_1025D4790 != -1)
        {
          sub_1001456E8();
        }

        v93 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
        {
          v94 = *(a1 + 48);
          *buf = 68289282;
          *v118 = 2082;
          *&v118[2] = "";
          *&v118[10] = 2114;
          *&v118[12] = v94;
          _os_log_impl(dword_100000000, v93, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Client is denied.  Asking client manager to consider doing a big switch prompt, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x1Cu);
        }

        v95 = *(a1 + 48);
        sub_10000EC00(v100, "");
        sub_10023C2AC(buf, 10, v95, 0, v100);
        sub_1007AAF48(a2, buf);
        sub_10023DF30(buf);
        if (v101 < 0)
        {
          operator delete(v100[0]);
        }

        goto LABEL_137;
      }

      if (*a2 == 9 && ([*(a1 + 112) isAuthorizedForServiceType:12] & 1) == 0)
      {
        if (qword_1025D4790 != -1)
        {
          sub_1001456E8();
        }

        v96 = qword_1025D4798;
        if (!os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_137;
        }

        v97 = *(a1 + 48);
        *buf = 68289282;
        *v118 = 2082;
        *&v118[2] = "";
        *&v118[10] = 2114;
        *&v118[12] = v97;
        v86 = "{msg%{public}.0s:#AuthPrompt Allowing no-auth-change auth request because this #compensation client wants temporary precise, ClientKeyPath:%{public, location:escape_only}@}";
        v87 = v96;
        v88 = 28;
        goto LABEL_136;
      }

      if ((*(a1 + 369) & 1) == 0)
      {
        if (qword_1025D4790 != -1)
        {
          sub_1001456E8();
        }

        v89 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
        {
          v90 = *(a1 + 48);
          v91 = *a2;
          v92 = sub_10023D7FC([*(a1 + 112) registrationResult]);
          *buf = 68289794;
          *v118 = 2082;
          *&v118[2] = "";
          *&v118[10] = 2114;
          *&v118[12] = v90;
          *&v118[20] = 2050;
          *&v118[22] = v91;
          *&v118[30] = 2082;
          v119 = v92;
          _os_log_impl(dword_100000000, v89, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Ignoring authorization request due to existing authorization, ClientKeyPath:%{public, location:escape_only}@, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, RegistrationResult:%{public, location:escape_only}s}", buf, 0x30u);
        }

        sub_10023D820(a2, @"The user has already made a decision about the app's authorization");
        return;
      }

      if ([*(a1 + 112) registrationResult] != 2)
      {
        if (qword_1025D4790 != -1)
        {
          sub_1001456E8();
        }

        v73 = qword_1025D4798;
        if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
        {
          v74 = *(a1 + 48);
          v75 = *a2;
          v76 = sub_10023D7FC([*(a1 + 112) registrationResult]);
          *buf = 68289794;
          *v118 = 2082;
          *&v118[2] = "";
          *&v118[10] = 2114;
          *&v118[12] = v74;
          *&v118[20] = 2050;
          *&v118[22] = v75;
          *&v118[30] = 2082;
          v119 = v76;
          _os_log_impl(dword_100000000, v73, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt Ignoring special-reprompt authorization request due to existing authorization, ClientKeyPath:%{public, location:escape_only}@, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, RegistrationResult:%{public, location:escape_only}s}", buf, 0x30u);
        }

        return;
      }
    }

LABEL_137:
    v98 = *(a1 + 16);
    sub_1007AAEE4(v99, a2);
    sub_1007845CC(v98, a1, v99, a3);
    sub_10023DF30(v99);
    return;
  }

  if (qword_1025D4790 != -1)
  {
    sub_1001456E8();
  }

  v34 = qword_1025D4798;
  if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
  {
    v35 = *a2;
    v36 = *(a1 + 48);
    *buf = 68289538;
    *v118 = 2082;
    *&v118[2] = "";
    *&v118[10] = 2050;
    *&v118[12] = v35;
    *&v118[20] = 2114;
    *&v118[22] = v36;
    _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#AuthPrompt Unrecognized authorization value, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, ClientKeyPath:%{public, location:escape_only}@}", buf, 0x26u);
    if (qword_1025D4790 != -1)
    {
      sub_1001456E8();
    }
  }

  v11 = qword_1025D4798;
  if (os_signpost_enabled(qword_1025D4798))
  {
    v37 = *a2;
    v38 = *(a1 + 48);
    *buf = 68289538;
    *v118 = 2082;
    *&v118[2] = "";
    *&v118[10] = 2050;
    *&v118[12] = v37;
    *&v118[20] = 2114;
    *&v118[22] = v38;
    v14 = "#AuthPrompt Unrecognized authorization value";
    v15 = "{msg%{public}.0s:#AuthPrompt Unrecognized authorization value, requestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld, ClientKeyPath:%{public, location:escape_only}@}";
    goto LABEL_13;
  }
}

void sub_10023D694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, std::__shared_weak_count *a44, char a45)
{
  sub_10023DF30(&a45);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose((v46 - 240), 8);
  sub_10023DF30(v45 + 48);
  _Unwind_Resume(a1);
}

uint64_t sub_10023D76C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 136) intForKey:@"SupportedAuthorizationMask" atKeyPath:a2 defaultValue:0];
  v5 = [*(a1 + 136) BOOLForKey:@"Hidden" atKeyPath:a2 defaultValue:0];
  v6 = v4 & 0xFFFFFFFB;
  if (!v5)
  {
    return v4;
  }

  return v6;
}

const char *sub_10023D7FC(unsigned int a1)
{
  if (a1 > 8)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_10245A088[a1];
  }
}

void sub_10023D820(unsigned int *a1, uint64_t a2)
{
  if (a2)
  {
    v4 = NSDebugDescriptionErrorKey;
    v5 = a2;
    v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  }

  else
  {
    v3 = 0;
  }

  [NSError errorWithDomain:kCLErrorDomain code:18 userInfo:v3];
  sub_10023DC84(a1);
}

void sub_10023D948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023D960(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  sub_10000EC00(__p, "");
  sub_100018918(v2, v3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10023D9CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023D9E8(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1A;
  v3 = v1 - 26;
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
    sub_10045E858(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10045E430(a1, &v9);
}

void sub_10023DB70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10023DC84(unsigned int *a1)
{
  if (*(a1 + 5))
  {
    if (qword_1025D4790 != -1)
    {
      sub_10192F910();
    }

    v2 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 1);
      v4 = *a1;
      *buf = 68289538;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2114;
      v18 = v3;
      v19 = 2050;
      v20 = v4;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#AuthPrompt AuthorizationRequest completion, ClientKey:%{public, location:escape_only}@, RequestType:%{public, location:CLClientManager_Type::AuthorizationRequestType}lld}", buf, 0x26u);
    }

    (*(*(a1 + 5) + 16))();

    *(a1 + 5) = 0;
    *a1 = 0;

    *(a1 + 1) = 0;
    v5 = *(a1 + 6);
    if (v5)
    {
      *(a1 + 6) = 0;
      v6 = sub_100107858();
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1007ABC20;
      block[3] = &unk_102449A78;
      block[4] = v5;
      CFRunLoopPerformBlock(v6, kCFRunLoopCommonModes, block);
    }

    v9 = *(a1 + 7);
    v8 = a1 + 14;
    v7 = v9;
    if (v9)
    {
    }

    *v8 = 0;
    *(v8 + 1) = 0;
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_10028840C();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Request was completed multiple times}", buf, 0x12u);
      if (qword_1025D47A0 != -1)
      {
        sub_10192D4D0();
      }
    }

    v11 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Request was completed multiple times", "{msg%{public}.0s:Request was completed multiple times}", buf, 0x12u);
    }
  }
}

uint64_t sub_10023DF30(uint64_t a1)
{
  if (*(a1 + 40))
  {
    [NSError errorWithDomain:kCLErrorDomain code:18 userInfo:0];
    sub_10023DC84(a1);
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_10023DFA0(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 248;
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    if (*(i - 33) < 0)
    {
      operator delete(*(i - 56));
    }

    if (*(i - 177) < 0)
    {
      operator delete(*(i - 200));
    }

    if (*(i - 201) < 0)
    {
      operator delete(*(i - 224));
    }

    if (*(i - 225) < 0)
    {
      operator delete(*(i - 248));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10023E050(void *a1)
{
  switch([a1 type])
  {
    case 1u:
      v3 = [a1 cmAttitude];
      goto LABEL_23;
    case 2u:
      v3 = [a1 cmPedometer];
      goto LABEL_23;
    case 3u:
      v3 = objc_msgSend_location(a1);
      goto LABEL_23;
    case 4u:
      v3 = objc_msgSend_motionActivity(a1);
      goto LABEL_23;
    case 5u:
      v3 = [a1 pressure];
      goto LABEL_23;
    case 6u:
      v3 = [a1 wifiScan];
      goto LABEL_23;
    case 7u:
      v3 = [a1 bundleId];
      goto LABEL_23;
    case 8u:
    case 9u:
      v2 = [objc_msgSend(a1 "vioEstimation")];

      [v2 cfAbsoluteTimeS];
      return;
    case 0xAu:
      v3 = [a1 workoutUpdateMotionActivity];
      goto LABEL_23;
    case 0xBu:
      v3 = [a1 inertialOdometry];
      goto LABEL_23;
    case 0xCu:
      v3 = [a1 outdoorUpdate];
      goto LABEL_23;
    case 0xDu:
      v3 = [a1 cellConnectivity];
LABEL_23:

      [v3 timestamp];
      break;
    default:
      if (qword_1025D47D0 != -1)
      {
        sub_101907C84();
      }

      v4 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_FAULT))
      {
        *v5 = 0;
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "Attempting to retrieve timestamp for unknown event type!", v5, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101907C98();
      }

      break;
  }
}

void *sub_10023E224(void *a1, unint64_t *a2, void *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
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
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t *sub_10023E450(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 type];
  switch(result)
  {
    case 4:
      v10 = objc_msgSend_motionActivity(a3);
      result = [objc_msgSend_motionActivity(v10) type];
      if (result == 4)
      {
LABEL_9:
        v11 = [a3 type];
        v12 = &v11;
        result = sub_10006BEC4((a2 + 16), &v11, &unk_101C66300, &v12);
        ++*(result + 5);
      }

      break;
    case 0xB:
      v11 = [a3 type];
      v12 = &v11;
      v6 = sub_10006BEC4((a2 + 16), &v11, &unk_101C66300, &v12);
      ++*(v6 + 5);
      result = [objc_msgSend(a3 "inertialOdometry")];
      if (result)
      {
        result = [objc_msgSend(a3 "inertialOdometry")];
        if (result)
        {
          [objc_msgSend(a3 "inertialOdometry")];
          v8 = v7 * v7;
          result = [objc_msgSend(a3 "inertialOdometry")];
          *(a2 + 104) = *(a2 + 104) + sqrt(v8 + v9 * v9);
          ++*(a2 + 112);
        }
      }

      break;
    case 6:
      goto LABEL_9;
    default:
      break;
  }

  ++*(a2 + 56);
  return result;
}

void sub_10023E5A8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = (a1 + 8);
  v7 = [*(a1 + 8) pipelinedSeeded];
  if (v7 == 1)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v10 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      if (*(a3 + 23) >= 0)
      {
        v11 = a3;
      }

      else
      {
        v11 = *a3;
      }

      *__p = 136315138;
      *&__p[4] = v11;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "Shutdown not permitted by pipelined - ignoring: request to turn off due to %s", __p, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186C960();
    }
  }

  else if (v7)
  {
    v12 = sub_10037EB40(a1, a2);
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v13 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v14 = a3;
      }

      else
      {
        v14 = *a3;
      }

      *__p = 136446466;
      *&__p[4] = v14;
      v39 = 2082;
      v40 = sub_10038693C(v12);
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "@IndoorFlow, turnoff, %{public}s, %{public}s", __p, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186CB48(a3, v12, v15, v16, v17, v18, v19, v20);
    }

    if (v12)
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v21 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "@ClxIndoor, state, 0, required", __p, 2u);
      }

      v22 = sub_10000A100(121, 2);
      if (v22)
      {
        sub_10186CC78();
      }

      if (sub_10001CF04(v22, v23))
      {
        if (qword_1025D4620 != -1)
        {
          sub_101869E5C();
        }

        v24 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          *__p = 0;
          _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "@ClxWifi2, state, 0, required", __p, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10186CD5C();
        }
      }

      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v25 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        if (*(a3 + 23) >= 0)
        {
          v26 = a3;
        }

        else
        {
          v26 = *a3;
        }

        v27 = sub_10038693C(v12);
        *__p = 136315394;
        *&__p[4] = v26;
        v39 = 2080;
        v40 = v27;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "%s - must stop indoor immediately (no debounce): %s", __p, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186CE40(a3, v12, v28, v29, v30, v31, v32, v33);
      }

      v34 = *(a1 + 24);
      sub_10000EC00(__p, "stop required");
      (*(*v34 + 16))(v34, __p);
      if (v41 < 0)
      {
        operator delete(*__p);
      }

      sub_10037EF8C(a1);
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101869E5C();
      }

      v35 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
      {
        if (*(a3 + 23) >= 0)
        {
          v36 = a3;
        }

        else
        {
          v36 = *a3;
        }

        v37 = sub_10017F5D4([*v6 pipelinedSeeded]);
        *__p = 136315394;
        *&__p[4] = v36;
        v39 = 2080;
        v40 = v37;
        _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "%s and %s; but no need to turn off at this time", __p, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10186CF70();
      }
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101869E48();
    }

    v8 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
    {
      if (*(a3 + 23) >= 0)
      {
        v9 = a3;
      }

      else
      {
        v9 = *a3;
      }

      *__p = 136315138;
      *&__p[4] = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "Not seeded - ignoring: request to turn off due to %s", __p, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10186CA54();
    }
  }
}

void sub_10023EA80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023EAA4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  if (*(v4 + 388) & 0x80000000) != 0 || [*(a1 + 32) count] < *(v4 + 388) || (*(v4 + 440))
  {
    if (qword_1025D47D0 != -1)
    {
      sub_100260340();
    }

    v5 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000183C0(v4);
      v9 = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2050;
      v14 = sub_1000183C0(v4);
      v15 = 2117;
      v16 = [a2 formattedText];
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Harvest-Collect, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, event:%{sensitive, location:escape_only}@}", &v9, 0x26u);
    }

    [*(a1 + 32) writeSecondaryObject:a2 toField:2];
    ++*(v4 + 208);
    *(v4 + 904) = (*(**(v4 + 56) + 64))(*(v4 + 56));
    (*(**(v4 + 1400) + 56))(*(v4 + 1400), a2);
  }

  else
  {
    if (qword_1025D47D0 != -1)
    {
      sub_100260340();
    }

    v6 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      sub_1000183C0(v4);
      v7 = sub_1000183C0(v4);
      v8 = *(v4 + 388);
      v9 = 68289539;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2050;
      v14 = v7;
      v15 = 1025;
      LODWORD(v16) = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:max scans exceeded, removing from cache, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, maxEvents:%{private}d}", &v9, 0x22u);
    }
  }
}

id sub_10023ED00(uint64_t a1, void *a2)
{
  v3 = (*(*a1 + 168))(a1);

  return sub_10023ED58(v3, a2);
}

id sub_10023ED58(uint64_t a1, void *a2)
{
  sub_10023E050(a2);
  v5 = v4;
  result = [a2 type];
  if (result == 2)
  {
    goto LABEL_15;
  }

  if (*(a1 + 40) == 1)
  {
    v7 = v5 - *(a1 + 32);
    (*(**(a1 + 56) + 128))(&v14);
    v8 = *(&v15 + 1);
    sub_1004906DC(v25);
    sub_1004906DC(v24);
    result = sub_1004906DC(v23);
    if (v7 < v8)
    {
      *(a1 + 48) = 1;
      return result;
    }
  }

  *(a1 + 32) = v5;
  *(a1 + 40) = 1;
  v9 = *(a1 + 16);
  if (!*(v9 - 64))
  {
    *(v9 - 120) = v5;
    v10 = (v9 - 112);
    goto LABEL_13;
  }

  v10 = (v9 - 112);
  v11 = *(v9 - 120);
  if (v5 > *(v9 - 112))
  {
    v12 = v5 - v11;
    (*(**(a1 + 56) + 128))(&v14);
    v13 = *&v16;
    sub_1004906DC(v25);
    sub_1004906DC(v24);
    sub_1004906DC(v23);
    if (v12 > v13)
    {
      v15 = 0u;
      v16 = 0u;
      v14 = 0u;
      v17 = 1065353216;
      v18 = 0;
      v19[0] = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      sub_10023F584(v19, v9 - 56);
      sub_10023F6FC((a1 + 8), &v14);
      sub_10023ED58(a1, a2);
      if (v20 == 1)
      {
        sub_100246AA8(v19);
      }

      result = sub_1004906DC(&v15);
      goto LABEL_15;
    }

    if (v5 <= *v10)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v10 = (v9 - 120);
  if (v5 < v11)
  {
LABEL_13:
    *v10 = v5;
  }

LABEL_14:
  result = (*(*a1 + 32))(a1, v9 - 120, a2);
LABEL_15:
  ++*(a1 + 52);
  return result;
}

void *sub_10023F024(void *result)
{
  if (result)
  {
    v1 = [objc_msgSend(result "lastPathComponent")];
    if ([v1 count] >= 3)
    {
      [objc_msgSend(v1 objectAtIndex:{1), "doubleValue"}];
      v3 = v2;
      [objc_msgSend(v1 objectAtIndex:{2), "intValue"}];
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10023F124(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = objc_alloc_init(CLPIndoorEvent);
  [v7 setType:3];
  v8 = [CLPLocation alloc];
  v9 = *(a3 + 112);
  v39[6] = *(a3 + 96);
  v39[7] = v9;
  v40[0] = *(a3 + 128);
  *(v40 + 12) = *(a3 + 140);
  v10 = *(a3 + 48);
  v39[2] = *(a3 + 32);
  v39[3] = v10;
  v11 = *(a3 + 80);
  v39[4] = *(a3 + 64);
  v39[5] = v11;
  v12 = *(a3 + 16);
  v39[0] = *a3;
  v39[1] = v12;
  v13 = [v8 initWithDaemonLocation:v39];
  [v13 timestamp];
  [v13 setTimestamp:v14 - *(a1 + 64)];
  [v13 setIsFromLocationController:a4 == 0];
  v15 = [v13 setProvider:*(a3 + 96)];
  if (*(a3 + 124) != 0x7FFFFFFF)
  {
    v15 = [v13 setFloor:?];
  }

  v17 = *(a3 + 200);
  v18 = sub_10023F4FC(v15, v16);
  if (v17 != v18[10])
  {
    LODWORD(v20) = *(a3 + 200);
    v18 = [v13 setHorzUncSemiMaj:v20];
  }

  v21 = *(a3 + 204);
  v22 = sub_10023F4FC(v18, v19);
  if (v21 != v22[11])
  {
    LODWORD(v24) = *(a3 + 204);
    v22 = [v13 setHorzUncSemiMin:v24];
  }

  v25 = *(a3 + 208);
  if (v25 != *(sub_10023F4FC(v22, v23) + 12))
  {
    LODWORD(v26) = *(a3 + 208);
    [v13 setHorzUncSemiMajAz:v26];
  }

  if (a4 == 1)
  {
    v27 = *(a3 + 680);
    if (v27)
    {
      if (*v27 != v27[1])
      {
        v28 = objc_alloc_init(CLPSatelliteReport);
        [v28 setGps:{sub_100F26608(*(a3 + 680), 0)}];
        [v28 setGlonass:{sub_100F26608(*(a3 + 680), 1)}];
        [v28 setQzss:{sub_100F26608(*(a3 + 680), 4)}];
        [v28 setGalileo:{sub_100F26608(*(a3 + 680), 3)}];
        [v13 setSatReport:v28];
      }
    }
  }

  if ((*(a3 + 96) & 0xFFFFFFFE) == 0xA)
  {
    v29 = objc_alloc_init(CLPPipelineDiagnosticReport);
    v30 = v29;
    v31 = *(a3 + 1184);
    if (v31 - 1 >= 3)
    {
      v32 = 0;
    }

    else
    {
      v32 = v31;
    }

    [v29 setYieldType:v32];
    [v30 setPrbPipelinedSaysYield:*(a3 + 1192)];
    [v30 setPrbCoarseIndoorSaysIndoor:*(a3 + 1200)];
    [v30 setPrbWifiSaysIndoor:*(a3 + 1208)];
    [v30 setPrbGpsSaysIndoor:*(a3 + 1216)];
    [v30 setPrbParticleFilterSaysYield:*(a3 + 1224)];
    [v30 setPrbOnFloorsEstimate:*(a3 + 1232)];
    for (i = 0; i != 40; i += 8)
    {
      if (*(a3 + 1240 + i) >= 0.0)
      {
        [v30 addPrbOnFloorEstimate:?];
      }
    }

    [v30 setPrbInlierEstimate:*(a3 + 1280)];
    [v30 setPrbLocalizerIoWrapperSaysWifiOk:*(a3 + 1288)];
    [v30 setPrbInjectionOccupancyRetryLimitOk:*(a3 + 1296)];
    [v30 setPrbInjectionGainRetryLimitOk:*(a3 + 1304)];
    v34 = *(a3 + 1312);
    if (v34 - 1 >= 4)
    {
      v35 = 0;
    }

    else
    {
      v35 = v34;
    }

    [v30 setPfYieldStatusBeforeCalculatePose:v35];
    v36 = *(a3 + 1316);
    if (v36 - 1 >= 4)
    {
      v37 = 0;
    }

    else
    {
      v37 = v36;
    }

    [v30 setYieldStatusBeforeCalculatePose:v37];
    [v13 setPipelineDiagnosticReport:v30];
  }

  [v7 setLocation:v13];
  [*(a1 + 48) addObject:v7];
  return sub_100063090(a1);
}

__n128 sub_10023F454@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_10023EFB0();
  v3 = *(v2 + 3);
  v5 = *v2;
  v4 = *(v2 + 1);
  *(a1 + 32) = *(v2 + 2);
  *(a1 + 48) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  v7 = *(v2 + 5);
  v6 = *(v2 + 6);
  v8 = *(v2 + 4);
  *(a1 + 112) = *(v2 + 14);
  *(a1 + 80) = v7;
  *(a1 + 96) = v6;
  *(a1 + 64) = v8;
  sub_100218494(a1 + 120, (v2 + 30));
  sub_100218494(a1 + 160, (v2 + 40));
  sub_100218494(a1 + 200, (v2 + 50));
  result = *(v2 + 15);
  *(a1 + 255) = *(v2 + 255);
  *(a1 + 240) = result;
  return result;
}

void sub_10023F4D8(_Unwind_Exception *a1)
{
  sub_1004906DC(v1 + 160);
  sub_1004906DC(v1 + 120);
  _Unwind_Resume(a1);
}

void *sub_10023F4FC(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(byte_10265C768, memory_order_acquire) & 1) == 0)
  {
    sub_1019EE6B4();
  }

  return &unk_10265C770;
}

id sub_10023F53C(uint64_t a1, uint64_t a2)
{
  [*(a1 + 48) enumerateObjectsUsingBlock:a2];
  v3 = *(a1 + 48);

  return [v3 removeAllObjects];
}

uint64_t sub_10023F584(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 32) == *(a2 + 32))
  {
    if (*(result + 32))
    {

      return sub_1006A8A5C(result, a2);
    }
  }

  else if (*(result + 32))
  {
    result = sub_100246AA8(result);
    *(v2 + 32) = 0;
  }

  else
  {
    result = sub_1002469FC(result, a2);
    *(v2 + 32) = 1;
  }

  return result;
}

_BYTE *sub_10023F5F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  sub_10023F684(v4 + 16, a2 + 16);
  *(v4 + 56) = *(a2 + 56);
  result = sub_100246B2C((v4 + 64), a2 + 64);
  v6 = *(a2 + 104);
  *(v4 + 112) = *(a2 + 112);
  *(v4 + 104) = v6;
  *(a1 + 8) = v4 + 120;
  return result;
}

void sub_10023F664(_Unwind_Exception *a1)
{
  sub_1004906DC(v2 + 16);
  *(v1 + 8) = v2;
  _Unwind_Resume(a1);
}

uint64_t sub_10023F684(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_10007048C(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_1004904B0(a1, i + 4, i + 2);
  }

  return a1;
}

uint64_t sub_10023F6FC(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1006A8BDC(a1, a2);
  }

  else
  {
    sub_10023F5F8(a1, a2);
    result = v3 + 120;
  }

  a1[1] = result;
  return result;
}

double sub_10023F778@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  memcpy(a2, &unk_101CE6D78, 0x230uLL);
  v4 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v4;
  *&v4 = *(a1 + 40);
  *(a2 + 4) = *(a1 + 32);
  *(a2 + 5) = v4;
  *(a2 + 12) = *(a1 + 48);
  *(a2 + 52) = *(a1 + 52);
  *(a2 + 14) = *(a1 + 56);
  a2[4] = *(a1 + 64);
  *&v4 = *(a1 + 88);
  *(a2 + 10) = *(a1 + 80);
  *(a2 + 11) = v4;
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 104) = *(a1 + 104);
  *(a2 + 120) = *(a1 + 120);
  *(a2 + 136) = *(a1 + 136);
  *(a2 + 152) = *(a1 + 152);
  v5 = *(a1 + 280);
  *(a2 + 264) = *(a1 + 264);
  *(a2 + 280) = v5;
  *(a2 + 248) = *(a1 + 248);
  *(a2 + 232) = *(a1 + 232);
  *(a2 + 216) = *(a1 + 216);
  *(a2 + 200) = *(a1 + 200);
  *(a2 + 184) = *(a1 + 184);
  *(a2 + 168) = *(a1 + 168);
  *(a2 + 296) = *(a1 + 296);
  *(a2 + 78) = *(a1 + 312);
  *(a2 + 79) = *(a1 + 316);
  v6 = *(a1 + 336);
  a2[20] = *(a1 + 320);
  a2[21] = v6;
  *(a2 + 88) = *(a1 + 352);
  *(a2 + 356) = *(a1 + 356);
  *(a2 + 45) = *(a1 + 360);
  v7 = *(a1 + 384);
  a2[23] = *(a1 + 368);
  a2[24] = v7;
  a2[25] = *(a1 + 400);
  *(a2 + 52) = *(a1 + 416);
  *(a2 + 424) = *(a1 + 424);
  *(a2 + 425) = *(a1 + 425);
  a2[27] = *(a1 + 432);
  *(a2 + 56) = *(a1 + 448);
  *(a2 + 114) = *(a1 + 456);
  v8 = *(a1 + 480);
  a2[29] = *(a1 + 464);
  a2[30] = v8;
  a2[31] = *(a1 + 496);
  v9 = *(a1 + 576);
  if (v9 == 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2 * (v9 == 2);
  }

  *(a2 + 128) = v10;
  *(a2 + 65) = *(a1 + 584);
  *(a2 + 66) = *(a1 + 592);
  result = *(a1 + 616);
  *(a2 + 67) = result;
  *(a2 + 68) = *(a1 + 624);
  *(a2 + 552) = *(a1 + 640);
  return result;
}

double sub_10023F928(uint64_t a1, double *a2)
{
  sub_1000A2B60((a1 + 32), a2);
  v4 = *(a1 + 72);
  if (v4 > *(a1 + 8))
  {
    v5 = *(a1 + 64);
    v6 = *(*(*(a1 + 40) + ((v5 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v5 & 0x1FF));
    v7 = *(a1 + 16) - v6;
    v8 = *(a1 + 24) - v6 * v6;
    *(a1 + 16) = v7;
    *(a1 + 24) = v8;
    *(a1 + 64) = v5 + 1;
    *(a1 + 72) = v4 - 1;
    sub_1000A2BE8(a1 + 32, 1);
  }

  v9 = *(a1 + 24);
  *(a1 + 16) = *a2 + *(a1 + 16);
  result = v9 + *a2 * *a2;
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_10023F9C4(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x15)
  {
    a2 = 1;
  }

  if (v2 < 0x2A)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 21;
  }

  return v4 ^ 1u;
}

__n128 sub_10023FA24@<Q0>(uint64_t *a1@<X1>, char *a2@<X2>, char **a3@<X3>, unint64_t a4@<X4>, char *a5@<X5>, char *a6@<X6>, __n128 *a7@<X8>)
{
  if (a1 == a3)
  {
    v11 = a2;
    v12 = a4;
    v13 = a5;
    v14 = a6;
  }

  else
  {
    v17 = (a3 - 1);
    v16 = *a3;
    v18 = a4;
    v13 = a5;
    v14 = a6;
    while (1)
    {
      sub_10023FAF4(v16, v18, v13, v14, &v21);
      v14 = v22.n128_u64[1];
      v13 = v22.n128_u64[0];
      if (v17 == a1)
      {
        break;
      }

      v19 = *v17--;
      v16 = v19;
      v18 = (v19 + 4032);
    }

    v12 = (*v17 + 4032);
    v11 = a2;
  }

  sub_10023FAF4(v11, v12, v13, v14, &v21);
  result = v22;
  a7->n128_u64[0] = a3;
  a7->n128_u64[1] = a4;
  a7[1] = result;
  return result;
}

void *sub_10023FAF4@<X0>(char *a1@<X1>, char *a2@<X2>, char *a3@<X3>, char *a4@<X4>, char **a5@<X8>)
{
  v6 = a3;
  if (a1 == a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = a2;
    v10 = *a3;
    v11 = a2;
    while (1)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * (&a4[-v10] >> 6);
      if ((0xAAAAAAAAAAAAAAABLL * ((v11 - a1) >> 6)) < v12)
      {
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v11 - a1) >> 6);
      }

      v11 -= 192 * v12;
      a4 -= 192 * v12;
      if (v12)
      {
        result = memmove(a4, v11, 192 * v12);
      }

      if (v11 == a1)
      {
        break;
      }

      v14 = *(v6 - 1);
      v6 -= 8;
      v10 = v14;
      a4 = (v14 + 4032);
    }

    if ((*v6 + 4032) == a4)
    {
      v15 = *(v6 + 1);
      v6 += 8;
      a4 = v15;
    }
  }

  *a5 = v9;
  a5[1] = v6;
  a5[2] = a4;
  return result;
}

void sub_10023FBD8(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }
  }

  a1[1] = v2;
}

void sub_10023FC28(uint64_t a1, uint64_t *a2)
{
  if (sub_10018E854(a1) && sub_10018F858(a1, a2))
  {
    v4 = *a2;
    sub_10018F1F0(a1, __p);
    v4 = *a2;
    sub_100242B68(__p, &v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_10023FCA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023FDC0(uint64_t a1, char a2, uint64_t a3)
{
  v3[0] = 75;
  v3[1] = a2;
  v4 = a3;
  sub_10023FF4C(a1 + 192, v3, 0);
}

void sub_10023FE18(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1001D0818();
}

void sub_10023FE74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 56;
      *(a1 + 16) = v2 - 56;
      if (*(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t sub_10023FED0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_101264BC0(a1);
  }

  return a1;
}

void sub_10023FF4C(uint64_t a1, uint64_t a2, void *aBlock)
{
  if (*(a1 + 8))
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x4012000000;
    v8[3] = sub_100240098;
    v8[4] = nullsub_83;
    v8[5] = &unk_10238AE8B;
    v8[6] = *a2;
    v9 = *(a2 + 8);
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    v6 = *a1;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1002400AC;
    block[3] = &unk_102462080;
    block[5] = v8;
    block[6] = a1;
    block[4] = v4;
    dispatch_async(v6, block);
    _Block_object_dispose(v8, 8);
  }

  else if (aBlock)
  {
    v5 = *(aBlock + 2);

    v5(aBlock, 0);
  }
}

void sub_100240080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100240098(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 48) = v2;
  return result;
}

void sub_1002400AC(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 48) = 75;
  v3 = sub_1000B93E4(v2, *(a1[5] + 8) + 48, 10);
  v4 = a1[4];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v5 = a1[4];

    _Block_release(v5);
  }
}

uint64_t sub_10024012C(uint64_t a1, __int128 *a2)
{
  v16 = 0;
  v8 = sub_100040914(a1, *(a1 + 352));
  v4 = a2[5];
  v13 = a2[4];
  v14 = v4;
  v15 = a2[6];
  v5 = a2[1];
  v9 = *a2;
  v10 = v5;
  v6 = a2[3];
  v11 = a2[2];
  LOBYTE(v16) = *(a2 + 112);
  v12 = v6;
  return sub_100013B00(a1, 49, &v8, 128);
}

uint64_t sub_1002401BC(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_10045E8A0(a1, v4);
  operator delete(v4);
  return 1;
}

void *sub_100240250(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4 + 5;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_100240E54(uint64_t a1, void *a2)
{
  if (*(a1 + 8))
  {
    v3 = +[NSMutableDictionary dictionary];
    obj = [a2 allKeys];
    v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
    if (v4)
    {
      v5 = MEMORY[0];
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (MEMORY[0] != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(8 * i);
          v8 = [a2 objectForKeyedSubscript:v7];
          v12[0] = @"radius";
          [v8 radius];
          v13[0] = [NSNumber numberWithFloat:?];
          v12[1] = @"radialDisplacement";
          [v8 radialDisplacement];
          v13[1] = [NSNumber numberWithFloat:?];
          v12[2] = @"duration";
          [v8 duration];
          v13[2] = [NSNumber numberWithDouble:?];
          [v3 setObject:+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v13, v12, 3), v7}];
        }

        v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj);
      }

      while (v4);
    }

    v10 = CMPedestrianFenceStatus;
    v11 = v3;
    [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    sub_1002410CC();
  }
}

void sub_100241090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a13)
  {
    sub_100008080(a13);
  }

  if (a15)
  {
    sub_100008080(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100241140(uint64_t a1, char *a2, void *a3)
{
  sub_10000EC00(&__p, a2);
  CLConnectionMessage::CLConnectionMessage();
  if (v6 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_100241198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002411B4(void *a1, char *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102451BF8;
  sub_100241140((a1 + 3), a2, a3);
  return a1;
}

void sub_100241210(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(byte_1026592F8, memory_order_acquire) & 1) == 0)
  {
    sub_10191BDB0();
  }

  if (qword_102659110 != -1)
  {
    sub_10191BE14();
  }

  if (byte_102659370[23] < 0)
  {
    v2 = *byte_102659370;
    v3 = *&byte_102659370[8];

    sub_100007244(a1, v2, v3);
  }

  else
  {
    *a1 = *byte_102659370;
    *(a1 + 16) = *&byte_102659370[16];
  }
}

void sub_1002412B0(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(byte_1026592E0, memory_order_acquire) & 1) == 0)
  {
    sub_10191BC5C();
  }

  if (qword_1026590F0 != -1)
  {
    sub_10191BCC0();
  }

  if (byte_10265933F < 0)
  {
    v2 = xmmword_102659328;

    sub_100007244(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_102659328;
    *(a1 + 16) = unk_102659338;
  }
}

void sub_100241350(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(byte_1026592E8, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    sub_10191BCD4();
    a1 = v3;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007181A0;
  block[3] = &unk_102449A78;
  block[4] = a1;
  if (qword_1026590F8 != -1)
  {
    dispatch_once(&qword_1026590F8, block);
  }

  if (byte_102659357 < 0)
  {
    sub_100007244(a2, xmmword_102659340, *(&xmmword_102659340 + 1));
  }

  else
  {
    *a2 = xmmword_102659340;
    *(a2 + 16) = unk_102659350;
  }
}

void sub_100241440(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_10024149C(uint64_t result, int a2, int a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18)
{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = a9;
  *(result + 16) = a10;
  *(result + 24) = a11;
  *(result + 32) = a12;
  *(result + 40) = a13;
  *(result + 48) = a14;
  *(result + 56) = a15;
  *(result + 64) = a16;
  *(result + 72) = a4;
  *(result + 80) = a5;
  *(result + 88) = a6;
  *(result + 96) = a7;
  *(result + 104) = a17;
  *(result + 112) = a18;
  *(result + 120) = a8;
  *(result + 132) = 0;
  *(result + 124) = 0;
  return result;
}

void sub_1002414D8(int *a1@<X0>, double **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v58[0] = 0;
  v58[1] = 0;
  v57 = v58;
  v10 = *a2;
  v11 = a2[1];
  while (v10 != v11)
  {
    sub_100244008(v10, buf);
    sub_100244050(&v57, buf, buf, v10);
    if (SHIBYTE(v74) < 0)
    {
      operator delete(__p);
    }

    v10 += 18;
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v47[0] = 0;
  v47[1] = 0;
  v12 = *(a3 + 20);
  v46 = v47;
  if (v12 <= 0.0 || a5 - *(a3 + 76) >= (3600.0 >> 1))
  {
    if (*a1 <= 25)
    {
      v16 = *a2;
      for (i = a2[1]; v16 != i; v16 += 18)
      {
        sub_100244008(v16, buf);
        v18 = v52;
        if (v52 >= v53)
        {
          v52 = sub_101266AC8(&v51, buf);
          if (SHIBYTE(v74) < 0)
          {
            operator delete(__p);
          }
        }

        else
        {
          v19 = *buf;
          *(v52 + 16) = *&buf[16];
          *v18 = v19;
          v20 = __p;
          *(v18 + 40) = v74;
          *(v18 + 24) = v20;
          v52 = v18 + 48;
        }
      }
    }

    else
    {
      if (qword_1025D4630 != -1)
      {
        sub_101B82614();
      }

      v13 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_INFO, "invalid location provided and complete miss, will not return any tiles to search", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101B82B18(buf);
        *v69 = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 1, "invalid location provided and complete miss, will not return any tiles to search", v69, 2);
        v15 = v14;
        sub_100152C7C("Generic", 1, 0, 2, "std::tuple<std::vector<TileId>, std::vector<TileId>, std::vector<TileId>> CLWifiTileQueryLogic::getTilesToSearch(const std::vector<CLWifiTileHeaderEntry> &, const CLDaemonLocation &, cl::chrono::CFAbsoluteTimeClock::time_point)", "%s\n", v14);
        if (v15 != buf)
        {
          free(v15);
        }
      }
    }

    if (qword_1025D4620 != -1)
    {
      sub_101B825A8();
    }

    v21 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *a1 > 25;
      *buf = 134349824;
      *&buf[4] = 0xAAAAAAAAAAAAAAABLL * ((v55 - v54) >> 4);
      *&buf[12] = 2050;
      *&buf[14] = 0xAAAAAAAAAAAAAAABLL * ((v52 - v51) >> 4);
      *&buf[22] = 2050;
      *&__p = 0xAAAAAAAAAAAAAAABLL * ((v49 - v48) >> 4);
      WORD4(__p) = 1026;
      *(&__p + 10) = v22;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "@TileSearch, wifi, nrx, %{public}ld, %{public}ld, %{public}ld, havecurrent, 0, completemiss, %{public}d", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B825D0(buf);
      v34 = *a1 > 25;
      *v69 = 134349824;
      *&v69[4] = 0xAAAAAAAAAAAAAAABLL * ((v55 - v54) >> 4);
      *&v69[12] = 2050;
      *&v69[14] = 0xAAAAAAAAAAAAAAABLL * ((v52 - v51) >> 4);
      *&v69[22] = 2050;
      *&v70 = 0xAAAAAAAAAAAAAAABLL * ((v49 - v48) >> 4);
      WORD4(v70) = 1026;
      *(&v70 + 10) = v34;
      LODWORD(v40) = 38;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "@TileSearch, wifi, nrx, %{public}ld, %{public}ld, %{public}ld, havecurrent, 0, completemiss, %{public}d", v69, v40);
      v36 = v35;
      sub_100152C7C("Generic", 1, 0, 2, "std::tuple<std::vector<TileId>, std::vector<TileId>, std::vector<TileId>> CLWifiTileQueryLogic::getTilesToSearch(const std::vector<CLWifiTileHeaderEntry> &, const CLDaemonLocation &, cl::chrono::CFAbsoluteTimeClock::time_point)", "%s\n", v35);
      if (v36 != buf)
      {
        free(v36);
      }
    }

    sub_1002421C8(a4, &v54, &v51, &v48);
  }

  else
  {
    *buf = 0;
    sub_1000850D0(v69, buf);
    sub_10008511C(v69, -1, *(a3 + 4), *(a3 + 12), 0.05, 0.05);
    if (v58 != sub_10008535C(&v57, v69))
    {
      sub_100241F3C(&v54, v69);
      sub_100236990(&v46, v69, v69);
    }

    v42 = *v69;
    v43 = *&v69[16];
    if (SHIBYTE(v71) < 0)
    {
      sub_100007244(&v44, v70, *(&v70 + 1));
    }

    else
    {
      v44 = v70;
      v45 = v71;
    }

    v41 = sub_10008535C(&v57, v69);
    v24 = 8;
    v25 = &byte_101D1C30D;
    do
    {
      v26 = *v25;
      v27 = *(v25 - 1);
      *buf = v42;
      *&buf[16] = v43;
      if (SHIBYTE(v45) < 0)
      {
        sub_100007244(&__p, v44, *(&v44 + 1));
      }

      else
      {
        __p = v44;
        v74 = v45;
      }

      v23.i32[0] = 1028443341;
      sub_100085AC4(buf, v26, v27, 0.05, v23);
      if (v58 == sub_10008535C(&v57, buf))
      {
        sub_100241F3C(&v48, buf);
      }

      else if (v47 != sub_10008535C(&v46, &v42))
      {
        sub_100241F3C(&v54, buf);
        sub_100236990(&v46, buf, buf);
      }

      if (SHIBYTE(v74) < 0)
      {
        operator delete(__p);
      }

      v25 += 2;
      --v24;
    }

    while (v24);
    if (*a1 <= 25)
    {
      v28 = v57;
      if (v57 != v58)
      {
        do
        {
          if (v47 == sub_10008535C(&v46, (v28 + 4)))
          {
            sub_100236990(&v46, (v28 + 4), (v28 + 4));
            sub_100241F3C(&v51, v28 + 2);
          }

          v29 = v28[1];
          if (v29)
          {
            do
            {
              v30 = v29;
              v29 = *v29;
            }

            while (v29);
          }

          else
          {
            do
            {
              v30 = v28[2];
              v31 = *v30 == v28;
              v28 = v30;
            }

            while (!v31);
          }

          v28 = v30;
        }

        while (v30 != v58);
      }
    }

    if (qword_1025D4620 != -1)
    {
      sub_101B825A8();
    }

    v32 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *a1 > 25;
      *buf = 134350080;
      *&buf[4] = 0xAAAAAAAAAAAAAAABLL * ((v55 - v54) >> 4);
      *&buf[12] = 2050;
      *&buf[14] = 0xAAAAAAAAAAAAAAABLL * ((v52 - v51) >> 4);
      *&buf[22] = 2050;
      *&__p = 0xAAAAAAAAAAAAAAABLL * ((v49 - v48) >> 4);
      WORD4(__p) = 1026;
      *(&__p + 10) = v58 != v41;
      HIWORD(__p) = 1026;
      LODWORD(v74) = v33;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEFAULT, "@TileSearch, wifi, nrx, %{public}ld, %{public}ld, %{public}ld, havecurrent, %{public}d, completemiss, %{public}d", buf, 0x2Cu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101B825D0(buf);
      v37 = *a1 > 25;
      v59 = 134350080;
      v60 = 0xAAAAAAAAAAAAAAABLL * ((v55 - v54) >> 4);
      v61 = 2050;
      v62 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v51) >> 4);
      v63 = 2050;
      v64 = 0xAAAAAAAAAAAAAAABLL * ((v49 - v48) >> 4);
      v65 = 1026;
      v66 = v58 != v41;
      v67 = 1026;
      v68 = v37;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 0, "@TileSearch, wifi, nrx, %{public}ld, %{public}ld, %{public}ld, havecurrent, %{public}d, completemiss, %{public}d", &v59, 44);
      v39 = v38;
      sub_100152C7C("Generic", 1, 0, 2, "std::tuple<std::vector<TileId>, std::vector<TileId>, std::vector<TileId>> CLWifiTileQueryLogic::getTilesToSearch(const std::vector<CLWifiTileHeaderEntry> &, const CLDaemonLocation &, cl::chrono::CFAbsoluteTimeClock::time_point)", "%s\n", v38);
      if (v39 != buf)
      {
        free(v39);
      }
    }

    sub_1002421C8(a4, &v54, &v51, &v48);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(v44);
    }

    if (SHIBYTE(v71) < 0)
    {
      operator delete(v70);
    }
  }

  sub_100199B5C(&v46, v47[0]);
  *buf = &v48;
  sub_100236AE4(buf);
  *buf = &v51;
  sub_100236AE4(buf);
  *buf = &v54;
  sub_100236AE4(buf);
  sub_100199B5C(&v57, v58[0]);
}

void sub_100241E30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char *a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, char *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  sub_100199B5C(&a23, a24);
  a53 = &a26;
  sub_100236AE4(&a53);
  a53 = &a29;
  sub_100236AE4(&a53);
  a53 = &a32;
  sub_100236AE4(&a53);
  sub_100199B5C(&a35, a36);
  _Unwind_Resume(a1);
}

uint64_t sub_100241F3C(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100236764(a1, a2);
  }

  else
  {
    sub_100242158(a1, a2);
    result = v3 + 48;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_100241F7C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 5);
      *(a4 + 24) = v8;
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 3) = 0;
      v6 += 3;
      a4 += 48;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 3));
      }

      v5 += 3;
    }
  }

  return sub_1002368C4(v10);
}

void sub_1002420E4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1008600CC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100242100(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  sub_1001D0818();
}

void *sub_100242158(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = *a2;
  *(v3 + 16) = *(a2 + 2);
  *v3 = v4;
  if (*(a2 + 47) < 0)
  {
    result = sub_100007244((v3 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(v3 + 40) = *(a2 + 5);
    *(v3 + 24) = v5;
  }

  v2[1] = v3 + 48;
  return result;
}

uint64_t *sub_1002421C8(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_100236A10(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_100236A10(a1 + 3, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_100236A10(a1 + 6, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 4));
  return a1;
}

void sub_100242278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100236AE4(va);
  sub_100236AE4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002422A4(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !sub_1000857B4(a5, (a2 + 4)))
  {
    if (!sub_1000857B4((a2 + 4), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!sub_1000857B4(a5, (v15 + 4)))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = v11[1];
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = v16[2];
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (sub_1000857B4((v12 + 4), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return sub_1000897E8(a1, a3, a5);
}

uint64_t sub_100242438(uint64_t a1)
{
  sub_10023FE74(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100242470(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 5);
      *(a4 + 24) = v8;
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 3) = 0;
      *(a4 + 48) = *(v6 + 48);
      v6 = (v6 + 56);
      a4 += 56;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 3));
      }

      v5 = (v5 + 56);
    }
  }

  return sub_10023FED0(v10);
}

unint64_t sub_10024253C(uint64_t a1, int *a2)
{
  v3 = *(a1 + 104);
  if (v3 && sub_100023B68(v3))
  {
    *(&v26.__r_.__value_.__s + 23) = 7;
    strcpy(&v26, "SELECT ");
    v4 = std::string::append(&v26, "AccessTimestamp", 0xFuLL);
    v5 = *&v4->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    v6 = std::string::append(&v27, " FROM ", 6uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = *(a1 + 23);
    if (v8 >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 23);
    }

    else
    {
      v10 = *(a1 + 8);
    }

    v11 = std::string::append(&v28, v9, v10);
    v12 = *&v11->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    v13 = std::string::append(&v29, " WHERE ", 7uLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v30.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
    *&v30.__r_.__value_.__l.__data_ = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    v15 = std::string::append(&v30, "TileX", 5uLL);
    v16 = *&v15->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v16;
    v15->__r_.__value_.__l.__size_ = 0;
    v15->__r_.__value_.__r.__words[2] = 0;
    v15->__r_.__value_.__r.__words[0] = 0;
    v17 = std::string::append(&v31, " = ? AND ", 9uLL);
    v18 = *&v17->__r_.__value_.__l.__data_;
    v32.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
    *&v32.__r_.__value_.__l.__data_ = v18;
    v17->__r_.__value_.__l.__size_ = 0;
    v17->__r_.__value_.__r.__words[2] = 0;
    v17->__r_.__value_.__r.__words[0] = 0;
    v19 = std::string::append(&v32, "TileY", 5uLL);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v35.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v35.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    v21 = std::string::append(&v35, " = ?", 4uLL);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v34 = v21->__r_.__value_.__r.__words[2];
    v33 = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    if (v34 >= 0)
    {
      v23 = &v33;
    }

    else
    {
      v23 = v33;
    }

    sub_1000388D8(*(a1 + 104), v23);
  }

  if (qword_1025D4630 != -1)
  {
    sub_10192AFEC();
  }

  v24 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_INFO))
  {
    LOWORD(v35.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_INFO, "not connected to wifi #tile header table", &v35, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10192B680();
  }

  return 0;
}

void sub_100242A4C(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (v49)
  {
    (*(*v49 + 8))(v49, a2, a3, a4, a5, a6, a7, a8);
  }

  if (*(v50 - 121) < 0)
  {
    operator delete(*(v50 - 144));
  }

  _Unwind_Resume(exception_object);
}

void sub_100242B68(uint64_t a1, void *a2)
{
  sub_1001A7094(&v5);
  v4 = sub_1001AB6B4(v5);
  if (v6)
  {
    sub_100008080(v6);
  }

  sub_100236C90(a1, a2, v4);
}

void sub_100242BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100242BE4(uint64_t *a1, void *a2, uint64_t a3, unsigned int *a4, double *a5, double *a6, uint64_t *a7, const std::string *a8, uint64_t *a9)
{
  v9 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v10 = v9 + 1;
  if ((v9 + 1) > 0x249249249249249)
  {
    sub_10028C64C();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v10)
  {
    v10 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v13 = 0x249249249249249;
  }

  else
  {
    v13 = v10;
  }

  v23 = a1;
  if (v13)
  {
    sub_100242D7C(a1, v13);
  }

  v20 = 0;
  v21 = 112 * v9;
  v22 = (112 * v9);
  sub_100242F30(112 * v9, a2, a3, *a4, *a7, a8, *a9, *a5, *a6);
  *&v22 = 112 * v9 + 112;
  v14 = a1[1];
  v15 = 112 * v9 + *a1 - v14;
  sub_100242F34(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  sub_100242FA4(&v20);
  return v19;
}

void sub_100242D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100242FA4(va);
  _Unwind_Resume(a1);
}

void sub_100242D7C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_100242DD8(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5, const std::string *a6, uint64_t a7, double a8, double a9)
{
  sub_10000EC00(__p, "ff:ff:ff:ff:ff:ff");
  *a1 = sub_100196E8C(__p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 8) = vdupq_n_s64(0xC076800000000000);
  *(a1 + 24) = xmmword_101CB2040;
  *(a1 + 40) = 0xBFF0000000000000;
  *(a1 + 48) = -1;
  *(a1 + 56) = 0xBFF0000000000000;
  *(a1 + 64) = -1;
  *(a1 + 72) = 0xBFF0000000000000;
  sub_10000EC00((a1 + 80), "");
  *(a1 + 104) = 0;
  *a1 = *a2;
  *(a1 + 8) = *(a3 + 4);
  *(a1 + 24) = vextq_s8(*(a3 + 20), *(a3 + 20), 8uLL);
  *(a1 + 40) = *(a3 + 36);
  *(a1 + 48) = a4;
  *(a1 + 56) = a8;
  *(a1 + 64) = a5;
  *(a1 + 72) = a9;
  std::string::operator=((a1 + 80), a6);
  *(a1 + 104) = a7;
  return a1;
}

void sub_100242F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 103) < 0)
  {
    operator delete(*(v15 + 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_100242F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_100860E8C(a4, v7);
      v7 += 112;
      a4 = v8 + 112;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_100243224(v6);
      v6 += 112;
    }
  }
}

uint64_t sub_100242FA4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 112;
    sub_100243224(i - 112);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100242FF4(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x24924924924924ALL)
  {
    sub_100242D7C(a1, a2);
  }

  sub_10028C64C();
}

uint64_t sub_100243044(uint64_t a1, uint64_t a2)
{
  sub_10000EC00(__p, "ff:ff:ff:ff:ff:ff");
  *a1 = sub_100196E8C(__p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 8) = vdupq_n_s64(0xC076800000000000);
  *(a1 + 24) = xmmword_101CB2040;
  *(a1 + 40) = 0xBFF0000000000000;
  *(a1 + 48) = -1;
  *(a1 + 56) = 0xBFF0000000000000;
  *(a1 + 64) = -1;
  *(a1 + 72) = 0xBFF0000000000000;
  sub_10000EC00((a1 + 80), "");
  *(a1 + 104) = 0;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  std::string::operator=((a1 + 80), (a2 + 80));
  v4 = *(a1 + 104);
  if (v4)
  {

    *(a1 + 104) = 0;
  }

  if (*(a2 + 104))
  {
    v5 = [[NSData alloc] initWithData:*(a2 + 104)];
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 104) = v5;
  return a1;
}

void sub_100243170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002431A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_100237568();
      v6 += 112;
      a4 += 112;
      v7 -= 112;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_100243200(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 112;
    do
    {
      v4 = sub_100243224(v4) - 112;
      v2 += 112;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100243228(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {

    *(a1 + 104) = 0;
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  return a1;
}

void sub_100243270(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    v3 = 0.0;
    do
    {
      Current = CFAbsoluteTimeGetCurrent();
      v3 = v3 + sub_10024330C(v1, &Current);
      v1 += 112;
    }

    while (v1 != v2);
  }
}

double sub_100243328(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = -1.0;
  while (v1 != v2)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v4 = sub_10024330C(v1, &Current);
    if (v3 < v4)
    {
      v3 = v4;
    }

    v1 += 112;
  }

  return v3;
}

CLWifiAssociatedApCentroidDO *sub_10024338C(uint64_t a1)
{
  v2 = [CLWifiAssociatedApCentroidDO alloc];
  sub_10018F0D0(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v4 = [NSString stringWithUTF8String:p_p];
  v5 = (a1 + 184);
  if (*(a1 + 207) < 0)
  {
    v5 = *v5;
  }

  v6 = [(CLWifiAssociatedApCentroidDO *)v2 initWithMac:v4 latitude:*(a1 + 52) longitude:[NSString stringWithUTF8String:?]verticalAccuracy:*a1 reach:*(a1 + 8) stationaryTimeInSeconds:*(a1 + 16) loiType:*(a1 + 32) lastUpdated:*(a1 + 40), *(a1 + 160), CFAbsoluteTimeGetCurrent()];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_10024349C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002434B8(void *a1)
{
  if (sub_1001AF614())
  {
    sub_1001A7094(&__p);
    v2 = sub_1001AB6B4(__p);
    if (*(&__p + 1))
    {
      sub_100008080(*(&__p + 1));
    }

    if (v2 && ([v2 isValid] & 1) != 0)
    {
      v3 = [a1 mac];
      v4 = [v2 fetchRecord:v3];
      v5 = sub_100243A70(a1, v4);

      if (v5)
      {
        if (qword_1025D4620 != -1)
        {
          sub_101A31D8C();
        }

        v6 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [v3 UTF8String];
          LODWORD(__p) = 136380675;
          *(&__p + 4) = v7;
          _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, deleting records for associated AP %{private}s", &__p, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A321B0(v3);
        }

        [v2 deleteRecordByMacString:v3];
        if (qword_1025D4620 != -1)
        {
          sub_101A31D8C();
        }

        v8 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [objc_msgSend(a1 "description")];
          LODWORD(__p) = 136642819;
          *(&__p + 4) = v9;
          _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, adding record: %{sensitive}s", &__p, 0xCu);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A322B8(a1);
        }

        [v2 addRecord:a1];
        if (qword_1025D4620 != -1)
        {
          sub_101A31D8C();
        }

        v10 = qword_1025D4628;
        if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
        {
          objc_msgSend_getBasicInfo(v2);
          if (v15 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          *buf = 136380675;
          v17 = p_p;
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, %{private}s", buf, 0xCu);
          if (v15 < 0)
          {
            operator delete(__p);
          }
        }

        if (sub_10000A100(121, 2))
        {
          sub_101A323C4();
        }
      }
    }

    else
    {
      if (qword_1025D4620 != -1)
      {
        sub_101A31D8C();
      }

      v13 = qword_1025D4628;
      if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p) = 0;
        _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, skip updating local store as the store is invalid", &__p, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101A324C4();
      }
    }
  }

  else
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A31C74();
    }

    v12 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, skip updating local store as it is disabled by settings", &__p, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A320D4();
    }
  }
}

void sub_100243834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

id sub_10024385C(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  sub_10018F0D0(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  [v2 setObject:+[NSString stringWithUTF8String:](NSString forKey:{"stringWithUTF8String:", p_p), @"mac"}];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  [v2 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", *(a1 + 8)), @"latitude"}];
  [v2 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", *(a1 + 16)), @"longitude"}];
  [v2 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", *(a1 + 24)), @"altitude"}];
  [v2 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", *(a1 + 32)), @"horizontalAccuracy"}];
  [v2 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", *(a1 + 40)), @"verticalAccuracy"}];
  [v2 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", *(a1 + 48)), @"reach"}];
  [v2 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", *(a1 + 56)), @"stationaryTimeInSeconds"}];
  sub_10023788C(*(a1 + 64), &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &__p;
  }

  else
  {
    v4 = __p.__r_.__value_.__r.__words[0];
  }

  v5 = [NSString stringWithUTF8String:v4];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  [v2 setObject:v5 forKey:@"loiType"];
  [v2 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", *(a1 + 72)), @"lastUpdated"}];
  return v2;
}

void sub_100243A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100243A70(void *a1, void *a2)
{
  v4 = [a1 mac];
  if (!a2)
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A31C74();
    }

    v17 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136380675;
      v39 = [v4 UTF8String];
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, updating local store as there is no existing record for associated AP %{private}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A31FD4(v4);
    }

    return 1;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101A31C74();
  }

  v5 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136642819;
    v39 = [objc_msgSend(a2 "description")];
    _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, existing local store record: %{sensitive}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101A31C88(a2);
  }

  [a1 latitude];
  v7 = v6;
  [a1 longitude];
  v9 = v8;
  [a2 latitude];
  v11 = v10;
  [a2 longitude];
  sub_100109D18(v31, v7, v9, v11, v12, 0.0);
  v14 = v13;
  if (v13 > *(sub_1001CBE20() + 10))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A31D8C();
    }

    v15 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v4 UTF8String];
      *buf = 136380931;
      v39 = v16;
      v40 = 2048;
      v41 = v14;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, updating local store as associated AP %{private}s has moved more than %.1fm", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A31EC4(v4);
    }

    return 1;
  }

  [a1 lastUpdated];
  v19 = v18;
  [a2 lastUpdated];
  v21 = vabdd_f64(v19, v20);
  if (v21 > *(sub_100100690() + 16))
  {
    if (qword_1025D4620 != -1)
    {
      sub_101A31D8C();
    }

    v22 = qword_1025D4628;
    if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v4 UTF8String];
      *buf = 136380931;
      v39 = v23;
      v40 = 2048;
      v41 = v21;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "WifiAssociatedApCentroidStore, updating local store as associated AP %{private}s has not been updated more than %.1fs", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A31DB4(v4);
    }

    return 1;
  }

  if (qword_1025D4620 != -1)
  {
    sub_101A31D8C();
  }

  v25 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v26 = [v4 UTF8String];
    *buf = 136381187;
    v39 = v26;
    v40 = 2048;
    v41 = v14;
    v42 = 2048;
    v43 = v21;
    _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "WifiAssociatedApCentroidStore, skip updating local store for associated AP %{private}s, distance %.1fm, last updated %.1fs ago", buf, 0x20u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4620 != -1)
    {
      sub_101A31D8C();
    }

    v27 = qword_1025D4628;
    v28 = [v4 UTF8String];
    v32 = 136381187;
    v33 = v28;
    v34 = 2048;
    v35 = v14;
    v36 = 2048;
    v37 = v21;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v27, 2, "WifiAssociatedApCentroidStore, skip updating local store for associated AP %{private}s, distance %.1fm, last updated %.1fs ago", &v32, 32);
    v30 = v29;
    sub_100152C7C("Generic", 1, 0, 2, "static BOOL CLWifiAssociatedApCentroidStoreUpdateManager::shouldUpdateSyncedDataStore(CLWifiAssociatedApCentroidDO *, CLWifiAssociatedApCentroidDO *)", "%s\n", v29);
    if (v30 != buf)
    {
      free(v30);
    }

    return 0;
  }

  return result;
}

double sub_100244008@<D0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0;
  v3 = sub_1000850D0(a2, &v5);
  result = *a1;
  *(v3 + 4) = *a1;
  *(v3 + 16) = -1;
  return result;
}

uint64_t sub_100244050(uint64_t **a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = *sub_1000897E8(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_100244138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 24);
    do
    {
      v7 = *(v6 - 24);
      *(v4 + 16) = *(v6 - 1);
      *v4 = v7;
      if (*(v6 + 23) < 0)
      {
        sub_100007244((v4 + 24), *v6, *(v6 + 1));
        v4 = v14;
      }

      else
      {
        v8 = *v6;
        *(v4 + 40) = *(v6 + 2);
        *(v4 + 24) = v8;
      }

      v9 = v6 - 24;
      v4 += 48;
      v14 = v4;
      v6 += 3;
    }

    while (v9 + 48 != a3);
  }

  v12 = 1;
  sub_1002368C4(v11);
  return v4;
}

void *sub_100244238(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    sub_100008080(v5);
  }

  return a1;
}

void *sub_100244294(unint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 26 * ((v9 - v8) >> 3) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    sub_100D73398(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 / 0x1A));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = (*v13 + 152 * (v11 % 0x1A));
    v15 = v14;
  }

  v30 = v13;
  v31 = v15;
  result = sub_1000B9760(&v30, a4);
  v17 = v31;
  if (v14 != v31)
  {
    v18 = v30;
    do
    {
      if (v13 == v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = (*v13 + 3952);
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = v14 + 2;
        result = v14;
        do
        {
          v21 = *(a3 + 8);
          *result = *a3;
          result[1] = v21;
          if (v21)
          {
            atomic_fetch_add_explicit((v21 + 16), 1uLL, memory_order_relaxed);
          }

          result[2] = off_1024DE5F8;
          v22 = *(a3 + 24);
          v23 = *(a3 + 40);
          v24 = *(a3 + 56);
          *(result + 9) = *(a3 + 72);
          *(result + 7) = v24;
          *(result + 5) = v23;
          *(result + 3) = v22;
          v25 = *(a3 + 88);
          v26 = *(a3 + 104);
          v27 = *(a3 + 120);
          result[17] = *(a3 + 136);
          *(result + 15) = v27;
          *(result + 13) = v26;
          *(result + 11) = v25;
          *(result + 36) = 4;
          *(result + 36) = *(a3 + 144);
          *(result + 74) = *(a3 + 148);
          a3 += 152;
          if (a3 - *a2 == 3952)
          {
            v28 = a2[1];
            ++a2;
            a3 = v28;
          }

          v20 += 19;
          result += 19;
        }

        while (result != v19);
      }

      a1[5] -= 0x79435E50D79435E5 * (v19 - v14);
      if (v13 == v18)
      {
        break;
      }

      v29 = v13[1];
      ++v13;
      v14 = v29;
    }

    while (v29 != v17);
  }

  return result;
}

void sub_1002444A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(**(a1 + 56) + 64))(*(a1 + 56), a2, a3) - *(a4 + 76) <= *(a1 + 464))
  {
    v6 = *(a4 + 20);
    if (v6 >= 0.0)
    {
      if (v6 <= 1000.0)
      {
        v9 = [CLPLocation alloc];
        v10 = *(a4 + 112);
        v45 = *(a4 + 96);
        v46 = v10;
        v47[0] = *(a4 + 128);
        *(v47 + 12) = *(a4 + 140);
        v11 = *(a4 + 48);
        *&v41[32] = *(a4 + 32);
        v42 = v11;
        v12 = *(a4 + 80);
        v43 = *(a4 + 64);
        v44 = v12;
        v13 = *(a4 + 16);
        *v41 = *a4;
        *&v41[16] = v13;
        v14 = [v9 initWithDaemonLocation:v41];
        v15 = [CLPMotionActivity alloc];
        v16 = (*(**(a1 + 56) + 80))(*(a1 + 56));
        *v41 = *v16;
        v17 = *(v16 + 64);
        v19 = *(v16 + 16);
        v18 = *(v16 + 32);
        v42 = *(v16 + 48);
        v43 = v17;
        *&v41[16] = v19;
        *&v41[32] = v18;
        v21 = *(v16 + 96);
        v20 = *(v16 + 112);
        v22 = *(v16 + 80);
        *&v47[0] = *(v16 + 128);
        v45 = v21;
        v46 = v20;
        v44 = v22;
        [v14 setRawMotionActivity:{objc_msgSend(v15, "initWithCLMotionActivity:", v41)}];
        v23 = [CLPMotionActivity alloc];
        v24 = (*(**(a1 + 56) + 88))(*(a1 + 56));
        *v41 = *v24;
        v25 = *(v24 + 64);
        v27 = *(v24 + 16);
        v26 = *(v24 + 32);
        v42 = *(v24 + 48);
        v43 = v25;
        *&v41[16] = v27;
        *&v41[32] = v26;
        v29 = *(v24 + 96);
        v28 = *(v24 + 112);
        v30 = *(v24 + 80);
        *&v47[0] = *(v24 + 128);
        v45 = v29;
        v46 = v28;
        v44 = v30;
        [v14 setMotionActivity:{objc_msgSend(v23, "initWithCLMotionActivity:", v41)}];
        v31 = [CLPMotionActivity alloc];
        v32 = (*(**(a1 + 56) + 96))(*(a1 + 56));
        *v41 = *v32;
        v33 = *(v32 + 64);
        v35 = *(v32 + 16);
        v34 = *(v32 + 32);
        v42 = *(v32 + 48);
        v43 = v33;
        *&v41[16] = v35;
        *&v41[32] = v34;
        v37 = *(v32 + 96);
        v36 = *(v32 + 112);
        v38 = *(v32 + 80);
        *&v47[0] = *(v32 + 128);
        v45 = v37;
        v46 = v36;
        v44 = v38;
        [v14 setDominantMotionActivity:{objc_msgSend(v31, "initWithCLMotionActivity:", v41)}];
        [*(a1 + 416) addObject:v14];
        if (qword_1025D47D0 != -1)
        {
          sub_1002E8D80();
        }

        v39 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
        {
          v40 = [*(a1 + 416) count];
          *v41 = 68289539;
          *&v41[8] = 2082;
          *&v41[10] = "";
          *&v41[18] = 2050;
          *&v41[20] = 9;
          *&v41[28] = 2049;
          *&v41[30] = v40;
          _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:adding location to buffer, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, bufferedLocationCount:%{private}lu}", v41, 0x26u);
        }

        sub_1002448F8(a1);
      }

      else
      {
        if (qword_1025D47D0 != -1)
        {
          sub_101881678();
        }

        v7 = qword_1025D47D8;
        if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
        {
          *v41 = 68289282;
          *&v41[8] = 2082;
          *&v41[10] = "";
          *&v41[18] = 2050;
          *&v41[20] = 9;
          v8 = "{msg%{public}.0s:ignoring inaccurate location, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
          goto LABEL_12;
        }
      }
    }

    else
    {
      if (qword_1025D47D0 != -1)
      {
        sub_101881678();
      }

      v7 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
      {
        *v41 = 68289282;
        *&v41[8] = 2082;
        *&v41[10] = "";
        *&v41[18] = 2050;
        *&v41[20] = 9;
        v8 = "{msg%{public}.0s:ignoring invalid location, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
LABEL_12:
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, v8, v41, 0x1Cu);
      }
    }
  }
}

void sub_1002448F8(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = (*(**(a1 + 56) + 64))(*(a1 + 56));
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = *(a1 + 456);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4);
  if (v5)
  {
    v7 = v5;
    v8 = *v25;
    *&v6 = 68289282;
    v22 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        v23 = [v10 triggerType];
        *buf = &v23;
        v11 = *(sub_100403DD0(a1 + 432, &v23, &unk_101C66300, buf) + 6);
        [v10 triggerTimestamp];
        if (v11 + v12 <= v3)
        {
          [v2 addObject:v10];
          if (qword_1025D47D0 != -1)
          {
            sub_1002E8D80();
          }

          v16 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
          {
            *buf = v22;
            *&buf[4] = 0;
            v29 = 2082;
            v30 = "";
            v31 = 2050;
            v32 = 9;
            v14 = v16;
            v15 = "{msg%{public}.0s:found ready transaction, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
            goto LABEL_15;
          }
        }

        else
        {
          if (qword_1025D47D0 != -1)
          {
            sub_1002E8D80();
          }

          v13 = qword_1025D47D8;
          if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
          {
            *buf = v22;
            *&buf[4] = 0;
            v29 = 2082;
            v30 = "";
            v31 = 2050;
            v32 = 9;
            v14 = v13;
            v15 = "{msg%{public}.0s:found non-ready transaction, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
LABEL_15:
            _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, v15, buf, 0x1Cu);
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4);
    }

    while (v7);
  }

  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2);
  if (v17)
  {
    v18 = v17;
    v19 = MEMORY[0];
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (MEMORY[0] != v19)
        {
          objc_enumerationMutation(v2);
        }

        v21 = *(8 * i);
        sub_100402BAC(a1, v21);
        [*(a1 + 456) removeObject:v21];
        sub_1002CEC90(a1);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2);
    }

    while (v18);
  }

  sub_100244C54(a1);
  sub_100244FA8(a1);
  sub_1004029D8(a1);
}

void sub_100244C54(uint64_t a1)
{
  v2 = sub_100244E28(a1);
  v3 = objc_alloc_init(NSMutableArray);
  v4 = *(a1 + 416);
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, 0);
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0];
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(8 * i);
        [v9 timestamp];
        if (v10 < v2)
        {
          [v3 addObject:v9];
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4);
    }

    while (v6);
  }

  if (qword_1025D47D0 != -1)
  {
    sub_1002E8D80();
  }

  v11 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    v12 = [v3 count];
    *buf = 68289539;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2050;
    v18 = 9;
    v19 = 2049;
    v20 = v12;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Pruning locations, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, prunedLocationCount:%{private}lu}", buf, 0x26u);
  }

  [*(a1 + 416) removeObjectsInArray:v3];
}

double sub_100244E28(uint64_t a1)
{
  v2 = (*(**(a1 + 56) + 64))(*(a1 + 56)) - *(a1 + 464);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 456);
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3);
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        [v8 triggerTimestamp];
        v10 = v9;
        v13 = [v8 triggerType];
        v18 = &v13;
        v11 = sub_100403DD0(a1 + 432, &v13, &unk_101C66300, &v18);
        if (v2 >= v10 - *(v11 + 5))
        {
          v2 = v10 - *(v11 + 5);
        }
      }

      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3);
    }

    while (v5);
  }

  return v2;
}

void sub_100244FA8(uint64_t a1)
{
  v2 = sub_100244E28(a1);
  v3 = objc_opt_new();
  v4 = *(a1 + 408);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100248618;
  v5[3] = &unk_102450EF8;
  *&v5[5] = v2;
  v5[4] = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
  [*(a1 + 408) removeObjectsForKeys:v3];
}

void sub_100245058(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  ++*(a1 + 204);
  if (a3 && a3 != 5)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_1018E0DE4();
    }

    v13 = qword_1025D47D8;
    if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    v37 = 8;
    v14 = "{msg%{public}.0s:Received non-location locationProvider notification, not harvesting, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
LABEL_30:
    v23 = v13;
    v24 = 28;
LABEL_31:
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, v14, buf, v24);
    return;
  }

  v35 = *(a4 + 4);
  v5 = *(a4 + 20);
  v33 = *(a4 + 28);
  v34 = *a4;
  v6 = *(a4 + 44);
  v31 = *(a4 + 52);
  *v32 = *(a4 + 68);
  *&v32[12] = a4[5];
  v7 = *(a4 + 24);
  v30 = *(a4 + 148);
  v28 = *(a4 + 116);
  v29 = *(a4 + 132);
  v27 = *(a4 + 100);
  v8 = *(a4 + 57);
  v9 = *(a4 + 58);
  v10 = (*(**(a1 + 56) + 64))(*(a1 + 56), a2);
  v11 = 0;
  v12 = v6 < 19.4444 && v6 >= 0.0;
  if (v7 == 1 && v8 != 0.0 && v5 >= 0.0 && v10 - *(a1 + 376) > 60.0)
  {
    if (*(a1 + 372) & v12)
    {
      v11 = 1;
    }

    else
    {
      v11 = *(a1 + 373);
    }
  }

  if (qword_1025D47D0 != -1)
  {
    sub_1018E0DE4();
  }

  v15 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 373);
    v17 = v10 - *(a1 + 376);
    v18 = *(a1 + 372);
    *buf = 68291587;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    v37 = 8;
    LOWORD(v38) = 2049;
    *(&v38 + 2) = v7;
    WORD5(v38) = 1025;
    HIDWORD(v38) = v16;
    *v39 = 2049;
    *&v39[2] = v8;
    *&v39[10] = 2049;
    *&v39[12] = v9;
    *&v39[20] = 2049;
    *&v39[22] = v17;
    *&v39[30] = 2049;
    *&v39[32] = 0x404E000000000000;
    *&v39[40] = 1025;
    *&v39[42] = v18;
    *&v39[46] = 1025;
    *&v39[48] = v12;
    LOWORD(v40[0]) = 1025;
    *(v40 + 2) = v11 & 1;
    _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:onLocation, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, locationType:%{private, location:CLLocationType}lld, allowingStationaryHarvest:%{private}hhd, pressureValue:%{private}f, pressureStd:%{private}f, timeSinceLastSample_s:%{private}.09f, minGapTime_s:%{private}.09f, isDriving:%{private}hhd, isValidSpeed:%{private}hhd, willHarvest:%{private}hhd}", buf, 0x66u);
  }

  if ((v11 & 1) == 0)
  {
    return;
  }

  *(a1 + 376) = v10;
  if (((*(**(a1 + 56) + 160))(*(a1 + 56)) & 1) == 0)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_1018E0DBC();
    }

    v13 = qword_1025D47D8;
    if (!os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      return;
    }

    *buf = 68289282;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    v37 = 8;
    v14 = "{msg%{public}.0s:harvesting is not allowed, not harvesting, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}";
    goto LABEL_30;
  }

  if ((*(a1 + 368) & 0x80000000) != 0 || (*(*a1 + 168))(a1) < *(a1 + 368))
  {
    v19 = objc_alloc_init(CLPPressureCollectionRequest);
    [v19 setMeta:{+[CLPMeta meta](CLPMeta, "meta")}];
    v20 = [CLPLocation alloc];
    *buf = v34;
    *&buf[16] = v35;
    v37 = *&v5;
    v38 = v33;
    *v39 = v6;
    *&v39[8] = v31;
    *&v39[24] = *v32;
    *&v39[36] = *&v32[12];
    v40[0] = v7;
    v43 = v30;
    v42 = v29;
    v41 = v28;
    *&v40[1] = v27;
    v21 = [v20 initWithDaemonLocation:buf];
    [v19 setPressureLocation:v21];

    v22 = [[CLPPressure alloc] initWithPressure:v8 stdDeviation:v9 timestamp:v10];
    [v19 setPressure:v22];

    [objc_msgSend(*(a1 + 72) archiveForHarvester:{8), "overwritePrimaryObject:", v19}];
    ++*(a1 + 208);
    sub_1002CEC90(a1);
    return;
  }

  if (qword_1025D47D0 != -1)
  {
    sub_1018E0DBC();
  }

  v25 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    v26 = *(a1 + 368);
    *buf = 68289539;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    v37 = 8;
    LOWORD(v38) = 1025;
    *(&v38 + 2) = v26;
    v14 = "{msg%{public}.0s:max scans exceeded, not submitting, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, maxHarvestPointCount:%{private}d}";
    v23 = v25;
    v24 = 34;
    goto LABEL_31;
  }
}

void sub_1002455CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v10 = a3;
  ++*(result + 204);
  if (*(result + 88) != 1 || a3 != 5 && a3)
  {
    return;
  }

  v6 = *(a4 + 96);
  if (v6 == 10 && !sub_100245A20(result) && (*(result + 776) == 1.79769313e308 || (*(**(result + 56) + 64))(*(result + 56)) >= *(result + 776)))
  {
    sub_100C1960C(result);
    v8 = 1;
    goto LABEL_11;
  }

  v7 = sub_100245A20(result);
  v8 = 0;
  v9 = 0;
  if (v7)
  {
LABEL_11:
    sub_10023F124(result + 464, &v10, a4, 0);
    v9 = v8;
  }

  if (v6 == 10 && (v9 & 1) == 0)
  {
    sub_100C19874(result);
  }
}

void sub_1002456D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v10 = a3;
  ++*(result + 204);
  if (*(result + 88) == 1 && (a3 == 5 || !a3))
  {
    sub_100062F64(result);
    v6 = *(a4 + 20);
    v7 = v6 > 0.0 && v6 < 200.0;
    if (v7 && !sub_100062E38(result))
    {
      if (*(result + 440) == 1)
      {
        sub_100245B44(result, result + 1360);
      }

      else
      {
        if (sub_100245B44(result, result + 944))
        {
          v8 = result;
          v9 = 0;
        }

        else
        {
          v8 = result;
          v9 = 1;
        }

        sub_100246344(v8, v9);
      }
    }

    if (sub_100062E38(result))
    {
      sub_10023F124(result + 608, &v10, a4, 0);
    }

    sub_1002457C4(result);
  }
}

void sub_1002457C4(uint64_t a1)
{
  if (sub_100245B3C(a1 + 608))
  {
    if ((*(**(a1 + 56) + 160))(*(a1 + 56)))
    {
      v2 = *(a1 + 1400);
      if (v2)
      {
        v3 = (*(*v2 + 40))(v2);
        v5[0] = _NSConcreteStackBlock;
        v5[1] = 3221225472;
        v5[2] = sub_10023EAA4;
        v5[3] = &unk_1024A0AE8;
        v5[4] = v3;
        v5[5] = a1;
        sub_10023F53C(a1 + 608, v5);
      }
    }

    else
    {
      if (qword_1025D47D0 != -1)
      {
        sub_100260340();
      }

      v4 = qword_1025D47D8;
      if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
      {
        sub_1000183C0(a1);
        *buf = 68289282;
        v7 = 0;
        v8 = 2082;
        v9 = "";
        v10 = 2050;
        v11 = sub_1000183C0(a1);
        _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Harvesting is not allowed, not harvesting, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", buf, 0x1Cu);
      }
    }
  }
}

double *sub_10024596C(double *result, uint64_t a2, uint64_t a3, double a4)
{
  if ((*(a2 + 96) & 0xFFFFFFF7) == 1)
  {
    v4 = *(a2 + 20);
    v5 = v4 < 0 || ((v4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
    if (!v5 || (v4 - 1) <= 0xFFFFFFFFFFFFELL)
    {
      v7 = *(a2 + 76);
      if (v7 >= 0 && ((v7 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v7 - 1) <= 0xFFFFFFFFFFFFELL)
      {
        v12 = result;
        result = sub_10023F4FC(result, a2);
        v13 = *(a3 + 24);
        if (result[3] != v13)
        {
          v12[31] = v13;
          v12[32] = a4;
        }
      }
    }
  }

  return result;
}

BOOL sub_100245A20(uint64_t a1)
{
  if (*(a1 + 768) != 1 || sub_100062D7C(a1 + 464))
  {
    return 0;
  }

  if (*(a1 + 88))
  {
    return 1;
  }

  if (qword_1025D47D0 != -1)
  {
    sub_101A29F2C();
  }

  v3 = qword_1025D47D8;
  result = os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    sub_1000183C0(a1);
    v4[0] = 68289282;
    v4[1] = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2050;
    v8 = sub_1000183C0(a1);
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#warning: Harvesting was turned off but we're still checking for active traces, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", v4, 0x1Cu);
    return 0;
  }

  return result;
}

uint64_t sub_100245B44(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 56) + 64))(*(a1 + 56));
  sub_100246B2C(v10, a1 + 1408);
  v5 = (*(*a2 + 16))(a2, v10, v4);
  if (v10[32] == 1)
  {
    sub_100246AA8(v10);
  }

  if (v5)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101A36FF0();
    }

    v6 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      v7 = (*(*a2 + 112))(a2);
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "@TraceHarvest, %@ starting trace", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A37124(a2);
    }

    *(a1 + 912) = 1;
    *(a1 + 1400) = a2;
    sub_100F26520(a1 + 608);
    sub_100F26828((a1 + 608));
    if (qword_1025D47D0 != -1)
    {
      sub_101A36FF0();
    }

    v8 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "@TraceHarvest, harvesting cached serving cells at trace start", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A37258();
    }

    sub_100C53498(a1);
  }

  return v5;
}

void sub_100245D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    sub_100246AA8(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100245DA0(uint64_t a1, uint64_t a2, double a3)
{
  sub_100246B2C(v17, a2);
  v6 = (*(*a1 + 128))(a1, v17, a3);
  if (v17[32] == 1)
  {
    sub_100246AA8(v17);
  }

  if (v6 & 1) == 0 || ((*(**(a1 + 48) + 80))(*(a1 + 48)))
  {
    return 0;
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    [*(a1 + 32) setArchive:{objc_msgSend(*(a1 + 40), "archiveForHarvester:withSuffix:", 10, (*(*a1 + 136))(a1, objc_msgSend(v8, "index")))}];
    if (qword_1025D47D0 != -1)
    {
      sub_101A601EC();
    }

    v9 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      v10 = [*(a1 + 32) index];
      *buf = 67240192;
      v19 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "startTraceIfEligible, overwriting-index, %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A60214((a1 + 32));
    }
  }

  else
  {
    v11 = [*(a1 + 8) count];
    v12 = -[CLHarvestScoredRequestArchive initWithArchive:index:]([CLHarvestScoredRequestArchive alloc], "initWithArchive:index:", [*(a1 + 40) archiveForHarvester:10 withSuffix:{(*(*a1 + 136))(a1, v11)}], v11);
    *(a1 + 32) = v12;
    [*(a1 + 8) addObject:v12];
    if (qword_1025D47D0 != -1)
    {
      sub_101A601EC();
    }

    v13 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240192;
      v19 = v11;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "startTraceIfEligible, generate-archive-with-index, %{public}d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101A60338(v11);
    }
  }

  [objc_msgSend(*(a1 + 32) "archive")];
  v14 = (*(*a1 + 168))(a1);
  v15 = *(a1 + 48);
  sub_100246B2C(v16, a2);
  (*(*v14 + 16))(v14, v15, v16);
  if (v16[32] == 1)
  {
    sub_100246AA8(v16);
  }

  *(a1 + 24) = a3;
  (*(*a1 + 144))(a1);
  return 1;
}

void sub_100246140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a13)
  {
    sub_100246AA8(&a9);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100246178(uint64_t a1, uint64_t a2, double a3)
{
  sub_100246B2C(v8, a2);
  v5 = (*(*a1 + 104))(a1, v8);
  if (v8[32] == 1)
  {
    sub_100246AA8(v8);
  }

  if (v5)
  {
    sub_10103005C(*(a1 + 72), 1, 1, a3);
    return 0;
  }

  else
  {
    v7 = *(a1 + 96);
    return v7 <= a3 || v7 == 1.79769313e308;
  }
}

void sub_100246234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    sub_100246AA8(&a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100246254(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 32) != 1)
  {
    return 0;
  }

  (*(*a1 + 176))(v6);
  if ((*(a2 + 32) & 1) == 0)
  {
    sub_100173BA0();
  }

  if (*(a2 + 24) == 1)
  {
    v3 = sub_1002D3834(v6, a2);
  }

  else
  {
    v3 = v6[3];
  }

  v4 = v3 != 0;
  sub_1004906DC(v6);
  return v4;
}

void sub_1002462FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1004906DC(va);
  _Unwind_Resume(a1);
}

void sub_100246344(uint64_t a1, int a2)
{
  if (a2 <= 5)
  {
    sub_1002463C8(__p, 6uLL);
    *(__p[0] + a2) = 1;
    sub_100246440(*(a1 + 928), __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_1002463AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1002463C8(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_10038EBB4(a1, a2);
  }

  return a1;
}

void sub_100246424(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100246440(uint64_t a1, void *a2)
{
  if (a2[1] - *a2 >= 0x18uLL)
  {
    return AnalyticsSendEventLazy();
  }

  return result;
}

NSDictionary *sub_1002464C8(uint64_t a1)
{
  v3[0] = @"triggeredByLocation";
  v4[0] = [NSNumber numberWithInt:***(a1 + 32)];
  v3[1] = @"triggeredByLocationOfInterest";
  v4[1] = [NSNumber numberWithInt:*(**(a1 + 32) + 8)];
  v3[2] = @"triggeredByWalking";
  v4[2] = [NSNumber numberWithInt:*(**(a1 + 32) + 16)];
  v3[3] = @"triggeredByLocationFailed";
  v4[3] = [NSNumber numberWithInt:*(**(a1 + 32) + 4)];
  v3[4] = @"triggeredByLocationOfInterestFailed";
  v4[4] = [NSNumber numberWithInt:*(**(a1 + 32) + 12)];
  v3[5] = @"triggeredByWalkingFailed";
  v4[5] = [NSNumber numberWithInt:*(**(a1 + 32) + 20)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:6];
}

id sub_100246610(uint64_t a1, double *a2)
{
  if (*a2 == 1.79769313e308)
  {
    v3 = *(a1 + 1704);

    return sub_10021D3CC(v3);
  }

  else
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *a2;
    if (qword_1025D4800 != -1)
    {
      sub_101960B84();
    }

    v8 = Current + v7;
    v9 = qword_1025D4808;
    if (os_log_type_enabled(qword_1025D4808, OS_LOG_TYPE_DEBUG))
    {
      v10 = *a2;
      v11[0] = 68289538;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      v14 = 2050;
      v15 = v8;
      v16 = 2050;
      v17 = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Setting active mode timer to fire, fireTime:%{public}0.2f, delay:%{public}0.2f}", v11, 0x26u);
    }

    return sub_100073BF8(*(a1 + 1704), v8);
  }
}

id sub_10024677C(void *a1)
{
  if (*(a1 + 44) == 1)
  {
    if (qword_1025D47D0 != -1)
    {
      sub_101ACB5AC();
    }

    v2 = qword_1025D47D8;
    if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 10);
      v6 = 68289282;
      v7 = 2082;
      v8 = "";
      v9 = 2050;
      v10 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:trace ending, unsubscribing from trace notifications, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld}", &v6, 0x1Cu);
    }

    (*(**a1 + 32))(*a1, *(a1 + 10), 2);
    (*(**a1 + 32))(*a1, *(a1 + 10), 8);
    v4 = a1[2];
    LODWORD(v6) = 0;
    (*(*v4 + 56))(v4, &v6);
    (*(*a1[2] + 72))(a1[2], 30);
    (*(*a1[2] + 88))(a1[2], 0);
    if ((*(*a1[4] + 152))(a1[4]))
    {
      (*(*a1[2] + 104))(a1[2]);
    }

    if ((*(*a1[4] + 160))(a1[4]))
    {
      (*(*a1[2] + 120))(a1[2]);
    }

    *(a1 + 44) = 0;
  }

  return [a1[6] removeAllObjects];
}

uint64_t sub_1002469FC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = -1;
  sub_100246A44(a1, a2);
  return a1;
}

uint64_t sub_100246A44(uint64_t a1, uint64_t a2)
{
  result = sub_100246AA8(a1);
  v5 = *(a2 + 24);
  if (v5 != -1)
  {
    v6 = a1;
    result = (*(&off_10246A9C0 + v5))(&v6, a2);
    *(a1 + 24) = v5;
  }

  return result;
}

uint64_t sub_100246AA8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 24);
  if (v2 != -1)
  {
    result = (*(&off_10246A9A0 + v2))(&v3, result);
  }

  *(v1 + 24) = -1;
  return result;
}

void *sub_100246B00(void **a1, __int128 *a2)
{
  result = *a1;
  if (*(a2 + 23) < 0)
  {
    return sub_100007244(result, *a2, *(a2 + 1));
  }

  v3 = *a2;
  result[2] = *(a2 + 2);
  *result = v3;
  return result;
}

_BYTE *sub_100246B2C(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[32] = 0;
  if (*(a2 + 32) == 1)
  {
    sub_1002469FC(a1, a2);
    a1[32] = 1;
  }

  return a1;
}

void sub_100246B74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    sub_100246AA8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100246B94(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t sub_100246BA8(uint64_t a1, unsigned int *a2)
{
  sub_1001ECC7C(a1);
  v54[0] = 0;
  if (*a2 > 0x16 || ((1 << *a2) & 0x400019) == 0)
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018FC884();
    }

    v19 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEBUG))
    {
      v20 = sub_100048D98(*a2);
      *buf = 136446210;
      v45 = v20;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "@WifiLoc, miscunregister, %{public}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FCB90(buf);
      v25 = qword_1025D4638;
      v26 = sub_100048D98(*a2);
      v34 = 136446210;
      v35 = v26;
      LODWORD(v32) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v25, 2, "@WifiLoc, miscunregister, %{public}s", &v34, v32);
      v18 = v27;
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiLocationProvider::unregisterForNotificationInternal(const CLLocationProvider_Type::Notification &)", "%s\n", v27);
LABEL_40:
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  else
  {
    if (qword_1025D4630 != -1)
    {
      sub_1018FC884();
    }

    v5 = qword_1025D4638;
    if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_100048D98(*a2);
      v34 = 0;
      v7 = sub_10000608C(a1, &v34, 1);
      v34 = 3;
      v8 = sub_10000608C(a1, &v34, 1);
      v34 = 4;
      v9 = sub_10000608C(a1, &v34, 1);
      v34 = 22;
      v10 = sub_10000608C(a1, &v34, 1);
      *buf = 136447234;
      v45 = v6;
      v46 = 1026;
      v47 = v7;
      v48 = 1026;
      v49 = v8;
      v50 = 1026;
      v51 = v9;
      v52 = 1026;
      v53 = v10;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "@WifiLogic, entry, unregister, notification, %{public}s, lsb, %{public}d, %{public}d, %{public}d, %{public}d", buf, 0x24u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018FCB90(buf);
      v11 = qword_1025D4638;
      v12 = sub_100048D98(*a2);
      HIDWORD(v32) = 0;
      v13 = sub_10000608C(a1, &v32 + 1, 1);
      HIDWORD(v32) = 3;
      v14 = sub_10000608C(a1, &v32 + 1, 1);
      HIDWORD(v32) = 4;
      v15 = sub_10000608C(a1, &v32 + 1, 1);
      HIDWORD(v32) = 22;
      v16 = sub_10000608C(a1, &v32 + 1, 1);
      v34 = 136447234;
      v35 = v12;
      v36 = 1026;
      v37 = v13;
      v38 = 1026;
      v39 = v14;
      v40 = 1026;
      v41 = v15;
      v42 = 1026;
      v43 = v16;
      LODWORD(v32) = 36;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v11, 0, "@WifiLogic, entry, unregister, notification, %{public}s, lsb, %{public}d, %{public}d, %{public}d, %{public}d", &v34, v32);
      v18 = v17;
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiLocationProvider::unregisterForNotificationInternal(const CLLocationProvider_Type::Notification &)", "%s\n", v17);
      goto LABEL_40;
    }
  }

  v21 = *a2;
  if (!*a2)
  {
    goto LABEL_19;
  }

  if (v21 == 22)
  {
    (*(**(a1 + 120) + 64))(*(a1 + 120), 12);
    *buf = 0;
    if (!sub_10000608C(a1, buf, 1))
    {
      *buf = 3;
      if (!sub_10000608C(a1, buf, 1))
      {
        (*(**(a1 + 120) + 80))(*(a1 + 120), 3);
        (*(**(a1 + 120) + 80))(*(a1 + 120), 2);
        (*(**(a1 + 120) + 80))(*(a1 + 120), 1);
        (*(**(a1 + 120) + 88))(*(a1 + 120), 6);
      }
    }
  }

  else if (v21 == 3)
  {
LABEL_19:
    *buf = 0;
    if (!sub_10000608C(a1, buf, 1))
    {
      (*(**(a1 + 120) + 96))(*(a1 + 120), 7);
      if (qword_1025D4630 != -1)
      {
        sub_1018FC728();
      }

      v22 = qword_1025D4638;
      if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEFAULT, "@WifiEntry, unregister for odometer notification", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018FCB90(buf);
        LOWORD(v34) = 0;
        LODWORD(v32) = 2;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@WifiEntry, unregister for odometer notification", &v34, v32);
        v29 = v28;
        sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiLocationProvider::unregisterForNotificationInternal(const CLLocationProvider_Type::Notification &)", "%s\n", v28);
        if (v29 != buf)
        {
          free(v29);
        }
      }
    }

    *buf = 0;
    if (!sub_10000608C(a1, buf, 1))
    {
      *buf = 3;
      if (!sub_10000608C(a1, buf, 1))
      {
        (*(**(a1 + 120) + 72))(*(a1 + 120), 0);
        *buf = 22;
        if (!sub_10000608C(a1, buf, 1))
        {
          (*(**(a1 + 120) + 80))(*(a1 + 120), 3);
          (*(**(a1 + 120) + 80))(*(a1 + 120), 1);
          (*(**(a1 + 120) + 88))(*(a1 + 120), 6);
        }

        if (qword_1025D4630 != -1)
        {
          sub_1018FC728();
        }

        v23 = qword_1025D4638;
        if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "@WifiEntry, noregistrants", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018FCB90(buf);
          LOWORD(v34) = 0;
          LODWORD(v32) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4638, 0, "@WifiEntry, noregistrants", &v34, v32);
          v31 = v30;
          sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLWifiLocationProvider::unregisterForNotificationInternal(const CLLocationProvider_Type::Notification &)", "%s\n", v30);
          if (v31 != buf)
          {
            free(v31);
          }
        }
      }
    }

    *buf = *a2;
    sub_1002476A0(v54, buf);
    sub_100105B70(v33, v54);
    sub_1000FFE90(a1);
  }

  sub_1001039FC(v54);
  return 1;
}

BOOL sub_1002474C4(uint64_t a1, const char *a2, const __CFString *a3)
{
  v4 = a2;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v6 = CFStringCreateWithCString(kCFAllocatorDefault, a2, 0x8000100u);
  if (v6)
  {
    if (qword_1025D4800 != -1)
    {
      sub_101960B84();
    }

    v7 = qword_1025D4808;
    if (os_log_type_enabled(qword_1025D4808, OS_LOG_TYPE_DEBUG))
    {
      if (v4[23] >= 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = *v4;
      }

      v13[0] = 68289538;
      v13[1] = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = v8;
      v18 = 2114;
      v19 = a3;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Telling timed the time zone, timezone:%{public, location:escape_only}s, source:%{public, location:escape_only}@}", v13, 0x26u);
    }

    off_1025D9768(a3, v6);
    v9 = CFStringCompare(a3, @"LocationBorder", 0);
    v10 = 96;
    if (v9)
    {
      v11 = 120;
    }

    else
    {
      v10 = 152;
      v11 = 176;
    }

    std::string::operator=((a1 + v10), v4);
    *(a1 + v11) = CFAbsoluteTimeGetCurrent();
    if (*(a1 + 1665) == 1)
    {
      sub_100246610(a1, (a1 + 1824));
    }

    CFRelease(v6);
  }

  return v6 != 0;
}

void sub_1002476A0(int *a1, int *a2)
{
  v4 = a2;
  if ((sub_100247750(a1, &v4) & 1) == 0)
  {
    v5[2] = *a2;
    v5[0] = 26;
    sub_100103D88(a1, v5);
    sub_1001039FC(v5);
  }
}

void sub_100247734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001039FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100247750(int *a1, int **a2)
{
  result = 0;
  v4 = *a1 ^ (*a1 >> 31);
  if (v4 >= 0x1A)
  {
    if (v4 <= 29)
    {
      if ((v4 - 27) < 3)
      {
        return result;
      }

      if (v4 == 26)
      {
        a1[2] = **a2;
        return 1;
      }
    }

    else if (v4 > 34)
    {
      if (v4 > 38)
      {
        sub_10053508C();
      }
    }

    else if (v4 <= 31)
    {
      if (v4 != 30)
      {
        sub_10053508C();
      }
    }

    else if (v4 != 32 && v4 != 33)
    {
      sub_10053508C();
    }

    sub_10053508C();
  }

  return result;
}

NSDictionary *sub_100247C7C(unsigned int *a1)
{
  v3[0] = @"clients";
  v4[0] = [NSNumber numberWithInt:a1[8]];
  v4[1] = @"unregister";
  v3[1] = @"trigger";
  v3[2] = @"sum";
  v4[2] = [NSNumber numberWithInt:a1[9]];
  v3[3] = @"bin";
  v4[3] = [NSNumber numberWithInt:a1[10]];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
}

uint64_t sub_100247D50(char *a1, int a2, int *a3)
{
  v6 = sub_100247DC8(a1, a2, a3);
  sub_100186B70(a1, a2, a3, 0);
  (*(*a1 + 216))(a1);
  return v6;
}

uint64_t sub_100247DC8(char *a1, int a2, int *a3)
{
  HIDWORD(v25) = a2;
  v3 = a1[108];
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 11);
    if (v5)
    {
      v7 = a1 + 88;
      do
      {
        if (*(v5 + 32) >= a2)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < a2));
      }

      while (v5);
      if (v7 != a1 + 88 && *(v7 + 8) <= a2)
      {
        v10 = *(v7 + 6);
        v8 = v7 + 48;
        v9 = v10;
        if (v10)
        {
          v11 = *a3;
          v12 = v8;
          do
          {
            if (*(v9 + 28) >= v11)
            {
              v12 = v9;
            }

            v9 = *(v9 + 8 * (*(v9 + 28) < v11));
          }

          while (v9);
          if (v12 != v8 && v11 >= *(v12 + 7))
          {
            LODWORD(__p[0]) = *a3;
            sub_10004E6E0((v8 - 8), __p);
            v13 = *(a1 + 8);
            if (!v13)
            {
              goto LABEL_23;
            }

            v14 = *a3;
            v15 = a1 + 64;
            do
            {
              if (*(v13 + 32) >= v14)
              {
                v15 = v13;
              }

              v13 = *(v13 + 8 * (*(v13 + 32) < v14));
            }

            while (v13);
            if (v15 != a1 + 64 && v14 >= *(v15 + 8))
            {
              sub_10004E6E0((v15 + 40), &v25 + 1);
              if (!*(v15 + 7))
              {
                (*(*a1 + 176))(a1, a3);
              }
            }

            else
            {
LABEL_23:
              if (qword_1025D47F0 != -1)
              {
                sub_10189A8F8();
              }

              v16 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v17 = a1 + 8;
                if (a1[31] < 0)
                {
                  v17 = *v17;
                }

                (*(*a1 + 160))(__p, a1, a3);
                if (v35 >= 0)
                {
                  v18 = __p;
                }

                else
                {
                  v18 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v17;
                v27 = 2082;
                v28 = v18;
                _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_FAULT, "%{public}s; notification %{public}s not found", buf, 0x16u);
                if (v35 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              if (sub_10000A100(121, 0))
              {
                bzero(__p, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_10189A8F8();
                }

                v20 = a1 + 8;
                if (a1[31] < 0)
                {
                  v20 = *v20;
                }

                v21 = qword_1025D47F8;
                (*(*a1 + 160))(buf, a1, a3);
                if (v29 >= 0)
                {
                  v22 = buf;
                }

                else
                {
                  v22 = *buf;
                }

                v30 = 136446466;
                v31 = v20;
                v32 = 2082;
                v33 = v22;
                LODWORD(v25) = 22;
                _os_log_send_and_compose_impl(2, 0, __p, 1628, dword_100000000, v21, 17, "%{public}s; notification %{public}s not found", &v30, v25);
                v24 = v23;
                if (v29 < 0)
                {
                  operator delete(*buf);
                }

                sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLNotifier<CLOdometerNotifier_Type::Notification, CLOdometerNotifier_Type::NotificationData>::unregisterForNotification(int, const Notification_T &) [Notification_T = CLOdometerNotifier_Type::Notification, NotificationData_T = CLOdometerNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = char]", "%s\n", v24);
                if (v24 != __p)
                {
                  free(v24);
                }
              }
            }
          }
        }
      }
    }
  }

  return v3 ^ 1u;
}

double *sub_1002481B4(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a1;
  v4 = *(a2 - 1);
  if (v3 <= v4)
  {
    v8 = a1 + 1;
    do
    {
      v5 = v8;
      if (v8 >= a2)
      {
        break;
      }

      ++v8;
      v9 = *v5;
    }

    while (v3 <= v9);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = v5[1];
      ++v5;
      v7 = v6;
    }

    while (v3 <= v7);
  }

  if (v5 < a2)
  {
    do
    {
      v10 = *--a2;
      v11 = v10;
    }

    while (v3 > v11);
  }

  if (v5 < a2)
  {
    v12 = *v5;
    v13 = *a2;
    do
    {
      *v5 = v13;
      *a2 = v12;
      do
      {
        v14 = v5[1];
        ++v5;
        v12 = v14;
        v15 = v14;
      }

      while (v3 <= v15);
      do
      {
        v16 = *--a2;
        v13 = v16;
        v17 = v16;
      }

      while (v3 > v17);
    }

    while (v5 < a2);
  }

  if (v5 - 1 != a1)
  {
    *a1 = *(v5 - 1);
  }

  *(v5 - 1) = v2;
  return v5;
}

BOOL sub_100248280(double *a1, double *a2, uint64_t a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v8 = *a1;
      v9 = a1[1];
      v10 = v9;
      v11 = *a1;
      v12 = *(a2 - 1);
      v13 = v12;
      if (v10 <= v11)
      {
        if (v13 > v10)
        {
          a1[1] = v12;
          *(a2 - 1) = v9;
          v34 = *a1;
          v33 = a1[1];
          v35 = v33;
          v36 = *a1;
          if (v35 > v36)
          {
            *a1 = v33;
            *(a1 + 1) = v34;
          }
        }

        return 1;
      }

      if (v13 <= v10)
      {
        *a1 = v9;
        *(a1 + 1) = v8;
        v48 = *(a2 - 1);
        v49 = v48;
        if (v49 <= v11)
        {
          return 1;
        }

        a1[1] = v48;
      }

      else
      {
        *a1 = v12;
      }

      *(a2 - 1) = v8;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      sub_100248674(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v23 = a1 + 1;
    v24 = a1[1];
    v25 = a1 + 2;
    v26 = a1[2];
    v27 = v24;
    v28 = *a1;
    v29 = *a1;
    v30 = v26;
    if (v27 <= v29)
    {
      if (v30 > v27)
      {
        *v23 = v26;
        *v25 = v24;
        v31 = a1;
        v32 = a1 + 1;
        if (v30 <= v29)
        {
          goto LABEL_46;
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (v30 > v27)
      {
        v31 = a1;
        v32 = a1 + 2;
        v27 = *a1;
        v24 = *a1;
LABEL_44:
        *v31 = v26;
        *v32 = v28;
LABEL_46:
        v50 = *(a2 - 1);
        v51 = v50;
        if (v27 < v51)
        {
          *v25 = v50;
          *(a2 - 1) = v24;
          v52 = *v25;
          v53 = *v25;
          v54 = *v23;
          v55 = *v23;
          if (v53 > v55)
          {
            a1[1] = v52;
            a1[2] = v54;
            v56 = *a1;
            v57 = *a1;
            if (v53 > v57)
            {
              *a1 = v52;
              *(a1 + 1) = v56;
            }
          }
        }

        return 1;
      }

      *a1 = v24;
      a1[1] = v28;
      v31 = a1 + 1;
      v32 = a1 + 2;
      v27 = v29;
      v24 = v28;
      if (v30 > v29)
      {
        goto LABEL_44;
      }
    }

    v27 = v26;
    v24 = v26;
    goto LABEL_46;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v4 = *(a2 - 1);
    v5 = v4;
    v6 = *a1;
    v7 = *a1;
    if (v5 > v7)
    {
      *a1 = v4;
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_13:
  v14 = a1 + 2;
  v15 = a1[2];
  v16 = a1[1];
  v17 = v16;
  v18 = *a1;
  v19 = *a1;
  v20 = v15;
  if (v17 > v19)
  {
    v21 = a1;
    v22 = a1 + 2;
    if (v20 <= v17)
    {
      *a1 = v16;
      *(a1 + 1) = v18;
      v21 = a1 + 1;
      v22 = a1 + 2;
      if (v20 <= v19)
      {
        goto LABEL_26;
      }
    }

LABEL_25:
    *v21 = v15;
    *v22 = v18;
    goto LABEL_26;
  }

  if (v20 > v17)
  {
    a1[1] = v15;
    *v14 = v16;
    v21 = a1;
    v22 = a1 + 1;
    if (v20 > v19)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  v37 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v38 = 0;
  for (i = 24; ; i += 8)
  {
    v40 = *v37;
    v41 = *v37;
    v42 = *v14;
    v43 = *v14;
    if (v41 > v43)
    {
      v44 = i;
      while (1)
      {
        *(a1 + v44) = v42;
        v45 = v44 - 8;
        if (v44 == 8)
        {
          break;
        }

        v42 = *(a1 + v44 - 16);
        v46 = v42;
        v44 -= 8;
        if (v41 <= v46)
        {
          v47 = (a1 + v45);
          goto LABEL_34;
        }
      }

      v47 = a1;
LABEL_34:
      *v47 = v40;
      if (++v38 == 8)
      {
        break;
      }
    }

    v14 = v37++;
    if (v37 == a2)
    {
      return 1;
    }
  }

  return v37 + 1 == a2;
}

BOOL sub_1002485A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10018E854(a1);
  if (result)
  {
    v6 = *(a2 + 84) - *(a3 + 84);
    return v6 >= *(sub_100100690() + 6);
  }

  return result;
}

id sub_100248618(uint64_t a1, void *a2)
{
  result = [a2 doubleValue];
  if (v5 < *(a1 + 40))
  {
    v6 = *(a1 + 32);

    return [v6 addObject:a2];
  }

  return result;
}

double *sub_100248674(double *result, double *a2, double *a3, double *a4, double *a5)
{
  v5 = *a2;
  v6 = *a2;
  v7 = *result;
  v8 = *result;
  v9 = *a3;
  v10 = *a3;
  if (v6 <= v8)
  {
    if (v10 <= v6)
    {
      v6 = *a3;
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *a2;
      v12 = *result;
      v13 = *result;
      if (v11 > v13)
      {
        *result = *a2;
        *a2 = v12;
        v5 = *a3;
        v6 = *a3;
      }
    }
  }

  else
  {
    if (v10 > v6)
    {
      *result = v9;
LABEL_9:
      *a3 = v7;
      v6 = v8;
      v5 = v7;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v7;
    v5 = *a3;
    v6 = *a3;
    if (v6 > v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  v14 = *a4;
  if (v6 < v14)
  {
    *a3 = *a4;
    *a4 = v5;
    v15 = *a3;
    v16 = *a2;
    v17 = *a2;
    if (v15 > v17)
    {
      *a2 = *a3;
      *a3 = v16;
      v18 = *a2;
      v19 = *result;
      v20 = *result;
      if (v18 > v20)
      {
        *result = *a2;
        *a2 = v19;
      }
    }
  }

  v21 = *a5;
  v22 = *a4;
  v23 = *a4;
  if (v21 > v23)
  {
    *a4 = *a5;
    *a5 = v22;
    v24 = *a4;
    v25 = *a3;
    v26 = *a3;
    if (v24 > v26)
    {
      *a3 = *a4;
      *a4 = v25;
      v27 = *a3;
      v28 = *a2;
      v29 = *a2;
      if (v27 > v29)
      {
        *a2 = *a3;
        *a3 = v28;
        v30 = *a2;
        v31 = *result;
        v32 = *result;
        if (v30 > v32)
        {
          *result = *a2;
          *a2 = v31;
        }
      }
    }
  }

  return result;
}

void sub_1002487F0(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x10;
  v3 = v1 - 16;
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
    sub_10045E858(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10045E430(a1, &v9);
}

void sub_100248978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002489C4(uint64_t a1, unint64_t a2)
{
  LOBYTE(v3) = *(a1 + 52);
  if (!v3)
  {
    v4 = 0;
    goto LABEL_38;
  }

  if (*(a1 + 52))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(a1 + 8), a2) + 1;
    v3 = *(a1 + 52);
    if ((v3 & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0;
    if ((*(a1 + 52) & 2) == 0)
    {
      goto LABEL_16;
    }
  }

  v5 = *(a1 + 16);
  v6 = *(v5 + 23);
  v7 = v6;
  v8 = *(v5 + 8);
  if ((v6 & 0x80u) == 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9, a2);
    v6 = *(v5 + 23);
    v8 = *(v5 + 8);
    v3 = *(a1 + 52);
    v7 = *(v5 + 23);
  }

  else
  {
    v10 = 1;
  }

  if (v7 < 0)
  {
    v6 = v8;
  }

  v4 = (v4 + v10 + v6 + 1);
LABEL_16:
  if ((v3 & 4) != 0)
  {
    v11 = *(a1 + 24);
    if (!v11)
    {
      v11 = *(qword_1026380D8 + 24);
    }

    v12 = sub_10013276C(v11, a2);
    v13 = v12;
    if (v12 >= 0x80)
    {
      v14 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12, a2);
    }

    else
    {
      v14 = 1;
    }

    v4 = (v4 + v13 + v14 + 1);
    v3 = *(a1 + 52);
    if ((v3 & 8) == 0)
    {
LABEL_18:
      if ((v3 & 0x10) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }
  }

  else if ((v3 & 8) == 0)
  {
    goto LABEL_18;
  }

  v15 = *(a1 + 32);
  if (!v15)
  {
    v15 = *(qword_1026380D8 + 32);
  }

  v16 = sub_100E7ADE8(v15, a2);
  v17 = v16;
  if (v16 >= 0x80)
  {
    v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16, a2);
  }

  else
  {
    v18 = 1;
  }

  v4 = (v4 + v17 + v18 + 1);
  if ((*(a1 + 52) & 0x10) != 0)
  {
LABEL_32:
    v19 = *(a1 + 40);
    if (!v19)
    {
      v19 = *(qword_1026380D8 + 40);
    }

    v20 = sub_100E7C05C(v19, a2);
    v22 = v20;
    if (v20 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20, v21);
    }

    else
    {
      v23 = 1;
    }

    v4 = (v4 + v22 + v23 + 1);
  }

LABEL_38:
  *(a1 + 48) = v4;
  return v4;
}

uint64_t sub_100248B84(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  sub_10047DA08((a1 + 8), a3);
  v5 = *(a3 + 32);
  *(a1 + 32) = *(a3 + 24);
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *(a3 + 40);
  return a1;
}

uint64_t sub_100248C10(unint64_t *a1, void *a2, _DWORD *a3)
{
  v6 = a1[2];
  v7 = a1[1];
  if (v6 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 32 * (v6 - v7) - 1;
  }

  v9 = a1[4];
  v10 = a1[5];
  v11 = v10 + v9;
  if (v8 == v10 + v9)
  {
    sub_1004F03C4(a1);
    v9 = a1[4];
    v10 = a1[5];
    v7 = a1[1];
    v11 = v9 + v10;
  }

  v12 = *(v7 + ((v11 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v11;
  *v12 = *a2;
  *(v12 + 8) = *a3;
  v13 = v10 + 1;
  a1[5] = v13;
  v14 = v9 + v13;
  v15 = (v7 + 8 * (v14 >> 8));
  if (v14)
  {
    v16 = *v15 + 16 * v14;
  }

  else
  {
    v16 = *(v15 - 1) + 4096;
  }

  return v16 - 16;
}

void sub_100248CD8(uint64_t a1, uint64_t a2)
{
  if (qword_1025D41E0 != -1)
  {
    sub_1018D4598();
  }

  v4 = qword_1025D41E8;
  if (os_log_type_enabled(qword_1025D41E8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 352);
    v6 = *(a2 + 1);
    v7 = *(a2 + 9);
    v8 = *(a2 + 10);
    v9 = *(a2 + 11);
    v10 = *(a2 + 12);
    v11 = *(a2 + 13);
    v12 = *(a2 + 14);
    v13 = *(a2 + 15);
    v14 = *(a2 + 19);
    v15 = *(a2 + 23);
    v16 = *(a2 + 27);
    v17 = *(a2 + 31);
    v18 = *(a2 + 35);
    v19 = (*(a2 + 39) * 57.296);
    v20 = *(a2 + 43);
    *v22 = 134352896;
    *&v22[4] = v5;
    *&v22[12] = 2050;
    *&v22[14] = v6;
    *&v22[22] = 1026;
    *v23 = v7;
    *&v23[4] = 1026;
    *&v23[6] = v8;
    *&v23[10] = 1026;
    *&v23[12] = v9;
    *&v23[16] = 1026;
    *&v23[18] = v10;
    *&v23[22] = 1026;
    *&v23[24] = v11;
    *&v23[28] = 1026;
    *&v23[30] = v12;
    v24 = 2050;
    v25 = v13;
    v26 = 2050;
    v27 = v14;
    v28 = 2050;
    v29 = v15;
    v30 = 2050;
    v31 = v16;
    v32 = 2050;
    v33 = v17;
    v34 = 2050;
    v35 = v18;
    v36 = 2050;
    v37 = v19;
    v38 = 1026;
    v39 = v20;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "ViewObstructedState,timestamp,%{public}f,aopTimestamp,%{public}llu,shouldSuppress,%{public}u,currentState,%{public}u,currentEventTag,%{public}u,orientation,%{public}u,motionType,%{public}u,sufficientMotion,%{public}u,lux,%{public}f,rawProxIntensity,%{public}f,factoryPocketProbability,%{public}f,baselinedPocketProbability,%{public}f,pocketProbSuppressThreshold,%{public}f,pocketProbUnsuppressThreshold,%{public}f,gravityAngleDeg,%{public}f,hasProxCalibration,%{public}u", v22, 0x86u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018D45AC();
  }

  if (*(a2 + 44) == 1)
  {
    *&v23[24] = 0;
    *v22 = sub_100040914(a1, *(a1 + 352));
    v21 = *(a2 + 16);
    *&v22[8] = *a2;
    *v23 = v21;
    *&v23[13] = *(a2 + 29);
    sub_100013B00(a1, 42, v22, 56);
  }
}

void sub_100248EF4(uint64_t **a1@<X0>, _BYTE *a2@<X1>, void *a3@<X2>, const void **a4@<X8>)
{
  v36[0] = 0;
  v36[1] = 0;
  v35 = v36;
  v8 = *a1;
  v9 = a1[1];
  while (v8 != v9)
  {
    sub_10018F0D0(&v32);
    v10 = *(v8 + 18);
    __p = v32;
    memset(&v32, 0, sizeof(v32));
    v34 = v10;
    sub_10014E704(&v35, &__p, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    v8 += 12;
  }

  sub_1002491E0(&v35, a2, a3, &__p);
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v11 = *a1;
  v12 = a1[1];
  if (*a1 != v12)
  {
    do
    {
      sub_10018F0D0(&v32);
      v13 = sub_10045EF04(&__p, &v32);
      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (&__p.__r_.__value_.__r.__words[1] != v13)
      {
        v14 = a4[1];
        v15 = a4[2];
        if (v14 >= v15)
        {
          v21 = *a4;
          v22 = v14 - *a4;
          v23 = 0xAAAAAAAAAAAAAAABLL * (v22 >> 5) + 1;
          if (v23 > 0x2AAAAAAAAAAAAAALL)
          {
            sub_10028C64C();
          }

          v24 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v21) >> 5);
          if (2 * v24 > v23)
          {
            v23 = 2 * v24;
          }

          if (v24 >= 0x155555555555555)
          {
            v23 = 0x2AAAAAAAAAAAAAALL;
          }

          if (v23)
          {
            sub_1001A1980(a4, v23);
          }

          v25 = (32 * (v22 >> 5));
          v26 = *(v11 + 1);
          *v25 = *v11;
          v25[1] = v26;
          v27 = *(v11 + 2);
          v28 = *(v11 + 3);
          v29 = *(v11 + 5);
          v25[4] = *(v11 + 4);
          v25[5] = v29;
          v25[2] = v27;
          v25[3] = v28;
          v20 = v25 + 6;
          v30 = v25 - v22;
          memcpy(v25 - v22, v21, v22);
          v31 = *a4;
          *a4 = v30;
          a4[1] = v20;
          a4[2] = 0;
          if (v31)
          {
            operator delete(v31);
          }
        }

        else
        {
          v16 = *(v11 + 1);
          *v14 = *v11;
          *(v14 + 1) = v16;
          v17 = *(v11 + 2);
          v18 = *(v11 + 3);
          v19 = *(v11 + 5);
          *(v14 + 4) = *(v11 + 4);
          *(v14 + 5) = v19;
          *(v14 + 2) = v17;
          *(v14 + 3) = v18;
          v20 = v14 + 96;
        }

        a4[1] = v20;
      }

      v11 += 12;
    }

    while (v11 != v12);
  }

  sub_10001AF44(&__p, __p.__r_.__value_.__l.__size_);
  sub_10001AF44(&v35, v36[0]);
}

void sub_1002491E0(double *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v42 = 0;
  v43 = 0;
  v41 = &v42;
  v5 = a1 + 1;
  v6 = *a1;
  if (*a1 == a1 + 1)
  {
    goto LABEL_22;
  }

  do
  {
    if ((v6[7] & 0x80000000) != 0)
    {
      sub_10014E704(&v41, v6 + 4, (v6 + 4));
    }

    v9 = *(v6 + 1);
    if (v9)
    {
      do
      {
        v10 = v9;
        v9 = *v9;
      }

      while (v9);
    }

    else
    {
      do
      {
        v10 = *(v6 + 2);
        v11 = *v10 == v6;
        v6 = v10;
      }

      while (!v11);
    }

    v6 = v10;
  }

  while (v10 != v5);
  if (!v43)
  {
LABEL_22:
    v18 = v42;
    *(a4 + 8) = v42;
    *(a4 + 16) = 0;
    *a4 = a4 + 8;
    goto LABEL_86;
  }

  *(a4 + 8) = 0;
  v12 = (a4 + 8);
  *(a4 + 16) = 0;
  *a4 = a4 + 8;
  v13 = v41;
  if (v41 == &v42)
  {
    v17 = (a4 + 16);
  }

  else
  {
    do
    {
      v14 = *(v13 + 14);
      if (*(sub_1000F7F38() + 33) <= v14)
      {
        sub_10014E704(a4, v13 + 4, (v13 + 4));
      }

      v15 = v13[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v13[2];
          v11 = *v16 == v13;
          v13 = v16;
        }

        while (!v11);
      }

      v13 = v16;
    }

    while (v16 != &v42);
    v17 = (a4 + 16);
    if (*(a4 + 16))
    {
      goto LABEL_37;
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018F29C8();
  }

  v19 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, all aps filtered out due to weak rssi, add them back to yield a fix", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F29F0(buf);
    LOWORD(__p[0]) = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4628, 2, "WifiCalc, zaxis, all aps filtered out due to weak rssi, add them back to yield a fix", __p, 2);
    v40 = v39;
    sub_100152C7C("Generic", 1, 0, 2, "static std::map<std::string, int> CLLocationCalculator::filterWifiApsBasedOnRssiCriteria(const std::map<std::string, int> &, BOOL &, const CLSignalEnvironmentProvider_Type::SignalEnvironmentType)", "%s\n", v39);
    if (v40 != buf)
    {
      free(v40);
    }
  }

  v20 = v41;
  if (v41 != &v42)
  {
    do
    {
      sub_10014E704(a4, v20 + 4, (v20 + 4));
      v21 = v20[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v20[2];
          v11 = *v22 == v20;
          v20 = v22;
        }

        while (!v11);
      }

      v20 = v22;
    }

    while (v22 != &v42);
  }

  *a2 = 1;
LABEL_37:
  while (1)
  {
    v23 = *v17;
    if (v23 <= sub_10024974C(a3))
    {
      break;
    }

    v24 = *a4;
    if (*a4 == v12)
    {
      v30 = *a4;
      v24 = (a4 + 8);
    }

    else
    {
      v25 = *a4;
      while (1)
      {
        v26 = v25[1];
        v27 = v25;
        if (v26)
        {
          do
          {
            v25 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v25 = v27[2];
            v11 = *v25 == v27;
            v27 = v25;
          }

          while (!v11);
        }

        if (v25 == v12)
        {
          break;
        }

        if (*(v24 + 55) < 0)
        {
          sub_100007244(buf, v24[4], v24[5]);
        }

        else
        {
          *buf = *(v24 + 2);
          v48 = v24[6];
        }

        v28 = *(v24 + 14);
        v49 = v28;
        if (*(v25 + 55) < 0)
        {
          sub_100007244(__p, v25[4], v25[5]);
          v28 = v49;
        }

        else
        {
          *__p = *(v25 + 2);
          v45 = v25[6];
        }

        v29 = *(v25 + 14);
        v46 = v29;
        if (SHIBYTE(v45) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v48) < 0)
        {
          operator delete(*buf);
        }

        if (v28 < v29)
        {
          v24 = v25;
        }
      }

      v30 = *a4;
    }

    v31 = a4 + 8;
    if (v30 != v12)
    {
      v32 = v30;
      while (1)
      {
        v33 = v32[1];
        v34 = v32;
        if (v33)
        {
          do
          {
            v32 = v33;
            v33 = *v33;
          }

          while (v33);
        }

        else
        {
          do
          {
            v32 = v34[2];
            v11 = *v32 == v34;
            v34 = v32;
          }

          while (!v11);
        }

        if (v32 == v12)
        {
          break;
        }

        if (*(v32 + 55) < 0)
        {
          sub_100007244(buf, v32[4], v32[5]);
        }

        else
        {
          *buf = *(v32 + 2);
          v48 = v32[6];
        }

        v35 = *(v32 + 14);
        v49 = v35;
        if (*(v30 + 55) < 0)
        {
          sub_100007244(__p, v30[4], v30[5]);
          v35 = v49;
        }

        else
        {
          *__p = *(v30 + 2);
          v45 = v30[6];
        }

        v36 = *(v30 + 14);
        v46 = v36;
        if (SHIBYTE(v45) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v48) < 0)
        {
          operator delete(*buf);
        }

        if (v35 < v36)
        {
          v30 = v32;
        }
      }

      v31 = v30;
    }

    v37 = *(v24 + 14);
    v38 = *(v31 + 56);
    if (v37 - v38 <= *(sub_1000F7F38() + 72))
    {
      break;
    }

    sub_1001D2ED0(a4, v31);
  }

  v18 = v42;
LABEL_86:
  sub_10001AF44(&v41, v18);
}

void sub_1002496E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_10001AF44(v24, *(v24 + 8));
  sub_10001AF44(&a12, a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10024974C(void *a1)
{
  v2 = *(sub_1000F7F38() + 58);
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v2 = *(sub_1000F7F38() + 62);
        goto LABEL_20;
      case 4:
        v2 = *(sub_1000F7F38() + 63);
        goto LABEL_20;
      case 6:
        v2 = *(sub_1000F7F38() + 59);
        goto LABEL_20;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        v2 = *(sub_1000F7F38() + 58);
        goto LABEL_20;
      case 1:
        v2 = *(sub_1000F7F38() + 60);
        goto LABEL_20;
      case 2:
        v2 = *(sub_1000F7F38() + 61);
        goto LABEL_20;
    }
  }

  if (qword_1025D4620 != -1)
  {
    sub_1018F28B0();
  }

  v3 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_ERROR))
  {
    v6 = 67109120;
    v7 = a1;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Received unhandled signal environment type: %d", &v6, 8u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018F2CA0(a1);
  }

LABEL_20:
  if (qword_1025D4620 != -1)
  {
    sub_1018F29C8();
  }

  v4 = qword_1025D4628;
  if (os_log_type_enabled(qword_1025D4628, OS_LOG_TYPE_DEBUG))
  {
    v6 = 67109376;
    v7 = a1;
    v8 = 1024;
    v9 = v2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "WifiCalc, zaxis, signal environment, %d, sufficient ap threshold, %d", &v6, 0xEu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018F2DA8(a1, v2);
  }

  return v2;
}

void sub_10024993C(uint64_t ***a1, uint64_t ****a2, int *a3, int *a4, double *a5, long double *a6)
{
  v30[0] = 0;
  v30[1] = 0;
  v29 = v30;
  v11 = *a1;
  v12 = a1[1];
  while (v11 != v12)
  {
    v27 = *v11;
    sub_10018F0D0(&__p);
    sub_100249B9C(&v29, &__p, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v11 += 12;
  }

  v28[0] = 0;
  v28[1] = 0;
  v27 = v28;
  v13 = *a2;
  v14 = v28;
  if (*a2 != (a2 + 1))
  {
    do
    {
      sub_1000F2BC4(&v27, v13 + 4, (v13 + 4));
      v15 = v13[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v13[2];
          v17 = *v16 == v13;
          v13 = v16;
        }

        while (!v17);
      }

      v13 = v16;
    }

    while (v16 != (a2 + 1));
    v14 = v27;
  }

  v25 = 0;
  v26 = 0;
  v24 = &v25;
  sub_100249D2C(v29, v30, v14, v28, &v24, &v25, &v31, &__p);
  *a5 = 1.0 - v26 / a2[2];
  v18 = *a4;
  v19 = *a3;
  v20 = *(sub_1000F7F38() + 37);
  v21 = *a5;
  v22 = sub_1000F7F38();
  v23 = exp((v18 - v19) / v20);
  *a6 = v23 * exp(v21 * *(v22 + 38));
  sub_10001AF44(&v24, v25);
  sub_10001AF44(&v27, v28[0]);
  sub_10001AF44(&v29, v30[0]);
}

void sub_100249B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_10001AF44(&a9, a10);
  sub_10001AF44(&a12, a13);
  sub_10001AF44(&a15, a16);
  _Unwind_Resume(a1);
}

uint64_t sub_100249B9C(uint64_t **a1, uint64_t ***a2, uint64_t a3)
{
  v3 = *sub_1000F2B3C(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t **sub_100249C40(uint64_t ***a1, uint64_t ***a2, char *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v12 = a2;
  if (a1 != a2)
  {
    if ((sub_100019438(a1 + 4, a3) & 0x80) != 0)
    {
      v9 = 1;
      v5 = a1;
      while (1)
      {
        v11 = v5;
        v10 = sub_10064C6C8(&v11, v9, &v12);
        if (v11 == v12 || (sub_100019438(v11 + 4, a3) & 0x80) == 0)
        {
          break;
        }

        v5 = v11;
        v9 *= 2;
        if (v12 == v11)
        {
          return v5;
        }
      }

      if (v9 - v10 == 1)
      {
        return v11;
      }

      else
      {
        return sub_10064C620(v5, a3, v9 - v10);
      }
    }

    else
    {
      return a1;
    }
  }

  return v5;
}

double sub_100249D2C@<D0>(uint64_t ***a1@<X0>, uint64_t ***a2@<X1>, uint64_t ***a3@<X2>, uint64_t ***a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20 = a3;
  v21 = a1;
  *&v19 = a5;
  *(&v19 + 1) = a6;
  for (i = 0; v20 != a4; a3 = v20)
  {
    v12 = sub_100249C40(v21, a2, a3 + 32, a7, &v18);
    v13 = v21;
    v21 = v12;
    sub_100249E18(v12 == v13, &v21, &v20, &v19, &i);
    if (v21 == a2)
    {
      break;
    }

    v14 = sub_100249C40(v20, a4, v21 + 32, a7, &v18);
    v15 = v20;
    v20 = v14;
    sub_100249E18(v14 == v15, &v21, &v20, &v19, &i);
  }

  *a8 = a2;
  *(a8 + 8) = a4;
  result = *&v19;
  *(a8 + 16) = v19;
  return result;
}

uint64_t sub_100249E18(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (result)
  {
    if (*a5 == 1)
    {
      result = sub_100249F6C(a4, (*a2 + 32));
      v8 = *a2;
      v9 = *(*a2 + 8);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      *a2 = v10;
      v12 = *a3;
      v13 = *(*a3 + 8);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v11 = *v14 == v12;
          v12 = v14;
        }

        while (!v11);
      }

      v15 = 0;
      *a3 = v14;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  *a5 = v15;
  return result;
}