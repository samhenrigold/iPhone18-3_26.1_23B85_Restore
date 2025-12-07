void sub_29AA6FF54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AA70024(void *a1, uint64_t a2)
{
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(v26, a1 + 12);
  if ((v26[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v26[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v28);
  if ((v26[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v26[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v26, a1 + 12);
  if (v27)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&v25, a1 + 12);
    if (v25.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v26, a1 + 12);
      if (v26[0] != 1)
      {
        v6 = sub_29AABB028();
        v7 = v6;
        if ((a1[1] & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v8 = ((a1[1] & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
        }

        if (*(v8 + 23) < 0)
        {
          sub_29A008D14(&v25, *v8, v8[1]);
        }

        else
        {
          v16 = *v8;
          v25.__r_.__value_.__r.__words[2] = v8[2];
          *&v25.__r_.__value_.__l.__data_ = v16;
        }

        v17 = std::string::insert(&v25, 0, "decode: unable to write data for ");
        v18 = *&v17->__r_.__value_.__l.__data_;
        v27 = v17->__r_.__value_.__r.__words[2];
        *v26 = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        sub_29AA5B750(v7, v26);
        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26[0]);
        }

        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v29) < 0)
        {
          operator delete(v28);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
      }
    }
  }

  if (SHIBYTE(v29) < 0)
  {
    sub_29A008D14(__dst, v28, *(&v28 + 1));
  }

  else
  {
    *__dst = v28;
    v24 = v29;
  }

  if (sub_29AA696E4(__dst))
  {
    v5 = 1;
  }

  else
  {
    if (SHIBYTE(v29) < 0)
    {
      sub_29A008D14(v21, v28, *(&v28 + 1));
    }

    else
    {
      *v21 = v28;
      v22 = v29;
    }

    if (sub_29AA69438(v21))
    {
      v5 = 1;
    }

    else
    {
      if (SHIBYTE(v29) < 0)
      {
        sub_29A008D14(__p, v28, *(&v28 + 1));
      }

      else
      {
        *__p = v28;
        v20 = v29;
      }

      v5 = sub_29AA69990(__p);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__dst[0]);
    if (v5)
    {
LABEL_30:
      sub_29A19E500((a1 + 2));
      v9 = a1[2];
      if (v9 >= 4)
      {
        v10 = a1[6];
        v11 = v9 >> 2;
        do
        {
          LOBYTE(v26[0]) = *v10;
          sub_29AA7EC34(v30, v26);
          ++v10;
          --v11;
        }

        while (v11);
      }

      goto LABEL_38;
    }
  }

  else if (v5)
  {
    goto LABEL_30;
  }

  sub_29A19E500((a1 + 2));
  v12 = a1[2];
  if (v12 >= 4)
  {
    v13 = a1[6];
    v14 = v12 >> 2;
    do
    {
      v15 = *v13++;
      LOBYTE(v26[0]) = v15;
      sub_29AA7EC34(v30, v26);
      --v14;
    }

    while (v14);
  }

LABEL_38:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>();
}

void sub_29AA70328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

void sub_29AA703F8(void *a1, uint64_t a2)
{
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(v26, a1 + 12);
  if ((v26[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v26[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v28);
  if ((v26[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v26[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v26, a1 + 12);
  if (v27)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&v25, a1 + 12);
    if (v25.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v26, a1 + 12);
      if (v26[0] != 1)
      {
        v6 = sub_29AABB028();
        v7 = v6;
        if ((a1[1] & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          v8 = ((a1[1] & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
        }

        if (*(v8 + 23) < 0)
        {
          sub_29A008D14(&v25, *v8, v8[1]);
        }

        else
        {
          v16 = *v8;
          v25.__r_.__value_.__r.__words[2] = v8[2];
          *&v25.__r_.__value_.__l.__data_ = v16;
        }

        v17 = std::string::insert(&v25, 0, "decode: unable to write data for ");
        v18 = *&v17->__r_.__value_.__l.__data_;
        v27 = v17->__r_.__value_.__r.__words[2];
        *v26 = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        sub_29AA5B750(v7, v26);
        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26[0]);
        }

        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v29) < 0)
        {
          operator delete(v28);
        }

        pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
      }
    }
  }

  if (SHIBYTE(v29) < 0)
  {
    sub_29A008D14(__dst, v28, *(&v28 + 1));
  }

  else
  {
    *__dst = v28;
    v24 = v29;
  }

  if (sub_29AA696E4(__dst))
  {
    v5 = 1;
  }

  else
  {
    if (SHIBYTE(v29) < 0)
    {
      sub_29A008D14(v21, v28, *(&v28 + 1));
    }

    else
    {
      *v21 = v28;
      v22 = v29;
    }

    if (sub_29AA69438(v21))
    {
      v5 = 1;
    }

    else
    {
      if (SHIBYTE(v29) < 0)
      {
        sub_29A008D14(__p, v28, *(&v28 + 1));
      }

      else
      {
        *__p = v28;
        v20 = v29;
      }

      v5 = sub_29AA69990(__p);
      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__dst[0]);
    if (v5)
    {
LABEL_30:
      sub_29A19E500((a1 + 2));
      v9 = a1[2];
      if (v9 >= 4)
      {
        v10 = a1[6];
        v11 = v9 >> 2;
        do
        {
          LODWORD(v26[0]) = *v10;
          sub_29A8527F4(v30, v26);
          ++v10;
          --v11;
        }

        while (v11);
      }

      goto LABEL_38;
    }
  }

  else if (v5)
  {
    goto LABEL_30;
  }

  sub_29A19E500((a1 + 2));
  v12 = a1[2];
  if (v12 >= 4)
  {
    v13 = a1[6];
    v14 = v12 >> 2;
    do
    {
      v15 = *v13++;
      LODWORD(v26[0]) = v15;
      sub_29A8527F4(v30, v26);
      --v14;
    }

    while (v14);
  }

LABEL_38:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>();
}

void sub_29AA706FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
}

void sub_29AA707CC(void *a1, uint64_t a2)
{
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, a1 + 12);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v32);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a1 + 12);
  if (!v31 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&__dst, a1 + 12), !__dst.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a1 + 12), v5 = __p[0], __p[0] < 2))
  {
    v6 = sub_29AABB028();
    v7 = v6;
    if ((a1[1] & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v8 = ((a1[1] & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
    }

    if (*(v8 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v8, v8[1]);
    }

    else
    {
      v9 = *v8;
      __dst.__r_.__value_.__r.__words[2] = v8[2];
      *&__dst.__r_.__value_.__l.__data_ = v9;
    }

    v10 = std::string::insert(&__dst, 0, "decode: unable to write data for ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v31 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, __p);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
  }

  if (SHIBYTE(v33) < 0)
  {
    sub_29A008D14(v27, v32, *(&v32 + 1));
  }

  else
  {
    *v27 = v32;
    v28 = v33;
  }

  if (sub_29AA696E4(v27))
  {
    v12 = 1;
  }

  else
  {
    if (SHIBYTE(v33) < 0)
    {
      sub_29A008D14(v25, v32, *(&v32 + 1));
    }

    else
    {
      *v25 = v32;
      v26 = v33;
    }

    if (sub_29AA69438(v25))
    {
      v12 = 1;
    }

    else
    {
      if (SHIBYTE(v33) < 0)
      {
        sub_29A008D14(v23, v32, *(&v32 + 1));
      }

      else
      {
        *v23 = v32;
        v24 = v33;
      }

      v12 = sub_29AA69990(v23);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23[0]);
      }
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
    if (v12)
    {
LABEL_41:
      sub_29A19E500((a1 + 2));
      v13 = a1[2];
      if (v13 >= 4)
      {
        v14 = 0;
        v15 = a1[6];
        v16 = v13 >> 2;
        do
        {
          v17 = 0;
          do
          {
            *(__p + v17) = *(v15 + 4 * v14 + 4 * v17);
            v17 = v17 + 1;
          }

          while (v5 != v17);
          sub_29AA26404(v34, __p);
          v14 += v5;
        }

        while (v16 > v14);
      }

      goto LABEL_53;
    }
  }

  else if (v12)
  {
    goto LABEL_41;
  }

  sub_29A19E500((a1 + 2));
  v18 = a1[2];
  if (v18 >= 4)
  {
    v19 = 0;
    v20 = a1[6];
    v21 = v18 >> 2;
    do
    {
      v22 = 0;
      do
      {
        *(__p + v22) = *(v20 + 4 * v19 + 4 * v22);
        v22 = v22 + 1;
      }

      while (v5 != v22);
      sub_29AA26404(v34, __p);
      v19 += v5;
    }

    while (v21 > v19);
  }

LABEL_53:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>();
}

void sub_29AA70B1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
}

void sub_29AA70BEC(void *a1, uint64_t a2)
{
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, a1 + 12);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v32);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a1 + 12);
  if (!v31 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&__dst, a1 + 12), !__dst.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a1 + 12), v5 = __p[0], __p[0] < 2))
  {
    v6 = sub_29AABB028();
    v7 = v6;
    if ((a1[1] & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v8 = ((a1[1] & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
    }

    if (*(v8 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v8, v8[1]);
    }

    else
    {
      v9 = *v8;
      __dst.__r_.__value_.__r.__words[2] = v8[2];
      *&__dst.__r_.__value_.__l.__data_ = v9;
    }

    v10 = std::string::insert(&__dst, 0, "decode: unable to write data for ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v31 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, __p);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
  }

  if (SHIBYTE(v33) < 0)
  {
    sub_29A008D14(v27, v32, *(&v32 + 1));
  }

  else
  {
    *v27 = v32;
    v28 = v33;
  }

  if (sub_29AA696E4(v27))
  {
    v12 = 1;
  }

  else
  {
    if (SHIBYTE(v33) < 0)
    {
      sub_29A008D14(v25, v32, *(&v32 + 1));
    }

    else
    {
      *v25 = v32;
      v26 = v33;
    }

    if (sub_29AA69438(v25))
    {
      v12 = 1;
    }

    else
    {
      if (SHIBYTE(v33) < 0)
      {
        sub_29A008D14(v23, v32, *(&v32 + 1));
      }

      else
      {
        *v23 = v32;
        v24 = v33;
      }

      v12 = sub_29AA69990(v23);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23[0]);
      }
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
    if (v12)
    {
LABEL_41:
      sub_29A19E500((a1 + 2));
      v13 = a1[2];
      if (v13 >= 4)
      {
        v14 = 0;
        v15 = a1[6];
        v16 = v13 >> 2;
        do
        {
          v17 = 0;
          do
          {
            *(__p + v17) = *(v15 + 4 * v14 + 4 * v17);
            v17 = v17 + 1;
          }

          while (v5 != v17);
          sub_29A7AE8D8(v34, __p);
          v14 += v5;
        }

        while (v16 > v14);
      }

      goto LABEL_53;
    }
  }

  else if (v12)
  {
    goto LABEL_41;
  }

  sub_29A19E500((a1 + 2));
  v18 = a1[2];
  if (v18 >= 4)
  {
    v19 = 0;
    v20 = a1[6];
    v21 = v18 >> 2;
    do
    {
      v22 = 0;
      do
      {
        *(__p + v22) = *(v20 + 4 * v19 + 4 * v22);
        v22 = v22 + 1;
      }

      while (v5 != v22);
      sub_29A7AE8D8(v34, __p);
      v19 += v5;
    }

    while (v21 > v19);
  }

LABEL_53:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>();
}

void sub_29AA70F3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
}

void sub_29AA7100C(void *a1, uint64_t a2)
{
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, a1 + 12);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v32);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a1 + 12);
  if (!v31 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&__dst, a1 + 12), !__dst.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a1 + 12), v5 = __p[0], __p[0] < 2))
  {
    v6 = sub_29AABB028();
    v7 = v6;
    if ((a1[1] & 0xFFFFFFFFFFFFFFF8) != 0)
    {
      v8 = ((a1[1] & 0xFFFFFFFFFFFFFFF8) + 16);
    }

    else
    {
      v8 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v6);
    }

    if (*(v8 + 23) < 0)
    {
      sub_29A008D14(&__dst, *v8, v8[1]);
    }

    else
    {
      v9 = *v8;
      __dst.__r_.__value_.__r.__words[2] = v8[2];
      *&__dst.__r_.__value_.__l.__data_ = v9;
    }

    v10 = std::string::insert(&__dst, 0, "decode: unable to write data for ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v31 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, __p);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32);
    }

    pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
  }

  if (SHIBYTE(v33) < 0)
  {
    sub_29A008D14(v27, v32, *(&v32 + 1));
  }

  else
  {
    *v27 = v32;
    v28 = v33;
  }

  if (sub_29AA696E4(v27))
  {
    v12 = 1;
  }

  else
  {
    if (SHIBYTE(v33) < 0)
    {
      sub_29A008D14(v25, v32, *(&v32 + 1));
    }

    else
    {
      *v25 = v32;
      v26 = v33;
    }

    if (sub_29AA69438(v25))
    {
      v12 = 1;
    }

    else
    {
      if (SHIBYTE(v33) < 0)
      {
        sub_29A008D14(v23, v32, *(&v32 + 1));
      }

      else
      {
        *v23 = v32;
        v24 = v33;
      }

      v12 = sub_29AA69990(v23);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23[0]);
      }
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
    if (v12)
    {
LABEL_41:
      sub_29A19E500((a1 + 2));
      v13 = a1[2];
      if (v13 >= 4)
      {
        v14 = 0;
        v15 = a1[6];
        v16 = v13 >> 2;
        do
        {
          v17 = 0;
          do
          {
            *(__p + v17) = *(v15 + 4 * v14 + 4 * v17);
            v17 = v17 + 1;
          }

          while (v5 != v17);
          sub_29AA7ECDC(v34, __p);
          v14 += v5;
        }

        while (v16 > v14);
      }

      goto LABEL_53;
    }
  }

  else if (v12)
  {
    goto LABEL_41;
  }

  sub_29A19E500((a1 + 2));
  v18 = a1[2];
  if (v18 >= 4)
  {
    v19 = 0;
    v20 = a1[6];
    v21 = v18 >> 2;
    do
    {
      v22 = 0;
      do
      {
        *(__p + v22) = *(v20 + 4 * v19 + 4 * v22);
        v22 = v22 + 1;
      }

      while (v5 != v22);
      sub_29AA7ECDC(v34, __p);
      v19 += v5;
    }

    while (v21 > v19);
  }

LABEL_53:
  pxrInternal__aapl__pxrReserved__::UsdAttribute::_Set<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>();
}

void sub_29AA7135C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (*(v37 - 113) < 0)
  {
    operator delete(*(v37 - 136));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
}

unint64_t sub_29AA7142C(pxrInternal__aapl__pxrReserved__::UsdAttribute *a1, uint64_t a2)
{
  v4 = sub_29A5A6058(a1);
  if ((*v4 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v4 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v4);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(__dst, *EmptyString, EmptyString[1]);
  }

  else
  {
    v6 = *EmptyString;
    v14 = EmptyString[2];
    *__dst = v6;
  }

  v7 = sub_29A01BCCC(a2, __dst);
  sub_29A008E78(__p, "*");
  v8 = sub_29A01BCCC(a2, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (a2 + 8 == v7)
  {
    if (v7 == v8)
    {
      v9 = sub_29AAACBA8(a1);
    }

    else
    {
      v9 = *(v8 + 56);
    }
  }

  else
  {
    v9 = *(v7 + 56);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst[0]);
  }

  return v9;
}

void sub_29AA71528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA71564(uint64_t a1)
{
  v34[0] = 0;
  v34[1] = 0;
  v33 = v34;
  sub_29AA71B98(a1, &__p);
  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v32, &__p);
  sub_29A008E78(&v30, "v");
  v35 = &v30;
  v3 = sub_29AA7ED84(&v33, &v30, &unk_29B4D6118, &v35, &v36);
  v4 = v32;
  v32 = 0uLL;
  v5 = v3[8];
  *(v3 + 7) = v4;
  if (v5)
  {
    sub_29A014BEC(v5);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (*(&v32 + 1))
  {
    sub_29A014BEC(*(&v32 + 1));
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a1 + 132) == 1)
  {
    pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v30, 1);
    sub_29A008E78(&__p, "hole");
    *&v32 = &__p;
    v6 = sub_29AA7ED84(&v33, &__p.__r_.__value_.__l.__data_, &unk_29B4D6118, &v32, &v35);
LABEL_39:
    v21 = v30;
    v30 = 0uLL;
    v22 = v6[8];
    *(v6 + 7) = v21;
    if (v22)
    {
      sub_29A014BEC(v22);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (*(&v30 + 1))
    {
      sub_29A014BEC(*(&v30 + 1));
    }

    goto LABEL_45;
  }

  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(&v35, (a1 + 96));
  if ((v35 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v35 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v30, EmptyString);
  sub_29A008E78(&__p, "tp");
  *&v32 = &__p;
  v9 = sub_29AA7ED84(&v33, &__p.__r_.__value_.__l.__data_, &unk_29B4D6118, &v32, &v36);
  v10 = v30;
  v30 = 0uLL;
  v11 = v9[8];
  *(v9 + 7) = v10;
  if (v11)
  {
    sub_29A014BEC(v11);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = *(&v30 + 1);
  if (*(&v30 + 1))
  {
    sub_29A014BEC(*(&v30 + 1));
  }

  if ((v35 & 7) != 0)
  {
    atomic_fetch_add_explicit((v35 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  if ((*(a1 + 104) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v13 = ((*(a1 + 104) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v13 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v12);
  }

  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v30, v13);
  sub_29A008E78(&__p, "int");
  *&v32 = &__p;
  v14 = sub_29AA7ED84(&v33, &__p.__r_.__value_.__l.__data_, &unk_29B4D6118, &v32, &v35);
  v15 = v30;
  v30 = 0uLL;
  v16 = v14[8];
  *(v14 + 7) = v15;
  if (v16)
  {
    sub_29A014BEC(v16);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(&v30 + 1))
  {
    sub_29A014BEC(*(&v30 + 1));
  }

  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v30, *(a1 + 112));
  sub_29A008E78(&__p, "hi");
  *&v32 = &__p;
  v17 = sub_29AA7ED84(&v33, &__p.__r_.__value_.__l.__data_, &unk_29B4D6118, &v32, &v35);
  v18 = v30;
  v30 = 0uLL;
  v19 = v17[8];
  *(v17 + 7) = v18;
  if (v19)
  {
    sub_29A014BEC(v19);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(&v30 + 1))
  {
    sub_29A014BEC(*(&v30 + 1));
  }

  v20 = *(a1 + 116);
  if (v20 >= 2)
  {
    pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v30, v20);
    sub_29A008E78(&__p, "es");
    *&v32 = &__p;
    v6 = sub_29AA7ED84(&v33, &__p.__r_.__value_.__l.__data_, &unk_29B4D6118, &v32, &v35);
    goto LABEL_39;
  }

LABEL_45:
  sub_29A008864(&__p);
  pxrInternal__aapl__pxrReserved__::JsWriter::JsWriter(&v32, &__p.__r_.__value_.__r.__words[2], 0);
  pxrInternal__aapl__pxrReserved__::JsValue::JsValue(&v30, &v33);
  pxrInternal__aapl__pxrReserved__::JsWriteValue(&v32, &v30, v23);
  if (*(&v30 + 1))
  {
    sub_29A014BEC(*(&v30 + 1));
  }

  std::stringbuf::str();
  pxrInternal__aapl__pxrReserved__::JsWriter::~JsWriter(&v32);
  __p.__r_.__value_.__r.__words[0] = *MEMORY[0x29EDC9528];
  v24 = *(MEMORY[0x29EDC9528] + 72);
  *(__p.__r_.__value_.__r.__words + *(__p.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  __p.__r_.__value_.__r.__words[2] = v24;
  v26 = MEMORY[0x29EDC9570] + 16;
  if (v28 < 0)
  {
    operator delete(v27[7].__locale_);
  }

  v26 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v27);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](&v29);
  sub_29A09932C(&v33, v34[0]);
}

void sub_29AA71A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = *(v15 - 136);
  if (v17)
  {
    sub_29A014BEC(v17);
  }

  sub_29A09932C(v15 - 88, *(v15 - 80));
  _Unwind_Resume(a1);
}

void sub_29AA71B98(unsigned __int8 *a1@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v25, *a1);
  sub_29A008E78(v23, ".");
  if ((v24 & 0x80u) == 0)
  {
    v4 = v23;
  }

  else
  {
    v4 = v23[0];
  }

  if ((v24 & 0x80u) == 0)
  {
    v5 = v24;
  }

  else
  {
    v5 = v23[1];
  }

  v6 = std::string::append(&v25, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v22, a1[1]);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v22;
  }

  else
  {
    v8 = v22.__r_.__value_.__r.__words[0];
  }

  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v22.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v26, v8, size);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  sub_29A008E78(__p, ".");
  if ((v21 & 0x80u) == 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v13 = v21;
  }

  else
  {
    v13 = __p[1];
  }

  v14 = std::string::append(&v27, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v19, *(a1 + 1));
  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v19;
  }

  else
  {
    v16 = v19.__r_.__value_.__r.__words[0];
  }

  if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v19.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v19.__r_.__value_.__l.__size_;
  }

  v18 = std::string::append(&v28, v16, v17);
  *a2 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (v24 < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }
}

