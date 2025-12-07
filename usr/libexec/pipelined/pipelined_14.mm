void sub_1000C0C94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  sub_10002BB1C(va);
  sub_10002BB1C(va1);
  sub_1000C0CF0(va2);
  nullsub_75();
  _Unwind_Resume(a1);
}

uint64_t sub_1000C0CF0(uint64_t result)
{
  v1 = *(result + 24);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = *(result + 8);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_1000C0DB8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1000C0E28()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1000C0F00(double a2)
{
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = off_10043DB08;
  v12 = 0;
  sub_1001294D4(v11, 0.0);
  sub_1001294DC(v11, 0.0);
  v3.n128_u64[0] = off_10043DB48;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v4 = 0;
  v5 = 0;
  v3.n128_u64[1] = off_10043DB08;
  v6 = 0;
  v10 = 4;
  sub_10012DCF0(&v3, v11);
  sub_10012DD04(&v3, 1.0);
  sub_10012DD0C(&v3, 1);
  sub_10012DD14(&v3, a2 + -1.57079633);
  sub_1000B99D0();
}

void sub_1000C1030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  nullsub_77();
  nullsub_75();
  _Unwind_Resume(a1);
}

double sub_1000C1064(double *a1)
{
  sub_1000C11D8(a1, &v8);
  sub_10031D900(&v8, v10);
  sub_1000C12A0(a1, &v5);
  sub_10031D900(&v5, v7);
  sub_10031C5E0(&v11, v10, v7);
  nullsub_75();
  v2 = v6;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  nullsub_75();
  v3 = v9;
  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v11;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return v11;
}

void sub_1000C1188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  nullsub_75();
  sub_10002BB1C(&a9);
  nullsub_75();
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_1000C11C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_1000C11D8(double *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 1);
  v7 = v5;
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4)) == 0)
  {
    sub_1000C234C();
  }

  sub_10031D8EC(a2, &v7, a1[12], a1[15]);
  v6 = v8;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void sub_1000C12A0(double *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 1);
  v7 = v5;
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4)) == 0)
  {
    sub_1000C234C();
  }

  sub_10031D8EC(a2, &v7, a1[13], a1[14]);
  v6 = v8;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

double sub_1000C1364(double *a1)
{
  if (a1[8] <= 0.0)
  {
    sub_100383B28(__p, v6);
    sub_10003F5D0(__p);
  }

  v2 = sub_1000C1064(a1);
  result = vabdd_f64(llround((v3 - v2) / a1[8]), (v3 - v2) / a1[8]);
  if (result >= 0.001)
  {
    sub_100383B28(__p, v6);
    sub_10003F5D0(__p);
  }

  return result;
}

void sub_1000C1430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_1000C1450(double *a1)
{
  sub_1000C1064(a1);
  result = vabdd_f64(llround((v2 - v3) / a1[8]), (v2 - v3) / a1[8]);
  if (result >= 0.001)
  {
    sub_100383B28(__p, v6);
    sub_10003F5D0(__p);
  }

  return result;
}

void sub_1000C14E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C1500(double *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 1);
  v7 = v5;
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4)) == 0)
  {
    sub_1000C234C();
  }

  sub_10031D8EC(a2, &v7, a1[12], a1[14]);
  v6 = v8;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

std::string *sub_1000C15C8@<X0>(std::string *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  v5 = result->__r_.__value_.__r.__words[0];
  size = result->__r_.__value_.__l.__size_;
  v6 = size - result->__r_.__value_.__r.__words[0];
  if (size == result->__r_.__value_.__r.__words[0])
  {
    if (result[3].__r_.__value_.__s.__data_[15] < 0)
    {
      v29 = result[2].__r_.__value_.__r.__words[2];
      data = result[3].__r_.__value_.__l.__data_;

      return sub_100003228(a2, v29, data);
    }

    else
    {
      *a2 = *&result[2].__r_.__value_.__r.__words[2];
      *(a2 + 16) = result[3].__r_.__value_.__l.__size_;
    }

    return result;
  }

  v7 = SHIDWORD(result[2].__r_.__value_.__r.__words[0]);
  v8 = SLODWORD(result[2].__r_.__value_.__r.__words[1]);
  if (v7 < v8 && (result[3].__r_.__value_.__s.__data_[16] & 2) != 0)
  {
    v31[0] = &off_100439318;
    v31[1] = v7;
    v31[2] = v8;
    sub_1000C71A0(v31);
  }

  v9 = 0xEEEEEEEEEEEEEEEFLL * (v6 >> 3);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v10 = result[3].__r_.__value_.__s.__data_[15];
  if ((v10 & 0x8000000000000000) != 0)
  {
    v10 = result[3].__r_.__value_.__r.__words[0];
  }

  if (v9 <= 1)
  {
    v9 = 1;
  }

  v11 = (v5 + 56);
  do
  {
    while (1)
    {
      v13 = *(v11 - 25);
      if (v13 < 0)
      {
        v14 = (*(v11 - 5) + v10);
        if (*(v11 - 14) != -2)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v14 = (v13 + v10);
        if (*(v11 - 14) != -2)
        {
          goto LABEL_9;
        }
      }

      if (v14 <= *v11)
      {
        v14 = *v11;
      }

LABEL_9:
      v12 = *(v11 - 1);
      if (v12 < 0)
      {
        break;
      }

      v10 = &v14[v12];
      v11 += 15;
      if (!--v9)
      {
        goto LABEL_20;
      }
    }

    v10 = &v14[*(v11 - 2)];
    v11 += 15;
    --v9;
  }

  while (v9);
LABEL_20:
  std::string::reserve(a2, v10);
  v15 = v2[3].__r_.__value_.__s.__data_[15];
  if (v15 >= 0)
  {
    v16 = &v2[2].__r_.__value_.__s.__data_[16];
  }

  else
  {
    v16 = v2[2].__r_.__value_.__r.__words[2];
  }

  if (v15 >= 0)
  {
    v17 = v2[3].__r_.__value_.__s.__data_[15];
  }

  else
  {
    v17 = v2[3].__r_.__value_.__r.__words[0];
  }

  result = std::string::append(a2, v16, v17);
  v18 = v2->__r_.__value_.__r.__words[0];
  if (v2->__r_.__value_.__l.__size_ != v2->__r_.__value_.__r.__words[0])
  {
    v19 = 0;
    v20 = 40;
    while (1)
    {
      v21 = *(v18 + v20 - 9);
      if (v21 >= 0)
      {
        v22 = (v18 + v20 - 32);
      }

      else
      {
        v22 = *(v18 + v20 - 32);
      }

      if (v21 >= 0)
      {
        v23 = *(v18 + v20 - 9);
      }

      else
      {
        v23 = *(v18 + v20 - 24);
      }

      std::string::append(a2, v22, v23);
      if (*(v18 + v20 - 40) != -2)
      {
        goto LABEL_40;
      }

      v24 = *(v18 + v20 + 16);
      v25 = *(a2 + 23);
      if ((v25 & 0x8000000000000000) == 0)
      {
        break;
      }

      v25 = *(a2 + 8);
      if (v24 > v25)
      {
        goto LABEL_39;
      }

LABEL_40:
      v26 = *(v18 + v20 + 15);
      if (v26 >= 0)
      {
        v27 = (v18 + v20 - 8);
      }

      else
      {
        v27 = *(v18 + v20 - 8);
      }

      if (v26 >= 0)
      {
        v28 = *(v18 + v20 + 15);
      }

      else
      {
        v28 = *(v18 + v20);
      }

      result = std::string::append(a2, v27, v28);
      ++v19;
      v18 = v2->__r_.__value_.__r.__words[0];
      v20 += 120;
      if (v19 >= 0xEEEEEEEEEEEEEEEFLL * ((v2->__r_.__value_.__l.__size_ - v2->__r_.__value_.__r.__words[0]) >> 3))
      {
        goto LABEL_47;
      }
    }

    if (v24 <= v25)
    {
      goto LABEL_40;
    }

LABEL_39:
    std::string::append(a2, v24 - v25, *(v18 + v20 + 32));
    goto LABEL_40;
  }

LABEL_47:
  v2[2].__r_.__value_.__s.__data_[12] = 1;
  return result;
}

void sub_1000C1874(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000C1894(uint64_t a1)
{
  if (*(a1 + 184) == 1)
  {
    std::locale::~locale((a1 + 192));
    *(a1 + 184) = 0;
  }

  *(a1 + 96) = off_100438E28;
  if (*(a1 + 168) == 1)
  {
    operator delete(*(a1 + 112));
  }

  *(a1 + 153) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  std::locale::~locale((a1 + 104));
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 8);
    v5 = *a1;
    if (v4 == v3)
    {
LABEL_21:
      *(a1 + 8) = v3;
      operator delete(v5);
      return a1;
    }

    while (1)
    {
      if (LOBYTE(v4[-4].__locale_) == 1)
      {
        std::locale::~locale(v4 - 3);
        LOBYTE(v4[-4].__locale_) = 0;
        if ((SHIBYTE(v4[-9].__locale_) & 0x80000000) == 0)
        {
LABEL_15:
          if (SHIBYTE(v4[-12].__locale_) < 0)
          {
            goto LABEL_19;
          }

          goto LABEL_12;
        }
      }

      else if ((SHIBYTE(v4[-9].__locale_) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      operator delete(v4[-11].__locale_);
      if (SHIBYTE(v4[-12].__locale_) < 0)
      {
LABEL_19:
        operator delete(v4[-14].__locale_);
      }

LABEL_12:
      v4 -= 15;
      if (v4 == v3)
      {
        v5 = *a1;
        goto LABEL_21;
      }
    }
  }

  return a1;
}

uint64_t sub_1000C19E4(uint64_t a1)
{
  *a1 = off_100438E28;
  if (*(a1 + 72) == 1)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 57) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  std::locale::~locale((a1 + 8));
  return a1;
}

void sub_1000C1A6C(uint64_t a1)
{
  *a1 = off_100438E28;
  if (*(a1 + 72) == 1)
  {
    operator delete(*(a1 + 16));
  }

  *(a1 + 57) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  std::locale::~locale((a1 + 8));

  operator delete();
}

double sub_1000C1B14@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = a1[6];
  if (v5 && a1[8] < v5)
  {
    a1[8] = v5;
  }

  if ((a4 & 8) != 0)
  {
    v6 = a1[3];
    if (v6)
    {
      if (a3 == 2)
      {
        v7 = 8;
      }

      else
      {
        if (a3 == 1)
        {
          if ((a4 & 0x10) != 0)
          {
            goto LABEL_25;
          }

          v12 = v6 + a2;
          if (a1[2] > (v6 + a2))
          {
            goto LABEL_25;
          }

          goto LABEL_24;
        }

        if (a3)
        {
LABEL_25:
          v8 = -1;
          goto LABEL_26;
        }

        v7 = 2;
      }

      a2 = a2 - v6 + a1[v7];
      v12 = v6 + a2;
      if (a1[2] <= (v6 + a2))
      {
LABEL_24:
        if (v12 > a1[8])
        {
          goto LABEL_25;
        }

        v9 = v6 + a2;
        a1[3] = v9;
        if ((a4 & 0x10) == 0 || !v5)
        {
LABEL_31:
          v8 = a2;
          goto LABEL_26;
        }

        LODWORD(v9) = v9 - v5;
LABEL_30:
        a1[6] = v5 + v9;
        goto LABEL_31;
      }

      goto LABEL_25;
    }
  }

  v8 = -1;
  if ((a4 & 0x10) != 0 && v5)
  {
    if (!a3)
    {
      v11 = a1[5];
      v9 = v11 - v5 + a2;
      v10 = v11 + a2;
      if (v11 > v11 + a2)
      {
        goto LABEL_25;
      }

      goto LABEL_17;
    }

    if (a3 == 2)
    {
      v9 = a1[8] - v5 + a2;
      v10 = a1[8] + a2;
      if (a1[5] > v10)
      {
        goto LABEL_25;
      }

LABEL_17:
      a2 = v9;
      if (v10 <= a1[8])
      {
        goto LABEL_30;
      }

      goto LABEL_25;
    }
  }

LABEL_26:
  result = 0.0;
  *(a5 + 96) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 128) = v8;
  return result;
}

double sub_1000C1C40@<D0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 128);
  v5 = a1[6];
  if (v5 && a1[8] < v5)
  {
    a1[8] = v5;
  }

  if (v4 == -1)
  {
LABEL_16:
    v10 = -1;
    goto LABEL_17;
  }

  if ((a3 & 8) != 0)
  {
    v6 = a1[3];
    if (v6)
    {
      if ((v4 & 0x8000000000000000) == 0)
      {
        v7 = a1[2];
        if (v4 <= a1[8] - v7)
        {
          v8 = v6 + v4 - v6 + v7;
          a1[3] = v8;
          if ((a3 & 0x10) == 0 || !v5)
          {
            goto LABEL_20;
          }

          v9 = v8 - v5;
LABEL_19:
          a1[6] = v5 + v9;
LABEL_20:
          v10 = v4;
          goto LABEL_17;
        }
      }

      goto LABEL_16;
    }
  }

  v10 = -1;
  if ((a3 & 0x10) != 0 && v5 && (v4 & 0x8000000000000000) == 0)
  {
    v11 = a1[2];
    if (v4 <= a1[8] - v11)
    {
      v9 = v4 - v5 + v11;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

LABEL_17:
  result = 0.0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 128) = v10;
  return result;
}

uint64_t sub_1000C1D04(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  if (v1 < *(a1 + 32))
  {
    return *v1;
  }

  if ((*(a1 + 76) & 8) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(a1 + 48);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a1 + 64);
  if (v1 >= v3 && v1 >= v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 < v3)
  {
    *(a1 + 64) = v3;
    v4 = v3;
  }

  *(a1 + 32) = v4;
  return *v1;
}

uint64_t sub_1000C1D68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2 || *(a1 + 16) >= v2)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2 != -1 && (*(a1 + 76) & 0x10) == 0)
  {
    v4 = *(v2 - 1);
    v3 = (v2 - 1);
    if (v4 == a2)
    {
      *(a1 + 24) = v3;
      *v3 = a2;
      return a2;
    }

    return 0xFFFFFFFFLL;
  }

  v6 = (v2 - 1);
  *(a1 + 24) = v6;
  if (a2 == -1)
  {
    return 0;
  }

  *v6 = a2;
  return a2;
}

uint64_t sub_1000C1DD4(uint64_t a1, uint64_t a2)
{
  if (a2 == -1)
  {
    return 0;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 56);
    if (v3 < v4)
    {
      *(a1 + 48) = v3 + 1;
      *v3 = a2;
      return a2;
    }

    if ((*(a1 + 76) & 0x10) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = *(a1 + 16);
    v6 = v4 - v7;
  }

  else
  {
    if ((*(a1 + 76) & 0x10) == 0)
    {
      return 0xFFFFFFFFLL;
    }

    v6 = 0;
    v7 = *(a1 + 16);
  }

  v8 = v6 >> 1;
  if (v6 >> 1 <= 0x100)
  {
    v8 = 256;
  }

  do
  {
    if (!__CFADD__(v8, v6))
    {
      operator new();
    }

    v10 = v8 >= 2;
    v8 >>= 1;
  }

  while (v10);
  memmove(0, v7, v6);
  v11 = a1;
  if (*(a1 + 72) == 1)
  {
    operator delete(v7);
    v11 = a1;
  }

  *(v11 + 72) = 1;
  v12 = *(v11 + 64) - v7;
  v13 = *(v11 + 40);
  v14 = *(v11 + 48) - v13;
  v15 = v13 - v7;
  v17 = *(v11 + 16);
  v16 = *(v11 + 24);
  *(v11 + 56) = v6;
  *(v11 + 64) = v12;
  v18 = v15 + v14;
  *(v11 + 40) = v15;
  *(v11 + 48) = v18;
  if ((*(v11 + 76) & 8) != 0)
  {
    *(v11 + 16) = 0;
    *(v11 + 24) = v16 - v17;
    v19 = (v15 + v14);
    *(v11 + 32) = v18 + 1;
    if (v18 == v6)
    {
LABEL_19:
      (*(*v11 + 104))(v11, a2);
      return a2;
    }
  }

  else
  {
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    v19 = (v15 + v14);
    *(v11 + 32) = 0;
    if (v18 == v6)
    {
      goto LABEL_19;
    }
  }

  *(v11 + 48) = v19 + 1;
  *v19 = a2;
  return a2;
}

std::locale **sub_1000C2054(std::locale **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_13:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (LOBYTE(v3[-4].__locale_) == 1)
      {
        std::locale::~locale(v3 - 3);
        LOBYTE(v3[-4].__locale_) = 0;
        if ((SHIBYTE(v3[-9].__locale_) & 0x80000000) == 0)
        {
LABEL_7:
          if (SHIBYTE(v3[-12].__locale_) < 0)
          {
            goto LABEL_11;
          }

          goto LABEL_4;
        }
      }

      else if ((SHIBYTE(v3[-9].__locale_) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      operator delete(v3[-11].__locale_);
      if (SHIBYTE(v3[-12].__locale_) < 0)
      {
LABEL_11:
        operator delete(v3[-14].__locale_);
      }

LABEL_4:
      v3 -= 15;
      if (v3 == v2)
      {
        v4 = *a1;
        goto LABEL_13;
      }
    }
  }

  return a1;
}

uint64_t sub_1000C2104(uint64_t a1)
{
  if (*(a1 + 88) != 1)
  {
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*(a1 + 32));
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_7;
  }

  std::locale::~locale((a1 + 96));
  *(a1 + 88) = 0;
  if (*(a1 + 55) < 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_7:
  operator delete(*(a1 + 8));
  return a1;
}

void sub_1000C2328(_Unwind_Exception *a1)
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

void sub_1000C234C()
{
  exception = __cxa_allocate_exception(8uLL);
}

