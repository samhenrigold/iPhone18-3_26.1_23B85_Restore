void sub_2711B716C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_28087AD60);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

double sub_2711B7210()
{
  *(&__p.__r_.__value_.__s + 23) = 8;
  strcpy(&__p, "VZServer");
  sub_27184BC8C(&v9, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 38;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087AF88 = v7;
  unk_28087AF98 = v8;
  return result;
}

void sub_2711B7430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2711B7470(uint64_t result)
{
  if (*(result + 120) == 1)
  {
    v1 = result;
    sub_271167834(result, *(result + 8));
    return v1;
  }

  if (*(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v2 = result;
        operator delete(*(result + 80));
        result = v2;
      }

      if (*(result + 71) < 0)
      {
        v3 = result;
        operator delete(*(result + 48));
        result = v3;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v1 = result;
      operator delete(*(result + 16));
      return v1;
    }
  }

  return result;
}

double sub_2711B7524()
{
  *(&__p.__r_.__value_.__s + 23) = 8;
  strcpy(&__p, "VZServer");
  sub_27184BC8C(&v5, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v0 = SHIBYTE(v6);
    if ((SHIBYTE(v6) & 0x8000000000000000) == 0)
    {
LABEL_3:
      v1 = &v5;
      if (v0 == 22)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v0 = SHIBYTE(v6);
    if ((SHIBYTE(v6) & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v0 = *(&v5 + 1);
  v2 = (v6 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v2 == *(&v5 + 1))
  {
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_8:
    operator new();
  }

  v1 = v5;
LABEL_10:
  *(v1 + v0) = 42;
  v3 = v0 + 1;
  if (SHIBYTE(v6) < 0)
  {
    *(&v5 + 1) = v3;
  }

  else
  {
    HIBYTE(v6) = v3 & 0x7F;
  }

  *(v1 + v3) = 0;
  result = *&v5;
  xmmword_28087AFB8 = v5;
  unk_28087AFC8 = v6;
  return result;
}

void sub_2711B76F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2711B7724()
{
  *(&__p.__r_.__value_.__s + 23) = 13;
  strcpy(&__p, "VZSyncControl");
  sub_27184BC8C(&v9, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 42;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087AFD0 = v7;
  unk_28087AFE0 = v8;
  return result;
}

void sub_2711B7948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_2711B7988()
{
  *(&__p.__r_.__value_.__s + 23) = 13;
  strcpy(&__p, "VZSyncControl");
  sub_27184BC8C(&v5, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    v0 = SHIBYTE(v6);
    if ((SHIBYTE(v6) & 0x8000000000000000) == 0)
    {
LABEL_3:
      v1 = &v5;
      if (v0 == 22)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v0 = SHIBYTE(v6);
    if ((SHIBYTE(v6) & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v0 = *(&v5 + 1);
  v2 = (v6 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v2 == *(&v5 + 1))
  {
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_8:
    operator new();
  }

  v1 = v5;
LABEL_10:
  *(v1 + v0) = 42;
  v3 = v0 + 1;
  if (SHIBYTE(v6) < 0)
  {
    *(&v5 + 1) = v3;
  }

  else
  {
    HIBYTE(v6) = v3 & 0x7F;
  }

  *(v1 + v3) = 0;
  result = *&v5;
  xmmword_28087AFE8 = v5;
  unk_28087AFF8 = v6;
  return result;
}

void sub_2711B7B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711B7D5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2711B7DB8(uint64_t a1, void **a2)
{
  v2 = *a1;
  if (*(*a1 + 16) != (*a2)[2])
  {
    return 0;
  }

  v5 = *v2;
  v3 = v2 + 1;
  v4 = v5;
  if (v5 != v3)
  {
    v6 = **a2;
    while (1)
    {
      v7 = *(v4 + 55);
      if (v7 >= 0)
      {
        v8 = *(v4 + 55);
      }

      else
      {
        v8 = v4[5];
      }

      v9 = *(v6 + 55);
      v10 = v9;
      if ((v9 & 0x80u) != 0)
      {
        v9 = v6[5];
      }

      if (v8 != v9)
      {
        break;
      }

      v11 = v7 >= 0 ? v4 + 4 : v4[4];
      v12 = v10 >= 0 ? v6 + 4 : v6[4];
      v13 = !memcmp(v11, v12, v8) && *(v4 + 56) == *(v6 + 56);
      if (!v13)
      {
        break;
      }

      v14 = v4[1];
      v15 = v4;
      if (v14)
      {
        do
        {
          v4 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v4 = v15[2];
          v13 = *v4 == v15;
          v15 = v4;
        }

        while (!v13);
      }

      v16 = v6[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v6[2];
          v13 = *v17 == v6;
          v6 = v17;
        }

        while (!v13);
      }

      v6 = v17;
      if (v4 == v3)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t VZTimestampGetTypeID()
{
  if (atomic_load_explicit(&qword_28087B008, memory_order_acquire))
  {
    return qword_28087B000;
  }

  if (__cxa_guard_acquire(&qword_28087B008))
  {
    qword_28087B000 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087B008);
  }

  return qword_28087B000;
}

_BYTE *VZTimestampCreateNow(uint64_t a1)
{
  v1 = sub_271374A14(a1);
  v3 = v2;
  result = operator new(0x20uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    result[24] = v3;
    *(result + 7) = 1;
    *result = &unk_288119A78;
    *(result + 1) = &unk_288119AC8;
    *(result + 2) = v1;
  }

  else
  {
    if ((atomic_load_explicit(&qword_280877A10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877A10))
    {
      sub_2718519B4(qword_2808779F8, "VZTimestamp]", 0xBuLL);
      __cxa_guard_release(&qword_280877A10);
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    LOBYTE(v9) = 0;
    v19 = 0;
    sub_27112E0C4(qword_2808779F8, &v20, &v9, 0);
    if (v19 == 1 && v18 == 1)
    {
      if (v17 == 1)
      {
        if (v16 < 0)
        {
          operator delete(__p);
        }

        if (v14 < 0)
        {
          operator delete(v13);
        }
      }

      if (v12 == 1 && v11 < 0)
      {
        operator delete(v10);
      }
    }

    v5 = v20;
    if (v20)
    {
      v6 = v21;
      v7 = v20;
      if (v21 != v20)
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
        v7 = v20;
      }

      v21 = v5;
      operator delete(v7);
    }

    return 0;
  }

  return result;
}

_BYTE *VZTimestampCreateMachContinuousNanoseconds()
{
  v24 = *MEMORY[0x277D85DE8];
  sub_271374A0C();
  v1 = v0;
  v3 = v2;
  result = operator new(0x20uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    result[24] = v3;
    *(result + 7) = 1;
    *result = &unk_288119A78;
    *(result + 1) = &unk_288119AC8;
    *(result + 2) = v1;
  }

  else
  {
    if ((atomic_load_explicit(&qword_280877A10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877A10))
    {
      sub_2718519B4(qword_2808779F8, "VZTimestamp]", 0xBuLL);
      __cxa_guard_release(&qword_280877A10);
    }

    if ((atomic_load_explicit(&qword_28087B010, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B010))
    {
      sub_2711B9074();
      __cxa_guard_release(&qword_28087B010);
    }

    if (byte_28087B047 < 0)
    {
      sub_271127178(&v22, xmmword_28087B030, *(&xmmword_28087B030 + 1));
    }

    else
    {
      v22 = xmmword_28087B030;
      v23 = unk_28087B040;
    }

    sub_2711309E8(&v20, &v22, 1uLL);
    LOBYTE(v9) = 0;
    v19 = 0;
    sub_27112E0C4(qword_2808779F8, &v20, &v9, 0);
    if (v19 == 1 && v18 == 1)
    {
      if (v17 == 1)
      {
        if (v16 < 0)
        {
          operator delete(__p);
        }

        if (v14 < 0)
        {
          operator delete(v13);
        }
      }

      if (v12 == 1 && v11 < 0)
      {
        operator delete(v10);
      }
    }

    v5 = v20;
    if (v20)
    {
      v6 = v21;
      v7 = v20;
      if (v21 != v20)
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
        v7 = v20;
      }

      v21 = v5;
      operator delete(v7);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22);
    }

    return 0;
  }

  return result;
}

void sub_2711B8400(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087B010);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2711B842C(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2711B8438);
  }

  sub_271120E50(a1);
}

_BYTE *VZTimestampCreateFromMachContinuousTime(unint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = sub_271374A58(a1);
  v3 = v2;
  result = operator new(0x20uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    result[24] = v3;
    *(result + 7) = 1;
    *result = &unk_288119A78;
    *(result + 1) = &unk_288119AC8;
    *(result + 2) = v1;
  }

  else
  {
    if ((atomic_load_explicit(&qword_280877A10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877A10))
    {
      sub_2718519B4(qword_2808779F8, "VZTimestamp]", 0xBuLL);
      __cxa_guard_release(&qword_280877A10);
    }

    if ((atomic_load_explicit(&qword_28087B018, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B018))
    {
      *&xmmword_28087B048 = 0x263436746E6975;
      byte_28087B05F = 7;
      __cxa_guard_release(&qword_28087B018);
    }

    if (byte_28087B05F < 0)
    {
      sub_271127178(&v22, xmmword_28087B048, *(&xmmword_28087B048 + 1));
    }

    else
    {
      v22 = xmmword_28087B048;
      v23 = unk_28087B058;
    }

    sub_2711309E8(&v20, &v22, 1uLL);
    LOBYTE(v9) = 0;
    v19 = 0;
    sub_27112E0C4(qword_2808779F8, &v20, &v9, 0);
    if (v19 == 1 && v18 == 1)
    {
      if (v17 == 1)
      {
        if (v16 < 0)
        {
          operator delete(__p);
        }

        if (v14 < 0)
        {
          operator delete(v13);
        }
      }

      if (v12 == 1 && v11 < 0)
      {
        operator delete(v10);
      }
    }

    v5 = v20;
    if (v20)
    {
      v6 = v21;
      v7 = v20;
      if (v21 != v20)
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
        v7 = v20;
      }

      v21 = v5;
      operator delete(v7);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22);
    }

    return 0;
  }

  return result;
}

void sub_2711B86E8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_280877A10);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2711B8700(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2711B870CLL);
  }

  sub_271120E50(a1);
}

uint64_t VZTimestampGetNanosecondsSinceEpoch(uint64_t a1)
{
  if (sub_2711B8774("VZTimestampGetNanosecondsSinceEpoch", a1))
  {
    return 0;
  }

  else
  {
    return *(a1 + 16);
  }
}

BOOL sub_2711B8774(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087B028, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B028))
    {
      sub_2711B9790();
      __cxa_guard_release(&qword_28087B028);
    }

    if (byte_28087B08F < 0)
    {
      sub_271127178(v5, xmmword_28087B078, *(&xmmword_28087B078 + 1));
    }

    else
    {
      *v5 = xmmword_28087B078;
      v6 = unk_28087B088;
    }

    v7 = 1;
    sub_27112D7CC(a1, v5, &v8);
    v19 = v8;
    LOBYTE(v20) = 0;
    v29 = 0;
    if (v18 == 1)
    {
      v22 = 0;
      if (v11 == 1)
      {
        v20 = v9;
        v21 = v10;
        v10 = 0;
        v9 = 0uLL;
        v22 = 1;
      }

      LOBYTE(v23) = 0;
      v28 = 0;
      if (v17 == 1)
      {
        v24 = v13;
        v23 = *v12;
        v12[0] = 0;
        v12[1] = 0;
        v25 = v14;
        *__p = *v15;
        v27 = v16;
        v13 = 0;
        v15[0] = 0;
        v15[1] = 0;
        v16 = 0;
        v28 = 1;
      }

      v29 = 1;
    }

    v30 = 0;
    sub_27112B960(&v19, 0);
    if ((v30 & 1) == 0 && v29 == 1)
    {
      if (v28 == 1)
      {
        if (SHIBYTE(v27) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v24) < 0)
        {
          operator delete(v23);
        }
      }

      if (v22 == 1 && SHIBYTE(v21) < 0)
      {
        operator delete(v20);
      }
    }

    if (v18 == 1)
    {
      if (v17 == 1)
      {
        if (SHIBYTE(v16) < 0)
        {
          operator delete(v15[0]);
        }

        if (SHIBYTE(v13) < 0)
        {
          operator delete(v12[0]);
        }
      }

      if (v11 == 1 && SHIBYTE(v10) < 0)
      {
        operator delete(v9);
      }
    }

    if (v7 == 1 && SHIBYTE(v6) < 0)
    {
      operator delete(v5[0]);
    }
  }

  return a2 == 0;
}

void sub_2711B89D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t VZTimestampGetClockType(uint64_t a1)
{
  if (sub_2711B8774("VZTimestampGetClockType", a1))
  {
    return 0;
  }

  else
  {
    return *(a1 + 24);
  }
}

uint64_t sub_2711B8A70(uint64_t result)
{
  if (atomic_fetch_add((result + 28), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_2711B8AAC()
{
  if (atomic_load_explicit(&qword_28087B008, memory_order_acquire))
  {
    return qword_28087B000;
  }

  if (__cxa_guard_acquire(&qword_28087B008))
  {
    qword_28087B000 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087B008);
  }

  return qword_28087B000;
}

void *sub_2711B8B10(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C798, 0);
  if (result)
  {
    return (*(a1 + 16) == result[2] && *(a1 + 24) == *(result + 24));
  }

  return result;
}

void sub_2711B8BA0(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280877A10, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877A10))
    {
      sub_2718519B4(qword_2808779F8, "VZTimestamp]", 0xBuLL);
      __cxa_guard_release(&qword_280877A10);
    }
  }

  v2 = a1;
  operator new();
}

uint64_t sub_2711B8EE4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  __cxa_guard_abort(&qword_280877A10);
  __cxa_begin_catch(a1);
  sub_2711B8FE4();
  sub_27112B400(v34, "failed to create description");
  sub_27112DB38(qword_2808779F8, v34, 0);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  __cxa_end_catch();
  return 0;
}

