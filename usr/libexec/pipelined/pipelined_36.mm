double sub_100231810(_DWORD *a1, int a2, int a3)
{
  v3 = 0;
  if ((a2 & 0x80000000) == 0 && (a3 & 0x80000000) == 0 && *a1 > a2)
  {
    if (a1[1] <= a3)
    {
      v3 = 0;
    }

    else
    {
      v3 = *(a1 + (a2 + *a1 * a3) + 10);
    }
  }

  return dbl_1003D9510[a1[3]] * (v3 - a1[4]);
}

void sub_100231890(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

uint64_t sub_1002318B0(int *a1, uint64_t a2)
{
  if (sub_1001EDFC8(a1 + 1, a2))
  {
    sub_1000474A4(v11, "");
    sub_1000BDA70("Attempting to re-create a private location id", &v12);
    sub_100383AA4(&v12, __p, v11);
    sub_10003F5D0(__p);
  }

  v9 = *a1;
  *a1 = v9 + 1;
  sub_100231DC0(a1 + 1, a2, a2, &v9);
  v11[0] = &v9;
  v4 = sub_100232134(a1 + 6, &v9, &unk_1003DB4B0, v11);
  v6 = *a2;
  v5 = *(a2 + 8);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(v4 + 32);
  *(v4 + 24) = v6;
  *(v4 + 32) = v5;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  return v9;
}

void sub_100231A14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100231A7C(uint64_t a1, uint64_t ***a2)
{
  v2 = sub_1001EDFC8((a1 + 8), a2);
  if (!v2)
  {
    sub_1000474A4(v5, "");
    sub_100232548(v6, "Missing entry for string location id");
    sub_100383AA4(v6, __p, v5);
    sub_10003F5D0(__p);
  }

  return *(v2 + 8);
}

void sub_100231B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100231B70(uint64_t a1, uint64_t ***a2)
{
  if (sub_1001EDFC8((a1 + 8), a2))
  {

    return sub_100231A7C(a1, a2);
  }

  else
  {

    return sub_1002318B0(a1, a2);
  }
}

uint64_t *sub_100231BDC(int8x8_t *a1, unsigned int *a2)
{
  v2 = a1[7];
  if (!*&v2)
  {
    goto LABEL_21;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*&a1[6] + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_21:
    sub_1000474A4(v13, "");
    sub_100200CCC(&v15, "No valid string representation for location id");
    sub_1000E661C(v13, &v15, 1);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }
    }

    else if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    operator delete(v13[0]);
LABEL_23:
    sub_10003F5D0(&__p);
  }

  if (v4.u32[0] < 2uLL)
  {
    v8 = *&v2 - 1;
    while (1)
    {
      v9 = v7[1];
      if (v9 == v3)
      {
        if (*(v7 + 4) == v3)
        {
          return v7 + 3;
        }
      }

      else if ((v9 & v8) != v5)
      {
        goto LABEL_21;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v10 = v7[1];
    if (v10 == v3)
    {
      break;
    }

    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }

    if (v10 != v5)
    {
      goto LABEL_21;
    }

LABEL_16:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  if (*(v7 + 4) != v3)
  {
    goto LABEL_16;
  }

  return v7 + 3;
}

void sub_100231D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void ***sub_100231DC0(void *a1, uint64_t ***a2, void *a3, _DWORD *a4)
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

void sub_100232120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001C6420(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100232134(void *a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (result = *v8) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v11 = *(result + 8);
      if (v11 == v4)
      {
        if (*(result + 16) == v4)
        {
          return result;
        }
      }

      else if ((v11 & (*&v5 - 1)) != v7)
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
    v10 = *(result + 8);
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
    result = *result;
    if (!result)
    {
      goto LABEL_23;
    }
  }

  if (*(result + 16) != v4)
  {
    goto LABEL_12;
  }

  return result;
}

void sub_10023247C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002324A4(va);
  _Unwind_Resume(a1);
}

void sub_100232490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002324A4(va);
  _Unwind_Resume(a1);
}

void **sub_1002324A4(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[4];
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v5 = v2;
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
          v2 = v5;
        }
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

std::string *sub_100232548@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_10023257C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100232598()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100232608()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_100232678(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_100232684(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  v5 = *a1;
  v6 = *(v5 + 23);
  if (v6 < 0)
  {
    v7 = v5;
    v5 = *v5;
    v6 = *(v7 + 8);
  }

  result = sub_100213468(v5, v6, v4, v4 + a2);
  *(a1 + 8) += a2;
  return result;
}

uint64_t sub_1002326D0(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  v4 = *(v3 + 23);
  if (v4 < 0)
  {
    v5 = v3;
    v3 = *v3;
    v4 = *(v5 + 8);
  }

  return sub_100213468(v3, v4, v2, v2 + a2);
}

BOOL sub_100232714(int *a1)
{
  v1 = a1[2];
  v2 = *(*a1 + 23);
  if (v2 < 0)
  {
    return v1 < 8 * *(*a1 + 8);
  }

  else
  {
    return v1 < 8 * v2;
  }
}

uint64_t sub_100232740(int *a1)
{
  v1 = *(*a1 + 23);
  if (v1 < 0)
  {
    v2 = 8 * *(*a1 + 8);
  }

  else
  {
    v2 = 8 * v1;
  }

  return v2 - a1[2];
}

void sub_100232770()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002327E0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

BOOL sub_100232850(uint64_t a1)
{
  v1 = sub_100118234(a1);
  if (*(v1 + 23) >= 0)
  {
    v2 = v1;
  }

  else
  {
    v2 = *v1;
  }

  return *v2 == 82;
}

BOOL sub_100232884(uint64_t a1)
{
  if (a1)
  {
    if ((*(a1 + 1914) & 0x20) == 0)
    {
      sub_1001181E4(buf, (a1 + 8));
    }

    v4 = *(a1 + 1856);
    if (v4 != 1)
    {
      if (v4 == 2)
      {
        return 1;
      }

      sub_10004DAA4(buf);
      sub_10011BAD0(&v24, a1);
      v5 = *(a1 + 1856);
      std::stringbuf::str();
      v27 = 0;
      LOBYTE(v26) = 0;
      memset(&v32, 0, sizeof(v32));
      std::string::assign(&v32, "We got something other than Indoor/Regional in LocationContext field (");
      v6 = &v33;
      memset(&v33, 0, sizeof(v33));
      v42 = v40;
      v43 = &v41;
      if (v5 >= 0)
      {
        v7 = v5;
      }

      else
      {
        v7 = -v5;
      }

      v28 = v7;
      v29 = &v41;
      v30 = 48;
      v31 = 48;
      v8 = sub_1000E4C90(&v28);
      v9 = v8;
      if (v5 < 0)
      {
        *(v8 - 1) = 45;
        v9 = (v8 - 1);
      }

      v42 = v9;
      v43 = &v41;
      v10 = &v41 - v9;
      size = SHIBYTE(v33.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        v12 = (v33.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v12 >= v10)
        {
          v13 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
LABEL_24:
          if ((v13 & 0x80u) != 0)
          {
            v6 = v33.__r_.__value_.__r.__words[0];
          }

LABEL_26:
          if (v9 == &v41)
          {
            v14 = v6;
          }

          else
          {
            if (v10 < 0x20 || (v6 - v9) < 0x20)
            {
              v14 = v6;
              v15 = v9;
            }

            else
            {
              v14 = (v6 + (v10 & 0xFFFFFFFFFFFFFFE0));
              v15 = &v9[v10 & 0xFFFFFFFFFFFFFFE0];
              v16 = (v9 + 16);
              v17 = &v6->__r_.__value_.__r.__words[2];
              v18 = v10 & 0xFFFFFFFFFFFFFFE0;
              do
              {
                v19 = *v16;
                *(v17 - 1) = *(v16 - 1);
                *v17 = v19;
                v16 += 2;
                v17 += 4;
                v18 -= 32;
              }

              while (v18);
              if (v10 == (v10 & 0xFFFFFFFFFFFFFFE0))
              {
                goto LABEL_36;
              }
            }

            do
            {
              v20 = *v15++;
              v14->__r_.__value_.__s.__data_[0] = v20;
              v14 = (v14 + 1);
            }

            while (v15 != &v41);
          }

LABEL_36:
          v14->__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
          {
            v33.__r_.__value_.__l.__size_ = &v41 - v9;
          }

          else
          {
            *(&v33.__r_.__value_.__s + 23) = v10 & 0x7F;
          }

          memset(&v34, 0, sizeof(v34));
          std::string::assign(&v34, ") for this locationId: ");
          if (*(a1 + 31) < 0)
          {
            sub_100003228(&v35, *(a1 + 8), *(a1 + 16));
          }

          else
          {
            v35 = *(a1 + 8);
            v36 = *(a1 + 24);
          }

          memset(&v37, 0, sizeof(v37));
          std::string::assign(&v37, ". Memory corruption?\n");
          if (SHIBYTE(v22) < 0)
          {
            sub_100003228(&v38, v21[0], v21[1]);
          }

          else
          {
            v38 = *v21;
            v39 = v22;
          }

          sub_1000E661C(&v26, &v32, 6);
          if (SHIBYTE(v39) < 0)
          {
            operator delete(v38);
            if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_47:
              if ((SHIBYTE(v36) & 0x80000000) == 0)
              {
                goto LABEL_48;
              }

              goto LABEL_56;
            }
          }

          else if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_47;
          }

          operator delete(v37.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v36) & 0x80000000) == 0)
          {
LABEL_48:
            if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_49;
            }

            goto LABEL_57;
          }

LABEL_56:
          operator delete(v35);
          if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_49:
            if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_50;
            }

            goto LABEL_58;
          }

LABEL_57:
          operator delete(v34.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_50:
            if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_51;
            }

            goto LABEL_59;
          }

LABEL_58:
          operator delete(v33.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_51:
            if ((v27 & 0x80000000) == 0)
            {
              goto LABEL_52;
            }

LABEL_60:
            operator delete(v26);
LABEL_52:
            sub_10003F5D0(&__p);
          }

LABEL_59:
          operator delete(v32.__r_.__value_.__l.__data_);
          if ((v27 & 0x80000000) == 0)
          {
            goto LABEL_52;
          }

          goto LABEL_60;
        }

        size = v33.__r_.__value_.__l.__size_;
      }

      else
      {
        if (v10 <= 0x16)
        {
          goto LABEL_26;
        }

        v12 = 22;
      }

      std::string::__grow_by(&v33, v12, v10 - v12, size, 0, size, 0);
      v33.__r_.__value_.__l.__size_ = 0;
      LOBYTE(v13) = *(&v33.__r_.__value_.__s + 23);
      goto LABEL_24;
    }

    return 0;
  }

  else
  {
    if (qword_10045B050 != -1)
    {
      sub_100385FFC();
    }

    v2 = qword_10045B058;
    result = os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO);
    if (result)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Trying to get context of nullptr, using indoor", buf, 2u);
      return 0;
    }
  }

  return result;
}

void sub_100232E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  while (1)
  {
    v65 = *(v62 - 1);
    v62 -= 3;
    if (v65 < 0)
    {
      operator delete(*v62);
    }

    if (v62 == (v63 - 256))
    {
      if (a62 < 0)
      {
        operator delete(__p);
      }

      if (a15 < 0)
      {
        operator delete(a10);
      }

      std::ios::~ios();
      _Unwind_Resume(a1);
    }
  }
}

void sub_100232F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100232FAC()
{
  nullsub_35();
  if (*v0 == v0[1])
  {
    return 0;
  }

  nullsub_35();
  v2 = v1[1];
  if (v2 != *v1)
  {
    if (((v2 - *v1) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  return 1;
}

BOOL sub_1002330A0(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v2 = *a1 + 80;
  do
  {
    v3 = (*(**(v2 - 24) + 72))(*(v2 - 24));
    if (v3)
    {
      v4 = v2 == v1;
    }

    else
    {
      v4 = 1;
    }

    v2 += 80;
  }

  while (!v4);
  return v3 != 0;
}

void sub_10023314C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002331BC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_10023322C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  sub_100250BA8(a2, a1 + 32);
  sub_100250CB0(a2, a1 + 72);
  *(a1 + 104) = sub_100250E8C(a2);
  *(a1 + 112) = sub_10025119C(a2);
  return a1;
}

void sub_100233298(_Unwind_Exception *a1)
{
  sub_100192074(v2);
  sub_1002354E4(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002332B4(uint64_t *result)
{
  if (*(result + 8) == 1)
  {
    v1 = result[3];
    if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      result = v2;
    }

    *(result + 8) = 0;
  }

  v3 = *result;
  *result = 0;
  if (v3)
  {
    sub_100235188(v3);
    operator delete();
  }

  return result;
}

void sub_100233360(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_1000474A4(v12, "");
    sub_1000E0488(&v19, "The previous floor should be defined.");
    sub_100383AA4(&v19, &v15, v12);
    sub_10003F5D0(&v15);
  }

  v4 = *a1;
  if (!*a1)
  {
    sub_1000474A4(v12, "");
    sub_100232548(&v20, "The previous mode should be defined.");
    sub_100383AA4(&v20, &v15, v12);
    sub_10003F5D0(&v15);
  }

  LOBYTE(v15) = 0;
  if (*v4 == 1)
  {
    sub_10020958C(v16, (v4 + 8));
    LOBYTE(v15) = 1;
    memset(v12, 0, sizeof(v12));
    v13 = 1065353216;
    v14 = 0;
    v5 = sub_100258548(v16);
    sub_100258440(__p, v5);
    sub_100176F74(v12, *(a1 + 16), *(a2 + 48), v8);
    v6 = v9;
    *sub_100258558(__p, 0) = v6;
    v7 = v10;
    *sub_100258558(__p, 1) = v7;
    sub_100234D64(v16, __p);
    sub_1002075EC(*a1, v16);
    nullsub_75();
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    sub_1001DF260(v12);
    if (v15)
    {
      if (v17)
      {
        v18 = v17;
        operator delete(v17);
      }

      if (v16[0])
      {
        v16[1] = v16[0];
        operator delete(v16[0]);
      }
    }
  }
}

void sub_100233570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002335C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  sub_1001DF260(&a17);
  sub_100207200(va);
  _Unwind_Resume(a1);
}

BOOL sub_100233614(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 1 || !*a1 || (v3 = (*(**(a1 + 16) + 64))(*(a1 + 16)), v4 = (*(**(a2 + 48) + 64))(*(a2 + 48)), result = sub_100118344(v3, v4)))
  {
    operator new();
  }

  return result;
}

void sub_10023372C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != 1 || !*a1)
  {
    operator new();
  }

  v4 = (*(**(a1 + 16) + 64))(*(a1 + 16));
  v5 = (*(**(a2 + 48) + 64))(*(a2 + 48));
  if (sub_100118344(v4, v5))
  {

    sub_100233360(a1, a2);
  }
}

void sub_10023386C(uint64_t *a1, uint64_t *a2)
{
  v4 = (*(*a2[6] + 64))(a2[6]);
  if (!sub_1001182C8(v4, &qword_10045DF78))
  {
    if ((*(*a2[6] + 72))(a2[6]) == 1)
    {
      sub_10023372C(a1, a2);
    }

    else
    {
      sub_100233614(a1, a2);
    }

    if ((*(*a2[6] + 72))(a2[6]) == 1 || (v5 = *(a1 + 26), v5 == 2))
    {
      if (!*a1)
      {
        sub_1000474A4(&v13, "");
        sub_1000BBEAC(&v12, "Because the first call to receiveModeEstimate must have triggered the above if block which should have instantiated a new ParticleMode()");
        sub_100383AA4(&v12, v11, &v13);
        sub_10003F5D0(v11);
      }

      sub_1002075D4(*a1);
      sub_100233B5C(2, *a1, a2, (a1 + 4));
    }

    else
    {
      sub_100233B5C(v5, *a1, a2, (a1 + 4));
    }

    if (sub_100209418(*a1))
    {
      sub_1000474A4(v11, "");
      sub_1001CCEE8(&v13, "The primary estimate should never have a logpdf");
      sub_100383AA4(&v13, __p, v11);
      sub_10003F5D0(__p);
    }

    v6 = a2[6];
    if (*(a1 + 8) == 1)
    {
      v7 = a2[7];
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = a1[3];
      a1[2] = v6;
      a1[3] = v7;
      if (v8)
      {
        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v8->__on_zero_shared)(v8);
          std::__shared_weak_count::__release_weak(v8);
        }
      }
    }

    else
    {
      a1[2] = v6;
      v9 = a2[7];
      a1[3] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      *(a1 + 8) = 1;
    }
  }
}

void sub_100233AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100233B5C(int a1, _BYTE *a2, uint64_t *a3, uint64_t a4)
{
  sub_1002078F4(a2, a3[8], a3, v21);
  if (a1 && a1 != 2)
  {
    if (a1 != 1)
    {
      __cxa_allocate_exception(0x40uLL);
      LODWORD(v18[0]) = a1;
      v14 = sub_100214914(&unk_10045E098, v18);
      sub_1000474A4(&v16, *v14);
      std::runtime_error::runtime_error(&v17, &v16);
      v17.__vftable = &off_1004336A0;
      sub_10010A984(&v15);
    }

    if (!sub_1002C9298(v21))
    {
      v8 = (*(**(*a3 + 56) + 40))(*(*a3 + 56));
      v9 = *v8;
      v10 = v8[1];
      v25 = *v8;
      v26 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v9)
      {
        v11 = (*(*v9 + 120))(v9);
        v12 = sub_100258548(v21);
        sub_1002B0894(v18, v12);
        v13 = v11 * v11 / 12.0;
        *sub_1002B0954(v18, 0, 0) = v13;
        *sub_1002B0954(v18, 1uLL, 1uLL) = v13;
        sub_100235280(&v22, v18);
        if (__p)
        {
          v20 = __p;
          operator delete(__p);
        }
      }

      if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }

  sub_1002075EC(a2, v21);
  sub_100234718(a2, a3, a4);
  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v21[0])
  {
    v21[1] = v21[0];
    operator delete(v21[0]);
  }
}

void sub_100233F04(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v23 = *(v22 - 104);
  if (v23)
  {
    *(v22 - 96) = v23;
    operator delete(v23);
  }

  std::runtime_error::~runtime_error((v22 - 80));
  if (a22 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x100233F78);
}

void sub_100233F94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_10002BB1C(v22 - 104);
  sub_1002090A4(&a22);
  _Unwind_Resume(a1);
}