void sub_29AA71D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v45 - 57) < 0)
  {
    operator delete(*(v45 - 80));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v45 - 89) < 0)
  {
    operator delete(*(v45 - 112));
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA71E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v9 = sub_29A580660(v19, (a2 + 8), (a2 + 16));
  v10 = sub_29A5A6058(v9);
  if ((*v10 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v10 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v10);
  }

  std::string::operator=((a1 + 8), EmptyString);
  sub_29A116F64(a5);
  v18 = 0;
  if (!(*(a1 + 416))(&v18))
  {
    pxrInternal__aapl__pxrReserved__::UsdGeomPointBased::GetPointsAttr(&v17, a2);
    pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v17);
  }

  v12 = sub_29AABB028();
  sub_29A008E78(__p, "encode: GCLBufferListNew");
  sub_29AA5B750(v12, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  (*(a1 + 424))(v18);
  if ((v23 & 7) != 0)
  {
    atomic_fetch_add_explicit((v23 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v22);
  sub_29A1DE3A4(&v21);
  if (v20)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v20, v13);
  }

  return 110;
}

uint64_t sub_29AA750C8(uint64_t a1, size_t a2, unsigned __int8 *a3)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_29A19E29C(a1);
  v7 = a3;
  sub_29A19E2EC(a1, a2, &v7);
  return a1;
}