uint64_t sub_1000C2398(uint64_t a1, const char *a2)
{
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 45) = 0u;
  *(a1 + 88) = -1;
  std::locale::locale((a1 + 104));
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 96) = off_100438E28;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 172) = 24;
  *(a1 + 184) = 0;
  if (a2)
  {
    v4 = strlen(a2);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000D39C();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v4;
    if (v4)
    {
      memcpy(&__dst, a2, v4);
    }

    __dst.__r_.__value_.__s.__data_[v5] = 0;
    sub_1000C25B4(a1, &__dst);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }
  }

  return a1;
}

void sub_1000C250C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (*(v15 + 184) != 1)
    {
LABEL_3:
      sub_1000C19E4(v16);
      if ((*(v15 + 87) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*(v15 + 184) != 1)
  {
    goto LABEL_3;
  }

  std::locale::~locale((v15 + 192));
  *(v15 + 184) = 0;
  sub_1000C19E4(v16);
  if ((*(v15 + 87) & 0x80000000) == 0)
  {
LABEL_4:
    v19 = *(v15 + 24);
    if (!v19)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*v17);
  v19 = *(v15 + 24);
  if (!v19)
  {
LABEL_5:
    sub_1000C2054(v15);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(v19);
  sub_1000C2054(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C25B4(uint64_t a1, const std::string *a2)
{
  if (*(a1 + 184) == 1)
  {
    std::locale::locale(&v43, (a1 + 192));
  }

  else
  {
    std::locale::locale(&v43);
  }

  v4 = std::locale::use_facet(&v43, &std::ctype<char>::id);
  std::locale::~locale(&v43);
  v5 = (v4->__vftable[2].~facet_0)(v4, 37);
  v6 = sub_1000C2B6C(a2, v5, v4, *(a1 + 88));
  sub_1000C2CFC(a1, v6);
  v42 = 0;
  v7 = std::string::find(a2, v5, 0);
  if (v7 == -1)
  {
    v41 = 0;
    v10 = 0;
    v40 = -1;
    v38 = 0;
    v39 = 1;
    goto LABEL_44;
  }

  v8 = v7;
  v41 = 0;
  v9 = 0;
  v10 = 0;
  v40 = -1;
  v38 = 0;
  v39 = 1;
  do
  {
    v11 = (a1 + 64);
    if (v9)
    {
      v11 = (*a1 + 120 * v9 - 88);
    }

    v12 = v8 + 1;
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = a2->__r_.__value_.__r.__words[0];
    }

    if (v14->__r_.__value_.__s.__data_[v12] == v14->__r_.__value_.__s.__data_[v8])
    {
      sub_1000C43B0(v11, (v14 + v10), (v14 + v12));
      v10 = v8 + 2;
      v15 = (v8 + 2);
      goto LABEL_7;
    }

    if (v8 != v10)
    {
      sub_1000C43B0(v11, (v14 + v10), (v14 + v8));
      size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    if ((size & 0x80) != 0)
    {
      v16 = a2->__r_.__value_.__r.__words[0];
      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v16 = a2;
    }

    v42 = v16 + v12;
    v43.__locale_ = (v16 + size);
    v17 = sub_1000C3030(&v42, &v43, *a1 + 120 * v9, v4, (v8 + 1), *(a1 + 88));
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = a2;
    }

    else
    {
      v18 = a2->__r_.__value_.__r.__words[0];
    }

    v15 = &v42[-v18];
    if (!v17)
    {
      v10 = v8;
      goto LABEL_7;
    }

    v19 = *a1 + 120 * v9;
    v20 = *(v19 + 112);
    if ((v20 & 1) == 0)
    {
      goto LABEL_27;
    }

    v21 = *(v19 + 76);
    if ((v21 & 0x20) == 0)
    {
      v20 &= ~2u;
      *(v19 + 112) = v20;
      *(v19 + 72) = 48;
      *(v19 + 76) = v21 & 0xFFFFFF4F | 0x10;
LABEL_27:
      if ((v20 & 2) != 0)
      {
        goto LABEL_28;
      }

      goto LABEL_31;
    }

    v20 &= ~1u;
    *(v19 + 112) = v20;
    if ((v20 & 2) != 0)
    {
LABEL_28:
      if ((*(v19 + 77) & 8) != 0)
      {
        *(v19 + 112) = v20 & 0xFFFFFFFD;
      }
    }

LABEL_31:
    v22 = *v19;
    if (v22 != -3)
    {
      if (v22 == -1)
      {
        v39 = 0;
        v23 = v41;
      }

      else
      {
        v23 = v41;
        if (v22 == -2)
        {
          v38 = 1;
        }

        else
        {
          v24 = v40;
          if (v22 > v40)
          {
            v24 = v22;
          }

          v40 = v24;
        }
      }

      v41 = v23 + 1;
      ++v9;
    }

    v10 = v15;
LABEL_7:
    v8 = std::string::find(a2, v5, v15);
  }

  while (v8 != -1);
  if (v9)
  {
    v25 = (*a1 + 120 * v9 - 88);
    goto LABEL_45;
  }

LABEL_44:
  v25 = (a1 + 64);
LABEL_45:
  v26 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v27 = (v26 & 0x80u) != 0;
  if ((v26 & 0x80u) != 0)
  {
    v26 = a2->__r_.__value_.__l.__size_;
  }

  if (v27)
  {
    v28 = a2->__r_.__value_.__r.__words[0];
  }

  else
  {
    v28 = a2;
  }

  sub_1000C43B0(v25, (v28 + v10), (v28 + v26));
  if ((v39 & 1) == 0)
  {
    if (v40 & 0x80000000) == 0 && (*(a1 + 88))
    {
      v43.__locale_ = &off_100438FB0;
      v44[0] = v40;
      v44[1] = 0;
      sub_1000C3BA0(&v43);
    }

    if (v41 < 1)
    {
      v32 = -1;
    }

    else
    {
      v29 = 0;
      v30 = *a1;
      v31 = v41;
      do
      {
        if (*v30 == -1)
        {
          *v30 = v29++;
        }

        v30 += 30;
        --v31;
      }

      while (v31);
      v32 = v29 - 1;
    }

    v40 = v32;
  }

  v33 = (v4->__vftable[2].~facet_0)(v4, 32);
  LODWORD(v43.__locale_) = -1;
  v52 = 0;
  *v44 = 0u;
  *__p = 0u;
  v46 = 0u;
  v47 = 0;
  v48 = 6;
  v49 = v33;
  v51 = 0;
  v50 = 4098;
  v53[1].__locale_ = 0x7FFFFFFFFFFFFFFFLL;
  v54 = 0;
  v34 = *(a1 + 8);
  v35 = 0xEEEEEEEEEEEEEEEFLL * ((v34 - *a1) >> 3);
  if (v41 > v35)
  {
    sub_1000C4EC0(a1, v41 - v35, &v43);
    goto LABEL_75;
  }

  if (v41 < v35)
  {
    v36 = *a1 + 120 * v41;
    while (1)
    {
      if (v34 == v36)
      {
        *(a1 + 8) = v36;
        break;
      }

      if (*(v34 - 32) == 1)
      {
        std::locale::~locale((v34 - 24));
        *(v34 - 32) = 0;
        if ((*(v34 - 65) & 0x80000000) == 0)
        {
          goto LABEL_72;
        }
      }

      else if ((*(v34 - 65) & 0x80000000) == 0)
      {
LABEL_72:
        if ((*(v34 - 89) & 0x80000000) == 0)
        {
          goto LABEL_66;
        }

        goto LABEL_73;
      }

      operator delete(*(v34 - 88));
      if ((*(v34 - 89) & 0x80000000) == 0)
      {
        goto LABEL_66;
      }

LABEL_73:
      operator delete(*(v34 - 112));
LABEL_66:
      v34 -= 120;
    }
  }

LABEL_75:
  if (v52 == 1)
  {
    std::locale::~locale(v53);
    v52 = 0;
    if (SHIBYTE(v46) < 0)
    {
      goto LABEL_77;
    }

LABEL_81:
    if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
    {
      goto LABEL_82;
    }

LABEL_78:
    operator delete(v44[0]);
    if ((v38 & 1) == 0)
    {
      goto LABEL_84;
    }

LABEL_83:
    *(a1 + 48) |= 4u;
    goto LABEL_84;
  }

  if ((SHIBYTE(v46) & 0x80000000) == 0)
  {
    goto LABEL_81;
  }

LABEL_77:
  operator delete(__p[1]);
  if (SHIBYTE(__p[0]) < 0)
  {
    goto LABEL_78;
  }

LABEL_82:
  if (v38)
  {
    goto LABEL_83;
  }

LABEL_84:
  *(a1 + 56) = v40 + 1;
  *(a1 + 48) = *(a1 + 48) & 0xFFFFFFFE | v39 & 1;
  return a1;
}

void sub_1000C2B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_1000C2104(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C2B6C(const std::string *a1, std::string::value_type a2, uint64_t a3, char a4)
{
  v8 = std::string::find(a1, a2, 0);
  if (v8 == -1)
  {
    return 0;
  }

  v9 = 0;
  while (1)
  {
    v10 = v8 + 1;
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    v12 = (size & 0x80u) == 0 ? HIBYTE(a1->__r_.__value_.__r.__words[2]) : a1->__r_.__value_.__l.__size_;
    if (v10 >= v12)
    {
      break;
    }

    v13 = a1->__r_.__value_.__r.__words[0];
    if ((size & 0x80u) == 0)
    {
      v14 = a1;
    }

    else
    {
      v14 = a1->__r_.__value_.__r.__words[0];
    }

    v15 = v14->__r_.__value_.__s.__data_[v10];
    if ((size & 0x80) != 0)
    {
      size = a1->__r_.__value_.__l.__size_;
      if (v15 == v13->__r_.__value_.__s.__data_[v8])
      {
        goto LABEL_3;
      }

LABEL_15:
      v16 = v13 + v10;
      if (v10 != size)
      {
        v17 = v13 + size;
        while (1)
        {
          v18 = *v16;
          if (v18 < 0 || (*(*(a3 + 16) + 4 * v18) & 0x400) == 0)
          {
            break;
          }

          if (++v16 == v17)
          {
            v16 = v17;
            break;
          }
        }
      }

      v19 = v16 - v14;
      if (v16 - v14 < v12 && *v16 == a2)
      {
        ++v19;
      }

      v9 = (v9 + 1);
      v8 = std::string::find(a1, a2, v19);
      if (v8 == -1)
      {
        return v9;
      }
    }

    else
    {
      v13 = a1;
      if (v15 != a1->__r_.__value_.__s.__data_[v8])
      {
        goto LABEL_15;
      }

LABEL_3:
      v8 = std::string::find(a1, a2, v8 + 2);
      if (v8 == -1)
      {
        return v9;
      }
    }
  }

  if (a4)
  {
    v21[0] = &off_100438FB0;
    v21[1] = v8;
    v21[2] = v12;
    sub_1000C3BA0(v21);
  }

  return (v9 + 1);
}

void sub_1000C2CFC(uint64_t *a1, unint64_t a2)
{
  if (*(a1 + 184) == 1)
  {
    std::locale::locale(&v12, a1 + 24);
  }

  else
  {
    std::locale::locale(&v12);
  }

  v4 = std::locale::use_facet(&v12, &std::ctype<char>::id);
  v5 = (v4->__vftable[2].~facet_0)(v4, 32);
  std::locale::~locale(&v12);
  v6 = a1[1] - *a1;
  if (!v6)
  {
    LODWORD(v12.__locale_) = -1;
    v21 = 0;
    *v13 = 0u;
    *__p = 0u;
    v15 = 0u;
    v16 = 0;
    v17 = 6;
    v18 = v5;
    v20 = 0;
    v19 = 4098;
    v23 = 0x7FFFFFFFFFFFFFFFLL;
    v24 = 0;
    sub_1000C3C00(a1, a2, &v12);
    if (v21 == 1)
    {
      std::locale::~locale(&v22);
      v21 = 0;
      if ((SHIBYTE(v15) & 0x80000000) == 0)
      {
LABEL_12:
        if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

LABEL_20:
        operator delete(v13[0]);
        goto LABEL_21;
      }
    }

    else if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    operator delete(__p[1]);
    if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v7 = 0xEEEEEEEEEEEEEEEFLL * (v6 >> 3);
  if (a2 <= v7)
  {
    sub_1000C3F30((a1 + 3), 0, 0);
    if (!a2)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  LODWORD(v12.__locale_) = -1;
  v21 = 0;
  *v13 = 0u;
  *__p = 0u;
  v15 = 0u;
  v16 = 0;
  v17 = 6;
  v18 = v5;
  v20 = 0;
  v19 = 4098;
  v23 = 0x7FFFFFFFFFFFFFFFLL;
  v24 = 0;
  sub_1000C4EC0(a1, a2 - v7, &v12);
  if (v21 != 1)
  {
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_23:
    operator delete(__p[1]);
    if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_24:
    operator delete(v13[0]);
    goto LABEL_9;
  }

  std::locale::~locale(&v22);
  v21 = 0;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_23;
  }

LABEL_8:
  if (SHIBYTE(__p[0]) < 0)
  {
    goto LABEL_24;
  }

LABEL_9:
  sub_1000C3F30((a1 + 3), 0, 0);
LABEL_15:
  v8 = 0;
  do
  {
    v9.__locale_ = *a1;
    v10 = *a1 + v8;
    *v10 = -1;
    *(v10 + 104) = 0x7FFFFFFFFFFFFFFFLL;
    *(v10 + 112) = 0;
    std::string::resize((v10 + 8), 0, 0);
    std::string::resize((v10 + 32), 0, 0);
    v11 = v9.__locale_ + v8;
    *(v11 + 56) = xmmword_1003CDDC0;
    v11[72] = v5;
    *(v11 + 21) = 0;
    *(v11 + 76) = 4098;
    v8 += 120;
    --a2;
  }

  while (a2);
LABEL_21:
  std::string::resize((a1 + 8), 0, 0);
}

void sub_1000C2FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000C2104(va);
  _Unwind_Resume(a1);
}

void sub_1000C3004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000C2104(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C3030(char **a1, char **a2, uint64_t a3, void *a4, unsigned __int8 *a5, uint64_t a6)
{
  *a3 = -1;
  v8 = *a1;
  v9 = &a5[*a2 - *a1];
  if (*a2 <= *a1)
  {
    if (a6)
    {
      v59 = &off_100438FB0;
      v60 = a5;
      v61 = v9;
      sub_1000C3BA0(&v59);
    }

    return 0;
  }

  v14 = *v8;
  v15 = (*(*a4 + 56))(a4, 124);
  v16 = *a1;
  if (v14 == v15)
  {
    *a1 = ++v16;
    if (v16 >= *a2)
    {
      if (a6)
      {
        v59 = &off_100438FB0;
        v60 = &v16[a5 - v8];
        v61 = v9;
        sub_1000C3BA0(&v59);
      }

      return 0;
    }
  }

  v57 = v15;
  v58 = v14;
  v17 = *v16;
  v18 = (*(*a4 + 56))(a4, 48);
  v19 = *a1;
  if (v17 != v18)
  {
    v20 = *v19;
    if ((v20 & 0x8000000000000000) == 0 && (*(a4[2] + 4 * v20) & 0x400) != 0)
    {
      v56 = v9;
      if (*a2 == v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = 0;
        do
        {
          v22 = *v19;
          if (v22 < 0)
          {
            break;
          }

          if ((*(a4[2] + 4 * v22) & 0x400) == 0)
          {
            break;
          }

          v21 = (*(*a4 + 72))(a4) + 10 * v21 - 48;
          ++v19;
        }

        while (v19 != *a2);
      }

      *a1 = v19;
      if (*a2 > v19)
      {
        v24 = *v19;
        if (v24 == (*(*a4 + 56))(a4, 37))
        {
          *a3 = v21 - 1;
          v25 = *a1 + 1;
          *a1 = v25;
          if (v58 == v57)
          {
            goto LABEL_95;
          }

          return 1;
        }

        v26 = **a1;
        if (v26 == (*(*a4 + 56))(a4, 36))
        {
          *a3 = v21 - 1;
          v19 = *a1 + 1;
          *a1 = v19;
          v9 = v56;
          goto LABEL_29;
        }

        *(a3 + 56) = v21;
        *a3 = -1;
        v31 = *a1;
        v9 = v56;
        goto LABEL_61;
      }

      if (a6)
      {
        v59 = &off_100438FB0;
        v60 = &v19[a5 - v8];
        v61 = v56;
        sub_1000C3BA0(&v59);
      }

      return 0;
    }
  }

  while (1)
  {
LABEL_29:
    if (v19 == *a2)
    {
      if (a6)
      {
        v59 = &off_100438FB0;
        v60 = &v19[a5 - v8];
        v61 = v9;
        sub_1000C3BA0(&v59);
      }

      return 1;
    }

    v28 = (*(*a4 + 72))(a4, *v19, 0);
    if (v28 > 0x2C)
    {
      break;
    }

    if (v28 <= 38)
    {
      if (v28 != 32)
      {
        if (v28 != 35)
        {
          goto LABEL_49;
        }

        *(a3 + 76) |= 0x600u;
        goto LABEL_28;
      }

      v27 = *(a3 + 112) | 2;
LABEL_27:
      *(a3 + 112) = v27;
      goto LABEL_28;
    }

    if (v28 != 39)
    {
      if (v28 != 43)
      {
        goto LABEL_49;
      }

      *(a3 + 76) |= 0x800u;
    }

LABEL_28:
    v19 = *a1 + 1;
    *a1 = v19;
  }

  if (v28 <= 60)
  {
    if (v28 != 45)
    {
      if (v28 != 48)
      {
        goto LABEL_49;
      }

      v27 = *(a3 + 112) | 1;
      goto LABEL_27;
    }

    *(a3 + 76) |= 0x20u;
    goto LABEL_28;
  }

  if (v28 == 61)
  {
    v27 = *(a3 + 112) | 4;
    goto LABEL_27;
  }

  if (v28 == 95)
  {
    *(a3 + 76) |= 0x10u;
    goto LABEL_28;
  }

LABEL_49:
  v29 = **a1;
  v30 = (*(*a4 + 56))(a4, 42);
  v31 = *a1;
  if (v29 == v30)
  {
    ++v31;
    goto LABEL_51;
  }

  if (v31 != *a2)
  {
    v32 = *v31;
    if ((v32 & 0x8000000000000000) == 0 && (*(a4[2] + 4 * v32) & 0x400) != 0)
    {
      *(a3 + 56) = 0;
      do
      {
        v33 = *v31;
        if (v33 < 0)
        {
          break;
        }

        if ((*(a4[2] + 4 * v33) & 0x400) == 0)
        {
          break;
        }

        *(a3 + 56) = 10 * *(a3 + 56) + (*(*a4 + 72))(a4) - 48;
        ++v31;
      }

      while (v31 != *a2);
LABEL_51:
      *a1 = v31;
    }
  }

LABEL_61:
  if (v31 >= *a2)
  {
    if (a6)
    {
      v59 = &off_100438FB0;
      v60 = &v31[a5 - v8];
      v61 = v9;
      sub_1000C3BA0(&v59);
    }

    return 1;
  }

  v34 = *v31;
  v35 = (*(*a4 + 56))(a4, 46);
  v36 = *a1;
  if (v34 == v35)
  {
    *a1 = ++v36;
    if (v36 != *a2)
    {
      v37 = *v36;
      v38 = (*(*a4 + 56))(a4, 42);
      v36 = *a1;
      if (v37 == v38)
      {
        v39 = 0;
        *a1 = ++v36;
        v56 = v9;
        if (v36 == *a2)
        {
          goto LABEL_109;
        }

        goto LABEL_75;
      }

      if (v36 != *a2)
      {
        v40 = *v36;
        if ((v40 & 0x8000000000000000) == 0 && (*(a4[2] + 4 * v40) & 0x400) != 0)
        {
          v36 = sub_1000C4640(a1, a2, (a3 + 64), a4);
          *a1 = v36;
          v39 = 1;
          v56 = v9;
          if (v36 == *a2)
          {
            goto LABEL_109;
          }

          goto LABEL_75;
        }
      }
    }

    v39 = 0;
    *(a3 + 64) = 0;
    v56 = v9;
    if (v36 == *a2)
    {
      goto LABEL_109;
    }

    goto LABEL_75;
  }

  v39 = 0;
  v56 = v9;
  if (v36 == *a2)
  {
LABEL_109:
    if (a6)
    {
      v59 = &off_100438FB0;
      v60 = &v36[a5 - v8];
      v61 = v56;
      sub_1000C3BA0(&v59);
    }

    return 1;
  }

LABEL_75:
  v41 = 0;
  while (2)
  {
    v42 = (*(*a4 + 72))(a4, *v36, 0);
    if (v42 <= 0x35)
    {
      switch(v42)
      {
        case '2':
          if (v41 != 51)
          {
            goto LABEL_94;
          }

          break;
        case '3':
          if (v41 != 73)
          {
            goto LABEL_94;
          }

          v41 = 51;
          goto LABEL_78;
        case '4':
          if (v41 != 54)
          {
LABEL_94:
            v25 = *a1;
            goto LABEL_95;
          }

          break;
        default:
          goto LABEL_96;
      }

      v41 = 0;
LABEL_78:
      v36 = (*a1 + 1);
      *a1 = v36;
      if (v36 == *a2)
      {
        goto LABEL_109;
      }

      continue;
    }

    break;
  }

  if (v42 - 73 <= 0x31)
  {
    if (((1 << (v42 - 73)) & 0x2400A80000008) != 0)
    {
      goto LABEL_78;
    }

    if (v42 == 73)
    {
      v41 = 73;
      goto LABEL_78;
    }
  }

  if (v42 == 54)
  {
    if (v41 != 73)
    {
      goto LABEL_94;
    }

    v41 = 54;
    goto LABEL_78;
  }

LABEL_96:
  v36 = *a1;
  v43 = v41 == 73 || v41 == 0;
  v44 = !v43;
  if (v36 >= *a2 || v44)
  {
    goto LABEL_109;
  }

  v45 = v58;
  if (v58 == v57 && (v46 = *v36, v47 = (*(*a4 + 56))(a4, 124), v36 = *a1, v43 = v46 == v47, v45 = v58, v43))
  {
    v48 = (v36 + 1);
LABEL_140:
    *a1 = v48;
  }

  else
  {
    switch((*(*a4 + 72))(a4, *v36, 0))
    {
      case 'A':
        v51 = *(a3 + 76) | 0x4000;
        *(a3 + 76) = v51;
        goto LABEL_130;
      case 'C':
      case 'c':
        *(a3 + 104) = 1;
        goto LABEL_136;
      case 'E':
        v52 = *(a3 + 76) | 0x4000;
        *(a3 + 76) = v52;
        goto LABEL_133;
      case 'F':
        v53 = *(a3 + 76) | 0x4000;
        *(a3 + 76) = v53;
        v50 = v53 | 4;
        goto LABEL_134;
      case 'G':
        *(a3 + 76) |= 0x4000u;
        goto LABEL_136;
      case 'S':
      case 's':
        if (v39)
        {
          *(a3 + 104) = *(a3 + 64);
        }

        *(a3 + 64) = 6;
        goto LABEL_135;
      case 'T':
        v49 = *a1 + 1;
        *a1 = v49;
        if (v49 >= *a2)
        {
          sub_1000C45D4(a6, &v49[a5 - v8], v56);
          return 0;
        }

        *(a3 + 72) = *v49;
        *(a3 + 112) |= 8u;
        *a3 = -2;
LABEL_135:
        v45 = v58;
LABEL_136:
        v25 = *a1 + 1;
        *a1 = v25;
        if (v45 != v57)
        {
          return 1;
        }

        if (v25 != *a2)
        {
          v54 = *v25;
          v55 = (*(*a4 + 56))(a4, 124);
          v25 = *a1;
          if (v54 == v55)
          {
            v48 = v25 + 1;
            goto LABEL_140;
          }
        }

        break;
      case 'X':
        *(a3 + 76) |= 0x4000u;
        goto LABEL_122;
      case 'a':
        v51 = *(a3 + 76);
LABEL_130:
        v50 = v51 & 0xFFFFFEB1 | 0x104;
        goto LABEL_134;
      case 'b':
        *(a3 + 76) |= 1u;
        goto LABEL_136;
      case 'd':
      case 'g':
      case 'i':
      case 'u':
        goto LABEL_136;
      case 'e':
        v52 = *(a3 + 76);
LABEL_133:
        v50 = v52 | 0x100;
        goto LABEL_134;
      case 'f':
        v50 = *(a3 + 76) | 4;
LABEL_134:
        *(a3 + 76) = v50;
        goto LABEL_135;
      case 'n':
        *a3 = -3;
        goto LABEL_136;
      case 'o':
        *(a3 + 76) = *(a3 + 76) & 0xFFFFFFB5 | 0x40;
        goto LABEL_136;
      case 'p':
      case 'x':
LABEL_122:
        *(a3 + 76) = *(a3 + 76) & 0xFFFFFFB5 | 8;
        goto LABEL_136;
      case 't':
        *(a3 + 72) = (*(*a4 + 56))(a4, 32);
        *(a3 + 112) |= 8u;
        *a3 = -2;
        goto LABEL_136;
      default:
        sub_1000C45D4(a6, &(*a1)[a5 - v8], v56);
        goto LABEL_136;
    }

LABEL_95:
    sub_1000C45D4(a6, &v25[a5 - v8], v56);
  }

  return 1;
}

void sub_1000C3BA0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  sub_1000C46F8(exception, a1);
}

void sub_1000C3C00(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v6 = a1[2];
  v7 = *a1;
  if (0xEEEEEEEEEEEEEEEFLL * ((v6 - *a1) >> 3) < a2)
  {
    if (!v7)
    {
      goto LABEL_42;
    }

    v8 = a1[1];
    v9 = *a1;
    if (v8 == v7)
    {
LABEL_41:
      a1[1] = v7;
      operator delete(v9);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
LABEL_42:
      if (a2 <= 0x222222222222222)
      {
        v22 = 0xEEEEEEEEEEEEEEEFLL * (v6 >> 3);
        v23 = 2 * v22;
        if (2 * v22 <= a2)
        {
          v23 = a2;
        }

        if (v22 >= 0x111111111111111)
        {
          v24 = 0x222222222222222;
        }

        else
        {
          v24 = v23;
        }

        if (v24 <= 0x222222222222222)
        {
          operator new();
        }
      }

      sub_10000FC84();
    }

    while (1)
    {
      if (*(v8 - 32) == 1)
      {
        std::locale::~locale((v8 - 24));
        *(v8 - 32) = 0;
        if ((*(v8 - 65) & 0x80000000) == 0)
        {
LABEL_8:
          if (*(v8 - 89) < 0)
          {
            goto LABEL_12;
          }

          goto LABEL_5;
        }
      }

      else if ((*(v8 - 65) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      operator delete(*(v8 - 88));
      if (*(v8 - 89) < 0)
      {
LABEL_12:
        operator delete(*(v8 - 112));
      }

LABEL_5:
      v8 -= 120;
      if (v8 == v7)
      {
        v9 = *a1;
        goto LABEL_41;
      }
    }
  }

  v10 = (a1[1] - v7) >> 3;
  v11 = 0xEEEEEEEEEEEEEEEFLL * v10;
  if (0xEEEEEEEEEEEEEEEFLL * v10 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0xEEEEEEEEEEEEEEEFLL * v10;
  }

  if (v12)
  {
    v13 = v7 + 104;
    do
    {
      *(v13 - 104) = *a3;
      std::string::operator=((v13 - 96), (a3 + 8));
      std::string::operator=((v13 - 72), (a3 + 32));
      v15 = *(a3 + 72);
      *(v13 - 48) = *(a3 + 56);
      *(v13 - 32) = v15;
      if (*(v13 - 16) == 1)
      {
        v16 = (v13 - 8);
        if (*(a3 + 88))
        {
          std::locale::operator=(v16, (a3 + 96));
        }

        else
        {
          std::locale::~locale(v16);
          *(v13 - 16) = 0;
        }
      }

      else if (*(a3 + 88))
      {
        std::locale::locale((v13 - 8), (a3 + 96));
        *(v13 - 16) = 1;
      }

      v14 = *(a3 + 104);
      *(v13 + 8) = *(a3 + 112);
      *v13 = v14;
      v13 += 120;
      --v12;
    }

    while (v12);
  }

  if (a2 <= v11)
  {
    v20 = a1[1];
    v21 = *a1 + 120 * a2;
    while (1)
    {
      if (v20 == v21)
      {
        a1[1] = v21;
        return;
      }

      if (*(v20 - 32) == 1)
      {
        std::locale::~locale((v20 - 24));
        *(v20 - 32) = 0;
        if (*(v20 - 65) < 0)
        {
LABEL_37:
          operator delete(*(v20 - 88));
          if ((*(v20 - 89) & 0x80000000) == 0)
          {
            goto LABEL_30;
          }

          goto LABEL_38;
        }
      }

      else if (*(v20 - 65) < 0)
      {
        goto LABEL_37;
      }

      if ((*(v20 - 89) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

LABEL_38:
      operator delete(*(v20 - 112));
LABEL_30:
      v20 -= 120;
    }
  }

  v17 = a1[1];
  v18 = v17 + 120 * (a2 - v11);
  v19 = 120 * a2 - 120 * v11;
  do
  {
    sub_1000C4198(a1, v17, a3);
    v17 += 120;
    v19 -= 120;
  }

  while (v19);
  a1[1] = v18;
}

void sub_1000C3F30(uint64_t a1, unint64_t a2, int a3)
{
  v3 = *(a1 + 8);
  v4 = a2 - v3;
  if (a2 <= v3)
  {
    *(a1 + 8) = a2;
    return;
  }

  v6 = *(a1 + 16);
  v7 = v6 << 6;
  if (v6 << 6 < v4 || v3 > (v6 << 6) - v4)
  {
    __dst = 0;
    v24 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      sub_10000FC84();
    }

    v10 = v6 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v7 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    sub_1000C4284(&__dst, v11);
    v12 = a1;
    v13 = *a1;
    v14 = *(a1 + 8);
    *&v24 = v14 + v4;
    v16 = __dst;
    if (v14 < 1)
    {
      LODWORD(v17) = 0;
    }

    else
    {
      v15 = v14 >> 6;
      if (v14 >= 0x40)
      {
        memmove(__dst, v13, 8 * v15);
        v12 = a1;
      }

      v16 += v15;
      LODWORD(v17) = v14 & 0x3F;
      if ((v14 & 0x3F) != 0)
      {
        *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> -v17) | *(v13 + v15) & (0xFFFFFFFFFFFFFFFFLL >> -v17);
      }

      v13 = *v12;
    }

    *v12 = __dst;
    __dst = v13;
    v18 = *(v12 + 8);
    *(v12 + 8) = v24;
    v24 = v18;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v16 = (*a1 + 8 * (v3 >> 6));
    v17 = *(a1 + 8) & 0x3FLL;
    *(a1 + 8) = a2;
  }

  if (v4)
  {
    if (a3)
    {
      if (v17)
      {
        if ((64 - v17) >= v4)
        {
          v19 = v4;
        }

        else
        {
          v19 = (64 - v17);
        }

        *v16++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v17 - v19)) & (-1 << v17);
        v4 -= v19;
      }

      v20 = v4 >> 6;
      if (v4 >= 0x40)
      {
        memset(v16, 255, 8 * v20);
      }

      if ((v4 & 0x3F) != 0)
      {
        v21 = v16[v20] | (0xFFFFFFFFFFFFFFFFLL >> -(v4 & 0x3F));
LABEL_43:
        v16[v20] = v21;
      }
    }

    else
    {
      if (v17)
      {
        if ((64 - v17) >= v4)
        {
          v22 = v4;
        }

        else
        {
          v22 = (64 - v17);
        }

        *v16++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v17 - v22)) & (-1 << v17));
        v4 -= v22;
      }

      v20 = v4 >> 6;
      if (v4 >= 0x40)
      {
        bzero(v16, 8 * v20);
      }

      if ((v4 & 0x3F) != 0)
      {
        v21 = v16[v20] & ~(0xFFFFFFFFFFFFFFFFLL >> -(v4 & 0x3F));
        goto LABEL_43;
      }
    }
  }
}

void sub_1000C4180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000C4198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v5 = (a2 + 8);
  if (*(a3 + 31) < 0)
  {
    result = sub_100003228(v5, *(a3 + 8), *(a3 + 16));
    if ((*(a3 + 55) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *(a3 + 8);
    *(a2 + 24) = *(a3 + 24);
    *v5 = v6;
    if ((*(a3 + 55) & 0x80000000) == 0)
    {
LABEL_3:
      v7 = *(a3 + 32);
      *(a2 + 48) = *(a3 + 48);
      *(a2 + 32) = v7;
      goto LABEL_6;
    }
  }

  result = sub_100003228((a2 + 32), *(a3 + 32), *(a3 + 40));
LABEL_6:
  v9 = *(a3 + 56);
  *(a2 + 72) = *(a3 + 72);
  *(a2 + 56) = v9;
  *(a2 + 88) = 0;
  if (*(a3 + 88) == 1)
  {
    result = std::locale::locale((a2 + 96), (a3 + 96));
    *(a2 + 88) = 1;
  }

  v10 = *(a3 + 104);
  *(a2 + 112) = *(a3 + 112);
  *(a2 + 104) = v10;
  return result;
}

void sub_1000C4268(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C4284(uint64_t a1, unint64_t a2)
{
  if (a2 > *(a1 + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }
}

std::string *sub_1000C43B0(std::string *this, std::string *a2, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v5 = a3 - a2;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == a2)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v9 = this->__r_.__value_.__r.__words[2];
    v6 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v8 = this->__r_.__value_.__r.__words[0];
    v7 = HIBYTE(v9);
    if (this->__r_.__value_.__r.__words[0] > a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (a3 == a2)
    {
      return this;
    }

    v6 = 22;
    LOBYTE(v7) = *(&this->__r_.__value_.__s + 23);
    v8 = this;
    if (this > a2)
    {
LABEL_12:
      if (v6 - size < v5)
      {
        v13 = a3;
        v14 = a2;
        std::string::__grow_by(this, v6, size - v6 + v5, size, size, 0, 0);
        a3 = v13;
        a2 = v14;
        this->__r_.__value_.__l.__size_ = size;
        v10 = this;
        if ((*(&this->__r_.__value_.__s + 23) & 0x80) == 0)
        {
LABEL_14:
          v11 = v10 + size;
          if (a3 == a2)
          {
            goto LABEL_15;
          }

          goto LABEL_19;
        }
      }

      else
      {
        v10 = this;
        if ((v7 & 0x80) == 0)
        {
          goto LABEL_14;
        }
      }

      v11 = (this->__r_.__value_.__r.__words[0] + size);
      if (a3 == a2)
      {
LABEL_15:
        v11[v5] = 0;
        v12 = v5 + size;
        if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_16:
          *(&this->__r_.__value_.__s + 23) = v12 & 0x7F;
          return this;
        }

LABEL_20:
        this->__r_.__value_.__l.__size_ = v12;
        return this;
      }

LABEL_19:
      memmove(v11, a2, v5);
      v11[v5] = 0;
      v12 = v5 + size;
      if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_20;
    }
  }

  if ((&v8->__r_.__value_.__l.__data_ + size + 1) <= a2)
  {
    goto LABEL_12;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  if (v5 > 0x16)
  {
    operator new();
  }

  v19 = a3 - a2;
  if (a3 != a2)
  {
    memmove(__dst, a2, v5);
  }

  *(__dst + v5) = 0;
  if ((v19 & 0x80u) == 0)
  {
    v15 = __dst;
  }

  else
  {
    v15 = __dst[0];
  }

  if ((v19 & 0x80u) == 0)
  {
    v16 = v19;
  }

  else
  {
    v16 = __dst[1];
  }

  std::string::append(this, v15, v16);
  if (v19 < 0)
  {
    operator delete(__dst[0]);
  }

  return this;
}

void sub_1000C45B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000C45D4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3[0] = &off_100438FB0;
    v3[1] = a2;
    v3[2] = a3;
    sub_1000C3BA0(v3);
  }

  return result;
}

char *sub_1000C4640(char **a1, char **a2, void *a3, void *a4)
{
  *a3 = 0;
  for (i = *a1; i != *a2; ++i)
  {
    v8 = *i;
    if (v8 < 0)
    {
      break;
    }

    if ((*(a4[2] + 4 * v8) & 0x400) == 0)
    {
      break;
    }

    *a3 = 10 * *a3 + (*(*a4 + 72))(a4) - 48;
  }

  return i;
}

__n128 sub_1000C46F8(__n128 *a1, uint64_t a2)
{
  a1->n128_u64[0] = &off_100431F30;
  a1->n128_u64[1] = &off_100438FB0;
  result = *(a2 + 8);
  a1[1] = result;
  a1[3] = 0uLL;
  a1[4].n128_u32[0] = -1;
  a1->n128_u64[0] = &off_100438F38;
  a1->n128_u64[1] = off_100438F68;
  a1[2] = off_100438F90;
  return result;
}

std::exception *sub_1000C47A4(std::exception *a1)
{
  a1[4].__vftable = &off_100431E10;
  v2 = a1[5].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[5].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);
  return a1;
}