uint64_t sub_100233FD4(uint64_t *a1, uint64_t a2)
{
  if ((*(**(a2 + 48) + 72))(*(a2 + 48)) != 1)
  {
    v4 = *(a1 + 26);
    if (v4 && v4 != 2)
    {
      if (v4 != 1)
      {
        __cxa_allocate_exception(0x40uLL);
        LODWORD(v13.__r_.__value_.__l.__data_) = v4;
        v8 = sub_100214914(&unk_10045E098, &v13);
        sub_1000474A4(&__p, *v8);
        std::runtime_error::runtime_error(&v10, &__p);
        v10.__vftable = &off_1004336A0;
        sub_10010A984(&v9);
      }

      sub_1002343B4(a1, *a1, a2, &v13);
      if (v13.__r_.__value_.__r.__words[0])
      {
        v7 = *a1;
        *a1 = v13.__r_.__value_.__r.__words[0];
        if (v7)
        {
          sub_100235188(v7);
          operator delete();
        }
      }
    }
  }

  result = sub_100209418(*a1);
  if (result)
  {
    sub_1000474A4(v12, "");
    sub_1001CCEE8(&v13, "The primary estimate should never have a logpdf");
    sub_100383AA4(&v13, &__p, v12);
    sub_10003F5D0(&__p);
  }

  return result;
}

void sub_100234314(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::runtime_error a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  std::runtime_error::~runtime_error(&a15);
  if (*(v20 - 41) < 0)
  {
    operator delete(*(v20 - 64));
  }

  __cxa_end_catch();
  JUMPOUT(0x100234388);
}

void sub_100234398(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10000D388(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1002343B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (sub_1002077F4(a2) == 0.0)
  {
    *a4 = 0;
  }

  else
  {
    sub_100208084(a2, a3, a1 + 32, v23);
    sub_100207430(v28, *(a1 + 112), v23);
    if ((*(**(a3 + 48) + 72))(*(a3 + 48)) == 1)
    {
      v8 = 2;
    }

    else
    {
      v8 = *(a1 + 104);
    }

    sub_100233B5C(v8, v28, a3, a1 + 32);
    v9 = sub_1002077F4(a2);
    if (v9 < sub_1002077F4(v28))
    {
      if (qword_10045B050 != -1)
      {
        sub_100386010();
      }

      v10 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        sub_100234F24((a2 + 8), &v22);
        v11 = SHIBYTE(v22.__r_.__value_.__r.__words[2]);
        v12 = v22.__r_.__value_.__r.__words[0];
        sub_100234F24(v29, &__p);
        v13 = &v22;
        if (v11 < 0)
        {
          v13 = v12;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315394;
        v25 = v13;
        v26 = 2080;
        v27 = p_p;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "WARNING: Abandon current mode %s, an alternative mode %s has formed that is globally more concentrated!", buf, 0x16u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }
      }

      operator new();
    }

    *a4 = 0;
    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    v15 = v35;
    if (v35)
    {
      v16 = v36;
      v17 = v35;
      if (v36 != v35)
      {
        v18 = v36;
        do
        {
          v20 = *(v18 - 3);
          v18 -= 24;
          v19 = v20;
          if (v20)
          {
            *(v16 - 2) = v19;
            operator delete(v19);
          }

          v16 = v18;
        }

        while (v18 != v15);
        v17 = v35;
      }

      v36 = v15;
      operator delete(v17);
    }

    if (v32 == 1)
    {
      if (v33)
      {
        v34 = v33;
        operator delete(v33);
      }

      v32 = 0;
    }

    if (v28[0] == 1)
    {
      if (v30)
      {
        v31 = v30;
        operator delete(v30);
      }

      if (v29[0])
      {
        v29[1] = v29[0];
        operator delete(v29[0]);
      }
    }

    if (v23[0])
    {
      v23[1] = v23[0];
      operator delete(v23[0]);
    }
  }
}

void sub_1002346A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100235188(&a25);
  if (!a19)
  {
    _Unwind_Resume(a1);
  }

  operator delete(a19);
  _Unwind_Resume(a1);
}

void sub_100234718(_BYTE *a1, uint64_t *a2, uint64_t a3)
{
  sub_100207640(a1, 2.0);
  v6 = sub_1002082D4(a1, a2, a3);
  sub_100123518(a1, v6);
  if (sub_1002077E4(a1))
  {
    if (qword_10045B050 == -1)
    {
      v7 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
LABEL_5:
        sub_1002075D4(a1);
        return;
      }
    }

    else
    {
      sub_100386038();
      v7 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        goto LABEL_5;
      }
    }

    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "WARNING: Inliers did not have enough weight to maintain the current mode. Resetting mode estimator!", v8, 2u);
    goto LABEL_5;
  }
}

void sub_1002347FC(int8x8_t *a1@<X0>, unint64_t *a2@<X1>, __n128 *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a2[1];
  v55 = *a2;
  v56 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1001FE808(a1, &v55, &v57);
  v7 = v56;
  if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v52 = 0;
  v53 = 0;
  v54 = 0;
  __p = 0;
  v50 = 0;
  v51 = 0;
  sub_100216AF0(&v52, 0xCCCCCCCCCCCCCCCDLL * ((v60 - v59) >> 4));
  v13 = v59;
  v12 = v60;
  if (v60 == v59)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v60 - v59) >> 4);
    v17 = 0.0;
    v15 = 0.0;
    v36 = v52;
    v37 = v53;
    if (v53 != v52)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v47 = v3;
  v48 = v4;
  v14 = 0;
  v15 = 0.0;
  v16 = 72;
  v17 = 0.0;
  do
  {
    if ((v13[v16 - 24] & 1) == 0)
    {
      v18 = &v13[v16 - 72];
      v19 = v53;
      if (v53 >= v54)
      {
        v23 = sub_1001FF408(&v52, v18, v12, v8, v9, v10, v11);
      }

      else
      {
        sub_100217150(v53, v18);
        v20 = *&v13[v16 - 56];
        v21 = *&v13[v16 - 40];
        v19[3].n128_u16[0] = *&v13[v16 - 24];
        v19[1] = v20;
        v19[2] = v21;
        v22 = *&v13[v16 - 8];
        v19[3].n128_u64[1] = *&v13[v16 - 16];
        v19[4].n128_u64[0] = v22;
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        }

        v19[4].n128_u64[1] = *&v13[v16];
        v23 = v19 + 5;
      }

      v53 = v23;
      v24 = v50;
      if (v50 >= v51)
      {
        v26 = __p;
        v27 = v50 - __p;
        v28 = (v50 - __p) >> 3;
        v29 = v28 + 1;
        if ((v28 + 1) >> 61)
        {
          sub_10000FC84();
        }

        v30 = v51 - __p;
        if ((v51 - __p) >> 2 > v29)
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

        v32 = (8 * v28);
        v33 = &v32[-((v50 - __p) >> 3)];
        *v32 = *(v57 + v14);
        v25 = (v32 + 1);
        memcpy(v33, v26, v27);
        __p = v33;
        v50 = v25;
        v51 = 0;
        if (v26)
        {
          operator delete(v26);
        }
      }

      else
      {
        *v50 = *(v57 + v14);
        v25 = v24 + 8;
      }

      v50 = v25;
      v34 = sub_10021569C(v59 + v16 - 72);
      v15 = v15 + exp(v34);
      v13 = v59;
    }

    v35 = sub_10021569C(&v13[v16 - 72]);
    v17 = v17 + exp(v35);
    ++v14;
    v13 = v59;
    v12 = v60;
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v60 - v59) >> 4);
    v16 += 80;
  }

  while (v14 < v8);
  v3 = v47;
  v4 = v48;
  v36 = v52;
  v37 = v53;
  if (v53 == v52)
  {
LABEL_32:
    sub_1001EC44C(&v52, v13, v12, v8, v9, v10, v11);
    sub_10011DD68(&__p, v57, v58, (v58 - v57) >> 3);
    v36 = v52;
    v37 = v53;
    v15 = v17;
  }

LABEL_33:
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  sub_100235538(a3, v36, v37, 0xCCCCCCCCCCCCCCCDLL * ((v37 - v36) >> 4));
  a3[1].n128_u64[1] = 0;
  a3[2].n128_u64[0] = 0;
  a3[2].n128_u64[1] = 0;
  if (v50 != __p)
  {
    if (((v50 - __p) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  v38 = v3[1];
  a3[3].n128_u64[0] = *v3;
  a3[3].n128_u64[1] = v38;
  if (v38)
  {
    atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
  }

  a3[4].n128_u64[0] = sub_1001FE800(v4);
  a3[4].n128_f64[1] = v15 / v17;
  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }

  v39 = v52;
  if (v52)
  {
    v40 = v53;
    v41 = v52;
    if (v53 != v52)
    {
      do
      {
        v42 = v40[-1].n128_u64[0];
        if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v42->__on_zero_shared)(v42);
          std::__shared_weak_count::__release_weak(v42);
        }

        v40 -= 5;
      }

      while (v40 != v39);
      v41 = v52;
    }

    v53 = v39;
    operator delete(v41);
  }

  v43 = v59;
  if (v59)
  {
    v44 = v60;
    v45 = v59;
    if (v60 != v59)
    {
      do
      {
        v46 = *(v44 - 2);
        if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v46->__on_zero_shared)(v46);
          std::__shared_weak_count::__release_weak(v46);
        }

        v44 -= 80;
      }

      while (v44 != v43);
      v45 = v59;
    }

    v60 = v43;
    operator delete(v45);
  }

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }
}

void sub_100234CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_10002BB1C(v19);
  v22 = *v20;
  if (*v20)
  {
    *(v18 + 32) = v22;
    operator delete(v22);
  }

  sub_1001E4D4C(v18);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1001E4D4C(&a14);
  sub_100235420(va);
  _Unwind_Resume(a1);
}

unint64_t *sub_100234D64(unint64_t *a1, unint64_t *a2)
{
  v4 = sub_100258548(a2);
  if (v4 != sub_100258548(a1))
  {
    sub_100385A9C();
    sub_1000BC6D8(__p);
  }

  v5 = *a1;
  v6 = a1[1];
  v7 = v6 - *a1;
  if (a2[1] - *a2 != v7)
  {
    sub_100385A9C();
    sub_10003F5D0(__p);
  }

  if (v6 != v5)
  {
    v8 = v7 >> 3;
    v9 = *a2;
    if ((v7 >> 3) <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v7 >> 3;
    }

    if (v8 <= 5 || (v5 < v9 + 8 * v10 ? (v11 = v9 >= v5 + 8 * v10) : (v11 = 1), !v11))
    {
      v12 = 0;
LABEL_18:
      v17 = v10 - v12;
      v18 = (v9 + 8 * v12);
      v19 = (v5 + 8 * v12);
      do
      {
        v20 = *v18++;
        *v19 = v20 + *v19;
        ++v19;
        --v17;
      }

      while (v17);
      return a1;
    }

    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = (v9 + 16);
    v14 = (v5 + 16);
    v15 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v16 = vaddq_f64(*v13, *v14);
      v14[-1] = vaddq_f64(v13[-1], v14[-1]);
      *v14 = v16;
      v13 += 2;
      v14 += 2;
      v15 -= 4;
    }

    while (v15);
    if (v8 != v12)
    {
      goto LABEL_18;
    }
  }

  return a1;
}

void sub_100234ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100234F24(double **a1@<X0>, std::string *a2@<X8>)
{
  if (sub_1002C9298(a1))
  {
    v18 = 4;
    strcpy(v17, "null");
  }

  else
  {
    sub_1002B1214((a1 + 3));
  }

  sub_100258810(a1, &v13);
  v4 = std::string::insert(&v13, 0, "MultivariateGaussian(mean:");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v14, ", cov:");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (v18 >= 0)
  {
    v8 = v17;
  }

  else
  {
    v8 = v17[0];
  }

  if (v18 >= 0)
  {
    v9 = v18;
  }

  else
  {
    v9 = v17[1];
  }

  v10 = std::string::append(&v15, v8, v9);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = std::string::append(&v16, ")");
  *a2 = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_12:
      if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_18;
    }
  }

  else if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  operator delete(v15.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(v14.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_14:
    if ((v18 & 0x80000000) == 0)
    {
      return;
    }

LABEL_20:
    operator delete(v17[0]);
    return;
  }

LABEL_19:
  operator delete(v13.__r_.__value_.__l.__data_);
  if (v18 < 0)
  {
    goto LABEL_20;
  }
}

void sub_1002350C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 41) < 0)
  {
    operator delete(*(v28 - 64));
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a16);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v28 - 17) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a10);
  if ((*(v28 - 17) & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  operator delete(*(v28 - 40));
  _Unwind_Resume(exception_object);
}

uint64_t sub_100235188(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    *(a1 + 144) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 112);
  if (v3)
  {
    v4 = *(a1 + 120);
    v5 = *(a1 + 112);
    if (v4 != v3)
    {
      v6 = *(a1 + 120);
      do
      {
        v8 = *(v6 - 24);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 16) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v3);
      v5 = *(a1 + 112);
    }

    *(a1 + 120) = v3;
    operator delete(v5);
  }

  if (*(a1 + 80) == 1)
  {
    v10 = *(a1 + 88);
    if (v10)
    {
      *(a1 + 96) = v10;
      operator delete(v10);
    }

    *(a1 + 80) = 0;
    if (*a1 != 1)
    {
      return a1;
    }
  }

  else if (*a1 != 1)
  {
    return a1;
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    *(a1 + 56) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 8);
  if (v12)
  {
    *(a1 + 16) = v12;
    operator delete(v12);
  }

  *a1 = 0;
  return a1;
}

float64_t sub_100235280(void *a1, void *a2)
{
  if (a2[1] != a1[1])
  {
    sub_100385A9C();
    sub_1000BC6D8(__p);
  }

  v2 = a1[2];
  v3 = a1[3];
  v4 = v3 - v2;
  if (a2[3] - a2[2] != v3 - v2)
  {
    sub_100385A9C();
    sub_10003F5D0(__p);
  }

  if (v3 != v2)
  {
    v5 = v4 >> 3;
    v6 = a2[2];
    if ((v4 >> 3) <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v4 >> 3;
    }

    if (v5 <= 5 || (v2 < v6 + 8 * v7 ? (v8 = v6 >= v2 + 8 * v7) : (v8 = 1), !v8))
    {
      v9 = 0;
LABEL_18:
      v15 = v7 - v9;
      v16 = (v6 + 8 * v9);
      v17 = (v2 + 8 * v9);
      do
      {
        v18 = *v16++;
        v13.f64[0] = v18 + *v17;
        *v17++ = v13.f64[0];
        --v15;
      }

      while (v15);
      return v13.f64[0];
    }

    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = (v6 + 16);
    v11 = (v2 + 16);
    v12 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v13 = vaddq_f64(v10[-1], v11[-1]);
      v14 = vaddq_f64(*v10, *v11);
      v11[-1] = v13;
      *v11 = v14;
      v10 += 2;
      v11 += 2;
      v12 -= 4;
    }

    while (v12);
    if (v5 != v9)
    {
      goto LABEL_18;
    }
  }

  return v13.f64[0];
}

void sub_100235400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100235420(uint64_t a1)
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

uint64_t *sub_1002354E4(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100235188(v2);
    operator delete();
  }

  return a1;
}

void sub_100235538(__n128 *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x333333333333334)
    {
      operator new();
    }

    sub_10000FC84();
  }
}

void sub_10023566C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_100182230(va);
  *(v10 + 8) = v11;
  sub_1001822DC(&a9);
  _Unwind_Resume(a1);
}

void sub_10023568C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1002356FC()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_10023576C(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void *a6, int a7, uint64_t a8)
{
  v8 = *a2;
  *a2 = 0;
  v9 = *a3;
  *a3 = 0;
  *result = v8;
  *(result + 8) = v9;
  v10 = *a4;
  *a4 = 0;
  v12 = *a5;
  v11 = a5[1];
  *(result + 16) = v10;
  *(result + 24) = v12;
  *(result + 32) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a6[1];
  *(result + 40) = *a6;
  *(result + 48) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 56) = a7;
  *(result + 64) = a8;
  return result;
}

uint64_t *sub_1002357C8(uint64_t *a1)
{
  v2 = a1[6];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[4];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[2];
  a1[2] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[1];
  a1[1] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  return a1;
}

void sub_100235910(void *a1, uint64_t a2, double a3)
{
  if (!*(a2 + 24))
  {
    v8 = a1[5];
    v7 = a1[6];
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = *(a2 + 32);
    *(a2 + 24) = v8;
    *(a2 + 32) = v7;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = a1;
      v11 = a2;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      a1 = v10;
      a2 = v11;
    }
  }

  v4 = *a1;
  v5 = a1[4];
  v12 = a1[3];
  v13 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1001F9C4C(v14, a2);
  (*(*v4 + 24))(v4, &v12, v14, a3);
  sub_1001F9864(v14);
  v6 = v13;
  if (v13)
  {
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void sub_100235AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1001F9864(va);
  sub_10002BB1C(&a9);
  _Unwind_Resume(a1);
}

void sub_100235AD8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v10 = *a1;
  v11 = *(a1 + 40);
  memset(v15, 0, 24);
  sub_1001CFBC8(v15, *a3, a3[1], 0x4EC4EC4EC4EC4EC5 * ((a3[1] - *a3) >> 4));
  memset(&v15[3], 0, 24);
  v13 = a3[3];
  v12 = a3[4];
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  v15[6] = a3[6];
  v14 = sub_100172010(a4, *(a1 + 56));
  sub_100225DBC(&v16, v15, a5, v14);
  sub_1001E9DBC(v10, a2, v11, &v16);
}

void sub_100235D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  sub_1001CFAA0(&a16);
  sub_1001CFAA0(&a9);
  _Unwind_Resume(a1);
}