void sub_29AA75140(uint64_t a1, void *a2)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(v12, a2 + 12);
  if ((v12[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v12[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v14);
  if ((v12[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v12[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v12, a2 + 12);
  if (!v13 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&v11, a2 + 12), !v11.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v12, a2 + 12), v12[0] == 1))
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>>();
  }

  v5 = sub_29AABB028();
  v6 = v5;
  if ((a2[1] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((a2[1] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  if (*(v7 + 23) < 0)
  {
    sub_29A008D14(&v11, *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    v11.__r_.__value_.__r.__words[2] = v7[2];
    *&v11.__r_.__value_.__l.__data_ = v8;
  }

  v9 = std::string::insert(&v11, 0, "encode: unable to read data for ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13 = v9->__r_.__value_.__r.__words[2];
  *v12 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v6, v12);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
}

void sub_29AA754A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (*(v37 - 97) < 0)
  {
    operator delete(*(v37 - 120));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::pxr_half::half>::_DecRef();
}

void sub_29AA75574(uint64_t a1, void *a2)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(v12, a2 + 12);
  if ((v12[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v12[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v14);
  if ((v12[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v12[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v12, a2 + 12);
  if (!v13 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&v11, a2 + 12), !v11.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v12, a2 + 12), v12[0] == 1))
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<float>>();
  }

  v5 = sub_29AABB028();
  v6 = v5;
  if ((a2[1] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((a2[1] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  if (*(v7 + 23) < 0)
  {
    sub_29A008D14(&v11, *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    v11.__r_.__value_.__r.__words[2] = v7[2];
    *&v11.__r_.__value_.__l.__data_ = v8;
  }

  v9 = std::string::insert(&v11, 0, "encode: unable to read data for ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13 = v9->__r_.__value_.__r.__words[2];
  *v12 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v6, v12);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29AA758B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<float>::_DecRef();
}

void sub_29AA75988(uint64_t a1, void *a2)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(v12, a2 + 12);
  if ((v12[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v12[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v14);
  if ((v12[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v12[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v12, a2 + 12);
  if (!v13 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&v11, a2 + 12), !v11.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v12, a2 + 12), v12[0] == 1))
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<double>>();
  }

  v5 = sub_29AABB028();
  v6 = v5;
  if ((a2[1] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((a2[1] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  if (*(v7 + 23) < 0)
  {
    sub_29A008D14(&v11, *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    v11.__r_.__value_.__r.__words[2] = v7[2];
    *&v11.__r_.__value_.__l.__data_ = v8;
  }

  v9 = std::string::insert(&v11, 0, "encode: unable to read data for ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13 = v9->__r_.__value_.__r.__words[2];
  *v12 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v6, v12);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

void sub_29AA75CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<double>::_DecRef();
}

void sub_29AA75DA0(uint64_t a1, void *a2)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, a2 + 12);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v14);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a2 + 12);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&__dst, a2 + 12);
    if (__dst.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a2 + 12);
      if (__p[0] >= 2)
      {
        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>>();
      }
    }
  }

  v5 = sub_29AABB028();
  v6 = v5;
  if ((a2[1] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((a2[1] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  if (*(v7 + 23) < 0)
  {
    sub_29A008D14(&__dst, *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    __dst.__r_.__value_.__r.__words[2] = v7[2];
    *&__dst.__r_.__value_.__l.__data_ = v8;
  }

  v9 = std::string::insert(&__dst, 0, "encode: unable to read data for ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v6, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
}

void sub_29AA76168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2h>::_DecRef();
}

void sub_29AA76238(uint64_t a1, void *a2)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, a2 + 12);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v14);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a2 + 12);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&__dst, a2 + 12);
    if (__dst.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a2 + 12);
      if (__p[0] >= 2)
      {
        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>>();
      }
    }
  }

  v5 = sub_29AABB028();
  v6 = v5;
  if ((a2[1] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((a2[1] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  if (*(v7 + 23) < 0)
  {
    sub_29A008D14(&__dst, *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    __dst.__r_.__value_.__r.__words[2] = v7[2];
    *&__dst.__r_.__value_.__l.__data_ = v8;
  }

  v9 = std::string::insert(&__dst, 0, "encode: unable to read data for ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v6, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
}

void sub_29AA76600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3h>::_DecRef();
}

void sub_29AA766D0(uint64_t a1, void *a2)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, a2 + 12);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v14);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a2 + 12);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&__dst, a2 + 12);
    if (__dst.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a2 + 12);
      if (__p[0] >= 2)
      {
        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>>();
      }
    }
  }

  v5 = sub_29AABB028();
  v6 = v5;
  if ((a2[1] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((a2[1] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  if (*(v7 + 23) < 0)
  {
    sub_29A008D14(&__dst, *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    __dst.__r_.__value_.__r.__words[2] = v7[2];
    *&__dst.__r_.__value_.__l.__data_ = v8;
  }

  v9 = std::string::insert(&__dst, 0, "encode: unable to read data for ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v6, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
}

void sub_29AA76A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4h>::_DecRef();
}

void sub_29AA76B68(uint64_t a1, void *a2)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, a2 + 12);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v14);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a2 + 12);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&__dst, a2 + 12);
    if (__dst.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a2 + 12);
      if (__p[0] >= 2)
      {
        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>>();
      }
    }
  }

  v5 = sub_29AABB028();
  v6 = v5;
  if ((a2[1] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((a2[1] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  if (*(v7 + 23) < 0)
  {
    sub_29A008D14(&__dst, *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    __dst.__r_.__value_.__r.__words[2] = v7[2];
    *&__dst.__r_.__value_.__l.__data_ = v8;
  }

  v9 = std::string::insert(&__dst, 0, "encode: unable to read data for ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v6, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
}

void sub_29AA76F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2f>::_DecRef();
}

void sub_29AA76FE8(uint64_t a1, void *a2)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, a2 + 12);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v14);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a2 + 12);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&__dst, a2 + 12);
    if (__dst.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a2 + 12);
      if (__p[0] >= 2)
      {
        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>>();
      }
    }
  }

  v5 = sub_29AABB028();
  v6 = v5;
  if ((a2[1] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((a2[1] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  if (*(v7 + 23) < 0)
  {
    sub_29A008D14(&__dst, *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    __dst.__r_.__value_.__r.__words[2] = v7[2];
    *&__dst.__r_.__value_.__l.__data_ = v8;
  }

  v9 = std::string::insert(&__dst, 0, "encode: unable to read data for ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v6, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void sub_29AA77398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3f>::_DecRef();
}

void sub_29AA77468(uint64_t a1, void *a2)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, a2 + 12);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v14);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a2 + 12);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&__dst, a2 + 12);
    if (__dst.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a2 + 12);
      if (__p[0] >= 2)
      {
        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>>();
      }
    }
  }

  v5 = sub_29AABB028();
  v6 = v5;
  if ((a2[1] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((a2[1] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  if (*(v7 + 23) < 0)
  {
    sub_29A008D14(&__dst, *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    __dst.__r_.__value_.__r.__words[2] = v7[2];
    *&__dst.__r_.__value_.__l.__data_ = v8;
  }

  v9 = std::string::insert(&__dst, 0, "encode: unable to read data for ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v6, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
}

void sub_29AA77818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4f>::_DecRef();
}

void sub_29AA778E8(uint64_t a1, void *a2)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, a2 + 12);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v14);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a2 + 12);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&__dst, a2 + 12);
    if (__dst.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a2 + 12);
      if (__p[0] >= 2)
      {
        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>>();
      }
    }
  }

  v5 = sub_29AABB028();
  v6 = v5;
  if ((a2[1] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((a2[1] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  if (*(v7 + 23) < 0)
  {
    sub_29A008D14(&__dst, *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    __dst.__r_.__value_.__r.__words[2] = v7[2];
    *&__dst.__r_.__value_.__l.__data_ = v8;
  }

  v9 = std::string::insert(&__dst, 0, "encode: unable to read data for ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v6, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
}

void sub_29AA77C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2d>::_DecRef();
}

void sub_29AA77D6C(uint64_t a1, void *a2)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, a2 + 12);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v14);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a2 + 12);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&__dst, a2 + 12);
    if (__dst.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a2 + 12);
      if (__p[0] >= 2)
      {
        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>>();
      }
    }
  }

  v5 = sub_29AABB028();
  v6 = v5;
  if ((a2[1] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((a2[1] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  if (*(v7 + 23) < 0)
  {
    sub_29A008D14(&__dst, *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    __dst.__r_.__value_.__r.__words[2] = v7[2];
    *&__dst.__r_.__value_.__l.__data_ = v8;
  }

  v9 = std::string::insert(&__dst, 0, "encode: unable to read data for ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v6, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
}

void sub_29AA78120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3d>::_DecRef();
}

void sub_29AA781F0(uint64_t a1, void *a2)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, a2 + 12);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v14);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a2 + 12);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&__dst, a2 + 12);
    if (__dst.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a2 + 12);
      if (__p[0] >= 2)
      {
        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>>();
      }
    }
  }

  v5 = sub_29AABB028();
  v6 = v5;
  if ((a2[1] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((a2[1] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  if (*(v7 + 23) < 0)
  {
    sub_29A008D14(&__dst, *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    __dst.__r_.__value_.__r.__words[2] = v7[2];
    *&__dst.__r_.__value_.__l.__data_ = v8;
  }

  v9 = std::string::insert(&__dst, 0, "encode: unable to read data for ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v6, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
}

void sub_29AA785A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4d>::_DecRef();
}

void sub_29AA78674(uint64_t a1, void *a2)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(v12, a2 + 12);
  if ((v12[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v12[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v14);
  if ((v12[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v12[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v12, a2 + 12);
  if (!v13 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&v11, a2 + 12), !v11.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v12, a2 + 12), v12[0] == 1))
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<BOOL>>();
  }

  v5 = sub_29AABB028();
  v6 = v5;
  if ((a2[1] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((a2[1] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  if (*(v7 + 23) < 0)
  {
    sub_29A008D14(&v11, *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    v11.__r_.__value_.__r.__words[2] = v7[2];
    *&v11.__r_.__value_.__l.__data_ = v8;
  }

  v9 = std::string::insert(&v11, 0, "encode: unable to read data for ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13 = v9->__r_.__value_.__r.__words[2];
  *v12 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v6, v12);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
}

void sub_29AA789B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<BOOL>::_DecRef();
}

void sub_29AA78A88(uint64_t a1, void *a2)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(v12, a2 + 12);
  if ((v12[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v12[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v14);
  if ((v12[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v12[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v12, a2 + 12);
  if (!v13 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&v11, a2 + 12), !v11.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v12, a2 + 12), v12[0] == 1))
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<int>>();
  }

  v5 = sub_29AABB028();
  v6 = v5;
  if ((a2[1] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((a2[1] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  if (*(v7 + 23) < 0)
  {
    sub_29A008D14(&v11, *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    v11.__r_.__value_.__r.__words[2] = v7[2];
    *&v11.__r_.__value_.__l.__data_ = v8;
  }

  v9 = std::string::insert(&v11, 0, "encode: unable to read data for ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13 = v9->__r_.__value_.__r.__words[2];
  *v12 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v6, v12);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AA78DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AA78E9C(uint64_t a1, void *a2)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(v12, a2 + 12);
  if ((v12[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v12[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v14);
  if ((v12[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v12[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v12, a2 + 12);
  if (!v13 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&v11, a2 + 12), !v11.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v12, a2 + 12), v12[0] == 1))
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>>();
  }

  v5 = sub_29AABB028();
  v6 = v5;
  if ((a2[1] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((a2[1] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  if (*(v7 + 23) < 0)
  {
    sub_29A008D14(&v11, *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    v11.__r_.__value_.__r.__words[2] = v7[2];
    *&v11.__r_.__value_.__l.__data_ = v8;
  }

  v9 = std::string::insert(&v11, 0, "encode: unable to read data for ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13 = v9->__r_.__value_.__r.__words[2];
  *v12 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v6, v12);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

void sub_29AA791E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned char>::_DecRef();
}

void sub_29AA792B0(uint64_t a1, void *a2)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(v12, a2 + 12);
  if ((v12[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((v12[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v14);
  if ((v12[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((v12[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v12, a2 + 12);
  if (!v13 || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&v11, a2 + 12), !v11.__r_.__value_.__r.__words[0]) || (pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(v12, a2 + 12), v12[0] == 1))
  {
    pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>>();
  }

  v5 = sub_29AABB028();
  v6 = v5;
  if ((a2[1] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((a2[1] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  if (*(v7 + 23) < 0)
  {
    sub_29A008D14(&v11, *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    v11.__r_.__value_.__r.__words[2] = v7[2];
    *&v11.__r_.__value_.__l.__data_ = v8;
  }

  v9 = std::string::insert(&v11, 0, "encode: unable to read data for ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13 = v9->__r_.__value_.__r.__words[2];
  *v12 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v6, v12);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
}

void sub_29AA795F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37)
{
  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  pxrInternal__aapl__pxrReserved__::VtArray<unsigned int>::_DecRef();
}

void sub_29AA796C4(uint64_t a1, void *a2)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, a2 + 12);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v14);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a2 + 12);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&__dst, a2 + 12);
    if (__dst.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a2 + 12);
      if (__p[0] >= 2)
      {
        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>>();
      }
    }
  }

  v5 = sub_29AABB028();
  v6 = v5;
  if ((a2[1] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((a2[1] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  if (*(v7 + 23) < 0)
  {
    sub_29A008D14(&__dst, *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    __dst.__r_.__value_.__r.__words[2] = v7[2];
    *&__dst.__r_.__value_.__l.__data_ = v8;
  }

  v9 = std::string::insert(&__dst, 0, "encode: unable to read data for ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v6, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
}

void sub_29AA79A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec2i>::_DecRef();
}

void sub_29AA79B44(uint64_t a1, void *a2)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, a2 + 12);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v14);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a2 + 12);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&__dst, a2 + 12);
    if (__dst.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a2 + 12);
      if (__p[0] >= 2)
      {
        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>>();
      }
    }
  }

  v5 = sub_29AABB028();
  v6 = v5;
  if ((a2[1] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((a2[1] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  if (*(v7 + 23) < 0)
  {
    sub_29A008D14(&__dst, *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    __dst.__r_.__value_.__r.__words[2] = v7[2];
    *&__dst.__r_.__value_.__l.__data_ = v8;
  }

  v9 = std::string::insert(&__dst, 0, "encode: unable to read data for ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v6, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
}

void sub_29AA79EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec3i>::_DecRef();
}

void sub_29AA79FC4(uint64_t a1, void *a2)
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  AsToken = pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetAsToken(__p, a2 + 12);
  if ((__p[0] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((__p[0] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(AsToken);
  }

  sub_29AA6926C(EmptyString, &v14);
  if ((__p[0] & 7) != 0)
  {
    atomic_fetch_add_explicit((__p[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a2 + 12);
  if (v13)
  {
    pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(&__dst, a2 + 12);
    if (__dst.__r_.__value_.__r.__words[0])
    {
      pxrInternal__aapl__pxrReserved__::SdfValueTypeName::GetDimensions(__p, a2 + 12);
      if (__p[0] >= 2)
      {
        pxrInternal__aapl__pxrReserved__::UsdAttribute::_Get<pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>>();
      }
    }
  }

  v5 = sub_29AABB028();
  v6 = v5;
  if ((a2[1] & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v7 = ((a2[1] & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v7 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  if (*(v7 + 23) < 0)
  {
    sub_29A008D14(&__dst, *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    __dst.__r_.__value_.__r.__words[2] = v7[2];
    *&__dst.__r_.__value_.__l.__data_ = v8;
  }

  v9 = std::string::insert(&__dst, 0, "encode: unable to read data for ");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v13 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  sub_29AA5B750(v6, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (v15 < 0)
  {
    operator delete(v14);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
}

void sub_29AA7A374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<pxrInternal__aapl__pxrReserved__::GfVec4i>::_DecRef();
}

__n128 sub_29AA7A444@<Q0>(std::string *__return_ptr a1@<X8>, std::string *this@<X1>, uint64_t a3@<X0>)
{
  v4 = *(a3 + 23);
  if (v4 >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  if (v4 >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = *(a3 + 8);
  }

  v7 = std::string::insert(this, 0, v5, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

uint64_t ***sub_29AA7A4A0(uint64_t ***a1, uint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_29AA7A520(a1, v4, a2, a2);
      a2 += 2;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t *sub_29AA7A520(uint64_t ***a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_29A2EF384(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    sub_29AA7A5A4(a1, a4, &v8);
    sub_29A00B204(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void *sub_29AA7A5A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = operator new(0x30uLL);
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v7 = *a2;
  result[4] = *a2;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[4] &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 40) = *(a2 + 8);
  *(a3 + 16) = 1;
  return result;
}

uint64_t *sub_29AA7A620(uint64_t ***a1, uint64_t *a2, uint64_t a3, uint64_t **a4, uint64_t a5)
{
  v7 = sub_29A153CF4(a1, &v10, a2);
  result = *v7;
  if (!*v7)
  {
    sub_29AA7A6B8(a1, a4, &v9);
    sub_29A00B204(a1, v10, v7, v9);
    return v9;
  }

  return result;
}

void *sub_29AA7A6B8@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x30uLL);
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v7 = **a2;
  result[4] = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    result[4] &= 0xFFFFFFFFFFFFFFF8;
  }

  *(result + 40) = 0;
  *(a3 + 16) = 1;
  return result;
}

BOOL sub_29AA7A734(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 <= v3)
  {
    v5 = a1[1];
    v6 = a2[1];
    if (v5 < v6 || v5 <= v6 && *(a1 + 1) < *(a2 + 1))
    {
      return 1;
    }
  }

  if (v2 == v3 && a1[1] == a2[1])
  {
    return *(a1 + 1) == *(a2 + 1);
  }

  return 0;
}

uint64_t **sub_29AA7A7AC(uint64_t **a1, unsigned __int8 *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_29AA7A82C(a1, v4, a2, a2);
      a2 += 16;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t *sub_29AA7A82C(uint64_t **a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = sub_29A1B2E90(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    sub_29AA7A8B0(a1, a4, &v8);
    sub_29A00B204(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

_BYTE *sub_29AA7A8B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = operator new(0x30uLL);
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  result[32] = *a2;
  v7 = *(a2 + 8);
  *(result + 5) = v7;
  if ((v7 & 7) != 0 && (atomic_fetch_add_explicit((v7 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(result + 5) &= 0xFFFFFFFFFFFFFFF8;
  }

  *(a3 + 16) = 1;
  return result;
}

uint64_t **sub_29AA7A92C(uint64_t a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4)
{
  v7 = (a1 + 8);
  v6 = *(a1 + 8);
  if (v6)
  {
    v8 = *a2;
    while (1)
    {
      while (1)
      {
        v9 = v6;
        v10 = *(v6 + 32);
        if (v8 >= v10)
        {
          break;
        }

        v6 = *v9;
        v7 = v9;
        if (!*v9)
        {
          goto LABEL_10;
        }
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = v9[1];
      if (!v6)
      {
        v7 = v9 + 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
    v9 = (a1 + 8);
LABEL_10:
    v11 = operator new(0x30uLL);
    v11[32] = **a4;
    *(v11 + 5) = 0;
    sub_29A00B204(a1, v9, v7, v11);
    return v11;
  }

  return v9;
}

char *sub_29AA7A9F0(uint64_t a1, char *__dst, char *__src, char *a4, int64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      sub_29A00C9A4();
    }

    v13 = (__dst - v11);
    v14 = v9 - v11;
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      v16 = operator new(v15);
    }

    else
    {
      v16 = 0;
    }

    memcpy(&v13[v16], __src, __len);
    v32 = v10 - v5;
    memcpy(&v13[v16 + __len], v5, v32);
    *(a1 + 8) = v5;
    memcpy(v16, v11, v5 - v11);
    *a1 = v16;
    *(a1 + 8) = &v13[v16 + __len + v32];
    *(a1 + 16) = v16 + v15;
    if (v11)
    {
      operator delete(v11);
    }

    return &v13[v16];
  }

  v17 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v28 = &__dst[__len];
    v29 = &v10[-__len];
    v30 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v31 = *v29++;
        *v30++ = v31;
      }

      while (v29 != v10);
    }

    *(a1 + 8) = v30;
    if (v10 != v28)
    {
      memmove(&__dst[__len], __dst, v10 - v28);
    }

    v25 = v5;
    v26 = __src;
    v27 = __len;
    goto LABEL_27;
  }

  v19 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v20 = &v10[v19];
  *(a1 + 8) = &v10[v19];
  if (v17 >= 1)
  {
    v21 = &v5[__len];
    v22 = &v10[v19];
    if (&v20[-__len] < v10)
    {
      v23 = v5 - &__src[__len];
      v24 = v5 - __src;
      do
      {
        a4[v24++] = a4[v23++];
      }

      while (&a4[v23] < v10);
      v22 = &a4[v24];
    }

    *(a1 + 8) = v22;
    if (v20 != v21)
    {
      memmove(&v5[__len], v5, v20 - v21);
    }

    v25 = v5;
    v26 = __src;
    v27 = v10 - v5;
LABEL_27:
    memmove(v25, v26, v27);
  }

  return v5;
}

char *sub_29AA7AC00(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_29A008D14(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_29A008D14(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  v7 = *(a2 + 18);
  __dst[76] = *(a2 + 76);
  *(__dst + 18) = v7;
  if (*(a2 + 103) < 0)
  {
    sub_29A008D14(__dst + 80, *(a2 + 10), *(a2 + 11));
  }

  else
  {
    v8 = a2[5];
    *(__dst + 12) = *(a2 + 12);
    *(__dst + 5) = v8;
  }

  v9 = *(a2 + 26);
  *(__dst + 14) = 0;
  *(__dst + 26) = v9;
  *(__dst + 15) = 0;
  *(__dst + 16) = 0;
  sub_29A0BE484(__dst + 14, *(a2 + 14), *(a2 + 15), (*(a2 + 15) - *(a2 + 14)) >> 2);
  __dst[136] = *(a2 + 136);
  return __dst;
}

void sub_29AA7AD04(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA7AD68(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AA7AD68(a1, *a2);
    sub_29AA7AD68(a1, a2[1]);
    sub_29AA7ADC4((a2 + 4));

    operator delete(a2);
  }
}

void sub_29AA7ADC4(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    *(a1 + 144) = v2;
    operator delete(v2);
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t sub_29AA7AE5C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a1 + 32;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  v4 = 0;
  *(a1 + 192) = 0;
  v2 = a1 + 192;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  sub_29AA7AEEC(v2, &v4, &v5, 4uLL);
  *(a1 + 232) = 16;
  return a1;
}

char *sub_29AA7AEEC(char *result, char *a2, char *a3, size_t __sz)
{
  if (__sz)
  {
    v6 = result;
    result = sub_29A0101E8(result, __sz);
    v7 = *(v6 + 1);
    while (a2 != a3)
    {
      v8 = *a2++;
      *v7++ = v8;
    }

    *(v6 + 1) = v7;
  }

  return result;
}

void sub_29AA7AF44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA7AF60(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    *(a1 + 200) = v2;
    operator delete(v2);
  }

  v6 = (a1 + 152);
  sub_29A012C90(&v6);
  v6 = (a1 + 128);
  sub_29AA7B3C4(&v6);
  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  sub_29AA7AD68(a1 + 24, *(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

_DWORD *sub_29AA7B008(_DWORD *result, _DWORD *a2)
{
  v2 = result;
  if (result != a2 && result + 1 != a2)
  {
    v5 = *result;
    v4 = result[1];
    if (v4 < *result)
    {
      ++result;
    }

    v6 = v4 >= v5 ? v2 + 1 : v2;
    v7 = v2 + 2;
    if (v7 != a2)
    {
      if (v4 <= v5)
      {
        v8 = v5;
      }

      else
      {
        v8 = v4;
      }

      if (v4 >= v5)
      {
        v4 = v5;
      }

      while (v7 + 1 != a2)
      {
        v10 = *v7;
        v9 = v7[1];
        if (v9 >= *v7)
        {
          if (v10 < v4)
          {
            v4 = *v7;
            result = v7;
          }

          v11 = v9 < v8;
          if (v9 > v8)
          {
            v8 = v7[1];
          }

          if (!v11)
          {
            v6 = v7 + 1;
          }
        }

        else
        {
          v4 = *result;
          if (v9 < *result)
          {
            v4 = v7[1];
            result = v7 + 1;
          }

          v8 = *v6;
          if (v10 > *v6)
          {
            v8 = *v7;
          }

          if (v10 >= *v6)
          {
            v6 = v7;
          }
        }

        v7 += 2;
        if (v7 == a2)
        {
          return result;
        }
      }

      if (*v7 < *result)
      {
        return v7;
      }
    }
  }

  return result;
}

uint64_t ***sub_29AA7B110(uint64_t ***a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_29AA7B190(a1, v4, a2, a2);
      a2 += 4;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t *sub_29AA7B190(uint64_t ***a1, uint64_t a2, const void **a3, uint64_t a4)
{
  v6 = sub_29A0194B4(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    sub_29AA7B214(a1, a4, &v8);
    sub_29A00B204(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

_BYTE *sub_29AA7B214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = operator new(0x40uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  if (*(a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *a2, *(a2 + 8));
  }

  else
  {
    *(result + 2) = *a2;
    *(result + 6) = *(a2 + 16);
  }

  *(v7 + 7) = *(a2 + 24);
  *(a3 + 16) = 1;
  return result;
}

void sub_29AA7B2A0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A01BC68(v3, v2);
  _Unwind_Resume(a1);
}

void sub_29AA7B2E8(uint64_t *a1)
{
  if (a1[2])
  {
    v1 = a1[1];
    v2 = *(*a1 + 8);
    v3 = *v1;
    *(v3 + 8) = v2;
    *v2 = v3;
    a1[2] = 0;
    if (v1 != a1)
    {
      sub_29AA7B35C((v1 + 2));
    }
  }
}

void sub_29AA7B35C(uint64_t a1)
{
  v1 = *(a1 + 104);
  if ((v1 & 7) != 0)
  {
    atomic_fetch_add_explicit((v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::VtArray<int>::_DecRef();
}

void sub_29AA7B3C4(void ***a1)
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
        v4 -= 3;
        sub_29A0EB800(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *sub_29AA7B448(uint64_t ***a1, const void **a2, uint64_t a3, __int128 **a4, uint64_t a5)
{
  v7 = sub_29A00B0D0(a1, &v10, a2);
  result = *v7;
  if (!*v7)
  {
    sub_29AA7B4E0(a1, a4, &v9);
    sub_29A00B204(a1, v10, v7, v9);
    return v9;
  }

  return result;
}

_BYTE *sub_29AA7B4E0@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x48uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    *(result + 6) = *(v8 + 2);
    *(result + 2) = v9;
  }

  *(v7 + 7) = 0;
  *(v7 + 8) = 0;
  *(a3 + 16) = 1;
  return result;
}

uint64_t *sub_29AA7B574(uint64_t ***a1, const void **a2, uint64_t a3, __int128 **a4, uint64_t a5)
{
  v7 = sub_29A00B0D0(a1, &v10, a2);
  result = *v7;
  if (!*v7)
  {
    sub_29AA7B60C(a1, &v9, a4);
    sub_29A00B204(a1, v10, v7, v9);
    return v9;
  }

  return result;
}

void *sub_29AA7B60C@<X0>(uint64_t a1@<X0>, void *a2@<X8>, __int128 **a3@<X2>)
{
  v6 = operator new(0x40uLL);
  *a2 = v6;
  a2[1] = a1;
  a2[2] = 0;
  result = sub_29AA7B690(v6 + 4, *a3);
  *(a2 + 16) = 1;
  return result;
}

void sub_29AA7B674(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A01BC68(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_29AA7B690(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v3;
  }

  *(__dst + 14) = 0;
  *(__dst + 6) = 0;
  return __dst;
}

uint64_t sub_29AA7B6E8(uint64_t *a1, void *a2, uint64_t a3, unsigned int a4, int a5)
{
  v10 = *a1;
  sub_29A0A171C(a2, *a1);
  if (!v10)
  {
    return 0;
  }

  v11 = 112;
  if (a4 >= 1 && v10 >= a4 && !(v10 % a4))
  {
    v12 = a4;
    sub_29AA7BAE8(&v58, a4, a1[4]);
    sub_29AA7BAE8(v57, a4, a1[4]);
    v13 = 0;
    v14 = v57[0];
    v15 = v58;
    v16 = 4 * a4;
    v17 = a1[4];
    do
    {
      v18 = 0;
      do
      {
        v19 = *(v17 + v18);
        v20 = *&v15[v18];
        if (v20 >= v19)
        {
          v20 = *(v17 + v18);
        }

        *&v15[v18] = v20;
        if (v19 < v14[v18 / 4])
        {
          v19 = v14[v18 / 4];
        }

        v14[v18 / 4] = v19;
        v18 += 4;
      }

      while (v16 != v18);
      v13 += a4;
      v17 += v16;
    }

    while (v13 < v10);
    v21 = v58;
    v22 = *v14 - *v58;
    if (a4 != 1)
    {
      if (a4 <= 2)
      {
        v23 = 2;
      }

      else
      {
        v23 = a4;
      }

      v24 = v14 + 1;
      v25 = (v58 + 4);
      v26 = v23 - 1;
      do
      {
        v27 = *v24++;
        v28 = v27;
        v29 = *v25++;
        v30 = v28 - v29;
        if (v30 >= v22)
        {
          v22 = v30;
        }

        --v26;
      }

      while (v26);
    }

    v31 = 1 << a5;
    if (a5)
    {
      if (v22 < 2.2204e-16)
      {
        v22 = 1.0;
      }

      v32 = (v31 + -1.0) / v22;
    }

    else
    {
      v32 = 1.0;
    }

    v33 = 0;
    v34 = 0;
    v35 = a1[4];
    while (2)
    {
      v36 = (*a2 + v33);
      v37 = v12;
      v38 = v21;
      v39 = v35;
      do
      {
        v40 = llroundf(v32 * (*v39 - *v38));
        if (v40 < 0 || v31 <= v40)
        {
          v41 = sub_29AABB028();
          std::to_string(&v52, v40);
          v42 = std::string::insert(&v52, 0, "Uniform quantization: values out of bound; qvalue=");
          v43 = *&v42->__r_.__value_.__l.__data_;
          v53.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
          *&v53.__r_.__value_.__l.__data_ = v43;
          v42->__r_.__value_.__l.__size_ = 0;
          v42->__r_.__value_.__r.__words[2] = 0;
          v42->__r_.__value_.__r.__words[0] = 0;
          v44 = std::string::append(&v53, " and qp1=");
          v45 = *&v44->__r_.__value_.__l.__data_;
          v54.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
          *&v54.__r_.__value_.__l.__data_ = v45;
          v44->__r_.__value_.__l.__size_ = 0;
          v44->__r_.__value_.__r.__words[2] = 0;
          v44->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v51, 1 << a5);
          if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v46 = &v51;
          }

          else
          {
            v46 = v51.__r_.__value_.__r.__words[0];
          }

          if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v51.__r_.__value_.__l.__size_;
          }

          v48 = std::string::append(&v54, v46, size);
          v49 = *&v48->__r_.__value_.__l.__data_;
          v56 = v48->__r_.__value_.__r.__words[2];
          *__p = v49;
          v48->__r_.__value_.__l.__size_ = 0;
          v48->__r_.__value_.__r.__words[2] = 0;
          v48->__r_.__value_.__r.__words[0] = 0;
          sub_29AA5B750(v41, __p);
          if (SHIBYTE(v56) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v51.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v52.__r_.__value_.__l.__data_);
          }

          v11 = 112;
          goto LABEL_53;
        }

        *v36++ = v40;
        ++v39;
        ++v38;
        --v37;
      }

      while (v37);
      v34 += v12;
      v35 += v16;
      v33 += v16;
      if (v34 < v10)
      {
        continue;
      }

      break;
    }

    if ((a3 + 8) != &v58)
    {
      sub_29A36CF34((a3 + 8), v58, v59, (v59 - v58) >> 2);
    }

    v11 = 0;
    *(a3 + 4) = 1.0 / v32;
LABEL_53:
    if (v57[0])
    {
      v57[1] = v57[0];
      operator delete(v57[0]);
    }

    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }
  }

  return v11;
}

void sub_29AA7BA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v35 = *(v33 - 128);
  if (v35)
  {
    *(v33 - 120) = v35;
    operator delete(v35);
  }

  v36 = *(v33 - 104);
  if (v36)
  {
    *(v33 - 96) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AA7BAE8(void *a1, unint64_t a2, __int32 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A0111A4(a1, a2);
    v6 = 0;
    v7.i32[0] = *a3;
    v8 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v9 = vdupq_n_s64(v8);
    v10 = a1[1];
    v11 = v8 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v12 = (v10 + 8);
    do
    {
      v13 = vdupq_n_s64(v6);
      v14 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v13, xmmword_29B430070)));
      if (vuzp1_s16(v14, v7).u8[0])
      {
        *(v12 - 2) = v7.i32[0];
      }

      if (vuzp1_s16(v14, v7).i8[2])
      {
        *(v12 - 1) = v7.i32[0];
      }

      if (vuzp1_s16(v7, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v13, xmmword_29B433E10)))).i32[1])
      {
        *v12 = v7.i32[0];
        v12[1] = v7.i32[0];
      }

      v6 += 4;
      v12 += 4;
    }

    while (v11 != v6);
    a1[1] = v10 + 4 * a2;
  }

  return a1;
}

void sub_29AA7BBE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA7BBFC(uint64_t *a1, void *a2, uint64_t a3, unsigned int a4, int a5)
{
  v10 = *a1;
  sub_29A0A171C(a2, *a1);
  if (!v10)
  {
    return 0;
  }

  v11 = 112;
  if (a4 >= 1 && v10 >= a4 && !(v10 % a4))
  {
    v12 = a4;
    v13 = *a1[4];
    *v59 = v13;
    sub_29AA7BAE8(&v60, a4, v59);
    v14 = *a1[4];
    *__p = v14;
    sub_29AA7BAE8(v59, a4, __p);
    v15 = 0;
    v16 = v59[0];
    v17 = v60;
    v18 = 8 * a4;
    v19 = a1[4];
    do
    {
      v20 = 0;
      do
      {
        v21 = *(v19 + 8 * v20);
        v22 = *&v17[4 * v20];
        if (v22 >= v21)
        {
          v22 = *(v19 + 8 * v20);
        }

        *&v17[4 * v20] = v22;
        if (v16[v20] > v21)
        {
          v21 = v16[v20];
        }

        v16[v20++] = v21;
      }

      while (a4 != v20);
      v15 += a4;
      v19 += v18;
    }

    while (v15 < v10);
    v23 = v60;
    v24 = *v16 - *v60;
    if (a4 != 1)
    {
      if (a4 <= 2)
      {
        v25 = 2;
      }

      else
      {
        v25 = a4;
      }

      v26 = v16 + 1;
      v27 = (v60 + 4);
      v28 = v25 - 1;
      do
      {
        v29 = *v26++;
        v30 = v29;
        v31 = *v27++;
        v32 = v30 - v31;
        if (v32 >= v24)
        {
          v24 = v32;
        }

        --v28;
      }

      while (v28);
    }

    v33 = 1 << a5;
    if (a5)
    {
      if (v24 < 2.2204e-16)
      {
        v24 = 1.0;
      }

      v34 = (v33 + -1.0) / v24;
    }

    else
    {
      v34 = 1.0;
    }

    v35 = 0;
    v36 = 0;
    v37 = a1[4];
    while (2)
    {
      v38 = (*a2 + v35);
      v39 = v12;
      v40 = v23;
      v41 = v37;
      do
      {
        v42 = llround((*v41 - *v40) * v34);
        if (v42 < 0 || v33 <= v42)
        {
          v43 = sub_29AABB028();
          std::to_string(&v54, v42);
          v44 = std::string::insert(&v54, 0, "Uniform quantization: values out of bound; qvalue=");
          v45 = *&v44->__r_.__value_.__l.__data_;
          v55.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
          *&v55.__r_.__value_.__l.__data_ = v45;
          v44->__r_.__value_.__l.__size_ = 0;
          v44->__r_.__value_.__r.__words[2] = 0;
          v44->__r_.__value_.__r.__words[0] = 0;
          v46 = std::string::append(&v55, " and qp1=");
          v47 = *&v46->__r_.__value_.__l.__data_;
          v56.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
          *&v56.__r_.__value_.__l.__data_ = v47;
          v46->__r_.__value_.__l.__size_ = 0;
          v46->__r_.__value_.__r.__words[2] = 0;
          v46->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v53, 1 << a5);
          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v48 = &v53;
          }

          else
          {
            v48 = v53.__r_.__value_.__r.__words[0];
          }

          if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v53.__r_.__value_.__l.__size_;
          }

          v50 = std::string::append(&v56, v48, size);
          v51 = *&v50->__r_.__value_.__l.__data_;
          v58 = v50->__r_.__value_.__r.__words[2];
          *__p = v51;
          v50->__r_.__value_.__l.__size_ = 0;
          v50->__r_.__value_.__r.__words[2] = 0;
          v50->__r_.__value_.__r.__words[0] = 0;
          sub_29AA5B750(v43, __p);
          if (SHIBYTE(v58) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v56.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v55.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v54.__r_.__value_.__l.__data_);
          }

          v11 = 112;
          goto LABEL_53;
        }

        *v38++ = v42;
        ++v41;
        ++v40;
        --v39;
      }

      while (v39);
      v36 += v12;
      v37 += v18;
      v35 += 4 * v12;
      if (v36 < v10)
      {
        continue;
      }

      break;
    }

    if ((a3 + 8) != &v60)
    {
      sub_29A36CF34((a3 + 8), v60, v61, (v61 - v60) >> 2);
    }

    v11 = 0;
    *(a3 + 4) = 1.0 / v34;
LABEL_53:
    if (v59[0])
    {
      v59[1] = v59[0];
      operator delete(v59[0]);
    }

    if (v60)
    {
      v61 = v60;
      operator delete(v60);
    }
  }

  return v11;
}

void sub_29AA7BF90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v35 = *(v33 - 128);
  if (v35)
  {
    *(v33 - 120) = v35;
    operator delete(v35);
  }

  v36 = *(v33 - 104);
  if (v36)
  {
    *(v33 - 96) = v36;
    operator delete(v36);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA7C04C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A2070630;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void sub_29AA7C0C0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 135) < 0)
  {
    operator delete(*(a2 + 112));
  }

  v3 = *(a2 + 80);
  if (v3)
  {
    *(a2 + 88) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 48);
  if (v4)
  {
    *(a2 + 56) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    *(a2 + 32) = v5;
    operator delete(v5);
  }

  if (*(a2 + 23) < 0)
  {
    v6 = *a2;

    operator delete(v6);
  }
}

uint64_t sub_29AA7C148(unint64_t *a1, int32x2_t **a2, _BYTE *a3, unsigned int *a4, uint64_t a5, __n128 a6)
{
  v6 = *a3;
  if (v6 <= 1)
  {
    if (!*a3)
    {
      return sub_29AA7C1A4(a1, a2);
    }

    if (v6 == 1)
    {
      return sub_29AA7B6E8(a1, a2, a3, *a4, a5);
    }
  }

  else
  {
    switch(v6)
    {
      case 2u:
        return sub_29AA7C1FC(a1, a2, a4, a5);
      case 3u:
        return sub_29AA7C2F0(a1, a2, a3, a5, a6);
      case 4u:
        return sub_29AA7C8EC(a1, a2, a3, a4, a5, a6.n128_f64[0]);
    }
  }

  return 112;
}

uint64_t sub_29AA7C1A4(unint64_t *a1, void *a2)
{
  sub_29A0A171C(a2, *a1);
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[4];
    v6 = *a2;
    do
    {
      v7 = *v5++;
      *v6++ = v7;
      --v4;
    }

    while (v4);
  }

  return 0;
}

uint64_t sub_29AA7C1FC(unint64_t *a1, void *a2, _DWORD *a3, int a4)
{
  v4 = *a1;
  if (!*a1)
  {
    return 112;
  }

  v5 = a4;
  result = 112;
  if (a4 >= 3 && !(v4 % 3) && *a3 == 3)
  {
    sub_29A0A171C(a2, 2 * (v4 / 3));
    if (v4 >= 1)
    {
      v11 = 0;
      v12 = 0;
      v13 = -1 << (v5 - 1);
      do
      {
        sub_29AA7CA5C((*a2 + v11), (*a2 + v11 + 4), ~v13, *(a1[4] + 4 * v12), *(a1[4] + 4 * v12 + 4), *(a1[4] + 4 * v12 + 8));
        v12 += 3;
        v11 += 8;
      }

      while (v12 < v4);
    }

    result = 0;
    --*a3;
  }

  return result;
}

uint64_t sub_29AA7C2F0(unint64_t *a1, int32x2_t **a2, uint64_t a3, char a4, __n128 a5)
{
  v5 = *a1;
  if (*a1 < 3 || *a1 % 3 != 0)
  {
    v7 = sub_29AABB028();
    std::to_string(&v64, v5);
    v8 = std::string::insert(&v64, 0, "quantizeColorRGB: Incompatible data dimension: componentCount ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v66 = v8->__r_.__value_.__r.__words[2];
    v65 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v7, &v65);
    if (SHIBYTE(v66) < 0)
    {
      operator delete(v65);
    }

    if ((SHIBYTE(v64.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 112;
    }

    v10 = v64.__r_.__value_.__r.__words[0];
    goto LABEL_13;
  }

  v15 = a1[4];
  v64.__r_.__value_.__s.__data_[0] = 0;
  if (*sub_29AA7CBF0(v15, &v15[v5]) >= 0.0 && *v16 <= 1.0)
  {
    v20 = 1 << a4;
    v53 = v20 + -1.0;
    *v17.i32 = 1.0 / v53;
    *(a3 + 4) = 1.0 / v53;
    LODWORD(v65) = 0;
    sub_29A0AB144((a3 + 8), 3uLL, &v65, v17);
    sub_29A0A171C(a2, v5);
    if (v5 < 1)
    {
      return 0;
    }

    v21 = 0;
    v22 = (a1[4] + 4);
    v23 = *a2 + 1;
    while (1)
    {
      v24.f32[0] = *(v22 - 1);
      v25 = v22[1];
      v26.f32[0] = *v22 * 0.7152;
      v27 = v24.f32[0] * 0.5;
      v24.f32[1] = v25;
      v26.f32[1] = (v24.f32[0] * -0.1146) + (*v22 * -0.3854);
      v28 = vadd_f32(vmul_f32(v24, 0x3F0000003E59B3D0), v26);
      v26.i32[1] = 1056964608;
      v26.f32[0] = v25 * 0.0722;
      v29 = vcvt_s32_f32(vrnda_f32(vmul_n_f32(vadd_f32(v28, v26), v53)));
      v30 = llroundf(v53 * (((v27 + (*v22 * -0.4542)) + (v25 * -0.0458)) + 0.5));
      v31 = v29.i32[0];
      if (v29.i32[0] < 0 || v20 <= v29.i32[0] || v29.i32[1] < 0 || v20 <= v29.i32[1] || v30 < 0 || v20 <= v30)
      {
        break;
      }

      result = 0;
      v23[-1] = v29;
      v23->i32[0] = v30;
      v23 = (v23 + 12);
      v22 += 3;
      v21 += 3;
      if (v21 >= v5)
      {
        return result;
      }
    }

    v54 = v29.i32[1];
    v32 = sub_29AABB028();
    std::to_string(&v58, v20);
    v33 = std::string::insert(&v58, 0, "quantizeColorRGB: values out of bound qp1=");
    v34 = *&v33->__r_.__value_.__l.__data_;
    v59.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
    *&v59.__r_.__value_.__l.__data_ = v34;
    v33->__r_.__value_.__l.__size_ = 0;
    v33->__r_.__value_.__r.__words[2] = 0;
    v33->__r_.__value_.__r.__words[0] = 0;
    v35 = std::string::append(&v59, ", y=");
    v36 = *&v35->__r_.__value_.__l.__data_;
    v60.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
    *&v60.__r_.__value_.__l.__data_ = v36;
    v35->__r_.__value_.__l.__size_ = 0;
    v35->__r_.__value_.__r.__words[2] = 0;
    v35->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v57, v31);
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v57;
    }

    else
    {
      v37 = v57.__r_.__value_.__r.__words[0];
    }

    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v57.__r_.__value_.__l.__size_;
    }

    v39 = std::string::append(&v60, v37, size);
    v40 = *&v39->__r_.__value_.__l.__data_;
    v61.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
    *&v61.__r_.__value_.__l.__data_ = v40;
    v39->__r_.__value_.__l.__size_ = 0;
    v39->__r_.__value_.__r.__words[2] = 0;
    v39->__r_.__value_.__r.__words[0] = 0;
    v41 = std::string::append(&v61, ", u=");
    v42 = *&v41->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = v42;
    v41->__r_.__value_.__l.__size_ = 0;
    v41->__r_.__value_.__r.__words[2] = 0;
    v41->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v56, v54);
    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &v56;
    }

    else
    {
      v43 = v56.__r_.__value_.__r.__words[0];
    }

    if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v44 = v56.__r_.__value_.__l.__size_;
    }

    v45 = std::string::append(&v62, v43, v44);
    v46 = *&v45->__r_.__value_.__l.__data_;
    v63.__r_.__value_.__r.__words[2] = v45->__r_.__value_.__r.__words[2];
    *&v63.__r_.__value_.__l.__data_ = v46;
    v45->__r_.__value_.__l.__size_ = 0;
    v45->__r_.__value_.__r.__words[2] = 0;
    v45->__r_.__value_.__r.__words[0] = 0;
    v47 = std::string::append(&v63, ", v=");
    v48 = *&v47->__r_.__value_.__l.__data_;
    v64.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
    *&v64.__r_.__value_.__l.__data_ = v48;
    v47->__r_.__value_.__l.__size_ = 0;
    v47->__r_.__value_.__r.__words[2] = 0;
    v47->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v55, v30);
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = &v55;
    }

    else
    {
      v49 = v55.__r_.__value_.__r.__words[0];
    }

    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = HIBYTE(v55.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v50 = v55.__r_.__value_.__l.__size_;
    }

    v51 = std::string::append(&v64, v49, v50);
    v52 = *&v51->__r_.__value_.__l.__data_;
    v66 = v51->__r_.__value_.__r.__words[2];
    v65 = v52;
    v51->__r_.__value_.__l.__size_ = 0;
    v51->__r_.__value_.__r.__words[2] = 0;
    v51->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v32, &v65);
    if (SHIBYTE(v66) < 0)
    {
      operator delete(v65);
    }

    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v63.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v62.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      v10 = v58.__r_.__value_.__r.__words[0];
      goto LABEL_13;
    }
  }

  else
  {
    v18 = sub_29AABB028();
    sub_29A008E78(&v65, "quantizeColorRGB: Input out of range");
    sub_29AA5B750(v18, &v65);
    if (SHIBYTE(v66) < 0)
    {
      v10 = v65;
LABEL_13:
      operator delete(v10);
    }
  }

  return 112;
}

void sub_29AA7C7E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v54 - 89) < 0)
  {
    operator delete(*(v54 - 112));
  }

  if (*(v54 - 121) < 0)
  {
    operator delete(*(v54 - 144));
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (*(v54 - 153) < 0)
  {
    operator delete(*(v54 - 176));
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA7C8EC(uint64_t a1, uint64_t *a2, uint64_t a3, _DWORD *a4, char a5, double a6)
{
  v7 = *a4;
  if (v7 < 2)
  {
    return 112;
  }

  v10 = *a1;
  result = 112;
  if (v7 <= v10 && !(v10 % v7))
  {
    v12 = (v7 - 1);
    v13 = v10 / v7;
    v14 = (1 << a5) + -1.0;
    *&a6 = 1.0 / v14;
    *(a3 + 4) = 1.0 / v14;
    LODWORD(__p[0]) = 0;
    sub_29A0AB144((a3 + 8), v7, __p, *&a6);
    sub_29A0A171C(a2, v13 * v12);
    LODWORD(v15) = 0;
    v16 = 0;
    v17 = *(a1 + 32);
    v18 = *a2;
    while (1)
    {
      v15 = v15;
      v19 = 0.0;
      v20 = v12;
      v21 = (v17 + 4 * v16);
      do
      {
        v22 = *v21++;
        v19 = v19 + v22;
        *(v18 + 4 * v15++) = llroundf(v14 * v22);
        --v20;
      }

      while (v20);
      if (vabds_f32(1.0, v19 + *(v17 + 4 * (v16 + v12))) > 0.00001)
      {
        break;
      }

      v16 += *a4;
      if (v16 >= v10)
      {
        result = 0;
        --*a4;
        return result;
      }
    }

    v23 = sub_29AABB028();
    sub_29A008E78(__p, "Weight quantization: sum too far from 1.0");
    sub_29AA5B750(v23, __p);
    if (v25 < 0)
    {
      operator delete(__p[0]);
    }

    return 112;
  }

  return result;
}

int *sub_29AA7CA5C(int *result, int *a2, int a3, float a4, float a5, float a6)
{
  v6 = fabsf(a6);
  v7 = (fabsf(a4) + fabsf(a5)) + v6;
  if (v7 <= 0.0)
  {
    *result = a3;
  }

  else
  {
    v8 = 0;
    v9 = a3 / v7;
    v10 = v9 * a4;
    v11 = v9 * a5;
    v12 = vcvtmd_s64_f64(v10);
    v13 = v9 * v6;
    v14 = vcvtmd_s64_f64(v11);
    if (v12 >= 0)
    {
      v15 = v12;
    }

    else
    {
      v15 = -v12;
    }

    if (v14 >= 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = -v14;
    }

    v17 = (v10 * v12 + v11 * v14 + v13 * (a3 - (v16 + v15))) / sqrt((v14 * v14 + v12 * v12 + (a3 - (v16 + v15)) * (a3 - (v16 + v15))));
    v18 = 1;
    v19 = v12;
    v20 = v14;
    do
    {
      v21 = 0;
      v22 = v18;
      v23 = v8 + v14;
      if (v8 + v14 >= 0)
      {
        v24 = v8 + v14;
      }

      else
      {
        v24 = -v23;
      }

      v25 = 1;
      v26 = a3 - v24;
      do
      {
        v27 = v25;
        v28 = v21 + v12;
        if (v21 + v12 >= 0)
        {
          v29 = v21 + v12;
        }

        else
        {
          v29 = -v28;
        }

        if (v21 | v8)
        {
          v30 = v26 - v29;
          if (((v26 - v29) & 0x80000000) == 0)
          {
            v31 = sqrt((v23 * v23 + v28 * v28 + v30 * v30));
            if (v17 < (v11 * v23 + v10 * v28 + v13 * v30) / v31)
            {
              v20 = v8 + v14;
              v19 = v28;
              v17 = (v11 * v23 + v10 * v28 + v13 * v30) / v31;
            }
          }
        }

        v25 = 0;
        v21 = 1;
      }

      while ((v27 & 1) != 0);
      v18 = 0;
      v8 = 1;
    }

    while ((v22 & 1) != 0);
    if (a6 >= 0.0)
    {
      *result = v19 + a3;
      a3 += v20;
    }

    else
    {
      v32 = 2 * a3;
      if (v20 >= 0)
      {
        v33 = v20;
      }

      else
      {
        v33 = -v20;
      }

      if (a4 >= 0.0)
      {
        v33 = v32 - v33;
      }

      *result = v33;
      if (v19 >= 0)
      {
        v34 = v19;
      }

      else
      {
        v34 = -v19;
      }

      v35 = v32 - v34;
      if (a5 >= 0.0)
      {
        a3 = v35;
      }

      else
      {
        a3 = v34;
      }
    }
  }

  *a2 = a3;
  return result;
}

float *sub_29AA7CBF0(float *result, float *a2)
{
  v2 = result;
  if (result != a2 && result + 1 != a2)
  {
    v5 = *result;
    v4 = result[1];
    if (v4 < *result)
    {
      ++result;
    }

    v6 = v4 >= *v2 ? v2 + 1 : v2;
    v7 = v2 + 2;
    if (v7 != a2)
    {
      if (v4 >= v5)
      {
        v4 = v5;
      }

      while (v7 + 1 != a2)
      {
        v9 = *v7;
        v8 = v7[1];
        if (v8 >= *v7)
        {
          if (v9 < v4)
          {
            v4 = *v7;
            result = v7;
          }

          if (v8 >= *v6)
          {
            v6 = v7 + 1;
          }
        }

        else
        {
          v4 = *result;
          if (v8 < *result)
          {
            v4 = v7[1];
            result = v7 + 1;
          }

          if (v9 >= *v6)
          {
            v6 = v7;
          }
        }

        v7 += 2;
        if (v7 == a2)
        {
          return result;
        }
      }

      if (*v7 < *result)
      {
        return v7;
      }
    }
  }

  return result;
}

char *sub_29AA7CCC4(char **a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > &v9[-v10] >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      sub_29A00C9A4();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      v17 = sub_29A00E7A8(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v34 = &v17[4 * v16];
    v35 = 4 * a5;
    v36 = v34;
    do
    {
      v37 = *v7;
      v7 += 4;
      *v36 = v37;
      v36 += 4;
      v35 -= 4;
    }

    while (v35);
    v38 = &v17[4 * v15];
    memcpy(&v34[4 * a5], v5, a1[1] - v5);
    v39 = *a1;
    v40 = &v34[4 * a5 + a1[1] - v5];
    a1[1] = v5;
    v41 = v5 - v39;
    v42 = &v34[-(v5 - v39)];
    memcpy(v42, v39, v41);
    v43 = *a1;
    *a1 = v42;
    a1[1] = v40;
    a1[2] = v38;
    if (v43)
    {
      operator delete(v43);
    }

    return v34;
  }

  v18 = v10 - __dst;
  v19 = (v10 - __dst) >> 2;
  if (v19 >= a5)
  {
    v30 = &__dst[4 * a5];
    v31 = (v10 - 4 * a5);
    v32 = a1[1];
    while (v31 < v10)
    {
      v33 = *v31++;
      *v32 = v33;
      v32 += 4;
    }

    a1[1] = v32;
    if (v10 != v30)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v30);
    }

    v29 = 4 * a5;
    v27 = v5;
    v28 = v7;
    goto LABEL_29;
  }

  v21 = a4 - &__src[v18];
  if (a4 != &__src[v18])
  {
    memmove(a1[1], &__src[v18], a4 - &__src[v18]);
  }

  v22 = (v10 + v21);
  a1[1] = (v10 + v21);
  if (v19 >= 1)
  {
    v23 = &v5[4 * a5];
    v24 = v10 + v21;
    if (&v22[-4 * a5] < v10)
    {
      v25 = &a4[v5];
      v26 = &a4[v5 + -4 * a5];
      do
      {
        *(v25 - v7) = *(v26 - v7);
        v26 += 4;
        v25 += 4;
      }

      while (v26 - v7 < v10);
      v24 = v25 - v7;
    }

    a1[1] = v24;
    if (v22 != v23)
    {
      memmove(&v5[4 * a5], v5, v22 - v23);
    }

    if (v10 != v5)
    {
      v27 = v5;
      v28 = v7;
      v29 = v10 - v5;
LABEL_29:
      memmove(v27, v28, v29);
    }
  }

  return v5;
}

_OWORD *sub_29AA7CEF0(uint64_t ***a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v6 = sub_29A00B0D0(a1, &v12, a2);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x48uLL);
    v9 = *a4;
    v10 = *(*a4 + 2);
    v7[2] = **a4;
    *(v7 + 6) = v10;
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    *(v7 + 7) = 0;
    *(v7 + 8) = 0;
    sub_29A00B204(a1, v12, v8, v7);
  }

  return v7;
}

void sub_29AA7CF8C(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      v5 = v3 - 24;
      v6 = v3 - 24;
      v7 = (v3 - 24);
      do
      {
        v8 = *v7;
        v7 -= 3;
        (*v8)(v6);
        v5 -= 24;
        v9 = v6 == v1;
        v6 = v7;
      }

      while (!v9);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *sub_29AA7D02C(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A012BFC(a1, a2);
    v4 = a1[1];
    v5 = &v4[3 * a2];
    do
    {
      *v4 = v4;
      v4[1] = v4;
      v4[2] = 0;
      v4 += 3;
    }

    while (v4 != v5);
    a1[1] = v5;
  }

  return a1;
}

void *sub_29AA7D0B0(void *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v3 = *(a2 + 8);
  if (v3 != a2)
  {
    v5 = 1;
    v6 = a1;
    do
    {
      v7 = operator new(0x18uLL);
      v7[4] = *(v3 + 16);
      *v7 = v6;
      *(v7 + 1) = a1;
      v6[1] = v7;
      *a1 = v7;
      a1[2] = v5;
      v3 = *(v3 + 8);
      ++v5;
      v6 = v7;
    }

    while (v3 != a2);
  }

  return a1;
}

uint64_t sub_29AA7D14C(uint64_t **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_29A00C9A4();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v3)
  {
    v3 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    v7 = sub_29A012C48(a1, v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = v7;
  v15 = &v7[3 * v2];
  *(&v16 + 1) = &v7[3 * v6];
  sub_29AA7D0B0(v15, a2);
  *&v16 = v15 + 3;
  v8 = a1[1];
  v9 = (v15 + *a1 - v8);
  sub_29AA7D27C(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_29AA7D344(&v14);
  return v13;
}

void sub_29AA7D268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_29AA7D344(va);
  _Unwind_Resume(a1);
}

void sub_29AA7D27C(void *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v8 = a2;
    do
    {
      sub_29AA7D300(result, a4, v8);
      v8 += 3;
      a4 += 3;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      sub_29A0EB800(v6);
      v6 += 3;
    }
  }
}

void sub_29AA7D300(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  v3 = a3[2];
  if (v3)
  {
    v5 = *a3;
    v4 = a3[1];
    v6 = *(*a3 + 8);
    v7 = *v4;
    *(v7 + 8) = v6;
    *v6 = v7;
    v8 = *a2;
    *(v8 + 8) = v4;
    *v4 = v8;
    *a2 = v5;
    *(v5 + 8) = a2;
    a2[2] = v3;
    a3[2] = 0;
  }
}

uint64_t sub_29AA7D344(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_29A0EB800((i - 24));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_29AA7D394(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A00C968(a1, a2);
    v6 = 0;
    v7 = a1[1];
    v8 = v7 + 8 * a2;
    v9 = *a3;
    v10 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v11 = vdupq_n_s64(v10);
    v12 = (v7 + 8);
    do
    {
      v13 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(vdupq_n_s64(v6), xmmword_29B430070)));
      if (v13.i8[0])
      {
        *(v12 - 1) = v9;
      }

      if (v13.i8[4])
      {
        *v12 = v9;
      }

      v6 += 2;
      v12 += 2;
    }

    while (v10 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v6);
    a1[1] = v8;
  }

  return a1;
}

void sub_29AA7D450(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AA7D46C(void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_29A0D0518(a1, a2);
    v4 = a1[1];
    bzero(v4, 16 * a2);
    a1[1] = &v4[16 * a2];
  }

  return a1;
}

void *sub_29AA7D4EC(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A2070680;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_29AA7D54C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_29AA7D5E0(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA7D570(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t sub_29AA7D5A0(uint64_t a1, uint64_t a2)
{
  if (sub_29A00E9CC(a2, &unk_2A20706D0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_29AA7D5E0(int a1, void **__p)
{
  if (__p)
  {
    if (*(__p + 135) < 0)
    {
      operator delete(__p[14]);
    }

    v3 = __p[10];
    if (v3)
    {
      __p[11] = v3;
      operator delete(v3);
    }

    v4 = __p[6];
    if (v4)
    {
      __p[7] = v4;
      operator delete(v4);
    }

    v5 = __p[3];
    if (v5)
    {
      __p[4] = v5;
      operator delete(v5);
    }

    if (*(__p + 23) < 0)
    {
      operator delete(*__p);
    }

    operator delete(__p);
  }
}

uint64_t sub_29AA7D66C(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = a1;
  if (a1 != a2)
  {
    v5 = *(a3 + 23);
    if (v5 >= 0)
    {
      v6 = *(a3 + 23);
    }

    else
    {
      v6 = a3[1];
    }

    if (v5 >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    while (1)
    {
      v8 = *(v3 + 39);
      v9 = v8;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v3 + 24);
      }

      if (v8 == v6)
      {
        v10 = v9 >= 0 ? (v3 + 16) : *(v3 + 16);
        if (!memcmp(v10, v7, v6))
        {
          break;
        }
      }

      v3 = *(v3 + 8);
      if (v3 == a2)
      {
        return a2;
      }
    }
  }

  return v3;
}

uint64_t **sub_29AA7D708(uint64_t **result, char *a2, char *a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * (result[2] - *result) < a4)
  {
    sub_29AA7D8C8(result);
    if (a4 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v9 = 0x5555555555555556 * ((v7[2] - *v7) >> 3);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0xAAAAAAAAAAAAAAABLL * ((v7[2] - *v7) >> 3) >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    sub_29A012BFC(v7, v10);
    result = sub_29AA7D930(v7, v6, a3, v7[1]);
LABEL_17:
    v7[1] = result;
    return result;
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 - v8) < a4)
  {
    if (v11 != v8)
    {
      v13 = a2;
      v14 = v12;
      v15 = a2;
      do
      {
        if (v15 != v8)
        {
          sub_29AA7D9B8(v8, *(v15 + 1), v13);
        }

        v15 += 24;
        v8 += 3;
        v13 += 24;
        v14 -= 24;
      }

      while (v14);
      v11 = v7[1];
    }

    result = sub_29AA7D930(v7, &v6[v12], a3, v11);
    goto LABEL_17;
  }

  if (a2 != a3)
  {
    v16 = a2;
    do
    {
      if (v6 != v8)
      {
        result = sub_29AA7D9B8(v8, *(v6 + 1), v16);
      }

      v6 += 24;
      v8 += 3;
      v16 += 24;
    }

    while (v6 != a3);
    v11 = v7[1];
  }

  while (v11 != v8)
  {
    v11 -= 3;
    result = sub_29A0EB800(v11);
  }

  v7[1] = v8;
  return result;
}

void sub_29AA7D8C8(void *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        sub_29A0EB800(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *sub_29AA7D930(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_29AA7D0B0(a4, v6);
      v6 += 24;
      a4 += 3;
      v7 -= 24;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_29AA7D990(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 24);
    do
    {
      sub_29A0EB800(v4);
      v4 -= 3;
      v2 += 24;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29AA7D9B8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  for (i = a1[1]; a2 != a3 && i != a1; i = i[1])
  {
    *(i + 4) = *(a2 + 16);
    a2 = *(a2 + 8);
  }

  if (i == a1)
  {
    return sub_29AA7DA08(a1, a1, a2, a3);
  }

  else
  {
    return sub_29AA7DB10(a1, i, a1);
  }
}

uint64_t *sub_29AA7DA08(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    v8 = operator new(0x18uLL);
    v9 = v8;
    *v8 = 0;
    v8[1] = 0;
    *(v8 + 4) = *(a3 + 16);
    v10 = *(a3 + 8);
    v11 = 1;
    if (v10 != a4)
    {
      v12 = v8;
      do
      {
        v8 = operator new(0x18uLL);
        *v8 = v12;
        v8[1] = 0;
        *(v8 + 4) = *(v10 + 16);
        v12[1] = v8;
        ++v11;
        v10 = *(v10 + 8);
        v12 = v8;
      }

      while (v10 != a4);
    }

    v13 = *a2;
    *(v13 + 8) = v9;
    *v9 = v13;
    *a2 = v8;
    v8[1] = a2;
    *(a1 + 16) += v11;
    return v9;
  }

  return a2;
}

void sub_29AA7DADC(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t *sub_29AA7DB10(uint64_t a1, uint64_t *__p, uint64_t *a3)
{
  if (__p != a3)
  {
    v5 = *(*a3 + 8);
    v6 = *__p;
    *(v6 + 8) = v5;
    *v5 = v6;
    do
    {
      v7 = __p[1];
      --*(a1 + 16);
      operator delete(__p);
      __p = v7;
    }

    while (v7 != a3);
  }

  return a3;
}

void sub_29AA7DB80(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_29AA7DB80(a1, *a2);
    sub_29AA7DB80(a1, a2[1]);
    v4 = a2[4];
    if (v4)
    {
      a2[5] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t *sub_29AA7DBE4(uint64_t ***a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29AA7DC64(a1, &v8, a2);
  result = *v5;
  if (!*v5)
  {
    sub_29AA7DD00(a1, a3, &v7);
    sub_29A00B204(a1, v8, v5, v7);
    return v7;
  }

  return result;
}

void *sub_29AA7DC64(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!sub_29AA7DD90(a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!sub_29AA7DD90(a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void *sub_29AA7DD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x38uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v6[5] = 0;
  v6[6] = 0;
  v6[4] = 0;
  result = sub_29A0BE2C8(v6 + 4, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
  *(a3 + 16) = 1;
  return result;
}

void sub_29AA7DD74(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29AA7DE14(v3, v2);
  _Unwind_Resume(a1);
}

BOOL sub_29AA7DD90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a3;
  v6 = *(a3 + 8);
  v7 = v4 - *a2;
  if ((v6 - *a3) >> 2 >= v7 >> 2)
  {
    v8 = v7 >> 2;
  }

  else
  {
    v8 = (v6 - *a3) >> 2;
  }

  if (v8)
  {
    v9 = 4 * v8;
    v10 = &v3[v8];
    while (*v3 == *v5)
    {
      ++v3;
      ++v5;
      v9 -= 4;
      if (!v9)
      {
        v3 = v10;
        break;
      }
    }
  }

  if (v5 == v6)
  {
    return 0;
  }

  if (v3 == v4)
  {
    return 1;
  }

  return *v3 < *v5;
}

void sub_29AA7DE14(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      __p[5] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_29AA7DE78(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = sub_29AA7DD90(a1, v3 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || sub_29AA7DD90(a1, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
}

uint64_t *sub_29AA7DF08(uint64_t ***a1, const void **a2, uint64_t a3, __int128 **a4, uint64_t a5)
{
  v7 = sub_29A00B0D0(a1, &v10, a2);
  result = *v7;
  if (!*v7)
  {
    sub_29AA7DFA0(a1, a4, &v9);
    sub_29A00B204(a1, v10, v7, v9);
    return v9;
  }

  return result;
}

double sub_29AA7DFA0@<D0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0xC8uLL);
  v7 = v6;
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_29A008D14(v6 + 32, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    *(v6 + 6) = *(v8 + 2);
    *(v6 + 2) = v9;
  }

  result = 0.0;
  *(v7 + 184) = 0u;
  *(v7 + 168) = 0u;
  *(v7 + 152) = 0u;
  *(v7 + 136) = 0u;
  *(v7 + 120) = 0u;
  *(v7 + 104) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 56) = 0u;
  *(a3 + 16) = 1;
  return result;
}

void sub_29AA7E058(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AA7ADC4(v2 + 32);
    }

    operator delete(v2);
  }
}

uint64_t *sub_29AA7E0B4(uint64_t ***a1, const void **a2, uint64_t a3, __int128 **a4, uint64_t a5)
{
  v7 = sub_29A00B0D0(a1, &v10, a2);
  result = *v7;
  if (!*v7)
  {
    sub_29AA7E14C(a1, a4, &v9);
    sub_29A00B204(a1, v10, v7, v9);
    return v9;
  }

  return result;
}

void *sub_29AA7E14C@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  result = operator new(0x50uLL);
  v7 = result;
  *a3 = result;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  if (*(*a2 + 23) < 0)
  {
    result = sub_29A008D14(result + 32, *v8, *(v8 + 1));
  }

  else
  {
    v9 = *v8;
    result[6] = *(v8 + 2);
    *(result + 2) = v9;
  }

  v7[7] = 0;
  v7[8] = 0;
  v7[9] = 0;
  *(a3 + 16) = 1;
  return result;
}

void sub_29AA7E1E4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_29AA365D4(v2 + 32);
    }

    operator delete(v2);
  }
}

void *sub_29AA7E240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = operator new(0xA0uLL);
  *v8 = a2;
  v8[1] = a3;
  sub_29AA7E2B4(a1, (v8 + 2), a4);
  return v8;
}

__n128 sub_29AA7E2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v3 = *(a3 + 8);
  *(a2 + 8) = v3;
  if ((v3 & 7) != 0 && (atomic_fetch_add_explicit((v3 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a2 + 8) &= 0xFFFFFFFFFFFFFFF8;
  }

  v4 = *(a3 + 32);
  *(a2 + 16) = *(a3 + 16);
  *(a2 + 32) = v4;
  v5 = *(a3 + 48);
  *(a2 + 48) = v5;
  if (v5)
  {
    v6 = (v5 - 16);
    if (*(a2 + 40))
    {
      v6 = *(a2 + 40);
    }

    atomic_fetch_add_explicit(v6, 1uLL, memory_order_relaxed);
  }

  v7 = *(a3 + 56);
  *(a2 + 72) = *(a3 + 72);
  *(a2 + 56) = v7;
  v8 = *(a3 + 88);
  *(a2 + 88) = v8;
  if (v8)
  {
    v9 = (v8 - 16);
    if (*(a2 + 80))
    {
      v9 = *(a2 + 80);
    }

    atomic_fetch_add_explicit(v9, 1uLL, memory_order_relaxed);
  }

  *(a2 + 96) = *(a3 + 96);
  v10 = *(a3 + 104);
  *(a2 + 104) = v10;
  if ((v10 & 7) != 0 && (atomic_fetch_add_explicit((v10 & 0xFFFFFFFFFFFFFFF8), 2u, memory_order_relaxed) & 1) == 0)
  {
    *(a2 + 104) &= 0xFFFFFFFFFFFFFFF8;
  }

  result = *(a3 + 112);
  *(a2 + 125) = *(a3 + 125);
  *(a2 + 112) = result;
  return result;
}

void sub_29AA7E390(uint64_t *result, _BYTE *a2)
{
  if (!*(result + 2))
  {
    v3 = *result;
    if (result[3])
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = atomic_load((v4 - 16));
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (v4)
    {
      if (result[3])
      {
        v6 = result;
      }

      else
      {
        v6 = (v4 - 8);
      }

      v7 = *v6;
    }

    else
    {
LABEL_10:
      v7 = 0;
    }

    if (v3 != v7)
    {
      *(v4 + v3) = *a2;
      ++*result;
      return;
    }

LABEL_13:
    sub_29B2BC85C();
  }

  sub_29B2BC7FC();
}

void *sub_29AA7E438(uint64_t a1, const void **a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = *a2;
    do
    {
      v10 = *v9++;
      v8 ^= (v8 << 6) + (v8 >> 2) + 2654435769u + v10;
    }

    while (v9 != v6);
  }

  v11 = *(a1 + 8);
  if (!v11)
  {
    goto LABEL_26;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  v13 = v12.u32[0];
  if (v12.u32[0] > 1uLL)
  {
    v4 = v8;
    if (v8 >= v11)
    {
      v4 = v8 % v11;
    }
  }

  else
  {
    v4 = (v11 - 1) & v8;
  }

  v14 = *(*a1 + 8 * v4);
  if (!v14)
  {
    goto LABEL_26;
  }

  v15 = *v14;
  if (!*v14)
  {
    goto LABEL_26;
  }

  v30 = a4;
  v16 = v6 - v7;
  do
  {
    v17 = v15[1];
    if (v17 == v8)
    {
      v18 = v15[2];
      if (v15[3] - v18 == v16 && !memcmp(v18, v7, v16))
      {
        return v15;
      }

      goto LABEL_24;
    }

    if (v13 > 1)
    {
      if (v17 >= v11)
      {
        v17 %= v11;
      }
    }

    else
    {
      v17 &= v11 - 1;
    }

    if (v17 != v4)
    {
      break;
    }

LABEL_24:
    v15 = *v15;
  }

  while (v15);
  a4 = v30;
LABEL_26:
  sub_29AA7E6E8(a1, v8, a4, &v31);
  v19 = (*(a1 + 24) + 1);
  v20 = *(a1 + 32);
  if (!v11 || (v20 * v11) < v19)
  {
    v21 = 1;
    if (v11 >= 3)
    {
      v21 = (v11 & (v11 - 1)) != 0;
    }

    v22 = v21 | (2 * v11);
    v23 = vcvtps_u32_f32(v19 / v20);
    if (v22 <= v23)
    {
      v24 = v23;
    }

    else
    {
      v24 = v22;
    }

    sub_29A019AA0(a1, v24);
    v11 = *(a1 + 8);
    if ((v11 & (v11 - 1)) != 0)
    {
      if (v8 >= v11)
      {
        v4 = v8 % v11;
      }

      else
      {
        v4 = v8;
      }
    }

    else
    {
      v4 = (v11 - 1) & v8;
    }
  }

  v25 = *a1;
  v26 = *(*a1 + 8 * v4);
  if (v26)
  {
    v15 = v31;
    *v31 = *v26;
    *v26 = v15;
  }

  else
  {
    v27 = v31;
    *v31 = *(a1 + 16);
    *(a1 + 16) = v27;
    *(v25 + 8 * v4) = a1 + 16;
    v15 = v31;
    if (*v31)
    {
      v28 = *(*v31 + 8);
      if ((v11 & (v11 - 1)) != 0)
      {
        if (v28 >= v11)
        {
          v28 %= v11;
        }
      }

      else
      {
        v28 &= v11 - 1;
      }

      *(*a1 + 8 * v28) = v31;
      v15 = v31;
    }
  }

  ++*(a1 + 24);
  return v15;
}

void sub_29AA7E6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    sub_29A4DDB04(&a13, __p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_29AA7E6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  v8 = operator new(0x30uLL);
  *a4 = v8;
  a4[1] = a1;
  a4[2] = 0;
  *v8 = 0;
  v8[1] = a2;
  v9 = *a3;
  v8[3] = 0;
  v8[4] = 0;
  v8[2] = 0;
  result = sub_29A0BE2C8(v8 + 2, *v9, *(v9 + 8), (*(v9 + 8) - *v9) >> 2);
  *(v8 + 10) = 0;
  *(a4 + 16) = 1;
  return result;
}

void sub_29AA7E76C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_29A4DDB04(v3, v2);
  _Unwind_Resume(a1);
}

void sub_29AA7E788(uint64_t *result, _WORD *a2)
{
  if (!*(result + 2))
  {
    v3 = *result;
    if (result[3])
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = atomic_load((v4 - 16));
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (v4)
    {
      if (result[3])
      {
        v6 = result;
      }

      else
      {
        v6 = (v4 - 8);
      }

      v7 = *v6;
    }

    else
    {
LABEL_10:
      v7 = 0;
    }

    if (v3 != v7)
    {
      *(v4 + 2 * v3) = *a2;
      ++*result;
      return;
    }

LABEL_13:
    sub_29B2BC920();
  }

  sub_29B2BC8C0();
}

void sub_29AA7E830(uint64_t *result, void *a2)
{
  if (!*(result + 2))
  {
    v3 = *result;
    if (result[3])
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = atomic_load((v4 - 16));
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (v4)
    {
      if (result[3])
      {
        v6 = result;
      }

      else
      {
        v6 = (v4 - 8);
      }

      v7 = *v6;
    }

    else
    {
LABEL_10:
      v7 = 0;
    }

    if (v3 != v7)
    {
      *(v4 + 8 * v3) = *a2;
      ++*result;
      return;
    }

LABEL_13:
    sub_29B2BC9F4();
  }

  sub_29B2BC994();
}

void sub_29AA7E8D8(uint64_t *result, _DWORD *a2)
{
  if (!*(result + 2))
  {
    v3 = *result;
    if (result[3])
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = atomic_load((v4 - 16));
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (v4)
    {
      if (result[3])
      {
        v6 = result;
      }

      else
      {
        v6 = (v4 - 8);
      }

      v7 = *v6;
    }

    else
    {
LABEL_10:
      v7 = 0;
    }

    if (v3 != v7)
    {
      *(v4 + 4 * v3) = *a2;
      ++*result;
      return;
    }

LABEL_13:
    sub_29B2BCAC4();
  }

  sub_29B2BCA64();
}

void sub_29AA7E980(uint64_t *result, void *a2)
{
  if (!*(result + 2))
  {
    v3 = *result;
    if (result[3])
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = atomic_load((v4 - 16));
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (v4)
    {
      if (result[3])
      {
        v6 = result;
      }

      else
      {
        v6 = (v4 - 8);
      }

      v7 = *v6;
    }

    else
    {
LABEL_10:
      v7 = 0;
    }

    if (v3 != v7)
    {
      *(v4 + 8 * v3) = *a2;
      ++*result;
      return;
    }

LABEL_13:
    sub_29B2BCB84();
  }

  sub_29B2BCB24();
}

void sub_29AA7EA28(uint64_t *result, _OWORD *a2)
{
  if (!*(result + 2))
  {
    v3 = *result;
    if (result[3])
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = atomic_load((v4 - 16));
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (v4)
    {
      if (result[3])
      {
        v6 = result;
      }

      else
      {
        v6 = (v4 - 8);
      }

      v7 = *v6;
    }

    else
    {
LABEL_10:
      v7 = 0;
    }

    if (v3 != v7)
    {
      *(v4 + 16 * v3) = *a2;
      ++*result;
      return;
    }

LABEL_13:
    sub_29B2BCC44();
  }

  sub_29B2BCBE4();
}

void sub_29AA7EAD0(uint64_t *result, __int128 *a2)
{
  if (!*(result + 2))
  {
    v3 = *result;
    if (result[3])
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = atomic_load((v4 - 16));
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (v4)
    {
      if (result[3])
      {
        v6 = result;
      }

      else
      {
        v6 = (v4 - 8);
      }

      v7 = *v6;
    }

    else
    {
LABEL_10:
      v7 = 0;
    }

    if (v3 != v7)
    {
      v8 = *a2;
      v9 = v4 + 24 * v3;
      *(v9 + 16) = *(a2 + 2);
      *v9 = v8;
      ++*result;
      return;
    }

LABEL_13:
    sub_29B2BCD08();
  }

  sub_29B2BCCA8();
}

void sub_29AA7EB88(uint64_t *result, _OWORD *a2)
{
  if (!*(result + 2))
  {
    v3 = *result;
    if (result[3])
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = atomic_load((v4 - 16));
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (v4)
    {
      if (result[3])
      {
        v6 = result;
      }

      else
      {
        v6 = (v4 - 8);
      }

      v7 = *v6;
    }

    else
    {
LABEL_10:
      v7 = 0;
    }

    if (v3 != v7)
    {
      v8 = a2[1];
      v9 = (v4 + 32 * v3);
      *v9 = *a2;
      v9[1] = v8;
      ++*result;
      return;
    }

LABEL_13:
    sub_29B2BCDE8();
  }

  sub_29B2BCD88();
}

void sub_29AA7EC34(uint64_t *result, _BYTE *a2)
{
  if (!*(result + 2))
  {
    v3 = *result;
    if (result[3])
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = atomic_load((v4 - 16));
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (v4)
    {
      if (result[3])
      {
        v6 = result;
      }

      else
      {
        v6 = (v4 - 8);
      }

      v7 = *v6;
    }

    else
    {
LABEL_10:
      v7 = 0;
    }

    if (v3 != v7)
    {
      *(v4 + v3) = *a2;
      ++*result;
      return;
    }

LABEL_13:
    sub_29B2BC85C();
  }

  sub_29B2BCE60();
}

void sub_29AA7ECDC(uint64_t *result, _OWORD *a2)
{
  if (!*(result + 2))
  {
    v3 = *result;
    if (result[3])
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = atomic_load((v4 - 16));
    if (v5 != 1)
    {
      goto LABEL_13;
    }

    v4 = result[4];
    if (v4)
    {
      if (result[3])
      {
        v6 = result;
      }

      else
      {
        v6 = (v4 - 8);
      }

      v7 = *v6;
    }

    else
    {
LABEL_10:
      v7 = 0;
    }

    if (v3 != v7)
    {
      *(v4 + 16 * v3) = *a2;
      ++*result;
      return;
    }

LABEL_13:
    sub_29B2BCF20();
  }

  sub_29B2BCEC0();
}

uint64_t *sub_29AA7ED84(uint64_t ***a1, const void **a2, uint64_t a3, __int128 **a4, uint64_t a5)
{
  v7 = sub_29A00B0D0(a1, &v10, a2);
  result = *v7;
  if (!*v7)
  {
    sub_29AA7EE1C(a1, a4, &v9);
    sub_29A00B204(a1, v10, v7, v9);
    return v9;
  }

  return result;
}

uint64_t sub_29AA7EE1C@<X0>(uint64_t a1@<X0>, __int128 **a2@<X2>, void *a3@<X8>)
{
  v6 = operator new(0x48uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  v8 = *a2;
  result = sub_29AA7EE9C(v6 + 32, &v8);
  *(a3 + 16) = 1;
  return result;
}

uint64_t sub_29AA7EE9C(uint64_t a1, __int128 **a2)
{
  v3 = *a2;
  v4 = **a2;
  *(a1 + 16) = *(*a2 + 2);
  *a1 = v4;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  pxrInternal__aapl__pxrReserved__::JsValue::JsValue((a1 + 24));
  return a1;
}

void sub_29AA7EEE0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_29AA7EEFC(uint64_t ***a1, uint64_t a2, const void **a3, __int128 *a4)
{
  v6 = sub_29A0194B4(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    sub_29AA7EF80(a1, a4, &v8);
    sub_29A00B204(a1, v10, v6, v8);
    return v8;
  }

  return result;
}

void *sub_29AA7EF80@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x48uLL);
  *a3 = v6;
  a3[1] = a1;
  a3[2] = 0;
  result = sub_29A151A98(v6 + 4, a2);
  *(a3 + 16) = 1;
  return result;
}

uint64_t *sub_29AA7F044(uint64_t *a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v2 = pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a1, "gcl");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(v2 + 1, "1.0");
  pxrInternal__aapl__pxrReserved__::TfToken::TfToken(a1 + 2, "usd");
  v3 = a1 + 3;
  v4 = *a1;
  v13 = v4;
  if ((v4 & 7) != 0)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v5, 2u, memory_order_relaxed) & 1) == 0)
    {
      v13 = v5;
    }
  }

  v6 = a1[1];
  v14 = v6;
  if ((v6 & 7) != 0)
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v7, 2u, memory_order_relaxed) & 1) == 0)
    {
      v14 = v7;
    }
  }

  v8 = a1[2];
  v15 = v8;
  if ((v8 & 7) != 0)
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8);
    if ((atomic_fetch_add_explicit(v9, 2u, memory_order_relaxed) & 1) == 0)
    {
      v15 = v9;
    }
  }

  *v3 = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_29A12EF7C(v3, &v13, &v16, 3uLL);
  for (i = 16; i != -8; i -= 8)
  {
    v11 = *(&v13 + i);
    if ((v11 & 7) != 0)
    {
      atomic_fetch_add_explicit((v11 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }
  }

  return a1;
}

void sub_29AA7F188(_Unwind_Exception *a1)
{
  v3 = 16;
  while (1)
  {
    v4 = *(v2 + v3);
    if ((v4 & 7) != 0)
    {
      atomic_fetch_add_explicit((v4 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
    }

    v3 -= 8;
    if (v3 == -8)
    {
      v5 = v1[2];
      if ((v5 & 7) != 0)
      {
        atomic_fetch_add_explicit((v5 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      v6 = v1[1];
      if ((v6 & 7) != 0)
      {
        atomic_fetch_add_explicit((v6 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      if ((*v1 & 7) != 0)
      {
        atomic_fetch_add_explicit((*v1 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_29AA7F208(void *a1)
{
  v2 = atomic_load(&qword_2A1788F38);
  if (!v2)
  {
    v2 = sub_29AA8084C(&qword_2A1788F38);
  }

  v3 = atomic_load(&qword_2A1788F38);
  if (!v3)
  {
    v3 = sub_29AA8084C(&qword_2A1788F38);
  }

  v4 = atomic_load(&qword_2A1788F38);
  if (!v4)
  {
    v4 = sub_29AA8084C(&qword_2A1788F38);
  }

  v5 = atomic_load(&qword_2A1788F38);
  if (!v5)
  {
    v5 = sub_29AA8084C(&qword_2A1788F38);
  }

  if ((*v5 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v5 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v5);
  }

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::SdfFileFormat(a1, v2, v3 + 1, v4 + 2, EmptyString);
}

void sub_29AA7F2FC(pxrInternal__aapl__pxrReserved__::SdfFileFormat *a1)
{
  pxrInternal__aapl__pxrReserved__::SdfFileFormat::~SdfFileFormat(a1);

  operator delete(v1);
}

BOOL sub_29AA7F324(pxrInternal__aapl__pxrReserved__ *a1, uint64_t a2)
{
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);
  if (*(a2 + 23) < 0)
  {
    sub_29A008D14(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v8 = *(a2 + 16);
  }

  pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset(Resolver);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v9 != 0;
  if (!v9)
  {
    v5 = sub_29AABB028();
    std::operator+<char>();
    sub_29AA5B750(v5, __p);
    if (SHIBYTE(v8) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v10)
  {
    sub_29A014BEC(v10);
  }

  return v4;
}

void sub_29AA7F3FC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_29A014BEC(a17);
  }

  __cxa_begin_catch(a1);
  v18 = sub_29AABB028();
  sub_29A008E78(&__p, "CanRead: exception");
  sub_29AA5B750(v18, &__p);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x29AA7F3E4);
}

uint64_t sub_29AA7F494(pxrInternal__aapl__pxrReserved__ *a1, pxrInternal__aapl__pxrReserved__::SdfLayer *a2, __int128 *a3)
{
  Resolver = pxrInternal__aapl__pxrReserved__::ArGetResolver(a1);
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(&__dst, *a3, *(a3 + 1));
  }

  else
  {
    __dst = *a3;
    v24 = *(a3 + 2);
  }

  pxrInternal__aapl__pxrReserved__::ArResolver::OpenAsset(Resolver);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__dst);
  }

  if (v25)
  {
    __dst = 0uLL;
    v24 = 0;
    (*(*v25 + 24))(__p);
    v6 = __p[0];
    v7 = (*(*v25 + 16))(v25);
    v9 = sub_29AA7F7C0(v8, v7, a2, v6, v7, 0, &__dst);
    if (__p[1])
    {
      sub_29A014BEC(__p[1]);
    }

    if ((v9 & 1) == 0)
    {
      v10 = sub_29AABB028();
      std::operator+<char>();
      v11 = std::string::append(&v19, ", error ");
      v12 = *&v11->__r_.__value_.__l.__data_;
      v20.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v20.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if (v24 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      if (v24 >= 0)
      {
        v14 = HIBYTE(v24);
      }

      else
      {
        v14 = *(&__dst + 1);
      }

      v15 = std::string::append(&v20, p_dst, v14);
      v16 = *&v15->__r_.__value_.__l.__data_;
      v22 = v15->__r_.__value_.__r.__words[2];
      *__p = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      sub_29AA5B750(v10, __p);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(__dst);
    }
  }

  else
  {
    v17 = sub_29AABB028();
    std::operator+<char>();
    sub_29AA5B750(v17, &__dst);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__dst);
    }

    v9 = 0;
  }

  if (v26)
  {
    sub_29A014BEC(v26);
  }

  return v9;
}

void sub_29AA7F6C4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v24 - 57) < 0)
  {
    operator delete(*(v24 - 80));
  }

  v26 = *(v24 - 40);
  if (v26)
  {
    sub_29A014BEC(v26);
  }

  __cxa_begin_catch(a1);
  v27 = sub_29AABB028();
  sub_29A008E78((v24 - 80), "Read: exception");
  sub_29AA5B750(v27, (v24 - 80));
  if (*(v24 - 57) < 0)
  {
    operator delete(*(v24 - 80));
  }

  __cxa_end_catch();
  JUMPOUT(0x29AA7F6ACLL);
}

uint64_t sub_29AA7F7C0(__n128 a1, uint64_t a2, pxrInternal__aapl__pxrReserved__::SdfLayer *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_29AABB028();
  v11 = *v10;
  if (*v10)
  {
    v12 = os_signpost_id_generate(*v10);
    if (v12 + 1 >= 2 && os_signpost_enabled(v11))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_signpost_emit_with_name_impl(&dword_299FE7000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v12, "decompressMesh", &unk_29B9D452D, buf, 2u);
    }
  }

  else
  {
    v12 = 0;
  }

  if (a5)
  {
    sub_29A008E78(buf, ".usda");
    v18[0] = 0;
    v18[1] = 0;
    v17 = v18;
    pxrInternal__aapl__pxrReserved__::SdfLayer::CreateAnonymous(buf, &v17, &v29);
    sub_29A01752C(&v17, v18[0]);
    if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf[0].__r_.__value_.__l.__data_);
    }

    sub_29A321960(buf, &v29);
    pxrInternal__aapl__pxrReserved__::UsdStage::Open(buf, 0, &v28);
    sub_29B28F9E0(buf);
    sub_29A89A040(buf, &v28);
    sub_29A008E78(v22, "/ReconstructedUsdMesh");
    pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v23, v22);
    pxrInternal__aapl__pxrReserved__::UsdGeomMesh::Define(buf, v25);
    pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v24);
    sub_29B2BCF84(&v23, v22, buf);
    sub_29AA804CC(buf);
    sub_29AA7AE5C(&v17);
    if (sub_29AAB8828(&v17, a4, a5))
    {
      if (os_variant_has_internal_content())
      {
        sub_29AA65D6C(buf, a4, a5, v25);
      }

      MEMORY[0x29C2C1A60](a7, "Aborting, unable to read JSON bitstream");
      if (v11 && v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
      {
        LOWORD(v16) = 0;
        _os_signpost_emit_with_name_impl(&dword_299FE7000, v11, OS_SIGNPOST_INTERVAL_END, v12, "decompressMesh", &unk_29B9D452D, &v16, 2u);
      }
    }

    else
    {
      v21 = v19;
      sub_29AA63D70(buf, &v17);
      if (!sub_29AA5F608(buf, v25, v14))
      {
        v15 = sub_29A5A70E0(&v28);
        sub_29A580660(&v16, &v26, &v27);
        pxrInternal__aapl__pxrReserved__::UsdStage::SetDefaultPrim(v15, &v16);
      }

      if (v11 && v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
      {
        LOWORD(v16) = 0;
        _os_signpost_emit_with_name_impl(&dword_299FE7000, v11, OS_SIGNPOST_INTERVAL_END, v12, "decompressMesh", &unk_29B9D452D, &v16, 2u);
      }

      MEMORY[0x29C2C1A60](a7, "Aborting, unable to convert gcl mesh to usd mesh");
    }

    sub_29AA7AF60(&v17);
    sub_29AA80744(buf);
  }

  MEMORY[0x29C2C1A60](a7, "Aborting, empty bitstream");
  if (v11 && v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
    _os_signpost_emit_with_name_impl(&dword_299FE7000, v11, OS_SIGNPOST_INTERVAL_END, v12, "decompressMesh", &unk_29B9D452D, buf, 2u);
  }

  return 0;
}

void sub_29AA7FC34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, atomic_uint *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a10)
  {
    if (atomic_fetch_add_explicit(a10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
    }
  }

  sub_29AA7AF60(&a13);
  sub_29AA80744(&__p);
}

uint64_t sub_29AA7FE7C(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfLayer *a2, __n128 a3, uint64_t a4, uint64_t *a5)
{
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  v5 = sub_29AA7F7C0(a3, a1, a2, *a5, a5[1] - *a5, 0, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_29AA7FED4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  v16 = sub_29AABB028();
  sub_29A008E78(&__p, "Read: exception");
  sub_29AA5B750(v16, &__p);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x29AA7FEC0);
}

uint64_t sub_29AA7FF48(uint64_t a1, pxrInternal__aapl__pxrReserved__::SdfLayer *a2, uint64_t a3, __n128 a4)
{
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  v4 = *(a3 + 8);
  if (*(a3 + 23) >= 0)
  {
    v5 = *(a3 + 23);
  }

  else
  {
    a3 = *a3;
    v5 = v4;
  }

  v6 = sub_29AA7F7C0(a4, a1, a2, a3, v5, 0, v11);
  if ((v6 & 1) == 0)
  {
    v7 = sub_29AABB028();
    std::operator+<char>();
    sub_29AA5B750(v7, &__p);
    if (v10 < 0)
    {
      operator delete(__p);
    }
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  return v6;
}

void sub_29AA7FFEC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  v18 = sub_29AABB028();
  sub_29A008E78(&__p, "ReadFromString: exception");
  sub_29AA5B750(v18, &__p);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x29AA7FFD8);
}

void sub_29AA80064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
  if (!v4)
  {
    v4 = sub_29A34AE68(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
  }

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindById(v4, v5);
  sub_29A1DA734(v5);
}

void sub_29AA8010C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_begin_catch(a1);
  v15 = sub_29AABB028();
  sub_29A008E78(&__p, "WriteToString: exception");
  sub_29AA5B750(v15, &__p);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x29AA800E4);
}

void sub_29AA801B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
  if (!v4)
  {
    v4 = sub_29A34AE68(&pxrInternal__aapl__pxrReserved__::UsdUsdaFileFormatTokens);
  }

  pxrInternal__aapl__pxrReserved__::SdfFileFormat::FindById(v4, v5);
  sub_29A1DA734(v5);
}

void sub_29AA80260(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_begin_catch(a1);
  v15 = sub_29AABB028();
  sub_29A008E78(&__p, "WriteToStream: exception");
  sub_29AA5B750(v15, &__p);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x29AA80238);
}

void *sub_29AA8030C()
{
  v2 = nullsub_1505;
  v0 = pxrInternal__aapl__pxrReserved__::TfType::_DefineImpl(&unk_2A20707A8, &var8, &v2, 1, 112, 0, 0);
  return sub_29AA80368(v0);
}

void *sub_29AA80368(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A20707D0;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29AA803F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B290BEC();
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA80418(pxrInternal__aapl__pxrReserved__::Sdf_FileFormatFactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::Sdf_FileFormatFactoryBase::~Sdf_FileFormatFactoryBase(a1);

  operator delete(v1);
}

uint64_t sub_29AA804CC(uint64_t a1)
{
  *a1 = 0x10000;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 224) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = a1 + 224;
  *(a1 + 240) = a1 + 240;
  *(a1 + 248) = a1 + 240;
  *(a1 + 256) = 0;
  *(a1 + 264) = a1 + 264;
  *(a1 + 272) = a1 + 264;
  *(a1 + 280) = 0;
  *(a1 + 296) = 0;
  *(a1 + 288) = a1 + 296;
  *(a1 + 304) = 0;
  *(a1 + 312) = 1;
  *(a1 + 584) = 0;
  *(a1 + 313) = 0;
  *(a1 + 320) = 0;
  sub_29A008E78((a1 + 592), "pmc");
  *(a1 + 724) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 616) = 0u;
  sub_29AA59714(a1 + 328);
  return a1;
}

void sub_29AA806E8(uint64_t a1, void *a2, __n128 a3)
{
  if (a2)
  {
    sub_29AA806E8(a1, *a2, a3);
    sub_29AA806E8(a1, a2[1], v5);
    sub_29AA365D4((a2 + 4));

    operator delete(a2);
  }
}

uint64_t *sub_29AA8084C(atomic_ullong *a1)
{
  result = sub_29AA80894();
  v3 = 0;
  atomic_compare_exchange_strong(a1, &v3, result);
  if (v3)
  {
    if (result)
    {
      v4 = sub_29A764EAC(result);
      operator delete(v4);
    }

    return atomic_load(a1);
  }

  return result;
}

uint64_t *sub_29AA80894()
{
  v0 = operator new(0x30uLL);
  sub_29AA7F044(v0);
  return v0;
}

uint64_t sub_29AA808D8(_BYTE *a1, __n128 a2)
{
  if (*a1 != 1 || a1[1] != 1)
  {
    return 0;
  }

  v8 = v2;
  v9 = v3;
  v4 = sub_29AABB028();
  sub_29A008E78(__p, "checkParameters: cannot have unifyIndices and preserveVertexOrder both true at the same time");
  sub_29AA5B750(v4, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return 10;
}

void sub_29AA80984(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_begin_catch(a1);
  v15 = sub_29AABB028();
  sub_29A008E78(&__p, "compress: exception");
  sub_29AA5B750(v15, &__p);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_end_catch();
  JUMPOUT(0x29AA80974);
}

uint64_t pxrInternal__aapl__pxrReserved__::AaplGclCodec_CompressMesh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  v59 = a6;
  sub_29A8CCEB8(&v46, a2);
  sub_29AA81918(&v46, v47);
  sub_29A65B7E0(&__p, ".gcl");
  v60.__data_ = &__p;
  if (sub_29AA818DC(v47, v60))
  {
    v11 = 1;
  }

  else
  {
    v12 = sub_29A8CCEB8(&v57, a3);
    sub_29AA81918(v12, &__dst);
    sub_29A65B7E0(&__str, ".gcl");
    v61.__data_ = &__str;
    v11 = sub_29AA818DC(&__dst, v61);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
    if (v11)
    {
      goto LABEL_15;
    }
  }

  else if (v11)
  {
LABEL_15:
    v13 = sub_29AABB028();
    v14 = sub_29A8CCEB8(&__str, a2);
    sub_29AA81918(v14, &v57);
    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_29A008D14(&__dst, v57.__r_.__value_.__l.__data_, v57.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v57;
    }

    v30 = std::string::insert(&__dst, 0, "AaplGclCodec_CompressMesh: Wrong extension! filename: ");
    v31 = *&v30->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    v32 = std::string::append(&__p, " refPath: ");
    v33 = *&v32->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = sub_29A8CCEB8(&v51, a3);
    sub_29AA81918(v34, &v52);
    if (SHIBYTE(v53) < 0)
    {
      sub_29A008D14(&v54, v52, *(&v52 + 1));
    }

    else
    {
      v54 = v52;
      v55 = v53;
    }

    if (v55 >= 0)
    {
      v35 = &v54;
    }

    else
    {
      v35 = v54;
    }

    if (v55 >= 0)
    {
      v36 = HIBYTE(v55);
    }

    else
    {
      v36 = *(&v54 + 1);
    }

    v37 = std::string::append(&v46, v35, v36);
    v38 = *&v37->__r_.__value_.__l.__data_;
    v47[0].__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
    *&v47[0].__r_.__value_.__l.__data_ = v38;
    v37->__r_.__value_.__l.__size_ = 0;
    v37->__r_.__value_.__r.__words[2] = 0;
    v37->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v13, v47);
    if (SHIBYTE(v47[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v55) < 0)
    {
      operator delete(v54);
    }

    if (SHIBYTE(v53) < 0)
    {
      operator delete(v52);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    return 5;
  }

  sub_29AA819D0(a2, v47);
  if (SHIBYTE(v47[0].__r_.__value_.__r.__words[2]) < 0 && v47[0].__r_.__value_.__l.__size_ >= 0x100)
  {
    operator delete(v47[0].__r_.__value_.__l.__data_);
LABEL_31:
    v18 = sub_29AABB028();
    if (*(a2 + 23) >= 0)
    {
      v19 = *(a2 + 23);
    }

    else
    {
      v19 = *(a2 + 8);
    }

    std::to_string(&__dst, v19);
    v20 = std::string::insert(&__dst, 0, "AaplGclCodec_CompressMesh: File name too long! filename: ");
    v21 = *&v20->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = std::string::append(&__p, " refPath: ");
    v23 = *&v22->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    if (*(a3 + 23) >= 0)
    {
      v24 = *(a3 + 23);
    }

    else
    {
      v24 = *(a3 + 8);
    }

    std::to_string(&v57, v24);
    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v57;
    }

    else
    {
      v25 = v57.__r_.__value_.__r.__words[0];
    }

    if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v57.__r_.__value_.__l.__size_;
    }

    v27 = std::string::append(&v46, v25, size);
    v28 = *&v27->__r_.__value_.__l.__data_;
    v47[0].__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v47[0].__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    sub_29AA5B750(v18, v47);
    if (SHIBYTE(v47[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v57.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    return 6;
  }

  v15.n128_f64[0] = sub_29AA819D0(a3, &v46);
  v17 = (v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0 && v46.__r_.__value_.__l.__size_ > 0xFF;
  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v47[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47[0].__r_.__value_.__l.__data_);
    if (v17)
    {
      goto LABEL_31;
    }
  }

  else if (v17)
  {
    goto LABEL_31;
  }

  v29 = sub_29AA808D8(&v59, v15);
  if (!v29)
  {
    sub_29AA804CC(v47);
    v48 = 0u;
    v49 = 0;
    v50 = 1;
    sub_29A008E78(&v46, "pmesh");
    sub_29AA858CC(v47, &v46);
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    __dst.__r_.__value_.__r.__words[0] = &__dst;
    __dst.__r_.__value_.__l.__size_ = &__dst;
    __dst.__r_.__value_.__r.__words[2] = 0;
    v41 = sub_29AA81B40(v47, a1, v40, &__dst, a4, a5, &v59);
    if (v41)
    {
      if (v41 == 199)
      {
        v42 = sub_29AABB028();
        sub_29A008E78(&v46, "Empty mesh detected, skipping");
        sub_29AA81FC8(v42, &v46);
        if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46.__r_.__value_.__l.__data_);
        }
      }
    }

    else if (!sub_29AA82078(v47, a2))
    {
      v43 = *(a1 + 8);
      if (v43 && (*(v43 + 57) & 8) == 0 && ((*(*a1 + 32))(a1) & 1) != 0)
      {
        sub_29A580660(&v46, (a1 + 8), (a1 + 16));
        pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(&v46);
      }

      v44 = sub_29AABB028();
      sub_29A008E78(&v46, "Invalid mesh!");
      sub_29AA5B750(v44, &v46);
      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }
    }

    sub_29A116F64(&__dst);
    if (v48)
    {
      *(&v48 + 1) = v48;
      operator delete(v48);
    }

    sub_29AA80744(v47);
  }

  return v29;
}

void sub_29AA814F8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  a9 = (v28 - 144);
  sub_29A012C90(&a9);
  sub_29AA823E4(&a16);
  sub_29A116F64((v28 - 112));
  sub_29AA82440(&__p);
}

BOOL sub_29AA818DC(const std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *(a2.__data_ + 1);
  if (*(a2.__data_ + 23) >= 0)
  {
    a2.__size_ = *(a2.__data_ + 23);
  }

  else
  {
    a2.__data_ = *a2.__data_;
    a2.__size_ = v2;
  }

  return std::__fs::filesystem::path::__compare(a1, a2) != 0;
}

double sub_29AA81918@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__extension(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_29A008DA8();
  }

  if (v3.__size_ >= 0x17)
  {
    if ((v3.__size_ | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v3.__size_ | 7) + 1;
    }

    p_dst = operator new(v5);
    *(&__dst + 1) = v3.__size_;
    v8 = v5 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    HIBYTE(v8) = v3.__size_;
    p_dst = &__dst;
    if (!v3.__size_)
    {
      goto LABEL_10;
    }
  }

  memmove(p_dst, v3.__data_, v3.__size_);
LABEL_10:
  *(p_dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v8;
  return result;
}

double sub_29AA819D0@<D0>(__int128 *a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_29A008D14(a2, *a1, *(a1 + 1));
  }

  else
  {
    v3 = *a1;
    *a2 = *a1;
  }

  v4 = 0;
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  v6 = a2->__r_.__value_.__r.__words[0];
  if (size >= 0)
  {
    v6 = a2;
  }

  if (size < 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v7 = &v6[-1].__r_.__value_.__r.__words[2] + 7;
  while (size != v4)
  {
    v8 = v7[size];
    ++v4;
    --v7;
    if (v8 == 47)
    {
      if (size + 1 != v4)
      {
        v9 = size - v4;
        if (v4 == 1)
        {
          std::string::basic_string(&v14, a2, 0, v9, &v15);
          if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(a2->__r_.__value_.__l.__data_);
          }

          *&v3 = v14.__r_.__value_.__r.__words[0];
          *a2 = v14;
          size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
          v10 = a2->__r_.__value_.__r.__words[0];
          if (size >= 0)
          {
            v10 = a2;
          }

          if (size < 0)
          {
            size = a2->__r_.__value_.__l.__size_;
          }

          v11 = &v10[-1].__r_.__value_.__r.__words[2] + 7;
          v9 = size;
          while (v9)
          {
            v12 = v11[v9--];
            if (v12 == 47)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
LABEL_22:
          if (size && v9 != -1)
          {
            std::string::basic_string(&v14, a2, v9 + 1, 0xFFFFFFFFFFFFFFFFLL, &v15);
            if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(a2->__r_.__value_.__l.__data_);
            }

            *&v3 = v14.__r_.__value_.__r.__words[0];
            *a2 = v14;
          }
        }
      }

      return *&v3;
    }
  }

  return *&v3;
}

void sub_29AA81B20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_29AA81B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, char *a7)
{
  v13 = a1 + 592;
  if (*(a1 + 615) < 0)
  {
    sub_29A008D14(__dst, *(a1 + 592), *(a1 + 600));
  }

  else
  {
    *__dst = *v13;
    v25 = *(a1 + 608);
  }

  if (SHIBYTE(v25) < 0)
  {
    if (__dst[1] != 3)
    {
      operator delete(__dst[0]);
      goto LABEL_23;
    }

    v16 = *__dst[0] != 28016 || *(__dst[0] + 2) != 99;
    operator delete(__dst[0]);
    if (v16)
    {
LABEL_23:
      if (*(a1 + 615) < 0)
      {
        sub_29A008D14(__dst, *(a1 + 592), *(a1 + 600));
      }

      else
      {
        *__dst = *v13;
        v25 = *(v13 + 16);
      }

      if (SHIBYTE(v25) < 0)
      {
        if (__dst[1] != 5)
        {
          operator delete(__dst[0]);
LABEL_44:
          v17 = sub_29AABB028();
          v18 = "compress: invalid codec";
          goto LABEL_45;
        }

        v21 = *__dst[0] != 1936026992 || *(__dst[0] + 4) != 104;
        operator delete(__dst[0]);
        if (v21)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (SHIBYTE(v25) != 5)
        {
          goto LABEL_44;
        }

        if (LODWORD(__dst[0]) != 1936026992 || BYTE4(__dst[0]) != 104)
        {
          goto LABEL_44;
        }
      }

      sub_29AA5B800(a1, a2, a5);
    }
  }

  else
  {
    if (SHIBYTE(v25) != 3)
    {
      goto LABEL_23;
    }

    if (LOWORD(__dst[0]) != 28016 || BYTE2(__dst[0]) != 99)
    {
      goto LABEL_23;
    }
  }

  LODWORD(__dst[0]) = 514;
  sub_29AA5E118(a1, __dst);
  if (!(*a7 | a7[1]))
  {
    return sub_29AA71E50(a1, a2, a5, a6, a4, (a1 + 744));
  }

  v17 = sub_29AABB028();
  v18 = "compress: invalid parameters/codec";
LABEL_45:
  sub_29A008E78(__dst, v18);
  sub_29AA5B750(v17, __dst);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__dst[0]);
  }

  return 4;
}

void sub_29AA81F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_29AA81FC8(os_log_t *a1, uint64_t *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  if (*a1 && os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&dword_299FE7000, v2, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }
}

uint64_t sub_29AA82078(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(a1 + 768) != 1)
  {
    return 0;
  }

  v13.__loc_ = 0;
  v10[1] = 0;
  v13.__vftable = &unk_2A206F2E0;
  std::ios_base::init(&v13, v12);
  v15 = -1;
  v14 = 0;
  v13.__vftable = &unk_2A206F1C8;
  v10[0] = &unk_2A206F178;
  v11 = &unk_2A206F1A0;
  MEMORY[0x29C2C1D10](v12);
  sub_29AA85854(v10, a2, 16);
  if (*&v12[*(v10[0] - 24) + 8])
  {
    v3 = sub_29AABB028();
    std::operator+<char>();
    sub_29AA5B750(v3, __p);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    v4 = 0;
    a2 = 400;
  }

  else
  {
    std::ostream::write();
    if (*&v12[*(v10[0] - 24) + 8])
    {
      v5 = sub_29AABB028();
      std::operator+<char>();
      sub_29AA5B750(v5, __p);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }

      v4 = 0;
      a2 = 403;
    }

    else
    {
      if (!std::filebuf::close())
      {
        std::ios_base::clear((v10 + *(v10[0] - 24)), *&v12[*(v10[0] - 24) + 8] | 4);
      }

      if (*&v12[*(v10[0] - 24) + 8])
      {
        v6 = sub_29AABB028();
        std::operator+<char>();
        sub_29AA5B750(v6, __p);
        if (v9 < 0)
        {
          operator delete(__p[0]);
        }

        v4 = 0;
        a2 = 401;
      }

      else
      {
        v4 = 1;
      }
    }
  }

  v13.__vftable = &unk_2A206F1C8;
  v10[0] = &unk_2A206F178;
  v11 = &unk_2A206F1A0;
  MEMORY[0x29C2C1D20](v12);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](&v13);
  if (v4)
  {
    return 0;
  }

  return a2;
}

void sub_29AA82398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_29AA22564(va);
  _Unwind_Resume(a1);
}

uint64_t sub_29AA823E4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((v2 & 7) != 0)
  {
    atomic_fetch_add_explicit((v2 & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
  }

  pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL((a1 + 20));
  sub_29A1DE3A4((a1 + 16));
  v4 = *(a1 + 8);
  if (v4)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v4, v3);
  }

  return a1;
}