void sub_1000C49D0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  sub_1000C4D84(exception, a1);
}

void sub_1000C4A2C(std::exception *a1)
{
  a1[4].__vftable = &off_100431E10;
  v2 = a1[5].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[5].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);

  operator delete();
}

void sub_1000C4AD0(std::exception *a1)
{
  a1[3].__vftable = &off_100431E10;
  v1 = a1[4].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[4].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[4].__vftable = 0;
    }
  }

  std::exception::~exception(a1);
}

void sub_1000C4B64(std::exception *a1)
{
  a1[3].__vftable = &off_100431E10;
  v1 = a1[4].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[4].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[4].__vftable = 0;
    }
  }

  std::exception::~exception(a1);

  operator delete();
}

void sub_1000C4C20(std::exception *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 3);
}

void sub_1000C4CA8(std::exception *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 3);

  operator delete();
}

void sub_1000C4D4C(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

__n128 sub_1000C4D84(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  *(a1 + 8) = &off_100438FB0;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 40);
  *(a1 + 32) = &off_100431E10;
  *(a1 + 40) = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = result;
  *a1 = &off_100438F38;
  *(a1 + 8) = off_100438F68;
  *(a1 + 32) = off_100438F90;
  return result;
}

void sub_1000C4EC0(std::locale **a1, unint64_t a2, uint64_t a3)
{
  v6 = a1[1];
  v5 = a1[2];
  if (0xEEEEEEEEEEEEEEEFLL * ((v5 - v6) >> 3) < a2)
  {
    v7 = 0xEEEEEEEEEEEEEEEFLL * ((v6 - *a1) >> 3);
    v8 = v7 + a2;
    if (v7 + a2 > 0x222222222222222)
    {
      sub_10000FC84();
    }

    v9 = 0xEEEEEEEEEEEEEEEFLL * (v5 - *a1);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x111111111111111)
    {
      v10 = 0x222222222222222;
    }

    else
    {
      v10 = v8;
    }

    v22 = a1;
    if (v10)
    {
      if (v10 <= 0x222222222222222)
      {
        operator new();
      }

      sub_10000D444();
    }

    v13 = 120 * v7;
    __p = 0;
    v19 = v13;
    v20 = v13;
    v21 = 0;
    v14 = 120 * a2;
    v15 = v13 + 120 * a2;
    do
    {
      sub_1000C4198(v22, v13, a3);
      v13 += 120;
      v14 -= 120;
    }

    while (v14);
    v20 = v15;
    sub_1000C50F8(a1, &__p);
    v16 = v19;
    while (1)
    {
      while (1)
      {
        v17 = v20;
        if (v20 == v16)
        {
          if (__p)
          {
            operator delete(__p);
          }

          return;
        }

        v20 -= 120;
        if (*(v17 - 32) != 1)
        {
          break;
        }

        std::locale::~locale((v17 - 24));
        *(v17 - 32) = 0;
        if ((*(v17 - 65) & 0x80000000) == 0)
        {
          goto LABEL_23;
        }

LABEL_26:
        operator delete(*(v17 - 88));
        if (*(v17 - 89) < 0)
        {
          goto LABEL_27;
        }
      }

      if (*(v17 - 65) < 0)
      {
        goto LABEL_26;
      }

LABEL_23:
      if (*(v17 - 89) < 0)
      {
LABEL_27:
        operator delete(*(v17 - 112));
      }
    }
  }

  if (a2)
  {
    v11 = v6 + 120 * a2;
    v12 = 120 * a2;
    do
    {
      sub_1000C4198(a1, v6, a3);
      v6 += 120;
      v12 -= 120;
    }

    while (v12);
    v6 = v11;
  }

  a1[1] = v6;
}