void sub_100235DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  sub_1001CE6F4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100235E18(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  result = *(a1 + 8);
  *(a1 + 8) = v3;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100235E60()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100235ED0()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100235F94(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  v6 = v4 - v5;
  if (v4 == v5)
  {
    v8 = *(*a1 + 64);
  }

  else
  {
    v7 = v6 >> 3;
    v8 = *(*a1 + 56);
    do
    {
      v9 = v7 >> 1;
      v10 = &v8[8 * (v7 >> 1)];
      v12 = *v10;
      v11 = (v10 + 1);
      v7 += ~(v7 >> 1);
      if (v12 < a2)
      {
        v8 = v11;
      }

      else
      {
        v7 = v9;
      }
    }

    while (v7);
  }

  v13 = v8 - v5;
  v14 = v13 >> 3;
  if ((v13 >> 3) <= 1)
  {
    LODWORD(v14) = 1;
  }

  v15 = (v14 - 1);
  v16 = (v13 >> 3);
  v17 = (v6 >> 3) - 1;
  v18 = v4 == v8;
  if (v4 == v8)
  {
    v19 = v17;
  }

  else
  {
    v19 = v15;
  }

  if (!v18)
  {
    v17 = v16;
  }

  v20 = *(*a1 + 112);
  v21 = (v20 + 24 * v19);
  v22 = (v20 + 24 * v17);
  if (*(v21 + 23) < 0)
  {
    sub_100003228(v25, *v21, *(v21 + 1));
    if ((*(v22 + 23) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v23 = *v21;
    v26 = *(v21 + 2);
    *v25 = v23;
    if ((*(v22 + 23) & 0x80000000) == 0)
    {
LABEL_18:
      v24 = *v22;
      v28 = *(v22 + 2);
      __p = v24;
      goto LABEL_21;
    }
  }

  sub_100003228(&__p, *v22, *(v22 + 1));
LABEL_21:
  sub_1001181E4(a3, v25);
}

void sub_1002360F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100236110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100118124(v9);
  sub_100047F24(&a9);
  _Unwind_Resume(a1);
}

void sub_100236140(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(*a1 + 56);
  v3 = *(*a1 + 64);
  v5 = v3 - v4;
  if (v3 == v4)
  {
    v7 = *(*a1 + 64);
  }

  else
  {
    v6 = v5 >> 3;
    v7 = *(*a1 + 56);
    do
    {
      v8 = v6 >> 1;
      v9 = &v7[8 * (v6 >> 1)];
      v11 = *v9;
      v10 = (v9 + 1);
      v6 += ~(v6 >> 1);
      if (v11 < a2)
      {
        v7 = v10;
      }

      else
      {
        v6 = v8;
      }
    }

    while (v6);
  }

  v12 = (v7 - v4) >> 3;
  if (v12 <= 1)
  {
    LODWORD(v12) = 1;
  }

  v13 = (v12 - 1);
  v14 = (v5 >> 3) - 1;
  if (v3 == v7)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  v17 = v2 + 112;
  v16 = *(v2 + 112);
  if (0xAAAAAAAAAAAAAAABLL * ((*(v17 + 8) - v16) >> 3) > v15)
  {
    sub_1001181E4(&v18, (v16 + 24 * v15));
  }

  sub_1000BFF58();
}

void sub_100236370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  nullsub_75();
  sub_1000B9C50(&a9);
  _Unwind_Resume(a1);
}

void sub_1002363A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_100118124(va);
  _Unwind_Resume(a1);
}

void sub_1002363B4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_100236424()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_100236494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  if (qword_10045B050 != -1)
  {
    sub_10038604C();
  }

  v7 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v8 = a4[1] - *a4;
    *buf = 134217984;
    *&buf[4] = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "UniformGeneratorBase::setParticleState, for #outputParticles=%zu", buf, 0xCu);
  }

  v26 = 0;
  v27 = 0;
  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = off_10043DB08;
  v29 = 0;
  v9 = *a4;
  v10 = a4[1];
  if (*a4 == v10)
  {
    nullsub_75();
  }

  else
  {
    do
    {
      v12 = sub_10025B320(*(a3 + 40), a2, 1);
      v14 = *v12;
      v13 = v12[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = v27;
      v26 = v14;
      v27 = v13;
      if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }

      v16 = v26;
      v24[0] = (*(*v26 + 24))(v26);
      v24[1] = v17;
      v24[2] = v18;
      v24[3] = v19;
      sub_10031CE24(v24, a2, v25);
      sub_10012A358(buf, v25);
      nullsub_75();
      v20 = *v9;
      v23 = __PAIR128__(v27, v16);
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_1001E8D30(v20, &v23);
      v21 = *(&v23 + 1);
      if (*(&v23 + 1) && !atomic_fetch_add((*(&v23 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v21->__on_zero_shared)(v21);
        std::__shared_weak_count::__release_weak(v21);
      }

      v11 = *v9++;
      *(v11 + 16) = *&buf[8];
      *(v11 + 48) = 0;
    }

    while (v9 != v10);
    v22 = v27;
    nullsub_75();
    if (v22)
    {
      if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
      }
    }
  }
}

void sub_10023675C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  nullsub_75();
  sub_10002BB1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002367C4(uint64_t a1, uint64_t a2)
{
  *a1 = off_1004437A8;
  sub_10020E1E8((a1 + 8), a2);
  return a1;
}

