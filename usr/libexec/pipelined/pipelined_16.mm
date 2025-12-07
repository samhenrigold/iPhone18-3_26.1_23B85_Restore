void sub_1000E8468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000E8484(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0uLL;
  v3 = *(result + 8);
  *result = v2;
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    v4 = result;
    (*(*v3 + 16))(v3);
    result = v4;
    if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 24))(v3);
      return v4;
    }
  }

  return result;
}

uint64_t sub_1000E853C(uint64_t result)
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

void sub_1000E8874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *v11 = v9;
  sub_10000E098(v10);
  sub_1000E9160(&a9);
  _Unwind_Resume(a1);
}

void sub_1000E88AC(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  sub_1000E9E0C();
}

void sub_1000E8A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10000CEB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E8AA8(uint64_t result)
{
  *result = off_10043A5F0;
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    v2 = result;
    (*(*(result + 32) + 16))(result + 32);
    result = v2;
    *(v1 - 8) = 0;
  }

  return result;
}

void sub_1000E8B28(uint64_t a1)
{
  *a1 = off_10043A5F0;
  if (*(a1 + 24) == 1)
  {
    v2 = a1 + 32;
    (*(*(a1 + 32) + 16))(a1 + 32);
    *(v2 - 8) = 0;
  }

  operator delete();
}

uint64_t sub_1000E8BC4(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    result = (*(*(result + 32) + 16))();
    *(v1 - 8) = 0;
  }

  return result;
}

uint64_t sub_1000E8C1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_9exceptionEEEEE")
  {
    return a1 + 24;
  }

  if (((v2 & "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_9exceptionEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_9exceptionEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_9exceptionEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 24;
  }

  return 0;
}

void sub_1000E8DEC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x30uLL);
  sub_1000E907C(exception, a1);
}

uint64_t sub_1000E8E48(uint64_t result)
{
  *(result + 8) = &off_100431E10;
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = (*(*v1 + 32))(*(result + 16));
    result = v2;
    if (v3)
    {
      *(v2 + 16) = 0;
    }
  }

  return result;
}

void sub_1000E8ECC(uint64_t a1)
{
  *(a1 + 8) = &off_100431E10;
  v1 = *(a1 + 16);
  if (v1 && (*(*v1 + 32))(*(a1 + 16)))
  {
    *(a1 + 16) = 0;
  }

  operator delete();
}

uint64_t sub_1000E8F70(void *a1)
{
  *a1 = &off_100431E10;
  result = a1[1];
  if (result)
  {
    result = (*(*result + 32))(result);
    if (result)
    {
      a1[1] = 0;
    }
  }

  return result;
}

void sub_1000E8FE4(void *a1)
{
  *a1 = &off_100431E10;
  v2 = a1[1];
  if (v2 && (*(*v2 + 32))(v2))
  {
    a1[1] = 0;
  }

  operator delete();
}

__n128 sub_1000E907C(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  v3 = *(a2 + 16);
  *(a1 + 8) = &off_100431E10;
  *(a1 + 16) = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = result;
  *a1 = &off_10043A650;
  *(a1 + 8) = off_10043A680;
  return result;
}

uint64_t sub_1000E9160(uint64_t result)
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

void sub_1000E9534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000E9C98(va);
  _Unwind_Resume(a1);
}

void sub_1000E9548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1000E9C98(va1);
  _Unwind_Resume(a1);
}

void sub_1000E95E8(void *a1)
{
  *a1 = off_10043A728;
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

void sub_1000E96D0(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  sub_10003BEA8(("PN5boost25errinfo_nested_exception_E" & 0x7FFFFFFFFFFFFFFFLL), &v12);
  if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4.__i_ = &v12;
  }

  else
  {
    v4.__i_ = v12.__r_.__value_.__r.__words[0];
  }

  std::string::insert(&v12, v4, 91);
  v13 = v12;
  memset(&v12, 0, sizeof(v12));
  v5 = std::string::append(&v13, "] = ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  sub_1000E9914((a1 + 8), &__p);
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

  v9 = std::string::append(&v14, p_p, size);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v15, 10);
  *a2 = v15;
  memset(&v15, 0, sizeof(v15));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
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

void sub_1000E9850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
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

void sub_1000E9914(void *a1@<X0>, std::string *a2@<X8>)
{
  if (*a1)
  {
    sub_1000E8894(a1);
  }

  *(&v10.__r_.__value_.__s + 23) = 7;
  strcpy(&v10, "<empty>");
  v3.__i_ = &v10;
  std::string::insert(&v10, v3, 10);
  __p = v10;
  *(&v10.__r_.__value_.__s + 23) = 2;
  strcpy(&v10, "  ");
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
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

  if (!size)
  {
    goto LABEL_20;
  }

  v6 = 0;
  do
  {
    if (v6)
    {
      if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v7 = &v10;
      }

      else
      {
        v7 = v10.__r_.__value_.__r.__words[0];
      }

      if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v8 = HIBYTE(v10.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v8 = v10.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v7, v8);
    }

    v9 = p_p->__r_.__value_.__s.__data_[0];
    std::string::push_back(a2, p_p->__r_.__value_.__s.__data_[0]);
    v6 = v9 == 10;
    p_p = (p_p + 1);
    --size;
  }

  while (size);
  if ((SHIBYTE(v10.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_20:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_23:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v10.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }
}

void sub_1000E9C0C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_10038301C(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1000E9C50(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_1000E9C98(uint64_t result)
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

void *sub_1000E9D44(void *result)
{
  *result = off_10043A728;
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

uint64_t sub_1000E9FAC(uint64_t result)
{
  *result = off_10043A7C8;
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    v2 = result;
    (*(*(result + 32) + 16))(result + 32);
    result = v2;
    *(v1 - 8) = 0;
  }

  return result;
}

void sub_1000EA02C(uint64_t a1)
{
  *a1 = off_10043A7C8;
  if (*(a1 + 24) == 1)
  {
    v2 = a1 + 32;
    (*(*(a1 + 32) + 16))(a1 + 32);
    *(v2 - 8) = 0;
  }

  operator delete();
}

uint64_t sub_1000EA0C8(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    result = (*(*(result + 32) + 16))();
    *(v1 - 8) = 0;
  }

  return result;
}

uint64_t sub_1000EA120(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_13exception_ptrEEEEE")
  {
    return a1 + 24;
  }

  if (((v2 & "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_13exception_ptrEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_13exception_ptrEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_13exception_ptrEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 24;
  }

  return 0;
}

void sub_1000EA320(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1000EA7B0(exception, a1);
}

void *sub_1000EA37C(void *a1)
{
  a1[3] = &off_100431E10;
  v2 = a1[4];
  if (v2 && (*(*v2 + 32))(v2))
  {
    a1[4] = 0;
  }

  v3 = a1[2];
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

void sub_1000EA47C(void *a1)
{
  a1[3] = &off_100431E10;
  v2 = a1[4];
  if (v2 && (*(*v2 + 32))(v2))
  {
    a1[4] = 0;
  }

  v3 = a1[2];
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

uint64_t sub_1000EA59C(void *a1)
{
  *a1 = &off_100431E10;
  result = a1[1];
  if (result)
  {
    result = (*(*result + 32))(result);
    if (result)
    {
      a1[1] = 0;
    }
  }

  v3 = *(a1 - 1);
  if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v3 + 16))(v3);
    if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v3 + 24))(v3);
    }
  }

  return result;
}

void sub_1000EA694(void *a1)
{
  *a1 = &off_100431E10;
  v2 = a1[1];
  if (v2 && (*(*v2 + 32))(v2))
  {
    a1[1] = 0;
  }

  v3 = *(a1 - 1);
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

__n128 sub_1000EA7B0(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
  }

  v4 = *(a2 + 32);
  *(a1 + 24) = &off_100431E10;
  *(a1 + 32) = v4;
  if (v4)
  {
    v5 = a1;
    (*(*v4 + 24))(v4);
    a1 = v5;
  }

  result = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = result;
  *a1 = &off_10043A828;
  *(a1 + 24) = off_10043A858;
  return result;
}

unint64_t sub_1000EA8C8(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    sub_1000DABA0(a1, a2);
    a1[1] = v8;
    return v8 - 48;
  }

  else
  {
    v4 = *(a2 + 8);
    *v3 = *a2;
    if (v4)
    {
      v5 = a2;
      v4 = (*(*v4 + 24))(v4);
      a2 = v5;
    }

    *(v3 + 8) = v4;
    *(v3 + 16) = *(a2 + 16);
    v6 = *(a2 + 40);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 40) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    a1[1] = v3 + 48;
    a1[1] = v3 + 48;
    return v3;
  }
}

void sub_1000EA990(std::runtime_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(this);

  operator delete();
}

void sub_1000EAA30(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_1000EAAB8(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete();
}

void sub_1000EAB54(std::runtime_error *a1)
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

uint64_t sub_1000EABE8(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2) + 1;
  v5 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v6;
  *a1 = &off_10043A948;
  *(a1 + 16) = off_10043A980;
  *(a1 + 56) = &off_10043A9B8;
  sub_10000D87C(v4, a2 + 16);
  return a1;
}

void sub_1000EAD20(std::runtime_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(this);

  operator delete();
}

void sub_1000EAE40(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1000EB354(exception, a1);
}

void sub_1000EAE9C(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_1000EAF24(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete();
}

void sub_1000EB054(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1000EB354(exception, a1 + v2);
}

void sub_1000EB0C8(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(v1);
}

void sub_1000EB168(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(v1);

  operator delete();
}

uint64_t sub_1000EB21C(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2) + 1;
  v5 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v6;
  *a1 = &off_10043A948;
  *(a1 + 16) = off_10043A980;
  *(a1 + 56) = &off_10043A9B8;
  sub_10000D87C(v4, a2 + 16);
  return a1;
}

uint64_t sub_1000EB354(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &off_100431F30;
  std::runtime_error::runtime_error(a1, a2);
  v4 = *(a2 + 24);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &off_10043A948;
  *(a1 + 16) = off_10043A980;
  *(a1 + 56) = &off_10043A9B8;
  return a1;
}

void sub_1000EB6E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::runtime_error::~runtime_error(v9);
  sub_1000EB73C(&a9);
  _Unwind_Resume(a1);
}

void sub_1000EB720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1000EAB54(v9);
  sub_1000EB73C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EB73C(uint64_t result)
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

uint64_t sub_1000EB7E8(uint64_t result)
{
  *result = off_10043AA20;
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

void sub_1000EB868(uint64_t a1)
{
  *a1 = off_10043AA20;
  if (*(a1 + 24) == 1)
  {
    v2 = a1 + 32;
    (**(a1 + 32))(a1 + 32);
    *(v2 - 8) = 0;
  }

  operator delete();
}

uint64_t sub_1000EB904(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    result = (**(result + 32))();
    *(v1 - 8) = 0;
  }

  return result;
}

uint64_t sub_1000EB95C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail10clone_implINS3_19error_info_injectorISt13runtime_errorEEEEEEEE")
  {
    return a1 + 24;
  }

  if (((v2 & "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail10clone_implINS3_19error_info_injectorISt13runtime_errorEEEEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail10clone_implINS3_19error_info_injectorISt13runtime_errorEEEEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail10clone_implINS3_19error_info_injectorISt13runtime_errorEEEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 24;
  }

  return 0;
}

uint64_t sub_1000EB9D8(uint64_t a1, uint64_t *a2, std::runtime_error *a3)
{
  std::runtime_error::runtime_error(a1, a3);
  imp = a3[1].__imp_.__imp_;
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = imp;
  if (imp)
  {
    (*(*imp + 24))(imp);
  }

  v7 = a3[2];
  *(a1 + 48) = a3[3].__vftable;
  *(a1 + 32) = v7;
  *a1 = &off_10043A8C0;
  *(a1 + 16) = off_10043A8E8;
  v8 = *a2;
  *a1 = *a2;
  *(a1 + 16) = off_10043A980;
  *(a1 + *(v8 - 24)) = a2[1];
  return a1;
}

void sub_1000EBB5C(std::runtime_error *a1)
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

void sub_1000EBBF0(std::runtime_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(this);

  operator delete();
}

void sub_1000EBE2C(std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1000EC190(exception, a1);
}

void sub_1000EBE88(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_1000EBF10(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete();
}

void sub_1000EBFC8(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1000EC190(exception, (a1 + v2));
}

void sub_1000EC03C(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(v1);
}

void sub_1000EC0DC(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(v1);

  operator delete();
}

void *sub_1000EC190(uint64_t a1, std::runtime_error *a2)
{
  *(a1 + 56) = &off_100431F30;
  result = sub_1000EB9D8(a1, off_10043AB20, a2);
  *result = &off_10043AA88;
  result[2] = off_10043AAC0;
  result[7] = &off_10043AAF8;
  return result;
}

void sub_1000EC238()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_1000EC2A8()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

uint64_t *sub_1000EC318(uint64_t *a1)
{
  std::ios::~ios();
  return a1;
}

uint64_t *sub_1000EC350(uint64_t *a1)
{
  std::ios::~ios();
  return a1;
}

std::system_error *sub_1000EC388(std::system_error *a1)
{
  v2 = std::system_category();
  std::system_error::system_error(a1, 1, v2);
  a1->__vftable = &off_10043AC38;
  return a1;
}

_DWORD *sub_1000EC3F8@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, _DWORD *a4@<X8>)
{
  if (!a3)
  {
    if (qword_10045B050 == -1)
    {
      v8 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        return sub_1000EC51C(a4, a1, a2 | 0x200u, 0, a3);
      }
    }

    else
    {
      sub_100383DA4();
      v8 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_INFO))
      {
        return sub_1000EC51C(a4, a1, a2 | 0x200u, 0, a3);
      }
    }

    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    v11 = 136315138;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "WARNING: File %s will be created without any permission bits set.", &v11, 0xCu);
  }

  return sub_1000EC51C(a4, a1, a2 | 0x200u, 0, a3);
}

_DWORD *sub_1000EC51C(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  v10 = strlen(v9);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  v21 = v10;
  if (v10)
  {
    memmove(&__dst, v9, v10);
  }

  *(&__dst + v11) = 0;
  v12 = sub_10031C594(&__dst, v7, v6, a5);
  if (v21 < 0)
  {
    v13 = v12;
    operator delete(__dst);
    v12 = v13;
  }

  *a1 = v12;
  if (v12 == -1)
  {
    v15 = *__error();
    __cxa_allocate_exception(0x50uLL);
    if (v15 == 1)
    {
      sub_1000EC388(&v19);
      sub_10010A984(v18);
    }

    v16 = std::system_category();
    std::system_error::system_error(&v19, v15, v16);
    sub_10010A984(&v17);
  }

  return a1;
}

void sub_1000EC77C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *__p, void *a6, void *a7, uint64_t a8, void *a9, std::system_error *__pa, void *a11, uint64_t a12, void *a13, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t arg50_8, uint64_t arg50_16, uint64_t arg50_24, ...)
{
  if (SHIBYTE(a18) < 0)
  {
    operator delete(a13);
  }

  sub_1000ED230(&v25);
  if (a9)
  {
    operator delete(a9);
    std::system_error::~system_error(&a22);
    if ((v23 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    std::system_error::~system_error(&a22);
    if (!v23)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  __cxa_free_exception(v22);
  _Unwind_Resume(a1);
}

void sub_1000EC8D4(std::runtime_error *a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  std::runtime_error::runtime_error(&v13, a2);
  v14 = a2[1];
  v17 = 0;
  v18 = 0;
  v19 = -1;
  v13.__vftable = &off_10043AED0;
  v15 = off_10043AEF8;
  v16 = 0;
  sub_1000EF014(&v20, &v13);
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v12[0] = off_100433458;
  memset(&v12[1], 0, 24);
  v11 = a6[1] - *a6;
  if (v11)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_1000EED34(&v20, v12);
}

void sub_1000ECC08(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    sub_10000D388(a1);
  }

  sub_10000D388(a1);
}

uint64_t sub_1000ECC30(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4[1] = *(a2 + 16);
  v4->__vftable = &off_10043AC38;
  v5 = *(a2 + 40);
  *(a1 + 32) = &off_100431E10;
  *(a1 + 40) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v6;
  *a1 = &off_10043AE20;
  *(a1 + 32) = off_10043AE58;
  *(a1 + 72) = &off_10043AE90;
  return a1;
}

void sub_1000ECD98(std::runtime_error *a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  std::runtime_error::runtime_error(&v13, a2);
  v14 = a2[1];
  v17 = 0;
  v18 = 0;
  v19 = -1;
  v13.__vftable = &off_10043AFC0;
  v15 = off_10043AFE8;
  v16 = 0;
  sub_1000EFDCC(&v20, &v13);
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v12[0] = off_100433458;
  memset(&v12[1], 0, 24);
  v11 = a6[1] - *a6;
  if (v11)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_1000EFAEC(&v20, v12);
}

void sub_1000ED0CC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    sub_10000D388(a1);
  }

  sub_10000D388(a1);
}