void sub_29AA82440(uint64_t a1)
{
  v2 = *(a1 + 744);
  if (v2)
  {
    *(a1 + 752) = v2;
    operator delete(v2);
  }

  sub_29AA80744(a1);
}

void pxrInternal__aapl__pxrReserved__::aaplUsdGclCodec::compressMesh(pxrInternal__aapl__pxrReserved__::aaplUsdGclCodec *this, pxrInternal__aapl__pxrReserved__::UsdGeomMesh *a2, const pxrInternal__aapl__pxrReserved__::VtDictionary *a3, pxrInternal__aapl__pxrReserved__::VtDictionary *a4, __n128 a5)
{
  v151[3] = *MEMORY[0x29EDCA608];
  v7 = *sub_29AABB028();
  log = v7;
  if (v7)
  {
    spid = os_signpost_id_generate(v7);
    if (spid + 1 >= 2 && os_signpost_enabled(log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_299FE7000, log, OS_SIGNPOST_INTERVAL_BEGIN, spid, "compressMesh", &unk_29B9D452D, buf, 2u);
    }
  }

  else
  {
    spid = 0;
  }

  sub_29AA804CC(buf);
  v144 = 0u;
  v145 = 0;
  v146 = 1;
  if (!pxrInternal__aapl__pxrReserved__::VtDictionary::empty(a3))
  {
    pxrInternal__aapl__pxrReserved__::VtDictionary::clear(a3);
  }

  sub_29A008E78(&v139, "pmc");
  if (sub_29AA84B3C(a2, "SelectCodec"))
  {
    v8 = sub_29AA84BB4(a2, "SelectCodec");
    std::string::operator=(&v139, v8);
  }

  if ((os_variant_has_internal_content() & 1) == 0)
  {
    if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v139.__r_.__value_.__l.__size_ != 3)
      {
        goto LABEL_20;
      }

      v9 = v139.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) != 3)
      {
        goto LABEL_20;
      }

      v9 = &v139;
    }

    data_low = LOWORD(v9->__r_.__value_.__l.__data_);
    v11 = v9->__r_.__value_.__s.__data_[2];
    if (data_low == 28016 && v11 == 99)
    {
      v25 = sub_29AABB028();
      sub_29A008E78(&v150, "Invalid codec");
      sub_29AA5B750(v25, &v150);
      if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v150.__r_.__value_.__l.__data_);
      }

      if (log)
      {
        if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v14 = log;
          if (os_signpost_enabled(log))
          {
            LOWORD(v150.__r_.__value_.__l.__data_) = 0;
            goto LABEL_27;
          }
        }
      }