void sub_100236808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  if (qword_10045B050 != -1)
  {
    sub_10038604C();
  }

  v7 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v8 = a4[1] - *a4;
    buf.n128_u32[0] = 134217984;
    *(buf.n128_u64 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "WifiHistoryWeight::setParticleState, for #outputParticles=%zu", &buf, 0xCu);
  }

  sub_10025DEAC(a3, &v236);
  v233 = 0;
  v234 = 0;
  v235 = 0;
  v9 = v236;
  v10 = v237;
  v217 = a4;
  if (v237 == v236)
  {
    v13 = 0x4EC4EC4EC4EC4EC5 * ((v237 - v236) >> 4);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v14 = v234;
      if (v234 >= v235)
      {
        v16 = v233;
        v17 = v234 - v233;
        v18 = (v234 - v233) >> 3;
        v19 = v18 + 1;
        if ((v18 + 1) >> 61)
        {
          sub_10000FC84();
        }

        v20 = v235 - v233;
        if ((v235 - v233) >> 2 > v19)
        {
          v19 = v20 >> 2;
        }

        if (v20 >= 0x7FFFFFFFFFFFFFF8)
        {
          v21 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v19;
        }

        if (v21)
        {
          if (!(v21 >> 61))
          {
            operator new();
          }

          sub_10000D444();
        }

        *(8 * v18) = 0x3F947AE147AE147BLL;
        v15 = 8 * v18 + 8;
        memcpy(0, v16, v17);
        v233 = 0;
        v234 = v15;
        v235 = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v234 = 0x3F947AE147AE147BLL;
        v15 = (v14 + 8);
      }

      v234 = v15;
      v22 = (v236 + v11);
      v23 = *(v236 + v11 + 32);
      if (v23 == v23 >> 31)
      {
        v24 = v22[9];
      }

      else
      {
        v27 = *(v22 + 5);
        v25 = (v22 + 5);
        v26 = v27;
        if (v23 < 0)
        {
          v25 = v26;
        }

        v24 = *(v25 + 23);
      }

      a4 = v217;
      if (sub_1001CF958(v24))
      {
        *(v238 + v12) = 0;
      }

      ++v12;
      v9 = v236;
      v10 = v237;
      v13 = 0x4EC4EC4EC4EC4EC5 * ((v237 - v236) >> 4);
      v11 += 208;
    }

    while (v12 < v13);
  }

  v223 = 0;
  v224 = 0;
  v222 = 0;
  sub_1001CFBC8(&v222, v9, v10, v13);
  __p = 0;
  v226 = 0;
  v227 = 0;
  if (v239 != v238)
  {
    if (((v239 - v238) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  v228 = v240;
  sub_100225DBC(&v229, &v222, 0, 1.0);
  if (__p)
  {
    v226 = __p;
    operator delete(__p);
  }

  v28 = v222;
  if (v222)
  {
    v29 = v223;
    v30 = v222;
    if (v223 != v222)
    {
      v31 = v223 - 168;
      do
      {
        v33 = *(v29 - 44);
        if (v33 == v33 >> 31)
        {
          if (*(v29 - 128) == 1)
          {
            *(v29 - 128) = 0;
          }
        }

        else
        {
          v32 = *(v29 - 21);
          if (v33 < 0)
          {
            if (v32)
            {
              (*(*v32 + 8))(v32);
            }
          }

          else
          {
            (*v32)(v29 - 168);
          }
        }

        v29 -= 208;
        v31 -= 208;
      }

      while (v29 != v28);
      v30 = v222;
    }

    v223 = v28;
    operator delete(v30);
  }

  v219 = 0;
  v220 = 0;
  v221 = 0;
  v34 = *a4;
  v35 = a4[1];
  if (*a4 != v35)
  {
    for (i = v34 + 1; i != v35; ++i)
    {
      v37 = *i;
      v38 = sub_10021569C(*v34);
      if (v38 > sub_10021569C(v37))
      {
        v34 = i;
      }
    }
  }

  v39 = sub_10021569C(*v34);
  v41 = *a4;
  v40 = a4[1];
  v42 = 0.0;
  if (v39 == -INFINITY)
  {
    v43 = *a4;
  }

  else
  {
    v43 = a4[1];
    if (v41 != v40)
    {
      do
      {
        v44 = sub_10021569C(*v41);
        v42 = v42 + exp(v44 - v39);
        ++v41;
      }

      while (v41 != v40);
      v43 = *a4;
      v40 = a4[1];
    }
  }

  v45 = log(v42);
  sub_100216AF0(&v219, ((v40 - v43) >> 1) + v40 - v43);
  v46 = *a4;
  v216 = a4[1];
  if (*a4 == v216)
  {
    goto LABEL_107;
  }

  while (2)
  {
    for (j = 0; j != 5; ++j)
    {
      v48 = *v46;
      v49 = v220;
      if (v220 >= v221)
      {
        v54 = 0xCCCCCCCCCCCCCCCDLL * ((v220 - v219) >> 4) + 1;
        if (v54 > 0x333333333333333)
        {
          sub_10000FC84();
        }

        if (0x999999999999999ALL * ((v221 - v219) >> 4) > v54)
        {
          v54 = 0x999999999999999ALL * ((v221 - v219) >> 4);
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((v221 - v219) >> 4) >= 0x199999999999999)
        {
          v55 = 0x333333333333333;
        }

        else
        {
          v55 = v54;
        }

        *&v250 = &v219;
        if (v55)
        {
          if (v55 <= 0x333333333333333)
          {
            operator new();
          }

          sub_10000D444();
        }

        buf.n128_u64[0] = 0;
        buf.n128_u64[1] = 16 * ((v220 - v219) >> 4);
        v249 = buf.n128_u64[1];
        sub_100217150(buf.n128_u64[1], v48);
        v57 = v48[1];
        v58 = v48[2];
        v56[3].n128_u16[0] = v48[3].n128_u16[0];
        v56[1] = v57;
        v56[2] = v58;
        v56[3].n128_u64[1] = v48[3].n128_u64[1];
        v59 = v48[4].n128_u64[0];
        v56[4].n128_u64[0] = v59;
        if (v59)
        {
          atomic_fetch_add_explicit((v59 + 8), 1uLL, memory_order_relaxed);
        }

        v56[4].n128_u64[1] = v48[4].n128_u64[1];
        v53 = (v249 + 80);
        *&v249 = v249 + 80;
        v61 = v219;
        v60 = v220;
        v242.n128_u64[0] = &v219;
        v242.n128_u64[1] = v218;
        v243.n128_u64[0] = v241;
        v243.n128_u8[8] = 0;
        v62 = (buf.n128_u64[1] + v219 - v220);
        v241[0] = v62;
        v218[0] = v62;
        if (v219 != v220)
        {
          v63 = (buf.n128_u64[1] + v219 - v220);
          v64 = v219;
          do
          {
            sub_100217150(v63, v64);
            v66 = v64[1];
            v67 = v64[2];
            v65[3].n128_u16[0] = v64[3].n128_u16[0];
            v65[1] = v66;
            v65[2] = v67;
            v65[3].n128_u64[1] = v64[3].n128_u64[1];
            v68 = v64[4].n128_u64[0];
            v65[4].n128_u64[0] = v68;
            if (v68)
            {
              atomic_fetch_add_explicit((v68 + 8), 1uLL, memory_order_relaxed);
            }

            v65[4].n128_u64[1] = v64[4].n128_u64[1];
            v64 += 5;
            v63 = (v241[0] + 80);
            v241[0] = v241[0] + 80;
          }

          while (v64 != v60);
          v243.n128_u8[8] = 1;
          do
          {
            v69 = v61[4].n128_u64[0];
            if (v69 && !atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v69->__on_zero_shared)(v69);
              std::__shared_weak_count::__release_weak(v69);
            }

            v61 += 5;
          }

          while (v61 != v60);
          if ((v243.n128_u8[8] & 1) == 0)
          {
            v105 = *v243.n128_u64[0];
            v106 = *v242.n128_u64[1];
            while (v105 != v106)
            {
              v107 = *(v105 - 16);
              if (v107 && !atomic_fetch_add(&v107->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v107->__on_zero_shared)(v107);
                std::__shared_weak_count::__release_weak(v107);
              }

              v105 -= 80;
            }
          }
        }

        v70 = v219;
        v219 = v62;
        v220 = v53;
        v221 = *(&v249 + 1);
        if (v70)
        {
          operator delete(v70);
        }

        v220 = v53;
        if (!j)
        {
          continue;
        }
      }

      else
      {
        sub_100217150(v220, *v46);
        v50 = v48[1];
        v51 = v48[2];
        v49[3].n128_u16[0] = v48[3].n128_u16[0];
        v49[1] = v50;
        v49[2] = v51;
        v49[3].n128_u64[1] = v48[3].n128_u64[1];
        v52 = v48[4].n128_u64[0];
        v49[4].n128_u64[0] = v52;
        if (v52)
        {
          atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
        }

        v49[4].n128_u64[1] = v48[4].n128_u64[1];
        v53 = v49 + 5;
        v220 = v53;
        if (!j)
        {
          continue;
        }
      }

      v53[-3].n128_f64[1] = (*(*a2 + 24))(a2, -2.0, 2.0) + v53[-3].n128_f64[1];
      v71 = (*(*v53[-2].n128_u64[1] + 16))(v53[-2].n128_u64[1]);
      v72 = *(*a2 + 24);
      if (!v71)
      {
        v100 = v72(a2, 0.0, 20.0);
        v101 = (*(*a2 + 48))(a2);
        v102 = v100 + 5.0;
        v103 = v53[-4].n128_f64[0];
        v104 = __sincos_stret(v101);
        v78 = v103 + v102 * v104.__cosval;
        v79 = v53[-4].n128_f64[1] + v102 * v104.__sinval;
LABEL_61:
        v53[-4].n128_f64[0] = v78;
        v53[-4].n128_f64[1] = v79;
        continue;
      }

      v73 = v72(a2, 0.0, 20.0);
      v74 = (*(*a2 + 48))(a2);
      v75 = v73 + 5.0;
      v76 = v53[-4].n128_f64[0];
      v77 = __sincos_stret(v74);
      v78 = v76 + v75 * v77.__cosval;
      v79 = v53[-4].n128_f64[1] + v75 * v77.__sinval;
      if ((*(*v71 + 16))(v71, v78, v79))
      {
        goto LABEL_61;
      }

      v80 = (*(*a2 + 24))(a2, 0.0, 20.0);
      v81 = (*(*a2 + 48))(a2);
      v82 = v80 + 5.0;
      v83 = v53[-4].n128_f64[0];
      v84 = __sincos_stret(v81);
      v78 = v83 + v82 * v84.__cosval;
      v79 = v53[-4].n128_f64[1] + v82 * v84.__sinval;
      if ((*(*v71 + 16))(v71, v78, v79))
      {
        goto LABEL_61;
      }

      v85 = (*(*a2 + 24))(a2, 0.0, 20.0);
      v86 = (*(*a2 + 48))(a2);
      v87 = v85 + 5.0;
      v88 = v53[-4].n128_f64[0];
      v89 = __sincos_stret(v86);
      v78 = v88 + v87 * v89.__cosval;
      v79 = v53[-4].n128_f64[1] + v87 * v89.__sinval;
      if ((*(*v71 + 16))(v71, v78, v79))
      {
        goto LABEL_61;
      }

      v90 = (*(*a2 + 24))(a2, 0.0, 20.0);
      v91 = (*(*a2 + 48))(a2);
      v92 = v90 + 5.0;
      v93 = v53[-4].n128_f64[0];
      v94 = __sincos_stret(v91);
      v78 = v93 + v92 * v94.__cosval;
      v79 = v53[-4].n128_f64[1] + v92 * v94.__sinval;
      if ((*(*v71 + 16))(v71, v78, v79))
      {
        goto LABEL_61;
      }

      v95 = (*(*a2 + 24))(a2, 0.0, 20.0);
      v96 = (*(*a2 + 48))(a2);
      v97 = v95 + 5.0;
      v98 = v53[-4].n128_f64[0];
      v99 = __sincos_stret(v96);
      v78 = v98 + v97 * v99.__cosval;
      v79 = v53[-4].n128_f64[1] + v97 * v99.__sinval;
      if ((*(*v71 + 16))(v71, v78, v79))
      {
        goto LABEL_61;
      }
    }

    if (++v46 != v216)
    {
      continue;
    }

    break;
  }

LABEL_107:
  sub_10020E218((a1 + 8), &v219, &v233, &v229, v218);
  v109 = v219;
  v108 = v220;
  if (v220 == v219)
  {
    v114 = v217[1] - *v217;
    if (0xCCCCCCCCCCCCCCCDLL * ((v220 - v219) >> 4) >= v114 >> 3)
    {
      goto LABEL_113;
    }

LABEL_159:
    sub_1000474A4(&v242, "");
    sub_1000BDA70("Didn't generate enough hypotheses for output!", &buf);
    sub_1000E661C(&v242, &buf, 1);
    if (SBYTE7(v249) < 0)
    {
      operator delete(buf.n128_u64[0]);
    }

    if (v243.n128_i8[7] < 0)
    {
      operator delete(v242.n128_u64[0]);
    }

    sub_10003F5D0(v241);
  }

  v110 = 0;
  v111 = 0;
  do
  {
    if (fabs(*(v218[0] + v111)) == INFINITY)
    {
      *(v218[0] + v111) = 0xC202A05F20000000;
    }

    v112 = sub_10021569C(&v109[v110]);
    sub_10021715C(&v109[v110], *(v218[0] + v111++) - v112);
    v109 = v219;
    v108 = v220;
    v113 = 0xCCCCCCCCCCCCCCCDLL * ((v220 - v219) >> 4);
    v110 += 80;
  }

  while (v111 < v113);
  v114 = v217[1] - *v217;
  if (v113 < v114 >> 3)
  {
    goto LABEL_159;
  }

LABEL_113:
  if (v114 << 29)
  {
    v115 = (v114 >> 3);
    if (v115 >= 2)
    {
      v116 = (v115 - 2) >> 1;
      v117 = v116 + 1;
      v118 = &v109[80 * v116];
      do
      {
        sub_10023ABF8(v109, (v114 >> 3), v118);
        v118 -= 80;
        --v117;
      }

      while (v117);
    }

    v119 = &v109[80 * (v114 >> 3)];
    if (v119 != v108)
    {
      v208 = &v109[80 * (v114 >> 3)];
      do
      {
        v209 = sub_10021569C(v208);
        if (v209 > sub_10021569C(v109))
        {
          sub_1001EE0EC(v208, v109, v210, v211, v212, v213, v214);
          sub_10023ABF8(v109, v115, v109);
        }

        v208 += 80;
      }

      while (v208 != v108);
    }

    if (v115 >= 2)
    {
      do
      {
        v121 = v119;
        sub_100217150(&v242, v109);
        v122 = 0;
        v123 = *(v109 + 1);
        v124 = *(v109 + 2);
        v125 = *(v109 + 24);
        v246 = *(v109 + 56);
        v245 = v125;
        *(v109 + 7) = 0;
        *(v109 + 8) = 0;
        v247 = *(v109 + 9);
        v126 = v109;
        v243 = v123;
        v244 = v124;
        do
        {
          v127 = v126;
          v126 += 80 * v122 + 80;
          v128 = 2 * v122;
          v122 = (2 * v122) | 1;
          v129 = v128 + 2;
          if (v128 + 2 < v115)
          {
            v130 = sub_10021569C(v126);
            if (v130 > sub_10021569C(v126 + 80))
            {
              v126 += 80;
              v122 = v129;
            }
          }

          sub_100217150(v127, v126);
          v131 = *(v126 + 16);
          v132 = *(v126 + 32);
          *(v127 + 48) = *(v126 + 48);
          *(v127 + 16) = v131;
          *(v127 + 32) = v132;
          v133 = *(v126 + 56);
          *(v126 + 56) = 0;
          *(v126 + 64) = 0;
          v134 = *(v127 + 64);
          *(v127 + 56) = v133;
          if (v134 && !atomic_fetch_add(&v134->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v134->__on_zero_shared)(v134);
            std::__shared_weak_count::__release_weak(v134);
          }

          *(v127 + 72) = *(v126 + 72);
        }

        while (v122 <= ((v115 - 2) >> 1));
        v119 = v121 - 5;
        if (v126 == &v121[-5])
        {
          sub_100217150(v126, &v242);
          v161 = v243;
          v162 = v244;
          *(v126 + 48) = v245;
          *(v126 + 16) = v161;
          *(v126 + 32) = v162;
          v163 = v246;
          v246 = 0uLL;
          v164 = *(v126 + 64);
          *(v126 + 56) = v163;
          if (v164 && !atomic_fetch_add(&v164->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v164->__on_zero_shared)(v164);
            std::__shared_weak_count::__release_weak(v164);
          }

          *(v126 + 72) = v247;
          goto LABEL_153;
        }

        sub_100217150(v126, v121 - 5);
        v135 = v121[-4];
        v136 = v121[-3];
        *(v126 + 48) = v121[-2].n128_u16[0];
        *(v126 + 16) = v135;
        *(v126 + 32) = v136;
        v137 = *(&v121[-2] + 8);
        v121[-2].n128_u64[1] = 0;
        v121[-1].n128_u64[0] = 0;
        v138 = *(v126 + 64);
        *(v126 + 56) = v137;
        if (v138 && !atomic_fetch_add(&v138->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v138->__on_zero_shared)(v138);
          std::__shared_weak_count::__release_weak(v138);
        }

        *(v126 + 72) = v121[-1].n128_u64[1];
        sub_100217150(v121 - 5, &v242);
        v139 = v121 - 4;
        v140 = v243;
        v141 = v244;
        v139[2].n128_u16[0] = v245;
        *v139 = v140;
        v139[1] = v141;
        v142 = v246;
        v246 = 0uLL;
        v143 = v121[-1].n128_u64[0];
        *(v121 - 24) = v142;
        if (v143 && !atomic_fetch_add(&v143->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v143->__on_zero_shared)(v143);
          std::__shared_weak_count::__release_weak(v143);
          v121[-1].n128_u64[1] = v247;
          v144 = v126 + 80 - v109;
          if (v144 >= 81)
          {
LABEL_136:
            v145 = (-2 - 0x3333333333333333 * (v144 >> 4)) >> 1;
            v146 = &v109[80 * v145];
            v147 = sub_10021569C(v146);
            if (v147 > sub_10021569C(v126))
            {
              sub_100217150(&buf, v126);
              v148 = *(v126 + 16);
              v149 = *(v126 + 32);
              v251 = *(v126 + 48);
              v249 = v148;
              v250 = v149;
              v252 = *(v126 + 56);
              *(v126 + 56) = 0;
              *(v126 + 64) = 0;
              v253 = *(v126 + 72);
              do
              {
                v150 = v146;
                sub_100217150(v126, v146);
                v151 = *(v146 + 16);
                v152 = *(v146 + 32);
                *(v126 + 48) = *(v146 + 48);
                *(v126 + 16) = v151;
                *(v126 + 32) = v152;
                v153 = *(v146 + 56);
                *(v146 + 56) = 0;
                *(v146 + 64) = 0;
                v154 = *(v126 + 64);
                *(v126 + 56) = v153;
                if (v154 && !atomic_fetch_add(&v154->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v154->__on_zero_shared)(v154);
                  std::__shared_weak_count::__release_weak(v154);
                }

                *(v126 + 72) = *(v150 + 72);
                if (!v145)
                {
                  break;
                }

                v145 = (v145 - 1) >> 1;
                v146 = &v109[80 * v145];
                v155 = sub_10021569C(v146);
                v126 = v150;
              }

              while (v155 > sub_10021569C(&buf));
              sub_100217150(v150, &buf);
              v156 = v249;
              v157 = v250;
              *(v150 + 48) = v251;
              *(v150 + 16) = v156;
              *(v150 + 32) = v157;
              v158 = v252;
              v252 = 0uLL;
              v159 = *(v150 + 64);
              *(v150 + 56) = v158;
              if (v159 && !atomic_fetch_add(&v159->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v159->__on_zero_shared)(v159);
                std::__shared_weak_count::__release_weak(v159);
              }

              v160 = *(&v252 + 1);
              *(v150 + 72) = v253;
              if (v160 && !atomic_fetch_add(&v160->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v160->__on_zero_shared)(v160);
                std::__shared_weak_count::__release_weak(v160);
              }
            }
          }
        }

        else
        {
          v121[-1].n128_u64[1] = v247;
          v144 = v126 + 80 - v109;
          if (v144 >= 81)
          {
            goto LABEL_136;
          }
        }

LABEL_153:
        v165 = v246.n128_u64[1];
        if (v246.n128_u64[1] && !atomic_fetch_add((v246.n128_u64[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v165->__on_zero_shared)(v165);
          std::__shared_weak_count::__release_weak(v165);
        }
      }

      while (v115-- > 2);
    }
  }

  v166 = *v217;
  v167 = v217[1];
  if (v167 != *v217)
  {
    v168 = 0;
    v169 = 0;
    do
    {
      v170 = v219;
      v171 = v219 + v168;
      v172 = v166[v169];
      sub_100217150(v172, (v219 + v168));
      v173 = *(v171 + 1);
      v174 = *(v171 + 2);
      *(v172 + 48) = *(v171 + 24);
      *(v172 + 16) = v173;
      *(v172 + 32) = v174;
      v175 = *(v171 + 56);
      *(v171 + 7) = 0;
      *(v171 + 8) = 0;
      v176 = *(v172 + 64);
      *(v172 + 56) = v175;
      if (v176 && !atomic_fetch_add(&v176->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v176->__on_zero_shared)(v176);
        std::__shared_weak_count::__release_weak(v176);
      }

      *(v172 + 72) = *&v170[v168 + 72];
      ++v169;
      v166 = *v217;
      v167 = v217[1];
      v168 += 80;
    }

    while (v169 < v167 - *v217);
  }

  if (v166 != v167)
  {
    for (k = v166 + 1; k != v167; ++k)
    {
      v178 = *k;
      v179 = sub_10021569C(*v166);
      if (v179 > sub_10021569C(v178))
      {
        v166 = k;
      }
    }
  }

  v180 = sub_10021569C(*v166);
  v182 = *v217;
  v181 = v217[1];
  v183 = 0.0;
  if (v180 != -INFINITY && v182 != v181)
  {
    do
    {
      v184 = sub_10021569C(*v182);
      v183 = v183 + exp(v184 - v180);
      ++v182;
    }

    while (v182 != v181);
    v182 = *v217;
    v181 = v217[1];
  }

  v185 = log(v183);
  if (v181 != v182)
  {
    v186 = 0;
    v187 = v39 + v45;
    v188 = v187 - (v180 + v185);
    v189 = fabs(v188);
    do
    {
      if (v189 < 0x7FF0000000000000)
      {
        v191 = v188;
      }

      else
      {
        v190 = sub_10021569C(v182[v186]);
        v182 = *v217;
        v191 = v187 - log((v217[1] - *v217)) - v190;
      }

      sub_10021715C(v182[v186], v191);
      if ((COERCE_UNSIGNED_INT64(sub_10021569C((*v217)[v186])) & 0x7FFFFFFFFFFFFFFFLL) >= 0x7FF0000000000000)
      {
        sub_1000474A4(&v242, "");
        sub_10023AEF4(&buf, "Should be no NaNs");
        sub_1000E661C(&v242, &buf, 1);
        if (SBYTE7(v249) < 0)
        {
          operator delete(buf.n128_u64[0]);
        }

        if (v243.n128_i8[7] < 0)
        {
          operator delete(v242.n128_u64[0]);
        }

        sub_10003F5D0(v241);
      }

      ++v186;
      v182 = *v217;
    }

    while (v186 < v217[1] - *v217);
  }

  if (v218[0])
  {
    v218[1] = v218[0];
    operator delete(v218[0]);
  }

  v192 = v219;
  if (v219)
  {
    v193 = v220;
    v194 = v219;
    if (v220 != v219)
    {
      do
      {
        v195 = v193[-1].n128_u64[0];
        if (v195 && !atomic_fetch_add(&v195->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v195->__on_zero_shared)(v195);
          std::__shared_weak_count::__release_weak(v195);
        }

        v193 -= 5;
      }

      while (v193 != v192);
      v194 = v219;
    }

    v220 = v192;
    operator delete(v194);
  }

  if (v231)
  {
    v232 = v231;
    operator delete(v231);
  }

  v196 = v229;
  if (v229)
  {
    v197 = v230;
    v198 = v229;
    if (v230 != v229)
    {
      v199 = v230 - 168;
      do
      {
        v201 = *(v197 - 44);
        if (v201 == v201 >> 31)
        {
          if (*(v197 - 128) == 1)
          {
            *(v197 - 128) = 0;
          }
        }

        else
        {
          v200 = *(v197 - 21);
          if (v201 < 0)
          {
            if (v200)
            {
              (*(*v200 + 8))(v200);
            }
          }

          else
          {
            (*v200)(v197 - 168);
          }
        }

        v197 -= 208;
        v199 -= 208;
      }

      while (v197 != v196);
      v198 = v229;
    }

    v230 = v196;
    operator delete(v198);
  }

  if (v233)
  {
    v234 = v233;
    operator delete(v233);
  }

  if (v238)
  {
    v239 = v238;
    operator delete(v238);
  }

  v202 = v236;
  if (v236)
  {
    v203 = v237;
    v204 = v236;
    if (v237 != v236)
    {
      v205 = v237 - 168;
      do
      {
        v207 = *(v203 - 44);
        if (v207 == v207 >> 31)
        {
          if (*(v203 - 128) == 1)
          {
            *(v203 - 128) = 0;
          }
        }

        else
        {
          v206 = *(v203 - 21);
          if (v207 < 0)
          {
            if (v206)
            {
              (*(*v206 + 8))(v206);
            }
          }

          else
          {
            (*v206)(v203 - 168);
          }
        }

        v203 -= 208;
        v205 -= 208;
      }

      while (v203 != v202);
      v204 = v236;
    }

    v237 = v202;
    operator delete(v204);
  }
}

void sub_100237FBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, char *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  sub_1001E4D4C(&a15);
  sub_1001CFAA0(&a25);
  if (a34)
  {
    a35 = a34;
    operator delete(a34);
    v56 = a40;
    if (!a40)
    {
LABEL_7:
      v57 = a37;
      if (!a37)
      {
LABEL_12:
        _Unwind_Resume(a1);
      }

LABEL_11:
      sub_100386060(&a38, v57, &a37);
      goto LABEL_12;
    }
  }

  else
  {
    v56 = a40;
    if (!a40)
    {
      goto LABEL_7;
    }
  }

  a41 = v56;
  operator delete(v56);
  v57 = a37;
  if (!a37)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

uint64_t sub_10023819C(uint64_t a1, char a2, uint64_t a3)
{
  *a1 = off_1004437D0;
  sub_100145110(a1 + 8, a3);
  *(a1 + 64) = a2;
  return a1;
}

void sub_1002381EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int64x2_t *a5)
{
  if (qword_10045B050 != -1)
  {
    sub_10038604C();
  }

  v8 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v9 = (a4[1] - *a4) >> 3;
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "WifiBoundsGeneratorBase::setParticleState, for #outputParticles=%zu", &buf, 0xCu);
  }

  buf = 0u;
  v80 = 0u;
  v81 = 1065353216;
  v11 = *a4;
  v10 = a4[1];
  if (*a4 == v10)
  {
    v14 = 0;
  }

  else
  {
    do
    {
      v12 = sub_10025B320(*(a3 + 40), a2, *(a1 + 64));
      v13 = sub_100238B64(&buf, v12);
      sub_10003ABD8(v13, v11++);
    }

    while (v11 != v10);
    v14 = v80;
  }

  v73 = 0uLL;
  v72 = off_10043DB08;
  v74 &= 0xFCu;
  if (!v14)
  {
    goto LABEL_82;
  }

  while (2)
  {
    v70 = 0;
    v71 = 0;
    __p = 0;
    if (*(*(*v14[2] + 40))(v14[2]))
    {
      v16 = (*(*v14[2] + 40))(v14[2]);
      (*(**v16 + 56))(v75);
      v18 = v75[0];
      v17 = v75[1];
      *&v78 = 0;
      v77 = 0uLL;
      if (v75[0] == v75[1])
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
      }

      else
      {
        v19 = 0;
        v20 = 0;
        v21 = 0;
        do
        {
          if (*v18)
          {
            v22 = v20;
            if (((v20 >> 4) + 1) >> 60)
            {
              *&v77 = 0;
              *(&v77 + 1) = v20;
              *&v78 = 0;
              sub_10000FC84();
            }

            if (v20 >> 4 != -1)
            {
              if (!(((v20 >> 4) + 1) >> 60))
              {
                operator new();
              }

              *&v77 = 0;
              *(&v77 + 1) = v20;
              *&v78 = 0;
              sub_10000D444();
            }

            v21 = 0;
            v23 = (16 * (v20 >> 4));
            *v23 = *v18;
            v24 = v18[1];
            v23[1] = v24;
            if (v24)
            {
              atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
            }

            v19 = 0;
            v20 = (v23 + 2);
            memcpy(0, 0, v22);
          }

          v18 += 2;
        }

        while (v18 != v17);
        *&v77 = 0;
        *(&v77 + 1) = v20;
        *&v78 = 0;
        v25 = __p;
        if (__p)
        {
          v26 = v70;
          v27 = __p;
          if (v70 != __p)
          {
            do
            {
              v28 = *(v26 - 1);
              if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v28->__on_zero_shared)(v28);
                std::__shared_weak_count::__release_weak(v28);
              }

              v26 -= 16;
            }

            while (v26 != v25);
            v27 = __p;
          }

          v70 = v25;
          operator delete(v27);
          v20 = *(&v77 + 1);
          v21 = v77;
          v19 = v78;
        }
      }

      __p = v21;
      v70 = v20;
      v71 = v19;
      *&v78 = 0;
      v77 = 0uLL;
      v29 = v75[0];
      if (v75[0])
      {
        v30 = v75[1];
        v31 = v75[0];
        if (v75[1] != v75[0])
        {
          do
          {
            v32 = *(v30 - 1);
            if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v32->__on_zero_shared)(v32);
              std::__shared_weak_count::__release_weak(v32);
            }

            v30 -= 16;
          }

          while (v30 != v29);
          v31 = v75[0];
        }

        v75[1] = v29;
        operator delete(v31);
      }
    }

    else
    {
      __p = 0;
      v70 = 0;
      v71 = 0;
    }

    v33 = v14[4];
    v34 = v14[5];
    while (v33 != v34)
    {
      v36 = __p;
      v37 = v70;
      if (__p == v70)
      {
        *&v77 = (*(*v14[2] + 24))(v14[2]);
        *(&v77 + 1) = v49;
        *&v78 = v50;
        *(&v78 + 1) = v51;
        sub_10031CE24(&v77, a2, v75);
        sub_10012A358(&v72, v75);
        nullsub_75();
        v52 = *v33;
        v53 = v14[3];
        *&v64 = v14[2];
        *(&v64 + 1) = v53;
        if (!v53)
        {
          goto LABEL_72;
        }

LABEL_71:
        atomic_fetch_add_explicit(v53 + 1, 1uLL, memory_order_relaxed);
        goto LABEL_72;
      }

      v38 = (*(*v14[2] + 16))(v14[2]);
      v39 = *(a1 + 48);
      v41 = *(a1 + 40);
      v40 = *(a1 + 44);
      v77 = xmmword_1003DE5A0;
      v78 = unk_1003DE5B0;
      v42 = (v37 - v36) >> 4;
      if (v42 >= v40)
      {
        v43 = v40;
      }

      else
      {
        v43 = (v37 - v36) >> 4;
      }

      if (v43)
      {
        v44 = 1;
        do
        {
          v45 = (*(*a2 + 88))(a2, v42);
          v46 = (*(**&v36[16 * v45] + 32))(*&v36[16 * v45]);
          v47 = v46[1];
          *v75 = *v46;
          v76 = v47;
          if (sub_10031C818(v75, &v77))
          {
            sub_10031C5F8(&v77, v75);
          }
        }

        while ((*(*a2 + 32))(a2) >= v39 && v44++ < v43);
      }

      v65 = off_10043DB08;
      v66 = 0.0;
      v67 = 0.0;
      v68 &= 0xFCu;
      if (v41)
      {
        while (1)
        {
          sub_10031CE24(&v77, a2, v75);
          sub_10012A358(&v65, v75);
          nullsub_75();
          if ((*(*v38 + 16))(v38, v66, v67))
          {
            break;
          }

          if (!--v41)
          {
            goto LABEL_66;
          }
        }

        sub_1002C50C0(a5);
      }

      else
      {
LABEL_66:
        sub_1002C50D0(a5);
      }

      sub_10012A358(&v72, &v65);
      nullsub_75();
      v52 = *v33;
      v53 = v14[3];
      *&v64 = v14[2];
      *(&v64 + 1) = v53;
      if (v53)
      {
        goto LABEL_71;
      }

LABEL_72:
      sub_1001E8D30(v52, &v64);
      v54 = *(&v64 + 1);
      if (*(&v64 + 1) && !atomic_fetch_add((*(&v64 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v54->__on_zero_shared)(v54);
        std::__shared_weak_count::__release_weak(v54);
      }

      v35 = *v33++;
      *(v35 + 16) = v73;
      *(v35 + 48) = 0;
    }

    v15 = __p;
    if (__p)
    {
      v55 = v70;
      if (v70 != __p)
      {
        do
        {
          v56 = *(v55 - 1);
          if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v56->__on_zero_shared)(v56);
            std::__shared_weak_count::__release_weak(v56);
          }

          v55 -= 16;
        }

        while (v55 != v15);
        v15 = __p;
      }

      operator delete(v15);
    }

    v14 = *v14;
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_82:
  nullsub_75();
  v57 = v80;
  while (v57)
  {
    v58 = v57;
    v57 = *v57;
    v59 = v58[4];
    if (v59)
    {
      v58[5] = v59;
      operator delete(v59);
    }

    v60 = v58[3];
    if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v60->__on_zero_shared)(v60);
      std::__shared_weak_count::__release_weak(v60);
    }

    operator delete(v58);
  }

  v61 = buf;
  *&buf = 0;
  if (v61)
  {
    operator delete(v61);
  }
}