void sub_2711B8FE4()
{
  if ((atomic_load_explicit(&qword_280877A10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877A10))
  {
    sub_2718519B4(qword_2808779F8, "VZTimestamp]", 0xBuLL);

    __cxa_guard_release(&qword_280877A10);
  }
}

void sub_2711B9074()
{
  v19 = *MEMORY[0x277D85DE8];
  *(&__s.__r_.__value_.__s + 23) = 21;
  strcpy(&__s, "std::chrono::duration");
  sub_27184BC8C(v8, &__s, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  v15 = 5;
  strcpy(v14, "int64");
  *(&__s.__r_.__value_.__s + 23) = 10;
  strcpy(&__s, "std::ratio");
  sub_27184BC8C(v11, &__s, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  sub_271851C68("1L]", 2, &__s);
  sub_271851C68("1000000000L]", 11, &v18);
  sub_2711309E8(__p, &__s, 2uLL);
  sub_271851AD8(v11, __p, &v16);
  v0 = __p[0];
  if (__p[0])
  {
    v1 = __p[1];
    v2 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v3 = *(v1 - 1);
        v1 -= 3;
        if (v3 < 0)
        {
          operator delete(*v1);
        }
      }

      while (v1 != v0);
      v2 = __p[0];
    }

    __p[1] = v0;
    operator delete(v2);
  }

  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    operator delete(__s.__r_.__value_.__l.__data_);
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

  operator delete(v18.__r_.__value_.__l.__data_);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_30:
  operator delete(v11[0]);
LABEL_16:
  sub_2711309E8(v10, v14, 2uLL);
  sub_271851AD8(v8, v10, &xmmword_28087B030);
  v4 = v10[0];
  if (v10[0])
  {
    v5 = v10[1];
    v6 = v10[0];
    if (v10[1] != v10[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v10[0];
    }

    v10[1] = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
    if ((v15 & 0x80000000) == 0)
    {
LABEL_26:
      if ((v9 & 0x80000000) == 0)
      {
        return;
      }

LABEL_33:
      operator delete(v8[0]);
      return;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_26;
  }

  operator delete(v14[0]);
  if (v9 < 0)
  {
    goto LABEL_33;
  }
}

void sub_2711B9340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_27137F4D0(&a15);
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_2711B9404()
{
  if (*(v0 - 57) < 0)
  {
    JUMPOUT(0x2711B93E8);
  }

  JUMPOUT(0x2711B93ECLL);
}

void sub_2711B9418()
{
  if (*(v0 - 57) < 0)
  {
    JUMPOUT(0x2711B93F8);
  }

  JUMPOUT(0x2711B93FCLL);
}

_BYTE *sub_2711B942C(uint64_t a1, char a2)
{
  v26 = *MEMORY[0x277D85DE8];
  result = operator new(0x20uLL, MEMORY[0x277D826F0]);
  if (!result)
  {
    if ((atomic_load_explicit(&qword_280877A10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877A10))
    {
      sub_2718519B4(qword_2808779F8, "VZTimestamp]", 0xBuLL);
      __cxa_guard_release(&qword_280877A10);
    }

    if ((atomic_load_explicit(&qword_28087B010, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B010))
    {
      sub_2711B9074();
      __cxa_guard_release(&qword_28087B010);
    }

    if (byte_28087B047 < 0)
    {
      sub_271127178(&v22, xmmword_28087B030, *(&xmmword_28087B030 + 1));
    }

    else
    {
      v22 = xmmword_28087B030;
      v23 = unk_28087B040;
    }

    if ((atomic_load_explicit(&qword_28087B020, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B020))
    {
      sub_2718519B4(&xmmword_28087B060, "cv3d::kit::time::ClockType]", 0x1AuLL);
      __cxa_guard_release(&qword_28087B020);
    }

    if (byte_28087B077 < 0)
    {
      sub_271127178(&v24, xmmword_28087B060, *(&xmmword_28087B060 + 1));
    }

    else
    {
      v24 = xmmword_28087B060;
      v25 = unk_28087B070;
    }

    sub_2711309E8(&v20, &v22, 2uLL);
    LOBYTE(v9) = 0;
    v19 = 0;
    sub_27112E0C4(qword_2808779F8, &v20, &v9, 0);
    if (v19 == 1 && v18 == 1)
    {
      if (v17 == 1)
      {
        if (v16 < 0)
        {
          operator delete(__p);
        }

        if (v14 < 0)
        {
          operator delete(v13);
        }
      }

      if (v12 == 1 && v11 < 0)
      {
        operator delete(v10);
      }
    }

    v5 = v20;
    if (v20)
    {
      v6 = v21;
      v7 = v20;
      if (v21 != v20)
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
        v7 = v20;
      }

      v21 = v5;
      operator delete(v7);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
      if ((SHIBYTE(v23) & 0x80000000) == 0)
      {
        return 0;
      }
    }

    else if ((SHIBYTE(v23) & 0x80000000) == 0)
    {
      return 0;
    }

    operator delete(v22);
    return 0;
  }

  result[24] = a2;
  *(result + 7) = 1;
  *result = &unk_288119A78;
  *(result + 1) = &unk_288119AC8;
  *(result + 2) = a1;
  return result;
}

void sub_2711B9738(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087B020);
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

double sub_2711B9790()
{
  *(&__p.__r_.__value_.__s + 23) = 11;
  strcpy(&__p, "VZTimestamp");
  sub_27184BC8C(&v9, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 42;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087B078 = v7;
  unk_28087B088 = v8;
  return result;
}

void sub_2711B99B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711B9BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2711B9C24(uint64_t a1)
{
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if (*(a1 + 48) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_9;
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

LABEL_9:
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    MEMORY[0x2743BF050](v3, 0x1000C4072FAA15ELL);
  }

  return a1;
}

uint64_t sub_2711B9CE0(uint64_t a1)
{
  v2 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    if (*(a1 + 40) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (*(a1 + 40) != 1)
  {
    goto LABEL_9;
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

LABEL_9:
  result = *(a1 + 8);
  *(a1 + 8) = 0;
  if (result)
  {

    JUMPOUT(0x2743BF050);
  }

  return result;
}

void sub_2711B9DB0(uint64_t a1)
{
  v2 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if (*(a1 + 48) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (*(a1 + 48) != 1)
  {
    goto LABEL_9;
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

LABEL_9:
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v3)
  {
    MEMORY[0x2743BF050](v3, 0x1000C4072FAA15ELL);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711B9E8C(uint64_t a1)
{
  v2 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
    if (*(a1 + 40) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (*(a1 + 40) != 1)
  {
    goto LABEL_9;
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

LABEL_9:
  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    MEMORY[0x2743BF050](v3, 0x1000C4072FAA15ELL);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t VZTransform3GetTypeID()
{
  if (atomic_load_explicit(&qword_28087B0A0, memory_order_acquire))
  {
    return qword_28087B098;
  }

  if (__cxa_guard_acquire(&qword_28087B0A0))
  {
    qword_28087B098 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087B0A0);
  }

  return qword_28087B098;
}

void **VZDataCreateWithTransform3(void **a1, uint64_t a2, void *a3)
{
  v82 = *MEMORY[0x277D85DE8];
  if (!sub_2711BA9C4("VZDataCreateWithTransform3", a1, a3))
  {
    sub_27113347C(a2, &v19);
    v17 = &v18;
    v18 = a3;
    LOBYTE(v48) = 0;
    v80 = 0;
    if (v47 != 1)
    {
      goto LABEL_20;
    }

    v48 = v19;
    v49 = v20;
    LOBYTE(v50) = 0;
    v52 = 0;
    if (v23 == 1)
    {
      v50 = *v21;
      v51 = v22;
      v21[1] = 0;
      v22 = 0;
      v21[0] = 0;
      v52 = 1;
    }

    v53 = v24;
    v54 = v25;
    LOBYTE(v55) = 0;
    v57 = 0;
    if (v28 == 1)
    {
      v55 = v26;
      v56 = v27;
      v27 = 0;
      v26 = 0uLL;
      v57 = 1;
      LOBYTE(v58) = 0;
      v62 = 0;
      if (v31 != 1)
      {
LABEL_8:
        LOBYTE(v63[0]) = 0;
        v65 = 0;
        if (v34 != 1)
        {
          goto LABEL_9;
        }

        goto LABEL_13;
      }
    }

    else
    {
      LOBYTE(v58) = 0;
      v62 = 0;
      if (v31 != 1)
      {
        goto LABEL_8;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v59 = v30;
    v58 = *v29;
    v29[1] = 0;
    v30 = 0;
    v29[0] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X8] }

    v60 = _X0;
    v61 = 0;
    v62 = 1;
    LOBYTE(v63[0]) = 0;
    v65 = 0;
    if (v34 != 1)
    {
LABEL_9:
      LOBYTE(v66) = 0;
      v79 = 0;
      if (v46 != 1)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }

LABEL_13:
    *v63 = *v32;
    v64 = v33;
    v33 = 0;
    v32[1] = 0;
    v32[0] = 0;
    v65 = 1;
    LOBYTE(v66) = 0;
    v79 = 0;
    if (v46 != 1)
    {
LABEL_19:
      v80 = 1;
LABEL_20:
      sub_271374EF8((a1 + 2), &v48, &v81);
    }

LABEL_14:
    LOBYTE(v66) = 0;
    v68 = 0;
    if (v37 == 1)
    {
      v66 = v35;
      v67 = v36;
      v36 = 0;
      v35 = 0uLL;
      v68 = 1;
      LOBYTE(v69) = 0;
      v73 = 0;
      if (v40 != 1)
      {
LABEL_16:
        LOBYTE(__p) = 0;
        v76 = 0;
        if (v43 != 1)
        {
LABEL_18:
          v77 = v44;
          v78 = v45;
          v79 = 1;
          goto LABEL_19;
        }

LABEL_17:
        __p = *v41;
        v75 = v42;
        v42 = 0;
        v41[0] = 0;
        v41[1] = 0;
        v76 = 1;
        goto LABEL_18;
      }
    }

    else
    {
      LOBYTE(v69) = 0;
      v73 = 0;
      if (v40 != 1)
      {
        goto LABEL_16;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v69 = *v38;
    v70 = v39;
    v39 = 0;
    v38[0] = 0;
    v38[1] = 0;
    __asm { CASPAL          X0, X1, X0, X1, [X9] }

    v71 = _X0;
    v72 = 0;
    v73 = 1;
    LOBYTE(__p) = 0;
    v76 = 0;
    if (v43 != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  return 0;
}

void sub_2711BA78C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::runtime_error __p, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  if (a2)
  {
    sub_2711307D4(&a38);
    sub_271137BDC(&STACK[0x4A0]);
    if (a2 == 3)
    {
      exception_ptr = __cxa_get_exception_ptr(a1);
      std::logic_error::logic_error(&a10, exception_ptr);
      a10.__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_begin_catch(a1);
      a9 = std::logic_error::what(&a10);
      sub_27113604C(&__p, &a9);
      sub_271369D54(&__p, &a16);
      *&STACK[0x4A0] = a16;
      sub_27184A2B4(&STACK[0x4B0], &a17);
      LOBYTE(STACK[0x518]) = 1;
      sub_2711BC4D0(&a54, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      sub_27112D71C(&a16);
      if (a35 == 1 && a34 < 0)
      {
        operator delete(__p.__vftable);
      }

      MEMORY[0x2743BE520](&a10);
      __cxa_end_catch();
    }

    else if (a2 == 2)
    {
      v56 = __cxa_get_exception_ptr(a1);
      sub_271135FD0(&__p, v56);
      __cxa_begin_catch(a1);
      v57 = (a36 + 48);
      if (*(a36 + 71) < 0)
      {
        v57 = *v57;
      }

      a9 = v57;
      sub_27113604C(&a10, &a9);
      sub_27136A868(&a10, &a16);
      *&STACK[0x4A0] = a16;
      sub_27184A2B4(&STACK[0x4B0], &a17);
      LOBYTE(STACK[0x518]) = 1;
      sub_2711BC4D0(&a54, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      sub_27112D71C(&a16);
      if (a15 == 1 && a14 < 0)
      {
        operator delete(a10.__vftable);
      }

      MEMORY[0x2743BEBB0](&__p);
      __cxa_end_catch();
    }

    else
    {
      __cxa_begin_catch(a1);
      LOBYTE(STACK[0x4A0]) = 0;
      LOBYTE(STACK[0x518]) = 0;
      sub_2711BC4D0(&a54, &STACK[0x4A0]);
      sub_2711307D4(&STACK[0x4A0]);
      __cxa_end_catch();
    }

    JUMPOUT(0x2711BA5FCLL);
  }

  _Unwind_Resume(a1);
}

BOOL sub_2711BA9C4(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a2)
  {
    if ((atomic_load_explicit(&qword_28087B0A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B0A8))
    {
      sub_2711BC268();
      __cxa_guard_release(&qword_28087B0A8);
    }

    if (byte_28087B0F7 < 0)
    {
      sub_271127178(v7, xmmword_28087B0E0, *(&xmmword_28087B0E0 + 1));
    }

    else
    {
      *v7 = xmmword_28087B0E0;
      v8 = unk_28087B0F0;
    }

    v9 = 1;
    sub_27112D7CC(a1, v7, &v10);
    v21 = v10;
    LOBYTE(v22) = 0;
    v31 = 0;
    if (v20 == 1)
    {
      v24 = 0;
      if (v13 == 1)
      {
        v22 = v11;
        v23 = v12;
        v12 = 0;
        v11 = 0uLL;
        v24 = 1;
      }

      LOBYTE(v25) = 0;
      v30 = 0;
      if (v19 == 1)
      {
        v26 = v15;
        v25 = *v14;
        v14[0] = 0;
        v14[1] = 0;
        v27 = v16;
        *__p = *v17;
        v29 = v18;
        v15 = 0;
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
        v30 = 1;
      }

      v31 = 1;
    }

    v32 = 0;
    sub_27112B960(&v21, a3);
    if ((v32 & 1) == 0 && v31 == 1)
    {
      if (v30 == 1)
      {
        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v26) < 0)
        {
          operator delete(v25);
        }
      }

      if (v24 == 1 && SHIBYTE(v23) < 0)
      {
        operator delete(v22);
      }
    }

    if (v20 == 1)
    {
      if (v19 == 1)
      {
        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }
      }

      if (v13 == 1 && SHIBYTE(v12) < 0)
      {
        operator delete(v11);
      }
    }

    if (v9 == 1 && SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }

  return a2 == 0;
}

void sub_2711BAC34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  sub_27112E024(&a32);
  sub_27112D71C(&a17);
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

char *VZDataGetTransform3(uint64_t a1, void *a2)
{
  if (sub_271133B3C("VZDataGetTransform3", a1, a2))
  {
    return 0;
  }

  result = *(a1 + 584);
  if (!result)
  {
    v5 = &v6;
    v6 = a2;
    sub_271375FA0(a1 + 32);
  }

  return result;
}

void sub_2711BAF38(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, const char *a9, std::logic_error a10, int a11, __int16 a12, char a13, char a14, char a15, __int128 a16, __int128 a17, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::runtime_error __p, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_2711307D4(&a38);
  sub_2711BCE38((v37 - 176));
  if (a2 == 3)
  {
    exception_ptr = __cxa_get_exception_ptr(a1);
    std::logic_error::logic_error(&a10, exception_ptr);
    a10.__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_begin_catch(a1);
    a9 = std::logic_error::what(&a10);
    sub_27113604C(&__p, &a9);
    sub_271369D54(&__p, &a16);
    *(v37 - 176) = a16;
    sub_27184A2B4(v37 - 160, &a17);
    *(v37 - 56) = 1;
    sub_2711BCAD0((v37 - 48), v37 - 176);
    sub_2711307D4(v37 - 176);
    sub_27112D71C(&a16);
    if (a35 == 1 && a34 < 0)
    {
      operator delete(__p.__vftable);
    }

    MEMORY[0x2743BE520](&a10);
    __cxa_end_catch();
  }

  else if (a2 == 2)
  {
    v41 = __cxa_get_exception_ptr(a1);
    sub_271135FD0(&__p, v41);
    __cxa_begin_catch(a1);
    v42 = (a36 + 48);
    if (*(a36 + 71) < 0)
    {
      v42 = *v42;
    }

    a9 = v42;
    sub_27113604C(&a10, &a9);
    sub_27136A868(&a10, &a16);
    *(v37 - 176) = a16;
    sub_27184A2B4(v37 - 160, &a17);
    *(v37 - 56) = 1;
    sub_2711BCAD0((v37 - 48), v37 - 176);
    sub_2711307D4(v37 - 176);
    sub_27112D71C(&a16);
    if (a15 == 1 && a14 < 0)
    {
      operator delete(a10.__vftable);
    }

    MEMORY[0x2743BEBB0](&__p);
    __cxa_end_catch();
  }

  else
  {
    __cxa_begin_catch(a1);
    *(v37 - 176) = 0;
    *(v37 - 56) = 0;
    sub_2711BCAD0((v37 - 48), v37 - 176);
    sub_2711307D4(v37 - 176);
    __cxa_end_catch();
  }

  JUMPOUT(0x2711BAE80);
}

void *VZTransform3Create(uint64_t a1, char *a2, char *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = sub_2711A352C("VZTransform3Create", a1, 0);
  result = 0;
  if (!v6)
  {
    v8 = operator new(0x68uLL, MEMORY[0x277D826F0]);
    if (v8)
    {
      *v8 = &unk_288117810;
      sub_271374C7C((v8 + 2), (a1 + 16), a2, a3);
    }

    if ((atomic_load_explicit(&qword_28087B0B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B0B8))
    {
      sub_2718519B4(qword_28087B110, "VZTransform3]", 0xCuLL);
      __cxa_guard_release(&qword_28087B0B8);
    }

    if ((atomic_load_explicit(&qword_28087B0C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B0C0))
    {
      sub_2711BCF24();
      __cxa_guard_release(&qword_28087B0C0);
    }

    if (byte_28087B13F < 0)
    {
      sub_271127178(&v26, xmmword_28087B128, *(&xmmword_28087B128 + 1));
    }

    else
    {
      v26 = xmmword_28087B128;
      v27 = unk_28087B138;
    }

    if ((atomic_load_explicit(&qword_2808779D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808779D0))
    {
      sub_27114C390(&xmmword_2808779B8);
      __cxa_guard_release(&qword_2808779D0);
    }

    if (byte_2808779CF < 0)
    {
      sub_271127178(&v28, xmmword_2808779B8, *(&xmmword_2808779B8 + 1));
    }

    else
    {
      v28 = xmmword_2808779B8;
      v29 = unk_2808779C8;
    }

    if ((atomic_load_explicit(&qword_2808779D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808779D0))
    {
      sub_27114C390(&xmmword_2808779B8);
      __cxa_guard_release(&qword_2808779D0);
    }

    if (byte_2808779CF < 0)
    {
      sub_271127178(&v30, xmmword_2808779B8, *(&xmmword_2808779B8 + 1));
    }

    else
    {
      v30 = xmmword_2808779B8;
      v31 = unk_2808779C8;
    }

    sub_2711309E8(&v24, &v26, 3uLL);
    LOBYTE(v13) = 0;
    v23 = 0;
    sub_27112E0C4(qword_28087B110, &v24, &v13, 0);
    if (v23 == 1 && v22 == 1)
    {
      if (v21 == 1)
      {
        if (v20 < 0)
        {
          operator delete(__p);
        }

        if (v18 < 0)
        {
          operator delete(v17);
        }
      }

      if (v16 == 1 && v15 < 0)
      {
        operator delete(v14);
      }
    }

    v9 = v24;
    if (v24)
    {
      v10 = v25;
      v11 = v24;
      if (v25 != v24)
      {
        do
        {
          v12 = *(v10 - 1);
          v10 -= 3;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v9);
        v11 = v24;
      }

      v25 = v9;
      operator delete(v11);
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
      if ((SHIBYTE(v29) & 0x80000000) == 0)
      {
LABEL_38:
        if ((SHIBYTE(v27) & 0x80000000) == 0)
        {
          return 0;
        }

LABEL_42:
        operator delete(v26);
        return 0;
      }
    }

    else if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

    operator delete(v28);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      return 0;
    }

    goto LABEL_42;
  }

  return result;
}

void sub_2711BB540(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_2808779D0);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2711BB560(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087B0C0);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2711BB57C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087B0B8);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2711BB598(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2711BB5A4);
  }

  sub_271120E50(a1);
}

uint64_t VZTransform3GetValueType(uint64_t a1)
{
  if (sub_2711BA9C4("VZTransform3GetValueType", a1, 0))
  {
    return 255;
  }

  v3 = *(*(a1 + 16) + 136);
  if (v3 == 2 || v3 == 5)
  {
    return 12;
  }

  else
  {
    return 11;
  }
}

uint64_t VZTransform3GetSE3(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = sub_2711BA9C4("VZTransform3GetSE3", a1, 0);
  result = 0;
  if (!v2)
  {
    result = *(a1 + 96);
    if (!result)
    {
      operator new();
    }
  }

  return result;
}

void sub_2711BB9C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_guard_abort(&qword_28087B090);
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2711BB9F4(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2711BBA00);
  }

  sub_271120E50(a1);
}

uint64_t VZTransform3GetSource(uint64_t a1)
{
  if (sub_2711BA9C4("VZTransform3GetSource", a1, 0))
  {
    return 0;
  }

  if (*(a1 + 48) != 1)
  {
    return 0;
  }

  result = a1 + 24;
  if (*(a1 + 47) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t VZTransform3GetDestination(uint64_t a1)
{
  if (sub_2711BA9C4("VZTransform3GetDestination", a1, 0))
  {
    return 0;
  }

  if (*(a1 + 80) != 1)
  {
    return 0;
  }

  result = a1 + 56;
  if (*(a1 + 79) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t sub_2711BBB08(uint64_t result)
{
  if (atomic_fetch_add((result + 88), 0xFFFFFFFF) == 1)
  {
    return (*(*(result + 8) + 8))();
  }

  return result;
}

uint64_t sub_2711BBB44()
{
  if (atomic_load_explicit(&qword_28087B0A0, memory_order_acquire))
  {
    return qword_28087B098;
  }

  if (__cxa_guard_acquire(&qword_28087B0A0))
  {
    qword_28087B098 = sub_27112B4B8();
    __cxa_guard_release(&qword_28087B0A0);
  }

  return qword_28087B098;
}

char *sub_2711BBBA8(uint64_t a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_28812C878, &unk_28812C728, 0);
  if (result)
  {
    return sub_27153D1BC(a1 + 16, (result + 16));
  }

  return result;
}

uint64_t sub_2711BBC2C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  __cxa_begin_catch(a1);
  sub_2711BCDA8();
  sub_27112B400(v20, "failed to compare equal");
  sub_27112DB38(qword_28087B110, v20, 0);
  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  __cxa_end_catch();
  return 0;
}

void sub_2711BBC84(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_28087B0B8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_28087B0B8))
    {
      sub_2718519B4(qword_28087B110, "VZTransform3]", 0xCuLL);
      __cxa_guard_release(&qword_28087B0B8);
    }
  }

  v2 = a1;
  operator new();
}

void sub_2711BC128(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  __cxa_guard_abort(&qword_28087B0B8);
  __cxa_begin_catch(a1);
  sub_2711BCDA8();
  sub_27112B400(&__p, "failed to create description");
  sub_27112DB38(qword_28087B110, &__p, 0);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x2711BC098);
}

double sub_2711BC268()
{
  *(&__p.__r_.__value_.__s + 23) = 12;
  strcpy(&__p, "VZTransform3");
  sub_27184BC8C(&v9, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 42;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087B0E0 = v7;
  unk_28087B0F0 = v8;
  return result;
}

void sub_2711BC490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711BC4D0(void ***a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280877850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877850))
  {
    sub_2718519B4(qword_280877838, "VZData]", 6uLL);
    __cxa_guard_release(&qword_280877850);
  }

  if ((atomic_load_explicit(&qword_28087B0B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B0B0))
  {
    sub_2711BC868();
    __cxa_guard_release(&qword_28087B0B0);
  }

  if (byte_28087B10F < 0)
  {
    sub_271127178(&v21, xmmword_28087B0F8, *(&xmmword_28087B0F8 + 1));
  }

  else
  {
    v21 = xmmword_28087B0F8;
    v22 = unk_28087B108;
  }

  if ((atomic_load_explicit(&qword_280877830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877830))
  {
    sub_271135818();
  }

  if (byte_28087782F < 0)
  {
    sub_271127178(&v23, xmmword_280877818, *(&xmmword_280877818 + 1));
  }

  else
  {
    v23 = xmmword_280877818;
    v24 = unk_280877828;
  }

  sub_2711309E8(&v19, &v21, 2uLL);
  LOBYTE(v8) = 0;
  v18 = 0;
  if (*(a2 + 120) == 1)
  {
    v8 = *a2;
    LOBYTE(v9) = 0;
    v17 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v9, (a2 + 16));
      v17 = 1;
    }

    v18 = 1;
  }

  sub_27112E0C4(qword_280877838, &v19, &v8, **a1);
  if (v18 == 1 && v17 == 1)
  {
    if (v16 == 1)
    {
      if (v15 < 0)
      {
        operator delete(__p);
      }

      if (v13 < 0)
      {
        operator delete(v12);
      }
    }

    if (v11 == 1 && v10 < 0)
    {
      operator delete(v9);
    }
  }

  v4 = v19;
  if (v19)
  {
    v5 = v20;
    v6 = v19;
    if (v20 != v19)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v19;
    }

    v20 = v4;
    operator delete(v6);
  }

  if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      return;
    }

LABEL_36:
    operator delete(v21);
    return;
  }

  operator delete(v23);
  if (SHIBYTE(v22) < 0)
  {
    goto LABEL_36;
  }
}

void sub_2711BC7C4(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_280877830);
  if (*(v1 - 73) < 0)
  {
    operator delete(*(v1 - 96));
  }

  _Unwind_Resume(a1);
}

double sub_2711BC868()
{
  *(&__p.__r_.__value_.__s + 23) = 12;
  strcpy(&__p, "VZTransform3");
  sub_27184BC8C(&v9, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 38;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087B0F8 = v7;
  unk_28087B108 = v8;
  return result;
}

void sub_2711BCA90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711BCAD0(void ***a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_28087B0B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B0B8))
  {
    sub_2718519B4(qword_28087B110, "VZTransform3]", 0xCuLL);
    __cxa_guard_release(&qword_28087B0B8);
  }

  if ((atomic_load_explicit(&qword_2808778D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2808778D0))
  {
    sub_271138414(&xmmword_2808778B8);
    __cxa_guard_release(&qword_2808778D0);
  }

  if (byte_2808778CF < 0)
  {
    sub_271127178(&v21, xmmword_2808778B8, *(&xmmword_2808778B8 + 1));
  }

  else
  {
    v21 = xmmword_2808778B8;
    v22 = unk_2808778C8;
  }

  sub_2711309E8(&v19, &v21, 1uLL);
  LOBYTE(v8) = 0;
  v18 = 0;
  if (*(a2 + 120) == 1)
  {
    v8 = *a2;
    LOBYTE(v9) = 0;
    v17 = 0;
    if (*(a2 + 112) == 1)
    {
      sub_27112F6CC(&v9, (a2 + 16));
      v17 = 1;
    }

    v18 = 1;
  }

  sub_27112E0C4(qword_28087B110, &v19, &v8, **a1);
  if (v18 == 1 && v17 == 1)
  {
    if (v16 == 1)
    {
      if (v15 < 0)
      {
        operator delete(__p);
      }

      if (v13 < 0)
      {
        operator delete(v12);
      }
    }

    if (v11 == 1 && v10 < 0)
    {
      operator delete(v9);
    }
  }

  v4 = v19;
  if (v19)
  {
    v5 = v20;
    v6 = v19;
    if (v20 != v19)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v19;
    }

    v20 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21);
  }
}

void sub_2711BCD58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_27112D66C(v9 + 16);
  sub_2711307D4(&a9);
  sub_27137F4D0((v10 - 96));
  if (*(v10 - 41) < 0)
  {
    operator delete(*(v10 - 64));
  }

  _Unwind_Resume(a1);
}

void sub_2711BCDA8()
{
  if ((atomic_load_explicit(&qword_28087B0B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B0B8))
  {
    sub_2718519B4(qword_28087B110, "VZTransform3]", 0xCuLL);

    __cxa_guard_release(&qword_28087B0B8);
  }
}

uint64_t *sub_2711BCE38(uint64_t *a1)
{
  if (*(a1 + 120) == 1)
  {
    if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
    {
      operator delete(a1[5]);
    }

    if (*(a1 + 32) == 1 && *(a1 + 31) < 0)
    {
      operator delete(a1[1]);
    }

    v2 = *a1;
    *a1 = 0;
    if (v2)
    {
      MEMORY[0x2743BF050](v2, 0x1000C4072FAA15ELL);
    }

    return a1;
  }

  if (*(a1 + 112) != 1)
  {
    return a1;
  }

  if (*(a1 + 104) == 1)
  {
    if (*(a1 + 103) < 0)
    {
      operator delete(a1[10]);
    }

    if (*(a1 + 71) < 0)
    {
      operator delete(a1[6]);
    }
  }

  if (*(a1 + 40) != 1 || (*(a1 + 39) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(a1[2]);
  return a1;
}

double sub_2711BCF24()
{
  *(&__p.__r_.__value_.__s + 23) = 5;
  strcpy(&__p, "VZSE3");
  sub_27184BC8C(&v9, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v0 = std::string::insert(&v9, 0, "const ", 6uLL);
  v1 = *&v0->__r_.__value_.__l.__data_;
  v8 = v0->__r_.__value_.__r.__words[2];
  v7 = v1;
  v0->__r_.__value_.__l.__size_ = 0;
  v0->__r_.__value_.__r.__words[2] = 0;
  v0->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
LABEL_5:
      v3 = &v7;
      if (v2 == 22)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v2 = SHIBYTE(v8);
    if ((SHIBYTE(v8) & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }
  }

  v2 = *(&v7 + 1);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v4 == *(&v7 + 1))
  {
    if ((v8 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF7)
    {
      sub_271120DA8();
    }

LABEL_10:
    operator new();
  }

  v3 = v7;
LABEL_12:
  *(v3 + v2) = 38;
  v5 = v2 + 1;
  if (SHIBYTE(v8) < 0)
  {
    *(&v7 + 1) = v5;
  }

  else
  {
    HIBYTE(v8) = v5 & 0x7F;
  }

  *(v3 + v5) = 0;
  result = *&v7;
  xmmword_28087B128 = v7;
  unk_28087B138 = v8;
  return result;
}

void sub_2711BD140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711BD180(const void *a1@<X0>, size_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a2;
  if (a1 || !a2)
  {
    memset(v7, 0, sizeof(v7));
    if (a2)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_2711BE688();
    }

    sub_27174E2EC(&v13, v7);
  }

  sub_2711BD50C("bytes pointer is null but num_bytes is ", &v24);
  *v10 = *v8;
  v11 = v9;
  v8[1] = 0;
  *&v9 = 0;
  v8[0] = 0;
  v12 = 1;
  sub_271369D54(v10, &v13);
  *a3 = v13;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v23 != 1)
  {
    *(a3 + 120) = 0;
    goto LABEL_17;
  }

  *(a3 + 40) = 0;
  v4 = v16;
  if (v16 != 1)
  {
    *(a3 + 48) = 0;
    v5 = a3 + 48;
    *(a3 + 104) = 0;
    if ((v22 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    v6 = v19;
    *(v5 + 16) = v18;
    *v5 = v17;
    v17 = 0uLL;
    *(a3 + 72) = v6;
    *(a3 + 80) = v20;
    *(a3 + 96) = v21;
    v18 = 0;
    v20 = 0uLL;
    v21 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    *(a3 + 120) = 0;
    if (!v4)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  *(a3 + 16) = *__p;
  *(a3 + 32) = v15;
  __p[1] = 0;
  v15 = 0;
  __p[0] = 0;
  *(a3 + 40) = 1;
  *(a3 + 48) = 0;
  v5 = a3 + 48;
  *(a3 + 104) = 0;
  if (v22)
  {
    goto LABEL_14;
  }

LABEL_6:
  *(a3 + 112) = 1;
  *(a3 + 120) = 0;
  if (!v4)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_17:
  if (v12 == 1 && SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  if (SBYTE7(v9) < 0)
  {
    operator delete(v8[0]);
  }
}

void sub_2711BD4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26)
{
  sub_27112F828(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2711BD50C(std::string *a1, unint64_t *a2)
{
  v5 = 0;
  v7 = v4;
  v8 = a1;
  v9 = v4;
  v10 = a1;
  v11 = a1;
  v6.__r_.__value_.__r.__words[0] = &v7;
  sub_2711BF108(&v6);
  std::to_string(&v6, *a2);
  v7 = v4;
  v8 = &v6;
  v9 = v4;
  v10 = &v6;
  v11 = &v6;
  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v12 = &v7;
  (off_28812DDB0[v5])(&v12, v4);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  if (v5 == -1)
  {
    sub_2711308D4();
  }

  v7 = &v6;
  result = (off_28812DDC8[v5])(&v7, v4);
  if (v5 != -1)
  {
    return (off_28812DD98[v5])(&v7, v4);
  }

  return result;
}

void sub_2711BD624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711BD640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271130878(&a10);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2711BD630);
}

void sub_2711BD664(uint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v5 = *a1;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = sub_2711BED38;
  operator new();
}

void sub_2711BDA50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711BDA9C(__int128 *a1, uint64_t a2)
{
  v27[25] = *MEMORY[0x277D85DE8];
  if (*(a2 + 400) != 1)
  {
    LOBYTE(v11) = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    LOBYTE(v15) = 0;
    v16 = 0;
    LOBYTE(v17) = 0;
    v18 = 0;
    LOBYTE(__p) = 0;
    v20 = 0;
    sub_2711BF1FC(a1, &v11, &v9);
  }

  if (*(a2 + 16) == 1)
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    if (*(a2 + 56) != 1)
    {
LABEL_8:
      *&v21 = v5;
      BYTE8(v21) = v6;
      sub_27113523C(&v22, (a2 + 32));
      v23[0] = &unk_28812DE38;
      v23[1] = &unk_28812DE80;
      v7 = *a1;
      v8 = a1[1];
      *a1 = 0;
      *(a1 + 1) = 0;
      v24 = v7;
      v25 = v8;
      v26 = v21;
      sub_27113523C(v27, &v22);
      v23[0] = &unk_28810C888;
      sub_2711BF974(&v10, v23);
    }
  }

  else
  {
    v23[0] = &unk_28810A440;
    v5 = sub_271815924();
    v6 = 2;
    if (*(a2 + 56) != 1)
    {
      goto LABEL_8;
    }
  }

  sub_2711DAE40((a2 + 32), 1000000000);
  goto LABEL_8;
}

void sub_2711BE018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_2714FBE4C(va);
  sub_271134CBC(v7 + 16);
  _Unwind_Resume(a1);
}

void sub_2711BE034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_2711BFBEC(&a65);
  sub_271134CBC(v65 + 16);
  _Unwind_Resume(a1);
}

void sub_2711BE050(_Unwind_Exception *a1)
{
  sub_2711BFF28(v1);
  sub_271134CBC(v2 + 16);
  _Unwind_Resume(a1);
}

void sub_2711BE06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2714FBE4C(&a9);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void sub_2711BE088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void sub_2711BE0A0(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 440);
  v4 = *(a1 + 448);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    v5 = __dynamic_cast(v3, &unk_28811D1B0, &unk_28811DC90, 0) != 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if (v5)
    {
LABEL_9:
      v6 = *(a1 + 440);
      v7 = *(a1 + 448);
      if (v7)
      {
        v8 = (v7 + 8);
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        v13 = v6;
        v14 = v7;
        if (v6)
        {
          atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
          v16 = v6;
          *&__p = v7;
          atomic_fetch_add_explicit(v8, 1uLL, memory_order_relaxed);
          goto LABEL_20;
        }
      }

      else
      {
        v13 = *(a1 + 440);
        v14 = 0;
        if (v6)
        {
          v16 = v6;
          *&__p = 0;
LABEL_20:
          v15 = sub_2711BEB94;
          operator new();
        }
      }

LABEL_14:
      v18 = *"cv3d.viz";
      v19 = 0x800000000000000;
      LODWORD(v20) = 9;
      sub_2711BE814(&v12, &v18, 1uLL);
      if (*(a1 + 23) < 0)
      {
        sub_271127178(v9, *a1, *(a1 + 8));
      }

      else
      {
        *v9 = *a1;
        v10 = *(a1 + 16);
      }

      v11 = *(a1 + 24);
      operator new();
    }

LABEL_13:
    v13 = 0;
    v14 = 0;
    goto LABEL_14;
  }

LABEL_8:
  if (v5)
  {
    goto LABEL_9;
  }

  goto LABEL_13;
}

void sub_2711BE5E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, char a30)
{
  if (a2)
  {
    sub_271120E50(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2711BE6A0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = *a3;
  *(a1 + 16) = *(a3 + 2);
  *a1 = v5;
  *(a3 + 8) = 0uLL;
  *a3 = 0;
  *(a1 + 24) = *(a3 + 6);
  v6 = sub_27113610C(a1 + 32, a3 + 2);
  v7 = *(a3 + 55);
  v8 = *(a3 + 56);
  *(a1 + 432) = off_28810C940;
  *(a1 + 440) = v7;
  *(a1 + 448) = v8;
  *(a3 + 55) = 0;
  *(a3 + 56) = 0;
  *(a1 + 464) = 0;
  *(a1 + 496) = 0;
  if (*(a3 + 496) == 1)
  {
    *(a1 + 464) = 0;
    *(a1 + 472) = 0;
    v9 = *(a3 + 58);
    if (v9)
    {
      v9(2, a3 + 29, a1 + 464, 0, 0, v6);
    }

    *(a1 + 496) = 1;
  }

  *(a1 + 504) = 0;
  *(a1 + 528) = 0;
  if (*(a3 + 528) == 1)
  {
    *(a1 + 504) = &unk_288109288;
    *(a1 + 512) = a3[32];
    a3[32] = 0u;
    *(a1 + 528) = 1;
  }

  return a1;
}

void sub_2711BE7B0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void (**sub_2711BE7CC(void (**a1)(void, void, void, void, void)))(void, void, void, void, void)
{
  if (*a1)
  {
    (*a1)(0, a1, 0, 0, 0);
  }

  return a1;
}

uint64_t *sub_2711BE814(uint64_t *a1, __int128 *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (!(a3 >> 59))
    {
      operator new();
    }

    sub_2711BE688();
  }

  return a1;
}

void sub_2711BE928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_2711BE948(va);
  *(v10 + 8) = v11;
  sub_2711BE9A8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2711BE948(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 9);
      v3 -= 4;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****sub_2711BE9A8(void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 9);
          v4 -= 4;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void ***sub_2711BEA2C(void ***a1)
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
        v5 = *(v3 - 9);
        v3 -= 4;
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

void sub_2711BEAC0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2881069D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2711BEB14(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void *sub_2711BEB94(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_2711BEB94;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_2711BEB94;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B808;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con4BlobENS3_7PackageELj9EvEEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con4BlobENS3_7PackageELj9EvEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con4BlobENS3_7PackageELj9EvEEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIKN4cv3d3kit3viz11PackageDataINS2_3con4BlobENS3_7PackageELj9EvEEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_271858300)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void *sub_2711BED38(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_2711BED38;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_2711BED38;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28811B868;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIKN4cv3d3kit3con4BlobEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIKN4cv3d3kit3con4BlobEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIKN4cv3d3kit3con4BlobEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIKN4cv3d3kit3con4BlobEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_271858330)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_2711BF0AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_2711BF108(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812DD98[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_2711BF1FC(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v69 = *MEMORY[0x277D85DE8];
  LOBYTE(v17[0]) = 0;
  v19 = 0;
  if (*(a2 + 24) == 1)
  {
    *v17 = *a2;
    v18 = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v19 = 1;
  }

  v20 = *(a2 + 32);
  v21 = *(a2 + 48);
  LOBYTE(v22) = 0;
  v24 = 0;
  if (*(a2 + 80) == 1)
  {
    v22 = *(a2 + 56);
    v23 = *(a2 + 72);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    v24 = 1;
    LOBYTE(v25) = 0;
    v29 = 0;
    if (*(a2 + 144) != 1)
    {
LABEL_5:
      LOBYTE(v30) = 0;
      v32 = 0;
      if (*(a2 + 184) != 1)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v25) = 0;
    v29 = 0;
    if (*(a2 + 144) != 1)
    {
      goto LABEL_5;
    }
  }

  _X2 = 0;
  _X3 = 0;
  v26 = *(a2 + 112);
  v25 = *(a2 + 96);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  __asm { CASPAL          X2, X3, X2, X3, [X8] }

  v27 = _X2;
  v28 = 0;
  v29 = 1;
  LOBYTE(v30) = 0;
  v32 = 0;
  if (*(a2 + 184) != 1)
  {
LABEL_7:
    sub_27113523C(&v55, v17);
    *&v33 = sub_271815924();
    BYTE8(v33) = 2;
    LOBYTE(v34) = 0;
    v36 = 0;
    if (v57 == 1)
    {
      v34 = v55;
      v35 = v56;
      v56 = 0;
      v55 = 0uLL;
      v36 = 1;
    }

    v37 = v58;
    v38 = v59;
    LOBYTE(v39) = 0;
    v41 = 0;
    if (v62 == 1)
    {
      v39 = v60;
      v40 = v61;
      v61 = 0;
      v60 = 0uLL;
      v41 = 1;
      LOBYTE(v42) = 0;
      v46 = 0;
      if (v65 != 1)
      {
LABEL_11:
        LOBYTE(v47) = 0;
        v49 = 0;
        if ((v68 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_19;
      }
    }

    else
    {
      LOBYTE(v42) = 0;
      v46 = 0;
      if (v65 != 1)
      {
        goto LABEL_11;
      }
    }

    _X0 = 0;
    _X1 = 0;
    v43 = v64;
    v42 = __p;
    v64 = 0;
    __p = 0uLL;
    __asm { CASPAL          X0, X1, X0, X1, [X9] }

    v44 = _X0;
    v45 = 0;
    v46 = 1;
    LOBYTE(v47) = 0;
    v49 = 0;
    if ((v68 & 1) == 0)
    {
LABEL_12:
      if (v65 != 1)
      {
        goto LABEL_22;
      }

LABEL_20:
      if (SHIBYTE(v64) < 0)
      {
        operator delete(__p);
      }

LABEL_22:
      if (v62 == 1 && SHIBYTE(v61) < 0)
      {
        operator delete(v60);
      }

      if (v57 == 1 && SHIBYTE(v56) < 0)
      {
        operator delete(v55);
      }

      v50[0] = &unk_28812DE38;
      v50[1] = &unk_28812DE80;
      v15 = *a1;
      v16 = a1[1];
      *a1 = 0;
      *(a1 + 1) = 0;
      v51 = v15;
      v52 = v16;
      v53 = v33;
      sub_27113523C(&v54, &v34);
      v50[0] = &unk_28810C888;
      sub_2711BF974(a3, v50);
    }

LABEL_19:
    v47 = v66;
    v48 = v67;
    v67 = 0;
    v66 = 0uLL;
    v49 = 1;
    if (v65 != 1)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

LABEL_6:
  v30 = *(a2 + 160);
  v31 = *(a2 + 176);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 160) = 0;
  v32 = 1;
  goto LABEL_7;
}

void sub_2711BF920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  sub_2711BFBEC(&a61);
  sub_271134CBC(v61 + 16);
  sub_271134CBC(&a11);
  _Unwind_Resume(a1);
}

void sub_2711BF960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271134CBC(va);
  _Unwind_Resume(a1);
}

void *sub_2711BFBEC(void *a1)
{
  *a1 = &unk_28812DE38;
  sub_271134CBC((a1 + 8));
  result = a1;
  a1[1] = &unk_28812DE80;
  v3 = a1[3];
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

void sub_2711BFCAC(void *a1)
{
  *a1 = &unk_28812DE38;
  sub_271134CBC((a1 + 8));
  a1[1] = &unk_28812DE80;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711BFD90(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280877CF0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877CF0))
    {
      sub_2711C14E8(qword_280877CD8);
      __cxa_guard_release(&qword_280877CF0);
    }
  }

  v3 = *(a1 + 8);
  v2 = a1 + 8;
  (*(v3 + 24))(__p, v2);
  sub_2711C1280(qword_280877CD8, "{", __p, ",", v2 + 40, "}");
}

void sub_2711BFE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711BFEAC(uint64_t a1@<X8>)
{
  *(a1 + 23) = 8;
  strcpy(a1, "cv3d.viz");
  *(a1 + 24) = 9;
}

void *sub_2711BFF28(void *result)
{
  *result = &unk_28812DE80;
  v1 = result[2];
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

void *sub_2711BFFBC(void *a1)
{
  *a1 = &unk_28812DE38;
  sub_271134CBC((a1 + 8));
  result = a1;
  a1[1] = &unk_28812DE80;
  v3 = a1[3];
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

void sub_2711C007C(void *a1)
{
  *a1 = &unk_28812DE38;
  sub_271134CBC((a1 + 8));
  a1[1] = &unk_28812DE80;
  v2 = a1[3];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  JUMPOUT(0x2743BF050);
}

void sub_2711C0150(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280877CD0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280877CD0))
    {
      sub_2711C1008();
    }
  }

  sub_2711C0870(qword_280877CB8, "{", a1 + 8, ",", a1 + 48, "}");
}

void sub_2711C0204(uint64_t a1@<X8>)
{
  *(a1 + 23) = 15;
  strcpy(a1, "unknown_package");
  *(a1 + 24) = 0;
}

void sub_2711C0230(void *a1)
{
  *a1 = &unk_28812DE80;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711C02D8(void *a1, void *lpsrc)
{
  result = __dynamic_cast(lpsrc, &unk_288132918, &unk_28812DEA0, 0);
  if (result)
  {
    if (a1 == lpsrc)
    {
      return 1;
    }

    else
    {
      v5 = a1[4];
      if (v5 == *(result + 32))
      {
        v6 = result;
        result = 1;
        if (v5)
        {
          v7 = a1[3];
          v8 = *(v6 + 24);
          if (v7 != v8)
          {
            v9 = v5 - 1;
            do
            {
              v10 = v9;
              v11 = *v7;
              v12 = *v8;
              result = v11 == v12;
              if (v11 != v12)
              {
                break;
              }

              ++v7;
              ++v8;
              v9 = v10 - 1;
            }

            while (v10);
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_2711C03C4(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_280877CB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877CB0))
  {
    sub_2718519B4(qword_280877C98, "cv3d::kit::con::Blob]", 0x14uLL);
    __cxa_guard_release(&qword_280877CB0);
  }

  sub_2711C0478(qword_280877C98, "{", a1 + 8, "}");
}

void sub_2711C0478(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v7, *a1, *(a1 + 1));
  }

  else
  {
    v7 = *a1;
    v8 = *(a1 + 2);
  }

  v9 = 1;
  v10 = &v7;
  v11 = a2;
  v12[0] = &v7;
  v12[1] = a2;
  v12[2] = a2;
  sub_271136F58(v12, &v7);
  sub_2711C0624(&v6, &v7, a3);
}

void sub_2711C05BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C05D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C05E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C05FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C0610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C082C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711C0870(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v9, *a1, *(a1 + 1));
  }

  else
  {
    v9 = *a1;
    v10 = *(a1 + 2);
  }

  v11 = 1;
  v12 = &v9;
  v13 = a2;
  v14[0] = &v9;
  v14[1] = a2;
  v14[2] = a2;
  sub_271136F58(v14, &v9);
  sub_2711C0AA0(&v8, &v9, a3);
}

void sub_2711C0A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C0A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C0A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C0A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C0A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C0A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C0A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C0D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_280877CB0);
  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(a1);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(a1);
}

void sub_2711C0FC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711C10DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711C110C(const void **a1@<X0>, std::string *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 20;
  strcpy(__p, "cv3d::kit::con::Blob");
  sub_27184BC8C(&v11, __p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (v10 < 0)
  {
    operator delete(*__p);
  }

  sub_2711309E8(v8, &v11, 1uLL);
  sub_271851AD8(a1, v8, a2);
  v4 = v8[0];
  if (v8[0])
  {
    v5 = v8[1];
    v6 = v8[0];
    if (v8[1] != v8[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = v8[0];
    }

    v8[1] = v4;
    operator delete(v6);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }
}

void sub_2711C1240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27137F4D0(va);
  if (*(v3 - 25) < 0)
  {
    operator delete(*(v3 - 48));
  }

  _Unwind_Resume(a1);
}

void sub_2711C1280(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = -1;
  if (*(a1 + 23) < 0)
  {
    sub_271127178(&v11, *a1, *(a1 + 1));
  }

  else
  {
    v11 = *a1;
    v12 = *(a1 + 2);
  }

  v13 = 1;
  v14 = &v11;
  v15 = a2;
  v16 = &v11;
  v17 = a2;
  v18 = a2;
  sub_271136F58(&v16, &v11);
  v14 = &v11;
  v15 = a3;
  v16 = &v11;
  v17 = a3;
  v18 = a3;
  if (v13 != -1)
  {
    v19 = &v14;
    (off_28812DDE0[v13])(&v19, &v11);
    v14 = &v11;
    v15 = a4;
    v16 = &v11;
    v17 = a4;
    v18 = a4;
    if (v13 != -1)
    {
      v19 = &v14;
      (*(&off_28812DDF8 + v13))(&v19, &v11);
      sub_2711C0DBC(&v10, &v11, a5);
    }

    sub_2711308D4();
  }

  sub_2711308D4();
}

void sub_2711C1458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C1470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C1484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C1498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C14AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C14C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C14D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C14E8(std::string *a1@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  HIBYTE(v7[2]) = 16;
  strcpy(v7, "viz::PackageData");
  *(&__p.__r_.__value_.__s + 23) = 20;
  strcpy(&__p, "cv3d::kit::con::Blob");
  sub_27184BC8C(v9, &__p, "std::__1::", 10, "std::", 5uLL, 0, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = 12;
  strcpy(v11, "viz::Package");
  sub_271851C68("9U]", 2, &v13);
  v15 = 4;
  strcpy(v14, "void");
  sub_2711309E8(v6, v9, 4uLL);
  sub_271851AD8(v7, v6, a1);
  v2 = v6[0];
  if (v6[0])
  {
    v3 = v6[1];
    v4 = v6[0];
    if (v6[1] != v6[0])
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
      v4 = v6[0];
    }

    v6[1] = v2;
    operator delete(v4);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
    if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_13:
      if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_19;
    }
  }

  else if ((SHIBYTE(v13.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  operator delete(v13.__r_.__value_.__l.__data_);
  if ((v12 & 0x80000000) == 0)
  {
LABEL_14:
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v11[0]);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(v7[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(v7[0]);
    return;
  }

LABEL_20:
  operator delete(v9[0]);
  if (SHIBYTE(v7[2]) < 0)
  {
    goto LABEL_21;
  }
}

void sub_2711C1704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  sub_27137F4D0(&a10);
  if (a49 < 0)
  {
    operator delete(__p);
    if ((a43 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a37 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a43 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a38);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a31 & 0x80000000) == 0)
    {
LABEL_10:
      if (a18 < 0)
      {
        operator delete(a13);
      }

      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(a26);
    goto LABEL_10;
  }

LABEL_8:
  operator delete(a32);
  if ((a31 & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_2711C17B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if (v5)
    {
LABEL_4:
      CFDataGetBytePtr(*a1);
      Length = CFDataGetLength(*a1);
      memset(v24, 0, sizeof(v24));
      if (Length << 32)
      {
        if ((Length & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_271135560();
      }

      sub_27174E070(&v13, v24);
    }
  }

  else if (v5)
  {
    goto LABEL_4;
  }

  LOBYTE(v10) = 0;
  v12 = 0;
  sub_271369B1C(&v10, &v13);
  *a2 = v13;
  *(a2 + 16) = 0;
  *(a2 + 112) = 0;
  if (v23 != 1)
  {
    *(a2 + 120) = 0;
    goto LABEL_20;
  }

  *(a2 + 40) = 0;
  v7 = v16;
  if (v16 != 1)
  {
    *(a2 + 48) = 0;
    v8 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v22 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_17:
    v9 = v19;
    *(v8 + 16) = v18;
    *v8 = v17;
    v17 = 0uLL;
    *(a2 + 72) = v9;
    *(a2 + 80) = v20;
    *(a2 + 96) = v21;
    v18 = 0;
    v20 = 0uLL;
    v21 = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    *(a2 + 120) = 0;
    if (!v7)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  *(a2 + 16) = *__p;
  *(a2 + 32) = v15;
  __p[1] = 0;
  v15 = 0;
  __p[0] = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  v8 = a2 + 48;
  *(a2 + 104) = 0;
  if (v22)
  {
    goto LABEL_17;
  }

LABEL_13:
  *(a2 + 112) = 1;
  *(a2 + 120) = 0;
  if (!v7)
  {
    goto LABEL_20;
  }

LABEL_18:
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_20:
  if (v12 == 1 && v11 < 0)
  {
    operator delete(v10);
  }
}

void sub_2711C1AE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711C1B34(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v4 = *(a1 + 8);
  if (v4 && (atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    if (v5)
    {
LABEL_4:
      CFDataGetBytePtr(*a1);
      CFDataGetLength(*a1);
      v12 = 0uLL;
      sub_2711C2560(&v12 + 1, a1);
    }
  }

  else if (v5)
  {
    goto LABEL_4;
  }

  LOBYTE(v9) = 0;
  v11 = 0;
  sub_271369B1C(&v9, &v12);
  *a2 = v12;
  *(a2 + 16) = 0;
  *(a2 + 112) = 0;
  if (v22 != 1)
  {
    *(a2 + 120) = 0;
    goto LABEL_16;
  }

  *(a2 + 40) = 0;
  v6 = v15;
  if (v15 == 1)
  {
    *(a2 + 16) = __p;
    *(a2 + 32) = v14;
    v14 = 0;
    __p = 0uLL;
    *(a2 + 40) = 1;
    *(a2 + 48) = 0;
    v7 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v21 & 1) == 0)
    {
LABEL_9:
      *(a2 + 112) = 1;
      *(a2 + 120) = 0;
      if (!v6)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }
  }

  else
  {
    *(a2 + 48) = 0;
    v7 = a2 + 48;
    *(a2 + 104) = 0;
    if ((v21 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v8 = v18;
  *(v7 + 16) = v17;
  *v7 = v16;
  v16 = 0uLL;
  *(a2 + 72) = v8;
  *(a2 + 80) = v19;
  *(a2 + 96) = v20;
  v17 = 0;
  v19 = 0uLL;
  v20 = 0;
  *(a2 + 104) = 1;
  *(a2 + 112) = 1;
  *(a2 + 120) = 0;
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

LABEL_16:
  if (v11 == 1 && v10 < 0)
  {
    operator delete(v9);
  }
}

void sub_2711C1E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, int a20, __int16 a21, char a22, char a23)
{
  if (a19 == 1 && a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711C1EE8(uint64_t a1)
{
  v2 = *(*a1 + 24);
  if (v2)
  {
    sub_27180A0C8(*(*a1 + 16), v2);
  }

  operator new();
}

void sub_2711C20B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711C20DC(void *a1)
{
  if (*(*a1 + 24))
  {
    operator new();
  }

  operator new();
}

void sub_2711C2370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23)
{
  if (a17 == 1 && a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2711C23C4(int a1, uint64_t a2, void *(**a3)(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5), uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_2711C2560(a3 + 1, a2 + 8);
    }

    v7 = *(a2 + 16);
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = a2;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      result = 0;
      *v8 = 0;
    }

    else
    {
      result = 0;
      *a2 = 0;
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 8);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a3 = sub_2711C23C4;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28812DED0;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "N4cv3d3kit2cf8DataRefTIPK8__CFDataEE")
      {
        if (((v5 & "N4cv3d3kit2cf8DataRefTIPK8__CFDataEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "N4cv3d3kit2cf8DataRefTIPK8__CFDataEE"))
        {
          return 0;
        }

        v9 = a2;
        v10 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("N4cv3d3kit2cf8DataRefTIPK8__CFDataEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v9;
        if (v10)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_271858420)
    {
      return 0;
    }

    return (a2 + 8);
  }

  return result;
}

void sub_2711C2560(void *a1, uint64_t a2)
{
  v3 = *a2;
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    CFRetain(v3);
  }

  sub_2711C268C(&v4, v3);
}

void sub_2711C2890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_27112F828(v15);
  _Unwind_Resume(a1);
}

void sub_2711C2910(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2711C2948(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    CFRelease(v1);
  }
}

uint64_t sub_2711C296C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN4cv3d3kit2cf3PtrIPK8__CFDataEC1ES5_EUlS5_E_")
  {
    if (((v2 & "ZN4cv3d3kit2cf3PtrIPK8__CFDataEC1ES5_EUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4cv3d3kit2cf3PtrIPK8__CFDataEC1ES5_EUlS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4cv3d3kit2cf3PtrIPK8__CFDataEC1ES5_EUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void sub_2711C29EC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28812DEF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2711C2A40(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void *sub_2711C2AC0(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      v8 = a2[2];
      a3[1] = a2[1];
      a3[2] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      result = 0;
      *a3 = sub_2711C2AC0;
    }

    else
    {
      v7 = a2[2];
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = a2;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        result = 0;
        *v9 = 0;
      }

      else
      {
        result = 0;
        *a2 = 0;
      }
    }
  }

  else
  {
    if (a1 == 2)
    {
      result = 0;
      *(a3 + 1) = *(a2 + 1);
      a2[1] = 0;
      a2[2] = 0;
      *a3 = sub_2711C2AC0;
      *a2 = 0;
      return result;
    }

    if (a1 != 3)
    {
      return &unk_28812DF38;
    }

    if (a4)
    {
      v5 = *(a4 + 8);
      if (v5 != "NSt3__110shared_ptrIN4cv3d2vl13visual_logger10SharedBlobEEE")
      {
        if (((v5 & "NSt3__110shared_ptrIN4cv3d2vl13visual_logger10SharedBlobEEE" & 0x8000000000000000) != 0) == __OFSUB__(v5, "NSt3__110shared_ptrIN4cv3d2vl13visual_logger10SharedBlobEEE"))
        {
          return 0;
        }

        v10 = a2;
        v11 = strcmp((v5 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__110shared_ptrIN4cv3d2vl13visual_logger10SharedBlobEEE" & 0x7FFFFFFFFFFFFFFFLL));
        a2 = v10;
        if (v11)
        {
          return 0;
        }
      }
    }

    else if (a5 != &unk_2718584BC)
    {
      return 0;
    }

    return a2 + 1;
  }

  return result;
}

void sub_2711C2C64(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>, float a6@<S3>)
{
  (*(**(a1 + 8) + 32))(*(a1 + 8));
  v12 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  if ((*(**(a1 + 8) + 16))(*(a1 + 8)))
  {
    if (v12 == 11)
    {

      sub_2711C4150(a2, a1, a3, a4, a5, a6);
    }

    v13.n128_f64[0] = a3;
    v14.n128_f64[0] = a4;
    sub_2711C4680(a2, a1, v13, v14, a5, a6);
  }

  if (v12 == 11)
  {

    sub_2711C36B4(a2, a1, a3, a4, a5, a6);
  }

  v13.n128_f64[0] = a3;
  v14.n128_f64[0] = a4;
  sub_2711C3BE4(a2, a1, v13, v14, a5, a6);
}

void sub_2711C2E2C(uint64_t a1, int a2)
{
  v4 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  if (a2 == 12 && v4 == 11)
  {
    v5 = (*(**(a1 + 8) + 16))(*(a1 + 8));
    v6 = (*(**(a1 + 8) + 24))(*(a1 + 8));
    if (v5 == 1)
    {
      if (v6 == 1)
      {
        v9 = sub_2711CB1B0(a1);
        v10 = vcvtq_f64_f32(v9[3]);
        v24 = vcvtq_f64_f32(v9[2]);
        v25 = v10;
        sub_2711CB574(&v23, &v24);
        operator new();
      }
    }

    else if (!v5)
    {
      if (v6 == 2)
      {
        v17 = sub_2711C7E28(a1);
        v18 = v17[2];
        v19.i32[0] = v17[3].i32[0];
        v20 = v17[3].f32[1];
        v21 = v17[3].i32[2];
        v22 = vcvtq_f64_f32(*&v17[1].u32[2]);
        v24 = vcvtq_f64_f32(*v17[1].f32);
        v25 = v22;
        v26 = vcvtq_f64_f32(*v18.f32);
        v27 = vcvt_hight_f64_f32(v18);
        v28 = *&vcvtq_f64_f32(v19);
        v29 = v20;
        v30 = v21;
        sub_2711CCAC0(&v23, &v24);
        operator new();
      }

      if (v6 == 1)
      {
        v7 = sub_2711CB08C(a1);
        v8 = vcvtq_f64_f32(v7[3]);
        v24 = vcvtq_f64_f32(v7[2]);
        v25 = v8;
        sub_2711CB574(&v23, &v24);
        operator new();
      }
    }

    v11 = sub_2711C7F0C(a1);
    v12 = v11[2];
    v13.i32[0] = v11[3].i32[0];
    v14 = v11[3].f32[1];
    v15 = v11[3].i32[2];
    v16 = vcvtq_f64_f32(*&v11[1].u32[2]);
    v24 = vcvtq_f64_f32(*v11[1].f32);
    v25 = v16;
    v26 = vcvtq_f64_f32(*v12.f32);
    v27 = vcvt_hight_f64_f32(v12);
    v28 = *&vcvtq_f64_f32(v13);
    v29 = v14;
    v30 = v15;
    sub_2711CCAC0(&v23, &v24);
    operator new();
  }
}

void sub_2711C36B4(uint64_t a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v27[0] = a3;
  v27[1] = a4;
  v27[2] = a5;
  v27[3] = a6;
  sub_2711CD91C(v19, v27);
  if (v26)
  {
    v12[0] = __PAIR64__(LODWORD(a4), LODWORD(a3));
    v12[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
    v11 = (*(**(a2 + 8) + 40))(*(a2 + 8));
    sub_2711CD758(&v13, v12);
    v19[1] = &unk_288114AB8;
    v22 = v16;
    v23 = v17;
    LODWORD(v24) = v18;
    v20 = v14;
    v21 = v15;
    v25 = *v11;
    v19[0] = &unk_288114998;
    operator new();
  }

  LODWORD(v15) = 0;
  sub_2711CE2CC(v12, &v13, v19);
}

void sub_2711C3BB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_271130878(va);
  sub_271120E50(a1);
}

void sub_2711C3BCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_271130878(va);
  sub_271120E50(a1);
}

void sub_2711C3BE4(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, double a5, double a6)
{
  v8 = a4.n128_u64[0];
  v9 = a3.n128_u64[0];
  v26[0] = a3.n128_f64[0];
  v26[1] = a4.n128_f64[0];
  v26[2] = a5;
  v26[3] = a6;
  sub_2711CB740(v12, v26, a3, a4);
  if (BYTE8(v19))
  {
    v23[0] = v9;
    v23[1] = v8;
    v24 = a5;
    v25 = a6;
    v11 = (*(**(a2 + 8) + 40))(*(a2 + 8));
    sub_2711CB574(&v27, v23);
    v12[1] = &unk_288114AE8;
    v19 = v34;
    v20 = v35;
    v21 = v36;
    *v15 = v30;
    v16 = v31;
    *v17 = v32;
    v18 = v33;
    *v13 = v28;
    v14 = v29;
    v22 = *v11;
    v12[0] = &unk_288114A18;
    operator new();
  }

  LODWORD(v29) = 0;
  sub_2711CE2CC(v23, &v27, v12);
}

void sub_2711C4150(uint64_t a1, uint64_t a2, float a3, float a4, float a5, float a6)
{
  v27[0] = a3;
  v27[1] = a4;
  v27[2] = a5;
  v27[3] = a6;
  sub_2711CD91C(v19, v27);
  if (v26)
  {
    v12[0] = __PAIR64__(LODWORD(a4), LODWORD(a3));
    v12[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
    v11 = (*(**(a2 + 8) + 40))(*(a2 + 8));
    sub_2711CD758(&v13, v12);
    v19[1] = &unk_288114AB8;
    v22 = v16;
    v23 = v17;
    LODWORD(v24) = v18;
    v20 = v14;
    v21 = v15;
    v25 = *v11;
    v19[0] = &unk_288114958;
    operator new();
  }

  LODWORD(v15) = 0;
  sub_2711CE2CC(v12, &v13, v19);
}

void sub_2711C4654(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_271130878(va);
  sub_271120E50(a1);
}

void sub_2711C4668(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_271130878(va);
  sub_271120E50(a1);
}

void sub_2711C4680(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, double a5, double a6)
{
  v8 = a4.n128_u64[0];
  v9 = a3.n128_u64[0];
  v26[0] = a3.n128_f64[0];
  v26[1] = a4.n128_f64[0];
  v26[2] = a5;
  v26[3] = a6;
  sub_2711CB740(v12, v26, a3, a4);
  if (BYTE8(v19))
  {
    v23[0] = v9;
    v23[1] = v8;
    v24 = a5;
    v25 = a6;
    v11 = (*(**(a2 + 8) + 40))(*(a2 + 8));
    sub_2711CB574(&v27, v23);
    v12[1] = &unk_288114AE8;
    v19 = v34;
    v20 = v35;
    v21 = v36;
    *v15 = v30;
    v16 = v31;
    *v17 = v32;
    v18 = v33;
    *v13 = v28;
    v14 = v29;
    v22 = *v11;
    v12[0] = &unk_2881149D8;
    operator new();
  }

  LODWORD(v29) = 0;
  sub_2711CE2CC(v23, &v27, v12);
}

void sub_2711C4BEC(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  sub_2711C2E2C(a1, 12);
  v12 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  if ((*(**(a1 + 8) + 16))(*(a1 + 8)))
  {
    if (v12 == 11)
    {

      v15 = a3;
      v16 = a4;
      v17 = a5;
      v18 = a6;
      sub_2711C4150(a2, a1, v15, v16, v17, v18);
    }

    v13.n128_f64[0] = a3;
    v14.n128_f64[0] = a4;

    sub_2711C4680(a2, a1, v13, v14, a5, a6);
  }

  if (v12 == 11)
  {

    v19 = a3;
    v20 = a4;
    v21 = a5;
    v22 = a6;
    sub_2711C36B4(a2, a1, v19, v20, v21, v22);
  }

  v13.n128_f64[0] = a3;
  v14.n128_f64[0] = a4;

  sub_2711C3BE4(a2, a1, v13, v14, a5, a6);
}

void sub_2711C4D90(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>, float a6@<S3>, float a7@<S4>, float a8@<S5>, float a9@<S6>, float a10@<S7>, int a11)
{
  (*(**(a1 + 8) + 32))(*(a1 + 8));
  v20 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  if ((*(**(a1 + 8) + 16))(*(a1 + 8)))
  {
    if (v20 != 11)
    {
      v27.n128_f64[0] = a3;
      v28.n128_f64[0] = a4;
      sub_2711C6060(a2, a1, v27, v28, a5, a6, a7, a8, a9, a10, v21, v22, v23, v24, v25, v26, *&a11);
    }

    sub_2711C5AF8(a2, a1, a3, a4, a5, a6, a7, a8, a9, a10, v21, v22, v23, v24, v25, v26, a11);
  }

  if (v20 != 11)
  {
    v27.n128_f64[0] = a3;
    v28.n128_f64[0] = a4;
    sub_2711C5538(a2, a1, v27, v28, a5, a6, a7, a8, a9, a10, v21, v22, v23, v24, v25, v26, *&a11);
  }

  sub_2711C4FD0(a2, a1, a3, a4, a5, a6, a7, a8, a9, a10, v21, v22, v23, v24, v25, v26, a11);
}

void sub_2711C4FD0(uint64_t a1, uint64_t a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9, float a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  *&v37 = __PAIR64__(LODWORD(a4), LODWORD(a3));
  *(&v37 + 1) = __PAIR64__(LODWORD(a6), LODWORD(a5));
  v38 = a7;
  v39 = a8;
  v40 = a9;
  v41 = a10;
  v42 = a17;
  v43 = 0xA3727C5ACLL;
  sub_2711CE574(v28, &v37);
  if (v36)
  {
    sub_2711CE97C(&v20, &v37);
    v18 = (*(**(a2 + 8) + 40))(*(a2 + 8));
    v28[1] = &unk_288114A58;
    v33 = v25;
    v34 = v26;
    v35 = v27;
    *v29 = v21;
    v30 = v22;
    v32 = v24;
    *v31 = v23;
    v36 = *v18;
    v28[0] = &unk_288114898;
    operator new();
  }

  LODWORD(v22) = 0;
  sub_2711CE2CC(v19, &v20, v28);
}

void sub_2711C550C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_271130878(va);
  sub_271120E50(a1);
}

void sub_2711C5520(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_271130878(va);
  sub_271120E50(a1);
}

void sub_2711C5538(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, double a17)
{
  v49[0] = a3.n128_f64[0];
  v49[1] = a4.n128_f64[0];
  v49[2] = a5;
  v49[3] = a6;
  v49[4] = a7;
  v49[5] = a8;
  v49[6] = a9;
  v49[7] = a10;
  v49[8] = a17;
  v49[9] = 0.00001;
  v50 = 10;
  sub_2711CCCD0(v19, v49, a3, a4);
  if (BYTE8(v26))
  {
    sub_2711CCAC0(&v34, v49);
    v18 = (*(**(a2 + 8) + 40))(*(a2 + 8));
    v19[1] = &unk_288114A88;
    v30 = v45;
    v31 = v46;
    v32 = v47;
    v26 = v41;
    v27 = v42;
    v29 = v44;
    v28 = v43;
    *v22 = v37;
    v23 = v38;
    v25 = v40;
    *v24 = v39;
    v21 = v36;
    *v20 = v35;
    v33 = *v18;
    v19[0] = &unk_288114918;
    operator new();
  }

  LODWORD(v36) = 0;
  sub_2711CE2CC(&v48, &v34, v19);
}

void sub_2711C5ACC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  sub_271130878(va);
  sub_271120E50(a1);
}

void sub_2711C5AE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  sub_271130878(va);
  sub_271120E50(a1);
}

void sub_2711C5AF8(uint64_t a1, uint64_t a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9, float a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17)
{
  *&v37 = __PAIR64__(LODWORD(a4), LODWORD(a3));
  *(&v37 + 1) = __PAIR64__(LODWORD(a6), LODWORD(a5));
  v38 = a7;
  v39 = a8;
  v40 = a9;
  v41 = a10;
  v42 = a17;
  v43 = 0xA3727C5ACLL;
  sub_2711CE574(v28, &v37);
  if (v36)
  {
    sub_2711CE97C(&v20, &v37);
    v18 = (*(**(a2 + 8) + 40))(*(a2 + 8));
    v28[1] = &unk_288114A58;
    v33 = v25;
    v34 = v26;
    v35 = v27;
    *v29 = v21;
    v30 = v22;
    v32 = v24;
    *v31 = v23;
    v36 = *v18;
    v28[0] = &unk_288114858;
    operator new();
  }

  LODWORD(v22) = 0;
  sub_2711CE2CC(v19, &v20, v28);
}

void sub_2711C6034(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_271130878(va);
  sub_271120E50(a1);
}

void sub_2711C6048(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_271130878(va);
  sub_271120E50(a1);
}

void sub_2711C6060(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, double a17)
{
  v49[0] = a3.n128_f64[0];
  v49[1] = a4.n128_f64[0];
  v49[2] = a5;
  v49[3] = a6;
  v49[4] = a7;
  v49[5] = a8;
  v49[6] = a9;
  v49[7] = a10;
  v49[8] = a17;
  v49[9] = 0.00001;
  v50 = 10;
  sub_2711CCCD0(v19, v49, a3, a4);
  if (BYTE8(v26))
  {
    sub_2711CCAC0(&v34, v49);
    v18 = (*(**(a2 + 8) + 40))(*(a2 + 8));
    v19[1] = &unk_288114A88;
    v30 = v45;
    v31 = v46;
    v32 = v47;
    v26 = v41;
    v27 = v42;
    v29 = v44;
    v28 = v43;
    *v22 = v37;
    v23 = v38;
    v25 = v40;
    *v24 = v39;
    v21 = v36;
    *v20 = v35;
    v33 = *v18;
    v19[0] = &unk_2881148D8;
    operator new();
  }

  LODWORD(v36) = 0;
  sub_2711CE2CC(&v48, &v34, v19);
}

void sub_2711C65F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  sub_271130878(va);
  sub_271120E50(a1);
}

void sub_2711C6608(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  sub_271130878(va);
  sub_271120E50(a1);
}

void sub_2711C6620(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>, double a11)
{
  sub_2711C2E2C(a1, 12);
  v20 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  if ((*(**(a1 + 8) + 16))(*(a1 + 8)))
  {
    if (v20 == 11)
    {

      v29 = a3;
      v30 = a4;
      v31 = a5;
      v32 = a6;
      v33 = a7;
      v34 = a8;
      v35 = a9;
      v36 = a10;
      *&v37 = a11;
      sub_2711C5AF8(a2, a1, v29, v30, v31, v32, v33, v34, v35, v36, v21, v22, v23, v24, v25, v26, v37);
    }

    v27.n128_f64[0] = a3;
    v28.n128_f64[0] = a4;

    sub_2711C6060(a2, a1, v27, v28, a5, a6, a7, a8, a9, a10, v21, v22, v23, v24, v25, v26, a11);
  }

  if (v20 == 11)
  {

    v38 = a3;
    v39 = a4;
    v40 = a5;
    v41 = a6;
    v42 = a7;
    v43 = a8;
    v44 = a9;
    v45 = a10;
    *&v46 = a11;
    sub_2711C4FD0(a2, a1, v38, v39, v40, v41, v42, v43, v44, v45, v21, v22, v23, v24, v25, v26, v46);
  }

  v27.n128_f64[0] = a3;
  v28.n128_f64[0] = a4;

  sub_2711C5538(a2, a1, v27, v28, a5, a6, a7, a8, a9, a10, v21, v22, v23, v24, v25, v26, a11);
}

void sub_2711C6874(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = "focal length";
  v4 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  v9 = v4;
  v5 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v4 != 11)
  {
    if ((atomic_load_explicit(&qword_28087B180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B180))
    {
      sub_27112B400(qword_28087B250, "float32");
      __cxa_guard_release(&qword_28087B180);
    }

    sub_2711CF9E8(v8, &v10, qword_28087B250, &v9);
  }

  if (v5 == 1)
  {
    if (v6)
    {
      v7 = sub_2711CF778(a1);
    }

    else
    {
      v7 = sub_2711CF6A8(a1);
    }
  }

  else if (v6)
  {
    v7 = sub_2711CF918(a1);
  }

  else
  {
    v7 = sub_2711CF848(a1);
  }

  *a2 = v7 + 16;
  *(a2 + 120) = 1;
}

void sub_2711C6BE0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = "focal length";
  v4 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  v9 = v4;
  v5 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v4 != 12)
  {
    if ((atomic_load_explicit(&qword_28087B188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B188))
    {
      sub_27112B400(qword_28087B268, "float64");
      __cxa_guard_release(&qword_28087B188);
    }

    sub_2711CF9E8(v8, &v10, qword_28087B268, &v9);
  }

  if (v5 == 1)
  {
    if (v6)
    {
      v7 = sub_2711D11D8(a1);
    }

    else
    {
      v7 = sub_2711D1108(a1);
    }
  }

  else if (v6)
  {
    v7 = sub_2711D1378(a1);
  }

  else
  {
    v7 = sub_2711D12A8(a1);
  }

  *a2 = v7 + 16;
  *(a2 + 120) = 1;
}

void sub_2711C6F4C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = "principal point";
  v4 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  v9 = v4;
  v5 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v4 != 11)
  {
    if ((atomic_load_explicit(&qword_28087B180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B180))
    {
      sub_27112B400(qword_28087B250, "float32");
      __cxa_guard_release(&qword_28087B180);
    }

    sub_2711CF9E8(v8, &v10, qword_28087B250, &v9);
  }

  if (v5 == 1)
  {
    if (v6)
    {
      v7 = sub_2711CF778(a1);
    }

    else
    {
      v7 = sub_2711CF6A8(a1);
    }
  }

  else if (v6)
  {
    v7 = sub_2711CF918(a1);
  }

  else
  {
    v7 = sub_2711CF848(a1);
  }

  *a2 = v7 + 24;
  *(a2 + 120) = 1;
}

void sub_2711C72B8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = "principal point";
  v4 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  v9 = v4;
  v5 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v4 != 12)
  {
    if ((atomic_load_explicit(&qword_28087B188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B188))
    {
      sub_27112B400(qword_28087B268, "float64");
      __cxa_guard_release(&qword_28087B188);
    }

    sub_2711CF9E8(v8, &v10, qword_28087B268, &v9);
  }

  if (v5 == 1)
  {
    if (v6)
    {
      v7 = sub_2711D11D8(a1);
    }

    else
    {
      v7 = sub_2711D1108(a1);
    }
  }

  else if (v6)
  {
    v7 = sub_2711D1378(a1);
  }

  else
  {
    v7 = sub_2711D12A8(a1);
  }

  *a2 = v7 + 32;
  *(a2 + 120) = 1;
}

void sub_2711C7624(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  v10 = v4;
  v5 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v9 = v5;
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v4 != 11)
  {
    if ((atomic_load_explicit(&qword_28087B180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B180))
    {
      sub_27112B400(qword_28087B250, "float32");
      __cxa_guard_release(&qword_28087B180);
    }

    sub_2711C7FF0(v8, qword_28087B250, &v10);
  }

  if (v5 == 1)
  {
    sub_2711C7AF0(v8, &v9);
  }

  if (v6)
  {
    v7 = sub_2711C7F0C(a1);
  }

  else
  {
    v7 = sub_2711C7E28(a1);
  }

  *a2 = v7 + 32;
  *(a2 + 120) = 1;
}

void sub_2711C7D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2743BF050](v3, 0x10B2C40EED050F3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C7DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C7DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
    sub_271130878(&a10);
    _Unwind_Resume(a1);
  }

  sub_271130878(&a10);
  _Unwind_Resume(a1);
}

void *sub_2711C7E28(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (result = __dynamic_cast(v2, &unk_2881240F8, &unk_288124198, 0)) == 0)
  {
    if ((atomic_load_explicit(&qword_280877DD0, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_280877DD0))
      {
        sub_2711CF4A0();
      }
    }

    sub_2717412A4(a1, qword_280877DB8, "trying to cast camera");
  }

  return result;
}

void *sub_2711C7F0C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (result = __dynamic_cast(v2, &unk_2881240F8, &unk_288124180, 0)) == 0)
  {
    if ((atomic_load_explicit(&qword_280877D90, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_280877D90))
      {
        sub_2711CF5A4();
      }
    }

    sub_2717412A4(a1, qword_280877D78, "trying to cast camera");
  }

  return result;
}

void sub_2711C7FF0(uint64_t a1, const char *a2, _BYTE *a3)
{
  v6 = 0;
  v7 = v5;
  v8 = "Cannot get heikkila distortion coefficients as ";
  v9 = v5;
  v10 = "Cannot get heikkila distortion coefficients as ";
  v11 = "Cannot get heikkila distortion coefficients as ";
  v12 = &v7;
  sub_2711D1BC0(&v12);
  v7 = v5;
  v8 = a2;
  v9 = v5;
  v10 = a2;
  v11 = a2;
  if (v6 != -1)
  {
    v12 = &v7;
    (off_28812E218[v6])(&v12, v5);
    v7 = v5;
    v8 = ", camera value type is ";
    v9 = v5;
    v10 = ", camera value type is ";
    v11 = ", camera value type is ";
    if (v6 != -1)
    {
      v12 = &v7;
      (off_28812E230[v6])(&v12, v5);
      sub_2711D022C(v5, a3);
    }

    sub_2711308D4();
  }

  sub_2711308D4();
}

void sub_2711C81B4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  v10 = v4;
  v5 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  v9 = v5;
  v6 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v4 != 12)
  {
    if ((atomic_load_explicit(&qword_28087B188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_28087B188))
    {
      sub_27112B400(qword_28087B268, "float64");
      __cxa_guard_release(&qword_28087B188);
    }

    sub_2711C7FF0(v8, qword_28087B268, &v10);
  }

  if (v5 == 1)
  {
    sub_2711C7AF0(v8, &v9);
  }

  if (v6)
  {
    v7 = sub_2711C8764(a1);
  }

  else
  {
    v7 = sub_2711C8680(a1);
  }

  *a2 = v7 + 48;
  *(a2 + 120) = 1;
}

void *sub_2711C8680(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (result = __dynamic_cast(v2, &unk_2881240F8, &unk_2881241C8, 0)) == 0)
  {
    if ((atomic_load_explicit(&qword_280877DF0, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_280877DF0))
      {
        sub_2711D185C();
      }
    }

    sub_2717412A4(a1, qword_280877DD8, "trying to cast camera");
  }

  return result;
}

void *sub_2711C8764(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (result = __dynamic_cast(v2, &unk_2881240F8, &unk_2881241B0, 0)) == 0)
  {
    if ((atomic_load_explicit(&qword_280877DB0, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_280877DB0))
      {
        sub_2711D1ABC();
      }
    }

    sub_2717412A4(a1, qword_280877D98, "trying to cast camera");
  }

  return result;
}