LABEL_351:
      if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v139.__r_.__value_.__l.__data_);
      }

      if (v144)
      {
        *(&v144 + 1) = v144;
        operator delete(v144);
      }

      sub_29AA80744(buf);
    }
  }

LABEL_20:
  if (sub_29AA858CC(buf, &v139))
  {
    v13 = sub_29AABB028();
    sub_29A008E78(&v150, "Cannot set codec");
    sub_29AA5B750(v13, &v150);
    if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v150.__r_.__value_.__l.__data_);
    }

    if (log)
    {
      if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v14 = log;
        if (os_signpost_enabled(log))
        {
          LOWORD(v150.__r_.__value_.__l.__data_) = 0;
LABEL_27:
          _os_signpost_emit_with_name_impl(&dword_299FE7000, v14, OS_SIGNPOST_INTERVAL_END, spid, "compressMesh", &unk_29B9D452D, &v150, 2u);
          goto LABEL_351;
        }
      }
    }

    goto LABEL_351;
  }

  sub_29A008E78(&v138, "");
  if (sub_29AA84B3C(a2, "CompressedBitstreamPath"))
  {
    v15 = sub_29AA84BB4(a2, "CompressedBitstreamPath");
    std::string::operator=(&v138, v15);
    goto LABEL_114;
  }

  sub_29A008E78(&v150, "pmesh");
  if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v139.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v139.__r_.__value_.__l.__size_;
  }

  v17 = HIBYTE(v150.__r_.__value_.__r.__words[2]);
  v18 = SHIBYTE(v150.__r_.__value_.__r.__words[2]);
  if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v17 = v150.__r_.__value_.__l.__size_;
  }

  if (size == v17)
  {
    if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v139;
    }

    else
    {
      v19 = v139.__r_.__value_.__r.__words[0];
    }

    if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &v150;
    }

    else
    {
      v20 = v150.__r_.__value_.__r.__words[0];
    }

    v21 = memcmp(v19, v20, size) == 0;
    if ((v18 & 0x80000000) == 0)
    {
LABEL_43:
      if (v21)
      {
LABEL_44:
        v22 = sub_29A580660(&v150, this + 1, this + 4);
        v23 = sub_29A5A6058(v22);
        if ((*v23 & 0xFFFFFFFFFFFFFFF8) != 0)
        {
          EmptyString = ((*v23 & 0xFFFFFFFFFFFFFFF8) + 16);
        }

        else
        {
          EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v23);
        }

        if (*(EmptyString + 23) >= 0)
        {
          v36 = *(EmptyString + 23);
        }

        else
        {
          v36 = EmptyString[1];
        }

        sub_29A022DE0(&v147, v36 + 4);
        if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = &v147;
        }

        else
        {
          v37 = v147.__r_.__value_.__r.__words[0];
        }

        if (v36)
        {
          if (*(EmptyString + 23) >= 0)
          {
            v38 = EmptyString;
          }

          else
          {
            v38 = *EmptyString;
          }

          memmove(v37, v38, v36);
        }

        strcpy(v37 + v36, ".gcl");
        if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v138.__r_.__value_.__l.__data_);
        }

        v138 = v147;
        *(&v147.__r_.__value_.__s + 23) = 0;
        v147.__r_.__value_.__s.__data_[0] = 0;
        if ((v151[0] & 7) != 0)
        {
          atomic_fetch_add_explicit((v151[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
        }

LABEL_112:
        pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle::operator BOOL(&v150.__r_.__value_.__r.__words[2] + 1);
        sub_29A1DE3A4(&v150.__r_.__value_.__r.__words[2]);
        if (v150.__r_.__value_.__l.__size_)
        {
          pxrInternal__aapl__pxrReserved__::TfDelegatedCountDecrement(v150.__r_.__value_.__l.__size_, v42);
        }

LABEL_114:
        if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_29A008D14(&__dst, v138.__r_.__value_.__l.__data_, v138.__r_.__value_.__l.__size_);
        }

        else
        {
          __dst = v138;
        }

        if (sub_29AA84B3C(a2, "ReferencePath"))
        {
          v43 = sub_29AA84BB4(a2, "ReferencePath");
          std::string::operator=(&__dst, v43);
        }

        if (sub_29AA84C5C(a2, "CompressionLevel"))
        {
          v44 = *sub_29AA84CD4(a2, "CompressionLevel");
          if ((v44 - 11) <= 0xFFFFFFF5)
          {
            v45 = sub_29AABB028();
            sub_29A008E78(&v150, "Invalid compression level");
            sub_29AA5B750(v45, &v150);
            if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v150.__r_.__value_.__l.__data_);
            }

            if (log && spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(log))
            {
              LOWORD(v150.__r_.__value_.__l.__data_) = 0;
              _os_signpost_emit_with_name_impl(&dword_299FE7000, log, OS_SIGNPOST_INTERVAL_END, spid, "compressMesh", &unk_29B9D452D, &v150, 2u);
            }

            goto LABEL_347;
          }
        }

        else
        {
          v44 = 10;
        }

        v119 = v44;
        v136 = 1;
        if (sub_29AA84D7C(a2, "UnifyIndices"))
        {
          v46 = *sub_29AA84DF4(a2, "UnifyIndices");
LABEL_140:
          LOBYTE(v136) = v46;
          goto LABEL_141;
        }

        if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v139.__r_.__value_.__l.__size_ == 3)
          {
            v47 = v139.__r_.__value_.__r.__words[0];
LABEL_135:
            v48 = LOWORD(v47->__r_.__value_.__l.__data_);
            v49 = v47->__r_.__value_.__s.__data_[2];
            if (v48 == 28016 && v49 == 99)
            {
              LOBYTE(v136) = 0;
LABEL_141:
              if (sub_29AA84D7C(a2, "PreserveVertexOrdering"))
              {
                v51 = *sub_29AA84DF4(a2, "PreserveVertexOrdering");
              }

              else
              {
                v51 = 0;
              }

              HIBYTE(v136) = v51;
              v135[0] = 0;
              v135[1] = 0;
              v134 = v135;
              if (sub_29AA84E9C(a2, "AttributeDescription"))
              {
                v52 = sub_29AA84F14(a2, "AttributeDescription");
                pxrInternal__aapl__pxrReserved__::VtDictionary::VtDictionary(&v129, v52);
                v130.__pn_.__r_.__value_.__r.__words[0] = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(&v129);
                v130.__pn_.__r_.__value_.__l.__size_ = v53;
                v55 = pxrInternal__aapl__pxrReserved__::VtDictionary::end(&v129);
                if (v54)
                {
                  v56 = v130.__pn_.__r_.__value_.__r.__words[0] == v55;
                }

                else
                {
                  v56 = 1;
                }

                v57 = v56;
                if (v130.__pn_.__r_.__value_.__l.__size_ != v54 || v57 == 0)
                {
                  sub_29A186E7C(&v150, (v130.__pn_.__r_.__value_.__r.__words[0] + 32));
                  if (sub_29AA84FBC(v151))
                  {
                    v59 = sub_29AA85048(v151);
                    v147.__r_.__value_.__r.__words[0] = &v150;
                    v60 = sub_29AA7B574(&v134, &v150.__r_.__value_.__l.__data_, &unk_29B4D6118, &v147, &v133);
                    v61 = *v59;
                    *(v60 + 30) = *(v59 + 2);
                    *(v60 + 14) = v61;
                  }

                  else
                  {
                    sub_29A008E78(&v132, "Incompatible attribute description for ");
                    if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v62 = &v150;
                    }

                    else
                    {
                      v62 = v150.__r_.__value_.__r.__words[0];
                    }

                    if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v63 = HIBYTE(v150.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v63 = v150.__r_.__value_.__l.__size_;
                    }

                    v64 = std::string::append(&v132, v62, v63);
                    v65 = *&v64->__r_.__value_.__l.__data_;
                    v133.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
                    *&v133.__r_.__value_.__l.__data_ = v65;
                    v64->__r_.__value_.__l.__size_ = 0;
                    v64->__r_.__value_.__r.__words[2] = 0;
                    v64->__r_.__value_.__r.__words[0] = 0;
                    sub_29A008E78(&__p, ", skipping.");
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
                      v67 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v67 = __p.__r_.__value_.__l.__size_;
                    }

                    v68 = std::string::append(&v133, p_p, v67);
                    v69 = *&v68->__r_.__value_.__l.__data_;
                    v147.__r_.__value_.__r.__words[2] = v68->__r_.__value_.__r.__words[2];
                    *&v147.__r_.__value_.__l.__data_ = v69;
                    v68->__r_.__value_.__l.__size_ = 0;
                    v68->__r_.__value_.__r.__words[2] = 0;
                    v68->__r_.__value_.__r.__words[0] = 0;
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v133.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v132.__r_.__value_.__l.__data_);
                    }

                    v70 = sub_29AABB028();
                    sub_29AA5B750(v70, &v147);
                    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v147.__r_.__value_.__l.__data_);
                    }
                  }

                  sub_29A186B14(v151);
                  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v150.__r_.__value_.__l.__data_);
                  }

                  pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> *,std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment();
                }

                sub_29A184A10(&v129, 0);
              }

              if (sub_29AA850DC(a2, "RequestedBitstreamVersion"))
              {
                v71 = *sub_29AA85154(a2, "RequestedBitstreamVersion");
                if (!v71 || (v71 >= 3u ? (v72 = (v71 & 0xFFFEFFFF) == 3) : (v72 = 1), !v72))
                {
                  v76 = sub_29AABB028();
                  sub_29A008E78(&v150, "Invalid requested bitstream version");
                  sub_29AA5B750(v76, &v150);
                  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v150.__r_.__value_.__l.__data_);
                  }

                  if (!log)
                  {
                    goto LABEL_346;
                  }

                  if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
                  {
                    goto LABEL_346;
                  }

                  v75 = log;
                  if (!os_signpost_enabled(log))
                  {
                    goto LABEL_346;
                  }

                  LOWORD(v150.__r_.__value_.__l.__data_) = 0;
                  goto LABEL_345;
                }

                v142 = v71;
              }

              if (sub_29AA84D7C(a2, "DumpOrderingInfo"))
              {
                v73 = *sub_29AA84DF4(a2, "DumpOrderingInfo");
                if (v73 == 1 && ((v136 & 0x100) != 0 || v136 == 1))
                {
                  v74 = sub_29AABB028();
                  sub_29A008E78(&v150, "Cannot request ordering info while preserving vertex order or unifying indices");
                  sub_29AA5B750(v74, &v150);
                  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v150.__r_.__value_.__l.__data_);
                  }

                  if (!log)
                  {
                    goto LABEL_346;
                  }

                  if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
                  {
                    goto LABEL_346;
                  }

                  v75 = log;
                  if (!os_signpost_enabled(log))
                  {
                    goto LABEL_346;
                  }

                  LOWORD(v150.__r_.__value_.__l.__data_) = 0;
                  goto LABEL_345;
                }

                v141 = v73;
              }

              if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_29A008D14(&v150, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
              }

              else
              {
                v150 = __src;
              }

              if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
              {
                if (v150.__r_.__value_.__l.__size_ != 5)
                {
                  goto LABEL_218;
                }

                v77 = v150.__r_.__value_.__r.__words[0];
              }

              else
              {
                if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) != 5)
                {
                  goto LABEL_218;
                }

                v77 = &v150;
              }

              data = v77->__r_.__value_.__l.__data_;
              v79 = v77->__r_.__value_.__s.__data_[4];
              if (data == 1936026992 && v79 == 104)
              {
                sub_29A8CCEB8(&v132, &v138);
                sub_29AA81918(&v132, &v133);
                sub_29A65B7E0(&__p, ".gcl");
                v152.__data_ = &__p;
                if (sub_29AA818DC(&v133, v152))
                {
                  v86 = 1;
LABEL_263:
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v133.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v133.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v132.__r_.__value_.__l.__data_);
                  }