void sub_100238AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_100048F1C(va);
  nullsub_75();
  sub_100239060(v19 - 160);
  _Unwind_Resume(a1);
}

void *sub_100238B64(float *a1, void *a2)
{
  v4 = (*(**a2 + 64))();
  v5 = sub_1001183C0(&v15, v4);
  v6 = *(a1 + 2);
  if (!*&v6)
  {
    goto LABEL_22;
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
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_22:
    operator new();
  }

  v11 = *a2;
  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v11)
        {
          return v10 + 4;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_22;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v13 = v10[1];
    if (v13 == v5)
    {
      break;
    }

    if (v13 >= *&v6)
    {
      v13 %= *&v6;
    }

    if (v13 != v8)
    {
      goto LABEL_22;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v10[2] != v11)
  {
    goto LABEL_17;
  }

  return v10 + 4;
}

void sub_10023904C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10023AF44(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100239060(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    v4 = v3[4];
    if (v4)
    {
      v3[5] = v4;
      operator delete(v4);
    }

    v5 = v3[3];
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v3);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    operator delete(v6);
  }

  return a1;
}

uint64_t sub_100239120(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(result + 8);
  for (i = *(result + 16); v5 != i; result = (*(*v11 + 16))(v11, a2, a3, a4, a5))
  {
    v11 = *v5++;
  }

  return result;
}

void sub_1002391A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  if (*(a3 + 80) == 1 && !sub_10017226C(a3 + 88) && (*(a3 + 280) & 0x8080) == 0x8080)
  {
    v7 = *a4;
    v8 = a4[1];
    if (*a4 != v8)
    {
      do
      {
        v9 = sub_1000BC004(*(a3 + 248));
        v10 = *(a3 + 192);
        (*(**(*v7 + 56) + 48))(&v17);
        v11 = sub_1000BC6A0(&v17, v10);
        *(*v7 + 32) = v11 + (*(*a2 + 64))(a2, 0.0, v9);
        v12 = v18;
        if (v18)
        {
          if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v12->__on_zero_shared)(v12);
            std::__shared_weak_count::__release_weak(v12);
          }
        }

        ++v7;
      }

      while (v7 != v8);
    }
  }

  else
  {
    v13 = *a4;
    for (i = a4[1]; v13 != i; *(v16 + 32) = v15)
    {
      v15 = (*(*a2 + 48))(a2);
      v16 = *v13++;
    }
  }
}

void *sub_100239368(void *a1, uint64_t a2)
{
  *a1 = off_1004437F8;
  sub_100250BA8(a2, (a1 + 1));
  return a1;
}

void sub_1002393B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int64x2_t *a5)
{
  if (qword_10045B050 != -1)
  {
    sub_10038604C();
  }

  v9 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v10 = (a4[1] - *a4) >> 3;
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Multiphone::setParticleState, for #outputParticles=%zu", &buf, 0xCu);
  }

  *v47 = 0u;
  *v48 = 0u;
  v49 = 1065353216;
  v12 = *a4;
  v11 = a4[1];
  if (*a4 == v11)
  {
LABEL_44:
    v34 = v48[0];
    if (v48[0])
    {
      do
      {
        v35 = v34;
        v34 = *v34;
        v36 = v35[4];
        if (v36)
        {
          v35[5] = v36;
          operator delete(v36);
        }

        v37 = v35[3];
        if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v37->__on_zero_shared)(v37);
          std::__shared_weak_count::__release_weak(v37);
        }

        operator delete(v35);
      }

      while (v34);
    }
  }

  else
  {
    do
    {
      v13 = sub_100238B64(v47, (*v12 + 56));
      sub_10003ABD8(v13, v12++);
    }

    while (v12 != v11);
    v14 = v48[0];
    if (v48[0])
    {
      while (1)
      {
        (*(**(a3 + 64) + 16))(&__p);
        v16 = (*(*v14[2] + 40))(v14[2]);
        (*(**v16 + 48))(&buf);
        *v43 = buf;
        v44 = v51;
        v18 = v14[4];
        v17 = v14[5];
        if (v18 != v17)
        {
          break;
        }

        v25 = buf;
        if (!buf)
        {
          goto LABEL_33;
        }

LABEL_25:
        v26 = v43[1];
        v27 = v25;
        if (v43[1] != v25)
        {
          do
          {
            v28 = *(v26 - 1);
            if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v28->__on_zero_shared)(v28);
              std::__shared_weak_count::__release_weak(v28);
            }

            v26 -= 16;
          }

          while (v26 != v25);
          v27 = v43[0];
        }

        v43[1] = v25;
        operator delete(v27);
LABEL_33:
        v29 = __p;
        if (__p)
        {
          v30 = v46;
          v15 = __p;
          if (v46 != __p)
          {
            v31 = v46 - 168;
            do
            {
              v33 = *(v30 - 44);
              if (v33 == v33 >> 31)
              {
                if (*(v30 - 128) == 1)
                {
                  *(v30 - 128) = 0;
                }
              }

              else
              {
                v32 = *(v30 - 21);
                if (v33 < 0)
                {
                  if (v32)
                  {
                    (*(*v32 + 8))(v32);
                  }
                }

                else
                {
                  (*v32)(v30 - 168);
                }
              }

              v30 -= 208;
              v31 -= 208;
            }

            while (v30 != v29);
            v15 = __p;
          }

          v46 = v29;
          operator delete(v15);
        }

        v14 = *v14;
        if (!v14)
        {
          goto LABEL_44;
        }
      }

      while (1)
      {
        v40[3] = off_10043DB08;
        v41 = 0uLL;
        v42 &= 0xFCu;
        v41 = *(*v18 + 16);
        v19 = (*(*v14[2] + 40))(v14[2]);
        (*(**v19 + 16))(&buf);
        v40[0] = sub_100258CE4(a1 + 8, &buf, v43, &__p);
        v40[1] = v20;
        v40[2] = v21;
        sub_1002590E8(a1 + 8, v40, a2, a2, a5);
        *(*v18 + 40) = v22;
        v23 = v52;
        if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
          v24 = *(&buf + 1);
          if (*(&buf + 1))
          {
LABEL_18:
            if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v24->__on_zero_shared)(v24);
              std::__shared_weak_count::__release_weak(v24);
            }
          }
        }

        else
        {
          v24 = *(&buf + 1);
          if (*(&buf + 1))
          {
            goto LABEL_18;
          }
        }

        nullsub_75();
        if (++v18 == v17)
        {
          v25 = v43[0];
          if (!v43[0])
          {
            goto LABEL_33;
          }

          goto LABEL_25;
        }
      }
    }
  }

  v38 = v47[0];
  v47[0] = 0;
  if (v38)
  {
    operator delete(v38);
  }
}

void sub_100239904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_100239060(va);
  _Unwind_Resume(a1);
}

void sub_100239918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va1, a19);
  va_start(va, a19);
  v20 = va_arg(va1, char *);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  sub_1001CE6F4(va);
  sub_100239060(va1);
  _Unwind_Resume(a1);
}

void sub_100239934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_100239060(va);
  _Unwind_Resume(a1);
}

void sub_100239948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_1001736CC(va);
  nullsub_75();
  sub_100048F1C(&a17);
  sub_1001CE6F4(&a20);
  sub_100239060(&a23);
  _Unwind_Resume(a1);
}

void *sub_100239984(void *a1, uint64_t a2)
{
  *a1 = off_100443820;
  sub_100145110((a1 + 1), a2);
  return a1;
}

void sub_1002399C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  if (*(a3 + 80))
  {
    sub_1001300D0(v9, a3 + 88);
    sub_1000BF8EC(a3, v9, &v8);
    v6 = (*(*v8 + 56))(v8);
    sub_10011B8B8(v7, v6);
    sub_1000B9540(v7);
  }

  sub_1000474A4(v9, "");
  sub_10023AFE8(v11, "Trying to inject particles from a non-existent external (GPS-like) measurement!");
  sub_100382FC4(v11, v10, v9);
  sub_10003F5D0(v10);
}

void sub_10023A5D0(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x9F7]) < 0)
  {
    operator delete(STACK[0x9E0]);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void *sub_10023A8D0(void *a1)
{
  *a1 = off_1004437D0;
  sub_1001451B0((a1 + 1));
  return a1;
}

void sub_10023A914(void *a1)
{
  *a1 = off_1004437D0;
  sub_1001451B0((a1 + 1));

  operator delete();
}

void *sub_10023A978(void *a1)
{
  *a1 = off_1004438C8;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[2];
    v4 = a1[1];
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = a1[1];
    }

    a1[2] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_10023AA24(void *a1)
{
  *a1 = off_1004438C8;
  v2 = a1[1];
  if (v2)
  {
    v3 = a1[2];
    v4 = a1[1];
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          (*(*v5 + 8))(v5);
        }
      }

      while (v3 != v2);
      v4 = a1[1];
    }

    a1[2] = v2;
    operator delete(v4);
  }

  operator delete();
}

void *sub_10023AB20(void *a1)
{
  *a1 = off_100443820;
  sub_1001451B0((a1 + 1));
  return a1;
}

void sub_10023AB64(void *a1)
{
  *a1 = off_100443820;
  sub_1001451B0((a1 + 1));

  operator delete();
}

void sub_10023ABF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v4 = a3;
    v6 = v3 >> 1;
    if ((v3 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a3 - a1) >> 4)))
    {
      v8 = (0x999999999999999ALL * ((a3 - a1) >> 4)) | 1;
      v9 = a1 + 80 * v8;
      v10 = 0x999999999999999ALL * ((a3 - a1) >> 4) + 2;
      if (v10 < a2)
      {
        v11 = sub_10021569C(a1 + 80 * v8);
        if (v11 > sub_10021569C(v9 + 80))
        {
          v9 += 80;
          v8 = v10;
        }
      }

      v12 = sub_10021569C(v9);
      if (v12 <= sub_10021569C(v4))
      {
        sub_100217150(&v28, v4);
        v13 = *(v4 + 16);
        v14 = *(v4 + 32);
        v31 = *(v4 + 48);
        v29 = v13;
        v30 = v14;
        v32 = *(v4 + 56);
        *(v4 + 56) = 0;
        *(v4 + 64) = 0;
        v33 = *(v4 + 72);
        do
        {
          v15 = v9;
          sub_100217150(v4, v9);
          v16 = *(v9 + 16);
          v17 = *(v9 + 32);
          *(v4 + 48) = *(v9 + 48);
          *(v4 + 16) = v16;
          *(v4 + 32) = v17;
          v18 = *(v9 + 56);
          *(v9 + 56) = 0;
          *(v9 + 64) = 0;
          v19 = *(v4 + 64);
          *(v4 + 56) = v18;
          if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v19->__on_zero_shared)(v19);
            std::__shared_weak_count::__release_weak(v19);
          }

          *(v4 + 72) = *(v15 + 72);
          if (v6 < v8)
          {
            break;
          }

          v20 = (2 * v8) | 1;
          v9 = a1 + 80 * v20;
          v8 = 2 * v8 + 2;
          if (v8 >= a2)
          {
            v8 = v20;
          }

          else
          {
            v21 = sub_10021569C(a1 + 80 * v20);
            if (v21 <= sub_10021569C(v9 + 80))
            {
              v8 = v20;
            }

            else
            {
              v9 += 80;
            }
          }

          v22 = sub_10021569C(v9);
          v4 = v15;
        }

        while (v22 <= sub_10021569C(&v28));
        sub_100217150(v15, &v28);
        v23 = v29;
        v24 = v30;
        *(v15 + 48) = v31;
        *(v15 + 16) = v23;
        *(v15 + 32) = v24;
        v25 = v32;
        v32 = 0uLL;
        v26 = *(v15 + 64);
        *(v15 + 56) = v25;
        if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v26->__on_zero_shared)(v26);
          std::__shared_weak_count::__release_weak(v26);
        }

        v27 = *(&v32 + 1);
        *(v15 + 72) = v33;
        if (v27)
        {
          if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v27->__on_zero_shared)(v27);
            std::__shared_weak_count::__release_weak(v27);
          }
        }
      }
    }
  }
}