void sub_2711C8868(_BYTE *a1)
{
  if (*a1 != 1)
  {
    if (!*a1)
    {
      v2 = xmmword_271858580;
      sub_2711CD758(&v3, &v2);
      operator new();
    }

    operator new();
  }

  v2 = xmmword_271858580;
  sub_2711CD758(&v3, &v2);
  operator new();
}

void sub_2711C8DDC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = (*(**(a1 + 8) + 32))(*(a1 + 8));
  v5 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  v6 = (*(**(a1 + 8) + 24))(*(a1 + 8));
  if (v4 == 11)
  {
    if (v6 == 1)
    {
      if (v5)
      {
        sub_2711CB1B0(a1);
        operator new();
      }

      sub_2711CB08C(a1);
      operator new();
    }

    if (v5)
    {
      sub_2711C7F0C(a1);
      operator new();
    }

    sub_2711C7E28(a1);
    operator new();
  }

  if (v6 == 1)
  {
    v7 = *(a1 + 8);
    if (v5)
    {
      if (v7 && __dynamic_cast(v7, &unk_2881240F8, &unk_288124210, 0))
      {
        operator new();
      }

      v8 = sub_2711CF16C();
    }

    else
    {
      if (v7 && __dynamic_cast(v7, &unk_2881240F8, &unk_288124228, 0))
      {
        operator new();
      }

      v8 = sub_2711CEE38();
    }

    sub_2717412A4(a1, v8, "trying to cast camera");
  }

  if (v5)
  {
    sub_2711C8764(a1);
    operator new();
  }

  sub_2711C8680(a1);
  operator new();
}