LABEL_269:
                  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v150.__r_.__value_.__l.__data_);
                    if (v86)
                    {
                      goto LABEL_271;
                    }
                  }

                  else if (v86)
                  {
LABEL_271:
                    v88 = sub_29AABB028();
                    sub_29A8CCEB8(&v126, &v138);
                    sub_29AA81918(&v126, &__str);
                    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                    {
                      sub_29A008D14(&v149, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      v149 = __str;
                    }

                    v103 = std::string::insert(&v149, 0, "AaplGclCodec_CompressMesh: Wrong extension! filename: ");
                    v104 = *&v103->__r_.__value_.__l.__data_;
                    v127.__r_.__value_.__r.__words[2] = v103->__r_.__value_.__r.__words[2];
                    *&v127.__r_.__value_.__l.__data_ = v104;
                    v103->__r_.__value_.__l.__size_ = 0;
                    v103->__r_.__value_.__r.__words[2] = 0;
                    v103->__r_.__value_.__r.__words[0] = 0;
                    v105 = std::string::append(&v127, " refPath: ");
                    v106 = *&v105->__r_.__value_.__l.__data_;
                    v147.__r_.__value_.__r.__words[2] = v105->__r_.__value_.__r.__words[2];
                    *&v147.__r_.__value_.__l.__data_ = v106;
                    v105->__r_.__value_.__l.__size_ = 0;
                    v105->__r_.__value_.__r.__words[2] = 0;
                    v105->__r_.__value_.__r.__words[0] = 0;
                    sub_29A8CCEB8(&v123, &__dst);
                    sub_29AA81918(&v123, &v124);
                    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                    {
                      sub_29A008D14(&v125, v124.__r_.__value_.__l.__data_, v124.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      v125 = v124;
                    }

                    if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v107 = &v125;
                    }

                    else
                    {
                      v107 = v125.__r_.__value_.__r.__words[0];
                    }

                    if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v108 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v108 = v125.__r_.__value_.__l.__size_;
                    }

                    v109 = std::string::append(&v147, v107, v108);
                    v110 = *&v109->__r_.__value_.__l.__data_;
                    v150.__r_.__value_.__r.__words[2] = v109->__r_.__value_.__r.__words[2];
                    *&v150.__r_.__value_.__l.__data_ = v110;
                    v109->__r_.__value_.__l.__size_ = 0;
                    v109->__r_.__value_.__r.__words[2] = 0;
                    v109->__r_.__value_.__r.__words[0] = 0;
                    sub_29AA5B750(v88, &v150);
                    if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v150.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v125.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v124.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v123.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v123.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v147.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v127.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v149.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__str.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v126.__r_.__value_.__l.__data_);
                    }

                    if (!log)
                    {
                      goto LABEL_346;
                    }

                    if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
                    {
                      goto LABEL_346;
                    }

                    v75 = log;
                    if (!os_signpost_enabled(log))
                    {
                      goto LABEL_346;
                    }

                    LOWORD(v150.__r_.__value_.__l.__data_) = 0;
                    goto LABEL_345;
                  }

                  sub_29AA819D0(&v138, &v150);
                  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0 && v150.__r_.__value_.__l.__size_ >= 0x100)
                  {
                    operator delete(v150.__r_.__value_.__l.__data_);
LABEL_287:
                    v92 = sub_29AABB028();
                    if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v93 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v93 = v138.__r_.__value_.__l.__size_;
                    }

                    std::to_string(&v149, v93);
                    v94 = std::string::insert(&v149, 0, "AaplGclCodec_CompressMesh: File name too long! filename: ");
                    v95 = *&v94->__r_.__value_.__l.__data_;
                    v127.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
                    *&v127.__r_.__value_.__l.__data_ = v95;
                    v94->__r_.__value_.__l.__size_ = 0;
                    v94->__r_.__value_.__r.__words[2] = 0;
                    v94->__r_.__value_.__r.__words[0] = 0;
                    v96 = std::string::append(&v127, " refPath: ");
                    v97 = *&v96->__r_.__value_.__l.__data_;
                    v147.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
                    *&v147.__r_.__value_.__l.__data_ = v97;
                    v96->__r_.__value_.__l.__size_ = 0;
                    v96->__r_.__value_.__r.__words[2] = 0;
                    v96->__r_.__value_.__r.__words[0] = 0;
                    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v98 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v98 = __dst.__r_.__value_.__l.__size_;
                    }

                    std::to_string(&__str, v98);
                    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      p_str = &__str;
                    }

                    else
                    {
                      p_str = __str.__r_.__value_.__r.__words[0];
                    }

                    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                    {
                      v100 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                    }

                    else
                    {
                      v100 = __str.__r_.__value_.__l.__size_;
                    }

                    v101 = std::string::append(&v147, p_str, v100);
                    v102 = *&v101->__r_.__value_.__l.__data_;
                    v150.__r_.__value_.__r.__words[2] = v101->__r_.__value_.__r.__words[2];
                    *&v150.__r_.__value_.__l.__data_ = v102;
                    v101->__r_.__value_.__l.__size_ = 0;
                    v101->__r_.__value_.__r.__words[2] = 0;
                    v101->__r_.__value_.__r.__words[0] = 0;
                    sub_29AA5B750(v92, &v150);
                    if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v150.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__str.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v147.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v127.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v149.__r_.__value_.__l.__data_);
                    }

                    if (!log)
                    {
                      goto LABEL_346;
                    }

                    if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
                    {
                      goto LABEL_346;
                    }

                    v75 = log;
                    if (!os_signpost_enabled(log))
                    {
                      goto LABEL_346;
                    }

                    LOWORD(v150.__r_.__value_.__l.__data_) = 0;