void sub_1000C50C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000C5294(va);
  _Unwind_Resume(a1);
}

void sub_1000C50E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000C5294(va);
  _Unwind_Resume(a1);
}

void sub_1000C50F8(std::locale **a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = (a2[1] + *a1 - v5);
  if (v5 != *a1)
  {
    v7 = 0;
    do
    {
      v9 = &v4[v7];
      v10 = &v6[v7];
      LODWORD(v10->__locale_) = v4[v7].__locale_;
      v11 = *&v4[v7 + 1].__locale_;
      v10[3].__locale_ = v4[v7 + 3];
      *&v10[1].__locale_ = v11;
      v9[2].__locale_ = 0;
      v9[3].__locale_ = 0;
      v9[1].__locale_ = 0;
      v12 = *&v4[v7 + 4].__locale_;
      v10[6].__locale_ = v4[v7 + 6];
      *&v10[4].__locale_ = v12;
      v9[5].__locale_ = 0;
      v9[6].__locale_ = 0;
      v9[4].__locale_ = 0;
      v13 = *&v4[v7 + 7].__locale_;
      *&v10[9].__locale_ = *&v4[v7 + 9].__locale_;
      *&v10[7].__locale_ = v13;
      LOBYTE(v10[11].__locale_) = 0;
      if (LOBYTE(v4[v7 + 11].__locale_) == 1)
      {
        std::locale::locale(v10 + 12, v9 + 12);
        LOBYTE(v10[11].__locale_) = 1;
      }

      locale = v9[13].__locale_;
      LODWORD(v10[14].__locale_) = v9[14].__locale_;
      v10[13].__locale_ = locale;
      v7 += 15;
    }

    while (&v9[15] != v5);
    v14 = v4 + 12;
    do
    {
      if (LOBYTE(v14[-1].__locale_) == 1)
      {
        std::locale::~locale(v14);
        LOBYTE(v14[-1].__locale_) = 0;
        if ((SHIBYTE(v14[-6].__locale_) & 0x80000000) == 0)
        {
LABEL_10:
          if (SHIBYTE(v14[-9].__locale_) < 0)
          {
            goto LABEL_14;
          }

          goto LABEL_7;
        }
      }

      else if ((SHIBYTE(v14[-6].__locale_) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      operator delete(v14[-8].__locale_);
      if (SHIBYTE(v14[-9].__locale_) < 0)
      {
LABEL_14:
        operator delete(v14[-11].__locale_);
      }

LABEL_7:
      v15 = v14 + 3;
      v14 += 15;
    }

    while (v15 != v5);
  }

  a2[1] = v6;
  v16 = *a1;
  *a1 = v6;
  a1[1] = v16;
  a2[1] = v16;
  v17 = a1[1];
  a1[1] = a2[2];
  a2[2] = v17;
  v18 = a1[2];
  a1[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
}

void **sub_1000C5294(void **a1)
{
  sub_1000C52C8(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1000C52C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 120;
    if (*(i - 32) == 1)
    {
      std::locale::~locale((i - 24));
      *(i - 32) = 0;
      if ((*(i - 65) & 0x80000000) == 0)
      {
LABEL_6:
        if (*(i - 89) < 0)
        {
          goto LABEL_10;
        }

        continue;
      }
    }

    else if ((*(i - 65) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(*(i - 88));
    if (*(i - 89) < 0)
    {
LABEL_10:
      operator delete(*(i - 112));
    }
  }
}

uint64_t *sub_1000C5364(uint64_t *result, void *a2)
{
  v2 = *(result + 13);
  v3 = *(result + 14);
  if (v2 >= v3)
  {
    if ((result[11] & 4) != 0)
    {
      v9[0] = &off_1004390B0;
      v9[1] = v2;
      v9[2] = v3;
      sub_1000C5470(v9);
    }
  }

  else
  {
    v5 = *result;
    v4 = result[1];
    if (v4 != *result)
    {
      v6 = 0;
      v7 = 0;
      do
      {
        if (*(v5 + v6) == *(result + 13))
        {
          if (*(result + 184))
          {
            v8 = (result + 24);
          }

          else
          {
            v8 = 0;
          }

          sub_1000C54D0(a2, v5 + v6, (v5 + v6 + 8), result + 12, v8);
        }

        ++v7;
        v6 += 120;
      }

      while (v7 < 0xEEEEEEEEEEEEEEEFLL * ((v4 - v5) >> 3));
    }
  }

  return result;
}

void sub_1000C5470(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  sub_1000C5FF4(exception, a1);
}

void sub_1000C5EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  std::locale::~locale((v34 - 240));
  sub_1000C6CF4(va);
  sub_1000C6CF4(&a13);
  _Unwind_Resume(a1);
}

void sub_1000C5EE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, std::locale a35)
{
  if (a2)
  {
    sub_10000D388(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C5F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12, ...)
{
  va_start(va, a12);
  std::locale::~locale(&a12);
  sub_1000C6CF4(va);
  _Unwind_Resume(a1);
}

void sub_1000C5F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000C6CF4(va);
  _Unwind_Resume(a1);
}

void sub_1000C5FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000C6CF4(va);
  _Unwind_Resume(a1);
}

void sub_1000C5FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000C6CF4(va);
  _Unwind_Resume(a1);
}

__n128 sub_1000C5FF4(__n128 *a1, uint64_t a2)
{
  a1->n128_u64[0] = &off_100431F30;
  a1->n128_u64[1] = &off_1004390B0;
  result = *(a2 + 8);
  a1[1] = result;
  a1[3] = 0uLL;
  a1[4].n128_u32[0] = -1;
  a1->n128_u64[0] = &off_100439038;
  a1->n128_u64[1] = off_100439068;
  a1[2] = off_100439090;
  return result;
}

std::exception *sub_1000C60A0(std::exception *a1)
{
  a1[4].__vftable = &off_100431E10;
  v2 = a1[5].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[5].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);
  return a1;
}

void sub_1000C62CC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  sub_1000C6680(exception, a1);
}

void sub_1000C6328(std::exception *a1)
{
  a1[4].__vftable = &off_100431E10;
  v2 = a1[5].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[5].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);

  operator delete();
}

void sub_1000C63CC(std::exception *a1)
{
  a1[3].__vftable = &off_100431E10;
  v1 = a1[4].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[4].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[4].__vftable = 0;
    }
  }

  std::exception::~exception(a1);
}

void sub_1000C6460(std::exception *a1)
{
  a1[3].__vftable = &off_100431E10;
  v1 = a1[4].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[4].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[4].__vftable = 0;
    }
  }

  std::exception::~exception(a1);

  operator delete();
}

void sub_1000C651C(std::exception *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 3);
}

void sub_1000C65A4(std::exception *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 3);

  operator delete();
}

void sub_1000C6648(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

__n128 sub_1000C6680(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  *(a1 + 8) = &off_1004390B0;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 40);
  *(a1 + 32) = &off_100431E10;
  *(a1 + 40) = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = result;
  *a1 = &off_100439038;
  *(a1 + 8) = off_100439068;
  *(a1 + 32) = off_100439090;
  return result;
}

void sub_1000C67BC(void *a1, uint64_t a2)
{
  a1[1] = a2;
  a1[9] = 0;
  a1[2] = 0;
  operator new();
}

void sub_1000C68E4(_Unwind_Exception *a1)
{
  sub_1000C70F4(v1);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1000C690C(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1000C6928(uint64_t a1, std::ios_base *this, const std::locale *a3)
{
  if (*(a1 + 32) == 1)
  {
    std::ios_base::getloc(this);
    std::ios_base::imbue(this, (a1 + 40));
    std::locale::~locale(&v16);
    rdbuf = this->__rdbuf_;
    if (rdbuf)
    {
      (*(rdbuf->__locale_ + 2))(this->__rdbuf_, a1 + 40);
      std::locale::locale(&v15, rdbuf + 1);
      std::locale::operator=(rdbuf + 1, (a1 + 40));
      std::locale::~locale(&v15);
    }

    v6 = &v14;
  }

  else
  {
    if (!a3)
    {
      goto LABEL_10;
    }

    std::ios_base::getloc(this);
    std::ios_base::imbue(this, a3);
    std::locale::~locale(&v16);
    v8 = this->__rdbuf_;
    if (v8)
    {
      (*(v8->__locale_ + 2))(this->__rdbuf_, a3);
      std::locale::locale(&v15, v8 + 1);
      std::locale::operator=(v8 + 1, a3);
      std::locale::~locale(&v15);
    }

    v6 = &v13;
  }

  std::locale::~locale(v6);
LABEL_10:
  if (*a1 != -1)
  {
    this->__width_ = *a1;
  }

  v9 = *(a1 + 8);
  if (v9 != -1)
  {
    this->__precision_ = v9;
  }

  v10 = *(a1 + 16);
  if (*(a1 + 16))
  {
    if (this[1].__fmtflags_ == -1)
    {
      std::ios_base::getloc(this);
      v11 = std::locale::use_facet(&v16, &std::ctype<char>::id);
      v12 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v16);
      this[1].__fmtflags_ = v12;
    }

    this[1].__fmtflags_ = v10;
  }

  this->__fmtflags_ = *(a1 + 20);
  std::ios_base::clear(this, *(a1 + 24));
  this->__exceptions_ = *(a1 + 28);
  std::ios_base::clear(this, this->__rdstate_);
}

void sub_1000C6B60(std::string *a1, const std::string::value_type *a2, std::string::size_type a3, std::string::size_type a4, std::string::value_type a5, char a6, int a7, int a8)
{
  std::string::resize(a1, 0, 0);
  if (a4 >= 1 && a4 > a3)
  {
    v16 = a4 - a3 - (a7 != 0);
    std::string::reserve(a1, a4);
    if (a8)
    {
      v17 = v16 / 2;
      v16 -= v16 / 2;
      if (!v16)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if ((a6 & 0x20) != 0)
      {
        v17 = a4 - a3 - (a7 != 0);
        if (!a7)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v17 = 0;
      if (!v16)
      {
LABEL_18:
        if (!a7)
        {
LABEL_20:
          if (a3)
          {
            std::string::append(a1, a2, a3);
          }

          if (v17)
          {

            std::string::append(a1, v17, a5);
          }

          return;
        }

LABEL_19:
        std::string::append(a1, 1uLL, a7);
        goto LABEL_20;
      }
    }

    std::string::append(a1, v16, a5);
    goto LABEL_18;
  }

  if (a7)
  {
    v18 = a3 + 1;
  }

  else
  {
    v18 = a3;
  }

  std::string::reserve(a1, v18);
  if (a7)
  {
    std::string::append(a1, 1uLL, a7);
  }

  if (a3)
  {

    std::string::append(a1, a2, a3);
  }
}

uint64_t sub_1000C6CF4(uint64_t a1)
{
  v2 = *(std::ostream::~ostream() + 16);
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
      if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 24))(v2);
      }
    }
  }

  std::ios::~ios();
  return a1;
}

void sub_1000C6DB0(uint64_t a1)
{
  v1 = *(std::ostream::~ostream() + 16);
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 16))(v1);
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
      }
    }
  }

  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C6E8C(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  v2 = *(v1 + 2);
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
      if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 24))(v2);
      }
    }
  }

  return std::ios::~ios();
}

void sub_1000C6F68(void *a1)
{
  v1 = a1 + *(*a1 - 24);
  std::ostream::~ostream();
  v2 = *(v1 + 2);
  if (v2)
  {
    if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v2 + 16))(v2);
      if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 24))(v2);
      }
    }
  }

  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000C7078(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N5boost2io22basic_oaltstringstreamIcNSt3__111char_traitsIcEENS2_9allocatorIcEEE5No_OpE")
  {
    return a1 + 24;
  }

  if (((v2 & "N5boost2io22basic_oaltstringstreamIcNSt3__111char_traitsIcEENS2_9allocatorIcEEE5No_OpE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N5boost2io22basic_oaltstringstreamIcNSt3__111char_traitsIcEENS2_9allocatorIcEEE5No_OpE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N5boost2io22basic_oaltstringstreamIcNSt3__111char_traitsIcEENS2_9allocatorIcEEE5No_OpE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 24;
  }

  return 0;
}

uint64_t sub_1000C70F4(uint64_t result)
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

void sub_1000C71A0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  sub_1000C7200(exception, a1);
}

__n128 sub_1000C7200(__n128 *a1, uint64_t a2)
{
  a1->n128_u64[0] = &off_100431F30;
  a1->n128_u64[1] = &off_100439318;
  result = *(a2 + 8);
  a1[1] = result;
  a1[3] = 0uLL;
  a1[4].n128_u32[0] = -1;
  a1->n128_u64[0] = &off_1004392A0;
  a1->n128_u64[1] = off_1004392D0;
  a1[2] = off_1004392F8;
  return result;
}

std::exception *sub_1000C72AC(std::exception *a1)
{
  a1[4].__vftable = &off_100431E10;
  v2 = a1[5].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[5].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);
  return a1;
}