uint64_t sub_1000ED0F4(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4[1] = *(a2 + 16);
  v5 = *(a2 + 40);
  *(a1 + 32) = &off_100431E10;
  *(a1 + 40) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v6;
  *a1 = &off_10043AF20;
  *(a1 + 32) = off_10043AF58;
  *(a1 + 72) = &off_10043AF90;
  return a1;
}

void sub_1000ED230(std::system_error *a1)
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

  std::system_error::~system_error(a1);
}

uint64_t sub_1000ED2C4(int *a1)
{
  v2 = *a1;
  if (v2 == -1)
  {
    __cxa_allocate_exception(0x40uLL);
    sub_1000474A4(&v7, "Trying to close file-handle not-opened");
    std::runtime_error::runtime_error(&v9, &v7);
    v9.__vftable = &off_1004338D0;
    sub_10010A984(&v8);
  }

  result = close(v2);
  *a1 = -1;
  if (result == -1)
  {
    __cxa_allocate_exception(0x50uLL);
    v4 = *__error();
    v5 = std::system_category();
    std::system_error::system_error(&v7, v4, v5);
    sub_10010A984(&v6);
  }

  return result;
}

void sub_1000ED424(_Unwind_Exception *__p, uint64_t a2, uint64_t a3, std::system_error *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__pa, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (__pa)
  {
    operator delete(__pa);
  }

  std::system_error::~system_error(&a12);
  _Unwind_Resume(__p);
}

void sub_1000ED448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::system_error *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  std::system_error::~system_error(&a12);
  __cxa_free_exception(v12);
  _Unwind_Resume(a1);
}

void sub_1000ED464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::runtime_error::~runtime_error((v20 - 48));
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

int *sub_1000ED500(int *result)
{
  if (*result != -1)
  {
    v1 = result;
    sub_1000ED2C4(result);
    return v1;
  }

  return result;
}

_DWORD *sub_1000ED538(_DWORD *result, _DWORD *a2)
{
  *result = *a2;
  *a2 = -1;
  return result;
}

int *sub_1000ED54C(int *a1, int *a2)
{
  v3 = *a2;
  *a2 = -1;
  v4 = *a1;
  *a1 = v3;
  v6 = v4;
  if (v4 != -1)
  {
    sub_1000ED2C4(&v6);
  }

  return a1;
}

uint64_t sub_1000ED5A4(int *a1)
{
  result = fsync(*a1);
  if (result == -1)
  {
    __cxa_allocate_exception(0x50uLL);
    v2 = *__error();
    v3 = std::system_category();
    std::system_error::system_error(&v5, v2, v3);
    sub_10010A984(&v4);
  }

  return result;
}

void sub_1000ED650(_Unwind_Exception *a1, void *__p, uint64_t a3, uint64_t a4, std::system_error *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__pa, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (__pa)
  {
    operator delete(__pa);
  }

  std::system_error::~system_error(&a13);
  _Unwind_Resume(a1);
}

void sub_1000ED674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::system_error *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  std::system_error::~system_error(&a13);
  __cxa_free_exception(v13);
  _Unwind_Resume(a1);
}

ssize_t sub_1000ED6A4(int *a1, const void *a2, size_t a3)
{
  result = write(*a1, a2, a3);
  if (result == -1)
  {
    __cxa_allocate_exception(0x50uLL);
    v4 = *__error();
    v5 = std::system_category();
    std::system_error::system_error(&v7, v4, v5);
    sub_10010A984(&v6);
  }

  return result;
}

void sub_1000ED750(_Unwind_Exception *a1, void *__p, uint64_t a3, uint64_t a4, std::system_error *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__pa, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (__pa)
  {
    operator delete(__pa);
  }

  std::system_error::~system_error(&a13);
  _Unwind_Resume(a1);
}

void sub_1000ED774(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::system_error *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  std::system_error::~system_error(&a13);
  __cxa_free_exception(v13);
  _Unwind_Resume(a1);
}

void sub_1000ED8C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  __cxa_begin_catch(a1);
  sub_1000F24E8(va);
}

void sub_1000EDB40(_Unwind_Exception *a1)
{
  std::ios::~ios();
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1000EDB60(uint64_t *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int *a5@<X8>)
{
  v6 = *(a1 + 23);
  v7 = *a1;
  v8 = a1[1];
  v10[0] = 0;
  if (*a3 == 1)
  {
    v11 = *(a3 + 8);
    v10[0] = 1;
  }

  if ((v6 & 0x80u) == 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if ((v6 & 0x80u) != 0)
  {
    a1 = v7;
  }

  sub_1000EDBF8(a1, v9, a2, v10, a4, a5);
}

void sub_1000EDBF8(const void *a1@<X0>, size_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int *a6@<X8>)
{
  if (qword_10045B050 != -1)
  {
    sub_100383DA4();
  }

  v12 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    if (a3[23] >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 134218242;
    *(buf.__r_.__value_.__r.__words + 4) = a2;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Writing %zu bytes to %s", &buf, 0x16u);
  }

  if (a3[23] >= 0)
  {
    v14 = a3;
  }

  else
  {
    v14 = *a3;
  }

  v15 = sub_100007C48(a3);
  v16 = v15;
  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  *(&buf.__r_.__value_.__s + 23) = v15;
  if (v15)
  {
    memmove(&buf, v14, v15);
  }

  buf.__r_.__value_.__s.__data_[v16] = 0;
  sub_10001B178(a3, &v24);
  std::operator+<char>();
  v17 = std::string::append(&v26, "-%%%%-%%%%-%%%%-%%%%.tmp");
  v18 = v17->__r_.__value_.__r.__words[0];
  v32[0] = v17->__r_.__value_.__l.__size_;
  *(v32 + 7) = *(&v17->__r_.__value_.__r.__words[1] + 7);
  v19 = HIBYTE(v17->__r_.__value_.__r.__words[2]);
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  *&v28[7] = *(v32 + 7);
  v27 = v18;
  *v28 = v32[0];
  v29 = v19;
  v20 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100003228(&v33, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    v33 = buf;
  }

  sub_1000032E4(&v33, &v27);
  sub_10001C92C(&v33, 0, __p);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
    if ((v29 & 0x80000000) == 0)
    {
LABEL_22:
      if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

LABEL_42:
      operator delete(v26.__r_.__value_.__l.__data_);
      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_43;
    }
  }

  else if ((v29 & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

  operator delete(v27);
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_42;
  }

LABEL_23:
  if ((v25 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_43:
  operator delete(v24);
LABEL_24:
  sub_1000EC51C(a6, __p, 513, 0, 420);
  sub_1000ED6A4(a6, a1, a2);
  if (*a4 == 1)
  {
    v21 = std::chrono::system_clock::to_time_t((a4 + 8));
    sub_100019AC4(__p, v21, 0);
  }

  if (a5 == 1)
  {
    sub_1000ED5A4(a6);
  }

  sub_10001A224(__p, a3, 0);
  if (qword_10045B050 != -1)
  {
    sub_100383DB8();
  }

  v22 = qword_10045B058;
  if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_DEBUG))
  {
    if (v31 < 0)
    {
      goto LABEL_35;
    }

LABEL_38:
    if (v20 < 0)
    {
      goto LABEL_36;
    }

    return;
  }

  if (a3[23] >= 0)
  {
    v23 = a3;
  }

  else
  {
    v23 = *a3;
  }

  LODWORD(v33.__r_.__value_.__l.__data_) = 136315138;
  *(v33.__r_.__value_.__r.__words + 4) = v23;
  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Writing to %s completed", &v33, 0xCu);
  if ((v31 & 0x80000000) == 0)
  {
    goto LABEL_38;
  }

LABEL_35:
  operator delete(__p[0]);
  if (v20 < 0)
  {
LABEL_36:
    operator delete(buf.__r_.__value_.__l.__data_);
  }
}

void sub_1000EDFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a26 < 0)
  {
    operator delete(a21);
    if (a20 < 0)
    {
LABEL_3:
      operator delete(__p);
      if ((a14 & 0x80000000) == 0)
      {
LABEL_8:
        if ((*(v40 - 105) & 0x80) != 0)
        {
          operator delete(*(v40 - 128));
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a9);
      goto LABEL_8;
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_3;
  }

  if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_1000EE09C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  boost::filesystem::filesystem_error::filesystem_error(v12, a1);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = -1;
  v12[0].__vftable = &off_10043B0B0;
  v13 = off_10043B0D8;
  sub_1000F0C64(v18, v12);
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v11[0] = off_100433458;
  memset(&v11[1], 0, 24);
  v10 = a5[1] - *a5;
  if (v10)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_10000FC84();
  }

  sub_1000F0984(v18, v11);
}

void sub_1000EE3A4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
    sub_10000D388(a1);
  }

  sub_10000D388(a1);
}

void sub_1000EE3CC(std::runtime_error *a1)
{
  a1[3].__vftable = &off_100431E10;
  imp = a1[3].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[3].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[3].__imp_.__imp_ = 0;
    }
  }

  boost::filesystem::filesystem_error::~filesystem_error(a1);
}

void sub_1000EE460(uint64_t a1)
{
  sub_100018AFC(0, &v9);
  sub_100016F50(a1, &v9, 0, v7);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v8) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v8) & 0x80000000) == 0)
  {
LABEL_3:
    *__p = *v7;
    v6 = v8;
    goto LABEL_6;
  }

  sub_100003228(__p, v7[0], v7[1]);
LABEL_6:
  operator new();
}

void sub_1000EE610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000EE8E8(std::system_error *a1)
{
  std::system_error::~system_error(a1);

  operator delete();
}

uint64_t sub_1000EE950(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::ostream::~ostream();
}

uint64_t sub_1000EEA18(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  std::filebuf::~filebuf();
  std::ostream::~ostream();

  return std::ios::~ios();
}

uint64_t sub_1000EEAB8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  std::filebuf::~filebuf();

  return std::istream::~istream();
}

uint64_t sub_1000EEB80(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  std::filebuf::~filebuf();
  std::istream::~istream();

  return std::ios::~ios();
}

void *sub_1000EEC20(void *result)
{
  *result = &off_100431E10;
  v1 = result[1];
  if (v1)
  {
    v2 = result;
    v3 = (*(*v1 + 32))(result[1]);
    result = v2;
    if (v3)
    {
      v2[1] = 0;
    }
  }

  return result;
}

void sub_1000EECA0(std::system_error *a1)
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

  std::system_error::~system_error(a1);
}

void sub_1000EEFD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10003B91C(va);
  _Unwind_Resume(a1);
}

void sub_1000EEFE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10003B91C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EF014(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4[1] = *(a2 + 16);
  v4->__vftable = &off_10043AC38;
  v5 = &v4[2];
  v6 = *(a2 + 40);
  *(a1 + 32) = &off_100431E10;
  *(a1 + 40) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v7;
  *a1 = &off_10043AE20;
  *(a1 + 32) = off_10043AE58;
  *(a1 + 72) = &off_10043AE90;
  sub_10000D87C(v5, a2 + 32);
  return a1;
}

void sub_1000EF18C(std::system_error *a1)
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

  std::system_error::~system_error(a1);
}

void sub_1000EF220(std::system_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::system_error::~system_error(this);

  operator delete();
}

void sub_1000EF340(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x50uLL);
  sub_1000ECC30(exception, a1);
}

void sub_1000EF39C(std::system_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::system_error::~system_error(a1 - 1);
}

void sub_1000EF424(std::system_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::system_error::~system_error(a1 - 1);

  operator delete();
}

void sub_1000EF554(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x50uLL);
  sub_1000ECC30(exception, a1 + v2);
}

void sub_1000EF5C8(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::system_error::~system_error(v1);
}

void sub_1000EF668(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::system_error::~system_error(v1);

  operator delete();
}

void sub_1000EF71C(std::system_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::system_error::~system_error(this);

  operator delete();
}

void sub_1000EF7BC(std::system_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::system_error::~system_error(a1 - 1);
}

void sub_1000EF844(std::system_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::system_error::~system_error(a1 - 1);

  operator delete();
}

uint64_t sub_1000EF8E0(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4[1] = *(a2 + 16);
  v4->__vftable = &off_10043AC38;
  v5 = &v4[2];
  v6 = *(a2 + 40);
  *(a1 + 32) = &off_100431E10;
  *(a1 + 40) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v7;
  *a1 = &off_10043AE20;
  *(a1 + 32) = off_10043AE58;
  *(a1 + 72) = &off_10043AE90;
  sub_10000D87C(v5, a2 + 32);
  return a1;
}

void sub_1000EFA58(std::system_error *a1)
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

  std::system_error::~system_error(a1);
}

void sub_1000EFD88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10003B91C(va);
  _Unwind_Resume(a1);
}

void sub_1000EFD9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10003B91C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000EFDCC(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4[1] = *(a2 + 16);
  v5 = &v4[2];
  v6 = *(a2 + 40);
  *(a1 + 32) = &off_100431E10;
  *(a1 + 40) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v7;
  *a1 = &off_10043AF20;
  *(a1 + 32) = off_10043AF58;
  *(a1 + 72) = &off_10043AF90;
  sub_10000D87C(v5, a2 + 32);
  return a1;
}

void sub_1000EFF28(std::system_error *a1)
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

  std::system_error::~system_error(a1);
}

void sub_1000EFFBC(std::system_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::system_error::~system_error(this);

  operator delete();
}

void sub_1000F00DC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x50uLL);
  sub_1000ED0F4(exception, a1);
}

void sub_1000F0138(std::system_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::system_error::~system_error(a1 - 1);
}

void sub_1000F01C0(std::system_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::system_error::~system_error(a1 - 1);

  operator delete();
}

void sub_1000F02F0(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x50uLL);
  sub_1000ED0F4(exception, a1 + v2);
}

void sub_1000F0364(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::system_error::~system_error(v1);
}

void sub_1000F0404(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[1].__vftable = &off_100431E10;
  imp = v1[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[1].__imp_.__imp_ = 0;
  }

  std::system_error::~system_error(v1);

  operator delete();
}

void sub_1000F04B8(std::system_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::system_error::~system_error(this);

  operator delete();
}

void sub_1000F0558(std::system_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::system_error::~system_error(a1 - 1);
}

void sub_1000F05E0(std::system_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::system_error::~system_error(a1 - 1);

  operator delete();
}

uint64_t sub_1000F067C(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = &off_100431F30;
  v4 = std::runtime_error::runtime_error(a1, a2);
  v4[1] = *(a2 + 16);
  v5 = &v4[2];
  v6 = *(a2 + 40);
  *(a1 + 32) = &off_100431E10;
  *(a1 + 40) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v7;
  *a1 = &off_10043AF20;
  *(a1 + 32) = off_10043AF58;
  *(a1 + 72) = &off_10043AF90;
  sub_10000D87C(v5, a2 + 32);
  return a1;
}

uint64_t sub_1000F07D8(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = &off_100431F30;
  boost::filesystem::filesystem_error::filesystem_error(a1, a2);
  v4 = *(a2 + 56);
  *(a1 + 48) = &off_100431E10;
  *(a1 + 56) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v5;
  *a1 = &off_10043B010;
  *(a1 + 48) = off_10043B048;
  *(a1 + 88) = &off_10043B080;
  return a1;
}

void sub_1000F08F0(std::runtime_error *a1)
{
  a1[3].__vftable = &off_100431E10;
  imp = a1[3].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[3].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[3].__imp_.__imp_ = 0;
    }
  }

  boost::filesystem::filesystem_error::~filesystem_error(a1);
}

void sub_1000F0C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10003B91C(va);
  _Unwind_Resume(a1);
}

void sub_1000F0C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10003B91C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F0C64(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = &off_100431F30;
  v4 = boost::filesystem::filesystem_error::filesystem_error(a1, a2) + 3;
  v5 = *(a2 + 56);
  *(a1 + 48) = &off_100431E10;
  *(a1 + 56) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v6;
  *a1 = &off_10043B010;
  *(a1 + 48) = off_10043B048;
  *(a1 + 88) = &off_10043B080;
  sub_10000D87C(v4, a2 + 48);
  return a1;
}

void sub_1000F0D9C(std::runtime_error *a1)
{
  a1[3].__vftable = &off_100431E10;
  imp = a1[3].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[3].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[3].__imp_.__imp_ = 0;
    }
  }

  boost::filesystem::filesystem_error::~filesystem_error(a1);
}

void sub_1000F0E30(std::runtime_error *this)
{
  this[3].__vftable = &off_100431E10;
  imp = this[3].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[3].__imp_.__imp_ = 0;
  }

  boost::filesystem::filesystem_error::~filesystem_error(this);

  operator delete();
}

void sub_1000F0F50(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x60uLL);
  sub_1000F07D8(exception, a1);
}

void sub_1000F0FAC(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  boost::filesystem::filesystem_error::~filesystem_error(a1 - 3);
}