void sub_2711C9BE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711C9C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C9C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_271130878(va);
  _Unwind_Resume(a1);
}

void sub_2711C9C2C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v68 = *MEMORY[0x277D85DE8];
  if (*(a2 + 400) == 1)
  {
    if (*(a2 + 16) == 1)
    {
      v5 = *a2;
      v6 = *(a2 + 8);
      if (*(a2 + 56) != 1)
      {
LABEL_14:
        *&v30 = v5;
        BYTE8(v30) = v6;
        sub_27113523C(&v31, (a2 + 32));
        v47 = &unk_28812E370;
        v48 = &unk_28812E3B8;
        v8 = *(a1 + 8);
        v7 = *(a1 + 16);
        v49 = &unk_288114818;
        v50 = v8;
        v51 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
        }

        v52 = v30;
        sub_27113523C(v53, &v31);
        v47 = &unk_28810C8D0;
        sub_2711D1F00(&v54, &v47);
      }
    }

    else
    {
      v47 = &unk_28810A440;
      v5 = sub_271815924();
      v6 = 2;
      if (*(a2 + 56) != 1)
      {
        goto LABEL_14;
      }
    }

    sub_2711DAE40((a2 + 32), 1000000000);
    goto LABEL_14;
  }

  LOBYTE(v18) = 0;
  LOBYTE(v19) = 0;
  LOBYTE(v20) = 0;
  v21 = 0;
  v22 = v18;
  v23 = v19;
  LOBYTE(v24) = 0;
  v25 = 0;
  LOBYTE(v26) = 0;
  v27 = 0;
  LOBYTE(v28) = 0;
  v29 = 0;
  sub_27113523C(&v54, &v20);
  *&v30 = sub_271815924();
  BYTE8(v30) = 2;
  LOBYTE(v31) = 0;
  v33 = 0;
  if (v56 == 1)
  {
    v31 = v54;
    v32 = v55;
    v55 = 0;
    v54 = 0uLL;
    v33 = 1;
  }

  v34 = v57;
  v35 = v58;
  LOBYTE(v36) = 0;
  v38 = 0;
  if (v61 == 1)
  {
    v36 = v59;
    v37 = v60;
    v60 = 0;
    v59 = 0uLL;
    v38 = 1;
    LOBYTE(v39) = 0;
    v43 = 0;
    if (v64 != 1)
    {
LABEL_9:
      LOBYTE(v44) = 0;
      v46 = 0;
      if ((v67 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_19;
    }
  }

  else
  {
    LOBYTE(v39) = 0;
    v43 = 0;
    if (v64 != 1)
    {
      goto LABEL_9;
    }
  }

  _X0 = 0;
  _X1 = 0;
  v40 = v63;
  v39 = __p;
  v63 = 0;
  __p = 0uLL;
  __asm { CASPAL          X0, X1, X0, X1, [X9] }

  v41 = _X0;
  v42 = 0;
  v43 = 1;
  LOBYTE(v44) = 0;
  v46 = 0;
  if ((v67 & 1) == 0)
  {
LABEL_10:
    if (v64 != 1)
    {
      goto LABEL_22;
    }

LABEL_20:
    if (SHIBYTE(v63) < 0)
    {
      operator delete(__p);
    }

LABEL_22:
    if (v61 == 1 && SHIBYTE(v60) < 0)
    {
      operator delete(v59);
    }

    if (v56 == 1 && SHIBYTE(v55) < 0)
    {
      operator delete(v54);
    }

    v47 = &unk_28812E370;
    v48 = &unk_28812E3B8;
    v17 = *(a1 + 8);
    v16 = *(a1 + 16);
    v49 = &unk_288114818;
    v50 = v17;
    v51 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    v52 = v30;
    sub_27113523C(v53, &v31);
    v47 = &unk_28810C8D0;
    sub_2711D1F00(&v54, &v47);
  }

LABEL_19:
  v44 = v65;
  v45 = v66;
  v66 = 0;
  v65 = 0uLL;
  v46 = 1;
  if (v64 != 1)
  {
    goto LABEL_22;
  }

  goto LABEL_20;
}

void sub_2711CAA2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_271120E50(a1);
  }

  _Unwind_Resume(a1);
}