void sub_1000C74D8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x48uLL);
  sub_1000C788C(exception, a1);
}

void sub_1000C7534(std::exception *a1)
{
  a1[4].__vftable = &off_100431E10;
  v2 = a1[5].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[5].__vftable = 0;
  }

  std::exception::~exception(a1 + 1);

  operator delete();
}

void sub_1000C75D8(std::exception *a1)
{
  a1[3].__vftable = &off_100431E10;
  v1 = a1[4].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[4].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[4].__vftable = 0;
    }
  }

  std::exception::~exception(a1);
}

void sub_1000C766C(std::exception *a1)
{
  a1[3].__vftable = &off_100431E10;
  v1 = a1[4].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~exception + 4))(a1[4].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[4].__vftable = 0;
    }
  }

  std::exception::~exception(a1);

  operator delete();
}

void sub_1000C7728(std::exception *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 3);
}

void sub_1000C77B0(std::exception *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::exception::~exception(a1 - 3);

  operator delete();
}

void sub_1000C7854(std::exception *a1)
{
  std::exception::~exception(a1);

  operator delete();
}

__n128 sub_1000C788C(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  *(a1 + 8) = &off_100439318;
  *(a1 + 16) = *(a2 + 16);
  v3 = *(a2 + 40);
  *(a1 + 32) = &off_100431E10;
  *(a1 + 40) = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = result;
  *a1 = &off_1004392A0;
  *(a1 + 8) = off_1004392D0;
  *(a1 + 32) = off_1004392F8;
  return result;
}

void *sub_1000C79C8(uint64_t **a1)
{

  return sub_1000E661C(a1, 0, 0);
}

void sub_1000C79E4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1000C7A54()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1000C7AC4(void *a1, const std::string *a2)
{
  sub_100002F5C(a2, 0, &v11);
  if (v11 <= 1)
  {
    __cxa_allocate_exception(0x40uLL);
    std::logic_error::logic_error(&v10, "Path given to logger doesn't exist");
    sub_10010A984(&v9);
  }

  sub_100002F5C(a2, 0, &v11);
  if (v11 != 3)
  {
    __cxa_allocate_exception(0x40uLL);
    std::logic_error::logic_error(&v10, "Path given to logger isn't a directory");
    sub_10010A984(&v8);
  }

  (*(*a1 + 48))(&v11, a1);
  if (sub_10001A918(a2, v11 + 8))
  {
    std::string::operator=((v11 + 8), a2);
    v4 = v11;
    if (*(v11 + 32) == 1)
    {
      (*(*v11 + 16))();
      v4 = v11;
    }

    v5 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = a1[2];
    a1[1] = v4;
    a1[2] = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  v7 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

void sub_1000C7DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, std::invalid_argument a22, std::invalid_argument a23)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100047E90(&a23);
  if (a9)
  {
    operator delete(a9);
    std::invalid_argument::~invalid_argument(&a22);
    if (v24)
    {
LABEL_8:
      __cxa_free_exception(v23);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    std::invalid_argument::~invalid_argument(&a22);
    if (v24)
    {
      goto LABEL_8;
    }
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000C7F10(uint64_t result, __int128 *a2)
{
  *result = off_100439398;
  if (*(a2 + 23) < 0)
  {
    v3 = result;
    sub_100003228((result + 8), *a2, *(a2 + 1));
    return v3;
  }

  else
  {
    v2 = *a2;
    *(result + 24) = *(a2 + 2);
    *(result + 8) = v2;
  }

  return result;
}

uint64_t sub_1000C7F84(uint64_t result)
{
  *result = off_100439398;
  if (*(result + 31) < 0)
  {
    v1 = result;
    operator delete(*(result + 8));
    return v1;
  }

  return result;
}

void sub_1000C7FE0(void *a1)
{
  v2 = *(a1[1] + 32);
  v3 = strlen(("P11EventLogger" & 0x7FFFFFFFFFFFFFFFLL));
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v18 = v3;
  if (v3)
  {
    memmove(&__dst, ("P11EventLogger" & 0x7FFFFFFFFFFFFFFFLL), v3);
  }

  *(&__dst + v4) = 0;
  sub_1000DF33C(&__dst, &v19);
  if (v18 < 0)
  {
    operator delete(__dst);
  }

  v5 = *&v19.__r_.__value_.__l.__data_;
  v14[0] = v19.__r_.__value_.__r.__words[2];
  *(v14 + 3) = *(&v19.__r_.__value_.__r.__words[2] + 3);
  v6 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
  if (v2)
  {
    sub_1000474A4(&__dst, "");
    sub_1000C9084(&v19, "Unexpected attempt to start logging that is already logging: ");
    if (v6 < 0)
    {
      sub_100003228(&v20, v5, *(&v5 + 1));
    }

    else
    {
      v20 = v5;
      *v21 = v14[0];
      *&v21[3] = *(v14 + 3);
      v22 = v6;
    }

    sub_1000E661C(&__dst, &v19, 2);
    if (v22 < 0)
    {
      operator delete(v20);
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_29:
        if ((v18 & 0x80000000) == 0)
        {
          goto LABEL_30;
        }

LABEL_33:
        operator delete(__dst);
LABEL_30:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    operator delete(v19.__r_.__value_.__l.__data_);
    if ((v18 & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  (*(*a1 + 48))(&__dst, a1);
  v7 = __dst;
  v8 = *(__dst + 31);
  if (v8 < 0)
  {
    v8 = __dst[2];
  }

  if (!v8)
  {
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v19, "Log directory not specified before call to start logging");
    std::runtime_error::runtime_error(&__p, &v19);
    __p.__vftable = &off_1004338D0;
    sub_10010A984(&v13);
  }

  *(__dst + 32) = 1;
  (*(*v7 + 16))(v7);
  v10 = __dst;
  v9 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a1[2];
  a1[1] = v10;
  a1[2] = v9;
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = v17;
  if (v17)
  {
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }
}

void sub_1000C838C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::runtime_error a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (v31 < 0)
  {
    operator delete(v30);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C84B4(void *a1)
{
  (*(*a1 + 48))(&v8);
  v2 = v8;
  *(v8 + 32) = 0;
  *(&__str.__r_.__value_.__s + 23) = 0;
  __str.__r_.__value_.__s.__data_[0] = 0;
  std::string::operator=((v2 + 8), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v4 = v8;
  v3 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a1[2];
  a1[1] = v4;
  a1[2] = v3;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = v9;
  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void sub_1000C85E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10002BB1C(&a16);
  _Unwind_Resume(a1);
}

void sub_1000C86C4(uint64_t a1)
{
  *a1 = off_100439398;
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

void sub_1000C8758(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10003BEA8(("PN5boost10filesystem4pathE" & 0x7FFFFFFFFFFFFFFFLL), &v13);
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
  sub_1000C8AD0(&v17, a1 + 8);
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

void sub_1000C89F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
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

void *sub_1000C8AD0(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    v2 = a1;
    sub_100003228(__p, *a2, *(a2 + 8));
    a1 = v2;
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  result = sub_100049770(a1, __p, 38, 34);
  if (SHIBYTE(v6) < 0)
  {
    v4 = result;
    operator delete(__p[0]);
    return v4;
  }

  return result;
}

void sub_1000C8B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C8E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000C8FD8(va);
  _Unwind_Resume(a1);
}

void sub_1000C8E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1000C8FD8(va1);
  _Unwind_Resume(a1);
}

void sub_1000C8F4C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_10038301C(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1000C8F90(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_1000C8FD8(uint64_t result)
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

std::string *sub_1000C9084@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_1000C90B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C90D4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1000C9144()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_1000C91B4(uint64_t a1)
{
  *a1 = off_100439558;
  v2 = *(a1 + 56);
  if (v2)
  {
    free(v2);
    *(a1 + 64) = 0;
  }

  *a1 = off_1004346F8;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
      if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 24))(v3);
      }
    }
  }

  return a1;
}

uint64_t sub_1000C92A4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    std::ostream::flush();
  }

  if (*(a1 + 72) == 1)
  {
    *(a1 + 80) = off_100439558;
    v2 = *(a1 + 136);
    if (v2)
    {
      free(v2);
      *(a1 + 144) = 0;
    }

    *(a1 + 80) = off_1004346F8;
    v3 = *(a1 + 96);
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    *(a1 + 72) = 0;
  }

  v4 = *(a1 + 56);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 40);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

void sub_1000C9474(uint64_t a1, const std::string *a2)
{
  *a1 = 0;
  std::string::operator=((a1 + 8), a2);
  sub_1000EE460(a1 + 8);
}

void sub_1000C98CC(_Unwind_Exception *a1)
{
  sub_1000C9DDC(v1 - 64);
  sub_1000C9DDC(v1 - 48);
  _Unwind_Resume(a1);
}

uint64_t sub_1000C98E8(uint64_t a1)
{
  result = sub_10010C670();
  if ((result - *(a1 + 160)) >= 0x12A05F201)
  {
    *(a1 + 160) = sub_10010C758();

    return std::ostream::flush();
  }

  return result;
}

uint64_t sub_1000C9950(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    wireless_diagnostics::google::protobuf::io::FileOutputStream::Flush(v2);
  }

  v3 = *(a1 + 56);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 40);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if ((*(a1 + 31) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 31) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*(a1 + 8));
  return a1;
}

void sub_1000C9A40(uint64_t a1, const std::string *a2)
{
  *a1 = 0;
  v2 = (a1 + 8);
  std::string::operator=((a1 + 8), a2);
  sub_1000EC3F8(v2, 2, 420, &v3);
  operator new();
}

void sub_1000C9BEC(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

wireless_diagnostics::google::protobuf::io::FileOutputStream *sub_1000C9C18(uint64_t a1)
{
  result = sub_10010C670();
  if (result - *(a1 + 72) >= 0x12A05F201)
  {
    *(a1 + 72) = sub_10010C758();
    result = *(a1 + 48);
    if (result)
    {

      return wireless_diagnostics::google::protobuf::io::FileOutputStream::Flush(result);
    }
  }

  return result;
}

uint64_t sub_1000C9DDC(uint64_t result)
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

uint64_t sub_1000C9E88(uint64_t result)
{
  *result = off_100439440;
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    v2 = result;
    (**(result + 32))(result + 32);
    result = v2;
    *(v1 - 8) = 0;
  }

  return result;
}

void sub_1000C9F08(uint64_t a1)
{
  *a1 = off_100439440;
  if (*(a1 + 24) == 1)
  {
    v2 = a1 + 32;
    (**(a1 + 32))(a1 + 32);
    *(v2 - 8) = 0;
  }

  operator delete();
}

uint64_t sub_1000C9FA4(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    result = (**(result + 32))();
    *(v1 - 8) = 0;
  }

  return result;
}

uint64_t sub_1000C9FFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N5boost6detail13sp_ms_deleterIN6apache6thrift9transport22TOutputStreamTransportEEE")
  {
    return a1 + 24;
  }

  if (((v2 & "N5boost6detail13sp_ms_deleterIN6apache6thrift9transport22TOutputStreamTransportEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N5boost6detail13sp_ms_deleterIN6apache6thrift9transport22TOutputStreamTransportEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N5boost6detail13sp_ms_deleterIN6apache6thrift9transport22TOutputStreamTransportEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 24;
  }

  return 0;
}

void *sub_1000CA078(void *result)
{
  *result = off_1004394A0;
  v1 = result[3];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_1000CA10C(void *a1)
{
  *a1 = off_1004394A0;
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_1000CA1B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    if (v2)
    {
      v3 = v2;
      if (!std::filebuf::close())
      {
        v4 = (v3 + *(*v3 - 24));
        v5 = v4->__rdstate_ | 4;

        std::ios_base::clear(v4, v5);
      }
    }
  }
}

void sub_1000CA370(_Unwind_Exception *a1)
{
  std::exception::~exception(v1);
  operator delete(v2);
  __cxa_free_exception(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CA3A8(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    sub_1000CA290();
  }

  return 0;
}

void sub_1000CA480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t sub_1000CA4B8(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
  }

  sub_1000CA5E0(a1, &v7);
  v5 = v8;
  if (v8)
  {
    if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v5 + 16))(v5);
      if (atomic_fetch_add(v5 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v5 + 24))(v5);
      }
    }
  }

  *a1 = off_100439558;
  *(a1 + 32) = *a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 256;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return a1;
}

void *sub_1000CA5E0(void *a1, uint64_t *a2)
{
  v3 = a2[1];
  v7 = *a2;
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  v4 = sub_10004C1AC(a1, &v7);
  v5 = v8;
  if (v8)
  {
    if (atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v5 + 16))(v5, v4);
      if (atomic_fetch_add(v5 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v5 + 24))(v5);
      }
    }
  }

  *a1 = off_100439700;
  return a1;
}

void sub_1000CA6E4(uint64_t a1)
{
  *a1 = off_100439558;
  v2 = *(a1 + 56);
  if (v2)
  {
    free(v2);
    *(a1 + 64) = 0;
  }

  *a1 = off_1004346F8;
  v3 = *(a1 + 16);
  if (v3)
  {
    if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
      if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 24))(v3);
      }
    }
  }

  operator delete();
}

uint64_t sub_1000CA810(uint64_t a1, uint64_t a2, char a3, unsigned int a4)
{
  std::ostream::write();
  std::ostream::write();
  return 3;
}

uint64_t sub_1000CA8B8(uint64_t a1, char a2, char a3, unsigned int a4)
{
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  return 6;
}

uint64_t sub_1000CA948(uint64_t a1, char a2, unsigned int a3)
{
  std::ostream::write();
  std::ostream::write();
  return 5;
}

uint64_t sub_1000CA9B4(uint64_t a1, char a2, unsigned int a3)
{
  std::ostream::write();
  std::ostream::write();
  return 5;
}

uint64_t sub_1000CAB88(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x8000000000000000) != 0)
  {
    v2 = a2[1];
    if (v2 >> 31)
    {
      exception = __cxa_allocate_exception(0x28uLL);
      exception[2] = 0;
      exception[3] = 0;
      *exception = &off_100434888;
      exception[1] = 0;
      *(exception + 8) = 3;
    }
  }

  std::ostream::write();
  if (v2)
  {
    std::ostream::write();
  }

  return (v2 + 4);
}

uint64_t sub_1000CAC60(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x8000000000000000) != 0)
  {
    v2 = a2[1];
    if (v2 >> 31)
    {
      exception = __cxa_allocate_exception(0x28uLL);
      exception[2] = 0;
      exception[3] = 0;
      *exception = &off_100434888;
      exception[1] = 0;
      *(exception + 8) = 3;
    }
  }

  std::ostream::write();
  if (v2)
  {
    std::ostream::write();
  }

  return (v2 + 4);
}

uint64_t sub_1000CAD74(uint64_t a1, uint64_t a2, _DWORD *a3, _WORD *a4)
{
  v7 = 1;
  sub_1000CA3A8(*(a1 + 32), &v10, 1);
  v8 = v10;
  *a3 = v10;
  if (v8)
  {
    sub_1000CA3A8(*(a1 + 32), &v11, 2);
    v8 = bswap32(v11) >> 16;
    v7 = 3;
  }

  *a4 = v8;
  return v7;
}

uint64_t sub_1000CAE20(uint64_t a1, BOOL *a2)
{
  sub_1000CA3A8(*(a1 + 32), &v4, 1);
  *a2 = v4 != 0;
  return 1;
}

uint64_t sub_1000CAE6C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_1000CA3A8(*(a1 + 32), &v7, 1);
  if (v7)
  {
    v5 = *a2 | a3;
  }

  else
  {
    v5 = *a2 & ~a3;
  }

  *a2 = v5;
  return 1;
}

uint64_t sub_1000CAEE0(uint64_t a1, _BYTE *a2)
{
  sub_1000CA3A8(*(a1 + 32), &v4, 1);
  *a2 = v4;
  return 1;
}

uint64_t sub_1000CAF24(uint64_t a1, _WORD *a2)
{
  sub_1000CA3A8(*(a1 + 32), &v4, 2);
  *a2 = bswap32(v4) >> 16;
  return 2;
}

uint64_t sub_1000CAF70(uint64_t a1, _DWORD *a2)
{
  sub_1000CA3A8(*(a1 + 32), &v4, 4);
  *a2 = bswap32(v4);
  return 4;
}

uint64_t sub_1000CAFB8(uint64_t a1, void *a2)
{
  sub_1000CA3A8(*(a1 + 32), &v4, 8);
  *a2 = bswap64(v4);
  return 8;
}

uint64_t sub_1000CB000(uint64_t a1, void *a2)
{
  sub_1000CA3A8(*(a1 + 32), &v4, 8);
  *a2 = bswap64(v4);
  return 8;
}

void *sub_1000CB0F4(void *result)
{
  *result = off_1004346F8;
  v1 = result[2];
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

void sub_1000CB1BC(void *a1)
{
  *a1 = off_1004346F8;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 16))(v1);
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
      }
    }
  }

  operator delete();
}

uint64_t sub_1000CB2A4(uint64_t a1, uint64_t *a2, int a3, unsigned int a4)
{
  if (*(a1 + 49) == 1)
  {
    std::ostream::write();
    v5 = *(a2 + 23);
    if ((v5 & 0x8000000000000000) == 0 || (v5 = a2[1], !(v5 >> 31)))
    {
      std::ostream::write();
      if (v5)
      {
        std::ostream::write();
      }

      std::ostream::write();
      return (v5 + 12);
    }

LABEL_12:
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 3;
  }

  v7 = *(a2 + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v7 = a2[1];
    if (v7 >> 31)
    {
      goto LABEL_12;
    }
  }

  std::ostream::write();
  if (v7)
  {
    std::ostream::write();
  }

  std::ostream::write();
  std::ostream::write();
  return (v7 + 9);
}