std::string *sub_10023AEF4@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_10023AF28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10023AF44(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = v2[4];
      if (v3)
      {
        v2[5] = v3;
        operator delete(v3);
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

std::string *sub_10023AFE8@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_10023B01C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10023B038(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    nullsub_75();
    v4 = *(i - 40);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10023B0E8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10023B158()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10023B1C8(int a1@<W0>, std::string *a2@<X8>)
{
  v4 = strerror(a1);
  v5 = strlen(v4);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v5;
  if (v5)
  {
    memmove(&__dst, v4, v5);
  }

  __dst.__r_.__value_.__s.__data_[v6] = 0;
  v7 = std::string::insert(&__dst, 0, "ERRNO: ");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = std::string::append(&v18, " (");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a1);
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

  v13 = std::string::append(&v19, p_p, size);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v20, ")");
  *a2 = *v15;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_21;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_23:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

LABEL_22:
  operator delete(v18.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }
}

void sub_10023B3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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

std::string *sub_10023B498@<X0>(int a1@<W0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (a1 <= 1545)
  {
    if (a1 <= 521)
    {
      if (a1 > 274)
      {
        if (a1 <= 515)
        {
          if (a1 == 275)
          {
            v2 = "CHECK constraint failed";
            return std::string::assign(a2, v2);
          }

          if (a1 == 283)
          {
            v2 = "WAL mode database file is recovered";
            return std::string::assign(a2, v2);
          }
        }

        else
        {
          switch(a1)
          {
            case 516:
              v2 = "statement aborted because the transaction that was active when the SQL statement first started was rolled back";
              return std::string::assign(a2, v2);
            case 517:
              v2 = "database connection tried to promote a read transaction into a write transaction but finds that another database connection has already written to the database and thus invalidated prior reads";
              return std::string::assign(a2, v2);
            case 520:
              v2 = "SQLite is unable to obtain a read lock on a WAL mode database because the shared-memory file associated with that database is read-only";
              return std::string::assign(a2, v2);
          }
        }
      }

      else if (a1 <= 263)
      {
        if (a1 == 261)
        {
          v2 = "operation could not continue because another process is busy recovering a WAL mode database file following a crash";
          return std::string::assign(a2, v2);
        }

        if (a1 == 262)
        {
          v2 = "locking conflict has occurred due to contention with a different database connection that happens to hold a shared cache with the database connection to which the error was returned";
          return std::string::assign(a2, v2);
        }
      }

      else
      {
        switch(a1)
        {
          case 264:
            v2 = "WAL mode database cannot be opened because the database file needs to be recovered and recovery requires write access but only read access is available";
            return std::string::assign(a2, v2);
          case 266:
            v2 = "I/O error in the VFS layer while trying to read from a file on disk. This error might result from a hardware malfunction or because a filesystem came unmounted while the file was open.";
            return std::string::assign(a2, v2);
          case 267:
            v2 = "content in the virtual table may be corrupt";
            return std::string::assign(a2, v2);
        }
      }
    }

    else if (a1 <= 781)
    {
      if (a1 <= 530)
      {
        if (a1 == 522)
        {
          v2 = "read attempt in the VFS layer was unable to obtain as many bytes as was requested. This might be due to a truncated file";
          return std::string::assign(a2, v2);
        }

        if (a1 == 526)
        {
          v2 = "a file open operation failed because the file is really a directory";
          return std::string::assign(a2, v2);
        }
      }

      else
      {
        switch(a1)
        {
          case 531:
            v2 = "a commit hook callback returned non-zero that thus caused the SQL statement to be rolled back";
            return std::string::assign(a2, v2);
          case 776:
            v2 = "database cannot be opened because it has a hot journal that needs to be rolled back but cannot because the database is readonly";
            return std::string::assign(a2, v2);
          case 778:
            v2 = "I/O error in the VFS layer while trying to write into a file on disk. This error might result from a hardware malfunction or because a filesystem came unmounted while the file was open. This error should not occur if the filesystem is full as there is a separate error code (SQLITE_FULL) for that purpose";
            return std::string::assign(a2, v2);
        }
      }
    }

    else if (a1 > 1033)
    {
      switch(a1)
      {
        case 1034:
          v2 = "I/O error in the VFS layer while trying to flush previously written content out of OS and/or disk-control buffers and into persistent storage";
          return std::string::assign(a2, v2);
        case 1290:
          v2 = "I/O error in the VFS layer while trying to invoke fsync() on a directory. The unix VFS attempts to fsync() directories after creating or deleting certain files to ensure that those files will still appear in the filesystem following a power loss or system crash. This error code indicates a problem attempting to perform that fsync()";
          return std::string::assign(a2, v2);
        case 1299:
          v2 = "NOT NULL constraint failed";
          return std::string::assign(a2, v2);
      }
    }

    else
    {
      switch(a1)
      {
        case 782:
          v2 = "file open operation failed because the operating system was unable to convert the filename into a full pathname";
          return std::string::assign(a2, v2);
        case 787:
          v2 = "foreign key constraint failed";
          return std::string::assign(a2, v2);
        case 1032:
          v2 = "database cannot be modified because the database file has been moved since it was opened";
          return std::string::assign(a2, v2);
      }
    }

LABEL_102:
    v2 = "unhandled message. please check documentation";
    return std::string::assign(a2, v2);
  }

  if (a1 > 3593)
  {
    if (a1 <= 5385)
    {
      if (a1 <= 4105)
      {
        if (a1 == 3594)
        {
          v2 = "I/O error within the xCheckReservedLock method on the sqlite3_io_methods object";
          return std::string::assign(a2, v2);
        }

        if (a1 == 3850)
        {
          v2 = "I/O error in the advisory file locking logic";
          return std::string::assign(a2, v2);
        }
      }

      else
      {
        switch(a1)
        {
          case 4106:
            v2 = "I/O error within the xClose method on the sqlite3_io_methods object";
            return std::string::assign(a2, v2);
          case 4618:
            v2 = "I/O error within the xShmMap method on the sqlite3_io_methods object while trying to open a new shared memory segment";
            return std::string::assign(a2, v2);
          case 4874:
            v2 = "I/O error within the xShmMap method on the sqlite3_io_methods object while trying to resize an existing shared memory segment";
            return std::string::assign(a2, v2);
        }
      }
    }

    else if (a1 > 6153)
    {
      switch(a1)
      {
        case 6154:
          v2 = "I/O error within the xFetch or xUnfetch methods on the sqlite3_io_methods object while trying to map or unmap part of the database file into the process address space";
          return std::string::assign(a2, v2);
        case 6410:
          v2 = "the VFS is unable to determine a suitable directory in which to place temporary files";
          return std::string::assign(a2, v2);
        case 6922:
          v2 = "a file relevant to the call was invalidated by a dispatch vnode source event";
          return std::string::assign(a2, v2);
      }
    }

    else
    {
      switch(a1)
      {
        case 5386:
          v2 = "I/O error within the xShmMap method on the sqlite3_io_methods object while trying to map a shared memory segment into the process address space";
          return std::string::assign(a2, v2);
        case 5642:
          v2 = "I/O error within the xRead or xWrite methods on the sqlite3_io_methods object while trying to seek a file descriptor to the beginning point of the file where the read or write is to occur";
          return std::string::assign(a2, v2);
        case 5898:
          v2 = "the xDelete method on the sqlite3_vfs object failed because the file being deleted does not exist";
          return std::string::assign(a2, v2);
      }
    }

    goto LABEL_102;
  }

  if (a1 <= 2066)
  {
    if (a1 <= 1801)
    {
      if (a1 == 1546)
      {
        v2 = "I/O error in the VFS layer while trying to truncate a file to a smaller size";
        return std::string::assign(a2, v2);
      }

      if (a1 == 1555)
      {
        v2 = "PRIMARY KEY constraint failed";
        return std::string::assign(a2, v2);
      }
    }

    else
    {
      switch(a1)
      {
        case 1802:
          v2 = "I/O error in the VFS layer while trying to invoke fstat() (or the equivalent) on a file in order to determine information such as the file size or access permissions";
          return std::string::assign(a2, v2);
        case 1811:
          v2 = "a RAISE function within a trigger fired, causing the SQL statement to abort";
          return std::string::assign(a2, v2);
        case 2058:
          v2 = "an I/O error within xUnlock method on the sqlite3_io_methods object";
          return std::string::assign(a2, v2);
      }
    }

    goto LABEL_102;
  }

  if (a1 > 2578)
  {
    switch(a1)
    {
      case 2579:
        v2 = "a rowid is not unique";
        return std::string::assign(a2, v2);
      case 3082:
        v2 = "an operation could not be completed due to the inability to allocate sufficient memory";
        return std::string::assign(a2, v2);
      case 3338:
        v2 = "I/O error within the xAccess method on the sqlite3_vfs object";
        return std::string::assign(a2, v2);
    }

    goto LABEL_102;
  }

  if (a1 == 2067)
  {
    v2 = "UNIQUE constraint failed";
    return std::string::assign(a2, v2);
  }

  if (a1 == 2314)
  {
    v2 = "I/O error within xLock method on the sqlite3_io_methods object while trying to obtain a read lock";
    return std::string::assign(a2, v2);
  }

  if (a1 != 2570)
  {
    goto LABEL_102;
  }

  v2 = "I/O error within xDelete method on the sqlite3_vfs object";
  return std::string::assign(a2, v2);
}

void sub_10023B8D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023B8F0()
{
  sub_100200EAC(1);
  if (qword_10045B080 != -1)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v0 = qword_10045B088;
    if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_FAULT) && (*buf = 68289539, v4 = 0, v5 = 2082, v6 = "", v7 = 2082, v8 = "assert", v9 = 2081, v10 = "0", _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:corrupt database, will now abort, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u), qword_10045B080 != -1))
    {
      dispatch_once(&qword_10045B080, &stru_100443A28);
      v1 = qword_10045B088;
      if (!os_signpost_enabled(qword_10045B088))
      {
        goto LABEL_6;
      }
    }

    else
    {
      v1 = qword_10045B088;
      if (!os_signpost_enabled(qword_10045B088))
      {
        goto LABEL_6;
      }
    }

    *buf = 68289539;
    v4 = 0;
    v5 = 2082;
    v6 = "";
    v7 = 2082;
    v8 = "assert";
    v9 = 2081;
    v10 = "0";
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v1, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "corrupt database, will now abort", "{msg%{public}.0s:corrupt database, will now abort, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    if (qword_10045B080 != -1)
    {
      dispatch_once(&qword_10045B080, &stru_100443A28);
      v2 = qword_10045B088;
      if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
      {
        goto LABEL_8;
      }

LABEL_7:
      *buf = 68289539;
      v4 = 0;
      v5 = 2082;
      v6 = "";
      v7 = 2082;
      v8 = "assert";
      v9 = 2081;
      v10 = "0";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "{msg%{public}.0s:corrupt database, will now abort, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      goto LABEL_8;
    }

LABEL_6:
    v2 = qword_10045B088;
    if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

LABEL_8:
    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/purpleslam/common/db/sqlite_helper.cpp", 23, "corrupt_db_abort");
LABEL_9:
    dispatch_once(&qword_10045B080, &stru_100443A28);
  }
}

void sub_10023BB40(sqlite3 **a1, int a2)
{
  v4 = sqlite3_extended_result_codes(*a1, a2);
  sub_100001838(v4, *a1);
  if (v4)
  {
    v5 = __error();
    sub_10023B1C8(*v5, &v25);
    __cxa_allocate_exception(0x40uLL);
    std::to_string(&v20, a2);
    v6 = std::string::insert(&v20, 0, "Failed to change state of extended error codes, on=");
    v7 = *&v6->__r_.__value_.__l.__data_;
    v21.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v21.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    sub_1000474A4(v18, " w/ ");
    if ((v19 & 0x80u) == 0)
    {
      v8 = v18;
    }

    else
    {
      v8 = v18[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v9 = v19;
    }

    else
    {
      v9 = v18[1];
    }

    v10 = std::string::append(&v21, v8, v9);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v22.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
    *&v22.__r_.__value_.__l.__data_ = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v17, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
    }

    else
    {
      v17 = v25;
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v17;
    }

    else
    {
      v12 = v17.__r_.__value_.__r.__words[0];
    }

    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v17.__r_.__value_.__l.__size_;
    }

    v14 = std::string::append(&v22, v12, size);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v23.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v23.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v24, &v23);
    v24.__vftable = &off_100440BD8;
    sub_10010A984(&v16);
  }
}