void sub_2711CAB30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 440);
  v5 = *(a1 + 448);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    v6 = __dynamic_cast(v4, &unk_28811D1B0, &unk_28811DCA8, 0) != 0;
    if (!v5)
    {
LABEL_8:
      if (v6)
      {
        goto LABEL_9;
      }

LABEL_16:
      v15 = 0;
      v16 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v6 = 0;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_8;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_9:
  v7 = *(a1 + 440);
  v8 = *(a1 + 448);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = v7;
  v16 = v8;
  if (!v7)
  {
LABEL_17:
    v17 = *"cv3d.viz";
    v18 = 0x800000000000000;
    v19 = 5;
    sub_2711BE814(&v14, &v17, 1uLL);
    if (*(a1 + 23) < 0)
    {
      sub_271127178(v11, *a1, *(a1 + 8));
    }

    else
    {
      *v11 = *a1;
      v12 = *(a1 + 16);
    }

    v13 = *(a1 + 24);
    operator new();
  }

  v9 = *(v7 + 24);
  v10 = *(v7 + 32);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *a2 = &unk_288114818;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 120) = 1;
  if (v8)
  {
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_2711CAF38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void **a23)
{
  sub_2711BEA2C(&a23);
  if (*(v23 - 73) < 0)
  {
    operator delete(*(v23 - 96));
  }

  sub_27112F828(v23 - 112);
  _Unwind_Resume(a1);
}