uint64_t sub_1000CB47C(uint64_t a1, std::string *a2, _DWORD *a3, _DWORD *a4)
{
  sub_1000CA3A8(*(a1 + 32), &v14, 4);
  v8 = bswap32(v14);
  if ((v8 & 0x80000000) != 0)
  {
    if (WORD1(v8) != 32769)
    {
      exception = __cxa_allocate_exception(0x28uLL);
      sub_1000474A4(&v14, "Bad version identifier");
      sub_10004CFA0(exception, 4, &v14);
    }

    *a3 = v8;
    sub_1000CA3A8(*(a1 + 32), &v14, 4);
    v11 = sub_1000CB68C(a1, a2, bswap32(v14));
    sub_1000CA3A8(*(a1 + 32), &v14, 4);
    *a4 = bswap32(v14);
    return (v11 + 12);
  }

  else
  {
    if (*(a1 + 48) == 1)
    {
      v12 = __cxa_allocate_exception(0x28uLL);
      sub_1000474A4(&v14, "No version identifier... old protocol client in strict mode?");
      sub_10004CFA0(v12, 4, &v14);
    }

    v9 = sub_1000CB68C(a1, a2, v8);
    sub_1000CA3A8(*(a1 + 32), &v14, 1);
    *a3 = v14;
    sub_1000CA3A8(*(a1 + 32), &v14, 4);
    *a4 = bswap32(v14);
    return (v9 + 9);
  }
}

void sub_1000CB648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v16)
  {
    __cxa_free_exception(v15);
  }

  _Unwind_Resume(exception_object);
}

std::string::size_type sub_1000CB68C(uint64_t a1, std::string *this, std::string::size_type __n)
{
  if ((__n & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 2;
  }

  v5 = *(a1 + 40);
  if (v5 >= 1 && v5 < __n)
  {
    v11 = __cxa_allocate_exception(0x28uLL);
    v11[2] = 0;
    v11[3] = 0;
    *v11 = &off_100434888;
    v11[1] = 0;
    *(v11 + 8) = 3;
  }

  if (__n)
  {
    std::string::resize(this, __n, 0);
    if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = this;
    }

    else
    {
      v8 = this->__r_.__value_.__r.__words[0];
    }

    sub_1000CA3A8(*(a1 + 32), v8, __n);
    return __n;
  }

  else
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      this->__r_.__value_.__s.__data_[0] = 0;
      *(&this->__r_.__value_.__s + 23) = 0;
    }

    return __n;
  }
}

uint64_t sub_1000CB7E4(uint64_t a1, _DWORD *a2, _DWORD *a3, signed int *a4)
{
  sub_1000CA3A8(*(a1 + 32), &v13, 1);
  *a2 = v13;
  sub_1000CA3A8(*(a1 + 32), &v14, 1);
  *a3 = v14;
  sub_1000CA3A8(*(a1 + 32), &v15, 4);
  v8 = bswap32(v15);
  if (v8 < 0)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 2;
  }

  v9 = *(a1 + 44);
  if (v9 && v8 > v9)
  {
    v12 = __cxa_allocate_exception(0x28uLL);
    v12[2] = 0;
    v12[3] = 0;
    *v12 = &off_100434888;
    v12[1] = 0;
    *(v12 + 8) = 3;
  }

  *a4 = v8;
  return 6;
}

uint64_t sub_1000CB91C(uint64_t a1, _DWORD *a2, signed int *a3)
{
  sub_1000CA3A8(*(a1 + 32), &v12, 1);
  *a2 = v12;
  sub_1000CA3A8(*(a1 + 32), &v13, 4);
  v6 = bswap32(v13);
  if (v6 < 0)
  {
    exception = __cxa_allocate_exception(0x28uLL);
    exception[2] = 0;
    exception[3] = 0;
    *exception = &off_100434888;
    exception[1] = 0;
    *(exception + 8) = 2;
  }

  v7 = *(a1 + 44);
  if (v7)
  {
    v8 = v6 <= v7;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v11 = __cxa_allocate_exception(0x28uLL);
    v11[2] = 0;
    v11[3] = 0;
    *v11 = &off_100434888;
    v11[1] = 0;
    *(v11 + 8) = 3;
  }

  *a3 = v6;
  return 5;
}

uint64_t sub_1000CBA38(uint64_t a1, int a2)
{
  v3 = 0;
  if (a2 <= 9)
  {
    if (a2 <= 3)
    {
      if (a2 != 2 && a2 != 3)
      {
        return v3;
      }

      v8 = *(a1 + 32);
      v9 = 1;
      v10 = 1;
    }

    else
    {
      if (a2 == 4)
      {
LABEL_23:
        v8 = *(a1 + 32);
        v9 = 8;
        v10 = 8;
        goto LABEL_25;
      }

      if (a2 != 6)
      {
        if (a2 == 8)
        {
          sub_1000CA3A8(*(a1 + 32), &v15, 4);
          return 4;
        }

        return v3;
      }

      v8 = *(a1 + 32);
      v9 = 2;
      v10 = 2;
    }

LABEL_25:
    sub_1000CA3A8(v8, &v15, v10);
    return v9;
  }

  if (a2 > 12)
  {
    switch(a2)
    {
      case 13:
        v14 = 0;
        LODWORD(v15.__r_.__value_.__l.__data_) = 0;
        v16 = 0;
        v3 = sub_1000CB7E4(a1, &v15, &v16, &v14);
        if (v14)
        {
          for (i = 0; i < v14; ++i)
          {
            v13 = sub_1000CBA38(a1, v15.__r_.__value_.__l.__data_) + v3;
            v3 = v13 + sub_1000CBA38(a1, v16);
          }
        }

        break;
      case 14:
        LODWORD(v15.__r_.__value_.__l.__data_) = 0;
        v16 = 0;
        v3 = sub_1000CB91C(a1, &v15, &v16);
        if (v16)
        {
          for (j = 0; j < v16; ++j)
          {
            v3 = sub_1000CBA38(a1, v15.__r_.__value_.__l.__data_) + v3;
          }
        }

        break;
      case 15:
        LODWORD(v15.__r_.__value_.__l.__data_) = 0;
        v16 = 0;
        v3 = sub_1000CB91C(a1, &v15, &v16);
        if (v16)
        {
          for (k = 0; k < v16; ++k)
          {
            v3 = sub_1000CBA38(a1, v15.__r_.__value_.__l.__data_) + v3;
          }
        }

        break;
    }

    return v3;
  }

  if (a2 == 10)
  {
    goto LABEL_23;
  }

  if (a2 != 11)
  {
    memset(&v15, 0, sizeof(v15));
    std::string::assign(&v15, "");
    for (m = 0; ; m += sub_1000CBA38(a1, v5) + 3)
    {
      sub_1000CA3A8(*(a1 + 32), &v16, 1);
      v5 = v16;
      if (!v16)
      {
        break;
      }

      sub_1000CA3A8(*(a1 + 32), &v16, 2);
    }

    v3 = (m + 1);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_37;
    }

    return v3;
  }

  memset(&v15, 0, sizeof(v15));
  sub_1000CA3A8(*(a1 + 32), &v16, 4);
  v3 = sub_1000CB68C(a1, &v15, bswap32(v16)) + 4;
  if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return v3;
  }

LABEL_37:
  operator delete(v15.__r_.__value_.__l.__data_);
  return v3;
}