void sub_1000F1034(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  boost::filesystem::filesystem_error::~filesystem_error(a1 - 3);

  operator delete();
}

void sub_1000F1164(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x60uLL);
  sub_1000F07D8(exception, a1 + v2);
}

void sub_1000F11D8(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[3].__vftable = &off_100431E10;
  imp = v1[3].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[3].__imp_.__imp_ = 0;
  }

  boost::filesystem::filesystem_error::~filesystem_error(v1);
}

void sub_1000F1278(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1[3].__vftable = &off_100431E10;
  imp = v1[3].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    v1[3].__imp_.__imp_ = 0;
  }

  boost::filesystem::filesystem_error::~filesystem_error(v1);

  operator delete();
}

void sub_1000F132C(std::runtime_error *this)
{
  this[3].__vftable = &off_100431E10;
  imp = this[3].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[3].__imp_.__imp_ = 0;
  }

  boost::filesystem::filesystem_error::~filesystem_error(this);

  operator delete();
}

void sub_1000F13CC(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  boost::filesystem::filesystem_error::~filesystem_error(a1 - 3);
}

void sub_1000F1454(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  boost::filesystem::filesystem_error::~filesystem_error(a1 - 3);

  operator delete();
}

uint64_t sub_1000F14F0(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = &off_100431F30;
  v4 = boost::filesystem::filesystem_error::filesystem_error(a1, a2) + 3;
  v5 = *(a2 + 56);
  *(a1 + 48) = &off_100431E10;
  *(a1 + 56) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 64) = v6;
  *a1 = &off_10043B010;
  *(a1 + 48) = off_10043B048;
  *(a1 + 88) = &off_10043B080;
  sub_10000D87C(v4, a2 + 48);
  return a1;
}

void sub_1000F1628(std::invalid_argument *a1)
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

  std::invalid_argument::~invalid_argument(a1);
}

uint64_t sub_1000F16BC(uint64_t result)
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

void sub_1000F1768(std::system_error *a1)
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

  std::system_error::~system_error(a1);
}

void sub_1000F1A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000F16BC(va);
  _Unwind_Resume(a1);
}

void sub_1000F1AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1000F16BC(va1);
  _Unwind_Resume(a1);
}

void sub_1000F1D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000F16BC(va);
  _Unwind_Resume(a1);
}

void sub_1000F1D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1000F16BC(va1);
  _Unwind_Resume(a1);
}

std::string *sub_1000F1DBC@<X0>(std::string::value_type *__s@<X0>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  return std::string::assign(a2, __s);
}

void sub_1000F1DF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000F1E2C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10043B0F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_1000F1EA8(uint64_t *a1, uint64_t *a2, uint64_t a3, int a4)
{
  v6 = *a2;
  *a1 = *a2;
  *(a1 + *(v6 - 24)) = a2[3];
  v7 = a2[1];
  *a1 = v7;
  *(a1 + *(v7 - 24)) = a2[2];
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 2);
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v9 = *a2;
  *a1 = *a2;
  *(a1 + *(v9 - 24)) = a2[3];
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_1000F20FC(_Unwind_Exception *a1)
{
  std::filebuf::~filebuf();
  std::istream::~istream();
  _Unwind_Resume(a1);
}

void sub_1000F211C(void (__cdecl ***a1)(std::ifstream *__hidden this))
{
  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();

  operator delete();
}

void sub_1000F21C0(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();

  operator delete();
}

void *sub_1000F2278(void *a1)
{
  *a1 = off_10043B1D0;
  a1[53] = off_10043B1F8;
  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  return a1;
}

void sub_1000F22F8(void *a1)
{
  *a1 = off_10043B1D0;
  a1[53] = off_10043B1F8;
  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();

  operator delete();
}

uint64_t sub_1000F2398(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10043B1D0;
  v1[53] = off_10043B1F8;
  std::filebuf::~filebuf();
  std::istream::~istream();

  return std::ios::~ios();
}

void sub_1000F2434(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10043B1D0;
  v1[53] = off_10043B1F8;
  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();

  operator delete();
}

void sub_1000F24E8(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  sub_1000F258C();
}

void sub_1000F2524(void *a1, int a2)
{
  __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    sub_1000F28D8(v2, qword_10045B0A8);
  }

  else
  {
    sub_1000F28D8(v2, qword_10045B0C0);
  }

  __cxa_end_catch();
  JUMPOUT(0x1000F2514);
}

void sub_1000F27D4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  std::exception_ptr::~exception_ptr(&v15);
  __cxa_begin_catch(a1);
  sub_1000F299C();
}

void *sub_1000F28D8(void *result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  v4 = result[1];
  *result = v3;
  result[1] = v2;
  if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
  {
    v5 = result;
    (*(*v4 + 16))(v4);
    result = v5;
    if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 24))(v4);
      return v5;
    }
  }

  return result;
}

void sub_1000F299C()
{
  memset(&v0[1], 0, 24);
  v1 = -1;
  v0[0] = off_10043B3D8;
  v2 = off_10043B3F8;
  sub_1000F5760(v0);
}

void sub_1000F2A80(uint64_t a1)
{
  v2 = *(a1 + 8);
  v4[0] = &off_100431E10;
  v4[1] = v2;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v4[0] = off_10043B3D8;
  v7 = off_10043B3F8;
  v3 = *(*a1 - 8);
  v8[0] = off_10043B5A0;
  v8[1] = v3;
  sub_1000F67C0(v4, v8);
}

void sub_1000F2BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::exception::~exception(v9);
  sub_1000EEC20(&a9);
  _Unwind_Resume(a1);
}

void sub_1000F2C10(uint64_t *a1)
{
  v2 = *a1;
  v3 = *a1;
  if (v4)
  {
    v5 = v4;
    v11 = &off_100431E10;
    v6 = v4[1];
    v12 = v6;
    if (v6)
    {
      (*(*v6 + 24))(v6);
      v2 = *a1;
    }

    v7 = *(v5 + 1);
    v14 = *(v5 + 8);
    v13 = v7;
    v10 = &off_10043B630;
    v11 = off_10043B658;
    v8 = *(v2 - 8);
    v15 = off_10043B5A0;
    v16 = v8;
    sub_1000F7EA0(&v10, &v15);
  }

  v12 = 0;
  v13 = 0uLL;
  v14 = -1;
  v10 = &off_10043B630;
  v11 = off_10043B658;
  v9 = *(v3 - 8);
  v15 = off_10043B5A0;
  v16 = v9;
  sub_1000F7EA0(&v10, &v15);
}

void sub_1000F2EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::bad_exception a9)
{
  sub_1000EEC20(v9);
  std::bad_exception::~bad_exception(&a9);
  _Unwind_Resume(a1);
}

void sub_1000F2F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::bad_exception a9)
{
  sub_1000EEC20(v9);
  std::bad_exception::~bad_exception(&a9);
  _Unwind_Resume(a1);
}

void sub_1000F2F44(uint64_t *a1)
{
  v2 = *a1;
  v3 = *a1;
  if (v4)
  {
    v5 = v4;
    v11 = &off_100431E10;
    v6 = v4[1];
    v12 = v6;
    if (v6)
    {
      (*(*v6 + 24))(v6);
      v2 = *a1;
    }

    v7 = *(v5 + 1);
    v14 = *(v5 + 8);
    v13 = v7;
    v10 = &off_10043B7E0;
    v11 = off_10043B808;
    v8 = *(v2 - 8);
    v15 = off_10043B5A0;
    v16 = v8;
    sub_1000F92E0(&v10, &v15);
  }

  v12 = 0;
  v13 = 0uLL;
  v14 = -1;
  v10 = &off_10043B7E0;
  v11 = off_10043B808;
  v9 = *(v3 - 8);
  v15 = off_10043B5A0;
  v16 = v9;
  sub_1000F92E0(&v10, &v15);
}

void sub_1000F3214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::bad_typeid a9)
{
  sub_1000EEC20(v9);
  std::bad_typeid::~bad_typeid(&a9);
  _Unwind_Resume(a1);
}

void sub_1000F325C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::bad_typeid a9)
{
  sub_1000EEC20(v9);
  std::bad_typeid::~bad_typeid(&a9);
  _Unwind_Resume(a1);
}

void sub_1000F3278(uint64_t *a1)
{
  v2 = *a1;
  v3 = *a1;
  if (v4)
  {
    v5 = v4;
    v11 = &off_100431E10;
    v6 = v4[1];
    v12 = v6;
    if (v6)
    {
      (*(*v6 + 24))(v6);
      v2 = *a1;
    }

    v7 = *(v5 + 1);
    v14 = *(v5 + 8);
    v13 = v7;
    v10 = &off_10043B990;
    v11 = off_10043B9B8;
    v8 = *(v2 - 8);
    v15 = off_10043B5A0;
    v16 = v8;
    sub_1000FA720(&v10, &v15);
  }

  v12 = 0;
  v13 = 0uLL;
  v14 = -1;
  v10 = &off_10043B990;
  v11 = off_10043B9B8;
  v9 = *(v3 - 8);
  v15 = off_10043B5A0;
  v16 = v9;
  sub_1000FA720(&v10, &v15);
}

void sub_1000F3548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::bad_cast a9)
{
  sub_1000EEC20(v9);
  std::bad_cast::~bad_cast(&a9);
  _Unwind_Resume(a1);
}

void sub_1000F3590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::bad_cast a9)
{
  sub_1000EEC20(v9);
  std::bad_cast::~bad_cast(&a9);
  _Unwind_Resume(a1);
}

void sub_1000F35AC(uint64_t *a1)
{
  v2 = *a1;
  v3 = *a1;
  if (v4)
  {
    v5 = v4;
    v11 = &off_100431E10;
    v6 = v4[1];
    v12 = v6;
    if (v6)
    {
      (*(*v6 + 24))(v6);
      v2 = *a1;
    }

    v7 = *(v5 + 1);
    v14 = *(v5 + 8);
    v13 = v7;
    v10 = &off_10043BB40;
    v11 = off_10043BB68;
    v8 = *(v2 - 8);
    v15 = off_10043B5A0;
    v16 = v8;
    sub_1000FBB60(&v10, &v15);
  }

  v12 = 0;
  v13 = 0uLL;
  v14 = -1;
  v10 = &off_10043BB40;
  v11 = off_10043BB68;
  v9 = *(v3 - 8);
  v15 = off_10043B5A0;
  v16 = v9;
  sub_1000FBB60(&v10, &v15);
}

void sub_1000F387C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::bad_alloc a9)
{
  sub_1000EEC20(v9);
  std::bad_alloc::~bad_alloc(&a9);
  _Unwind_Resume(a1);
}

void sub_1000F38C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::bad_alloc a9)
{
  sub_1000EEC20(v9);
  std::bad_alloc::~bad_alloc(&a9);
  _Unwind_Resume(a1);
}

void sub_1000F38E0(const std::runtime_error *a1)
{
  if (v2)
  {
    sub_1000FCF58(&v4, a1, v2);
  }

  std::runtime_error::runtime_error(&v4, a1);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = -1;
  v4.__vftable = &off_10043BCF0;
  v5 = off_10043BD18;
  what = a1->__vftable[-1].what;
  v10[0] = off_10043B5A0;
  v10[1] = what;
  sub_1000FD09C(&v4, v10);
}

void sub_1000F3AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::runtime_error a10)
{
  sub_1000EEC20(v10);
  std::runtime_error::~runtime_error(&a10);
  _Unwind_Resume(a1);
}

void sub_1000F3B14(uint64_t a1)
{
  if (v2)
  {
    sub_1000FE55C(&v4, a1, v2);
  }

  std::runtime_error::runtime_error(&v4, a1);
  v5 = *(a1 + 16);
  v8 = 0;
  v9 = 0;
  v10 = -1;
  v4.__vftable = &off_10043BEA0;
  v6 = off_10043BEC8;
  v7 = 0;
  v3 = *(*a1 - 8);
  v11[0] = off_10043B5A0;
  v11[1] = v3;
  sub_1000FE6E0(&v4, v11);
}

void sub_1000F3D18(_Unwind_Exception *a1, std::ios_base::failure *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000EEC20(v10);
  std::ios_base::failure::~failure(&a10);
  _Unwind_Resume(a1);
}

void sub_1000F3D4C(const std::runtime_error *a1)
{
  if (v2)
  {
    sub_1000FFB48(&v4, a1, v2);
  }

  std::runtime_error::runtime_error(&v4, a1);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = -1;
  v4.__vftable = &off_10043C050;
  v5 = off_10043C078;
  what = a1->__vftable[-1].what;
  v10[0] = off_10043B5A0;
  v10[1] = what;
  sub_1000FFCA8(&v4, v10);
}

void sub_1000F3F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::underflow_error a10)
{
  sub_1000EEC20(v10);
  std::underflow_error::~underflow_error(&a10);
  _Unwind_Resume(a1);
}

void sub_1000F3F80(const std::runtime_error *a1)
{
  if (v2)
  {
    sub_100101110(&v4, a1, v2);
  }

  std::runtime_error::runtime_error(&v4, a1);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = -1;
  v4.__vftable = &off_10043C200;
  v5 = off_10043C228;
  what = a1->__vftable[-1].what;
  v10[0] = off_10043B5A0;
  v10[1] = what;
  sub_100101270(&v4, v10);
}

void sub_1000F4180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::overflow_error a10)
{
  sub_1000EEC20(v10);
  std::overflow_error::~overflow_error(&a10);
  _Unwind_Resume(a1);
}

void sub_1000F41B4(const std::runtime_error *a1)
{
  if (v2)
  {
    sub_1001026D8(&v4, a1, v2);
  }

  std::runtime_error::runtime_error(&v4, a1);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = -1;
  v4.__vftable = &off_10043C3B0;
  v5 = off_10043C3D8;
  what = a1->__vftable[-1].what;
  v10[0] = off_10043B5A0;
  v10[1] = what;
  sub_100102838(&v4, v10);
}

void sub_1000F43B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::range_error a10)
{
  sub_1000EEC20(v10);
  std::range_error::~range_error(&a10);
  _Unwind_Resume(a1);
}

void sub_1000F43E8(const std::logic_error *a1)
{
  if (v2)
  {
    sub_100103C30(&v4, a1, v2);
  }

  std::logic_error::logic_error(&v4, a1);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = -1;
  v4.__vftable = &off_10043C560;
  v5 = off_10043C588;
  what = a1->__vftable[-1].what;
  v10[0] = off_10043B5A0;
  v10[1] = what;
  sub_100103D74(&v4, v10);
}

void sub_1000F45E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::logic_error a10)
{
  sub_1000EEC20(v10);
  std::logic_error::~logic_error(&a10);
  _Unwind_Resume(a1);
}

void sub_1000F461C(const std::logic_error *a1)
{
  if (v2)
  {
    sub_1001051DC(&v4, a1, v2);
  }

  std::logic_error::logic_error(&v4, a1);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = -1;
  v4.__vftable = &off_10043C710;
  v5 = off_10043C738;
  what = a1->__vftable[-1].what;
  v10[0] = off_10043B5A0;
  v10[1] = what;
  sub_10010533C(&v4, v10);
}

void sub_1000F481C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::out_of_range a10)
{
  sub_1000EEC20(v10);
  std::out_of_range::~out_of_range(&a10);
  _Unwind_Resume(a1);
}

void sub_1000F4850(const std::logic_error *a1)
{
  if (v2)
  {
    sub_1001067A4(&v4, a1, v2);
  }

  std::logic_error::logic_error(&v4, a1);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = -1;
  v4.__vftable = &off_10043C8C0;
  v5 = off_10043C8E8;
  what = a1->__vftable[-1].what;
  v10[0] = off_10043B5A0;
  v10[1] = what;
  sub_100106904(&v4, v10);
}

void sub_1000F4A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::length_error a10)
{
  sub_1000EEC20(v10);
  std::length_error::~length_error(&a10);
  _Unwind_Resume(a1);
}

void sub_1000F4A84(const std::logic_error *a1)
{
  if (v2)
  {
    sub_100107D6C(&v4, a1, v2);
  }

  std::logic_error::logic_error(&v4, a1);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = -1;
  v4.__vftable = &off_10043CA70;
  v5 = off_10043CA98;
  what = a1->__vftable[-1].what;
  v10[0] = off_10043B5A0;
  v10[1] = what;
  sub_100107ECC(&v4, v10);
}

void sub_1000F4C84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::invalid_argument a10)
{
  sub_1000EEC20(v10);
  std::invalid_argument::~invalid_argument(&a10);
  _Unwind_Resume(a1);
}

void sub_1000F4CB8(const std::logic_error *a1)
{
  if (v2)
  {
    sub_100109334(&v4, a1, v2);
  }

  std::logic_error::logic_error(&v4, a1);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = -1;
  v4.__vftable = &off_10043CC20;
  v5 = off_10043CC48;
  what = a1->__vftable[-1].what;
  v10[0] = off_10043B5A0;
  v10[1] = what;
  sub_100109494(&v4, v10);
}