LABEL_345:
                    _os_signpost_emit_with_name_impl(&dword_299FE7000, v75, OS_SIGNPOST_INTERVAL_END, spid, "compressMesh", &unk_29B9D452D, &v150, 2u);
LABEL_346:
                    sub_29A019EE8(&v134, v135[0]);
LABEL_347:
                    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__dst.__r_.__value_.__l.__data_);
                    }

LABEL_349:
                    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v138.__r_.__value_.__l.__data_);
                    }

                    goto LABEL_351;
                  }

                  v89.n128_f64[0] = sub_29AA819D0(&__dst, &v147);
                  v91 = (v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0 && v147.__r_.__value_.__l.__size_ > 0xFF;
                  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v147.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v150.__r_.__value_.__l.__data_);
                    if (v91)
                    {
                      goto LABEL_287;
                    }
                  }

                  else if (v91)
                  {
                    goto LABEL_287;
                  }

                  if (sub_29AA808D8(&v136, v89))
                  {
                    if (!log)
                    {
                      goto LABEL_346;
                    }

                    if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
                    {
                      goto LABEL_346;
                    }

                    v75 = log;
                    if (!os_signpost_enabled(log))
                    {
                      goto LABEL_346;
                    }

                    LOWORD(v150.__r_.__value_.__l.__data_) = 0;
                    goto LABEL_345;
                  }

                  v127.__r_.__value_.__r.__words[0] = &v127;
                  *&v127.__r_.__value_.__r.__words[1] = &v127;
                  v112 = sub_29AA81B40(buf, this, v111, &v127, &v134, v119, &v136);
                  if (v112)
                  {
                    if (v112 == 199)
                    {
                      v113 = sub_29AABB028();
                      sub_29A008E78(&v150, "Empty mesh detected, skipping");
                      sub_29AA81FC8(v113, &v150);
                      if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v150.__r_.__value_.__l.__data_);
                      }

                      if (log && spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(log))
                      {
                        LOWORD(v150.__r_.__value_.__l.__data_) = 0;
                        _os_signpost_emit_with_name_impl(&dword_299FE7000, log, OS_SIGNPOST_INTERVAL_END, spid, "compressMesh", &unk_29B9D452D, &v150, 2u);
                      }

                      goto LABEL_420;
                    }

                    if (!log || spid - 1 > 0xFFFFFFFFFFFFFFFDLL || (v115 = log, !os_signpost_enabled(log)))
                    {
LABEL_420:
                      sub_29A116F64(&v127);
                      goto LABEL_346;
                    }

                    LOWORD(v150.__r_.__value_.__l.__data_) = 0;
                  }

                  else
                  {
                    if (sub_29AA84D7C(a2, "DumpOrderingInfo") && *sub_29AA84DF4(a2, "DumpOrderingInfo") == 1)
                    {
                      v149.__r_.__value_.__r.__words[0] = 0;
                      if (sub_29AA851FC(buf, &v149, v114))
                      {
                        if (log && spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(log))
                        {
                          LOWORD(v150.__r_.__value_.__l.__data_) = 0;
                          _os_signpost_emit_with_name_impl(&dword_299FE7000, log, OS_SIGNPOST_INTERVAL_END, spid, "compressMesh", &unk_29B9D452D, &v150, 2u);
                        }

                        sub_29A184A10(&v149, 0);
                        goto LABEL_420;
                      }

                      sub_29A008E78(&v150, "OrderingInfo");
                      v147.__r_.__value_.__l.__size_ = &off_2A2042030;
                      sub_29A187864(&v147, &v149);
                      pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(a3, &v150, &v147, ":");
                      sub_29A186B14(&v147);
                      if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v150.__r_.__value_.__l.__data_);
                      }

                      sub_29A184A10(&v149, 0);
                    }

                    if (sub_29AA84D7C(a2, "DumpBitstreamVersion") && *sub_29AA84DF4(a2, "DumpBitstreamVersion") == 1 && sub_29AA85440(buf, a3))
                    {
                      if (!log)
                      {
                        goto LABEL_420;
                      }

                      if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
                      {
                        goto LABEL_420;
                      }

                      v115 = log;
                      if (!os_signpost_enabled(log))
                      {
                        goto LABEL_420;
                      }

                      LOWORD(v150.__r_.__value_.__l.__data_) = 0;
                    }

                    else
                    {
                      if (sub_29AA84D7C(a2, "DumpBitstreamData"))
                      {
                        sub_29AA85568(buf, a3);
                      }

                      if (sub_29AA84D7C(a2, "DumpSelectCodec") && *sub_29AA84DF4(a2, "DumpSelectCodec") == 1)
                      {
                        sub_29A008E78(&v150, "Codec");
                        if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
                        {
                          sub_29A008D14(&v147, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
                        }

                        else
                        {
                          v147 = __src;
                        }

                        v149.__r_.__value_.__l.__size_ = &off_2A2044DD0;
                        sub_29A1B01B8(&v149, &v147);
                        pxrInternal__aapl__pxrReserved__::VtDictionary::SetValueAtPath(a3, &v150, &v149, ":");
                        sub_29A186B14(&v149);
                        if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v147.__r_.__value_.__l.__data_);
                        }

                        if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v150.__r_.__value_.__l.__data_);
                        }
                      }

                      if (sub_29AA82078(buf, &v138))
                      {
                        if (!log)
                        {
                          goto LABEL_420;
                        }

                        if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
                        {
                          goto LABEL_420;
                        }

                        v115 = log;
                        if (!os_signpost_enabled(log))
                        {
                          goto LABEL_420;
                        }

                        LOWORD(v150.__r_.__value_.__l.__data_) = 0;
                      }

                      else
                      {
                        v116 = *(this + 1);
                        if (v116 && (*(v116 + 57) & 8) == 0 && ((*(*this + 32))(this) & 1) != 0)
                        {
                          v117 = sub_29A580660(&v150, this + 1, this + 4);
                          pxrInternal__aapl__pxrReserved__::UsdObject::IsValid(v117);
                        }

                        v118 = sub_29AABB028();
                        sub_29A008E78(&v150, "Invalid mesh!");
                        sub_29AA5B750(v118, &v150);
                        if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(v150.__r_.__value_.__l.__data_);
                        }

                        if (!log)
                        {
                          goto LABEL_420;
                        }

                        if (spid - 1 > 0xFFFFFFFFFFFFFFFDLL)
                        {
                          goto LABEL_420;
                        }

                        v115 = log;
                        if (!os_signpost_enabled(log))
                        {
                          goto LABEL_420;
                        }

                        LOWORD(v150.__r_.__value_.__l.__data_) = 0;
                      }
                    }
                  }

                  _os_signpost_emit_with_name_impl(&dword_299FE7000, v115, OS_SIGNPOST_INTERVAL_END, spid, "compressMesh", &unk_29B9D452D, &v150, 2u);
                  goto LABEL_420;
                }

                sub_29A8CCEB8(&v129, &__dst);
                sub_29AA81918(&v129, &v130);
                sub_29A65B7E0(&v128, ".gcl");
                v154.__data_ = &v128;
                v81 = 1;
                v86 = 1;
                if (sub_29AA818DC(&v130, v154))
                {
LABEL_257:
                  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v128.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v130.__pn_.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v130.__pn_.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v129.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_263;
                }