void *sub_2711CB08C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (result = __dynamic_cast(v2, &unk_2881240F8, &unk_2881241F8, 0)) == 0)
  {
    if ((atomic_load_explicit(&qword_280877D50, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_280877D50))
      {
        sub_2711CB2D4();
      }
    }

    sub_2717412A4(a1, qword_280877D38, "trying to cast camera");
  }

  return result;
}

void *sub_2711CB1B0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (result = __dynamic_cast(v2, &unk_2881240F8, &unk_2881241E0, 0)) == 0)
  {
    if ((atomic_load_explicit(&qword_280877D10, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_280877D10))
      {
        sub_2711CD214();
      }
    }

    sub_2717412A4(a1, qword_280877CF8, "trying to cast camera");
  }

  return result;
}

void sub_2711CB3A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711CB3D8(const void **a1@<X0>, std::string *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = 7;
  strcpy(v9, "float32");
  sub_271851C68("cv3d::kit::cam::PixelOrigin::Corner]", 35, &v11);
  sub_2711309E8(__p, v9, 2uLL);
  sub_271851AD8(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v10 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v9[0]);
    return;
  }

  operator delete(v11.__r_.__value_.__l.__data_);
  if (v10 < 0)
  {
    goto LABEL_13;
  }
}

void sub_2711CB514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_27137F4D0(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a12);
  _Unwind_Resume(a1);
}