void sub_1000F4EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::domain_error a10)
{
  sub_1000EEC20(v10);
  std::domain_error::~domain_error(&a10);
  _Unwind_Resume(a1);
}

void sub_1000F4EEC(atomic_uint **a1, atomic_uint *a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1000F4F38(a1, a2, a1 + 1);
}

void sub_1000F5024(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_100383DE0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1000F5068(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void sub_1000F50B0(uint64_t a1@<X8>)
{
  std::current_exception();
  v4.__vftable = off_10043B3B0;
  std::exception_ptr::exception_ptr(&v5, &v3);
  v8 = &off_100431F30;
  v6.__vftable = off_10043B3B0;
  std::exception_ptr::exception_ptr(&v7, &v5);
  v6.__vftable = off_10043B2E8;
  v8 = &off_10043B338;
  v4.__vftable = off_10043B3B0;
  std::exception_ptr::~exception_ptr(&v5);
  std::exception::~exception(&v4);
  std::exception_ptr::~exception_ptr(&v3);
  v2 = (*v8)(&v8);
  *a1 = v2;
  *(a1 + 8) = 0;
  sub_1000F4F38(a1, v2, (a1 + 8));
}

void sub_1000F5230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10000E3A8(v7);
  sub_1000F5280(va);
  _Unwind_Resume(a1);
}

void sub_1000F5254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000F5280(va);
  _Unwind_Resume(a1);
}

void sub_1000F5280(uint64_t a1)
{
  *a1 = off_10043B3B0;
  std::exception_ptr::~exception_ptr((a1 + 8));

  std::exception::~exception(a1);
}

void sub_1000F52D4(uint64_t a1)
{
  *a1 = off_10043B3B0;
  std::exception_ptr::~exception_ptr((a1 + 8));
  std::exception::~exception(a1);

  operator delete();
}

void sub_1000F5400(const std::exception_ptr *a1)
{
  exception = __cxa_allocate_exception(0x18uLL);
  v3 = sub_1000F56C0(exception, a1);
}

void sub_1000F5518(void *a1)
{
  v2 = *(*a1 - 32);
  exception = __cxa_allocate_exception(0x18uLL);
  v4 = sub_1000F56C0(exception, (a1 + v2));
}

void sub_1000F556C(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1->__ptr_ = off_10043B3B0;
  std::exception_ptr::~exception_ptr(v1 + 1);

  std::exception::~exception(v1);
}

void sub_1000F55D8(void *a1)
{
  v1 = (a1 + *(*a1 - 40));
  v1->__ptr_ = off_10043B3B0;
  std::exception_ptr::~exception_ptr(v1 + 1);
  std::exception::~exception(v1);

  operator delete();
}

void sub_1000F5658(uint64_t a1)
{
  *a1 = off_10043B3B0;
  std::exception_ptr::~exception_ptr((a1 + 8));
  std::exception::~exception(a1);

  operator delete();
}

std::exception_ptr *sub_1000F56C0(std::exception_ptr *a1, const std::exception_ptr *a2)
{
  a1[2].__ptr_ = &off_100431F30;
  a1->__ptr_ = off_10043B3B0;
  std::exception_ptr::exception_ptr(a1 + 1, a2 + 1);
  a1->__ptr_ = off_10043B2E8;
  a1[2].__ptr_ = &off_10043B338;
  return a1;
}

void sub_1000F5760(uint64_t a1)
{
  v3 = *(a1 + 8);
  v4[0] = &off_100431E10;
  v4[1] = v3;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 32);
  v4[0] = off_10043B3D8;
  v7 = off_10043B3F8;
  sub_10000D87C(v4, a1);
  sub_1000F5A4C();
}

void sub_1000F59A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000F59CC(va);
  _Unwind_Resume(a1);
}

void sub_1000F59B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000F59CC(va);
  _Unwind_Resume(a1);
}

std::exception *sub_1000F59CC(std::exception *a1)
{
  std::exception::~exception(a1 + 5);
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  return a1;
}

uint64_t sub_1000F5B9C(uint64_t result)
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

void sub_1000F5C48(std::exception *a1)
{
  std::exception::~exception(a1 + 5);
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  operator delete();
}

uint64_t sub_1000F5CE8(std::exception *a1)
{
  std::exception::~exception(a1);
  *(v2 - 40) = &off_100431E10;
  result = *(v2 - 32);
  if (result)
  {
    result = (*(*result + 32))(result);
    if (result)
    {
      a1[-4].__vftable = 0;
    }
  }

  return result;
}

void sub_1000F5D64(std::exception *a1)
{
  std::exception::~exception(a1);
  *(v2 - 40) = &off_100431E10;
  v3 = *(v2 - 32);
  if (v3 && (*(*v3 + 32))(v3))
  {
    a1[-4].__vftable = 0;
  }

  operator delete();
}

uint64_t sub_1000F5E04(uint64_t result)
{
  *result = off_10043B458;
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    v2 = result;
    (*(*(result + 32) + 16))(result + 32);
    result = v2;
    *(v1 - 8) = 0;
  }

  return result;
}

void sub_1000F5E84(uint64_t a1)
{
  *a1 = off_10043B458;
  if (*(a1 + 24) == 1)
  {
    v2 = a1 + 32;
    (*(*(a1 + 32) + 16))(a1 + 32);
    *(v2 - 8) = 0;
  }

  operator delete();
}

uint64_t sub_1000F5F20(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    result = (*(*(result + 32) + 16))();
    *(v1 - 8) = 0;
  }

  return result;
}

uint64_t sub_1000F5F78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_17unknown_exceptionEEEEE")
  {
    return a1 + 24;
  }

  if (((v2 & "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_17unknown_exceptionEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_17unknown_exceptionEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_17unknown_exceptionEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 24;
  }

  return 0;
}

uint64_t sub_1000F5FF4(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  v4 = *(a2 + 8);
  *(a1 + 8) = &off_100431E10;
  *(a1 + 16) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
    v4 = *(a1 + 16);
  }

  v5 = *(a2 + 16);
  *(a1 + 40) = *(a2 + 32);
  *(a1 + 24) = v5;
  *a1 = &off_10043B4B8;
  *(a1 + 8) = off_10043B4E8;
  *(a1 + 48) = off_10043B508;
  v6 = *(a2 + 8);
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  *(a1 + 16) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 16);
  *(a1 + 40) = *(a2 + 32);
  *(a1 + 24) = v7;
  return a1;
}

void sub_1000F616C(_Unwind_Exception *a1)
{
  std::exception::~exception(v2);
  sub_1000EEC20(v1);
  _Unwind_Resume(a1);
}

void sub_1000F62FC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_1000F66B8(exception, a1);
}

std::exception *sub_1000F6358(std::exception *a1)
{
  std::exception::~exception(a1 + 6);
  a1[1].__vftable = &off_100431E10;
  v2 = a1[2].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[2].__vftable = 0;
  }

  return a1;
}

void sub_1000F63DC(std::exception *a1)
{
  std::exception::~exception(a1 + 6);
  a1[1].__vftable = &off_100431E10;
  v2 = a1[2].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[2].__vftable = 0;
  }

  operator delete();
}

std::exception_vtbl *sub_1000F6480(std::exception *a1)
{
  std::exception::~exception(a1 + 5);
  a1->__vftable = &off_100431E10;
  result = a1[1].__vftable;
  if (result)
  {
    result = (*(result->~exception + 4))(result);
    if (result)
    {
      a1[1].__vftable = 0;
    }
  }

  return result;
}

void sub_1000F64FC(std::exception *a1)
{
  std::exception::~exception(a1 + 5);
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  operator delete();
}

uint64_t sub_1000F659C(std::exception *a1)
{
  std::exception::~exception(a1);
  *(v2 - 40) = &off_100431E10;
  result = *(v2 - 32);
  if (result)
  {
    result = (*(*result + 32))(result);
    if (result)
    {
      a1[-4].__vftable = 0;
    }
  }

  return result;
}

void sub_1000F6618(std::exception *a1)
{
  std::exception::~exception(a1);
  *(v2 - 40) = &off_100431E10;
  v3 = *(v2 - 32);
  if (v3 && (*(*v3 + 32))(v3))
  {
    a1[-4].__vftable = 0;
  }

  operator delete();
}

__n128 sub_1000F66B8(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  v3 = *(a2 + 16);
  *(a1 + 8) = &off_100431E10;
  *(a1 + 16) = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = result;
  *a1 = &off_10043B4B8;
  *(a1 + 8) = off_10043B4E8;
  *(a1 + 48) = off_10043B508;
  return result;
}

void sub_1000F6A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000F6A8C(va);
  _Unwind_Resume(a1);
}

void sub_1000F6A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1000F6A8C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000F6A8C(uint64_t result)
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

void sub_1000F6CA0(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_10038301C(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1000F6CE4(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void sub_1000F6D2C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4[0] = &off_100431E10;
  v4[1] = v3;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v4[0] = off_10043B658;
  sub_10000D87C(v4, a1 + 8);
  sub_1000F7064();
}

void sub_1000F6FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000F6FD0(va);
  _Unwind_Resume(a1);
}

void sub_1000F6FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000F6FD0(va);
  _Unwind_Resume(a1);
}

void sub_1000F6FD0(std::bad_exception *a1)
{
  a1[1].__vftable = &off_100431E10;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~bad_exception + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::bad_exception::~bad_exception(a1);
}

uint64_t sub_1000F71B4(uint64_t result)
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

void sub_1000F7260(std::bad_exception *this)
{
  this[1].__vftable = &off_100431E10;
  v2 = this[2].__vftable;
  if (v2 && (*(v2->~bad_exception + 4))(v2))
  {
    this[2].__vftable = 0;
  }

  std::bad_exception::~bad_exception(this);

  operator delete();
}

void sub_1000F7300(std::bad_exception *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::bad_exception::~bad_exception(a1 - 1);
}

void sub_1000F7388(std::bad_exception *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::bad_exception::~bad_exception(a1 - 1);

  operator delete();
}

uint64_t sub_1000F7424(uint64_t result)
{
  *result = off_10043B6B0;
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    v2 = result;
    (*(*(result + 32) + 16))(result + 32);
    result = v2;
    *(v1 - 8) = 0;
  }

  return result;
}

void sub_1000F74A4(uint64_t a1)
{
  *a1 = off_10043B6B0;
  if (*(a1 + 24) == 1)
  {
    v2 = a1 + 32;
    (*(*(a1 + 32) + 16))(a1 + 32);
    *(v2 - 8) = 0;
  }

  operator delete();
}

uint64_t sub_1000F7540(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    result = (*(*(result + 32) + 16))();
    *(v1 - 8) = 0;
  }

  return result;
}

uint64_t sub_1000F7598(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt13bad_exceptionEEEEEE")
  {
    return a1 + 24;
  }

  if (((v2 & "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt13bad_exceptionEEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt13bad_exceptionEEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt13bad_exceptionEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 24;
  }

  return 0;
}

uint64_t sub_1000F7614(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  v4 = *(a2 + 16);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
    v4 = *(a1 + 24);
  }

  v5 = *(a2 + 24);
  *(a1 + 48) = *(a2 + 40);
  *(a1 + 32) = v5;
  *a1 = &off_10043B710;
  *(a1 + 8) = off_10043B740;
  *(a1 + 16) = off_10043B768;
  v6 = *(a2 + 16);
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 24);
  *(a1 + 48) = *(a2 + 40);
  *(a1 + 32) = v7;
  return a1;
}

void sub_1000F77BC(_Unwind_Exception *a1)
{
  sub_1000EEC20(v2);
  std::bad_exception::~bad_exception(v1);
  _Unwind_Resume(a1);
}

void sub_1000F7978(__n128 *a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_1000F7D6C(exception, a1);
}

std::bad_exception *sub_1000F79D4(std::bad_exception *a1)
{
  a1[2].__vftable = &off_100431E10;
  v2 = a1[3].__vftable;
  if (v2 && (*(v2->~bad_exception + 4))(v2))
  {
    a1[3].__vftable = 0;
  }

  std::bad_exception::~bad_exception(a1 + 1);
  return a1;
}

void sub_1000F7A58(std::bad_exception *a1)
{
  a1[2].__vftable = &off_100431E10;
  v2 = a1[3].__vftable;
  if (v2 && (*(v2->~bad_exception + 4))(v2))
  {
    a1[3].__vftable = 0;
  }

  std::bad_exception::~bad_exception(a1 + 1);

  operator delete();
}

void sub_1000F7AFC(std::bad_exception *a1)
{
  a1[1].__vftable = &off_100431E10;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~bad_exception + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::bad_exception::~bad_exception(a1);
}

void sub_1000F7B90(std::bad_exception *a1)
{
  a1[1].__vftable = &off_100431E10;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~bad_exception + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::bad_exception::~bad_exception(a1);

  operator delete();
}

void sub_1000F7C40(std::bad_exception *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::bad_exception::~bad_exception(a1 - 1);
}

void sub_1000F7CC8(std::bad_exception *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_exception + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::bad_exception::~bad_exception(a1 - 1);

  operator delete();
}

__n128 sub_1000F7D6C(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = &off_100431F30;
  v3 = a2[1].n128_u64[1];
  a1[1].n128_u64[0] = &off_100431E10;
  a1[1].n128_u64[1] = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = a2[2];
  a1[3].n128_u32[0] = a2[3].n128_u32[0];
  a1[2] = result;
  a1->n128_u64[0] = &off_10043B710;
  a1->n128_u64[1] = off_10043B740;
  a1[1].n128_u64[0] = off_10043B768;
  return result;
}

void sub_1000F8128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000F6A8C(va);
  _Unwind_Resume(a1);
}

void sub_1000F813C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1000F6A8C(va1);
  _Unwind_Resume(a1);
}

void sub_1000F816C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4[0] = &off_100431E10;
  v4[1] = v3;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v4[0] = off_10043B808;
  sub_10000D87C(v4, a1 + 8);
  sub_1000F84A4();
}

void sub_1000F83E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000F8410(va);
  _Unwind_Resume(a1);
}

void sub_1000F83FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000F8410(va);
  _Unwind_Resume(a1);
}

void sub_1000F8410(std::bad_typeid *a1)
{
  a1[1].__vftable = &off_100431E10;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~bad_typeid + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::bad_typeid::~bad_typeid(a1);
}

uint64_t sub_1000F85F4(uint64_t result)
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

void sub_1000F86A0(std::bad_typeid *this)
{
  this[1].__vftable = &off_100431E10;
  v2 = this[2].__vftable;
  if (v2 && (*(v2->~bad_typeid + 4))(v2))
  {
    this[2].__vftable = 0;
  }

  std::bad_typeid::~bad_typeid(this);

  operator delete();
}

void sub_1000F8740(std::bad_typeid *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_typeid + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::bad_typeid::~bad_typeid(a1 - 1);
}

void sub_1000F87C8(std::bad_typeid *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_typeid + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::bad_typeid::~bad_typeid(a1 - 1);

  operator delete();
}

uint64_t sub_1000F8864(uint64_t result)
{
  *result = off_10043B860;
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    v2 = result;
    (*(*(result + 32) + 16))(result + 32);
    result = v2;
    *(v1 - 8) = 0;
  }

  return result;
}

void sub_1000F88E4(uint64_t a1)
{
  *a1 = off_10043B860;
  if (*(a1 + 24) == 1)
  {
    v2 = a1 + 32;
    (*(*(a1 + 32) + 16))(a1 + 32);
    *(v2 - 8) = 0;
  }

  operator delete();
}

uint64_t sub_1000F8980(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    result = (*(*(result + 32) + 16))();
    *(v1 - 8) = 0;
  }

  return result;
}

uint64_t sub_1000F89D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt10bad_typeidEEEEEE")
  {
    return a1 + 24;
  }

  if (((v2 & "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt10bad_typeidEEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt10bad_typeidEEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt10bad_typeidEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 24;
  }

  return 0;
}

uint64_t sub_1000F8A54(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  v4 = *(a2 + 16);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
    v4 = *(a1 + 24);
  }

  v5 = *(a2 + 24);
  *(a1 + 48) = *(a2 + 40);
  *(a1 + 32) = v5;
  *a1 = &off_10043B8C0;
  *(a1 + 8) = off_10043B8F0;
  *(a1 + 16) = off_10043B918;
  v6 = *(a2 + 16);
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 24);
  *(a1 + 48) = *(a2 + 40);
  *(a1 + 32) = v7;
  return a1;
}

void sub_1000F8BFC(_Unwind_Exception *a1)
{
  sub_1000EEC20(v2);
  std::bad_typeid::~bad_typeid(v1);
  _Unwind_Resume(a1);
}

void sub_1000F8DB8(__n128 *a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_1000F91AC(exception, a1);
}