void sub_10023BE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a35 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  if ((a35 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a28 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a30);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_5:
    sub_10019FF4C((v67 - 152));
    v69 = a40;
    if (!a40)
    {
LABEL_12:
      std::runtime_error::~runtime_error((v67 - 168));
      if (*(v67 - 169) < 0)
      {
        operator delete(*(v67 - 192));
        if ((a48 & 0x80000000) == 0)
        {
LABEL_14:
          if ((*(v67 - 201) & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_22;
        }
      }

      else if ((a48 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      operator delete(a43);
      if ((*(v67 - 201) & 0x80000000) == 0)
      {
LABEL_15:
        if ((a55 & 0x80000000) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_23;
      }

LABEL_22:
      operator delete(*(v67 - 224));
      if ((a55 & 0x80000000) == 0)
      {
LABEL_16:
        if ((a65 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_24;
      }

LABEL_23:
      operator delete(a50);
      if ((a65 & 0x80000000) == 0)
      {
LABEL_17:
        if (a61 < 0)
        {
          goto LABEL_18;
        }

        goto LABEL_25;
      }

LABEL_24:
      operator delete(a62);
      if (a61 < 0)
      {
LABEL_18:
        operator delete(a56);
        if ((v66 & 1) == 0)
        {
LABEL_27:
          if (*(v67 - 65) < 0)
          {
            operator delete(*(v67 - 88));
          }

          _Unwind_Resume(a1);
        }

LABEL_26:
        __cxa_free_exception(v65);
        goto LABEL_27;
      }

LABEL_25:
      if (!v66)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_11:
    operator delete(v69);
    goto LABEL_12;
  }

LABEL_10:
  operator delete(a23);
  sub_10019FF4C((v67 - 152));
  v69 = a40;
  if (!a40)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_10023C05C(sqlite3 **a1)
{
  *pnCkpt = 0;
  v2 = sqlite3_wal_checkpoint_v2(*a1, 0, 0, &pnCkpt[1], pnCkpt);
  sub_100001838(v2, *a1);
  if (v2)
  {
    v4 = __error();
    sub_10023B1C8(*v4, &v17);
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v13, " w/ ");
    v5 = std::string::insert(&v13, 0, "Checkpoint failed.");
    v6 = *&v5->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100003228(&v12, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
    }

    else
    {
      v12 = v17;
    }

    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v12;
    }

    else
    {
      v7 = v12.__r_.__value_.__r.__words[0];
    }

    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v12.__r_.__value_.__l.__size_;
    }

    v9 = std::string::append(&v14, v7, size);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(&v16, &v15);
    v16.__vftable = &off_100440BD8;
    sub_10010A984(&v11);
  }

  if (qword_10045B080 != -1)
  {
    sub_100386320();
  }

  v3 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    v20 = pnCkpt[1];
    v21 = 1024;
    v22 = pnCkpt[0];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Checkpoint succeeded w/ %d frames logged and %d frames checkpointed", buf, 0xEu);
  }
}

void sub_10023C3C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((a15 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a35 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a15 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a10);
  if ((a35 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a28 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a30);
  if ((a28 & 0x80000000) == 0)
  {
LABEL_5:
    sub_10019FF4C((v62 - 144));
    v64 = a40;
    if (!a40)
    {
LABEL_12:
      std::runtime_error::~runtime_error((v62 - 192));
      if (*(v62 - 201) < 0)
      {
        operator delete(*(v62 - 224));
        if ((a48 & 0x80000000) == 0)
        {
LABEL_14:
          if ((a60 & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_20;
        }
      }

      else if ((a48 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      operator delete(a43);
      if ((a60 & 0x80000000) == 0)
      {
LABEL_15:
        if (a54 < 0)
        {
          goto LABEL_16;
        }

        goto LABEL_21;
      }

LABEL_20:
      operator delete(a55);
      if (a54 < 0)
      {
LABEL_16:
        operator delete(a49);
        if ((v61 & 1) == 0)
        {
LABEL_23:
          if (*(v62 - 153) < 0)
          {
            operator delete(*(v62 - 176));
            _Unwind_Resume(a1);
          }

          _Unwind_Resume(a1);
        }

LABEL_22:
        __cxa_free_exception(v60);
        goto LABEL_23;
      }

LABEL_21:
      if (!v61)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_11:
    operator delete(v64);
    goto LABEL_12;
  }

LABEL_10:
  operator delete(a23);
  sub_10019FF4C((v62 - 144));
  v64 = a40;
  if (!a40)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_10023C59C(sqlite3 **a1@<X0>, const char *a2@<X2>, const char *a3@<X3>, sqlite3_int64 a4@<X4>, int a5@<W5>, sqlite3_blob **a6@<X8>)
{
  ppBlob = 0;
  v8 = sqlite3_blob_open(*a1, "main", a2, a3, a4, a5, &ppBlob);
  sub_100001838(v8, *a1);
  if (v8)
  {
    v9 = __error();
    sub_10023B1C8(*v9, &v10);
    __cxa_allocate_exception(0x40uLL);
    operator new();
  }

  *a6 = ppBlob;
}

void sub_10023C8A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  sub_10019FF4C((v54 - 160));
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error((v54 - 176));
  if (*(v54 - 185) < 0)
  {
    operator delete(*(v54 - 208));
    if ((a26 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a52 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a21);
  if ((a52 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a47);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a45 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a28);
  if ((a45 & 0x80000000) == 0)
  {
LABEL_8:
    if (a39 < 0)
    {
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a40);
  if (a39 < 0)
  {
LABEL_9:
    operator delete(a34);
    if ((v52 & 1) == 0)
    {
LABEL_18:
      if (*(v54 - 73) < 0)
      {
        operator delete(*(v54 - 96));
      }

      _Unwind_Resume(a1);
    }

LABEL_17:
    __cxa_free_exception(v53);
    goto LABEL_18;
  }

LABEL_16:
  if (!v52)
  {
    goto LABEL_18;
  }

  goto LABEL_17;
}

uint64_t sub_10023CA1C(uint64_t a1, __int128 *a2, sqlite3 **a3, dispatch_object_t object)
{
  v5 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v5;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  *(a1 + 24) = a3;
  *(a1 + 56) = 0;
  *(a1 + 64) = object;
  *(a1 + 72) = 0;
  if (object)
  {
    dispatch_retain(object);
    v6 = *(a1 + 64);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 0x40000000;
    v10[2] = sub_10023CC2C;
    v10[3] = &unk_1004439A8;
    v10[4] = a1;
    __p[0] = v10;
    sub_10023DB38(v6, __p);
    return a1;
  }

  std::operator+<char>();
  if (v12 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  sub_10000210C(a3, v9, "Failed to create new savepoint");
  if ((v12 & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(__p[0]);
  return a1;
}

void sub_10023CB38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_1001848BC(v19 + 32);
    if ((*(v19 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1001848BC(v19 + 32);
    if ((*(v19 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(*v19);
  _Unwind_Resume(a1);
}

uint64_t sub_10023CBA0(uint64_t a1, uint64_t a2, sqlite3 **a3, NSObject *a4)
{
  *__p = *a2;
  v7 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  sub_10023CA1C(a1, __p, a3, a4);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_10023CC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023CC2C(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  std::operator+<char>();
  if (v4 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  sub_10000210C(v1, p_p, "Failed to create new savepoint");
  if (v4 < 0)
  {
    operator delete(__p);
  }
}

void sub_10023CCAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023CCC8(uint64_t a1)
{
  v8 = 0;
  *buf = off_100443BB8 + 1;
  v11[0] = a1;
  sub_10023F0B8(buf, &v8);
  if (*buf)
  {
    v2 = (buf[0] & 1) == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2 && **buf)
  {
    (**buf)(v11, v11, 2);
  }

  if (*(a1 + 24) && (*(a1 + 73) & 1) == 0 && (*(a1 + 72) & 1) == 0)
  {
    if (qword_10045B080 == -1)
    {
      v3 = qword_10045B088;
      if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_100386320();
      v3 = qword_10045B088;
      if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
      {
LABEL_14:
        std::current_exception();
        if (*buf)
        {
          std::exception_ptr::exception_ptr(&v7, buf);
          v6.__ptr_ = &v7;
          std::rethrow_exception(v6);
          __break(1u);
          return;
        }

        if (qword_10045B080 == -1)
        {
          v4 = qword_10045B088;
          if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
          {
LABEL_18:
            sub_10023D174(a1);
            std::exception_ptr::~exception_ptr(buf);
            goto LABEL_19;
          }
        }

        else
        {
          sub_100386320();
          v4 = qword_10045B088;
          if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_18;
          }
        }

        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Forgot to commit transaction?", v12, 2u);
        goto LABEL_18;
      }
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "transaction not completed", buf, 2u);
    goto LABEL_14;
  }

LABEL_19:
  if (v8)
  {
    (*((v8 & 0xFFFFFFFFFFFFFFFELL) + 8))(v9);
    if (v8)
    {
      if ((v8 & 1) == 0 && *v8)
      {
        (*v8)(v9, v9, 2);
      }
    }
  }

  v5 = *(a1 + 56);
  if (v5 == a1 + 32)
  {
    (*(*v5 + 32))(v5);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_30:
    operator delete(*a1);
    return;
  }

  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  if (*(a1 + 23) < 0)
  {
    goto LABEL_30;
  }
}

void sub_10023CF6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  std::exception_ptr::~exception_ptr(&a10);
  v19 = __cxa_begin_catch(exception_object);
  if (a2 != 2)
  {
    sub_100386348();
    sub_10023D174(v15);
    __cxa_end_catch();
LABEL_25:
    JUMPOUT(0x10023CE10);
  }

  v20 = sub_10023D350(v19);
  v21 = v20;
  if (v20)
  {
    if (*v20 == 13)
    {
      if (qword_10045B080 == -1)
      {
        v22 = qword_10045B088;
        if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_100386320();
        v22 = qword_10045B088;
        if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_16;
        }
      }

      *(v16 - 48) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Ignoring rollback exception because the only reasonable case is low-disk in which case it's because of a higher-level error anyway", (v16 - 48), 2u);
LABEL_16:
      __cxa_end_catch();
      goto LABEL_25;
    }

    if (qword_10045B080 != -1)
    {
      sub_100386320();
      v28 = qword_10045B088;
      if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    v28 = qword_10045B088;
    if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      v29 = *v21;
      *(v16 - 48) = 67109120;
      *(v16 - 44) = v29;
      v24 = "Rolling back due to sql failure %d";
      v25 = (v16 - 48);
      v26 = v28;
      v27 = 8;
      goto LABEL_14;
    }

LABEL_15:
    sub_10023D174(v15);
    goto LABEL_16;
  }

  if (qword_10045B080 == -1)
  {
    v23 = qword_10045B088;
    if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_100386320();
    v23 = qword_10045B088;
    if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }
  }

  *(v16 - 48) = 0;
  v24 = "Rolling back due to unknown kind of failure";
  v25 = (v16 - 48);
  v26 = v23;
  v27 = 2;
LABEL_14:
  _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v24, v25, v27);
  goto LABEL_15;
}

uint64_t sub_10023D174(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (!v2)
  {
    sub_10023D850(a1);
    result = *(a1 + 56);
    if (!result)
    {
      return result;
    }

    return (*(*result + 48))(result);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10023D848;
  v5[3] = &unk_1004439E8;
  v5[4] = a1;
  v4 = v5;
  sub_10023DB38(v2, &v4);
  result = *(a1 + 56);
  if (result)
  {
    return (*(*result + 48))(result);
  }

  return result;
}

void sub_10023D270(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    if (qword_10045B080 != -1)
    {
      sub_100386320();
    }

    if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_ERROR))
    {
      sub_10010A5D4(&__p);
    }

    if (!v9)
    {
      __cxa_end_catch();
      JUMPOUT(0x10023D240);
    }

    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void *sub_10023D350(const void *a1)
{
  if (result)
  {
    v2 = result[1];
    if (!v2)
    {
      return 0;
    }

    (*(*v2 + 8))(&v5);
    v4 = v5;
    v3 = v6;
    if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
      if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 24))(v3);
      }
    }

    if (v4)
    {
      return (v4 + 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_10023D49C(uint64_t *a1)
{
  v3 = a1[8];
  if (v3)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = sub_10023D52C;
    v4[3] = &unk_1004439C8;
    v4[4] = a1;
    v5 = v4;
    sub_10023DB38(v3, &v5);
  }

  else
  {

    sub_10023D534(a1);
  }
}

void sub_10023D534(uint64_t *a1)
{
  if (*(a1 + 72) == 1)
  {
    sub_1000474A4(&v16, "");
    sub_100218D04(&v12, "Cannot commit - already rolled back");
    sub_100383AA4(&v12, &__p, &v16);
    sub_10003F5D0(&__p);
  }

  if (*(a1 + 73) == 1)
  {
    sub_1000474A4(&__p, "");
    sub_1000D8214(&v16, "Cannot commit - already committed");
    sub_100383AA4(&v16, buf, &__p);
    sub_10003F5D0(buf);
  }

  if (qword_10045B080 != -1)
  {
    sub_100386320();
  }

  v2 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
  {
    v3 = a1;
    if (*(a1 + 23) < 0)
    {
      v3 = *a1;
    }

    v4 = sqlite3_db_filename(*a1[3], "main");
    v5 = strlen(v4);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_10000D39C();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v11 = v5;
    if (v5)
    {
      memmove(&__p, v4, v5);
    }

    *(&__p + v6) = 0;
    p_p = &__p;
    if (v11 < 0)
    {
      p_p = __p;
    }

    *buf = 136315394;
    *&buf[4] = v3;
    v14 = 2080;
    v15 = p_p;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Committing transaction %s into %s", buf, 0x16u);
    if (v11 < 0)
    {
      operator delete(__p);
    }
  }

  v8 = a1[3];
  std::operator+<char>();
  if (v11 >= 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p;
  }

  sub_10000210C(v8, v9, "Failed to release savepoint without rollback");
  if (v11 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 73) = 1;
}

void sub_10023D7E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a23 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023D850(uint64_t a1)
{
  if (*(a1 + 73) == 1)
  {
    sub_1000474A4(__p, "");
    sub_100218D04(&buf, "Cannot rollback - already committed");
    sub_1000E661C(__p, &buf, 1);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10003F5D0(v7);
  }

  if (*(a1 + 72) == 1)
  {
    sub_1000474A4(__p, "");
    sub_100218D04(&buf, "Cannot rollback - already cancelled");
    sub_1000E661C(__p, &buf, 1);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10003F5D0(v7);
  }

  if (qword_10045B080 == -1)
  {
    v2 = qword_10045B088;
    if (!os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_100386320();
  v2 = qword_10045B088;
  if (os_log_type_enabled(qword_10045B088, OS_LOG_TYPE_DEBUG))
  {
LABEL_5:
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Rolling back transaction", &buf, 2u);
  }

LABEL_6:
  v3 = *(a1 + 24);
  std::operator+<char>();
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_buf = &buf;
  }

  else
  {
    p_buf = buf.__r_.__value_.__r.__words[0];
  }

  sub_10000210C(v3, p_buf, "Failed to rollback savepoint");
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v5 = *(a1 + 24);
  std::operator+<char>();
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &buf;
  }

  else
  {
    v6 = buf.__r_.__value_.__r.__words[0];
  }

  sub_10000210C(v5, v6, "Failed to release savepoint after rollback");
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  *(a1 + 72) = 1;
}

void sub_10023DAB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    if (a14 < 0)
    {
      operator delete(__p);
    }

    sub_10000D388(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023DB38(NSObject *a1, uint64_t a2)
{
  v4 = std::promise<void>::promise(&v7);
  std::promise<void>::get_future(v4);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10023DC1C;
  v5[3] = &unk_100443A48;
  v5[4] = a2;
  v5[5] = &v7;
  dispatch_sync(a1, v5);
  std::future<void>::get(&v6);
  std::future<void>::~future(&v6);
  std::promise<void>::~promise(&v7);
}

void sub_10023DBEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::future<void> a15)
{
  std::future<void>::~future(&a15);
  std::promise<void>::~promise((v15 - 40));
  _Unwind_Resume(a1);
}

void sub_10023DC60(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_begin_catch(a1);
  v15 = *(v14 + 40);
  std::current_exception();
  v16.__ptr_ = v17;
  std::promise<void>::set_exception(v15, v16);
  std::exception_ptr::~exception_ptr(v17);
  __cxa_end_catch();
}

void sub_10023DC98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10)
{
  std::exception_ptr::~exception_ptr(&a10);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void (***sub_10023DCB4(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void (***sub_10023DD04(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void sub_10023DFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000C8FD8(va);
  _Unwind_Resume(a1);
}

void sub_10023E004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1000C8FD8(va1);
  _Unwind_Resume(a1);
}

void sub_10023E0A4(std::string *a2@<X8>)
{
  sub_10003BEA8(("P13tag_sql_rowid" & 0x7FFFFFFFFFFFFFFFLL), &v12);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3.__i_ = &v12;
  }

  else
  {
    v3.__i_ = v12.__r_.__value_.__r.__words[0];
  }

  std::string::insert(&v12, v3, 91);
  v13 = v12;
  memset(&v12, 0, sizeof(v12));
  v4 = std::string::append(&v13, "] = ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  sub_10003BFA8(&v16);
  std::ostream::operator<<();
  std::stringbuf::str();
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  std::locale::~locale(v18);
  std::ostream::~ostream();
  std::ios::~ios();
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
  v9 = *&v8->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v15, 10);
  *a2 = v15;
  memset(&v15, 0, sizeof(v15));
  if (v11 < 0)
  {
    operator delete(v10[0]);
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_14:
      if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_19;
    }
  }

  else if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_20:
    operator delete(v12.__r_.__value_.__l.__data_);
    return;
  }

LABEL_19:
  operator delete(v13.__r_.__value_.__l.__data_);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_20;
  }
}

void sub_10023E340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
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

void sub_10023E6A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10023E860(va);
  _Unwind_Resume(a1);
}

void sub_10023E6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10023E860(va1);
  _Unwind_Resume(a1);
}

void sub_10023E7D4(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_10038301C(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_10023E818(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_10023E860(uint64_t result)
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

void sub_10023E980(std::string *a2@<X8>)
{
  sub_10003BEA8(("P18tag_sql_blob_flags" & 0x7FFFFFFFFFFFFFFFLL), &v12);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3.__i_ = &v12;
  }

  else
  {
    v3.__i_ = v12.__r_.__value_.__r.__words[0];
  }

  std::string::insert(&v12, v3, 91);
  v13 = v12;
  memset(&v12, 0, sizeof(v12));
  v4 = std::string::append(&v13, "] = ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  sub_1001A21BC();
  if ((v11 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v7 = v11;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v14, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v15, 10);
  *a2 = v15;
  memset(&v15, 0, sizeof(v15));
  if (v11 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_12:
      if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }
  }

  else if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v12.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_18:
    operator delete(v12.__r_.__value_.__l.__data_);
    return;
  }

LABEL_17:
  operator delete(v13.__r_.__value_.__l.__data_);
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_18;
  }
}

void sub_10023EB00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
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

void sub_10023EE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10023F00C(va);
  _Unwind_Resume(a1);
}

void sub_10023EE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10023F00C(va1);
  _Unwind_Resume(a1);
}

void sub_10023EF80(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_10038301C(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_10023EFC4(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_10023F00C(uint64_t result)
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

uint64_t sub_10023F0B8(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v3 = result;
    v4 = 0;
    sub_10023F218(&v4, result);
    sub_10023F218(v3, a2);
    result = sub_10023F218(a2, &v4);
    if (v4)
    {
      if ((v4 & 1) == 0)
      {
        if (*v4)
        {
          return (*v4)(v5, v5, 2);
        }
      }
    }
  }

  return result;
}

void *sub_10023F154(void *result, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *result;
    return result;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
LABEL_2:
      a2[4] = 0;
      return result;
    }

    v3 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v3 == ("ZN2db9resources11transactionD1EvE3$_0" & 0x7FFFFFFFFFFFFFFFLL) || (v4 = result, v5 = a2, v6 = strcmp(v3, ("ZN2db9resources11transactionD1EvE3$_0" & 0x7FFFFFFFFFFFFFFFLL)), a2 = v5, v7 = v6, result = v4, !v7))
    {
      *a2 = result;
    }

    else
    {
      *v5 = 0;
    }
  }

  return result;
}

void sub_10023F204(uint64_t a1)
{
  v1 = *(*a1 + 64);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t sub_10023F218(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = *a2;
    if (*a2)
    {
      *result = v2;
      if (v2)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        v3 = a2;
        result = (*v2)(a2 + 8, result + 8, 1);
        a2 = v3;
      }
    }

    else
    {
      v4 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v4 & 1) != 0 || (v5 = *v4) == 0)
      {
        a2 = result;
      }

      else
      {
        v6 = result;
        result = v5(result + 8, result + 8, 2);
        a2 = v6;
      }
    }

    *a2 = 0;
  }

  return result;
}

void sub_10023F2C4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void sub_10023F2E8()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10023F358()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

double sub_10023F3C8(uint64_t a1)
{
  *a1 = 0;
  result = INFINITY;
  *(a1 + 8) = xmmword_1003D9740;
  return result;
}

uint64_t sub_10023F3DC(uint64_t a1, double *a2)
{
  v9 = off_10043DAA8;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  sub_10012C6F8(&v9, a2[7]);
  sub_10012C6E4(&v9, a2[6]);
  sub_1001294DC(&v9, a2[3]);
  sub_1001294E4(&v9, a2[4]);
  sub_1001294D4(&v9, a2[2]);
  sub_10012A894(&v9, a2[5]);
  v4 = *(&v10 + 1);
  v5 = llround(*&v10);
  *a1 = v5;
  v6 = v4 / v5;
  v7 = sqrt((*&v11 / v5 - v6 * v6) * 3.0);
  *(a1 + 8) = v6 - v7;
  *(a1 + 16) = v6 + v7;
  nullsub_73();
  return a1;
}

double sub_10023F4E0(uint64_t a1)
{
  if (*a1)
  {
    return (*(a1 + 16) - *(a1 + 8)) * (*a1 + 1) / *a1;
  }

  else
  {
    return INFINITY;
  }
}

void sub_10023F744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023F788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  while (1)
  {
    v17 = *(v16 - 1);
    v16 -= 3;
    if (v17 < 0)
    {
      operator delete(*v16);
    }

    if (v16 == &a16)
    {
      JUMPOUT(0x10023F764);
    }
  }
}

uint64_t sub_10023F7B4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(result + 16);
  if (v2 >= *(result + 8))
  {
    v2 = *(result + 8);
  }

  *result += *a2;
  *(result + 8) = v2;
  v4 = *(a2 + 16);
  if (v3 >= v4)
  {
    v4 = v3;
  }

  *(result + 16) = v4;
  return result;
}

void sub_10023F7EC(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  v21 = v19;
  v22 = v20;
  v3 = *a1;
  if (*a1 >= 0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = -v3;
  }

  v16[0] = v4;
  v16[1] = v20;
  v17 = 48;
  v18 = 48;
  v5 = sub_1000E5EB8(v16);
  v6 = v5;
  if ((v3 & 0x8000000000000000) == 0)
  {
    v21 = v5;
    v22 = v20;
    v7 = &v20[-v5];
    v8 = a2;
    if (&v20[-v5] < 0x17)
    {
      goto LABEL_6;
    }

LABEL_14:
    std::string::__grow_by(a2, 0x16uLL, v7 - 22, 0, 0, 0, 0);
    a2->__r_.__value_.__l.__size_ = 0;
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = a2->__r_.__value_.__r.__words[0];
    }

    if (v6 != v20)
    {
      goto LABEL_7;
    }

LABEL_18:
    v9 = v8;
    goto LABEL_21;
  }

  *(v5 - 1) = 45;
  v6 = (v5 - 1);
  v21 = (v5 - 1);
  v22 = v20;
  v7 = &v20[-v5 + 1];
  v8 = a2;
  if (v7 >= 0x17)
  {
    goto LABEL_14;
  }

LABEL_6:
  if (v6 == v20)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (v7 < 0x20 || (v8 - v6) < 0x20)
  {
    v9 = v8;
    v10 = v6;
  }

  else
  {
    v9 = (v8 + (v7 & 0xFFFFFFFFFFFFFFE0));
    v10 = &v6[v7 & 0xFFFFFFFFFFFFFFE0];
    v11 = (v6 + 16);
    v12 = &v8->__r_.__value_.__r.__words[2];
    v13 = v7 & 0xFFFFFFFFFFFFFFE0;
    do
    {
      v14 = *v11;
      *(v12 - 1) = *(v11 - 1);
      *v12 = v14;
      v11 += 2;
      v12 += 4;
      v13 -= 32;
    }

    while (v13);
    if (v7 == (v7 & 0xFFFFFFFFFFFFFFE0))
    {
      goto LABEL_21;
    }
  }

  do
  {
    v15 = *v10++;
    v9->__r_.__value_.__s.__data_[0] = v15;
    v9 = (v9 + 1);
  }

  while (v10 != v20);
LABEL_21:
  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    a2->__r_.__value_.__l.__size_ = v7;
  }

  else
  {
    *(&a2->__r_.__value_.__s + 23) = v7 & 0x7F;
  }
}

void sub_10023F9A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_10023F9BC@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_10023F9F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023FA0C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10023FA7C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

double sub_10023FAEC(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = v2 - *sub_100258558((a1 + 8), 1);
  v4 = sub_1002B0954(a1 + 32, 1uLL, 1uLL);
  v5 = sub_10023FB90(v3 / sqrt(*v4));
  v6 = -*(a1 + 96);
  v7 = v6 - *sub_100258558((a1 + 8), 1);
  v8 = sub_1002B0954(a1 + 32, 1uLL, 1uLL);
  return v5 - sub_10023FB90(v7 / sqrt(*v8));
}

double sub_10023FB90(double a1)
{
  if (a1 >= 0.0)
  {
    return 1.0 / (exp(a1 * 0.7988 * (a1 * 0.04417 * a1 + 1.0) * -2.0) + 1.0);
  }

  else
  {
    return 1.0 - sub_10023FB90(-a1);
  }
}

std::string *sub_10023FC08@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10023FC3C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10023FC58(uint64_t result)
{
  if (*result == 1)
  {
    *(result + 8) = off_10043FFE0;
    v1 = *(result + 24);
    if (v1)
    {
      *(result + 32) = v1;
      v2 = result;
      operator delete(v1);
      result = v2;
    }

    *result = 0;
  }

  return result;
}

std::string *sub_10023FCC4@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10023FCF8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_10023FD14@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10023FD48(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023FD64()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10023FDD4()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

std::string *sub_10023FE44@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10023FE78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_10023FE94@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_10023FEC8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10023FEE4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10023FF54()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

__n128 sub_10023FFC4(__n128 *a1, uint64_t a2)
{
  v2 = (*(a2 + 24) * 1000000000.0);
  a1->n128_u64[0] = v2;
  v3 = (*(a2 + 16) * 1000000000.0);
  a1->n128_u64[1] = v3;
  v4 = (*(a2 + 32) * 1000000000.0);
  v5 = v3 + v2 + v4;
  a1[1].n128_u64[0] = v4;
  a1[1].n128_u64[1] = v5;
  result = *(a2 + 40);
  a1[2] = result;
  a1[3] = v5;
  a1[4] = 0uLL;
  a1[5].n128_u32[0] = 0;
  a1[6] = 0uLL;
  a1[5].n128_u64[1] = off_10043D878;
  a1[7].n128_u8[0] &= 0xF8u;
  a1[6].n128_u32[1] = 3;
  return result;
}

uint64_t sub_100240058(uint64_t a1)
{
  nullsub_66();
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = *(a1 + 64);
    v4 = *(a1 + 56);
    if (v3 != v2)
    {
      v5 = v3 - 7;
      v6 = v3 - 7;
      v7 = v3 - 7;
      do
      {
        v8 = *v7;
        v7 -= 7;
        (*v8)(v6);
        v5 -= 7;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *(a1 + 56);
    }

    *(a1 + 64) = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1002400FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (qword_10045B050 != -1)
  {
    sub_1003863D4();
  }

  v6 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a2 + 16);
    v8 = *(a2 + 24);
    v31 = 134218496;
    *v32 = v7;
    *&v32[8] = 2048;
    v33 = v8;
    v34 = 1024;
    v35 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Received an altitude event at %lld with relative altitude %f m when localizer is at floor level %d", &v31, 0x1Cu);
  }

  v9 = *(a2 + 16);
  *(a1 + 104) = v9;
  v10 = *(a1 + 100);
  if (v10 < 2)
  {
    sub_100240548(a1);
    v12 = v11;
    v13 = *(a1 + 64);
    if (v13 >= *(a1 + 72))
    {
      v14 = sub_100240ED8((a1 + 56), a2);
    }

    else
    {
      sub_10012C46C(*(a1 + 64), a2);
      v14 = v13 + 56;
      *(a1 + 64) = v13 + 56;
    }

    *(a1 + 64) = v14;
    sub_100240C10((a1 + 48), 0x6DB6DB6DB6DB6DB7 * ((v14 - *(a1 + 56)) >> 3) - 1);
    sub_100240548(a1);
    v26 = *(a1 + 96);
    if (vabdd_f64(v12, v25) > *(a1 + 40))
    {
      if (v26 != v3)
      {
        if (qword_10045B050 != -1)
        {
          sub_1003863E8();
        }

        v27 = qword_10045B058;
        if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
        {
          v28 = *(a1 + 96);
          v31 = 67109376;
          *v32 = v28;
          *&v32[4] = 1024;
          *&v32[6] = v3;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Floor switched from %d to %d during a detected transition", &v31, 0xEu);
        }
      }

      return;
    }

    if (v26 == v3)
    {
      if (qword_10045B050 != -1)
      {
        sub_1003863E8();
      }

      v29 = qword_10045B058;
      if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
      {
        v30 = *(a1 + 100);
        v31 = 67109376;
        *v32 = v30;
        *&v32[4] = 1024;
        *&v32[6] = v3;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Detected a transition %d ends! But we haven't switched floor (%d) yet!", &v31, 0xEu);
      }
    }

LABEL_38:
    sub_100240698(a1, v9, v3);
    return;
  }

  if (v10 == 3)
  {
    *(a1 + 96) = v3;
    *(a1 + 100) = 2;
  }

  v15 = *(a1 + 64);
  if (v15 >= *(a1 + 72))
  {
    v16 = sub_100240ED8((a1 + 56), a2);
  }

  else
  {
    sub_10012C46C(*(a1 + 64), a2);
    v16 = v15 + 56;
    *(a1 + 64) = v15 + 56;
  }

  *(a1 + 64) = v16;
  sub_100240C10((a1 + 48), 0x6DB6DB6DB6DB6DB7 * ((v16 - *(a1 + 56)) >> 3) - 1);
  sub_100240548(a1);
  v18 = v17;
  sub_1002409F0(a1);
  if (*(a1 + 80) != 2 || (v20 = v18 - v19, fabs(v20) <= *(a1 + 32)))
  {
    if (*(a1 + 96) == v3)
    {
      return;
    }

    if (qword_10045B050 != -1)
    {
      sub_1003863E8();
    }

    v22 = qword_10045B058;
    if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 96);
      v24 = *(a1 + 80) == 2;
      v31 = 67109632;
      *v32 = v23;
      *&v32[4] = 1024;
      *&v32[6] = v3;
      LOWORD(v33) = 1024;
      *(&v33 + 2) = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Floor switched from %d to %d, but before we detected any floor in altitude_history; is time window full: %d", &v31, 0x14u);
    }

    goto LABEL_38;
  }

  if (qword_10045B050 != -1)
  {
    sub_1003863E8();
  }

  v21 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v31) = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Detected floor transition", &v31, 2u);
  }

  *(a1 + 100) = v20 < 0.0;
}