uint64_t sub_2711CB574(uint64_t a1, float64x2_t *a2)
{
  *a1 = &unk_288114AE8;
  v3 = *a2;
  *(a1 + 24) = a2[1];
  *(a1 + 8) = v3;
  __asm { FMOV            V0.2D, #1.0 }

  v9 = *a2;
  v10 = a2[1];
  v11 = vdivq_f64(_Q0, *a2);
  *(a1 + 40) = v11;
  *(a1 + 56) = vmulq_f64(v11, vnegq_f64(v10));
  *(a1 + 72) = v9.n128_u64[0];
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = v9.n128_u64[1];
  *(a1 + 112) = 0;
  *(a1 + 120) = v10;
  *(a1 + 136) = 0x3FF0000000000000;
  sub_2711CB740(v15, (a1 + 8), v11, v9);
  v12 = v25;
  if (v25 == 1)
  {
    sub_271130094(v15);
    if (v25)
    {
      return a1;
    }
  }

  if (v24 != 1)
  {
    goto LABEL_10;
  }

  if (v23 != 1)
  {
    goto LABEL_7;
  }

  if (v22 < 0)
  {
    operator delete(v21);
    if ((v20 & 0x80000000) == 0)
    {
LABEL_7:
      if (v18 == 1)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v19);
  if (v18 == 1)
  {
LABEL_8:
    if (v17 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_10:
  if ((v12 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PinholeModel parameters invalid");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  return a1;
}

void sub_2711CB740(uint64_t a1, double *a2, __n128 a3, __n128 a4)
{
  v6 = (a2[2] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (a2[3] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  v7 = (a2[1] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000 && (*a2 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  if (v7 && v6)
  {
    if (*a2 >= 0.00000001 && a2[1] >= 0.00000001)
    {
      *(a1 + 120) = 1;
      return;
    }

    v14 = 0x3E45798EE2308C3ALL;
    v48 = 0;
    v49 = v47;
    v50 = "focal length must be positive (>= ";
    v51 = v47;
    v52 = "focal length must be positive (>= ";
    v53 = "focal length must be positive (>= ";
    v54 = &v49;
    sub_2711CC468(&v54);
    sub_2711CC17C(&v46, v47, &v14);
    v49 = v47;
    v50 = ")";
    v51 = v47;
    v52 = ")";
    v53 = ")";
    if (v48 == -1)
    {
      sub_2711308D4();
    }

    v54 = &v49;
    (*(&off_28812E038 + v48))(&v54, v47);
    if (v48 == -1)
    {
      sub_2711308D4();
    }

    v49 = &v54;
    (off_28812E050[v48])(v15, &v49, v47);
    if (v48 != -1)
    {
      (off_28812DFD8[v48])(&v49, v47);
    }

    if (SHIBYTE(v16) < 0)
    {
      sub_271127178(v17, v15[0], v15[1]);
    }

    else
    {
      *v17 = *v15;
      v18 = v16;
    }

    v19 = 1;
    LOBYTE(v20) = 0;
    v24 = 0;
    v25 = 1;
    sub_2711CBCA8(22, v17, &v35);
    *a1 = v35;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    if (v45 == 1)
    {
      *(a1 + 40) = 0;
      v11 = v38;
      if (v38 == 1)
      {
        *(a1 + 16) = __p;
        *(a1 + 32) = v37;
        v37 = 0;
        __p = 0uLL;
        *(a1 + 40) = 1;
        *(a1 + 48) = 0;
        v12 = a1 + 48;
        *(a1 + 104) = 0;
        if ((v44 & 1) == 0)
        {
LABEL_46:
          *(a1 + 112) = 1;
          *(a1 + 120) = 0;
          if (!v11)
          {
            goto LABEL_53;
          }

LABEL_51:
          if (SHIBYTE(v37) < 0)
          {
            operator delete(__p);
          }

          goto LABEL_53;
        }
      }

      else
      {
        *(a1 + 48) = 0;
        v12 = a1 + 48;
        *(a1 + 104) = 0;
        if ((v44 & 1) == 0)
        {
          goto LABEL_46;
        }
      }

      v13 = v41;
      *(v12 + 16) = v40;
      *v12 = v39;
      v39 = 0uLL;
      *(a1 + 72) = v13;
      *(a1 + 80) = v42;
      *(a1 + 96) = v43;
      v40 = 0;
      v42 = 0uLL;
      v43 = 0;
      *(a1 + 104) = 1;
      *(a1 + 112) = 1;
      *(a1 + 120) = 0;
      if (v11)
      {
        goto LABEL_51;
      }
    }

    else
    {
      *(a1 + 120) = 0;
    }

LABEL_53:
    if (v25 == 1)
    {
      if (v24 == 1)
      {
        if (v23 < 0)
        {
          operator delete(v22);
        }

        if (v21 < 0)
        {
          operator delete(v20);
        }
      }

      if (v19 == 1 && SHIBYTE(v18) < 0)
      {
        operator delete(v17[0]);
      }
    }

    if (SHIBYTE(v16) < 0)
    {
      operator delete(v15[0]);
    }

    return;
  }

  sub_2711CC04C(v26, "focal length and principal point must be finite");
  v34 = 1;
  sub_2711CBCA8(22, v26, &v35);
  *a1 = v35;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (v45 != 1)
  {
    *(a1 + 120) = 0;
    goto LABEL_33;
  }

  *(a1 + 40) = 0;
  v8 = v38;
  if (v38 != 1)
  {
    *(a1 + 48) = 0;
    v9 = a1 + 48;
    *(a1 + 104) = 0;
    if ((v44 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_30:
    v10 = v41;
    *(v9 + 16) = v40;
    *v9 = v39;
    v39 = 0uLL;
    *(a1 + 72) = v10;
    *(a1 + 80) = v42;
    *(a1 + 96) = v43;
    v40 = 0;
    v42 = 0uLL;
    v43 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (!v8)
    {
      goto LABEL_33;
    }

LABEL_31:
    if (SHIBYTE(v37) < 0)
    {
      operator delete(__p);
    }

    goto LABEL_33;
  }

  *(a1 + 16) = __p;
  *(a1 + 32) = v37;
  v37 = 0;
  __p = 0uLL;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  v9 = a1 + 48;
  *(a1 + 104) = 0;
  if (v44)
  {
    goto LABEL_30;
  }

LABEL_20:
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  if (v8)
  {
    goto LABEL_31;
  }

LABEL_33:
  if (v34 == 1)
  {
    if (v33 == 1)
    {
      if (v32 < 0)
      {
        operator delete(v31);
      }

      if (v30 < 0)
      {
        operator delete(v29);
      }
    }

    if (v28 == 1 && v27 < 0)
    {
      operator delete(v26[0]);
    }
  }
}

void sub_2711CBC14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711CBCA8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  LOBYTE(v8[0]) = 0;
  v16 = 0;
  if (*(a2 + 96) == 1)
  {
    sub_27112F6CC(v8, a2);
    v16 = 1;
  }

  sub_2711CBE94(&v17, v3, v8);
  *a3 = v17;
  *(a3 + 16) = 0;
  *(a3 + 112) = 0;
  if (v27 == 1)
  {
    *(a3 + 40) = 0;
    v5 = v20;
    if (v20 == 1)
    {
      *(a3 + 16) = __p;
      *(a3 + 32) = v19;
      v19 = 0;
      __p = 0uLL;
      *(a3 + 40) = 1;
      *(a3 + 48) = 0;
      v6 = a3 + 48;
      *(a3 + 104) = 0;
      if (v26 != 1)
      {
LABEL_6:
        *(a3 + 112) = 1;
        if (!v5)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    else
    {
      *(a3 + 48) = 0;
      v6 = a3 + 48;
      *(a3 + 104) = 0;
      if (v26 != 1)
      {
        goto LABEL_6;
      }
    }

    v7 = v23;
    *(v6 + 16) = v22;
    *v6 = v21;
    v21 = 0uLL;
    *(a3 + 72) = v7;
    *(a3 + 80) = v24;
    *(a3 + 96) = v25;
    v22 = 0;
    v24 = 0uLL;
    v25 = 0;
    *(a3 + 104) = 1;
    *(a3 + 112) = 1;
    if (!v5)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }
  }

LABEL_12:
  if (v16 != 1)
  {
    return;
  }

  if (v15 != 1)
  {
    goto LABEL_16;
  }

  if (v14 < 0)
  {
    operator delete(v13);
    if (v12 < 0)
    {
      goto LABEL_21;
    }

LABEL_16:
    if (v10 != 1)
    {
      return;
    }

    goto LABEL_17;
  }

  if ((v12 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  operator delete(v11);
  if (v10 != 1)
  {
    return;
  }

LABEL_17:
  if (v9 < 0)
  {
    operator delete(v8[0]);
  }
}

uint64_t sub_2711CBE94(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = std::generic_category();
  v7 = v6;
  LOBYTE(v10[0]) = 0;
  v19 = 0;
  if (*(a3 + 96) != 1)
  {
    *a1 = a2;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    return a1;
  }

  sub_27112F6CC(v10, a3);
  v19 = 1;
  *a1 = a2;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  *(a1 + 40) = 0;
  if (v12 == 1)
  {
    *(a1 + 16) = *v10;
    *(a1 + 32) = v11;
    v10[1] = 0;
    v11 = 0;
    v10[0] = 0;
    *(a1 + 40) = 1;
  }

  *(a1 + 48) = 0;
  *(a1 + 104) = 0;
  if (v18)
  {
    v8 = v15;
    *(a1 + 64) = v14;
    *(a1 + 48) = *v13;
    v13[0] = 0;
    v13[1] = 0;
    *(a1 + 72) = v8;
    *(a1 + 80) = *__p;
    *(a1 + 96) = v17;
    __p[1] = 0;
    v17 = 0;
    v14 = 0;
    __p[0] = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v14) & 0x80000000) == 0)
      {
LABEL_7:
        if (v12 != 1)
        {
          return a1;
        }

        goto LABEL_14;
      }
    }

    else if ((SHIBYTE(v14) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    operator delete(v13[0]);
    if (v12 != 1)
    {
      return a1;
    }
  }

  else
  {
    *(a1 + 112) = 1;
    if (v12 != 1)
    {
      return a1;
    }
  }

LABEL_14:
  if ((SHIBYTE(v11) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(v10[0]);
  return a1;
}

void sub_2711CC038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2711CC04C(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v9) = v4;
  if (v4)
  {
    memcpy(&__dst, __s, v4);
    *(&__dst + v5) = 0;
    if ((SHIBYTE(v9) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v6 = __dst;
    sub_271127178(a1, __dst, *(&__dst + 1));
    *(a1 + 24) = 1;
    *(a1 + 32) = 0;
    *(a1 + 88) = 0;
    operator delete(v6);
    return a1;
  }

  LOBYTE(__dst) = 0;
  if (SHIBYTE(v9) < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  *a1 = __dst;
  *(a1 + 16) = v9;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 88) = 0;
  return a1;
}

void sub_2711CC17C(uint64_t a1, uint64_t a2, double *a3)
{
  std::to_string(&v19, *a3);
  v5 = v19.__r_.__value_.__r.__words[0];
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v19;
  }

  else
  {
    v6 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  v8 = &v6[-1].__r_.__value_.__r.__words[2] + 7;
  do
  {
    if (!size)
    {
      size = -1;
      if ((*(&v19.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_14;
      }

LABEL_11:
      if (size != HIBYTE(v19.__r_.__value_.__r.__words[2]) - 1)
      {
        v5 = &v19;
        goto LABEL_17;
      }

LABEL_15:
      v20 = a2;
      p_p = &v19;
      v22 = a2;
      v23 = &v19;
      v24 = &v19;
      v10 = *(a2 + 24);
      if (v10 == -1)
      {
        sub_2711308D4();
      }

      goto LABEL_16;
    }

    v9 = v8[size--];
  }

  while (v9 == 48);
  if ((*(&v19.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (size == v19.__r_.__value_.__l.__size_ - 1)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (strtod(v5, 0) != *a3)
  {
    v20 = a2;
    p_p = &v19;
    v22 = a2;
    v23 = &v19;
    v24 = &v19;
    v10 = *(a2 + 24);
    if (v10 == -1)
    {
      sub_2711308D4();
    }

LABEL_16:
    __p = &v20;
    (off_28812E008[v10])(&__p, a2);
    goto LABEL_38;
  }

  v11 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v19;
  }

  else
  {
    v12 = v19.__r_.__value_.__r.__words[0];
  }

  v13 = 1;
  if (v12->__r_.__value_.__s.__data_[size] == 46)
  {
    v13 = 2;
  }

  v14 = v13 + size;
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v19.__r_.__value_.__l.__size_;
  }

  if (v11 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v11;
  }

  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  v18 = v15;
  if (v15)
  {
    memmove(&__p, v12, v15);
  }

  *(&__p + v15) = 0;
  v20 = a2;
  p_p = &__p;
  v22 = a2;
  v23 = &__p;
  v24 = &__p;
  v16 = *(a2 + 24);
  if (v16 == -1)
  {
    sub_2711308D4();
  }

  v25 = &v20;
  (off_28812E020[v16])(&v25, a2);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_38:
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_41;
  }

  operator delete(__p);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return;
  }

LABEL_41:
  operator delete(v19.__r_.__value_.__l.__data_);
}

void sub_2711CC3FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if ((a20 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

size_t sub_2711CC468(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812DFD8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

uint64_t **sub_2711CC55C(uint64_t **result)
{
  v1 = **result;
  v2 = (*result)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    result = (off_28812DFD8[v3])(&v5, v1);
  }

  *(v1 + 24) = -1;
  if (*(v2 + 23) < 0)
  {
    result = sub_271127178(v1, *v2, *(v2 + 8));
  }

  else
  {
    v4 = *v2;
    *(v1 + 16) = *(v2 + 16);
    *v1 = v4;
  }

  *(v1 + 24) = 1;
  return result;
}

uint64_t sub_2711CC608(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2711CC82C(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    if (*(v3 + 23) < 0)
    {
      sub_271127178(*(a2 + 8), *v3, *(v3 + 8));
    }

    else
    {
      v5 = *v3;
      *(v4 + 16) = *(v3 + 16);
      *v4 = v5;
    }

    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

void sub_2711CC6A8(uint64_t *a1, uint64_t a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v14 + 7) = *(a2 + 15);
  v3 = *a2;
  v14[0] = *(a2 + 8);
  v4 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v9 = v3;
  *v10 = v14[0];
  *&v10[7] = *(v14 + 7);
  v11 = v4;
  memset(v14, 0, 15);
  v5 = a1[1];
  if (*(v5 + 23) < 0)
  {
    sub_271127178(&__p, *v5, *(v5 + 8));
  }

  else
  {
    v6 = *v5;
    v13 = *(v5 + 16);
    __p = v6;
  }

  v7 = *(v2 + 24);
  if (v7 != -1)
  {
    (off_28812DFD8[v7])(&v8, v2);
  }

  *(v2 + 24) = -1;
  sub_2711309E8(v2, &v9, 2uLL);
  *(v2 + 24) = 2;
  if ((SHIBYTE(v13) & 0x80000000) == 0)
  {
    if ((v11 & 0x80000000) == 0)
    {
      return;
    }

LABEL_10:
    operator delete(v9);
    return;
  }

  operator delete(__p);
  if (v11 < 0)
  {
    goto LABEL_10;
  }
}

void sub_2711CC7E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2711CC82C(uint64_t a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_271135560();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
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

    sub_2711270EC();
  }

  v6 = 8 * ((*(a1 + 8) - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_271127178(v6, *a2, *(a2 + 8));
    v6 = 24 * v2;
  }

  else
  {
    *v6 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 16);
  }

  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = v6 - v8;
  memcpy((v6 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v7;
}

void sub_2711CC96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_271127578(va);
  _Unwind_Resume(a1);
}

void sub_2711CCA40(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106BD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

uint64_t sub_2711CCAC0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_288114A88;
  v3 = *a2;
  *(a1 + 24) = *(a2 + 16);
  *(a1 + 8) = v3;
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 64);
  *(a1 + 88) = *(a2 + 80);
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  *(a1 + 40) = v4;
  v7 = *(a2 + 48) == 0.0;
  if (*(a2 + 56) != 0.0)
  {
    v7 = 0;
  }

  v8 = *(a2 + 64) == 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  v14 = *a2;
  v15 = *(a2 + 16);
  v16 = vdivq_f64(_Q0, *a2);
  *(a1 + 96) = v16;
  *(a1 + 112) = vmulq_f64(v16, vnegq_f64(v15));
  *(a1 + 128) = v14.n128_u64[0];
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 160) = v14.n128_u64[1];
  *(a1 + 168) = 0;
  *(a1 + 176) = v15;
  *(a1 + 192) = 0x3FF0000000000000;
  *(a1 + 200) = v7 && v8;
  *(a1 + 201) = v8;
  sub_2711CCCD0(v20, (a1 + 8), v16, v14);
  v17 = v30;
  if (v30 != 1 || (sub_271130094(v20), (v30 & 1) == 0))
  {
    if (v29 != 1)
    {
      goto LABEL_12;
    }

    if (v28 != 1)
    {
      goto LABEL_9;
    }

    if (v27 < 0)
    {
      operator delete(v26);
      if ((v25 & 0x80000000) == 0)
      {
LABEL_9:
        if (v23 == 1)
        {
          goto LABEL_10;
        }

        goto LABEL_12;
      }
    }

    else if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    operator delete(v24);
    if (v23 == 1)
    {
LABEL_10:
      if (v22 < 0)
      {
        operator delete(__p);
      }
    }

LABEL_12:
    if ((v17 & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "HeikkilaModel parameters invalid");
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
    }
  }

  return a1;
}

void sub_2711CCCD0(uint64_t a1, double *a2, __n128 a3, __n128 a4)
{
  sub_2711CB740(a1, a2, a3, a4);
  if (*(a1 + 120) != 1)
  {
    return;
  }

  v6 = (a2[4] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  if ((a2[4] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v6 = (a2[5] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
    if ((a2[5] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v6 = (a2[6] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      if ((a2[6] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v6 = (a2[7] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
        if ((a2[7] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          v6 = (a2[8] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
        }
      }
    }
  }

  if (v6)
  {
    if ((a2[9] & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      *(a1 + 120) = 1;
      return;
    }

    sub_2711CC04C(v13, "convergence epsilon must be finite");
    v21 = 1;
    sub_2711CBCA8(22, v13, &v31);
    *a1 = v31;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    if (v41 != 1)
    {
      *(a1 + 120) = 0;
      goto LABEL_40;
    }

    *(a1 + 40) = 0;
    v7 = v34;
    if (v34 == 1)
    {
      *(a1 + 16) = v32;
      *(a1 + 32) = v33;
      v33 = 0;
      v32 = 0uLL;
      *(a1 + 40) = 1;
      *(a1 + 48) = 0;
      v8 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v40 & 1) == 0)
      {
LABEL_12:
        *(a1 + 112) = 1;
        *(a1 + 120) = 0;
        if (!v7)
        {
LABEL_40:
          if (v21 == 1)
          {
            if (v20 == 1)
            {
              if (v19 < 0)
              {
                operator delete(v18);
              }

              if (v17 < 0)
              {
                operator delete(v16);
              }
            }

            if (v15 == 1 && v14 < 0)
            {
              operator delete(v13[0]);
            }
          }

          return;
        }

LABEL_38:
        if (SHIBYTE(v33) < 0)
        {
          operator delete(v32);
        }

        goto LABEL_40;
      }
    }

    else
    {
      *(a1 + 48) = 0;
      v8 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v40 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v12 = v37;
    *(v8 + 16) = v36;
    *v8 = v35;
    v35 = 0uLL;
    *(a1 + 72) = v12;
    *(a1 + 80) = v38;
    *(a1 + 96) = v39;
    v36 = 0;
    v38 = 0uLL;
    v39 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (!v7)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  sub_2711CC04C(v22, "distortion coefficients must be finite");
  v30 = 1;
  sub_2711CBCA8(22, v22, &v31);
  *a1 = v31;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (v41 != 1)
  {
    *(a1 + 120) = 0;
    goto LABEL_27;
  }

  *(a1 + 40) = 0;
  v9 = v34;
  if (v34 != 1)
  {
    *(a1 + 48) = 0;
    v10 = a1 + 48;
    *(a1 + 104) = 0;
    if ((v40 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_24:
    v11 = v37;
    *(v10 + 16) = v36;
    *v10 = v35;
    v35 = 0uLL;
    *(a1 + 72) = v11;
    *(a1 + 80) = v38;
    *(a1 + 96) = v39;
    v36 = 0;
    v38 = 0uLL;
    v39 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (!v9)
    {
      goto LABEL_27;
    }

LABEL_25:
    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    goto LABEL_27;
  }

  *(a1 + 16) = v32;
  *(a1 + 32) = v33;
  v33 = 0;
  v32 = 0uLL;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  v10 = a1 + 48;
  *(a1 + 104) = 0;
  if (v40)
  {
    goto LABEL_24;
  }

LABEL_17:
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  if (v9)
  {
    goto LABEL_25;
  }

LABEL_27:
  if (v30 == 1)
  {
    if (v29 == 1)
    {
      if (v28 < 0)
      {
        operator delete(__p);
      }

      if (v26 < 0)
      {
        operator delete(v25);
      }
    }

    if (v24 == 1 && v23 < 0)
    {
      operator delete(v22[0]);
    }
  }
}

void sub_2711CD0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_2711CD0C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_2711CD198(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106AF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2711CD2E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711CD318(const void **a1@<X0>, std::string *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = 7;
  strcpy(v9, "float32");
  sub_271851C68("cv3d::kit::cam::PixelOrigin::Center]", 35, &v11);
  sub_2711309E8(__p, v9, 2uLL);
  sub_271851AD8(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v10 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v9[0]);
    return;
  }

  operator delete(v11.__r_.__value_.__l.__data_);
  if (v10 < 0)
  {
    goto LABEL_13;
  }
}

void sub_2711CD454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_27137F4D0(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a12);
  _Unwind_Resume(a1);
}

void sub_2711CD570(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106B98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2711CD6AC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106AB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

float32x2_t *sub_2711CD758(float32x2_t *a1, float32x2_t *a2)
{
  *a1 = &unk_288114AB8;
  *a1[1].f32 = *a2->f32;
  __asm { FMOV            V0.2S, #1.0 }

  v8 = *a2;
  v9 = a2[1];
  v10 = vdiv_f32(_D0, *a2);
  a1[3] = v10;
  a1[4] = vmul_f32(v10, vneg_f32(v9));
  a1[5].i32[0] = v8.i32[0];
  a1[6] = 0;
  a1[5].i32[1] = 0;
  a1[7].i32[0] = v8.i32[1];
  a1[7].i32[1] = 0;
  a1[8] = v9;
  a1[9].i32[0] = 1065353216;
  sub_2711CD91C(v14, &a1[1]);
  v11 = v24;
  if (v24 == 1)
  {
    sub_271130094(v14);
    if (v24)
    {
      return a1;
    }
  }

  if (v23 != 1)
  {
    goto LABEL_10;
  }

  if (v22 != 1)
  {
    goto LABEL_7;
  }

  if (v21 < 0)
  {
    operator delete(v20);
    if ((v19 & 0x80000000) == 0)
    {
LABEL_7:
      if (v17 == 1)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(v18);
  if (v17 == 1)
  {
LABEL_8:
    if (v16 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_10:
  if ((v11 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "PinholeModel parameters invalid");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  return a1;
}

void sub_2711CD91C(uint64_t a1, float *a2)
{
  v4 = (a2[2] & 0x7FFFFFFFu) < 0x7F800000 && (a2[3] & 0x7FFFFFFFu) < 0x7F800000;
  v5 = (a2[1] & 0x7FFFFFFFu) < 0x7F800000 && (*a2 & 0x7FFFFFFFu) < 0x7F800000;
  if (v5 && v4)
  {
    if (*a2 >= 0.000001 && a2[1] >= 0.000001)
    {
      *(a1 + 120) = 1;
      return;
    }

    v13 = 897988541;
    v47 = 0;
    v48 = v46;
    v49 = "focal length must be positive (>= ";
    v50 = v46;
    v51 = "focal length must be positive (>= ";
    v52 = "focal length must be positive (>= ";
    v53 = &v48;
    sub_2711CC468(&v53);
    sub_2711CDE78(&v45, v46, &v13);
    v48 = v46;
    v49 = ")";
    v50 = v46;
    v51 = ")";
    v52 = ")";
    if (v47 == -1)
    {
      sub_2711308D4();
    }

    v53 = &v48;
    (*(&off_28812E038 + v47))(&v53, v46);
    if (v47 == -1)
    {
      sub_2711308D4();
    }

    v48 = &v53;
    (off_28812E050[v47])(v14, &v48, v46);
    if (v47 != -1)
    {
      (off_28812DFD8[v47])(&v48, v46);
    }

    if (SHIBYTE(v15) < 0)
    {
      sub_271127178(v16, v14[0], v14[1]);
    }

    else
    {
      *v16 = *v14;
      v17 = v15;
    }

    v18 = 1;
    LOBYTE(v19) = 0;
    v23 = 0;
    v24 = 1;
    sub_2711CBCA8(22, v16, &v34);
    *a1 = v34;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    if (v44 == 1)
    {
      *(a1 + 40) = 0;
      v10 = v37;
      if (v37 == 1)
      {
        *(a1 + 16) = v35;
        *(a1 + 32) = v36;
        v36 = 0;
        v35 = 0uLL;
        *(a1 + 40) = 1;
        *(a1 + 48) = 0;
        v11 = a1 + 48;
        *(a1 + 104) = 0;
        if ((v43 & 1) == 0)
        {
LABEL_48:
          *(a1 + 112) = 1;
          *(a1 + 120) = 0;
          if (!v10)
          {
            goto LABEL_55;
          }

LABEL_53:
          if (SHIBYTE(v36) < 0)
          {
            operator delete(v35);
          }

          goto LABEL_55;
        }
      }

      else
      {
        *(a1 + 48) = 0;
        v11 = a1 + 48;
        *(a1 + 104) = 0;
        if ((v43 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      v12 = v40;
      *(v11 + 16) = v39;
      *v11 = v38;
      v39 = 0;
      v38 = 0uLL;
      *(a1 + 72) = v12;
      *(a1 + 80) = v41;
      *(a1 + 96) = v42;
      v41 = 0uLL;
      v42 = 0;
      *(a1 + 104) = 1;
      *(a1 + 112) = 1;
      *(a1 + 120) = 0;
      if (v10)
      {
        goto LABEL_53;
      }
    }

    else
    {
      *(a1 + 120) = 0;
    }

LABEL_55:
    if (v24 == 1)
    {
      if (v23 == 1)
      {
        if (v22 < 0)
        {
          operator delete(__p);
        }

        if (v20 < 0)
        {
          operator delete(v19);
        }
      }

      if (v18 == 1 && SHIBYTE(v17) < 0)
      {
        operator delete(v16[0]);
      }
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14[0]);
    }

    return;
  }

  sub_2711CC04C(v25, "focal length and principal point must be finite");
  v33 = 1;
  sub_2711CBCA8(22, v25, &v34);
  *a1 = v34;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (v44 != 1)
  {
    *(a1 + 120) = 0;
    goto LABEL_35;
  }

  *(a1 + 40) = 0;
  v7 = v37;
  if (v37 != 1)
  {
    *(a1 + 48) = 0;
    v8 = a1 + 48;
    *(a1 + 104) = 0;
    if ((v43 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_32:
    v9 = v40;
    *(v8 + 16) = v39;
    *v8 = v38;
    v39 = 0;
    v38 = 0uLL;
    *(a1 + 72) = v9;
    *(a1 + 80) = v41;
    *(a1 + 96) = v42;
    v41 = 0uLL;
    v42 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (!v7)
    {
      goto LABEL_35;
    }

LABEL_33:
    if (SHIBYTE(v36) < 0)
    {
      operator delete(v35);
    }

    goto LABEL_35;
  }

  *(a1 + 16) = v35;
  *(a1 + 32) = v36;
  v36 = 0;
  v35 = 0uLL;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  v8 = a1 + 48;
  *(a1 + 104) = 0;
  if (v43)
  {
    goto LABEL_32;
  }

LABEL_27:
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  if (v7)
  {
    goto LABEL_33;
  }

LABEL_35:
  if (v33 == 1)
  {
    if (v32 == 1)
    {
      if (v31 < 0)
      {
        operator delete(v30);
      }

      if (v29 < 0)
      {
        operator delete(v28);
      }
    }

    if (v27 == 1 && v26 < 0)
    {
      operator delete(v25[0]);
    }
  }
}

void sub_2711CDDE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711CDE78(uint64_t a1, uint64_t a2, float *a3)
{
  std::to_string(&v19, *a3);
  v5 = v19.__r_.__value_.__r.__words[0];
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = &v19;
  }

  else
  {
    v6 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v19.__r_.__value_.__l.__size_;
  }

  v8 = &v6[-1].__r_.__value_.__r.__words[2] + 7;
  do
  {
    if (!size)
    {
      size = -1;
      if ((*(&v19.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_14;
      }

LABEL_11:
      if (size != HIBYTE(v19.__r_.__value_.__r.__words[2]) - 1)
      {
        v5 = &v19;
        goto LABEL_17;
      }

LABEL_15:
      v20 = a2;
      p_p = &v19;
      v22 = a2;
      v23 = &v19;
      v24 = &v19;
      v10 = *(a2 + 24);
      if (v10 == -1)
      {
        sub_2711308D4();
      }

      goto LABEL_16;
    }

    v9 = v8[size--];
  }

  while (v9 == 48);
  if ((*(&v19.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (size == v19.__r_.__value_.__l.__size_ - 1)
  {
    goto LABEL_15;
  }

LABEL_17:
  if (strtof(v5, 0) != *a3)
  {
    v20 = a2;
    p_p = &v19;
    v22 = a2;
    v23 = &v19;
    v24 = &v19;
    v10 = *(a2 + 24);
    if (v10 == -1)
    {
      sub_2711308D4();
    }

LABEL_16:
    __p = &v20;
    (off_28812E008[v10])(&__p, a2);
    goto LABEL_38;
  }

  v11 = SHIBYTE(v19.__r_.__value_.__r.__words[2]);
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = &v19;
  }

  else
  {
    v12 = v19.__r_.__value_.__r.__words[0];
  }

  v13 = 1;
  if (v12->__r_.__value_.__s.__data_[size] == 46)
  {
    v13 = 2;
  }

  v14 = v13 + size;
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v19.__r_.__value_.__l.__size_;
  }

  if (v11 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v11;
  }

  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  v18 = v15;
  if (v15)
  {
    memmove(&__p, v12, v15);
  }

  *(&__p + v15) = 0;
  v20 = a2;
  p_p = &__p;
  v22 = a2;
  v23 = &__p;
  v24 = &__p;
  v16 = *(a2 + 24);
  if (v16 == -1)
  {
    sub_2711308D4();
  }

  v25 = &v20;
  (off_28812E020[v16])(&v25, a2);
  if ((v18 & 0x80000000) == 0)
  {
LABEL_38:
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_41;
  }

  operator delete(__p);
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return;
  }

LABEL_41:
  operator delete(v19.__r_.__value_.__l.__data_);
}

void sub_2711CE0F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if ((a20 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_2711CE184(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106B28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2711CE250(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106B60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2711CE500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  v23 = *(v21 - 56);
  *(v21 - 56) = 0;
  if (!v23)
  {
    _Unwind_Resume(exception_object);
  }

  sub_27184D728(v21 - 56, v23);
  _Unwind_Resume(exception_object);
}

void sub_2711CE574(uint64_t a1, uint64_t a2)
{
  sub_2711CD91C(a1, a2);
  if (*(a1 + 120) != 1)
  {
    return;
  }

  v4 = (*(a2 + 16) & 0x7FFFFFFFu) < 0x7F800000;
  if ((*(a2 + 16) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v4 = (*(a2 + 20) & 0x7FFFFFFFu) < 0x7F800000;
    if ((*(a2 + 20) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      v4 = (*(a2 + 24) & 0x7FFFFFFFu) < 0x7F800000;
      if ((*(a2 + 24) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v4 = (*(a2 + 28) & 0x7FFFFFFFu) < 0x7F800000;
        if ((*(a2 + 28) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v4 = (*(a2 + 32) & 0x7FFFFFFFu) < 0x7F800000;
        }
      }
    }
  }

  if (v4)
  {
    if ((*(a2 + 36) & 0x7FFFFFFFu) < 0x7F800000)
    {
      *(a1 + 120) = 1;
      return;
    }

    sub_2711CC04C(v11, "convergence epsilon must be finite");
    v19 = 1;
    sub_2711CBCA8(22, v11, &v29);
    *a1 = v29;
    *(a1 + 16) = 0;
    *(a1 + 112) = 0;
    if (v39 != 1)
    {
      *(a1 + 120) = 0;
      goto LABEL_40;
    }

    *(a1 + 40) = 0;
    v5 = v32;
    if (v32 == 1)
    {
      *(a1 + 16) = v30;
      *(a1 + 32) = v31;
      v31 = 0;
      v30 = 0uLL;
      *(a1 + 40) = 1;
      *(a1 + 48) = 0;
      v6 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v38 & 1) == 0)
      {
LABEL_12:
        *(a1 + 112) = 1;
        *(a1 + 120) = 0;
        if (!v5)
        {
LABEL_40:
          if (v19 == 1)
          {
            if (v18 == 1)
            {
              if (v17 < 0)
              {
                operator delete(v16);
              }

              if (v15 < 0)
              {
                operator delete(v14);
              }
            }

            if (v13 == 1 && v12 < 0)
            {
              operator delete(v11[0]);
            }
          }

          return;
        }

LABEL_38:
        if (SHIBYTE(v31) < 0)
        {
          operator delete(v30);
        }

        goto LABEL_40;
      }
    }

    else
    {
      *(a1 + 48) = 0;
      v6 = a1 + 48;
      *(a1 + 104) = 0;
      if ((v38 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v10 = v35;
    *(v6 + 16) = v34;
    *v6 = v33;
    v33 = 0uLL;
    *(a1 + 72) = v10;
    *(a1 + 80) = v36;
    *(a1 + 96) = v37;
    v34 = 0;
    v36 = 0uLL;
    v37 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (!v5)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  sub_2711CC04C(v20, "distortion coefficients must be finite");
  v28 = 1;
  sub_2711CBCA8(22, v20, &v29);
  *a1 = v29;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (v39 != 1)
  {
    *(a1 + 120) = 0;
    goto LABEL_27;
  }

  *(a1 + 40) = 0;
  v7 = v32;
  if (v32 != 1)
  {
    *(a1 + 48) = 0;
    v8 = a1 + 48;
    *(a1 + 104) = 0;
    if ((v38 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_24:
    v9 = v35;
    *(v8 + 16) = v34;
    *v8 = v33;
    v33 = 0uLL;
    *(a1 + 72) = v9;
    *(a1 + 80) = v36;
    *(a1 + 96) = v37;
    v34 = 0;
    v36 = 0uLL;
    v37 = 0;
    *(a1 + 104) = 1;
    *(a1 + 112) = 1;
    *(a1 + 120) = 0;
    if (!v7)
    {
      goto LABEL_27;
    }

LABEL_25:
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30);
    }

    goto LABEL_27;
  }

  *(a1 + 16) = v30;
  *(a1 + 32) = v31;
  v31 = 0;
  v30 = 0uLL;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  v8 = a1 + 48;
  *(a1 + 104) = 0;
  if (v38)
  {
    goto LABEL_24;
  }

LABEL_17:
  *(a1 + 112) = 1;
  *(a1 + 120) = 0;
  if (v7)
  {
    goto LABEL_25;
  }

LABEL_27:
  if (v28 == 1)
  {
    if (v27 == 1)
    {
      if (v26 < 0)
      {
        operator delete(__p);
      }

      if (v24 < 0)
      {
        operator delete(v23);
      }
    }

    if (v22 == 1 && v21 < 0)
    {
      operator delete(v20[0]);
    }
  }
}

void sub_2711CE954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

void sub_2711CE968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  sub_27112D66C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2711CE97C(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_288114A58;
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 36) = *(a2 + 28);
  *(a1 + 24) = v4;
  *(a1 + 8) = v3;
  v6 = *(a2 + 7) == 0.0 && *(a2 + 6) == 0.0;
  v7 = *(a2 + 8) == 0.0;
  __asm { FMOV            V0.2S, #1.0 }

  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = vdiv_f32(_D0, *a2);
  *(a1 + 52) = v14;
  *(a1 + 60) = vmul_f32(v14, vneg_f32(v13));
  *(a1 + 68) = v12;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 84) = HIDWORD(v12);
  *(a1 + 88) = 0;
  *(a1 + 92) = v13;
  *(a1 + 100) = 1065353216;
  *(a1 + 104) = v6 && v7;
  *(a1 + 105) = v7;
  sub_2711CE574(v18, a1 + 8);
  v15 = v28;
  if (v28 == 1)
  {
    sub_271130094(v18);
    if (v28)
    {
      return a1;
    }
  }

  if (v27 != 1)
  {
    goto LABEL_16;
  }

  if (v26 != 1)
  {
    goto LABEL_13;
  }

  if (v25 < 0)
  {
    operator delete(v24);
    if ((v23 & 0x80000000) == 0)
    {
LABEL_13:
      if (v21 == 1)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }
  }

  else if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  operator delete(v22);
  if (v21 == 1)
  {
LABEL_14:
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_16:
  if ((v15 & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "HeikkilaModel parameters invalid");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279E2F410, MEMORY[0x277D82610]);
  }

  return a1;
}

void sub_2711CEC60(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106A80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void sub_2711CEDBC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_288106A48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2743BF050);
}

void *sub_2711CEE38()
{
  if ((atomic_load_explicit(&qword_280877D70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877D70))
  {
    sub_2711CEED0();
  }

  return qword_280877D58;
}

void sub_2711CEFA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711CEFD4(const void **a1@<X0>, std::string *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = 7;
  strcpy(v9, "float64");
  sub_271851C68("cv3d::kit::cam::PixelOrigin::Corner]", 35, &v11);
  sub_2711309E8(__p, v9, 2uLL);
  sub_271851AD8(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v10 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v9[0]);
    return;
  }

  operator delete(v11.__r_.__value_.__l.__data_);
  if (v10 < 0)
  {
    goto LABEL_13;
  }
}

void sub_2711CF110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_27137F4D0(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a12);
  _Unwind_Resume(a1);
}

void *sub_2711CF16C()
{
  if ((atomic_load_explicit(&qword_280877D30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280877D30))
  {
    sub_2711CF204();
  }

  return qword_280877D18;
}

void sub_2711CF2D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711CF308(const void **a1@<X0>, std::string *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = 7;
  strcpy(v9, "float64");
  sub_271851C68("cv3d::kit::cam::PixelOrigin::Center]", 35, &v11);
  sub_2711309E8(__p, v9, 2uLL);
  sub_271851AD8(a1, __p, a2);
  v4 = __p[0];
  if (__p[0])
  {
    v5 = __p[1];
    v6 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p[0];
    }

    __p[1] = v4;
    operator delete(v6);
  }

  if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v10 & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(v9[0]);
    return;
  }

  operator delete(v11.__r_.__value_.__l.__data_);
  if (v10 < 0)
  {
    goto LABEL_13;
  }
}

void sub_2711CF444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_27137F4D0(&a9);
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a12);
  _Unwind_Resume(a1);
}

void sub_2711CF574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711CF678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2711CF6A8(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (result = __dynamic_cast(v2, &unk_2881240F8, &unk_2881241F8, 0)) == 0)
  {
    if ((atomic_load_explicit(&qword_28087B140, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_28087B140))
      {
        sub_2711CFCBC();
      }
    }

    sub_2717412A4(a1, &xmmword_28087B190, "trying to cast camera");
  }

  return result;
}

void *sub_2711CF778(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (result = __dynamic_cast(v2, &unk_2881240F8, &unk_2881241E0, 0)) == 0)
  {
    if ((atomic_load_explicit(&qword_28087B148, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_28087B148))
      {
        sub_2711CFE18();
      }
    }

    sub_2717412A4(a1, &xmmword_28087B1A8, "trying to cast camera");
  }

  return result;
}

void *sub_2711CF848(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (result = __dynamic_cast(v2, &unk_2881240F8, &unk_288124198, 0)) == 0)
  {
    if ((atomic_load_explicit(&qword_28087B150, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_28087B150))
      {
        sub_2711CFF74();
      }
    }

    sub_2717412A4(a1, &xmmword_28087B1C0, "trying to cast camera");
  }

  return result;
}

void *sub_2711CF918(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2 || (result = __dynamic_cast(v2, &unk_2881240F8, &unk_288124180, 0)) == 0)
  {
    if ((atomic_load_explicit(&qword_28087B158, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_28087B158))
      {
        sub_2711D00D0();
      }
    }

    sub_2717412A4(a1, &xmmword_28087B1D8, "trying to cast camera");
  }

  return result;
}

void sub_2711CF9E8(uint64_t a1, const char *a2, const char *a3, _BYTE *a4)
{
  v8 = 0;
  v9 = v7;
  v10 = "Cannot get ";
  v11 = v7;
  v12 = "Cannot get ";
  v13 = "Cannot get ";
  v14 = &v9;
  sub_2711D0494(&v14);
  if (*a2)
  {
    v9 = v7;
    v10 = a2;
    v11 = v7;
    v12 = a2;
    v13 = a2;
    if (v8 != -1)
    {
      v14 = &v9;
      (off_28812E1E8[v8])(&v14, v7);
      goto LABEL_6;
    }
  }

  else
  {
    v9 = v7;
    v10 = "nullptr";
    v11 = v7;
    v12 = "nullptr";
    v13 = "nullptr";
    if (v8 != -1)
    {
      v14 = &v9;
      (*(&off_28812DFF0 + v8))(&v14, v7);
LABEL_6:
      v9 = v7;
      v10 = " as ";
      v11 = v7;
      v12 = " as ";
      v13 = " as ";
      if (v8 != -1)
      {
        v14 = &v9;
        (off_28812E200[v8])(&v14, v7);
        v9 = v7;
        v10 = a3;
        v11 = v7;
        v12 = a3;
        v13 = a3;
        if (v8 != -1)
        {
          v14 = &v9;
          (off_28812E218[v8])(&v14, v7);
          v9 = v7;
          v10 = ", camera value type is ";
          v11 = v7;
          v12 = ", camera value type is ";
          v13 = ", camera value type is ";
          if (v8 != -1)
          {
            v14 = &v9;
            (off_28812E230[v8])(&v14, v7);
            sub_2711D022C(v7, a4);
          }

          sub_2711308D4();
        }

        sub_2711308D4();
      }

      sub_2711308D4();
    }
  }

  sub_2711308D4();
}

void sub_2711CFDD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711CFF30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711D008C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711D01E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2711D0450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_2711D0494(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812DFD8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void *sub_2711D0598(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_2711D0998(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_271120DA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_2711D0698(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_28812DFD8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_271120DA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}