std::bad_typeid *sub_1000F8E14(std::bad_typeid *a1)
{
  a1[2].__vftable = &off_100431E10;
  v2 = a1[3].__vftable;
  if (v2 && (*(v2->~bad_typeid + 4))(v2))
  {
    a1[3].__vftable = 0;
  }

  std::bad_typeid::~bad_typeid(a1 + 1);
  return a1;
}

void sub_1000F8E98(std::bad_typeid *a1)
{
  a1[2].__vftable = &off_100431E10;
  v2 = a1[3].__vftable;
  if (v2 && (*(v2->~bad_typeid + 4))(v2))
  {
    a1[3].__vftable = 0;
  }

  std::bad_typeid::~bad_typeid(a1 + 1);

  operator delete();
}

void sub_1000F8F3C(std::bad_typeid *a1)
{
  a1[1].__vftable = &off_100431E10;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~bad_typeid + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::bad_typeid::~bad_typeid(a1);
}

void sub_1000F8FD0(std::bad_typeid *a1)
{
  a1[1].__vftable = &off_100431E10;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~bad_typeid + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::bad_typeid::~bad_typeid(a1);

  operator delete();
}

void sub_1000F9080(std::bad_typeid *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_typeid + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::bad_typeid::~bad_typeid(a1 - 1);
}

void sub_1000F9108(std::bad_typeid *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_typeid + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::bad_typeid::~bad_typeid(a1 - 1);

  operator delete();
}

__n128 sub_1000F91AC(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = &off_100431F30;
  v3 = a2[1].n128_u64[1];
  a1[1].n128_u64[0] = &off_100431E10;
  a1[1].n128_u64[1] = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = a2[2];
  a1[3].n128_u32[0] = a2[3].n128_u32[0];
  a1[2] = result;
  a1->n128_u64[0] = &off_10043B8C0;
  a1->n128_u64[1] = off_10043B8F0;
  a1[1].n128_u64[0] = off_10043B918;
  return result;
}

void sub_1000F9568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000F6A8C(va);
  _Unwind_Resume(a1);
}

void sub_1000F957C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1000F6A8C(va1);
  _Unwind_Resume(a1);
}

void sub_1000F95AC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4[0] = &off_100431E10;
  v4[1] = v3;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v4[0] = off_10043B9B8;
  sub_10000D87C(v4, a1 + 8);
  sub_1000F98E4();
}

void sub_1000F9828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000F9850(va);
  _Unwind_Resume(a1);
}

void sub_1000F983C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000F9850(va);
  _Unwind_Resume(a1);
}

void sub_1000F9850(std::bad_cast *a1)
{
  a1[1].__vftable = &off_100431E10;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~bad_cast + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::bad_cast::~bad_cast(a1);
}

uint64_t sub_1000F9A34(uint64_t result)
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

void sub_1000F9AE0(std::bad_cast *this)
{
  this[1].__vftable = &off_100431E10;
  v2 = this[2].__vftable;
  if (v2 && (*(v2->~bad_cast + 4))(v2))
  {
    this[2].__vftable = 0;
  }

  std::bad_cast::~bad_cast(this);

  operator delete();
}

void sub_1000F9B80(std::bad_cast *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_cast + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::bad_cast::~bad_cast(a1 - 1);
}

void sub_1000F9C08(std::bad_cast *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_cast + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::bad_cast::~bad_cast(a1 - 1);

  operator delete();
}

uint64_t sub_1000F9CA4(uint64_t result)
{
  *result = off_10043BA10;
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    v2 = result;
    (*(*(result + 32) + 16))(result + 32);
    result = v2;
    *(v1 - 8) = 0;
  }

  return result;
}

void sub_1000F9D24(uint64_t a1)
{
  *a1 = off_10043BA10;
  if (*(a1 + 24) == 1)
  {
    v2 = a1 + 32;
    (*(*(a1 + 32) + 16))(a1 + 32);
    *(v2 - 8) = 0;
  }

  operator delete();
}

uint64_t sub_1000F9DC0(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    result = (*(*(result + 32) + 16))();
    *(v1 - 8) = 0;
  }

  return result;
}

uint64_t sub_1000F9E18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt8bad_castEEEEEE")
  {
    return a1 + 24;
  }

  if (((v2 & "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt8bad_castEEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt8bad_castEEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt8bad_castEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 24;
  }

  return 0;
}

uint64_t sub_1000F9E94(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  v4 = *(a2 + 16);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
    v4 = *(a1 + 24);
  }

  v5 = *(a2 + 24);
  *(a1 + 48) = *(a2 + 40);
  *(a1 + 32) = v5;
  *a1 = &off_10043BA70;
  *(a1 + 8) = off_10043BAA0;
  *(a1 + 16) = off_10043BAC8;
  v6 = *(a2 + 16);
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 24);
  *(a1 + 48) = *(a2 + 40);
  *(a1 + 32) = v7;
  return a1;
}

void sub_1000FA03C(_Unwind_Exception *a1)
{
  sub_1000EEC20(v2);
  std::bad_cast::~bad_cast(v1);
  _Unwind_Resume(a1);
}

void sub_1000FA1F8(__n128 *a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_1000FA5EC(exception, a1);
}

std::bad_cast *sub_1000FA254(std::bad_cast *a1)
{
  a1[2].__vftable = &off_100431E10;
  v2 = a1[3].__vftable;
  if (v2 && (*(v2->~bad_cast + 4))(v2))
  {
    a1[3].__vftable = 0;
  }

  std::bad_cast::~bad_cast(a1 + 1);
  return a1;
}

void sub_1000FA2D8(std::bad_cast *a1)
{
  a1[2].__vftable = &off_100431E10;
  v2 = a1[3].__vftable;
  if (v2 && (*(v2->~bad_cast + 4))(v2))
  {
    a1[3].__vftable = 0;
  }

  std::bad_cast::~bad_cast(a1 + 1);

  operator delete();
}

void sub_1000FA37C(std::bad_cast *a1)
{
  a1[1].__vftable = &off_100431E10;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~bad_cast + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::bad_cast::~bad_cast(a1);
}

void sub_1000FA410(std::bad_cast *a1)
{
  a1[1].__vftable = &off_100431E10;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~bad_cast + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::bad_cast::~bad_cast(a1);

  operator delete();
}

void sub_1000FA4C0(std::bad_cast *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_cast + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::bad_cast::~bad_cast(a1 - 1);
}

void sub_1000FA548(std::bad_cast *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_cast + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::bad_cast::~bad_cast(a1 - 1);

  operator delete();
}

__n128 sub_1000FA5EC(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = &off_100431F30;
  v3 = a2[1].n128_u64[1];
  a1[1].n128_u64[0] = &off_100431E10;
  a1[1].n128_u64[1] = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = a2[2];
  a1[3].n128_u32[0] = a2[3].n128_u32[0];
  a1[2] = result;
  a1->n128_u64[0] = &off_10043BA70;
  a1->n128_u64[1] = off_10043BAA0;
  a1[1].n128_u64[0] = off_10043BAC8;
  return result;
}

void sub_1000FA9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000F6A8C(va);
  _Unwind_Resume(a1);
}

void sub_1000FA9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1000F6A8C(va1);
  _Unwind_Resume(a1);
}

void sub_1000FA9EC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4[0] = &off_100431E10;
  v4[1] = v3;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v4[0] = off_10043BB68;
  sub_10000D87C(v4, a1 + 8);
  sub_1000FAD24();
}

void sub_1000FAC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000FAC90(va);
  _Unwind_Resume(a1);
}

void sub_1000FAC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000FAC90(va);
  _Unwind_Resume(a1);
}

void sub_1000FAC90(std::bad_alloc *a1)
{
  a1[1].__vftable = &off_100431E10;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~bad_alloc + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::bad_alloc::~bad_alloc(a1);
}

uint64_t sub_1000FAE74(uint64_t result)
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

void sub_1000FAF20(std::bad_alloc *this)
{
  this[1].__vftable = &off_100431E10;
  v2 = this[2].__vftable;
  if (v2 && (*(v2->~bad_alloc + 4))(v2))
  {
    this[2].__vftable = 0;
  }

  std::bad_alloc::~bad_alloc(this);

  operator delete();
}

void sub_1000FAFC0(std::bad_alloc *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_alloc + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::bad_alloc::~bad_alloc(a1 - 1);
}

void sub_1000FB048(std::bad_alloc *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_alloc + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::bad_alloc::~bad_alloc(a1 - 1);

  operator delete();
}

uint64_t sub_1000FB0E4(uint64_t result)
{
  *result = off_10043BBC0;
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    v2 = result;
    (*(*(result + 32) + 16))(result + 32);
    result = v2;
    *(v1 - 8) = 0;
  }

  return result;
}

void sub_1000FB164(uint64_t a1)
{
  *a1 = off_10043BBC0;
  if (*(a1 + 24) == 1)
  {
    v2 = a1 + 32;
    (*(*(a1 + 32) + 16))(a1 + 32);
    *(v2 - 8) = 0;
  }

  operator delete();
}

uint64_t sub_1000FB200(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    result = (*(*(result + 32) + 16))();
    *(v1 - 8) = 0;
  }

  return result;
}

uint64_t sub_1000FB258(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt9bad_allocEEEEEE")
  {
    return a1 + 24;
  }

  if (((v2 & "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt9bad_allocEEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt9bad_allocEEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt9bad_allocEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 24;
  }

  return 0;
}

uint64_t sub_1000FB2D4(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  v4 = *(a2 + 16);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
    v4 = *(a1 + 24);
  }

  v5 = *(a2 + 24);
  *(a1 + 48) = *(a2 + 40);
  *(a1 + 32) = v5;
  *a1 = &off_10043BC20;
  *(a1 + 8) = off_10043BC50;
  *(a1 + 16) = off_10043BC78;
  v6 = *(a2 + 16);
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 24);
  *(a1 + 48) = *(a2 + 40);
  *(a1 + 32) = v7;
  return a1;
}

void sub_1000FB47C(_Unwind_Exception *a1)
{
  sub_1000EEC20(v2);
  std::bad_alloc::~bad_alloc(v1);
  _Unwind_Resume(a1);
}

void sub_1000FB638(__n128 *a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  sub_1000FBA2C(exception, a1);
}

std::bad_alloc *sub_1000FB694(std::bad_alloc *a1)
{
  a1[2].__vftable = &off_100431E10;
  v2 = a1[3].__vftable;
  if (v2 && (*(v2->~bad_alloc + 4))(v2))
  {
    a1[3].__vftable = 0;
  }

  std::bad_alloc::~bad_alloc(a1 + 1);
  return a1;
}

void sub_1000FB718(std::bad_alloc *a1)
{
  a1[2].__vftable = &off_100431E10;
  v2 = a1[3].__vftable;
  if (v2 && (*(v2->~bad_alloc + 4))(v2))
  {
    a1[3].__vftable = 0;
  }

  std::bad_alloc::~bad_alloc(a1 + 1);

  operator delete();
}

void sub_1000FB7BC(std::bad_alloc *a1)
{
  a1[1].__vftable = &off_100431E10;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~bad_alloc + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::bad_alloc::~bad_alloc(a1);
}

void sub_1000FB850(std::bad_alloc *a1)
{
  a1[1].__vftable = &off_100431E10;
  v1 = a1[2].__vftable;
  if (v1)
  {
    v2 = a1;
    v3 = (*(v1->~bad_alloc + 4))(a1[2].__vftable);
    a1 = v2;
    if (v3)
    {
      v2[2].__vftable = 0;
    }
  }

  std::bad_alloc::~bad_alloc(a1);

  operator delete();
}

void sub_1000FB900(std::bad_alloc *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_alloc + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::bad_alloc::~bad_alloc(a1 - 1);
}

void sub_1000FB988(std::bad_alloc *a1)
{
  a1->__vftable = &off_100431E10;
  v2 = a1[1].__vftable;
  if (v2 && (*(v2->~bad_alloc + 4))(v2))
  {
    a1[1].__vftable = 0;
  }

  std::bad_alloc::~bad_alloc(a1 - 1);

  operator delete();
}

__n128 sub_1000FBA2C(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = &off_100431F30;
  v3 = a2[1].n128_u64[1];
  a1[1].n128_u64[0] = &off_100431E10;
  a1[1].n128_u64[1] = v3;
  if (v3)
  {
    v4 = a1;
    (*(*v3 + 24))(v3);
    a1 = v4;
  }

  result = a2[2];
  a1[3].n128_u32[0] = a2[3].n128_u32[0];
  a1[2] = result;
  a1->n128_u64[0] = &off_10043BC20;
  a1->n128_u64[1] = off_10043BC50;
  a1[1].n128_u64[0] = off_10043BC78;
  return result;
}

void sub_1000FBDE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000F6A8C(va);
  _Unwind_Resume(a1);
}

void sub_1000FBDFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1000F6A8C(va1);
  _Unwind_Resume(a1);
}

void sub_1000FBE2C(std::runtime_error *a1)
{
  std::runtime_error::runtime_error(&v4, a1);
  imp = a1[1].__imp_.__imp_;
  v5[0] = &off_100431E10;
  v5[1] = imp;
  if (imp)
  {
    (*(*imp + 24))(imp);
  }

  v6 = a1[2];
  v7 = a1[3].__vftable;
  v4.__vftable = &off_10043BCF0;
  v5[0] = off_10043BD18;
  sub_10000D87C(v5, &a1[1]);
  sub_1000FC154();
}

void sub_1000FC0C0(std::runtime_error *a1)
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

uint64_t sub_1000FC2A4(uint64_t result)
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

void sub_1000FC350(std::runtime_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(this);

  operator delete();
}

void sub_1000FC3F0(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_1000FC478(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete();
}

uint64_t sub_1000FC514(uint64_t result)
{
  *result = off_10043BD70;
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    v2 = result;
    (*(*(result + 32) + 16))(result + 32);
    result = v2;
    *(v1 - 8) = 0;
  }

  return result;
}

void sub_1000FC594(uint64_t a1)
{
  *a1 = off_10043BD70;
  if (*(a1 + 24) == 1)
  {
    v2 = a1 + 32;
    (*(*(a1 + 32) + 16))(a1 + 32);
    *(v2 - 8) = 0;
  }

  operator delete();
}

uint64_t sub_1000FC630(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    result = (*(*(result + 32) + 16))();
    *(v1 - 8) = 0;
  }

  return result;
}

uint64_t sub_1000FC688(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt13runtime_errorEEEEEE")
  {
    return a1 + 24;
  }

  if (((v2 & "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt13runtime_errorEEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt13runtime_errorEEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt13runtime_errorEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 24;
  }

  return 0;
}

uint64_t sub_1000FC704(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::runtime_error::runtime_error((a1 + 8), a2);
  v4 = *(a2 + 24);
  *(a1 + 24) = &off_100431E10;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
    v4 = *(a1 + 32);
  }

  v5 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v5;
  *a1 = &off_10043BDD0;
  *(a1 + 8) = off_10043BE00;
  *(a1 + 24) = off_10043BE28;
  v6 = *(a2 + 24);
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  *(a1 + 32) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v7;
  return a1;
}

void sub_1000FC898(_Unwind_Exception *a1)
{
  sub_1000EEC20(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

void sub_1000FCA44(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1000FCE38(exception, a1);
}

uint64_t sub_1000FCAA0(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void sub_1000FCB24(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::runtime_error::~runtime_error((a1 + 8));

  operator delete();
}

void sub_1000FCBC8(std::runtime_error *a1)
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

void sub_1000FCC5C(std::runtime_error *a1)
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

  operator delete();
}

void sub_1000FCD0C(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

void sub_1000FCD94(std::runtime_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete();
}

uint64_t sub_1000FCE38(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_100431E10;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_10043BDD0;
  *(a1 + 8) = off_10043BE00;
  *(a1 + 24) = off_10043BE28;
  return a1;
}

void sub_1000FCF58(uint64_t a1, const std::runtime_error *a2, uint64_t a3)
{
  std::runtime_error::runtime_error(a1, a2);
  v6 = *(a3 + 8);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a3 + 16);
  *(a1 + 48) = *(a3 + 32);
  *(a1 + 32) = v7;
  *a1 = &off_10043BCF0;
  *(a1 + 16) = off_10043BD18;
  what = a2->__vftable[-1].what;
  v9[0] = off_10043B5A0;
  v9[1] = what;
  sub_1000FD09C(a1, v9);
}

void sub_1000FD080(_Unwind_Exception *a1)
{
  sub_1000EEC20(v2);
  std::runtime_error::~runtime_error(v1);
  _Unwind_Resume(a1);
}

void sub_1000FD324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000F6A8C(va);
  _Unwind_Resume(a1);
}

void sub_1000FD338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1000F6A8C(va1);
  _Unwind_Resume(a1);
}

void sub_1000FD368(std::runtime_error *a1)
{
  std::runtime_error::runtime_error(&v4, a1);
  v5 = a1[1];
  imp = a1[2].__imp_.__imp_;
  v6[0] = &off_100431E10;
  v6[1] = imp;
  if (imp)
  {
    (*(*imp + 24))(imp);
  }

  v7 = a1[3];
  v8 = a1[4].__vftable;
  v4.__vftable = &off_10043BEA0;
  v6[0] = off_10043BEC8;
  sub_10000D87C(v6, &a1[2]);
  sub_1000FD6B4();
}

void sub_1000FD620(std::ios_base::failure *a1)
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

  std::ios_base::failure::~failure(a1);
}