LABEL_219:
                if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
                {
                  sub_29A008D14(&v147, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
                }

                else
                {
                  v147 = __src;
                }

                if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
                {
                  if (v147.__r_.__value_.__l.__size_ != 3)
                  {
                    v86 = 0;
                    goto LABEL_255;
                  }

                  v82 = v147.__r_.__value_.__r.__words[0];
                }

                else
                {
                  if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) != 3)
                  {
                    v86 = 0;
                    goto LABEL_256;
                  }

                  v82 = &v147;
                }

                v83 = LOWORD(v82->__r_.__value_.__l.__data_);
                v84 = v82->__r_.__value_.__s.__data_[2];
                if (v83 == 28016 && v84 == 99)
                {
                  v87 = sub_29A8CCEB8(&v149, &v138);
                  sub_29AA81918(v87, &v127);
                  sub_29A65B7E0(&__str, ".pmc");
                  v153.__data_ = &__str;
                  if (sub_29AA818DC(&v127, v153))
                  {
                    v86 = 1;
                  }

                  else
                  {
                    sub_29A8CCEB8(&v125, &__dst);
                    sub_29AA81918(&v125, &v126);
                    sub_29A65B7E0(&v124, ".pmc");
                    v155.__data_ = &v124;
                    v86 = sub_29AA818DC(&v126, v155);
                    if (SHIBYTE(v124.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v124.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v126.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v125.__r_.__value_.__l.__data_);
                    }
                  }

                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__str.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v127.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v149.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v149.__r_.__value_.__l.__data_);
                  }

                  if ((*(&v147.__r_.__value_.__s + 23) & 0x80) == 0)
                  {
LABEL_256:
                    if (!v81)
                    {
                      goto LABEL_269;
                    }

                    goto LABEL_257;
                  }
                }

                else
                {
                  v86 = 0;
                  if ((*(&v147.__r_.__value_.__s + 23) & 0x80) == 0)
                  {
                    goto LABEL_256;
                  }
                }

LABEL_255:
                operator delete(v147.__r_.__value_.__l.__data_);
                goto LABEL_256;
              }

LABEL_218:
              v81 = 0;
              goto LABEL_219;
            }
          }
        }

        else if (SHIBYTE(v139.__r_.__value_.__r.__words[2]) == 3)
        {
          v47 = &v139;
          goto LABEL_135;
        }

        v46 = 1;
        goto LABEL_140;
      }

LABEL_54:
      sub_29A008E78(&v150, "pmc");
      if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = HIBYTE(v139.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v26 = v139.__r_.__value_.__l.__size_;
      }

      v27 = HIBYTE(v150.__r_.__value_.__r.__words[2]);
      v28 = SHIBYTE(v150.__r_.__value_.__r.__words[2]);
      if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v27 = v150.__r_.__value_.__l.__size_;
      }

      if (v26 == v27)
      {
        if ((v139.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v139;
        }

        else
        {
          v29 = v139.__r_.__value_.__r.__words[0];
        }

        if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = &v150;
        }

        else
        {
          v30 = v150.__r_.__value_.__r.__words[0];
        }

        v31 = memcmp(v29, v30, v26) == 0;
        if ((v28 & 0x80000000) == 0)
        {
          goto LABEL_70;
        }
      }

      else
      {
        v31 = 0;
        if ((SHIBYTE(v150.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_70:
          if (!v31)
          {
            v35 = sub_29AABB028();
            sub_29A008E78(&v150, "Invalid codec");
            sub_29AA5B750(v35, &v150);
            if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v150.__r_.__value_.__l.__data_);
            }

            if (log && spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(log))
            {
              LOWORD(v150.__r_.__value_.__l.__data_) = 0;
              _os_signpost_emit_with_name_impl(&dword_299FE7000, log, OS_SIGNPOST_INTERVAL_END, spid, "compressMesh", &unk_29B9D452D, &v150, 2u);
            }

            goto LABEL_349;
          }

          v32 = sub_29A580660(&v150, this + 1, this + 4);
          v33 = sub_29A5A6058(v32);
          if ((*v33 & 0xFFFFFFFFFFFFFFF8) != 0)
          {
            v34 = ((*v33 & 0xFFFFFFFFFFFFFFF8) + 16);
          }

          else
          {
            v34 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v33);
          }

          if (*(v34 + 23) >= 0)
          {
            v39 = *(v34 + 23);
          }

          else
          {
            v39 = v34[1];
          }

          sub_29A022DE0(&v147, v39 + 4);
          if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v40 = &v147;
          }

          else
          {
            v40 = v147.__r_.__value_.__r.__words[0];
          }

          if (v39)
          {
            if (*(v34 + 23) >= 0)
            {
              v41 = v34;
            }

            else
            {
              v41 = *v34;
            }

            memmove(v40, v41, v39);
          }

          strcpy(v40 + v39, ".pmc");
          if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v138.__r_.__value_.__l.__data_);
          }

          v138 = v147;
          *(&v147.__r_.__value_.__s + 23) = 0;
          v147.__r_.__value_.__s.__data_[0] = 0;
          if ((v151[0] & 7) != 0)
          {
            atomic_fetch_add_explicit((v151[0] & 0xFFFFFFFFFFFFFFF8), 0xFFFFFFFE, memory_order_release);
          }

          goto LABEL_112;
        }
      }

      operator delete(v150.__r_.__value_.__l.__data_);
      goto LABEL_70;
    }
  }

  else
  {
    v21 = 0;
    if ((SHIBYTE(v150.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }
  }

  operator delete(v150.__r_.__value_.__l.__data_);
  if (v21)
  {
    goto LABEL_44;
  }

  goto LABEL_54;
}