void sub_1000CBD18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000CBD3C(uint64_t result)
{
  if (*result == 1)
  {
    *(result + 8) = off_100439558;
    if (*(result + 64))
    {
      v1 = result;
      free(*(result + 64));
      result = v1;
      *(v1 + 72) = 0;
    }

    *(result + 8) = off_1004346F8;
    v2 = *(result + 24);
    if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
    {
      v3 = result;
      (*(*v2 + 16))(v2);
      result = v3;
      if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 24))(v2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void sub_1000CBE70(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100439878;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000CBEF0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1004398C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000CBF6C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1000CBFDC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_1000CC1E4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1000CC1A4);
}

void sub_1000CC1F4(_Unwind_Exception *a1)
{
  sub_1000D9BA0(v4);
  *v1 = v2;
  sub_10002BB1C(v3);
  _Unwind_Resume(a1);
}

void sub_1000CC520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_1000D9BFC(va);
  sub_10002BB1C(&a11);
  sub_10002BB1C(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CC550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10002BB1C(va);
  sub_10002BB1C(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CC56C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10002BB1C(v10 - 64);
  sub_10002BB1C(va);
  sub_10002BB1C(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CC89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_1000D9BFC(va);
  sub_10002BB1C(&a11);
  sub_10002BB1C(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CC8CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10002BB1C(va);
  sub_10002BB1C(&a9);
  _Unwind_Resume(a1);
}

void sub_1000CC8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10002BB1C(v10 - 64);
  sub_10002BB1C(va);
  sub_10002BB1C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CC90C(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    *(a1 + 80) = 0;
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_100340E34(v3 - 16);
      }

      while (v3 != v2);
      v4 = *(a1 + 40);
    }

    *(a1 + 48) = v2;
    operator delete(v4);
  }

  *a1 = off_100439350;
  v5 = *(a1 + 16);
  if (!v5 || atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return a1;
}

uint64_t sub_1000CCA80(uint64_t a1, _DWORD **a2)
{
  if (*(a1 + 68) != 1)
  {
    result = (*(*(a1 + 24) + 32))();
    if (!result)
    {
      return result;
    }

LABEL_5:
    v6 = a1 + 32;
    return sub_1000D3C5C(*a2, &v6);
  }

  v5 = sub_10004FF1C(*a2);
  sub_100246158(a1 + 72, v5);
  result = (*(*(a1 + 24) + 32))();
  if (result)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_1000CCB4C(_BYTE *a1, _DWORD **a2)
{
  if (a1[44] != 1)
  {
    result = (*(*a1 + 32))(a1);
    if (!result)
    {
      return result;
    }

LABEL_5:
    v6 = a1 + 8;
    return sub_1000D3C5C(*a2, &v6);
  }

  v5 = sub_10004FF1C(*a2);
  sub_100246158((a1 + 48), v5);
  result = (*(*a1 + 32))(a1);
  if (result)
  {
    goto LABEL_5;
  }

  return result;
}

void sub_1000CCC30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v16[2] = v6;
  v17 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  rep = std::chrono::system_clock::now().__d_.__rep_;
  v15[1] = 0;
  v16[0] = 0;
  v15[0] = off_100449AC0;
  *(v16 + 5) = 0;
  sub_100126648(v15, a3);
  sub_10012A88C(v15, 1000 * rep);
  sub_10031DD14(v15, v4);
  v8 = *(v6 + 6736);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_1000CCEEC;
  block[3] = &unk_100439C30;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10031E014(v11, v15);
  block[4] = v6;
  v13 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10031E014(&v14, v11);
  dispatch_sync(v8, block);
  nullsub_214();
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  nullsub_214();
  v9 = v13;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  nullsub_214();
  v10 = v17;
  if (v17)
  {
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }
}

void sub_1000CCE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10002BB1C(v10 + 32);
  sub_1000CCFE0(&a9);

  nullsub_214();
  sub_10002BB1C(v11 - 64);
  _Unwind_Resume(a1);
}

void sub_1000CCED0(_Unwind_Exception *a1)
{
  nullsub_214();
  sub_10002BB1C(v1 - 64);
  _Unwind_Resume(a1);
}

double sub_1000CCF00(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *&result = sub_10031E014(a1 + 48, a2 + 48).n128_u64[0];
  return result;
}

void sub_1000CCF58(uint64_t a1)
{
  nullsub_214();
  v2 = *(a1 + 40);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t sub_1000CCFE0(uint64_t a1)
{
  nullsub_214();
  result = a1;
  v3 = *(a1 + 8);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_1000CD068(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CD148(v4 + 3064, a2);
  sub_1000CCC30(a1, 7, *(a2 + 8));
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t sub_1000CD148(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    sub_1000474A4(v6, "");
    sub_1000BDA70("Unexpected request to record legacy data for ", &v8);
    sub_100049000(a1 + 8, &v9);
    sub_1000E661C(v6, &v8, 2);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_5:
        if ((v7 & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_9:
        operator delete(v6[0]);
LABEL_6:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(v8.__r_.__value_.__l.__data_);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_1000C98E8(a1);
  sub_10013D6CC(a2, (a1 + 80));
  *a1 = 1;
  return a1;
}

void sub_1000CD274(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CD32C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 16);
  v5 = *(a1 - 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CD148(v4 + 3064, a2);
  sub_1000CCC30(a1 - 24, 7, *(a2 + 8));
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1000CD40C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 24);
  v5 = *(a1 - 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CD148(v4 + 3064, a2);
  sub_1000CCC30(a1 - 32, 7, *(a2 + 8));
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t sub_1000CD4EC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    sub_1000474A4(v6, "");
    sub_1000BDA70("Unexpected request to record legacy data for ", &v8);
    sub_100049000(a1 + 8, &v9);
    sub_1000E661C(v6, &v8, 2);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_5:
        if ((v7 & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_9:
        operator delete(v6[0]);
LABEL_6:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(v8.__r_.__value_.__l.__data_);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_1000C98E8(a1);
  sub_10012F2E4(a2, (a1 + 80));
  *a1 = 1;
  return a1;
}

void sub_1000CD618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CD6D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CD7B0(v4 + 1384, a2);
  sub_1000CCC30(a1, 11, *(a2 + 8));
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t sub_1000CD7B0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    sub_1000474A4(v6, "");
    sub_1000BDA70("Unexpected request to record legacy data for ", &v8);
    sub_100049000(a1 + 8, &v9);
    sub_1000E661C(v6, &v8, 2);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_5:
        if ((v7 & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_9:
        operator delete(v6[0]);
LABEL_6:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(v8.__r_.__value_.__l.__data_);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_1000C98E8(a1);
  sub_100130930(a2, (a1 + 80));
  *a1 = 1;
  return a1;
}

void sub_1000CD8DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CD994(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 16);
  v5 = *(a1 - 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CD7B0(v4 + 1384, a2);
  sub_1000CCC30(a1 - 24, 11, *(a2 + 8));
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1000CDA74(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 24);
  v5 = *(a1 - 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CD7B0(v4 + 1384, a2);
  sub_1000CCC30(a1 - 32, 11, *(a2 + 8));
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1000CDB54(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CDC34(v4 + 208, a2);
  sub_1000CCC30(a1, 14, *(a2 + 16));
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t sub_1000CDC34(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    sub_1000474A4(v6, "");
    sub_1000BDA70("Unexpected request to record legacy data for ", &v8);
    sub_100049000(a1 + 8, &v9);
    sub_1000E661C(v6, &v8, 2);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_5:
        if ((v7 & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_9:
        operator delete(v6[0]);
LABEL_6:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(v8.__r_.__value_.__l.__data_);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_1000C98E8(a1);
  sub_10012A8C0(a2, (a1 + 80));
  *a1 = 1;
  return a1;
}

void sub_1000CDD60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CDE18(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 16);
  v5 = *(a1 - 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CDC34(v4 + 208, a2);
  sub_1000CCC30(a1 - 24, 14, *(a2 + 16));
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1000CDEF8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 24);
  v5 = *(a1 - 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CDC34(v4 + 208, a2);
  sub_1000CCC30(a1 - 32, 14, *(a2 + 16));
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1000CDFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  v10[20] = v9;
  v10[21] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100336A98(a2, a3, a4, v10);
  sub_1000CE1BC(v9 + 4240, v10);
  sub_10013338C(v10);
  if ((*(a1 + 64) & 0x10) != 0)
  {
    sub_100336E1C(a2, a3, a4, v10);
    sub_1000C9C18(v9 + 6576);
    if (*(v9 + 6624))
    {
      sub_1000DBF74(v10);
    }

    *(v9 + 6576) = 1;
    sub_1000A9070(v10);
  }

  sub_1000CCC30(a1, 1, a2);
  if (*(a1 + 68) == 1)
  {
    if (*(a1 + 97) == 1)
    {
      sub_10024601C(a1 + 72, a2);
    }

    else
    {
      sub_100245FF0(a1 + 72, a2);
    }
  }

  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_1000CE15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000A9070(&a9);
  sub_10002BB1C(v9 - 64);
  _Unwind_Resume(a1);
}

void sub_1000CE178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10013338C(&a9);
  sub_10002BB1C(v9 - 64);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CE1BC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    sub_1000474A4(v6, "");
    sub_1000BDA70("Unexpected request to record legacy data for ", &v8);
    sub_100049000(a1 + 8, &v9);
    sub_1000E661C(v6, &v8, 2);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_5:
        if ((v7 & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_9:
        operator delete(v6[0]);
LABEL_6:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(v8.__r_.__value_.__l.__data_);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_1000C98E8(a1);
  sub_100133914(a2, (a1 + 80));
  *a1 = 1;
  return a1;
}

void sub_1000CE2E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CE3B0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CE490(v4 + 1720, a2);
  sub_1000CCC30(a1, 5, a2[1]);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t sub_1000CE490(uint64_t a1, void *a2)
{
  if (*(a1 + 48))
  {
    sub_1000474A4(v6, "");
    sub_1000BDA70("Unexpected request to record legacy data for ", &v8);
    sub_100049000(a1 + 8, &v9);
    sub_1000E661C(v6, &v8, 2);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_5:
        if ((v7 & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_9:
        operator delete(v6[0]);
LABEL_6:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(v8.__r_.__value_.__l.__data_);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_1000C98E8(a1);
  sub_10013CAF0(a2, (a1 + 80));
  *a1 = 1;
  return a1;
}

void sub_1000CE5BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CE674(uint64_t a1, void *a2)
{
  v4 = *(a1 - 16);
  v5 = *(a1 - 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CE490(v4 + 1720, a2);
  sub_1000CCC30(a1 - 24, 5, a2[1]);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1000CE754(uint64_t a1, void *a2)
{
  v4 = *(a1 - 24);
  v5 = *(a1 - 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CE490(v4 + 1720, a2);
  sub_1000CCC30(a1 - 32, 5, a2[1]);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1000CE834(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5[8] = v4;
  v5[9] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CE968(v4 + 40, a2);
  if ((*(a1 + 64) & 0x10) != 0)
  {
    sub_10031B130(v5);
  }

  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void sub_1000CE938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000A9070(&a9);
  sub_10002BB1C(v9 - 48);
  _Unwind_Resume(a1);
}

uint64_t sub_1000CE968(uint64_t a1, uint64_t a2)
{
  sub_1000C98E8(a1);
  sub_100129ABC(a2, (a1 + 80));
  if (*(a1 + 48))
  {
    std::ostream::write();
    std::ostream::write();
    std::ostream::write();
    std::ostream::write();
    std::ostream::write();
  }

  *a1 = 1;
  return a1;
}

void sub_1000CEB3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CE968(v2 + 2728, a2);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1000CEBF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 - 16);
  v3 = *(a1 - 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CE968(v2 + 2728, a2);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1000CECAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 - 24);
  v3 = *(a1 - 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CE968(v2 + 2728, a2);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1000CED88(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 <= 2)
  {
    sub_1000CCC30(a1, (a3 + 18), a2);
  }

  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v18 = v8;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = sub_1000CEFB0(v8, a2, a3, a4);
  v11 = *(v10 + 2);
  sub_10032C9CC(a2, 1000000000);
  if (([v11 appendPixelBuffer:a4 withPresentationTime:{buf, v18, v9}] & 1) == 0)
  {
    if (qword_10045B050 != -1)
    {
      sub_100383B80();
    }

    v12 = qword_10045B058;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [*v10 status];
      v14 = [*v10 error];
      v15 = [v14 description];
      v16 = v15;
      v17 = [v15 UTF8String];
      *buf = 67109634;
      v20 = a3;
      v21 = 2048;
      v22 = v13;
      v23 = 2080;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "failed to write frame for source %hhu - dropping. writer status = %ld %s", buf, 0x1Cu);
    }
  }

  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

unsigned __int8 *sub_1000CEFB0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v4 = (a1 + qword_1003CED38[a3]);
  if ((*v4 & 1) == 0)
  {
    sub_1000D2410(a2, a1 + 8, a3, a4, &v15);
    v5 = *v4;
    v6 = v15;
    v15 = 0;
    if (v5 == 1)
    {
      v7 = *(v4 + 1);
      *(v4 + 1) = v6;

      v8 = v16;
      *&v16 = 0;
      v9 = *(v4 + 2);
      *(v4 + 2) = v8;

      v10 = *(&v16 + 1);
      *(&v16 + 1) = 0;
      v11 = *(v4 + 3);
      *(v4 + 3) = v10;

      v12 = *(&v16 + 1);
    }

    else
    {
      v12 = 0;
      *(v4 + 1) = v6;
      v13 = v16;
      v16 = 0uLL;
      *(v4 + 1) = v13;
      *v4 = 1;
    }
  }

  return v4 + 8;
}

id sub_1000CF088(uint64_t a1)
{
  if (qword_10045B050 == -1)
  {
    v2 = qword_10045B058;
  }

  else
  {
    sub_100383BA8();
    v2 = qword_10045B058;
  }

  return v2;
}

void sub_1000CF0E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CE968(v2 + 2392, a2);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1000CF1A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 - 24);
  v3 = *(a1 - 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CE968(v2 + 2392, a2);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1000CF258(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((*(v2 + 6840) & 8) != 0)
  {
    sub_1000CF31C(v2 + 3400, a2);
  }

  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t sub_1000CF31C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    sub_1000474A4(v6, "");
    sub_1000BDA70("Unexpected request to record legacy data for ", &v8);
    sub_100049000(a1 + 8, &v9);
    sub_1000E661C(v6, &v8, 2);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_5:
        if ((v7 & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_9:
        operator delete(v6[0]);
LABEL_6:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(v8.__r_.__value_.__l.__data_);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_1000C98E8(a1);
  sub_1001237A8(a2, (a1 + 80));
  *a1 = 1;
  return a1;
}

void sub_1000CF448(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CF500(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CF5B8(v2 + 2560, a2);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t sub_1000CF5B8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    sub_1000474A4(v6, "");
    sub_1000BDA70("Unexpected request to record legacy data for ", &v8);
    sub_100049000(a1 + 8, &v9);
    sub_1000E661C(v6, &v8, 2);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_5:
        if ((v7 & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_9:
        operator delete(v6[0]);
LABEL_6:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(v8.__r_.__value_.__l.__data_);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_1000C98E8(a1);
  sub_100126ED0(a2, (a1 + 80));
  *a1 = 1;
  return a1;
}

void sub_1000CF6E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000CF79C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 - 16);
  v3 = *(a1 - 8);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CF5B8(v2 + 2560, a2);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1000CF854(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 - 24);
  v3 = *(a1 - 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CF5B8(v2 + 2560, a2);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1000CF90C(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v16 = v3;
  v17 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a3 - 1;
  if ((a3 - 1) >= 8 || ((0x8Bu >> v5) & 1) == 0)
  {
    __cxa_allocate_exception(0x40uLL);
    std::to_string(&v12, a3);
    v7 = std::string::insert(&v12, 0, "cmAttitudeReferenceFrame ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v13.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v13.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v13, " not implemented");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v15, &v14);
    v15.__vftable = &off_1004338D0;
    sub_10010A984(&v11);
  }

  sub_1000CE968(v3 + qword_1003CED50[v5], a2);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1000CFACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error((v30 - 64));
  if (a30 < 0)
  {
    operator delete(a25);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a17 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a18);
  if ((a17 & 0x80000000) == 0)
  {
LABEL_9:
    sub_10002BB1C(v30 - 48);
    _Unwind_Resume(a1);
  }

LABEL_6:
  operator delete(a12);
  goto LABEL_9;
}

void sub_1000CFBB8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5[8] = v4;
  v5[9] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CE968(v4 + 1888, a2);
  if ((*(a1 + 64) & 0x10) != 0)
  {
    sub_10031B904(v5);
  }

  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void sub_1000CFCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000A9070(&a9);
  sub_10002BB1C(v9 - 48);
  _Unwind_Resume(a1);
}

void sub_1000CFCFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5[8] = v4;
  v5[9] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CE968(v4 + 2224, a2);
  if ((*(a1 + 64) & 0x10) != 0)
  {
    sub_10031B674(v5);
  }

  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void sub_1000CFE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000A9070(&a9);
  sub_10002BB1C(v9 - 48);
  _Unwind_Resume(a1);
}

void sub_1000CFE40(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CFF20(v4 + 3232, a2);
  sub_1000CCC30(a1, 16, *(a2 + 8));
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t sub_1000CFF20(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    sub_1000474A4(v6, "");
    sub_1000BDA70("Unexpected request to record legacy data for ", &v8);
    sub_100049000(a1 + 8, &v9);
    sub_1000E661C(v6, &v8, 2);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_5:
        if ((v7 & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_9:
        operator delete(v6[0]);
LABEL_6:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(v8.__r_.__value_.__l.__data_);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_1000C98E8(a1);
  sub_10012B3DC(a2, (a1 + 80));
  *a1 = 1;
  return a1;
}

void sub_1000D004C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D0104(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 16);
  v5 = *(a1 - 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CFF20(v4 + 3232, a2);
  sub_1000CCC30(a1 - 24, 16, *(a2 + 8));
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1000D01E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 24);
  v5 = *(a1 - 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000CFF20(v4 + 3232, a2);
  sub_1000CCC30(a1 - 32, 16, *(a2 + 8));
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1000D02C4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6[8] = v5;
  v6[9] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000D0414(v5 + 376, a2);
  if ((*(a1 + 64) & 0x10) != 0)
  {
    sub_10031B3F0(v6);
  }

  sub_1000CCC30(a1, 17, *(a2 + 16));
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void sub_1000D03D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_1000D03E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1000A9070(&a9);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_1000D0400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D0414(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    sub_1000474A4(v6, "");
    sub_1000BDA70("Unexpected request to record legacy data for ", &v8);
    sub_100049000(a1 + 8, &v9);
    sub_1000E661C(v6, &v8, 2);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_5:
        if ((v7 & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_9:
        operator delete(v6[0]);
LABEL_6:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(v8.__r_.__value_.__l.__data_);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_1000C98E8(a1);
  sub_10012C030(a2, (a1 + 80));
  *a1 = 1;
  return a1;
}

void sub_1000D0540(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D0608(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000D06E8(v4 + 1552, a2);
  sub_1000CCC30(a1, 21, *(a2 + 8));
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t sub_1000D06E8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    sub_1000474A4(v6, "");
    sub_1000BDA70("Unexpected request to record legacy data for ", &v8);
    sub_100049000(a1 + 8, &v9);
    sub_1000E661C(v6, &v8, 2);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_5:
        if ((v7 & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_9:
        operator delete(v6[0]);
LABEL_6:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(v8.__r_.__value_.__l.__data_);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_1000C98E8(a1);
  sub_100134BE0(a2, (a1 + 80));
  *a1 = 1;
  return a1;
}

void sub_1000D0814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D08CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 16);
  v5 = *(a1 - 8);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000D06E8(v4 + 1552, a2);
  sub_1000CCC30(a1 - 24, 21, *(a2 + 8));
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1000D09AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 24);
  v5 = *(a1 - 16);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1000D06E8(v4 + 1552, a2);
  sub_1000CCC30(a1 - 32, 21, *(a2 + 8));
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1000D0A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 64) & 0x10) != 0)
  {
    v3 = *(a1 + 16);
    v4[8] = *(a1 + 8);
    v4[9] = v3;
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    sub_10031A444(v4);
  }
}

void sub_1000D0B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000A9070(&a9);
  sub_10002BB1C(v9 - 48);
  _Unwind_Resume(a1);
}

void sub_1000D0BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4[8] = *(a1 + 8);
  v4[9] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10031A7EC(v4);
}

void sub_1000D0C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000A9070(&a9);
  sub_10002BB1C(v9 - 48);
  _Unwind_Resume(a1);
}

void sub_1000D0CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4[8] = *(a1 + 8);
  v4[9] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10031A990(v4);
}

void sub_1000D0DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000A9070(&a9);
  sub_10002BB1C(v9 - 48);
  _Unwind_Resume(a1);
}

void sub_1000D0DDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4[8] = *(a1 + 8);
  v4[9] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10031AB90(v4);
}

void sub_1000D0EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000A9070(&a9);
  sub_10002BB1C(v9 - 48);
  _Unwind_Resume(a1);
}

void sub_1000D0EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4[25] = *(a1 + 8);
  v4[26] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10031AD90(v4);
}

void sub_1000D1088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000A9070(va);
  sub_10002BB1C(v3 - 80);
  _Unwind_Resume(a1);
}

void sub_1000D10A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002BB1C(v3 - 64);
  sub_10012E8E4(va);
  sub_10002BB1C(v3 - 80);
  _Unwind_Resume(a1);
}

void sub_1000D10E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4[8] = *(a1 + 8);
  v4[9] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10031AF90(v4);
}

void sub_1000D11D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000A9070(&a9);
  sub_10002BB1C(v9 - 48);
  _Unwind_Resume(a1);
}

void sub_1000D11FC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v13 = v4;
  v14 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = (v4 + 40);
  v6 = 40;
  *(a2 + 16) = 0;
  do
  {
    if (*v5 == 1)
    {
      sub_1000D1380(v5, &__p);
      sub_1000DC2C4(a2, *(a2 + 8), __p, v12, 0xAAAAAAAAAAAAAAABLL * ((v12 - __p) >> 3));
      v8 = __p;
      if (__p)
      {
        v9 = v12;
        v7 = __p;
        if (v12 != __p)
        {
          do
          {
            v10 = *(v9 - 1);
            v9 -= 3;
            if (v10 < 0)
            {
              operator delete(*v9);
            }
          }

          while (v9 != v8);
          v7 = __p;
        }

        v12 = v8;
        operator delete(v7);
      }
    }

    v6 += 168;
    v5 = (v4 + v6);
  }

  while (v6 != 4576);
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void sub_1000D1340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000D1490(v9);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

void sub_1000D135C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void **);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_1000D1490(va);
  sub_1000D1490(v3);
  sub_10002BB1C(va1);
  _Unwind_Resume(a1);
}

void sub_1000D1380(uint64_t a1@<X0>, __int128 **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (*(a1 + 48))
  {
    if ((*(a1 + 64) & 1) == 0)
    {
      v3 = a1;
      a2[1] = sub_100051D10(a2, a1 + 8);
      a1 = v3;
    }

    sub_1000D2304(a1 + 8, __p);
    v4 = a2[1];
    if (v4 >= a2[2])
    {
      v6 = sub_1000D3744(a2, __p);
      v7 = SHIBYTE(v9);
      a2[1] = v6;
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v5 = *__p;
      *(v4 + 16) = v9;
      *v4 = v5;
      a2[1] = (v4 + 24);
    }
  }

  else
  {
    a2[1] = sub_100051D10(a2, a1 + 8);
  }
}

void sub_1000D1454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1000D1490(v15);
    _Unwind_Resume(a1);
  }

  sub_1000D1490(v15);
  _Unwind_Resume(a1);
}

void ***sub_1000D1490(void ***a1)
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
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1000D1554(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    *(a1 + 80) = 0;
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_100340E34(v3 - 16);
      }

      while (v3 != v2);
      v4 = *(a1 + 40);
    }

    *(a1 + 48) = v2;
    operator delete(v4);
  }

  *a1 = off_100439350;
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete();
}

void sub_1000D1644(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = a1;
  sub_1000D38A8(&v4, &v5);
  v3 = std::string::insert(&v5, 0, "CombinedLogger ");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_1000D16C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D16E4(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    *(a1 + 56) = 0;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_100340E34(v3 - 16);
      }

      while (v3 != v2);
      v4 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
    operator delete(v4);
  }

  *(a1 - 24) = off_100439350;
  v5 = *(a1 - 8);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1000D17D8(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    *(a1 + 56) = 0;
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = *(a1 + 16);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_100340E34(v3 - 16);
      }

      while (v3 != v2);
      v4 = *(a1 + 16);
    }

    *(a1 + 24) = v2;
    operator delete(v4);
  }

  *(a1 - 24) = off_100439350;
  v5 = *(a1 - 8);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete();
}

void sub_1000D18D4(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = a1 - 24;
  memset(&v5, 0, sizeof(v5));
  if ((sub_1000D3958(&v4, &v5) & 1) == 0)
  {
    std::bad_cast::bad_cast(&v6);
    v6.__vftable = &off_100434090;
    sub_100049F88(&v6);
  }

  v3 = std::string::insert(&v5, 0, "CombinedLogger ");
  *a2 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }
}

void sub_1000D19AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, std::bad_cast a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D19DC(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    *(a1 + 48) = 0;
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_100340E34(v3 - 16);
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  *(a1 - 32) = off_100439350;
  v5 = *(a1 - 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_1000D1AD0(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    *(a1 + 48) = 0;
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 8);
    if (v3 != v2)
    {
      do
      {
        v3 = sub_100340E34(v3 - 16);
      }

      while (v3 != v2);
      v4 = *(a1 + 8);
    }

    *(a1 + 16) = v2;
    operator delete(v4);
  }

  *(a1 - 32) = off_100439350;
  v5 = *(a1 - 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete();
}

uint64_t sub_1000D1BCC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48))
  {
    sub_1000474A4(v6, "");
    sub_1000BDA70("Unexpected request to record legacy data for ", &v8);
    sub_100049000(a1 + 8, &v9);
    sub_1000E661C(v6, &v8, 2);
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_5:
        if ((v7 & 0x80000000) == 0)
        {
          goto LABEL_6;
        }

LABEL_9:
        operator delete(v6[0]);
LABEL_6:
        sub_10003F5D0(&__p);
      }
    }

    else if ((SHIBYTE(v8.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(v8.__r_.__value_.__l.__data_);
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_1000C98E8(a1);
  sub_10031DD1C(a2, (a1 + 80));
  *a1 = 1;
  return a1;
}

void sub_1000D1CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000D1DB0(void *a1, uint64_t a2, int a3, __int128 *a4)
{
  sub_10004DAA4(v23);
  v7 = strerror(a3);
  v8 = strlen(v7);
  v9 = sub_10003C2E4(&v24, v7, v8);
  sub_10003C2E4(v9, ", ", 2);
  v10 = std::ostream::operator<<();
  v11 = sub_10003C2E4(v10, ", ", 2);
  v12 = (*(*a2 + 16))(a2);
  v13 = strlen(v12);
  v14 = sub_10003C2E4(v11, v12, v13);
  v15 = sub_10003C2E4(v14, ", ", 2);
  if (*(a4 + 23) < 0)
  {
    v16 = *a4;
    v17 = *(a4 + 1);
    v18 = v15;
    sub_100003228(&v28, v16, v17);
    v15 = v18;
  }

  else
  {
    v28 = *a4;
    v29 = *(a4 + 2);
  }

  sub_100049770(v15, &v28, 38, 34);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28);
  }

  if (qword_10045B050 != -1)
  {
    sub_100383B80();
  }

  v19 = qword_10045B058;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    std::stringbuf::str();
    v20 = v29 >= 0 ? &v28 : v28;
    *buf = 136380675;
    v31 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error writing to stream: %{private}s", buf, 0xCu);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28);
    }
  }

  v24 = v21;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1000D2100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000D2150(uint64_t a1)
{
  *(a1 + 8) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  std::locale::locale((a1 + 8));
  *(a1 + 64) = 0;
  v2 = a1 + 64;
  *(a1 + 16) = a1 + 64;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 24;
  *(a1 + 24) = a1 + 64;
  *(a1 + 32) = a1 + 64;
  *(a1 + 88) = a1 + 64;
  std::string::resize((a1 + 64), 0x16uLL, 0);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v3 = *(a1 + 72);
  }

  *(a1 + 40) = v2;
  *(a1 + 48) = v2;
  *(a1 + 56) = v2 + v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *a1 = off_100433ED0;
  *(a1 + 160) = 0;
  std::ios_base::init((a1 + 112), a1);
  *(a1 + 248) = 0;
  *(a1 + 256) = -1;
  *(a1 + 272) = a1 + 264;
  *(a1 + 280) = a1 + 266;
  return a1;
}