uint64_t sub_1000FD804(uint64_t result)
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

void sub_1000FD8B0(std::ios_base::failure *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::ios_base::failure::~failure(this);

  operator delete();
}

void sub_1000FD950(std::ios_base::failure *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::ios_base::failure::~failure(a1 - 1);
}

void sub_1000FD9D8(std::ios_base::failure *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::ios_base::failure::~failure(a1 - 1);

  operator delete();
}

uint64_t sub_1000FDA74(uint64_t result)
{
  *result = off_10043BF20;
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    v2 = result;
    (*(*(result + 32) + 16))(result + 32);
    result = v2;
    *(v1 - 8) = 0;
  }

  return result;
}

void sub_1000FDAF4(uint64_t a1)
{
  *a1 = off_10043BF20;
  if (*(a1 + 24) == 1)
  {
    v2 = a1 + 32;
    (*(*(a1 + 32) + 16))(a1 + 32);
    *(v2 - 8) = 0;
  }

  operator delete();
}

uint64_t sub_1000FDB90(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    result = (*(*(result + 32) + 16))();
    *(v1 - 8) = 0;
  }

  return result;
}

uint64_t sub_1000FDBE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperINSt3__18ios_base7failureEEEEEEE")
  {
    return a1 + 24;
  }

  if (((v2 & "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperINSt3__18ios_base7failureEEEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperINSt3__18ios_base7failureEEEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperINSt3__18ios_base7failureEEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 24;
  }

  return 0;
}

uint64_t sub_1000FDC64(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 24) = *(a2 + 16);
  v4 = *(a2 + 40);
  *(a1 + 40) = &off_100431E10;
  *(a1 + 48) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
    v4 = *(a1 + 48);
  }

  v5 = *(a2 + 48);
  *(a1 + 72) = *(a2 + 64);
  *(a1 + 56) = v5;
  *a1 = &off_10043BF80;
  *(a1 + 8) = off_10043BFB0;
  *(a1 + 40) = off_10043BFD8;
  v6 = *(a2 + 40);
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  *(a1 + 48) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 48);
  *(a1 + 72) = *(a2 + 64);
  *(a1 + 56) = v7;
  return a1;
}

void sub_1000FDE38(_Unwind_Exception *a1)
{
  sub_1000EEC20(v2);
  std::ios_base::failure::~failure(v1);
  _Unwind_Resume(a1);
}

void sub_1000FE008(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x50uLL);
  sub_1000FE3FC(exception, a1);
}

uint64_t sub_1000FE064(uint64_t a1)
{
  *(a1 + 40) = &off_100431E10;
  v2 = *(a1 + 48);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 48) = 0;
  }

  std::ios_base::failure::~failure((a1 + 8));
  return a1;
}

void sub_1000FE0E8(uint64_t a1)
{
  *(a1 + 40) = &off_100431E10;
  v2 = *(a1 + 48);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 48) = 0;
  }

  std::ios_base::failure::~failure((a1 + 8));

  operator delete();
}

void sub_1000FE18C(std::ios_base::failure *a1)
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

  std::ios_base::failure::~failure(a1);
}

void sub_1000FE220(std::ios_base::failure *a1)
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

  std::ios_base::failure::~failure(a1);

  operator delete();
}

void sub_1000FE2D0(std::ios_base::failure *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::ios_base::failure::~failure(a1 - 1);
}

void sub_1000FE358(std::ios_base::failure *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::ios_base::failure::~failure(a1 - 1);

  operator delete();
}

uint64_t sub_1000FE3FC(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 48);
  *(a1 + 40) = &off_100431E10;
  *(a1 + 48) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v5;
  *a1 = &off_10043BF80;
  *(a1 + 8) = off_10043BFB0;
  *(a1 + 40) = off_10043BFD8;
  return a1;
}

void sub_1000FE55C(uint64_t a1, const std::runtime_error *a2, uint64_t a3)
{
  v6 = std::runtime_error::runtime_error(a1, a2);
  v6[1] = a2[1];
  v7 = *(a3 + 8);
  *(a1 + 32) = &off_100431E10;
  *(a1 + 40) = v7;
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  v8 = *(a3 + 16);
  *(a1 + 64) = *(a3 + 32);
  *(a1 + 48) = v8;
  *a1 = &off_10043BEA0;
  *(a1 + 32) = off_10043BEC8;
  what = a2->__vftable[-1].what;
  v10[0] = off_10043B5A0;
  v10[1] = what;
  sub_1000FE6E0(a1, v10);
}

void sub_1000FE6C4(_Unwind_Exception *a1)
{
  sub_1000EEC20(v2);
  std::ios_base::failure::~failure(v1);
  _Unwind_Resume(a1);
}

void sub_1000FE968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000F6A8C(va);
  _Unwind_Resume(a1);
}

void sub_1000FE97C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1000F6A8C(va1);
  _Unwind_Resume(a1);
}

void sub_1000FE9AC(std::runtime_error *a1)
{
  std::runtime_error::runtime_error(&v4, a1);
  imp = a1[1].__imp_.__imp_;
  v5[0] = &off_100431E10;
  v5[1] = imp;
  if (imp)
  {
    (*(*imp + 24))(imp);
  }

  v6 = a1[2];
  v7 = a1[3].__vftable;
  v4.__vftable = &off_10043C050;
  v5[0] = off_10043C078;
  sub_10000D87C(v5, &a1[1]);
  sub_1000FECF0();
}

void sub_1000FEC5C(std::underflow_error *a1)
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

  std::underflow_error::~underflow_error(a1);
}

uint64_t sub_1000FEE40(uint64_t result)
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

void sub_1000FEEEC(std::underflow_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::underflow_error::~underflow_error(this);

  operator delete();
}

void sub_1000FEF8C(std::underflow_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::underflow_error::~underflow_error(a1 - 1);
}

void sub_1000FF014(std::underflow_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::underflow_error::~underflow_error(a1 - 1);

  operator delete();
}

uint64_t sub_1000FF0B0(uint64_t result)
{
  *result = off_10043C0D0;
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    v2 = result;
    (*(*(result + 32) + 16))(result + 32);
    result = v2;
    *(v1 - 8) = 0;
  }

  return result;
}

void sub_1000FF130(uint64_t a1)
{
  *a1 = off_10043C0D0;
  if (*(a1 + 24) == 1)
  {
    v2 = a1 + 32;
    (*(*(a1 + 32) + 16))(a1 + 32);
    *(v2 - 8) = 0;
  }

  operator delete();
}

uint64_t sub_1000FF1CC(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    result = (*(*(result + 32) + 16))();
    *(v1 - 8) = 0;
  }

  return result;
}

uint64_t sub_1000FF224(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt15underflow_errorEEEEEE")
  {
    return a1 + 24;
  }

  if (((v2 & "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt15underflow_errorEEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt15underflow_errorEEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt15underflow_errorEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 24;
  }

  return 0;
}

uint64_t sub_1000FF2A0(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::runtime_error::runtime_error((a1 + 8), a2);
  v4 = *(a2 + 24);
  *(a1 + 24) = &off_100431E10;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
    v4 = *(a1 + 32);
  }

  v5 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v5;
  *a1 = &off_10043C130;
  *(a1 + 8) = off_10043C160;
  *(a1 + 24) = off_10043C188;
  v6 = *(a2 + 24);
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  *(a1 + 32) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v7;
  return a1;
}

void sub_1000FF450(_Unwind_Exception *a1)
{
  sub_1000EEC20(v2);
  std::underflow_error::~underflow_error(v1);
  _Unwind_Resume(a1);
}

void sub_1000FF618(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1000FFA0C(exception, a1);
}

uint64_t sub_1000FF674(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::underflow_error::~underflow_error((a1 + 8));
  return a1;
}

void sub_1000FF6F8(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::underflow_error::~underflow_error((a1 + 8));

  operator delete();
}

void sub_1000FF79C(std::underflow_error *a1)
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

  std::underflow_error::~underflow_error(a1);
}

void sub_1000FF830(std::underflow_error *a1)
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

  std::underflow_error::~underflow_error(a1);

  operator delete();
}

void sub_1000FF8E0(std::underflow_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::underflow_error::~underflow_error(a1 - 1);
}

void sub_1000FF968(std::underflow_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::underflow_error::~underflow_error(a1 - 1);

  operator delete();
}

uint64_t sub_1000FFA0C(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_100431E10;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_10043C130;
  *(a1 + 8) = off_10043C160;
  *(a1 + 24) = off_10043C188;
  return a1;
}

void sub_1000FFB48(uint64_t a1, const std::runtime_error *a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a3 + 16);
  *(a1 + 48) = *(a3 + 32);
  *(a1 + 32) = v7;
  *a1 = &off_10043C050;
  *(a1 + 16) = off_10043C078;
  what = a2->__vftable[-1].what;
  v9[0] = off_10043B5A0;
  v9[1] = what;
  sub_1000FFCA8(a1, v9);
}

void sub_1000FFC8C(_Unwind_Exception *a1)
{
  sub_1000EEC20(v2);
  std::underflow_error::~underflow_error(v1);
  _Unwind_Resume(a1);
}

void sub_1000FFF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000F6A8C(va);
  _Unwind_Resume(a1);
}

void sub_1000FFF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1000F6A8C(va1);
  _Unwind_Resume(a1);
}

void sub_1000FFF74(std::runtime_error *a1)
{
  std::runtime_error::runtime_error(&v4, a1);
  imp = a1[1].__imp_.__imp_;
  v5[0] = &off_100431E10;
  v5[1] = imp;
  if (imp)
  {
    (*(*imp + 24))(imp);
  }

  v6 = a1[2];
  v7 = a1[3].__vftable;
  v4.__vftable = &off_10043C200;
  v5[0] = off_10043C228;
  sub_10000D87C(v5, &a1[1]);
  sub_1001002B8();
}

void sub_100100224(std::overflow_error *a1)
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

  std::overflow_error::~overflow_error(a1);
}

uint64_t sub_100100408(uint64_t result)
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

void sub_1001004B4(std::overflow_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::overflow_error::~overflow_error(this);

  operator delete();
}

void sub_100100554(std::overflow_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::overflow_error::~overflow_error(a1 - 1);
}

void sub_1001005DC(std::overflow_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::overflow_error::~overflow_error(a1 - 1);

  operator delete();
}

uint64_t sub_100100678(uint64_t result)
{
  *result = off_10043C280;
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    v2 = result;
    (*(*(result + 32) + 16))(result + 32);
    result = v2;
    *(v1 - 8) = 0;
  }

  return result;
}

void sub_1001006F8(uint64_t a1)
{
  *a1 = off_10043C280;
  if (*(a1 + 24) == 1)
  {
    v2 = a1 + 32;
    (*(*(a1 + 32) + 16))(a1 + 32);
    *(v2 - 8) = 0;
  }

  operator delete();
}

uint64_t sub_100100794(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    result = (*(*(result + 32) + 16))();
    *(v1 - 8) = 0;
  }

  return result;
}

uint64_t sub_1001007EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt14overflow_errorEEEEEE")
  {
    return a1 + 24;
  }

  if (((v2 & "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt14overflow_errorEEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt14overflow_errorEEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt14overflow_errorEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 24;
  }

  return 0;
}

uint64_t sub_100100868(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::runtime_error::runtime_error((a1 + 8), a2);
  v4 = *(a2 + 24);
  *(a1 + 24) = &off_100431E10;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
    v4 = *(a1 + 32);
  }

  v5 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v5;
  *a1 = &off_10043C2E0;
  *(a1 + 8) = off_10043C310;
  *(a1 + 24) = off_10043C338;
  v6 = *(a2 + 24);
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  *(a1 + 32) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v7;
  return a1;
}

void sub_100100A18(_Unwind_Exception *a1)
{
  sub_1000EEC20(v2);
  std::overflow_error::~overflow_error(v1);
  _Unwind_Resume(a1);
}

void sub_100100BE0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100100FD4(exception, a1);
}

uint64_t sub_100100C3C(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::overflow_error::~overflow_error((a1 + 8));
  return a1;
}

void sub_100100CC0(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::overflow_error::~overflow_error((a1 + 8));

  operator delete();
}

void sub_100100D64(std::overflow_error *a1)
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

  std::overflow_error::~overflow_error(a1);
}

void sub_100100DF8(std::overflow_error *a1)
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

  std::overflow_error::~overflow_error(a1);

  operator delete();
}

void sub_100100EA8(std::overflow_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::overflow_error::~overflow_error(a1 - 1);
}

void sub_100100F30(std::overflow_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::overflow_error::~overflow_error(a1 - 1);

  operator delete();
}

uint64_t sub_100100FD4(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_100431E10;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_10043C2E0;
  *(a1 + 8) = off_10043C310;
  *(a1 + 24) = off_10043C338;
  return a1;
}

void sub_100101110(uint64_t a1, const std::runtime_error *a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a3 + 16);
  *(a1 + 48) = *(a3 + 32);
  *(a1 + 32) = v7;
  *a1 = &off_10043C200;
  *(a1 + 16) = off_10043C228;
  what = a2->__vftable[-1].what;
  v9[0] = off_10043B5A0;
  v9[1] = what;
  sub_100101270(a1, v9);
}

void sub_100101254(_Unwind_Exception *a1)
{
  sub_1000EEC20(v2);
  std::overflow_error::~overflow_error(v1);
  _Unwind_Resume(a1);
}

void sub_1001014F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000F6A8C(va);
  _Unwind_Resume(a1);
}

void sub_10010150C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1000F6A8C(va1);
  _Unwind_Resume(a1);
}

void sub_10010153C(std::runtime_error *a1)
{
  std::runtime_error::runtime_error(&v4, a1);
  imp = a1[1].__imp_.__imp_;
  v5[0] = &off_100431E10;
  v5[1] = imp;
  if (imp)
  {
    (*(*imp + 24))(imp);
  }

  v6 = a1[2];
  v7 = a1[3].__vftable;
  v4.__vftable = &off_10043C3B0;
  v5[0] = off_10043C3D8;
  sub_10000D87C(v5, &a1[1]);
  sub_100101880();
}

void sub_1001017EC(std::range_error *a1)
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

  std::range_error::~range_error(a1);
}

uint64_t sub_1001019D0(uint64_t result)
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

void sub_100101A7C(std::range_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::range_error::~range_error(this);

  operator delete();
}

void sub_100101B1C(std::range_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::range_error::~range_error(a1 - 1);
}

void sub_100101BA4(std::range_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::range_error::~range_error(a1 - 1);

  operator delete();
}

uint64_t sub_100101C40(uint64_t result)
{
  *result = off_10043C430;
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    v2 = result;
    (*(*(result + 32) + 16))(result + 32);
    result = v2;
    *(v1 - 8) = 0;
  }

  return result;
}

void sub_100101CC0(uint64_t a1)
{
  *a1 = off_10043C430;
  if (*(a1 + 24) == 1)
  {
    v2 = a1 + 32;
    (*(*(a1 + 32) + 16))(a1 + 32);
    *(v2 - 8) = 0;
  }

  operator delete();
}

uint64_t sub_100101D5C(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    result = (*(*(result + 32) + 16))();
    *(v1 - 8) = 0;
  }

  return result;
}

uint64_t sub_100101DB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt11range_errorEEEEEE")
  {
    return a1 + 24;
  }

  if (((v2 & "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt11range_errorEEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt11range_errorEEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt11range_errorEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 24;
  }

  return 0;
}

uint64_t sub_100101E30(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::runtime_error::runtime_error((a1 + 8), a2);
  v4 = *(a2 + 24);
  *(a1 + 24) = &off_100431E10;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
    v4 = *(a1 + 32);
  }

  v5 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v5;
  *a1 = &off_10043C490;
  *(a1 + 8) = off_10043C4C0;
  *(a1 + 24) = off_10043C4E8;
  v6 = *(a2 + 24);
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  *(a1 + 32) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v7;
  return a1;
}

void sub_100101FE0(_Unwind_Exception *a1)
{
  sub_1000EEC20(v2);
  std::range_error::~range_error(v1);
  _Unwind_Resume(a1);
}

void sub_1001021A8(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_10010259C(exception, a1);
}

uint64_t sub_100102204(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::range_error::~range_error((a1 + 8));
  return a1;
}

void sub_100102288(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::range_error::~range_error((a1 + 8));

  operator delete();
}