void *sub_100240548(void *result)
{
  v1 = result[7];
  v2 = result[8];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = *(v2 - 40) - result[1];
    v5 = 0.0;
    while (*(v2 - 40) >= v4)
    {
      v5 = v5 + *(v2 - 32);
      --v3;
      v2 -= 56;
      if (v2 == v1)
      {
        return result;
      }
    }

    if (!v3)
    {
      sub_1000474A4(v7, "");
      sub_100241238(v8, "At this point, there must be at least one altitude event in ahead window!");
      sub_100383AA4(v8, __p, v7);
      sub_10003F5D0(__p);
    }
  }

  return result;
}

void sub_100240654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100240698(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 56);
  v3 = *(a1 + 64);
  if (v3 != v4)
  {
    v5 = 0;
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v3 - v4) >> 3);
    if (v6 <= 1)
    {
      v6 = 1;
    }

    v7 = 16;
    while (*(v4 + v7) < a2 - *(a1 + 8))
    {
      ++v5;
      v7 += 56;
      if (v6 == v5)
      {
        v5 = v6;
        goto LABEL_9;
      }
    }

    if (v5)
    {
LABEL_9:
      *(a1 + 80) = 0;
      v9 = 0;
      v10 = 0;
      __p = 0;
      v13.__r_.__value_.__r.__words[0] = &__p;
      v13.__r_.__value_.__s.__data_[8] = 0;
      if (v5 < 0x492492492492493)
      {
        operator new();
      }

      sub_10000FC84();
    }
  }

  __p = 0;
  v9 = 0;
  v10 = 0;
  if (*(a1 + 80) == 2)
  {
    sub_1000474A4(v12, "");
    sub_1002411E8(&v13, "We should have cleared all the measurements not in the ahead window, time window should not be full!");
    sub_100383AA4(&v13, v11, v12);
    sub_10003F5D0(v11);
  }

  *(a1 + 96) = a3;
  *(a1 + 100) = 2;
}

void sub_10024095C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002409F0(void *result)
{
  v1 = result[7];
  v2 = result[8];
  if (v1 != v2)
  {
    v3 = 0;
    v4 = *result + *(v1 + 16);
    v5 = 0.0;
    while (v4 >= *(v1 + 16))
    {
      v5 = v5 + *(v1 + 24);
      v1 += 56;
      --v3;
      if (v1 == v2)
      {
        return result;
      }
    }

    if (!v3)
    {
      sub_1000474A4(v7, "");
      sub_100241238(v8, "At this point, there must be at least one altitude event in ahead window!");
      sub_100383AA4(v8, __p, v7);
      sub_10003F5D0(__p);
    }
  }

  return result;
}

void sub_100240AF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char **sub_100240B74(char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 56;
      v6 = v3 - 56;
      v7 = (v3 - 56);
      do
      {
        v8 = *v7;
        v7 -= 7;
        (*v8)(v6);
        v5 -= 56;
        v9 = v6 == v2;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_100240C10(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2] - v2;
  if (v3 == 56)
  {
    *(a1 + 8) = 1;
  }

  else
  {
    v4 = 0x6DB6DB6DB6DB6DB7 * (v3 >> 3);
    if (v4 <= a2)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      do
      {
        if (v5 != a2)
        {
          v6 = *(v2 + 56 * a2 + 16);
          v7 = *a1;
          v8 = (v2 + 16 + 56 * v5);
          while (1)
          {
            v9 = *v8;
            v8 += 7;
            if (v7 >= v6 - v9)
            {
              break;
            }

            ++v5;
            *(a1 + 8) = 2;
            if (a2 == v5)
            {
              goto LABEL_5;
            }
          }
        }

        if (v5 == a2)
        {
LABEL_5:
          *(a1 + 8) = 1;
          v5 = a2;
        }

        ++a2;
      }

      while (a2 != v4);
    }

    memset(__p, 0, 24);
    __p[3] = __p;
    v11 = 0;
    if (v5)
    {
      if (v5 < 0x492492492492493)
      {
        operator new();
      }

      sub_10000FC84();
    }
  }
}

void sub_100240E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100241138(va);
  _Unwind_Resume(a1);
}

void sub_100240E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100240B74(va);
  _Unwind_Resume(a1);
}

void sub_100240EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (v9)
  {
    sub_100386410();
  }

  sub_100241138(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100240ED8(void **a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_10000FC84();
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

    sub_10000D444();
  }

  v19 = 8 * ((a1[1] - *a1) >> 3);
  sub_10012C46C(v19, a2);
  v6 = 56 * v2 + 56;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = &v9[v19];
  if (*a1 != v8)
  {
    v11 = 0;
    v12 = *a1;
    v13 = &v9[v19];
    do
    {
      v14 = sub_10012C46C(v13, v12);
      v12 += 56;
      v13 += 56;
      v11 -= 56;
    }

    while (v12 != v8);
    v15 = v7;
    v16 = v7;
    do
    {
      v17 = *v16;
      v16 += 7;
      (*v17)(v7, v14);
      v15 += 7;
      v7 = v16;
    }

    while (v16 != v8);
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

void sub_100241090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1002410C8(va);
  _Unwind_Resume(a1);
}

void sub_1002410A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    sub_100386410();
  }

  sub_1002410C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002410C8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 56);
    *(a1 + 16) = i - 56;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ***sub_100241138(void ***result)
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
        v6 = v4 - 7;
        v7 = v4 - 7;
        v8 = v4 - 7;
        do
        {
          v9 = *v8;
          v8 -= 7;
          (*v9)(v7);
          v6 -= 7;
          v10 = v7 == v2;
          v7 = v8;
        }

        while (!v10);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

std::string *sub_1002411E8@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_10024121C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100241238@<X0>(std::string *__return_ptr a1@<X8>, std::string::value_type *__s@<X0>)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a1, __s);
}

void sub_10024126C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10024129C()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10024130C()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t sub_10024137C(uint64_t a1, __int128 *a2, int a3, uint64_t a4)
{
  *a1 = off_100443C28;
  *(a1 + 8) = a1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 1065353216;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 1065353216;
  *(a1 + 104) = *a2;
  v7 = (a1 + 104);
  *a2 = 0uLL;
  *(a1 + 120) = a3;
  sub_100250F64(a4, a1 + 128);
  *(a1 + 184) = sub_100251AA8(a4);
  *(a1 + 192) = sub_100251B20(a4);
  sub_100251CA8(a4, a1 + 200);
  if (!*v7)
  {
    sub_1000474A4(__p, "");
    sub_10023FD14("In order to auto-multifloor/multibuilding between a set of locations, you must at least provide a non-empty set of locations", &buf);
    sub_1000E661C(__p, &buf, 1);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    sub_1000BC6D8(&v12);
  }

  if (qword_10045B050 != -1)
  {
    sub_100386470();
  }

  v8 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    v9 = sub_100248AE8(*v7);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134283521;
    *(buf.__r_.__value_.__r.__words + 4) = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Auto switching between %{private}zu locations", &buf, 0xCu);
    if (qword_10045B050 != -1)
    {
      sub_100386470();
    }
  }

  v10 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = a3;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "CoarseIndoorSpec is %d", &buf, 8u);
  }

  return a1;
}

void sub_1002415A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1002D72A8(v20 + 200);
  sub_10002BB1C(v21);
  sub_10024319C((v20 + 8));
  _Unwind_Resume(a1);
}

void sub_100241604(_Unwind_Exception *a1)
{
  sub_10002BB1C(v2);
  sub_10024319C((v1 + 8));
  _Unwind_Resume(a1);
}

void sub_100241624(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 112);
  *(a1 + 104) = v3;
  *(a1 + 112) = v2;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_1002416B8(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t *a3@<X1>)
{
  sub_100248AF0(*(a1 + 104), a3, __p);
  sub_1002121EC(a2, __p);
  v4 = v8;
  if (v8)
  {
    do
    {
      v5 = *v4;
      sub_1001DF638(v4 + 2);
      operator delete(v4);
      v4 = v5;
    }

    while (v5);
  }

  v6 = __p[0];
  __p[0] = 0;
  if (v6)
  {
    operator delete(v6);
  }
}

void sub_10024172C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001DF5D8(va);
  _Unwind_Resume(a1);
}

void sub_100241740(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, void *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>, uint64_t a13@<X8>)
{
  if (!sub_100232F48(a2))
  {
    v24 = *(a1 + 184);
    if (v24 == 1)
    {
      a9 = a2[209];
      a10 = a2[208];
      a11 = a2[218];
      a12 = a2[217];
    }

    v25 = *(a1 + 120);
    sub_1002D7200(v28, a1 + 200);
    sub_10025C350(a2, a3, a4, (a1 + 104), a5, a6, a7, v25, a13, a9, a10, a11, a12, v24, v28, a8);
  }

  sub_1000474A4(v30, "");
  sub_10020DEDC(&v31, "This function should not be used on regional locations.");
  sub_100382FC4(&v31, __p, v30);
  sub_1000BC6D8(__p);
}

void sub_1002418BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100241914(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a9@<X8>, uint64_t a10)
{
  if (a10)
  {
    *&__p[16] = 0uLL;
    *__p = off_10043D8F8;
    *&__p[8] = &__p[16];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0;
    v69 = 0;
    v67 = off_10043DB28;
    v68 = 0;
    v70 = 0;
    sub_100127C2C(a10, __p);
    sub_100127BE8(__p);
  }

  (*(*a2 + 16))(__p);
  sub_1002416B8(a1, v62, __p);
  v11 = *__p;
  if (*__p)
  {
    v12 = *&__p[8];
    v13 = *__p;
    if (*&__p[8] != *__p)
    {
      v14 = *&__p[8] - 168;
      do
      {
        v16 = *(v12 - 176);
        if (v16 == v16 >> 31)
        {
          if (*(v12 - 128) == 1)
          {
            *(v12 - 128) = 0;
          }
        }

        else
        {
          v15 = *(v12 - 168);
          if (v16 < 0)
          {
            if (v15)
            {
              (*(*v15 + 8))(v15);
            }
          }

          else
          {
            (*v15)(v12 - 168);
          }
        }

        v12 -= 208;
        v14 -= 208;
      }

      while (v12 != v11);
      v13 = *__p;
    }

    *&__p[8] = v11;
    operator delete(v13);
  }

  (*(*a3 + 16))(__p);
  sub_1002416B8(a1, v60, __p);
  v17 = *__p;
  if (*__p)
  {
    v18 = *&__p[8];
    v19 = *__p;
    if (*&__p[8] != *__p)
    {
      v20 = *&__p[8] - 168;
      do
      {
        v22 = *(v18 - 176);
        if (v22 == v22 >> 31)
        {
          if (*(v18 - 128) == 1)
          {
            *(v18 - 128) = 0;
          }
        }

        else
        {
          v21 = *(v18 - 168);
          if (v22 < 0)
          {
            if (v21)
            {
              (*(*v21 + 8))(v21);
            }
          }

          else
          {
            (*v21)(v18 - 168);
          }
        }

        v18 -= 208;
        v20 -= 208;
      }

      while (v18 != v17);
      v19 = *__p;
    }

    *&__p[8] = v17;
    operator delete(v19);
  }

  v23 = *(a1 + 104);
  v64[0] = off_100443CC8;
  v64[1] = v62;
  v64[2] = v60;
  v65 = v64;
  sub_100248D50(v23, v64, &v57);
  if (v65 == v64)
  {
    (*(*v65 + 32))(v65);
    v24 = v59;
    if (v59)
    {
      goto LABEL_33;
    }
  }

  else
  {
    if (v65)
    {
      (*(*v65 + 40))();
    }

    v24 = v59;
    if (v59)
    {
LABEL_33:
      if (!(v24 >> 61))
      {
        operator new();
      }

      sub_10000FC84();
    }
  }

  v27 = v58;
  if (v58)
  {
    v47 = 0;
    do
    {
      v25 = v47;
      v26 = v47 >> 3;
      if (((v47 >> 3) + 1) >> 61)
      {
        sub_10000FC84();
      }

      if (v47 >> 3 != -1)
      {
        if (!(((v47 >> 3) + 1) >> 61))
        {
          operator new();
        }

        sub_10000D444();
      }

      *(8 * v26) = v27[4];
      v47 = 8 * v26 + 8;
      memcpy(0, 0, v25);
      v27 = *v27;
    }

    while (v27);
  }

  else
  {
    v47 = 0;
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v44 = v47 >> 3;
  if (v47)
  {
    if (!(v44 >> 61))
    {
      operator new();
    }

    sub_10000FC84();
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((v53 - v51) >> 5) < v44)
  {
    if (v44 <= 0x199999999999999)
    {
      operator new();
    }

    sub_10000FC84();
  }

  *v48 = 0u;
  *v49 = 0u;
  v50 = 1065353216;
  if (qword_10045B050 != -1)
  {
    sub_100386470();
  }

  v28 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    *__p = 134218240;
    *&__p[4] = v47 >> 3;
    *&__p[12] = 2048;
    *&__p[14] = (v55 - v54) >> 3;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "Candidate locations: %zu; recommended locations: %zu", __p, 0x16u);
  }

  sub_1001D14C8(a9, &v54, &v51);
  v29 = v49[0];
  if (v49[0])
  {
    do
    {
      v30 = *v29;
      operator delete(v29);
      v29 = v30;
    }

    while (v30);
  }

  v31 = v48[0];
  v48[0] = 0;
  if (v31)
  {
    operator delete(v31);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  v32 = v58;
  if (v58)
  {
    do
    {
      v33 = v32;
      v32 = *v32;
      v34 = v33[3];
      if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v35 = v33;
        (v34->__on_zero_shared)(v34);
        std::__shared_weak_count::__release_weak(v34);
        v33 = v35;
      }

      operator delete(v33);
    }

    while (v32);
  }

  v36 = v57;
  v57 = 0;
  if (v36)
  {
    operator delete(v36);
  }

  v37 = v61;
  if (v61)
  {
    do
    {
      v38 = *v37;
      sub_1001DF638(v37 + 2);
      operator delete(v37);
      v37 = v38;
    }

    while (v38);
  }

  v39 = v60[0];
  v60[0] = 0;
  if (v39)
  {
    operator delete(v39);
  }

  v40 = v63;
  if (v63)
  {
    do
    {
      v41 = *v40;
      sub_1001DF638(v40 + 2);
      operator delete(v40);
      v40 = v41;
    }

    while (v41);
  }

  v42 = v62[0];
  v62[0] = 0;
  if (v42)
  {
    operator delete(v42);
  }
}

void sub_100242DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1001F9AF8(&a43);
  if (__p)
  {
    a50 = __p;
    operator delete(__p);
    v67 = a52;
    if (!a52)
    {
LABEL_3:
      if (!v65)
      {
LABEL_8:
        sub_10004D7DC(&a55);
        sub_1001DF5D8(&a60);
        sub_1001DF5D8(&a65);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(v65);
      goto LABEL_8;
    }
  }

  else
  {
    v67 = a52;
    if (!a52)
    {
      goto LABEL_3;
    }
  }

  a53 = v67;
  operator delete(v67);
  if (!v65)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void *sub_100242F5C(void *a1)
{
  *a1 = off_100443C28;
  sub_1002D72A8((a1 + 25));
  v2 = a1[14];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    sub_10024319C(a1 + 1);
    return a1;
  }

  else
  {
    sub_10024319C(a1 + 1);
    return a1;
  }
}

void sub_100243008(void *a1)
{
  *a1 = off_100443C28;
  sub_1002D72A8((a1 + 25));
  v2 = a1[14];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[9];
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

  v5 = a1[7];
  a1[7] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a1[4];
  while (v6)
  {
    v7 = v6;
    v6 = *v6;
    v8 = v7[3];
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = v7;
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      v7 = v9;
    }

    operator delete(v7);
  }

  v10 = a1[2];
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  operator delete();
}

void *sub_10024319C(void *a1)
{
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
  while (v5)
  {
    v6 = v5;
    v5 = *v5;
    v7 = v6[3];
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = v6;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v6 = v8;
    }

    operator delete(v6);
  }

  v9 = a1[1];
  a1[1] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return a1;
}

uint64_t *sub_100243278(void *a1, uint64_t a2, int *a3, _DWORD *a4)
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