void sub_1000D22DC(void *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v4;
  std::locale::~locale(v2);
  sub_10000D388(a1);
}

void sub_1000D2304(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100003228(&v7, *a1, *(a1 + 8));
  }

  else
  {
    v7 = *a1;
  }

  v6 = 3;
  LODWORD(__p) = 7627108;
  v3 = sub_10001AEA8(&v7, &__p);
  if (SHIBYTE(v3->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100003228(a2, v3->__r_.__value_.__l.__data_, v3->__r_.__value_.__l.__size_);
  }

  else
  {
    v4 = *&v3->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v3->__r_.__value_.__l + 2);
    *a2 = v4;
  }

  if ((v6 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v7.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_11:
    operator delete(v7.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p);
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_11;
  }
}

void sub_1000D23D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void sub_1000D2410(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  memset(&__p, 0, sizeof(__p));
  if (a3 == 2)
  {
    *(&v39.__r_.__value_.__s + 23) = 10;
    strcpy(&v39, "screen.mp4");
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      buf[0] = *a2;
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (a3 == 1)
  {
    *(&v39.__r_.__value_.__s + 23) = 9;
    strcpy(&v39, "front.mp4");
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      buf[0] = *a2;
      goto LABEL_11;
    }

LABEL_10:
    sub_100003228(buf, *a2, *(a2 + 8));
    goto LABEL_11;
  }

  if (a3)
  {
    goto LABEL_15;
  }

  *(&v39.__r_.__value_.__s + 23) = 8;
  strcpy(&v39, "back.mp4");
  if (*(a2 + 23) < 0)
  {
    goto LABEL_10;
  }

  buf[0] = *a2;
LABEL_11:
  sub_1000032E4(buf, &v39);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = buf[0];
  *(&buf[0].__r_.__value_.__s + 23) = 0;
  buf[0].__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

LABEL_15:
  v8 = sub_10032CA4C(a4);
  v9 = sub_10032CA58(a4);
  if (qword_10045B050 != -1)
  {
    sub_100383B80();
  }

  v10 = qword_10045B058;
  v11 = os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO);
  if (v11)
  {
    LODWORD(buf[0].__r_.__value_.__l.__data_) = 67109632;
    HIDWORD(buf[0].__r_.__value_.__r.__words[0]) = a3;
    LOWORD(buf[0].__r_.__value_.__r.__words[1]) = 2048;
    *(&buf[0].__r_.__value_.__r.__words[1] + 2) = v8;
    WORD1(buf[0].__r_.__value_.__r.__words[2]) = 2048;
    *(&buf[0].__r_.__value_.__r.__words[2] + 4) = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Recording source %hhu at %lu x %lu", buf, 0x1Cu);
  }

  v12 = off_10045C260(v11);
  v43[0] = v12;
  v13 = [NSNumber numberWithUnsignedLong:v8];
  v44[0] = v13;
  v14 = off_10045C268(v13);
  v43[1] = v14;
  v15 = [NSNumber numberWithUnsignedLong:v9];
  v44[1] = v15;
  v16 = off_10045C250(v15);
  v43[2] = v16;
  v17 = off_10045C258(v16);
  v44[2] = v17;
  v18 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:3];

  v19 = off_10045C218();
  v20 = off_10045C240(v19);
  v21 = [(objc_class *)v19 assetWriterInputWithMediaType:v20 outputSettings:v18];

  [v21 setExpectsMediaDataInRealTime:1];
  v22 = [NSURL alloc];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v24 = [NSString stringWithUTF8String:p_p, a1];
  v25 = [v22 initFileURLWithPath:v24];

  v26 = objc_alloc(off_10045C210());
  v27 = off_10045C248(v26);
  v36 = 0;
  v28 = [v26 initWithURL:v25 fileType:v27 error:&v36];
  v29 = v36;

  if (v29)
  {
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v39, "Failed to create video writer");
    std::runtime_error::runtime_error(&v38, &v39);
    v38.__vftable = &off_1004338D0;
    sub_10010A984(&v35);
  }

  if (([v28 canAddInput:v21] & 1) == 0)
  {
    sub_1000474A4(&v39, "");
    sub_1000D3660(buf, "Can't add video writer");
    sub_1000E661C(&v39, buf, 1);
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    sub_10003F5D0(&v38);
  }

  [v28 addInput:v21];
  a5[1] = 0;
  a5[2] = 0;
  v30 = v28;
  *a5 = v30;
  v31 = objc_alloc(off_10045C220());
  v40 = off_10045C290();
  v41 = &off_10044F180;
  v32 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
  a5[2] = [v31 initWithAssetWriterInput:v21 sourcePixelBufferAttributes:v32];

  sub_10032C9CC(v34, 1000000000);
  if (([v30 startWriting] & 1) == 0)
  {
    sub_1000474A4(&v39, "");
    sub_1000D36B0(buf, "Failed to start video asset writer");
    sub_1000E661C(&v39, buf, 1);
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    sub_10003F5D0(&v38);
  }

  memset(buf, 0, 24);
  [v30 startSessionAtSourceTime:buf];

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1000D2B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_1000D2D54(v43);

  if (a22 < 0)
  {
    operator delete(a17);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1000D3048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000D35B4(va);
  _Unwind_Resume(a1);
}

void sub_1000D305C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1000D35B4(va1);
  _Unwind_Resume(a1);
}

void sub_1000D30F8(uint64_t a1)
{

  operator delete();
}

void sub_1000D3144(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10003BEA8(("P11tag_nserror" & 0x7FFFFFFFFFFFFFFFLL), &v17);
  if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4.__i_ = &v17;
  }

  else
  {
    v4.__i_ = v17.__r_.__value_.__r.__words[0];
  }

  std::string::insert(&v17, v4, 91);
  v18 = v17;
  memset(&v17, 0, sizeof(v17));
  v5 = std::string::append(&v18, "] = ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = [*(a1 + 8) description];
  v8 = [v7 UTF8String];
  v9 = strlen(v8);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  v16 = v9;
  if (v9)
  {
    memmove(__p, v8, v9);
  }

  *(__p + v10) = 0;

  if ((v16 & 0x80u) == 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v12 = v16;
  }

  else
  {
    v12 = __p[1];
  }

  v13 = std::string::append(&v19, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v20, 10);
  *a2 = v20;
  memset(&v20, 0, sizeof(v20));
  if (v16 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_18:
      if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_23;
    }
  }

  else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_18;
  }

  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_24:
    operator delete(v17.__r_.__value_.__l.__data_);
    return;
  }

LABEL_23:
  operator delete(v18.__r_.__value_.__l.__data_);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_24;
  }
}

void sub_1000D3364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 57) < 0)
  {
    operator delete(*(v33 - 80));
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

  operator delete(__p);
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

void sub_1000D3528(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_10038301C(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1000D356C(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_1000D35B4(uint64_t result)
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

std::string *sub_1000D3660@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_1000D3694(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1000D36B0@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_1000D36E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D3700(id a1)
{
  v1 = os_log_create("com.apple.locationd.Pipeline", "Generic");
  v2 = qword_10045B058;
  qword_10045B058 = v1;
}

uint64_t sub_1000D3744(__int128 **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_10000FC84();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
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

    sub_10000D444();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v7 = 24 * v2 + 24;
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
      v12 += 24;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      v11 = (v11 + 24);
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 23) < 0)
      {
        operator delete(*v8);
      }

      v8 = (v8 + 24);
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

uint64_t sub_1000D38A8@<X0>(void *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  result = sub_1000D3958(a1, a2);
  if ((result & 1) == 0)
  {
    std::bad_cast::bad_cast(&v3);
    v3.__vftable = &off_100434090;
    sub_100049F88(&v3);
  }

  return result;
}

void sub_1000D392C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::bad_cast a10)
{
  std::bad_cast::~bad_cast(&a10);
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000D3958(void *a1, std::string *a2)
{
  sub_1000D2150(&v24);
  v3 = (v27 + *(v27[0] - 24));
  v3->__exceptions_ = 1;
  std::ios_base::clear(v3, v3->__rdstate_);
  v4 = std::ostream::operator<<();
  v5 = *(v4 + *(*v4 - 24) + 32);
  v6 = *(&v27[5] + *(v27[0] - 24));
  v8 = *(v6 + 40);
  v7 = *(v6 + 48);
  v27[21] = v8;
  v27[22] = v7;
  if ((v5 & 5) == 0)
  {
    v10 = &v7[-v8];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v14 = a2->__r_.__value_.__r.__words[2];
      v13 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v13 >= v10)
      {
        v15 = HIBYTE(v14);
LABEL_10:
        if ((v15 & 0x80u) == 0)
        {
          v12 = a2;
        }

        else
        {
          v12 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v8 == v7)
        {
          v16 = v12;
          goto LABEL_23;
        }

        if (v10 < 0x20 || v12 - v8 < 0x20)
        {
          v16 = v12;
          v17 = v8;
        }

        else
        {
          v16 = (v12 + (v10 & 0xFFFFFFFFFFFFFFE0));
          v17 = (v8 + (v10 & 0xFFFFFFFFFFFFFFE0));
          v18 = (v8 + 16);
          v19 = &v12->__r_.__value_.__r.__words[2];
          v20 = v10 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v21 = *v18;
            *(v19 - 1) = *(v18 - 1);
            *v19 = v21;
            v18 += 2;
            v19 += 4;
            v20 -= 32;
          }

          while (v20);
          if (v10 == (v10 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v16->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v10;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v10 & 0x7F;
            }

            v9 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v22 = *v17++;
          v16->__r_.__value_.__s.__data_[0] = v22;
          v16 = (v16 + 1);
        }

        while (v17 != v7);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v12 = a2;
      if (v10 <= 0x16)
      {
        goto LABEL_13;
      }

      v13 = 22;
    }

    std::string::__grow_by(a2, v13, v10 - v13, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v15) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v9 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v26 < 0)
  {
    operator delete(v25[7].__locale_);
  }

  std::locale::~locale(v25);
  return v9;
}

void sub_1000D3BC8(std::runtime_error *a1)
{
  a1[1].__vftable = &off_100431E10;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

uint64_t sub_1000D3C5C(uint64_t result, uint64_t *a2)
{
  v3 = result + 8;
  v4 = *result;
  switch(v4 ^ (v4 >> 31))
  {
    case 1:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 40))(*a2, v3);
      break;
    case 2:
      result = (*(**a2 + 48))(*a2, *(result + 16));
      break;
    case 3:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 56))(*a2, v3, *(v3 + 96));
      break;
    case 4:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 64))(*a2, v3);
      break;
    case 5:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 72))(*a2, v3);
      break;
    case 6:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 88))(*a2, v3);
      break;
    case 7:
      return result;
    case 8:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = sub_1000D40B8(v3, *a2);
      break;
    case 9:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 120))(*a2, v3);
      break;
    case 0xA:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 128))(*a2, v3);
      break;
    case 0xB:
      result = (*(**a2 + 16))(*a2, *(result + 8), *(result + 16), result + 24);
      break;
    case 0xC:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 168))(*a2, *v3, v3 + 24, v3 + 8);
      break;
    case 0xD:
      result = (*(**a2 + 160))(*a2, *(result + 8), *(result + 16), *(result + 24));
      break;
    case 0xE:
      result = (*(**a2 + 176))(*a2, *(result + 8), *(result + 16), result + 32);
      break;
    case 0xF:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 184))(*a2, v3);
      break;
    case 0x10:
      result = (*(**a2 + 192))(*a2, *(result + 8), result + 16, *(result + 40), *(result + 48), *(result + 56));
      break;
    case 0x11:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 200))(*a2, v3 + 16, v3 + 8);
      break;
    case 0x12:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 208))(*a2, v3 + 112, v3 + 8);
      break;
    case 0x13:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 216))(*a2, v3 + 80, v3 + 8);
      break;
    case 0x14:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = sub_1000D47AC(v3, *a2);
      break;
    case 0x15:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 240))(*a2, v3 + 104, v3 + 8);
      break;
    default:
      if (v4 < 0)
      {
        v3 = *v3;
      }

      result = (*(**a2 + 32))(*a2, v3 + 8);
      break;
  }

  return result;
}

uint64_t sub_1000D40B8(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 96);
  v3 = *(a1 + 96);
  if (v3 <= 9)
  {
    switch(v3)
    {
      case 2:
        v5 = *(*a2 + 24);
        v6 = a2;
        v7 = a1;

        break;
      case 3:
        v5 = *(*a2 + 104);
        v6 = a2;
        v7 = a1;

        break;
      case 4:
        v5 = *(*a2 + 136);
        v6 = a2;
        v7 = a1;

        break;
      default:
        goto LABEL_31;
    }
  }

  else if (v3 > 12)
  {
    if (v3 == 13)
    {
      v5 = *(*a2 + 144);
      v6 = a2;
      v7 = a1;
    }

    else
    {
      if (v3 != 15)
      {
        goto LABEL_31;
      }

      v5 = *(*a2 + 112);
      v6 = a2;
      v7 = a1;
    }
  }

  else
  {
    if (v3 != 10)
    {
      if (v3 == 12)
      {
        v5 = *(*a2 + 80);
        v6 = a2;
        v7 = a1;

        return v5(v6, v7);
      }

LABEL_31:
      __cxa_allocate_exception(0x40uLL);
      sub_1000D448C(v4, &v12);
      v9 = std::string::insert(&v12, 0, "Illegal state - how is the thrift type enum = ");
      v10 = *&v9->__r_.__value_.__l.__data_;
      v13.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v13.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(&v14, &v13);
      v14.__vftable = &off_1004338D0;
      sub_10010A984(&v11);
    }

    v5 = *(*a2 + 96);
    v6 = a2;
    v7 = a1;
  }

  return v5(v6, v7);
}

void sub_1000D43F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error((v23 - 48));
  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000D448C@<X0>(unsigned int *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  result = sub_1000D453C(a1, a2);
  if ((result & 1) == 0)
  {
    std::bad_cast::bad_cast(&v3);
    v3.__vftable = &off_100434090;
    sub_100049F88(&v3);
  }

  return result;
}

void sub_1000D4510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::bad_cast a10)
{
  std::bad_cast::~bad_cast(&a10);
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000D453C(unsigned int *a1, std::string *a2)
{
  sub_1000D2150(&v24);
  v3 = (v27 + *(v27[0] - 24));
  v3->__exceptions_ = 1;
  std::ios_base::clear(v3, v3->__rdstate_);
  v4 = std::ostream::operator<<();
  v5 = *(v4 + *(*v4 - 24) + 32);
  v6 = *(&v27[5] + *(v27[0] - 24));
  v8 = *(v6 + 40);
  v7 = *(v6 + 48);
  v27[21] = v8;
  v27[22] = v7;
  if ((v5 & 5) == 0)
  {
    v10 = &v7[-v8];
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      v14 = a2->__r_.__value_.__r.__words[2];
      v13 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v13 >= v10)
      {
        v15 = HIBYTE(v14);
LABEL_10:
        if ((v15 & 0x80u) == 0)
        {
          v12 = a2;
        }

        else
        {
          v12 = a2->__r_.__value_.__r.__words[0];
        }

LABEL_13:
        if (v8 == v7)
        {
          v16 = v12;
          goto LABEL_23;
        }

        if (v10 < 0x20 || v12 - v8 < 0x20)
        {
          v16 = v12;
          v17 = v8;
        }

        else
        {
          v16 = (v12 + (v10 & 0xFFFFFFFFFFFFFFE0));
          v17 = (v8 + (v10 & 0xFFFFFFFFFFFFFFE0));
          v18 = (v8 + 16);
          v19 = &v12->__r_.__value_.__r.__words[2];
          v20 = v10 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v21 = *v18;
            *(v19 - 1) = *(v18 - 1);
            *v19 = v21;
            v18 += 2;
            v19 += 4;
            v20 -= 32;
          }

          while (v20);
          if (v10 == (v10 & 0xFFFFFFFFFFFFFFE0))
          {
LABEL_23:
            v16->__r_.__value_.__s.__data_[0] = 0;
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              a2->__r_.__value_.__l.__size_ = v10;
            }

            else
            {
              *(&a2->__r_.__value_.__s + 23) = v10 & 0x7F;
            }

            v9 = 1;
            goto LABEL_27;
          }
        }

        do
        {
          v22 = *v17++;
          v16->__r_.__value_.__s.__data_[0] = v22;
          v16 = (v16 + 1);
        }

        while (v17 != v7);
        goto LABEL_23;
      }

      size = a2->__r_.__value_.__l.__size_;
    }

    else
    {
      v12 = a2;
      if (v10 <= 0x16)
      {
        goto LABEL_13;
      }

      v13 = 22;
    }

    std::string::__grow_by(a2, v13, v10 - v13, size, 0, size, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v15) = *(&a2->__r_.__value_.__s + 23);
    goto LABEL_10;
  }

  v9 = 0;
LABEL_27:
  std::ostream::~ostream();
  if (v26 < 0)
  {
    operator delete(v25[7].__locale_);
  }

  std::locale::~locale(v25);
  return v9;
}

uint64_t sub_1000D47AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 == 2)
  {
    v4 = *(*a2 + 232);
    v5 = a1 + 176;
    v6 = a1 + 16;
    v7 = a2;
  }

  else
  {
    if (v3 != 1)
    {
      __cxa_allocate_exception(0x40uLL);
      sub_1000474A4(&v10, "Unsupported ProviderPositionDataFlow");
      std::runtime_error::runtime_error(&v11, &v10);
      v11.__vftable = &off_1004336A0;
      sub_10010A984(&v9);
    }

    v4 = *(*a2 + 224);
    v5 = a1 + 176;
    v6 = a1 + 16;
    v7 = a2;
  }

  return v4(v7, v5, v6);
}

void sub_1000D4914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::runtime_error a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a18);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}