void sub_10010232C(std::range_error *a1)
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

  std::range_error::~range_error(a1);
}

void sub_1001023C0(std::range_error *a1)
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

  std::range_error::~range_error(a1);

  operator delete();
}

void sub_100102470(std::range_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::range_error::~range_error(a1 - 1);
}

void sub_1001024F8(std::range_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::range_error::~range_error(a1 - 1);

  operator delete();
}

uint64_t sub_10010259C(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_100431E10;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_10043C490;
  *(a1 + 8) = off_10043C4C0;
  *(a1 + 24) = off_10043C4E8;
  return a1;
}

void sub_1001026D8(uint64_t a1, const std::runtime_error *a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a3 + 16);
  *(a1 + 48) = *(a3 + 32);
  *(a1 + 32) = v7;
  *a1 = &off_10043C3B0;
  *(a1 + 16) = off_10043C3D8;
  what = a2->__vftable[-1].what;
  v9[0] = off_10043B5A0;
  v9[1] = what;
  sub_100102838(a1, v9);
}

void sub_10010281C(_Unwind_Exception *a1)
{
  sub_1000EEC20(v2);
  std::range_error::~range_error(v1);
  _Unwind_Resume(a1);
}

void sub_100102AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000F6A8C(va);
  _Unwind_Resume(a1);
}

void sub_100102AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1000F6A8C(va1);
  _Unwind_Resume(a1);
}

void sub_100102B04(std::logic_error *a1)
{
  std::logic_error::logic_error(&v4, a1);
  imp = a1[1].__imp_.__imp_;
  v5[0] = &off_100431E10;
  v5[1] = imp;
  if (imp)
  {
    (*(*imp + 24))(imp);
  }

  v6 = a1[2];
  v7 = a1[3].__vftable;
  v4.__vftable = &off_10043C560;
  v5[0] = off_10043C588;
  sub_10000D87C(v5, &a1[1]);
  sub_100102E2C();
}

void sub_100102D98(std::logic_error *a1)
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

  std::logic_error::~logic_error(a1);
}

uint64_t sub_100102F7C(uint64_t result)
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

void sub_100103028(std::logic_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::logic_error::~logic_error(this);

  operator delete();
}

void sub_1001030C8(std::logic_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::logic_error::~logic_error(a1 - 1);
}

void sub_100103150(std::logic_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::logic_error::~logic_error(a1 - 1);

  operator delete();
}

uint64_t sub_1001031EC(uint64_t result)
{
  *result = off_10043C5E0;
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    v2 = result;
    (*(*(result + 32) + 16))(result + 32);
    result = v2;
    *(v1 - 8) = 0;
  }

  return result;
}

void sub_10010326C(uint64_t a1)
{
  *a1 = off_10043C5E0;
  if (*(a1 + 24) == 1)
  {
    v2 = a1 + 32;
    (*(*(a1 + 32) + 16))(a1 + 32);
    *(v2 - 8) = 0;
  }

  operator delete();
}

uint64_t sub_100103308(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    result = (*(*(result + 32) + 16))();
    *(v1 - 8) = 0;
  }

  return result;
}

uint64_t sub_100103360(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt11logic_errorEEEEEE")
  {
    return a1 + 24;
  }

  if (((v2 & "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt11logic_errorEEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt11logic_errorEEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt11logic_errorEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 24;
  }

  return 0;
}

uint64_t sub_1001033DC(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::logic_error::logic_error((a1 + 8), a2);
  v4 = *(a2 + 24);
  *(a1 + 24) = &off_100431E10;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
    v4 = *(a1 + 32);
  }

  v5 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v5;
  *a1 = &off_10043C640;
  *(a1 + 8) = off_10043C670;
  *(a1 + 24) = off_10043C698;
  v6 = *(a2 + 24);
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  *(a1 + 32) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v7;
  return a1;
}

void sub_100103570(_Unwind_Exception *a1)
{
  sub_1000EEC20(v2);
  std::logic_error::~logic_error(v1);
  _Unwind_Resume(a1);
}

void sub_10010371C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100103B10(exception, a1);
}

uint64_t sub_100103778(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::logic_error::~logic_error((a1 + 8));
  return a1;
}

void sub_1001037FC(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::logic_error::~logic_error((a1 + 8));

  operator delete();
}

void sub_1001038A0(std::logic_error *a1)
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

  std::logic_error::~logic_error(a1);
}

void sub_100103934(std::logic_error *a1)
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

  std::logic_error::~logic_error(a1);

  operator delete();
}

void sub_1001039E4(std::logic_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::logic_error::~logic_error(a1 - 1);
}

void sub_100103A6C(std::logic_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::logic_error::~logic_error(a1 - 1);

  operator delete();
}

uint64_t sub_100103B10(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_100431E10;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_10043C640;
  *(a1 + 8) = off_10043C670;
  *(a1 + 24) = off_10043C698;
  return a1;
}

void sub_100103C30(uint64_t a1, const std::logic_error *a2, uint64_t a3)
{
  std::logic_error::logic_error(a1, a2);
  v6 = *(a3 + 8);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a3 + 16);
  *(a1 + 48) = *(a3 + 32);
  *(a1 + 32) = v7;
  *a1 = &off_10043C560;
  *(a1 + 16) = off_10043C588;
  what = a2->__vftable[-1].what;
  v9[0] = off_10043B5A0;
  v9[1] = what;
  sub_100103D74(a1, v9);
}

void sub_100103D58(_Unwind_Exception *a1)
{
  sub_1000EEC20(v2);
  std::logic_error::~logic_error(v1);
  _Unwind_Resume(a1);
}

void sub_100103FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000F6A8C(va);
  _Unwind_Resume(a1);
}

void sub_100104010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1000F6A8C(va1);
  _Unwind_Resume(a1);
}

void sub_100104040(std::logic_error *a1)
{
  std::logic_error::logic_error(&v4, a1);
  imp = a1[1].__imp_.__imp_;
  v5[0] = &off_100431E10;
  v5[1] = imp;
  if (imp)
  {
    (*(*imp + 24))(imp);
  }

  v6 = a1[2];
  v7 = a1[3].__vftable;
  v4.__vftable = &off_10043C710;
  v5[0] = off_10043C738;
  sub_10000D87C(v5, &a1[1]);
  sub_100104384();
}

void sub_1001042F0(std::out_of_range *a1)
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

  std::out_of_range::~out_of_range(a1);
}

uint64_t sub_1001044D4(uint64_t result)
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

void sub_100104580(std::out_of_range *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(this);

  operator delete();
}

void sub_100104620(std::out_of_range *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(a1 - 1);
}

void sub_1001046A8(std::out_of_range *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(a1 - 1);

  operator delete();
}

uint64_t sub_100104744(uint64_t result)
{
  *result = off_10043C790;
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    v2 = result;
    (*(*(result + 32) + 16))(result + 32);
    result = v2;
    *(v1 - 8) = 0;
  }

  return result;
}

void sub_1001047C4(uint64_t a1)
{
  *a1 = off_10043C790;
  if (*(a1 + 24) == 1)
  {
    v2 = a1 + 32;
    (*(*(a1 + 32) + 16))(a1 + 32);
    *(v2 - 8) = 0;
  }

  operator delete();
}

uint64_t sub_100104860(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    result = (*(*(result + 32) + 16))();
    *(v1 - 8) = 0;
  }

  return result;
}

uint64_t sub_1001048B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt12out_of_rangeEEEEEE")
  {
    return a1 + 24;
  }

  if (((v2 & "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt12out_of_rangeEEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt12out_of_rangeEEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt12out_of_rangeEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 24;
  }

  return 0;
}

uint64_t sub_100104934(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::logic_error::logic_error((a1 + 8), a2);
  v4 = *(a2 + 24);
  *(a1 + 24) = &off_100431E10;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
    v4 = *(a1 + 32);
  }

  v5 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v5;
  *a1 = &off_10043C7F0;
  *(a1 + 8) = off_10043C820;
  *(a1 + 24) = off_10043C848;
  v6 = *(a2 + 24);
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  *(a1 + 32) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v7;
  return a1;
}

void sub_100104AE4(_Unwind_Exception *a1)
{
  sub_1000EEC20(v2);
  std::out_of_range::~out_of_range(v1);
  _Unwind_Resume(a1);
}

void sub_100104CAC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1001050A0(exception, a1);
}

uint64_t sub_100104D08(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::out_of_range::~out_of_range((a1 + 8));
  return a1;
}

void sub_100104D8C(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::out_of_range::~out_of_range((a1 + 8));

  operator delete();
}

void sub_100104E30(std::out_of_range *a1)
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

  std::out_of_range::~out_of_range(a1);
}

void sub_100104EC4(std::out_of_range *a1)
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

  std::out_of_range::~out_of_range(a1);

  operator delete();
}

void sub_100104F74(std::out_of_range *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(a1 - 1);
}

void sub_100104FFC(std::out_of_range *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::out_of_range::~out_of_range(a1 - 1);

  operator delete();
}

uint64_t sub_1001050A0(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_100431E10;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_10043C7F0;
  *(a1 + 8) = off_10043C820;
  *(a1 + 24) = off_10043C848;
  return a1;
}

void sub_1001051DC(uint64_t a1, const std::logic_error *a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a3 + 16);
  *(a1 + 48) = *(a3 + 32);
  *(a1 + 32) = v7;
  *a1 = &off_10043C710;
  *(a1 + 16) = off_10043C738;
  what = a2->__vftable[-1].what;
  v9[0] = off_10043B5A0;
  v9[1] = what;
  sub_10010533C(a1, v9);
}

void sub_100105320(_Unwind_Exception *a1)
{
  sub_1000EEC20(v2);
  std::out_of_range::~out_of_range(v1);
  _Unwind_Resume(a1);
}

void sub_1001055C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000F6A8C(va);
  _Unwind_Resume(a1);
}

void sub_1001055D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1000F6A8C(va1);
  _Unwind_Resume(a1);
}

void sub_100105608(std::logic_error *a1)
{
  std::logic_error::logic_error(&v4, a1);
  imp = a1[1].__imp_.__imp_;
  v5[0] = &off_100431E10;
  v5[1] = imp;
  if (imp)
  {
    (*(*imp + 24))(imp);
  }

  v6 = a1[2];
  v7 = a1[3].__vftable;
  v4.__vftable = &off_10043C8C0;
  v5[0] = off_10043C8E8;
  sub_10000D87C(v5, &a1[1]);
  sub_10010594C();
}

void sub_1001058B8(std::length_error *a1)
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

  std::length_error::~length_error(a1);
}

uint64_t sub_100105A9C(uint64_t result)
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

void sub_100105B48(std::length_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::length_error::~length_error(this);

  operator delete();
}

void sub_100105BE8(std::length_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::length_error::~length_error(a1 - 1);
}

void sub_100105C70(std::length_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::length_error::~length_error(a1 - 1);

  operator delete();
}

uint64_t sub_100105D0C(uint64_t result)
{
  *result = off_10043C940;
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    v2 = result;
    (*(*(result + 32) + 16))(result + 32);
    result = v2;
    *(v1 - 8) = 0;
  }

  return result;
}

void sub_100105D8C(uint64_t a1)
{
  *a1 = off_10043C940;
  if (*(a1 + 24) == 1)
  {
    v2 = a1 + 32;
    (*(*(a1 + 32) + 16))(a1 + 32);
    *(v2 - 8) = 0;
  }

  operator delete();
}

uint64_t sub_100105E28(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    result = (*(*(result + 32) + 16))();
    *(v1 - 8) = 0;
  }

  return result;
}

uint64_t sub_100105E80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt12length_errorEEEEEE")
  {
    return a1 + 24;
  }

  if (((v2 & "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt12length_errorEEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt12length_errorEEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt12length_errorEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 24;
  }

  return 0;
}

uint64_t sub_100105EFC(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::logic_error::logic_error((a1 + 8), a2);
  v4 = *(a2 + 24);
  *(a1 + 24) = &off_100431E10;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
    v4 = *(a1 + 32);
  }

  v5 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v5;
  *a1 = &off_10043C9A0;
  *(a1 + 8) = off_10043C9D0;
  *(a1 + 24) = off_10043C9F8;
  v6 = *(a2 + 24);
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  *(a1 + 32) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v7;
  return a1;
}

void sub_1001060AC(_Unwind_Exception *a1)
{
  sub_1000EEC20(v2);
  std::length_error::~length_error(v1);
  _Unwind_Resume(a1);
}

void sub_100106274(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100106668(exception, a1);
}

uint64_t sub_1001062D0(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::length_error::~length_error((a1 + 8));
  return a1;
}

void sub_100106354(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::length_error::~length_error((a1 + 8));

  operator delete();
}

void sub_1001063F8(std::length_error *a1)
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

  std::length_error::~length_error(a1);
}

void sub_10010648C(std::length_error *a1)
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

  std::length_error::~length_error(a1);

  operator delete();
}

void sub_10010653C(std::length_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::length_error::~length_error(a1 - 1);
}

void sub_1001065C4(std::length_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::length_error::~length_error(a1 - 1);

  operator delete();
}

uint64_t sub_100106668(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_100431E10;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_10043C9A0;
  *(a1 + 8) = off_10043C9D0;
  *(a1 + 24) = off_10043C9F8;
  return a1;
}

void sub_1001067A4(uint64_t a1, const std::logic_error *a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a3 + 16);
  *(a1 + 48) = *(a3 + 32);
  *(a1 + 32) = v7;
  *a1 = &off_10043C8C0;
  *(a1 + 16) = off_10043C8E8;
  what = a2->__vftable[-1].what;
  v9[0] = off_10043B5A0;
  v9[1] = what;
  sub_100106904(a1, v9);
}

void sub_1001068E8(_Unwind_Exception *a1)
{
  sub_1000EEC20(v2);
  std::length_error::~length_error(v1);
  _Unwind_Resume(a1);
}

void sub_100106B8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000F6A8C(va);
  _Unwind_Resume(a1);
}

void sub_100106BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1000F6A8C(va1);
  _Unwind_Resume(a1);
}

void sub_100106BD0(std::logic_error *a1)
{
  std::logic_error::logic_error(&v4, a1);
  imp = a1[1].__imp_.__imp_;
  v5[0] = &off_100431E10;
  v5[1] = imp;
  if (imp)
  {
    (*(*imp + 24))(imp);
  }

  v6 = a1[2];
  v7 = a1[3].__vftable;
  v4.__vftable = &off_10043CA70;
  v5[0] = off_10043CA98;
  sub_10000D87C(v5, &a1[1]);
  sub_100106F14();
}

void sub_100106E80(std::invalid_argument *a1)
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

  std::invalid_argument::~invalid_argument(a1);
}

uint64_t sub_100107064(uint64_t result)
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

void sub_100107110(std::invalid_argument *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::invalid_argument::~invalid_argument(this);

  operator delete();
}

void sub_1001071B0(std::invalid_argument *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::invalid_argument::~invalid_argument(a1 - 1);
}

void sub_100107238(std::invalid_argument *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::invalid_argument::~invalid_argument(a1 - 1);

  operator delete();
}

uint64_t sub_1001072D4(uint64_t result)
{
  *result = off_10043CAF0;
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    v2 = result;
    (*(*(result + 32) + 16))(result + 32);
    result = v2;
    *(v1 - 8) = 0;
  }

  return result;
}

void sub_100107354(uint64_t a1)
{
  *a1 = off_10043CAF0;
  if (*(a1 + 24) == 1)
  {
    v2 = a1 + 32;
    (*(*(a1 + 32) + 16))(a1 + 32);
    *(v2 - 8) = 0;
  }

  operator delete();
}

uint64_t sub_1001073F0(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    result = (*(*(result + 32) + 16))();
    *(v1 - 8) = 0;
  }

  return result;
}

uint64_t sub_100107448(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt16invalid_argumentEEEEEE")
  {
    return a1 + 24;
  }

  if (((v2 & "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt16invalid_argumentEEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt16invalid_argumentEEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt16invalid_argumentEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 24;
  }

  return 0;
}

uint64_t sub_1001074C4(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::logic_error::logic_error((a1 + 8), a2);
  v4 = *(a2 + 24);
  *(a1 + 24) = &off_100431E10;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
    v4 = *(a1 + 32);
  }

  v5 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v5;
  *a1 = &off_10043CB50;
  *(a1 + 8) = off_10043CB80;
  *(a1 + 24) = off_10043CBA8;
  v6 = *(a2 + 24);
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  *(a1 + 32) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v7;
  return a1;
}

void sub_100107674(_Unwind_Exception *a1)
{
  sub_1000EEC20(v2);
  std::invalid_argument::~invalid_argument(v1);
  _Unwind_Resume(a1);
}

void sub_10010783C(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_100107C30(exception, a1);
}

uint64_t sub_100107898(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::invalid_argument::~invalid_argument((a1 + 8));
  return a1;
}

void sub_10010791C(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::invalid_argument::~invalid_argument((a1 + 8));

  operator delete();
}

void sub_1001079C0(std::invalid_argument *a1)
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

  std::invalid_argument::~invalid_argument(a1);
}

void sub_100107A54(std::invalid_argument *a1)
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

  std::invalid_argument::~invalid_argument(a1);

  operator delete();
}

void sub_100107B04(std::invalid_argument *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::invalid_argument::~invalid_argument(a1 - 1);
}

void sub_100107B8C(std::invalid_argument *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::invalid_argument::~invalid_argument(a1 - 1);

  operator delete();
}

uint64_t sub_100107C30(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_100431E10;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_10043CB50;
  *(a1 + 8) = off_10043CB80;
  *(a1 + 24) = off_10043CBA8;
  return a1;
}

void sub_100107D6C(uint64_t a1, const std::logic_error *a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a3 + 16);
  *(a1 + 48) = *(a3 + 32);
  *(a1 + 32) = v7;
  *a1 = &off_10043CA70;
  *(a1 + 16) = off_10043CA98;
  what = a2->__vftable[-1].what;
  v9[0] = off_10043B5A0;
  v9[1] = what;
  sub_100107ECC(a1, v9);
}

void sub_100107EB0(_Unwind_Exception *a1)
{
  sub_1000EEC20(v2);
  std::invalid_argument::~invalid_argument(v1);
  _Unwind_Resume(a1);
}

void sub_100108154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000F6A8C(va);
  _Unwind_Resume(a1);
}

void sub_100108168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1000F6A8C(va1);
  _Unwind_Resume(a1);
}

void sub_100108198(std::logic_error *a1)
{
  std::logic_error::logic_error(&v4, a1);
  imp = a1[1].__imp_.__imp_;
  v5[0] = &off_100431E10;
  v5[1] = imp;
  if (imp)
  {
    (*(*imp + 24))(imp);
  }

  v6 = a1[2];
  v7 = a1[3].__vftable;
  v4.__vftable = &off_10043CC20;
  v5[0] = off_10043CC48;
  sub_10000D87C(v5, &a1[1]);
  sub_1001084DC();
}

void sub_100108448(std::domain_error *a1)
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

  std::domain_error::~domain_error(a1);
}

uint64_t sub_10010862C(uint64_t result)
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

void sub_1001086D8(std::domain_error *this)
{
  this[1].__vftable = &off_100431E10;
  imp = this[1].__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    this[1].__imp_.__imp_ = 0;
  }

  std::domain_error::~domain_error(this);

  operator delete();
}

void sub_100108778(std::domain_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::domain_error::~domain_error(a1 - 1);
}

void sub_100108800(std::domain_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::domain_error::~domain_error(a1 - 1);

  operator delete();
}

uint64_t sub_10010889C(uint64_t result)
{
  *result = off_10043CCA0;
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    v2 = result;
    (*(*(result + 32) + 16))(result + 32);
    result = v2;
    *(v1 - 8) = 0;
  }

  return result;
}

void sub_10010891C(uint64_t a1)
{
  *a1 = off_10043CCA0;
  if (*(a1 + 24) == 1)
  {
    v2 = a1 + 32;
    (*(*(a1 + 32) + 16))(a1 + 32);
    *(v2 - 8) = 0;
  }

  operator delete();
}

uint64_t sub_1001089B8(uint64_t result)
{
  if (*(result + 24) == 1)
  {
    v1 = result + 32;
    result = (*(*(result + 32) + 16))();
    *(v1 - 8) = 0;
  }

  return result;
}

uint64_t sub_100108A10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt12domain_errorEEEEEE")
  {
    return a1 + 24;
  }

  if (((v2 & "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt12domain_errorEEEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt12domain_errorEEEEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N5boost6detail13sp_ms_deleterINS_10wrapexceptINS_16exception_detail39current_exception_std_exception_wrapperISt12domain_errorEEEEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 24;
  }

  return 0;
}

uint64_t sub_100108A8C(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::logic_error::logic_error((a1 + 8), a2);
  v4 = *(a2 + 24);
  *(a1 + 24) = &off_100431E10;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
    v4 = *(a1 + 32);
  }

  v5 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v5;
  *a1 = &off_10043CD00;
  *(a1 + 8) = off_10043CD30;
  *(a1 + 24) = off_10043CD58;
  v6 = *(a2 + 24);
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  *(a1 + 32) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a2 + 32);
  *(a1 + 56) = *(a2 + 48);
  *(a1 + 40) = v7;
  return a1;
}

void sub_100108C3C(_Unwind_Exception *a1)
{
  sub_1000EEC20(v2);
  std::domain_error::~domain_error(v1);
  _Unwind_Resume(a1);
}

void sub_100108E04(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1001091F8(exception, a1);
}

uint64_t sub_100108E60(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::domain_error::~domain_error((a1 + 8));
  return a1;
}

void sub_100108EE4(uint64_t a1)
{
  *(a1 + 24) = &off_100431E10;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::domain_error::~domain_error((a1 + 8));

  operator delete();
}

void sub_100108F88(std::domain_error *a1)
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

  std::domain_error::~domain_error(a1);
}

void sub_10010901C(std::domain_error *a1)
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

  std::domain_error::~domain_error(a1);

  operator delete();
}

void sub_1001090CC(std::domain_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::domain_error::~domain_error(a1 - 1);
}

void sub_100109154(std::domain_error *a1)
{
  a1->__vftable = &off_100431E10;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::domain_error::~domain_error(a1 - 1);

  operator delete();
}

uint64_t sub_1001091F8(uint64_t a1, uint64_t a2)
{
  *a1 = &off_100431F30;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_100431E10;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_10043CD00;
  *(a1 + 8) = off_10043CD30;
  *(a1 + 24) = off_10043CD58;
  return a1;
}

void sub_100109334(uint64_t a1, const std::logic_error *a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  *(a1 + 16) = &off_100431E10;
  *(a1 + 24) = v6;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(a3 + 16);
  *(a1 + 48) = *(a3 + 32);
  *(a1 + 32) = v7;
  *a1 = &off_10043CC20;
  *(a1 + 16) = off_10043CC48;
  what = a2->__vftable[-1].what;
  v9[0] = off_10043B5A0;
  v9[1] = what;
  sub_100109494(a1, v9);
}

void sub_100109478(_Unwind_Exception *a1)
{
  sub_1000EEC20(v2);
  std::domain_error::~domain_error(v1);
  _Unwind_Resume(a1);
}

void sub_10010971C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000F6A8C(va);
  _Unwind_Resume(a1);
}

void sub_100109730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1000F6A8C(va1);
  _Unwind_Resume(a1);
}

void sub_1001099FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10003B91C(va);
  _Unwind_Resume(a1);
}

void sub_100109A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_10003B91C(va1);
  _Unwind_Resume(a1);
}

void sub_100109CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000F16BC(va);
  _Unwind_Resume(a1);
}

void sub_100109CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_10003B870(va);
  sub_1000F16BC(va1);
  _Unwind_Resume(a1);
}

void sub_100109D40(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10043CDD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_100109DBC(uint64_t *a1, uint64_t *a2, uint64_t a3, int a4)
{
  v6 = *a2;
  *a1 = *a2;
  *(a1 + *(v6 - 24)) = a2[3];
  v7 = a2[1];
  *a1 = v7;
  *(a1 + *(v7 - 24)) = a2[2];
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 1);
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v9 = *a2;
  *a1 = *a2;
  *(a1 + *(v9 - 24)) = a2[3];
  std::filebuf::basic_filebuf();
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_10010A00C(_Unwind_Exception *a1)
{
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  _Unwind_Resume(a1);
}

void sub_10010A02C(void (__cdecl ***a1)(std::ofstream *__hidden this))
{
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();

  operator delete();
}

void sub_10010A0D0(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();

  operator delete();
}

void *sub_10010A188(void *a1)
{
  *a1 = off_10043CEA8;
  a1[52] = off_10043CED0;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void sub_10010A208(void *a1)
{
  *a1 = off_10043CEA8;
  a1[52] = off_10043CED0;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();

  operator delete();
}

uint64_t sub_10010A2A8(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10043CEA8;
  v1[52] = off_10043CED0;
  std::filebuf::~filebuf();
  std::ostream::~ostream();

  return std::ios::~ios();
}

void sub_10010A344(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = off_10043CEA8;
  v1[52] = off_10043CED0;
  std::filebuf::~filebuf();
  std::ostream::~ostream();
  std::ios::~ios();

  operator delete();
}

uint64_t *sub_10010A3F8(uint64_t *result)
{
  v1 = *result;
  if (*result && atomic_fetch_add(v1, 0xFFFFFFFF) == 1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = *(v1 + 16);
      v4 = *(v1 + 8);
      if (v3 != v2)
      {
        do
        {
          v6 = *(v3 - 8);
          v3 -= 8;
          v5 = v6;
          if (v6 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
          {
            sub_100014DC8((v5 + 48), (v5 + 56), v7);
            if (*(v5 + 31) < 0)
            {
              operator delete(*(v5 + 8));
            }

            operator delete();
          }
        }

        while (v3 != v2);
        v4 = *(v1 + 8);
      }

      *(v1 + 16) = v2;
      operator delete(v4);
    }

    operator delete();
  }

  return result;
}

void sub_10010A4F4()
{
  if ((byte_10045B0B8 & 1) == 0)
  {
    byte_10045B0B8 = 1;
    sub_10000CB40(qword_10045B0A8);

    __cxa_atexit(sub_10000CEB0, qword_10045B0A8, &_mh_execute_header);
  }
}

void sub_10010A564()
{
  if ((byte_10045B0D0 & 1) == 0)
  {
    byte_10045B0D0 = 1;
    sub_10000CF5C(qword_10045B0C0);

    __cxa_atexit(sub_10000CEB0, qword_10045B0C0, &_mh_execute_header);
  }
}

void sub_10010A5E0(int a1, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_10000D39C();
  }

  if (__len < 0x17)
  {
    v4 = __len;
    if (__len)
    {
      memset(&__b, 32, __len);
    }

    *(&__b + __len) = 0;
    sub_1000D83A8();
  }

  operator new();
}

void sub_10010A694(__int128 __p, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::exception_ptr a7, std::string *__pa, int __p_8, __int16 __p_12, char __p_14, char __p_15, uint64_t a13, uint64_t a14, std::exception_ptr a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if ((v28 & 0x80u) == 0)
  {
    v21 = v20;
  }

  else
  {
    v21 = v26;
  }

  if ((v28 & 0x80u) == 0)
  {
    v22 = v28;
  }

  else
  {
    v22 = v27;
  }

  v23 = std::string::append(&v30, v21, v22);
  v24 = *&v23->__r_.__value_.__l.__data_;
  *(v19 + 16) = *(&v23->__r_.__value_.__l + 2);
  *v19 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (v28 < 0)
  {
    operator delete(v26);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  std::current_exception();
  v25.__ptr_ = &v29;
  std::rethrow_exception(v25);
  __break(1u);
}

void sub_10010A88C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    sub_10010A5E0(&a9, v9 + 1);
  }

  _Unwind_Resume(a1);
}

void sub_10010A8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26)
{
  __cxa_end_catch();
  if (*(v26 + 23) < 0)
  {
    operator delete(*v26);
  }

  _Unwind_Resume(a1);
}

void *sub_10010A9B0(void *a1, uint64_t a2)
{
  sub_1000E0D20(a2);
  if ((v8 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v4 = v8;
  }

  else
  {
    v4 = __p[1];
  }

  result = sub_10003C2E4(a1, v3, v4);
  if (v8 < 0)
  {
    v6 = result;
    operator delete(__p[0]);
    return v6;
  }

  return result;
}

void sub_10010AA34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10010AA50()
{
  v0 = std::set_terminate(sub_10010AA88);
  v1 = 0;
  atomic_compare_exchange_strong(qword_10045CD70, &v1, v0);
}

void sub_10010AA88()
{
  v0 = atomic_load(qword_10045CD70);
  if (v0)
  {
    v1 = v0;
  }

  else
  {
    v1 = sub_10010C414;
  }

  v8 = v1;
  std::current_exception();
  if (!v7.__ptr_)
  {
    if (qword_10045B050 == -1)
    {
      v2 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_8;
      }
    }

    else
    {
      dispatch_once(&qword_10045B050, &stru_10043CF80);
      v2 = qword_10045B058;
      if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
      {
LABEL_8:
        v1();
        if (qword_10045B050 == -1)
        {
          v3 = qword_10045B058;
          if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_11;
          }
        }

        else
        {
          dispatch_once(&qword_10045B050, &stru_10043CF80);
          v3 = qword_10045B058;
          if (!os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
          {
LABEL_11:
            abort();
          }
        }

        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Unexpected return from no-return handler", v5, 2u);
        goto LABEL_11;
      }
    }

    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "std::terminate() called but there's no exception", v5, 2u);
    goto LABEL_8;
  }

  std::exception_ptr::exception_ptr(&v6, &v7);
  v4.__ptr_ = &v6;
  std::rethrow_exception(v4);
  __break(1u);
}

void sub_10010AE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::exception_ptr a15)
{
  __cxa_end_catch();
  std::exception_ptr::~exception_ptr(&a15);
  _Unwind_Resume(a1);
}

void sub_10010AE9C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x10010AE80);
}

void sub_10010AEC4()
{
  sub_10003BFA8(v4);
  sub_10003C2E4(v4, "Generic exception that's not std::exception", 43);
  std::stringbuf::str();
  if (qword_10045B050 != -1)
  {
    dispatch_once(&qword_10045B050, &stru_10043CF80);
  }

  v0 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
  {
    v1 = &v3;
    if ((v3.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v1 = v3.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v6 = v1;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &v3);
}

void sub_10010AFE8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  v7 = __cxa_begin_catch(a1);
  (*v2)(v7);
  __cxa_end_catch();
  if (*(v4 + 80) == -1)
  {
    v8 = *(v5 + 88);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }
  }

  else
  {
    dispatch_once(&qword_10045B050, &stru_10043CF80);
    v8 = *(v5 + 88);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }
  }

  std::stringbuf::str();
  if (*(v6 - 105) >= 0)
  {
    v9 = v6 - 128;
  }

  else
  {
    v9 = *(v6 - 128);
  }

  *(v6 - 96) = 136315394;
  *(v3 + 36) = "St27unsupported_operation_error" & 0x7FFFFFFFFFFFFFFFLL;
  *(v6 - 84) = 2080;
  *(v3 + 46) = v9;
  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Unexpected return from terminator handling %s: %s", (v6 - 96), 0x16u);
  if (*(v6 - 105) < 0)
  {
    operator delete(*(v6 - 128));
  }

LABEL_10:
  abort();
}

void sub_10010B0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  std::locale::~locale(&a17);
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_10010B220(uint64_t a1, uint64_t a2, const char **a3)
{
  sub_10003BFA8(v10);
  sub_10003C2E4(v10, "Generic exception ", 18);
  v4 = *a3;
  v5 = strlen(v4);
  sub_10003C2E4(v10, v4, v5);
  std::stringbuf::str();
  if (qword_10045B050 != -1)
  {
    dispatch_once(&qword_10045B050, &stru_10043CF80);
  }

  v6 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
  {
    v7 = &v9;
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v9.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &v9);
}

void sub_10010B36C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  v35 = __cxa_begin_catch(a1);
  (*v30)(v35);
  __cxa_end_catch();
  if (*(v32 + 80) == -1)
  {
    v36 = *(v33 + 88);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }
  }

  else
  {
    dispatch_once(&qword_10045B050, &stru_10043CF80);
    v36 = *(v33 + 88);
    if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }
  }

  v37 = *(v29 + 8);
  std::stringbuf::str();
  if (*(v34 - 121) >= 0)
  {
    v38 = v34 - 144;
  }

  else
  {
    v38 = *(v34 - 144);
  }

  *(v34 - 112) = 136315394;
  *(v31 + 36) = v37 & 0x7FFFFFFFFFFFFFFFLL;
  *(v34 - 100) = 2080;
  *(v31 + 46) = v38;
  _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Unexpected return from terminator handling %s: %s", (v34 - 112), 0x16u);
  if (*(v34 - 121) < 0)
  {
    operator delete(*(v34 - 144));
  }

LABEL_9:
  abort();
}

void sub_10010B59C(uint64_t a1, uint64_t a2, const char **a3)
{
  sub_10003BFA8(v10);
  sub_10003C2E4(v10, "Unhandled thrift exception ", 27);
  v4 = *a3;
  v5 = strlen(v4);
  sub_10003C2E4(v10, v4, v5);
  std::stringbuf::str();
  if (qword_10045B050 != -1)
  {
    dispatch_once(&qword_10045B050, &stru_10043CF80);
  }

  v6 = qword_10045B058;
  if (os_log_type_enabled(qword_10045B058, OS_LOG_TYPE_ERROR))
  {
    v7 = &v9;
    if ((v9.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v9.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &v9);
}