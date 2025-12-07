uint64_t sub_1006F2708(uint64_t a1)
{
  v8 = 0;
  sub_1000216B4(&v8);
  v2 = *(a1 + 40);
  v3 = *(a1 + 42);
  v4 = sub_10000C5F8(a1 + 48);
  v5 = sub_10000C5E0(a1 + 48);
  v6 = sub_1002D62D0(v2, sub_1006F27B0, v3, 0, v4, v5, a1);
  sub_10002249C(&v8);
  return v6;
}

uint64_t sub_1006F27C0(uint64_t a1, uint64_t a2)
{
  if (a2 && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_100864CD0();
  }

  return (*(*a1 + 24))(a1, a2);
}

uint64_t sub_1006F284C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1005B6820(v2, *(a1 + 42));
  if (v3)
  {
    sub_100117644(v3);
  }

  if (!v4)
  {
    return 1;
  }

  v11 = 0;
  sub_1000216B4(&v11);
  v5 = *(a1 + 40);
  v6 = *(a1 + 42);
  v7 = sub_10000C5F8(a1 + 48);
  v8 = sub_10000C5E0(a1 + 48);
  v9 = sub_1002D6870(v5, sub_1006F2940, v6, v7, v8, a1);
  sub_10002249C(&v11);
  return v9;
}

void sub_1006F2918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  if (v13)
  {
    sub_100117644(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006F2950(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = xmmword_1008A4B48;
  v15 = 0;
  sub_10000D03C(buf, &v14);
  v12 = xmmword_1008A4B70;
  v13 = 0;
  sub_10000D03C(&v14, &v12);
  v4 = sub_1005B68E8(v2, buf, &v14);
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v4)
  {
    v5 = *(v4 + 8);
    v6 = *(v5 + 20);
    *buf = *(v5 + 4);
    v17 = v6;
    sub_10000D03C(&v14, buf);
    *buf = xmmword_1008C4F2C;
    v17 = 0;
    if (sub_10004E15C(&v14, buf))
    {
      v7 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 16);
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting GAP name characteristic value on device %@", buf, 0xCu);
      }

      v9 = *(a1 + 87);
      if ((v9 & 0x8000000000000000) != 0)
      {
        v10 = *(a1 + 64);
        v9 = *(a1 + 72);
      }

      else
      {
        v10 = (a1 + 64);
      }

      sub_10000C704(buf, v10, v9);
      operator new();
    }
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_100864D5C(a1);
  }

  return 10;
}

void sub_1006F2BF8(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100117644(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006F2C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100864DE4(a3, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    v14 = *(a1 + 16);
    v16 = v14;
    __dst[0] = 0;
    __dst[1] = 0;
    v26 = 0;
    if (*(a1 + 87) < 0)
    {
      v14 = sub_100008904(__dst, *(a1 + 64), *(a1 + 72));
    }

    else
    {
      *__dst = *(a1 + 64);
      v26 = *(a1 + 80);
    }

    v17 = sub_100007EE8(v14, v15);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3321888768;
    v20[2] = sub_1006F2E58;
    v20[3] = &unk_100B09308;
    v22 = a1;
    v18 = v16;
    v21 = v18;
    if (SHIBYTE(v26) < 0)
    {
      sub_100008904(&__p, __dst[0], __dst[1]);
    }

    else
    {
      __p = *__dst;
      v24 = v26;
    }

    sub_10000CA94(v17, v20);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  return sub_1006EF384(a1, a3, a4);
}

void sub_1006F2E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1006F2E58(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B508D0 != -1)
  {
    sub_100864E50();
  }

  v3 = off_100B508C8;
  sub_10004DFB4(v8, *(a1 + 32));
  if (*(a1 + 71) < 0)
  {
    sub_100008904(__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *__p = *(a1 + 48);
    v7 = *(a1 + 64);
  }

  v4 = sub_100783194(v3, v8, __p, 2);
  v5 = v4;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
    if (!v5)
    {
      return;
    }

    goto LABEL_10;
  }

  if (v4)
  {
LABEL_10:
    sub_1006EF418(v2);
  }
}

void sub_1006F2F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F2F74(uint64_t a1)
{
  if ((*(a1 + 103) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 88))
    {
      return;
    }
  }

  else if (!*(a1 + 103))
  {
    return;
  }

  v2 = *(a1 + 16);
  __dst[0] = 0;
  __dst[1] = 0;
  v15 = 0;
  if (*(a1 + 103) < 0)
  {
    sub_100008904(__dst, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    *__dst = *(a1 + 80);
    v15 = *(a1 + 96);
  }

  v3 = qword_100BCE910;
  v4 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    v6 = __dst;
    if (v15 < 0)
    {
      v6 = __dst[0];
    }

    *buf = 138412546;
    v17 = v2;
    v18 = 2080;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "The device %@ is named %s", buf, 0x16u);
  }

  v7 = sub_100007EE8(v4, v5);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_1006F31A8;
  v9[3] = &unk_100B09308;
  v11 = a1;
  v8 = v2;
  v10 = v8;
  if (SHIBYTE(v15) < 0)
  {
    sub_100008904(&__p, __dst[0], __dst[1]);
  }

  else
  {
    __p = *__dst;
    v13 = v15;
  }

  sub_10000CA94(v7, v9);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1006F3150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1006F31A8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B508D0 != -1)
  {
    sub_100864E50();
  }

  v3 = off_100B508C8;
  sub_10004DFB4(v8, *(a1 + 32));
  if (*(a1 + 71) < 0)
  {
    sub_100008904(__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *__p = *(a1 + 48);
    v7 = *(a1 + 64);
  }

  v4 = sub_100783194(v3, v8, __p, 2);
  v5 = v4;
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
    if (!v5)
    {
      return;
    }

    goto LABEL_10;
  }

  if (v4)
  {
LABEL_10:
    sub_1006EF418(v2);
  }
}

void sub_1006F3298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F32BC(uint64_t a1, __int16 a2)
{
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = xmmword_1008A4B48;
  v12 = 0;
  sub_10000D03C(buf, &v11);
  sub_10003A364(&v11);
  v5 = sub_1005B68E8(v4, buf, &v11);
  if (v3)
  {
    sub_100117644(v3);
  }

  v10 = 0;
  if (v5 && (v6 = *(v5 + 8), v7 = *(v6 + 20), *buf = *(v6 + 4), v14 = v7, sub_10000D03C(&v11, buf), *buf = xmmword_1008C4EF0, v14 = 0, sub_10004E15C(&v11, buf)))
  {
    v8 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 16);
      *buf = 138412290;
      *&buf[4] = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Reading long GAP name characteristic value on device %@", buf, 0xCu);
    }

    if (!sub_1002D4678(*(a1 + 40), &v10))
    {
      v10 -= 4;
      operator new();
    }

    (*(*a1 + 24))(a1, 9501);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100864E64(a1);
    }

    (*(*a1 + 24))(a1, 10);
  }
}

void sub_1006F3594(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100117644(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1006F35D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v7 = *(a1 + 56);
  if (v7)
  {
    if (v7 != a2 && (v8 = qword_100BCE910, os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT)))
    {
      LODWORD(__dst.__r_.__value_.__l.__data_) = 136446210;
      *(__dst.__r_.__value_.__r.__words + 4) = "fReadGapName.get() == command";
      _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &__dst, 0xCu);
      v7 = *(a1 + 56);
      *(a1 + 56) = 0;
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    else
    {
      *(a1 + 56) = 0;
    }

    (*(*v7 + 8))(v7);
LABEL_6:
    if (a4[1] == *a4 || (v9 = *(**a4 + 8), v10 = *(v9 + 20), *&__dst.__r_.__value_.__l.__data_ = *(v9 + 4), LODWORD(__dst.__r_.__value_.__r.__words[2]) = v10, sub_10000D03C(&v34, &__dst), *&__dst.__r_.__value_.__l.__data_ = xmmword_1008C4FB8, LODWORD(__dst.__r_.__value_.__r.__words[2]) = 0, !sub_10004E15C(&v34, &__dst)))
    {
      sub_1006EF384(a1, a3, a4);
    }

    else
    {
      v11 = **a4;
      v12 = sub_10000C5F8(v11 + 72);
      v13 = sub_10000C5E0(v11 + 72);
      sub_100617064(&__dst, v12, v13);
      if (*(a1 + 103) < 0)
      {
        operator delete(*(a1 + 80));
      }

      *(a1 + 80) = __dst;
      if (sub_10000C5E0(v11 + 72) < *(a1 + 72) - 4)
      {
LABEL_11:
        sub_1006F2F74(a1);
        (***(a1 + 8))(*(a1 + 8), a1, 0, a4);
        return;
      }

      v27 = **(v11 + 8);
      v31[0] = _NSConcreteStackBlock;
      v31[1] = 3221225472;
      v31[2] = sub_1006F3AB8;
      v31[3] = &unk_100AEB940;
      v31[4] = a1;
      v32 = v27;
      sub_1006EF524(a1, v31);
      v29 = *a4;
      v28 = a4[1];
      while (v29 != v28)
      {
        if (*v29)
        {
          (*(**v29 + 8))(*v29);
          v28 = a4[1];
        }

        ++v29;
      }
    }

    return;
  }

  v14 = *(a1 + 64);
  if (!v14)
  {
    v30 = sub_10000E92C();
    sub_100693F74(v30, 1);
  }

  if (v14 == a2 || (v15 = qword_100BCE910, !os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT)))
  {
    *(a1 + 64) = 0;
LABEL_17:
    (*(*v14 + 8))(v14);
    goto LABEL_18;
  }

  LODWORD(__dst.__r_.__value_.__l.__data_) = 136446210;
  *(__dst.__r_.__value_.__r.__words + 4) = "fReadLongGapName.get() == command";
  _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", &__dst, 0xCu);
  v14 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v14)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (a4[1] != *a4)
  {
    v16 = *(**a4 + 8);
    v17 = *(v16 + 20);
    *&__dst.__r_.__value_.__l.__data_ = *(v16 + 4);
    LODWORD(__dst.__r_.__value_.__r.__words[2]) = v17;
    sub_10000D03C(&v34, &__dst);
    *&__dst.__r_.__value_.__l.__data_ = xmmword_1008C4FB8;
    LODWORD(__dst.__r_.__value_.__r.__words[2]) = 0;
    if (sub_10004E15C(&v34, &__dst))
    {
      v18 = **a4;
      v19 = sub_10000C5F8(v18 + 72);
      v20 = sub_10000C5E0(v18 + 72);
      sub_100617064(&__dst, v19, v20);
      v21 = *(a1 + 103);
      if (v21 >= 0)
      {
        v22 = (a1 + 80);
      }

      else
      {
        v22 = *(a1 + 80);
      }

      if (v21 >= 0)
      {
        v23 = *(a1 + 103);
      }

      else
      {
        v23 = *(a1 + 88);
      }

      v24 = std::string::insert(&__dst, 0, v22, v23);
      v25 = v24->__r_.__value_.__r.__words[0];
      v34.n128_u64[0] = v24->__r_.__value_.__l.__size_;
      *(v34.n128_u64 + 7) = *(&v24->__r_.__value_.__r.__words[1] + 7);
      v26 = HIBYTE(v24->__r_.__value_.__r.__words[2]);
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      if (*(a1 + 103) < 0)
      {
        operator delete(*(a1 + 80));
      }

      *(a1 + 80) = v25;
      *(a1 + 88) = v34.n128_u64[0];
      *(a1 + 95) = *(v34.n128_u64 + 7);
      *(a1 + 103) = v26;
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      goto LABEL_11;
    }
  }

  sub_1006EF384(a1, a3, a4);
}

void sub_1006F3A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006F3AD0(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = xmmword_1008A4B48;
  v12 = 0;
  sub_10000D03C(buf, &v11);
  sub_10003A364(&v11);
  v4 = sub_1005B68E8(v2, buf, &v11);
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v4)
  {
    v5 = *(v4 + 8);
    v6 = *(v5 + 20);
    *buf = *(v5 + 4);
    v14 = v6;
    sub_10000D03C(&v11, buf);
    *buf = xmmword_1008C4EF0;
    v14 = 0;
    if (sub_10004E15C(&v11, buf))
    {
      v7 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 16);
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Reading GAP name characteristic value on device %@", buf, 0xCu);
      }

      v10 = 0;
      sub_1000216B4(&v10);
      sub_1002D4678(*(a1 + 40), (a1 + 72));
      sub_100022214(&v10);
      operator new();
    }
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_100864EEC(a1);
  }

  return 10;
}

void sub_1006F3DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v16)
  {
    sub_100117644(v16);
  }

  sub_10002249C(&a15);
  _Unwind_Resume(a1);
}

void sub_1006F3E14(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 56);
  v5 = *(a1 + 56);
  v6 = *(a1 + 24);
  v7 = *(v4 - 3);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *v4;
  }

  else
  {
    v8 = v5;
  }

  v9 = sub_1005B6C38(v6, v8);
  if (v7)
  {
    sub_100117644(v7);
  }

  if (a2)
  {
    v10 = *(*a1 + 24);
    v11 = a1;
    v12 = a2;
LABEL_8:

    v10(v11, v12);
    return;
  }

  if (v9)
  {
    if (v9 >= (v5 + 2))
    {
      v13 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 16);
        *buf = 67109634;
        v16 = (v5 + 2);
        v17 = 1024;
        v18 = v9;
        v19 = 2112;
        v20 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Attempting to discover descriptors in range [0x%04x, 0x%04x] on device %@", buf, 0x18u);
      }

      operator new();
    }

    v10 = *(*a1 + 24);
    v11 = a1;
    v12 = 0;
    goto LABEL_8;
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_100864F74(v4, a1);
  }

  (*(*a1 + 24))(a1, 1);
}

void sub_1006F410C(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100117644(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1006F4144(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 64);
  if (!v7)
  {
    v11 = *(a1 + 72);
    if (!v11)
    {
      v13 = sub_10000E92C();
      sub_100693F74(v13, 1);
    }

    if (v11 != a2 && (v12 = qword_100BCE910, os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT)))
    {
      *buf = 136446210;
      v17 = "fDescDisc.get() == command";
      _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", buf, 0xCu);
      v11 = *(a1 + 72);
      *(a1 + 72) = 0;
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *(a1 + 72) = 0;
    }

    (*(*v11 + 8))(v11);
LABEL_17:
    sub_1006EF384(a1, a3, a4);
    return;
  }

  if (v7 == a2 || (v8 = qword_100BCE910, !os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT)))
  {
    *(a1 + 64) = 0;
LABEL_5:
    (*(*v7 + 8))(v7);
    goto LABEL_6;
  }

  *buf = 136446210;
  v17 = "fServiceDisc.get() == command";
  _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", buf, 0xCu);
  v7 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v7)
  {
    goto LABEL_5;
  }

LABEL_6:
  v10 = *a4;
  v9 = a4[1];
  while (v10 != v9)
  {
    if (*v10)
    {
      (*(**v10 + 8))(*v10);
      v9 = a4[1];
    }

    ++v10;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1006F43B4;
  v14[3] = &unk_100ADF940;
  v14[4] = a1;
  v15 = a3;
  sub_1006EF524(a1, v14);
}

uint64_t sub_1006F43CC(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(a1 + 56);
  }

  else
  {
    v5 = v2;
  }

  v6 = sub_1005B6C38(v3, v5);
  if (v4)
  {
    sub_100117644(v4);
  }

  if (!v6)
  {
    v8 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 56);
      v10 = *(a1 + 16);
      *buf = 67109378;
      v15 = v9;
      v16 = 2112;
      *v17 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Attempting to find service for characteristic handle 0x%04x on device %@", buf, 0x12u);
    }

    operator new();
  }

  v7 = v2 + 2;
  if (v6 >= (v2 + 2))
  {
    v11 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 16);
      *buf = 67109634;
      v15 = v7;
      v16 = 1024;
      *v17 = v6;
      *&v17[4] = 2112;
      *&v17[6] = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Attempting to discover descriptors in range [0x%04x, 0x%04x] on device %@", buf, 0x18u);
    }

    operator new();
  }

  (*(*a1 + 24))(a1, 0);
  return 0;
}

void sub_1006F4720(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100117644(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1006F4770(uint64_t a1)
{
  v30 = 0;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1005B6820(v2, *(a1 + 56));
  if (v3)
  {
    sub_100117644(v3);
  }

  if (!v4)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_1008651B4(a1 + 56, a1);
    }

    goto LABEL_24;
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = sub_1005B6820(v5, *(a1 + 56));
  if (v6)
  {
    sub_100117644(v6);
  }

  if (!v7)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100865124(a1 + 56, a1);
    }

    goto LABEL_24;
  }

  v8 = *(v7 + 8);
  v9 = *(v8 + 20);
  *buf = *(v8 + 4);
  *&buf[16] = v9;
  sub_10000D03C(&v33, buf);
  *buf = xmmword_1008C4F2C;
  *&buf[16] = 0;
  if (!sub_10004E15C(&v33, buf))
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100865004(a1 + 56, a1);
    }

LABEL_24:
    v11 = 1;
LABEL_25:
    (*(*a1 + 24))(a1, v11);
    return;
  }

  if ((*(v7 + 72) & 0x30) == 0)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100865094(a1 + 56, a1);
    }

    v11 = 6;
    goto LABEL_25;
  }

  if (*(a1 + 58) == 1)
  {
    if ((*(v7 + 72) & 0x10) != 0)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    LOBYTE(v30) = v10;
  }

  else
  {
    v10 = 0;
  }

  sub_100007F20(buf, (v7 + 104));
  v12 = *buf;
  v13 = *&buf[8];
  if (*buf != *&buf[8])
  {
    v14 = *buf;
    while (1)
    {
      v15 = *v14;
      v16 = *(*v14 + 8);
      v17 = *(v16 + 20);
      *buf = *(v16 + 4);
      *&buf[16] = v17;
      sub_10000D03C(&v33, buf);
      *buf = xmmword_1008C4F68;
      *&buf[16] = 0;
      if (sub_10004E15C(&v33, buf))
      {
        break;
      }

      if (++v14 == v13)
      {
        goto LABEL_45;
      }
    }

    v18 = **(v15 + 8);
    v19 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Found client configuration descriptor at handle 0x%04x", buf, 8u);
    }

    if (v18)
    {
      v20 = qword_100BCE910;
      v21 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v21)
        {
          if (v10)
          {
            v22 = "notifications";
          }

          else
          {
            v22 = "indications";
          }

          v23 = *(a1 + 56);
          v24 = *(a1 + 16);
          *buf = 136446722;
          *&buf[4] = v22;
          *&buf[12] = 1024;
          *&buf[14] = v23;
          *&buf[18] = 2112;
          v32 = v24;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Enabling %{public}s on client configuration descriptor for characteristic at handle 0x%04x on device %@", buf, 0x1Cu);
        }
      }

      else if (v21)
      {
        v28 = *(a1 + 56);
        v29 = *(a1 + 16);
        *buf = 67109378;
        *&buf[4] = v28;
        *&buf[8] = 2112;
        *&buf[10] = v29;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Disabling notifications/indications on client configuration descriptor for characteristic at handle 0x%04x on device %@", buf, 0x12u);
      }

      sub_10000C704(buf, &v30, 2uLL);
      operator new();
    }
  }

LABEL_45:
  v25 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(a1 + 56);
    v27 = *(a1 + 16);
    *buf = 67109378;
    *&buf[4] = v26;
    *&buf[8] = 2112;
    *&buf[10] = v27;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Unable to find client configuration descriptor for characteristic at handle 0x%04x on device %@", buf, 0x12u);
  }

  (*(*a1 + 24))(a1, 10);
  if (v12)
  {
    operator delete(v12);
  }
}

void sub_1006F4D08(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void sub_1006F4DC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[8];
  if (!v6)
  {
    v11 = a1[9];
    if (!v11)
    {
      v13 = sub_10000E92C();
      sub_100693F74(v13, 1);
    }

    if (v11 != a2 && (v12 = qword_100BCE910, os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT)))
    {
      *buf = 136446210;
      v17 = "fWriteCommand.get() == command";
      _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", buf, 0xCu);
      v11 = a1[9];
      a1[9] = 0;
      if (!v11)
      {
        goto LABEL_17;
      }
    }

    else
    {
      a1[9] = 0;
    }

    (*(*v11 + 8))(v11);
LABEL_17:
    (*(*a1 + 24))(a1, a3);
    return;
  }

  if (v6 == a2 || (v8 = qword_100BCE910, !os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT)))
  {
    a1[8] = 0;
LABEL_5:
    (*(*v6 + 8))(v6);
    goto LABEL_6;
  }

  *buf = 136446210;
  v17 = "fTreeCommand.get() == command";
  _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Assertion failed: %{public}s", buf, 0xCu);
  v6 = a1[8];
  a1[8] = 0;
  if (v6)
  {
    goto LABEL_5;
  }

LABEL_6:
  v10 = *a4;
  v9 = *(a4 + 8);
  while (v10 != v9)
  {
    if (*v10)
    {
      (*(**v10 + 8))(*v10);
      v9 = *(a4 + 8);
    }

    ++v10;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1006F5054;
  v14[3] = &unk_100ADF940;
  v14[4] = a1;
  v15 = a3;
  sub_1006EF524(a1, v14);
}

uint64_t sub_1006F5064(uint64_t a1)
{
  v29 = 0;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1005B6820(v2, *(a1 + 56));
  if (v3)
  {
    sub_100117644(v3);
  }

  if (!v4)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_1008653F4(a1 + 56, a1);
    }

    return 1;
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = sub_1005B6820(v5, *(a1 + 56));
  if (v6)
  {
    sub_100117644(v6);
  }

  if (!v7)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100865364(a1 + 56, a1);
    }

    return 1;
  }

  v8 = *(v7 + 8);
  v9 = *(v8 + 20);
  *buf = *(v8 + 4);
  *&buf[16] = v9;
  sub_10000D03C(&v32, buf);
  *buf = xmmword_1008C4F2C;
  *&buf[16] = 0;
  if (!sub_10004E15C(&v32, buf))
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100865244(a1 + 56, a1);
    }

    return 1;
  }

  if ((*(v7 + 72) & 0x30) != 0)
  {
    if (*(a1 + 58) == 1)
    {
      if ((*(v7 + 72) & 0x10) != 0)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      LOBYTE(v29) = v10;
    }

    else
    {
      v10 = 0;
    }

    sub_100007F20(buf, (v7 + 104));
    v12 = *&buf[8];
    if (*buf != *&buf[8])
    {
      v13 = *buf;
      while (1)
      {
        v14 = *v13;
        v15 = *(*v13 + 8);
        v16 = *(v15 + 20);
        *buf = *(v15 + 4);
        *&buf[16] = v16;
        sub_10000D03C(&v32, buf);
        *buf = xmmword_1008C4F68;
        *&buf[16] = 0;
        if (sub_10004E15C(&v32, buf))
        {
          break;
        }

        if (++v13 == v12)
        {
          goto LABEL_44;
        }
      }

      v17 = **(v14 + 8);
      v18 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Found client configuration descriptor at handle 0x%04x", buf, 8u);
      }

      if (v17)
      {
        v19 = qword_100BCE910;
        v20 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT);
        if (v10)
        {
          if (v20)
          {
            if (v10)
            {
              v21 = "notifications";
            }

            else
            {
              v21 = "indications";
            }

            v22 = *(a1 + 56);
            v23 = *(a1 + 16);
            *buf = 136315650;
            *&buf[4] = v21;
            *&buf[12] = 1024;
            *&buf[14] = v22;
            *&buf[18] = 2112;
            v31 = v23;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Enabling %s on client configuration descriptor at handle 0x%04x on device %@", buf, 0x1Cu);
          }
        }

        else if (v20)
        {
          v27 = *(a1 + 56);
          v28 = *(a1 + 16);
          *buf = 67109378;
          *&buf[4] = v27;
          *&buf[8] = 2112;
          *&buf[10] = v28;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Disabling notifications/indications on client configuration descriptor at handle 0x%04x on device %@", buf, 0x12u);
        }

        sub_10000C704(buf, &v29, 2uLL);
        operator new();
      }
    }

LABEL_44:
    v24 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
    {
      v25 = *(a1 + 56);
      v26 = *(a1 + 16);
      *buf = 67109378;
      *&buf[4] = v25;
      *&buf[8] = 2112;
      *&buf[10] = v26;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "Don't have client configuration descriptor yet for characteristic at handle 0x%04x on device %@", buf, 0x12u);
    }

    operator new();
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_1008652D4(a1 + 56, a1);
  }

  return 6;
}

void sub_1006F5688(_Unwind_Exception *a1)
{
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006F5760(uint64_t a1, uint64_t a2, __int128 **a3)
{
  v5 = sub_1006EF1B4(a1, a2);
  *v5 = off_100B09348;
  v5[6] = &off_100B09380;
  sub_10000CB74(v5 + 7, a3);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return a1;
}

uint64_t sub_1006F57F0(uint64_t a1)
{
  *a1 = off_100B092E0;
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100117644(v2);
  }

  return a1;
}

void sub_1006F5848(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 56);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 64) - v3) >> 2) > v2)
  {
    v4 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      sub_10003B85C(v3 + 20 * v2, __p);
      if (v12 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      v6 = *(a1 + 16);
      *buf = 136446466;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Attempting to discover services for next UUID %{public}s on device %@", buf, 0x16u);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }

    operator new();
  }

  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  sub_1006F5AF8(a1, __p);
  (***(a1 + 8))(*(a1 + 8), a1, 0, __p);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1006F5ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (v17)
  {
    sub_100117644(v17);
  }

  _Unwind_Resume(a1);
}

void sub_1006F5AF8(void *a1, uint64_t a2)
{
  for (i = a1[7]; i != a1[8]; i += 20)
  {
    __p = 0;
    v19 = 0;
    v20 = 0;
    v5 = a1[3];
    v6 = a1[4];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = sub_1005B38CC(v5, i, &__p);
    if (v6)
    {
      sub_100117644(v6);
    }

    v8 = __p;
    if (!v7 && __p != v19)
    {
      v9 = *(a2 + 8);
      do
      {
        v10 = *(a2 + 16);
        if (v9 >= v10)
        {
          v11 = (v9 - *a2) >> 3;
          if ((v11 + 1) >> 61)
          {
            sub_1000C7698();
          }

          v12 = v10 - *a2;
          v13 = v12 >> 2;
          if (v12 >> 2 <= (v11 + 1))
          {
            v13 = v11 + 1;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFF8)
          {
            v14 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v13;
          }

          if (v14)
          {
            sub_100008108(a2, v14);
          }

          *(8 * v11) = *v8;
          v9 = (8 * v11 + 8);
          v15 = *(a2 + 8) - *a2;
          v16 = (8 * v11 - v15);
          memcpy(v16, *a2, v15);
          v17 = *a2;
          *a2 = v16;
          *(a2 + 8) = v9;
          *(a2 + 16) = 0;
          if (v17)
          {
            operator delete(v17);
          }
        }

        else
        {
          *v9++ = *v8;
        }

        *(a2 + 8) = v9;
        ++v8;
      }

      while (v8 != v19);
      v8 = __p;
    }

    if (v8)
    {
      v19 = v8;
      operator delete(v8);
    }
  }
}

void sub_1006F5C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v11)
  {
    sub_100117644(v11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F5CAC(void *a1, uint64_t a2)
{
  v3 = a1[11];
  if (v3)
  {
    a1[11] = 0;
    (*(*v3 + 8))(v3);
    __p = 0;
    v8 = 0;
    v9 = 0;
    sub_1006F5AF8(a1, &__p);
    sub_1006EF384(a1, a2, &__p);
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v5 = a1[12];
    if (!v5)
    {
      v6 = sub_10000E92C();
      sub_100693F74(v6, 1);
    }

    a1[12] = 0;
    (*(*v5 + 8))(v5, a2);

    sub_1006F5848(a1);
  }
}

void sub_1006F5D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F5DB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = *a4;
  v6 = *(a4 + 8);
  if (*a4 != v6)
  {
    do
    {
      if (*v7)
      {
        (*(**v7 + 8))(*v7, a2);
        v6 = *(a4 + 8);
      }

      ++v7;
    }

    while (v7 != v6);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1006F5E90;
  v9[3] = &unk_100ADF940;
  v9[4] = a1;
  v10 = a3;
  sub_1006EF524(a1, v9);
}

uint64_t sub_1006F5EA8(uint64_t a1)
{
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  if (0xCCCCCCCCCCCCCCCDLL * ((v2 - v3) >> 2) >= 4)
  {
    v4 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 16);
      buf = 0x404000202;
      buf_8 = 2112;
      buf_10 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Number of UUIDs exceeds maximum (%d) - discovering all services on device %@", &buf, 0x12u);
    }

    operator new();
  }

  if (v2 != v3)
  {
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      sub_10003B85C(v3 + 20 * *(a1 + 80), &buf);
      if (v13 >= 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf;
      }

      v8 = *(a1 + 16);
      *v14 = 136446466;
      v15 = p_buf;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attempting to discover services for first UUID %{public}s on device %@", v14, 0x16u);
      if (v13 < 0)
      {
        operator delete(buf);
      }
    }

    operator new();
  }

  return 0;
}

void sub_1006F620C(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100117644(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006F6234(uint64_t a1)
{
  v12 = 23;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = sub_1005B6820(v2, *(a1 + 56));
  if (v3)
  {
    sub_100117644(v3);
  }

  if (!v4)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100865614(a1 + 56, a1);
    }

    return 1;
  }

  v5 = *(v4 + 8);
  v6 = *(v5 + 20);
  *buf = *(v5 + 4);
  *&buf[16] = v6;
  sub_10000D03C(&v14, buf);
  *buf = xmmword_1008C4F2C;
  *&buf[16] = 0;
  if (!sub_10004E15C(&v14, buf))
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100865484(a1 + 56, a1);
    }

    return 1;
  }

  if ((*(a1 + 58) & 1) == 0)
  {
    if ((*(v4 + 72) & 4) == 0)
    {
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
      {
        sub_100865514();
      }

      return 3;
    }

LABEL_20:
    v11 = 0;
    sub_1000216B4(&v11);
    sub_1002D4678(*(a1 + 40), &v12);
    sub_100022214(&v11);
    v8 = sub_10000C5E0(a1 + 64);
    if (v8 > v12 - 3)
    {
      v9 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        v10 = sub_10000C5E0(a1 + 64);
        *buf = 134218240;
        *&buf[4] = v10;
        *&buf[12] = 1024;
        *&buf[14] = v12 - 3;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Using Write Long Characteristic Value, as data exceeds PDU capacity at current MTU (%zu of available %u bytes)", buf, 0x12u);
      }

      operator new();
    }

    if (*(a1 + 58) == 1)
    {
      operator new();
    }

    operator new();
  }

  if ((*(v4 + 72) & 8) != 0)
  {
    goto LABEL_20;
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_1008655A8();
  }

  return 3;
}

uint64_t sub_1006F6A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 80) != a2)
  {
    v7 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_1008656A4(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  return sub_1006EF384(a1, a3, a4);
}

void sub_1006F6AA4(_DWORD *result)
{
  v1 = result[14];
  if (v1 <= 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        sub_1006F6DC4(result);
      }
    }

    else
    {
      sub_1006F6C7C(result);
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        sub_1006F6F00(result);
        break;
      case 3:
        sub_1006F7050(result);
      case 4:
        (*(*result + 24))(result, 0);
        break;
    }
  }
}

void sub_1006F6B10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 64) != a2)
  {
    v7 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_10086571C(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v16 = *a4;
  v15 = *(a4 + 8);
  while (v16 != v15)
  {
    if (*v16)
    {
      (*(**v16 + 8))(*v16);
      v15 = *(a4 + 8);
    }

    ++v16;
  }

  v17 = *(a1 + 56);
  if (v17 <= 1)
  {
    if (v17 == 1)
    {
      if (a3)
      {
        v18 = 4;
      }

      else
      {
        v18 = 2;
      }

      goto LABEL_16;
    }

    if (v17)
    {
      goto LABEL_17;
    }

LABEL_22:
    v19 = sub_10000E92C();
    sub_100693F74(v19, 1);
  }

  if (v17 == 3)
  {
    v18 = 4;
LABEL_16:
    *(a1 + 56) = v18;
    goto LABEL_17;
  }

  if (v17 == 2 || v17 == 4)
  {
    goto LABEL_22;
  }

LABEL_17:
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1006F6C6C;
  v20[3] = &unk_100ADF8F8;
  v20[4] = a1;
  sub_1006EF524(a1, v20);
}

void sub_1006F6C7C(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = xmmword_1008A4D50;
  v8 = 0;
  sub_10000D03C(&v9, &v7);
  sub_10003A364(&v7);
  v4 = sub_1005B68E8(v3, &v9, &v7);
  *(a1 + 72) = v4;
  if (v2)
  {
    sub_100117644(v2);
    v4 = *(a1 + 72);
  }

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = 4;
  }

  *(a1 + 56) = v5;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006F71E4;
  v6[3] = &unk_100ADF8F8;
  v6[4] = a1;
  sub_1006EF524(a1, v6);
}

void sub_1006F6EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
    sub_100117644(v10);
  }

  _Unwind_Resume(a1);
}

void sub_1006F6F00(uint64_t a1)
{
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  sub_10006C96C(v10, 10916);
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = xmmword_1008A4D50;
  v8 = 0;
  sub_10000D03C(&v9, &v7);
  v4 = sub_1005B68E8(v3, &v9, v10);
  *(a1 + 80) = v4;
  if (v2)
  {
    sub_100117644(v2);
    v4 = *(a1 + 80);
  }

  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  *(a1 + 56) = v5;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006F71EC;
  v6[3] = &unk_100ADF8F8;
  v6[4] = a1;
  sub_1006EF524(a1, v6);
}

void sub_1006F7050(uint64_t a1)
{
  v2 = 3;
  sub_10000C704(&v1, &v2, 1uLL);
  operator new();
}

void sub_1006F7174(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100117644(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1006F7210(uint64_t result)
{
  switch(*(result + 56))
  {
    case 0:

      sub_1006F8978(result);
      break;
    case 1:

      sub_1006F8ABC(result);
      break;
    case 2:
      *__p = xmmword_1008A4BD4;
      v10 = 0;
      sub_1006F8CE8(result, __p, 3);
      break;
    case 3:
      *__p = xmmword_1008A4BE8;
      v10 = 0;
      sub_1006F8CE8(result, __p, 4);
      break;
    case 4:
      *__p = xmmword_1008A4BFC;
      v10 = 0;
      sub_1006F8CE8(result, __p, 5);
      break;
    case 5:
      *__p = xmmword_1008A4C10;
      v10 = 0;
      sub_1006F8CE8(result, __p, 6);
      break;
    case 6:
      *__p = xmmword_1008A4C24;
      v10 = 0;
      sub_1006F8CE8(result, __p, 7);
      break;
    case 7:
      *__p = xmmword_1008A4C38;
      v10 = 0;
      sub_1006F8CE8(result, __p, 8);
      break;
    case 8:
      *__p = xmmword_1008A4C4C;
      v10 = 0;
      sub_1006F8CE8(result, __p, 9);
      break;
    case 9:
      *__p = xmmword_1008A4C60;
      v10 = 0;
      sub_1006F8CE8(result, __p, 10);
      break;
    case 0xA:
      *__p = xmmword_1008A4C74;
      v10 = 0;
      sub_1006F8CE8(result, __p, 11);
      break;
    case 0xB:
      *__p = xmmword_1008A4C88;
      v10 = 0;
      sub_1006F8CE8(result, __p, 12);
      break;
    case 0xC:
      v2 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(result + 16);
        if (qword_100B508D0 != -1)
        {
          sub_100864E50();
        }

        v4 = off_100B508C8;
        v5 = *(result + 16);
        sub_10078FC7C(v4, v5, __p);
        if (v11 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        *buf = 138412546;
        v13 = v3;
        v14 = 2080;
        v15 = v6;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Completed DIS discovery for device %@ %s", buf, 0x16u);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (qword_100B508D0 != -1)
      {
        sub_100865580();
      }

      sub_100785F60(off_100B508C8, *(result + 16), 1);
      if (qword_100B50900 != -1)
      {
        sub_100865794();
      }

      v7 = qword_100B508F8;
      v8 = *(result + 16);
      sub_10004DFB4(__p, v8);
      sub_1007093E0(v7, __p);

      (*(*result + 24))(result, 0);
      break;
    default:
      return;
  }
}

void sub_1006F768C(uint64_t a1, uint64_t a2, int a3, uint64_t **a4)
{
  if (*(a1 + 64) != a2)
  {
    v7 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_10086571C(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = *(a1 + 16);
  switch(*(a1 + 56))
  {
    case 0:
    case 0xC:
      v127 = sub_10000E92C();
      sub_100693F74(v127, 1);
    case 1:
      if (a3)
      {
        v16 = 12;
      }

      else
      {
        v16 = 2;
      }

      goto LABEL_28;
    case 2:
      if (!a3 && a4[1] != *a4)
      {
        v82 = *(**a4 + 8);
        v83 = *(v82 + 20);
        __dst = *(v82 + 4);
        v160 = v83;
        sub_10000D03C(&v162, &__dst);
        __dst = xmmword_1008C4FB8;
        v160 = 0;
        if (sub_10004E15C(v84, &__dst))
        {
          v85 = **a4;
          v86 = sub_10000C5F8(v85 + 72);
          v87 = sub_10000C5E0(v85 + 72);
          sub_100617064(&__dst, v86, v87);
          if (v161 >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          v89 = [NSString stringWithUTF8String:p_dst];
          v91 = v89;
          if (v161 < 0)
          {
            operator delete(__dst);
          }

          v92 = sub_100007EE8(v89, v90);
          v156[0] = _NSConcreteStackBlock;
          v156[1] = 3221225472;
          v156[2] = sub_1006F8620;
          v156[3] = &unk_100AE0B60;
          v157 = v15;
          v93 = v91;
          v158 = v93;
          sub_10000CA94(v92, v156);
        }
      }

      v16 = 3;
      goto LABEL_28;
    case 3:
      if (!a3 && a4[1] != *a4)
      {
        v70 = *(**a4 + 8);
        v71 = *(v70 + 20);
        __dst = *(v70 + 4);
        v160 = v71;
        sub_10000D03C(&v162, &__dst);
        __dst = xmmword_1008C4FB8;
        v160 = 0;
        if (sub_10004E15C(v72, &__dst))
        {
          v73 = **a4;
          v74 = sub_10000C5F8(v73 + 72);
          v75 = sub_10000C5E0(v73 + 72);
          sub_100617064(&__dst, v74, v75);
          if (v161 >= 0)
          {
            v76 = &__dst;
          }

          else
          {
            v76 = __dst;
          }

          v77 = [NSString stringWithUTF8String:v76];
          v79 = v77;
          if (v161 < 0)
          {
            operator delete(__dst);
          }

          v80 = sub_100007EE8(v77, v78);
          v153[0] = _NSConcreteStackBlock;
          v153[1] = 3221225472;
          v153[2] = sub_1006F8674;
          v153[3] = &unk_100AE0B60;
          v154 = v15;
          v81 = v79;
          v155 = v81;
          sub_10000CA94(v80, v153);
        }
      }

      v16 = 4;
      goto LABEL_28;
    case 4:
      if (!a3 && a4[1] != *a4)
      {
        v49 = *(**a4 + 8);
        v50 = *(v49 + 20);
        __dst = *(v49 + 4);
        v160 = v50;
        sub_10000D03C(&v162, &__dst);
        __dst = xmmword_1008C4FB8;
        v160 = 0;
        if (sub_10004E15C(v51, &__dst))
        {
          v52 = **a4;
          v53 = sub_10000C5F8(v52 + 72);
          v54 = sub_10000C5E0(v52 + 72);
          sub_100617064(&__dst, v53, v54);
          if (v161 >= 0)
          {
            v55 = &__dst;
          }

          else
          {
            v55 = __dst;
          }

          v56 = [NSString stringWithUTF8String:v55];
          v58 = v56;
          if (v161 < 0)
          {
            operator delete(__dst);
          }

          v59 = sub_100007EE8(v56, v57);
          v150[0] = _NSConcreteStackBlock;
          v150[1] = 3221225472;
          v150[2] = sub_1006F86C8;
          v150[3] = &unk_100AE0B60;
          v151 = v15;
          v60 = v58;
          v152 = v60;
          sub_10000CA94(v59, v150);
        }
      }

      v16 = 5;
      goto LABEL_28;
    case 5:
      if (!a3 && a4[1] != *a4)
      {
        v103 = *(**a4 + 8);
        v104 = *(v103 + 20);
        __dst = *(v103 + 4);
        v160 = v104;
        sub_10000D03C(&v162, &__dst);
        __dst = xmmword_1008C4FB8;
        v160 = 0;
        if (sub_10004E15C(v105, &__dst))
        {
          v106 = **a4;
          v107 = sub_10000C5F8(v106 + 72);
          v108 = sub_10000C5E0(v106 + 72);
          sub_100617064(&__dst, v107, v108);
          if (v161 >= 0)
          {
            v109 = &__dst;
          }

          else
          {
            v109 = __dst;
          }

          v110 = [NSString stringWithUTF8String:v109];
          v112 = v110;
          if (v161 < 0)
          {
            operator delete(__dst);
          }

          v113 = sub_100007EE8(v110, v111);
          v147[0] = _NSConcreteStackBlock;
          v147[1] = 3221225472;
          v147[2] = sub_1006F871C;
          v147[3] = &unk_100AE0B60;
          v148 = v15;
          v114 = v112;
          v149 = v114;
          sub_10000CA94(v113, v147);
        }
      }

      v16 = 6;
      goto LABEL_28;
    case 6:
      if (!a3 && a4[1] != *a4)
      {
        v115 = *(**a4 + 8);
        v116 = *(v115 + 20);
        __dst = *(v115 + 4);
        v160 = v116;
        sub_10000D03C(&v162, &__dst);
        __dst = xmmword_1008C4FB8;
        v160 = 0;
        if (sub_10004E15C(v117, &__dst))
        {
          v118 = **a4;
          v119 = sub_10000C5F8(v118 + 72);
          v120 = sub_10000C5E0(v118 + 72);
          sub_100617064(&__dst, v119, v120);
          if (v161 >= 0)
          {
            v121 = &__dst;
          }

          else
          {
            v121 = __dst;
          }

          v122 = [NSString stringWithUTF8String:v121];
          v124 = v122;
          if (v161 < 0)
          {
            operator delete(__dst);
          }

          v125 = sub_100007EE8(v122, v123);
          v144[0] = _NSConcreteStackBlock;
          v144[1] = 3221225472;
          v144[2] = sub_1006F8770;
          v144[3] = &unk_100AE0B60;
          v145 = v15;
          v126 = v124;
          v146 = v126;
          sub_10000CA94(v125, v144);
        }
      }

      v16 = 7;
      goto LABEL_28;
    case 7:
      if (!a3 && a4[1] != *a4)
      {
        v37 = *(**a4 + 8);
        v38 = *(v37 + 20);
        __dst = *(v37 + 4);
        v160 = v38;
        sub_10000D03C(&v162, &__dst);
        __dst = xmmword_1008C4FB8;
        v160 = 0;
        if (sub_10004E15C(v39, &__dst))
        {
          v40 = **a4;
          v41 = sub_10000C5F8(v40 + 72);
          v42 = sub_10000C5E0(v40 + 72);
          sub_100617064(&__dst, v41, v42);
          if (v161 >= 0)
          {
            v43 = &__dst;
          }

          else
          {
            v43 = __dst;
          }

          v44 = [NSString stringWithUTF8String:v43];
          v46 = v44;
          if (v161 < 0)
          {
            operator delete(__dst);
          }

          v47 = sub_100007EE8(v44, v45);
          v141[0] = _NSConcreteStackBlock;
          v141[1] = 3221225472;
          v141[2] = sub_1006F87C4;
          v141[3] = &unk_100AE0B60;
          v142 = v15;
          v48 = v46;
          v143 = v48;
          sub_10000CA94(v47, v141);
        }
      }

      v16 = 8;
      goto LABEL_28;
    case 8:
      if (!a3 && a4[1] != *a4)
      {
        v61 = *(**a4 + 8);
        v62 = *(v61 + 20);
        __dst = *(v61 + 4);
        v160 = v62;
        sub_10000D03C(&v162, &__dst);
        __dst = xmmword_1008C4FB8;
        v160 = 0;
        if (sub_10004E15C(v63, &__dst))
        {
          v64 = **a4;
          v65 = sub_10000C5F8(v64 + 72);
          v66 = [NSData dataWithBytes:v65 length:sub_10000C5E0(v64 + 72)];
          v68 = sub_100007EE8(v66, v67);
          v138[0] = _NSConcreteStackBlock;
          v138[1] = 3221225472;
          v138[2] = sub_1006F8818;
          v138[3] = &unk_100AE0B60;
          v139 = v15;
          v69 = v66;
          v140 = v69;
          sub_10000CA94(v68, v138);
        }
      }

      v16 = 9;
      goto LABEL_28;
    case 9:
      if (!a3 && a4[1] != *a4)
      {
        v19 = *(**a4 + 8);
        v20 = *(v19 + 20);
        __dst = *(v19 + 4);
        v160 = v20;
        sub_10000D03C(&v162, &__dst);
        __dst = xmmword_1008C4FB8;
        v160 = 0;
        if (sub_10004E15C(v21, &__dst))
        {
          v22 = **a4;
          v23 = sub_10000C5F8(v22 + 72);
          v24 = [NSData dataWithBytes:v23 length:sub_10000C5E0(v22 + 72)];
          v26 = sub_100007EE8(v24, v25);
          v135[0] = _NSConcreteStackBlock;
          v135[1] = 3221225472;
          v135[2] = sub_1006F886C;
          v135[3] = &unk_100AE0B60;
          v136 = v15;
          v27 = v24;
          v137 = v27;
          sub_10000CA94(v26, v135);
        }
      }

      v16 = 10;
      goto LABEL_28;
    case 0xA:
      if (!a3 && a4[1] != *a4)
      {
        v28 = *(**a4 + 8);
        v29 = *(v28 + 20);
        __dst = *(v28 + 4);
        v160 = v29;
        sub_10000D03C(&v162, &__dst);
        __dst = xmmword_1008C4FB8;
        v160 = 0;
        if (sub_10004E15C(v30, &__dst))
        {
          v31 = **a4;
          v32 = sub_10000C5F8(v31 + 72);
          v33 = [NSData dataWithBytes:v32 length:sub_10000C5E0(v31 + 72)];
          v35 = sub_100007EE8(v33, v34);
          v132[0] = _NSConcreteStackBlock;
          v132[1] = 3221225472;
          v132[2] = sub_1006F88C0;
          v132[3] = &unk_100AE0B60;
          v133 = v15;
          v36 = v33;
          v134 = v36;
          sub_10000CA94(v35, v132);
        }
      }

      v16 = 11;
      goto LABEL_28;
    case 0xB:
      if (!a3 && a4[1] != *a4)
      {
        v94 = *(**a4 + 8);
        v95 = *(v94 + 20);
        __dst = *(v94 + 4);
        v160 = v95;
        sub_10000D03C(&v162, &__dst);
        __dst = xmmword_1008C4FB8;
        v160 = 0;
        if (sub_10004E15C(v96, &__dst))
        {
          v97 = **a4;
          v98 = sub_10000C5F8(v97 + 72);
          v99 = [NSData dataWithBytes:v98 length:sub_10000C5E0(v97 + 72)];
          v101 = sub_100007EE8(v99, v100);
          v129[0] = _NSConcreteStackBlock;
          v129[1] = 3221225472;
          v129[2] = sub_1006F8914;
          v129[3] = &unk_100AE0B60;
          v130 = v15;
          v102 = v99;
          v131 = v102;
          sub_10000CA94(v101, v129);
        }
      }

      v16 = 12;
LABEL_28:
      *(a1 + 56) = v16;
      break;
    default:
      break;
  }

  v18 = *a4;
  v17 = a4[1];
  while (v18 != v17)
  {
    if (*v18)
    {
      (*(**v18 + 8))(*v18);
      v17 = a4[1];
    }

    ++v18;
  }

  v128[0] = _NSConcreteStackBlock;
  v128[1] = 3221225472;
  v128[2] = sub_1006F8968;
  v128[3] = &unk_100ADF8F8;
  v128[4] = a1;
  sub_1006EF524(a1, v128);
}

void sub_1006F8620(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_100864E50();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_10078E6EC(v2, v3, v4);
}

void sub_1006F8674(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_100864E50();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_10078E958(v2, v3, v4);
}

void sub_1006F86C8(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_100864E50();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_10078EA94(v2, v3, v4);
}

void sub_1006F871C(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_100864E50();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_10078EBD0(v2, v3, v4);
}

void sub_1006F8770(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_100864E50();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_10078ED0C(v2, v3, v4);
}

void sub_1006F87C4(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_100864E50();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_10078EE48(v2, v3, v4);
}

void sub_1006F8818(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_100864E50();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_10078EF84(v2, v3, v4);
}

void sub_1006F886C(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_100864E50();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_10078F0C0(v2, v3, v4);
}

void sub_1006F88C0(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_100864E50();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_10078F1FC(v2, v3, v4);
}

void sub_1006F8914(uint64_t a1)
{
  if (qword_100B508D0 != -1)
  {
    sub_100864E50();
  }

  v2 = off_100B508C8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  sub_10078F8D8(v2, v3, v4);
}

void sub_1006F8978(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = xmmword_1008A4BC0;
  v8 = 0;
  sub_10000D03C(&v9, &v7);
  sub_10003A364(&v7);
  v4 = sub_1005B68E8(v3, &v9, &v7);
  if (v2)
  {
    sub_100117644(v2);
  }

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = 12;
  }

  *(a1 + 56) = v5;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1006F8FF4;
  v6[3] = &unk_100ADF8F8;
  v6[4] = a1;
  sub_1006EF524(a1, v6);
}

void sub_1006F8ABC(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = xmmword_1008A4BC0;
  v7 = 0;
  sub_10000D03C(&v8, &v6);
  sub_10003A364(&v6);
  v4 = sub_1005B68E8(v3, &v8, &v6);
  if (v2)
  {
    sub_100117644(v2);
  }

  if (v4)
  {
    operator new();
  }

  *(a1 + 56) = 12;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006F8FFC;
  v5[3] = &unk_100ADF8F8;
  v5[4] = a1;
  sub_1006EF524(a1, v5);
}

void sub_1006F8CAC(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100117644(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1006F8CE8(uint64_t a1, __n128 *a2, int a3)
{
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = xmmword_1008A4BC0;
  v16 = 0;
  sub_10000D03C(&v17, &v15);
  sub_10003A364(&v15);
  v8 = sub_1005B68E8(v6, &v17, &v15);
  if (v7)
  {
    sub_100117644(v7);
  }

  if (v8)
  {
    v10 = *(a1 + 24);
    v9 = *(a1 + 32);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v15 = xmmword_1008A4BC0;
    v16 = 0;
    sub_10000D03C(&v17, &v15);
    v13 = *a2;
    v14 = a2[1].n128_u32[0];
    sub_10000D03C(&v15, &v13);
    v11 = sub_1005B68E8(v10, &v17, &v15);
    if (v9)
    {
      sub_100117644(v9);
    }

    if (v11)
    {
      operator new();
    }
  }

  else
  {
    a3 = 12;
  }

  *(a1 + 56) = a3;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1006F9004;
  v12[3] = &unk_100ADF8F8;
  v12[4] = a1;
  sub_1006EF524(a1, v12);
}

void sub_1006F8F9C(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100117644(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1006F9028(uint64_t result)
{
  v1 = result;
  v2 = *(result + 60);
  if (v2 <= 3)
  {
    if (v2 > 1)
    {
      if (v2 != 2)
      {
        goto LABEL_28;
      }

      if (qword_100B50900 != -1)
      {
        sub_1008645D0();
      }

      v4 = qword_100B508F8;
      v5 = *(v1 + 16);
      sub_10004DFB4(&v15, v5);
      sub_100708044(v4, &v15);

      if (*(v1 + 58) == 1)
      {
        return sub_1006F98E4(v1);
      }

      else
      {
LABEL_28:
        *(&v15 + 3) = 0;
        LODWORD(v15) = 0;
        sub_1000841FC(&v15);
        if (v15 == 1 && BYTE1(v15) <= 0x3Fu)
        {
          return sub_1006F9B24(v1);
        }

        else
        {
          return sub_1006FA1CC(v1);
        }
      }
    }

    else
    {
      if (!v2)
      {

        sub_1006F9434(result);
      }

      if (v2 == 1)
      {

        sub_1006F9784(result);
      }
    }
  }

  else if (v2 <= 5)
  {
    if (v2 == 4)
    {

      return sub_1006F9E04(result);
    }

    else
    {

      return sub_1006FA1CC(result);
    }
  }

  else
  {
    switch(v2)
    {
      case 6:
        v7 = *(result + 24);
        v6 = *(result + 32);
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v13 = xmmword_1008A4B5C;
        v14 = 0;
        sub_10000D03C(&v15, &v13);
        v11 = xmmword_1008A4BAC;
        v12 = 0;
        sub_10000D03C(&v13, &v11);
        v8 = sub_1005B68E8(v7, &v15, &v13);
        if (v6)
        {
          sub_100117644(v6);
        }

        if (v8 && (v9 = *(v8 + 8), v10 = *(v9 + 20), v15 = *(v9 + 4), v16 = v10, sub_10000D03C(&v13, &v15), v15 = xmmword_1008C4F2C, v16 = 0, sub_10004E15C(&v13, &v15)))
        {
          return sub_1006FA4AC(v1);
        }

        else
        {
          return sub_1006FA7A8(v1);
        }

      case 7:

        return sub_1006FA7A8(result);
      case 8:
        v3 = *(*result + 24);

        return v3();
    }
  }

  return result;
}

void sub_1006F9404(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100117644(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F9434(uint64_t a1)
{
  if (qword_100B508B0 != -1)
  {
    sub_1008657BC();
  }

  v2 = off_100B508A8;
  v3 = *(a1 + 16);
  sub_10004DFB4(buf, v3);
  v4 = sub_100050290(v2, buf);

  v5 = *(a1 + 56);
  if (*(a1 + 56) != 0 && v4)
  {
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 16);
      *buf = 67109378;
      v12 = v5;
      v13 = 2112;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Attempting to set MTU to %u on device %@", buf, 0x12u);
    }

    operator new();
  }

  sub_1006EF46C(a1, *(a1 + 56));
  v8 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 56);
    v10 = *(a1 + 16);
    *buf = 67109378;
    v12 = v9;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Skipping MTU %u set on remote to discovering services for device %@", buf, 0x12u);
  }

  sub_1006F9784(a1);
}

void sub_1006F966C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1008657D0();
  }

  _Unwind_Resume(exception_object);
}

void sub_1006F9698(uint64_t a1, uint64_t *a2, int a3)
{
  v5 = *a2;
  *a2 = 0;
  v6 = *(a1 + 64);
  *(a1 + 64) = v5;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    v5 = *(a1 + 64);
  }

  *(a1 + 60) = a3;
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v10[0] = *(a1 + 24);
  v10[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = v7;
  sub_1006EF22C(v5, v7, v10, *(a1 + 40));
  if (v8)
  {
    sub_100117644(v8);
  }
}

void sub_1006F9764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
    sub_100117644(v10);
  }

  _Unwind_Resume(a1);
}

void sub_1006F9784(uint64_t a1)
{
  v2 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 16);
    *buf = 138412290;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Attempting to find all services on device %@", buf, 0xCu);
  }

  operator new();
}

void sub_1006F98C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1008657D0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006F98E4(void *a1)
{
  v3 = a1[3];
  v2 = a1[4];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = xmmword_1008A4B48;
  v9 = 0;
  sub_10000D03C(&v10, &v8);
  sub_10003A364(&v8);
  v4 = sub_1005B68E8(v3, &v10, &v8);
  if (v2)
  {
    sub_100117644(v2);
  }

  if (v4)
  {
    v5 = *(v4 + 8);
    v6 = *(v5 + 20);
    v10 = *(v5 + 4);
    v11 = v6;
    sub_10000D03C(&v8, &v10);
    v10 = xmmword_1008C4EF0;
    v11 = 0;
    if (sub_10004E15C(&v8, &v10))
    {
      operator new();
    }
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_100865804(a1);
  }

  return (*(*a1 + 24))(a1, 10);
}

void sub_1006F9AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1008657D0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006F9B24(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = xmmword_1008A4B48;
  v11 = 0;
  sub_10000D03C(buf, &v10);
  sub_10003A364(&v10);
  v4 = sub_1005B68E8(v2, buf, &v10);
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v4)
  {
    v5 = *(v4 + 8);
    v6 = *(v5 + 20);
    *buf = *(v5 + 4);
    v13 = v6;
    sub_10000D03C(&v10, buf);
    *buf = xmmword_1008C4EF0;
    v13 = 0;
    if (sub_10004E15C(&v10, buf))
    {
      v7 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 16);
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finding GAP reconnection characteristic handle on device %@", buf, 0xCu);
      }

      operator new();
    }
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_10086588C(a1);
  }

  return (*(*a1 + 24))(a1, 10);
}

void sub_1006F9DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1008657D0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006F9E04(uint64_t a1)
{
  v19 = 0;
  v18 = 0;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v17[3] = 0;
  *v17 = 0;
  v23 = xmmword_1008A4B48;
  v24 = 0;
  sub_10000D03C(buf, &v23);
  v21 = xmmword_1008A4B98;
  v22 = 0;
  sub_10000D03C(&v23, &v21);
  v4 = sub_1005B68E8(v2, buf, &v23);
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v4 && (v5 = *(v4 + 8), v6 = *(v5 + 20), *buf = *(v5 + 4), *&buf[16] = v6, sub_10000D03C(&v23, buf), *buf = xmmword_1008C4F2C, *&buf[16] = 0, sub_10004E15C(&v23, buf)))
  {
    sub_1000841FC(v17);
    if (v17[0] == 1)
    {
      v7 = v17[1];
      if (v17[1] < 0x40uLL)
      {
        v8 = v17[6];
        LOBYTE(v18) = v17[6];
        v9 = v17[5];
        BYTE1(v18) = v17[5];
        v10 = v17[4];
        BYTE2(v18) = v17[4];
        v11 = v17[3];
        HIBYTE(v18) = v17[3];
        v12 = v17[2];
        LOBYTE(v19) = v17[2];
        HIBYTE(v19) = v17[1];
        v13 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          v14 = sub_100063D0C(v8 | (v7 << 40) | (v9 << 8) | (v10 << 16) | (v11 << 24) | (v12 << 32) | 0x1000000000000);
          v15 = *(a1 + 16);
          *buf = 138412546;
          *&buf[4] = v14;
          *&buf[12] = 2112;
          *&buf[14] = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Writing local address %@ into GAP reconnection characteristic value on device %@", buf, 0x16u);
        }

        sub_10000C704(buf, &v18, 6uLL);
        operator new();
      }
    }

    return sub_1006FA1CC(a1);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100865914(a1);
    }

    return (*(*a1 + 24))(a1, 10);
  }
}

void sub_1006FA140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a10)
  {
    sub_1008657D0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006FA1CC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = xmmword_1008A4B5C;
  v11 = 0;
  sub_10000D03C(buf, &v10);
  sub_10003A364(&v10);
  v4 = sub_1005B68E8(v2, buf, &v10);
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v4)
  {
    v5 = *(v4 + 8);
    v6 = *(v5 + 20);
    *buf = *(v5 + 4);
    v13 = v6;
    sub_10000D03C(&v10, buf);
    *buf = xmmword_1008C4EF0;
    v13 = 0;
    if (sub_10004E15C(&v10, buf))
    {
      v7 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 16);
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Finding GATT service changed characteristic handle on device %@", buf, 0xCu);
      }

      operator new();
    }
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_10086599C(a1);
  }

  return (*(*a1 + 24))(a1, 10);
}

void sub_1006FA460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1008657D0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006FA4AC(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = xmmword_1008A4B5C;
  v15 = 0;
  sub_10000D03C(buf, &v14);
  v12 = xmmword_1008A4BAC;
  v13 = 0;
  sub_10000D03C(&v14, &v12);
  v4 = sub_1005B68E8(v2, buf, &v14);
  if (v3)
  {
    sub_100117644(v3);
  }

  if (v4)
  {
    v5 = *(v4 + 8);
    v6 = *(v5 + 20);
    *buf = *(v5 + 4);
    v17 = v6;
    sub_10000D03C(&v14, buf);
    *buf = xmmword_1008C4F2C;
    v17 = 0;
    if (sub_10004E15C(&v14, buf))
    {
      v7 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 16);
        *buf = 138412290;
        *&buf[4] = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Enabling GATT service changed indications on device %@", buf, 0xCu);
      }

      operator new();
    }
  }

  v9 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 16);
    *buf = 138412290;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to locate GATT service changed characteristic handle on device %@", buf, 0xCu);
  }

  return (*(*a1 + 24))(a1, 10);
}

void sub_1006FA770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1008657D0();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006FA7A8(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = xmmword_1008A4D28;
  v23 = 0;
  sub_10000D03C(buf, &v22);
  sub_10003A364(&v22);
  v4 = sub_1005B68E8(v2, buf, &v22);
  if (v3)
  {
    sub_100117644(v3);
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = xmmword_1008A4E80;
  v23 = 13091918;
  sub_10000D03C(buf, &v22);
  sub_10003A364(&v22);
  v7 = sub_1005B68E8(v5, buf, &v22);
  if (v6)
  {
    sub_100117644(v6);
  }

  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = xmmword_1008A4D3C;
  v23 = 0;
  sub_10000D03C(buf, &v22);
  sub_10003A364(&v22);
  v10 = sub_1005B68E8(v8, buf, &v22);
  if (v9)
  {
    sub_100117644(v9);
  }

  if (v4 && (v11 = *(v4 + 8), v12 = *(v11 + 20), *buf = *(v11 + 4), v25 = v12, sub_10000D03C(&v22, buf), *buf = xmmword_1008C4EF0, v25 = 0, sub_10004E15C(&v22, buf)) || v7 && (v13 = *(v7 + 8), v14 = *(v13 + 20), *buf = *(v13 + 4), v25 = v14, sub_10000D03C(&v21, buf), *buf = xmmword_1008C4EF0, v25 = 0, sub_10004E15C(&v21, buf)) || v10 && (v15 = *(v10 + 8), v16 = *(v15 + 20), *buf = *(v15 + 4), v25 = v16, sub_10000D03C(&v20, buf), *buf = xmmword_1008C4EF0, v25 = 0, sub_10004E15C(&v20, buf)))
  {
    v17 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 16);
      *buf = 138412290;
      *&buf[4] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Reading DIS information on HID, MIDI, or GHS device %@", buf, 0xCu);
    }

    operator new();
  }

  return (*(*a1 + 24))(a1, 0);
}

void sub_1006FAB28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    sub_1008657D0();
  }

  _Unwind_Resume(exception_object);
}

void sub_1006FAB88(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 64) != a2)
  {
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_FAULT))
    {
      sub_10086571C(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (*(a1 + 60) == 2)
  {
    v14 = *a4;
    if (a4[1] != *a4)
    {
      __p = 0;
      v35 = 0;
      v36 = 0;
      do
      {
        v15 = *(*v14 + 8);
        v16 = *(v15 + 20);
        v39 = *(v15 + 4);
        v40 = v16;
        sub_10000D03C(&v37, &v39);
        v39 = xmmword_1008C4EF0;
        v40 = 0;
        if (sub_10004E15C(&v37, &v39))
        {
          v17 = *v14;
          v39 = *(*v14 + 72);
          v40 = *(v17 + 88);
          sub_10000D03C(&v37, &v39);
          v18 = v35;
          if (v35 >= v36)
          {
            v21 = 0xCCCCCCCCCCCCCCCDLL * ((v35 - __p) >> 2);
            v22 = v21 + 1;
            if (v21 + 1 > 0xCCCCCCCCCCCCCCCLL)
            {
              sub_1000C7698();
            }

            if (0x999999999999999ALL * ((v36 - __p) >> 2) > v22)
            {
              v22 = 0x999999999999999ALL * ((v36 - __p) >> 2);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((v36 - __p) >> 2) >= 0x666666666666666)
            {
              v23 = 0xCCCCCCCCCCCCCCCLL;
            }

            else
            {
              v23 = v22;
            }

            if (v23)
            {
              sub_100018404(&__p, v23);
            }

            v24 = 4 * ((v35 - __p) >> 2);
            v25 = v37;
            *(v24 + 16) = v38;
            *v24 = v25;
            v26 = __p;
            v27 = v35;
            v28 = (20 * v21 + __p - v35);
            if (__p != v35)
            {
              v29 = (v24 + __p - v35);
              do
              {
                v30 = *v26;
                *(v29 + 4) = v26[1].n128_u32[0];
                *v29 = v30;
                v29 += 20;
                v26 = (v26 + 20);
              }

              while (v26 != v27);
              v26 = __p;
            }

            v20 = (v24 + 20);
            __p = v28;
            v35 = (v24 + 20);
            v36 = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            v19 = v37;
            v35[1].n128_u32[0] = v38;
            *v18 = v19;
            v20 = &v18[1].n128_u32[1];
          }

          v35 = v20;
        }

        ++v14;
      }

      while (v14 != a4[1]);
      sub_1006EF4C8(a1, &__p);
      if (__p)
      {
        v35 = __p;
        operator delete(__p);
      }
    }
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1006FAEAC;
  v33[3] = &unk_100ADF8F8;
  v33[4] = a1;
  sub_1006EF524(a1, v33);
  v32 = *a4;
  v31 = a4[1];
  while (v32 != v31)
  {
    if (*v32)
    {
      (*(**v32 + 8))(*v32);
      v31 = a4[1];
    }

    ++v32;
  }
}

void sub_1006FAE80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006FAEBC(uint64_t a1, uint64_t a2)
{
  if (qword_100B50900 != -1)
  {
    sub_1008645D0();
  }

  sub_1007111A0(qword_100B508F8, *(a1 + 16));

  sub_1006EF324(a1, a2);
}

void sub_1006FAF24(uint64_t a1)
{
  sub_1006F57F0(a1);

  operator delete();
}

void sub_1006FAF60(uint64_t a1)
{
  sub_1006F57F0(a1);

  operator delete();
}

void sub_1006FAF9C(uint64_t a1)
{
  sub_1006F57F0(a1);

  operator delete();
}

void sub_1006FAFD8(uint64_t a1)
{
  sub_1006F57F0(a1);

  operator delete();
}

void sub_1006FB014(uint64_t a1)
{
  sub_1006F57F0(a1);

  operator delete();
}

void sub_1006FB050(uint64_t a1)
{
  sub_1006F57F0(a1);

  operator delete();
}

void sub_1006FB08C(uint64_t a1)
{
  sub_1006F57F0(a1);

  operator delete();
}

void sub_1006FB0C8(uint64_t a1)
{
  sub_1006F57F0(a1);

  operator delete();
}

void sub_1006FB104(uint64_t a1)
{
  sub_1006F57F0(a1);

  operator delete();
}

void sub_1006FB140(uint64_t a1)
{
  sub_1006F57F0(a1);

  operator delete();
}

void sub_1006FB17C(uint64_t a1)
{
  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FB1B4(void *a1)
{
  *a1 = off_100B095A8;
  a1[6] = &off_100AE0A78;
  v2 = a1[7];
  if (v2)
  {
    sub_10000C808(v2);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FB230(void *a1)
{
  *a1 = off_100B095A8;
  a1[6] = &off_100AE0A78;
  v2 = a1[7];
  if (v2)
  {
    sub_10000C808(v2);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FB2C0(void *a1)
{
  *a1 = off_100B095D8;
  a1[6] = &off_100AE0A78;
  v2 = a1[7];
  if (v2)
  {
    sub_10000C808(v2);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FB33C(void *a1)
{
  *a1 = off_100B095D8;
  a1[6] = &off_100AE0A78;
  v2 = a1[7];
  if (v2)
  {
    sub_10000C808(v2);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FB3CC(void *a1)
{
  *a1 = off_100B09608;
  a1[6] = &off_100AE0A78;
  v2 = a1[7];
  if (v2)
  {
    sub_10000C808(v2);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FB448(void *a1)
{
  *a1 = off_100B09608;
  a1[6] = &off_100AE0A78;
  v2 = a1[7];
  if (v2)
  {
    sub_10000C808(v2);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FB4D8(void *a1)
{
  *a1 = off_100B09638;
  a1[6] = &off_100AE0A78;
  v2 = a1[7];
  if (v2)
  {
    sub_10000C808(v2);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FB554(void *a1)
{
  *a1 = off_100B09638;
  a1[6] = &off_100AE0A78;
  v2 = a1[7];
  if (v2)
  {
    sub_10000C808(v2);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FB5E4(uint64_t a1)
{
  *a1 = off_100B09668;
  *(a1 + 48) = &off_100B096A0;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FB694(uint64_t a1)
{
  *a1 = off_100B09668;
  *(a1 + 48) = &off_100B096A0;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FB758(uint64_t a1)
{
  *a1 = off_100B096B8;
  *(a1 + 48) = &off_100B096F0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FB838(uint64_t a1)
{
  *a1 = off_100B096B8;
  *(a1 + 48) = &off_100B096F0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v2 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FB92C(void *a1)
{
  *a1 = off_100B09708;
  a1[6] = &off_100B09740;
  v2 = a1[9];
  a1[9] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FB9FC(void *a1)
{
  *a1 = off_100B09708;
  a1[6] = &off_100B09740;
  v2 = a1[9];
  a1[9] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FBAE0(void *a1)
{
  *a1 = off_100B09758;
  a1[6] = &off_100B09790;
  v2 = a1[9];
  a1[9] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FBBB0(void *a1)
{
  *a1 = off_100B09758;
  a1[6] = &off_100B09790;
  v2 = a1[9];
  a1[9] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[8];
  a1[8] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FBC94(void *a1)
{
  *a1 = off_100B097A8;
  a1[6] = &off_100B097E0;
  v2 = a1[10];
  a1[10] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  a1[8] = &off_100AE0A78;
  v3 = a1[9];
  if (v3)
  {
    sub_10000C808(v3);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FBD60(void *a1)
{
  *a1 = off_100B097A8;
  a1[6] = &off_100B097E0;
  v2 = a1[10];
  a1[10] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  a1[8] = &off_100AE0A78;
  v3 = a1[9];
  if (v3)
  {
    sub_10000C808(v3);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FBE40(void *a1)
{
  *a1 = off_100B097F8;
  a1[6] = &off_100B09830;
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FBEE0(void *a1)
{
  *a1 = off_100B097F8;
  a1[6] = &off_100B09830;
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FBF94(void *a1)
{
  *a1 = off_100B09848;
  a1[6] = &off_100B09880;
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FC034(void *a1)
{
  *a1 = off_100B09848;
  a1[6] = &off_100B09880;
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FC0E8(void *a1)
{
  *a1 = off_100B09898;
  a1[6] = &off_100B098D0;
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FC188(void *a1)
{
  *a1 = off_100B09898;
  a1[6] = &off_100B098D0;
  v2 = a1[8];
  a1[8] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FC23C(void *a1)
{
  *a1 = off_100B09348;
  a1[6] = &off_100B09380;
  v2 = a1[12];
  a1[12] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[11];
  a1[11] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  return sub_1006F57F0(a1);
}

void sub_1006FC31C(void *a1)
{
  *a1 = off_100B09348;
  a1[6] = &off_100B09380;
  v2 = a1[12];
  a1[12] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[11];
  a1[11] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  sub_1006F57F0(a1);

  operator delete();
}

uint64_t sub_1006FC478(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v7 = sub_1006EF1B4(a1, a2);
  *v7 = off_100B095A8;
  *(v7 + 42) = a3;
  v8 = *(a4 + 8);
  *(a1 + 48) = &off_100AE0A78;
  *(a1 + 56) = v8;
  if (v8)
  {
    sub_10000C69C(v8);
  }

  return a1;
}

uint64_t sub_1006FC578(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v7 = sub_1006EF1B4(a1, a2);
  *v7 = off_100B09638;
  *(v7 + 42) = a3;
  v8 = *(a4 + 8);
  *(a1 + 48) = &off_100AE0A78;
  *(a1 + 56) = v8;
  if (v8)
  {
    sub_10000C69C(v8);
  }

  return a1;
}

uint64_t sub_1006FC610(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v7 = sub_1006EF1B4(a1, a2);
  *v7 = off_100B09608;
  *(v7 + 42) = a3;
  v8 = *(a4 + 8);
  *(a1 + 48) = &off_100AE0A78;
  *(a1 + 56) = v8;
  if (v8)
  {
    sub_10000C69C(v8);
  }

  return a1;
}

uint64_t sub_1006FC6A8(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v7 = sub_1006EF1B4(a1, a2);
  *v7 = off_100B095D8;
  *(v7 + 42) = a3;
  v8 = *(a4 + 8);
  *(a1 + 48) = &off_100AE0A78;
  *(a1 + 56) = v8;
  if (v8)
  {
    sub_10000C69C(v8);
  }

  return a1;
}

id sub_1006FC7A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);

  return v3;
}

BOOL sub_1006FC7C4(uint64_t a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    v1 = *(a1 + 8);
  }

  return v1 == 0;
}

std::string *sub_1006FC7DC@<X0>(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v2 = a2;
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = (a1 + 32);
  LODWORD(a2) = *(a1 + 55);
  if ((a2 & 0x80000000) == 0)
  {
    *&v2->__r_.__value_.__l.__data_ = *&v3->__r_.__value_.__l.__data_;
    v2->__r_.__value_.__r.__words[2] = *(a1 + 48);
    strcpy(v18, "()- ");
    goto LABEL_4;
  }

  sub_100008904(v2, *(a1 + 32), *(a1 + 40));
  LODWORD(a2) = *(a1 + 55);
  strcpy(v18, "()- ");
  if ((a2 & 0x80000000) == 0)
  {
LABEL_4:
    a2 = a2;
    v5 = v3;
    if (!a2)
    {
      goto LABEL_16;
    }

    goto LABEL_5;
  }

  v5 = *(a1 + 32);
  a2 = *(a1 + 40);
  if (!a2)
  {
    goto LABEL_16;
  }

LABEL_5:
  v6 = 0;
  while (1)
  {
    v7 = v6->__r_.__value_.__s.__data_[v5];
    if (v7 == 44 || v7 == 59)
    {
      break;
    }

    v6 = (v6 + 1);
    if (a2 == v6)
    {
      goto LABEL_16;
    }
  }

  if (a2 != v6 && v6 != -1)
  {
    std::string::basic_string(&v17, v3, 0, v6, &v18[7]);
    if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v2->__r_.__value_.__l.__data_);
    }

    *v2 = v17;
  }

LABEL_16:
  for (i = 0; i != 4; ++i)
  {
    size = HIBYTE(v2->__r_.__value_.__r.__words[2]);
    if ((size & 0x80u) == 0)
    {
      v10 = v2;
    }

    else
    {
      v10 = v2->__r_.__value_.__r.__words[0];
    }

    if ((size & 0x80u) != 0)
    {
      size = v2->__r_.__value_.__l.__size_;
    }

    v11 = sub_100545740(v10, v10 + size, &v18[i]);
    v12 = HIBYTE(v2->__r_.__value_.__r.__words[2]);
    v13 = v12;
    v14 = v2 + v12;
    if (v13 >= 0)
    {
      v15 = v2;
    }

    else
    {
      v14 = (v2->__r_.__value_.__r.__words[0] + v2->__r_.__value_.__l.__size_);
      v15 = v2->__r_.__value_.__r.__words[0];
    }

    result = std::string::erase(v2, &v11[-v15], v14 - v11);
  }

  return result;
}

void sub_1006FC958(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1006FC97C(uint64_t a1)
{
  std::string::assign(a1, "");
  result = std::string::assign((a1 + 32), "");
  *(a1 + 24) = -127;
  return result;
}

uint64_t sub_1006FC9C0(uint64_t result)
{
  *result = off_100B09948;
  *(result + 8) = off_100B099B8;
  *(result + 16) = off_100B099F8;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = result + 16;
  *(result + 64) = 0;
  return result;
}

void sub_1006FCA40(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_1006FD950((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

void sub_1006FCB14(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

uint64_t sub_1006FCC60(uint64_t a1)
{
  result = *(a1 + 64);
  if (result)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1006FCD04;
    v3[3] = &unk_100ADF8F8;
    v3[4] = result;
    result = (*(*result + 16))(result, v3);
    *(a1 + 64) = 0;
  }

  return result;
}

uint64_t sub_1006FCD04(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1006FCED4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  v3 = (*(*v2 + 32))(v2, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_1006FCF6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006FD000(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  v3 = (*(*v2 + 64))(v2, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_1006FD098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006FD0B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  v3 = (*(*v2 + 72))(v2, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_1006FD14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006FD1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 64);
  if (*(a3 + 23) < 0)
  {
    sub_100008904(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v8 = *(a3 + 16);
  }

  v5 = (*(*v4 + 104))(v4, a2, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_1006FD27C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006FD298(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  v3 = (*(*v2 + 112))(v2, __p);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_1006FD330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006FD3F4(os_unfair_lock_s *a1)
{
  v2 = qword_100BCE948;
  if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending 'operator status changed' notification to telephony listeners", v3, 2u);
  }

  sub_1000D9624(a1 + 6, &stru_100B09A50);
}

void sub_1006FD47C(os_unfair_lock_s *a1)
{
  v2 = qword_100BCE948;
  if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending 'wireless technology changed' notification to telephony listeners", v3, 2u);
  }

  sub_1000D9624(a1 + 6, &stru_100B09A70);
}

void sub_1006FD504(os_unfair_lock_s *a1)
{
  v2 = qword_100BCE948;
  if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending 'registration status changed' notification to telephony listeners", v3, 2u);
  }

  sub_1000D9624(a1 + 6, &stru_100B09A90);
}

void sub_1006FD58C(os_unfair_lock_s *a1, char a2)
{
  v4 = qword_100BCE948;
  if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Sending 'signal strength changed' notification to telephony listeners", buf, 2u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006FD7B0;
  v5[3] = &unk_100B09AB0;
  v6 = a2;
  sub_1000D9624(a1 + 6, v5);
}

void sub_1006FD664(os_unfair_lock_s *a1, char a2)
{
  v4 = qword_100BCE948;
  if (os_log_type_enabled(qword_100BCE948, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Sending 'transmit state changed' notification to telephony listeners", buf, 2u);
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1006FD7E0;
  v5[3] = &unk_100B09AB0;
  v6 = a2;
  sub_1000D9624(a1 + 6, v5);
}

void *sub_1006FD810(void *a1)
{
  *a1 = off_100B09948;
  a1[1] = off_100B099B8;
  a1[2] = off_100B099F8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1006FD8A0(void *a1)
{
  *a1 = off_100B09948;
  a1[1] = off_100B099B8;
  a1[2] = off_100B099F8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  operator delete();
}

char *sub_1006FD950(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_1006FDAEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006FE30C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_1006FE6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1003A1C64(a1, 1952538980);
  *result = &off_100B09AE0;
  *(result + 400) = 0;
  *(result + 408) = 0;
  *(result + 416) = a2;
  *(result + 424) = a3;
  *(result + 432) = 0;
  *(result + 436) = 0;
  *(result + 448) = 0;
  return result;
}

void sub_1006FE744(uint64_t a1)
{
  sub_1003A1D74(a1);

  operator delete();
}

void sub_1006FE77C(uint64_t a1, char *__s1, const __CFNumber *a3)
{
  if (!strcmp(__s1, "kBTAudioMsgPropertySpatialOn"))
  {
    *valuePtr = 0;
    CFNumberGetValue(a3, kCFNumberSInt32Type, valuePtr);
    if (valuePtr[0])
    {
      (*(**(a1 + 424) + 8))(*(a1 + 424), a1, 1);
    }

    else
    {
      v6 = **(a1 + 424);
      if ((valuePtr[0] & 2) != 0)
      {
        (*v6)();
      }

      else
      {
        v6[1]();
        (***(a1 + 424))(*(a1 + 424), a1, 0);
      }
    }

    return;
  }

  if (!strcmp(__s1, "kBTAudioMsgPropertyWSModeEnabled"))
  {
    CFBooleanGetValue(a3);
    v7 = *(**(a1 + 424) + 16);

    v7();
  }

  else
  {
    if (!strcmp(__s1, "kBTAudioMsgPropertyDynamicLatencyAudioAndInputAggregationOn"))
    {
      CFBooleanGetValue(a3);
      v8 = *(**(a1 + 424) + 24);

      goto LABEL_37;
    }

    if (!strcmp(__s1, "kBTAudioMsgPropertyEnableSoftwareVolume"))
    {
      CFBooleanGetValue(a3);
      v8 = *(**(a1 + 424) + 32);

      goto LABEL_37;
    }

    if (!strcmp(__s1, "kBTAudioMsgPropertyPMEOnBuds"))
    {
      CFBooleanGetValue(a3);
      v8 = *(**(a1 + 424) + 40);

      goto LABEL_37;
    }

    if (!strcmp(__s1, "kBTAudioMsgPropertySpatialAudioActive"))
    {
      CFBooleanGetValue(a3);
      v8 = *(**(a1 + 424) + 64);

      goto LABEL_37;
    }

    if (strcmp(__s1, "kBTAudioMsgPropertySpatialAudioAppBasedMode"))
    {
      if (strcmp(__s1, "kBTHeadtrackingAvailabilityChanged"))
      {
        if (!strcmp(__s1, "kBTAudioMsgUnifiedUSBCDict"))
        {
          BOOLean = 0;
          value = 0;
          LOBYTE(v13) = 0;
          if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgUnifiedUSBCBTAddress", &value))
          {
            v10 = [value copy];
          }

          else
          {
            v10 = 0;
          }

          if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgUnifiedUSBCStatus", &BOOLean))
          {
            CFNumberGetValue(BOOLean, kCFNumberSInt8Type, &v13);
          }

          v12 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            *valuePtr = 138412546;
            *&valuePtr[4] = v10;
            v17 = 1024;
            v18 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unpacking kBTAudioMsgUnifiedUSBCDict for address: %@, status: %d", valuePtr, 0x12u);
          }

          if (_os_feature_enabled_impl())
          {
            (*(**(a1 + 424) + 72))(*(a1 + 424), a1, v10, v13);
          }
        }

        else
        {

          sub_1003A432C(a1, __s1, a3);
        }

        return;
      }

      CFBooleanGetValue(a3);
      v8 = *(**(a1 + 424) + 104);

LABEL_37:
      v8();
      return;
    }

    value = 0;
    *valuePtr = 0;
    BOOLean = 0;
    v13 = 0;
    if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertySpatialBundleID", valuePtr))
    {
      v9 = [*valuePtr copy];
    }

    else
    {
      v9 = 0;
    }

    if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertySpatialMode", &value))
    {
      CFNumberGetValue(value, kCFNumberSInt32Type, &v13);
    }

    if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyHeadTrack", &BOOLean))
    {
      if (CFBooleanGetValue(BOOLean))
      {
        v11 = 0xFFFFFFFFLL;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0xFFFFFFFFLL;
    }

    (*(**(a1 + 424) + 56))(*(a1 + 424), a1, v9, v13, v11);
  }
}

void sub_1006FEE8C(uint64_t a1, uint64_t a2, CFBooleanRef BOOLean)
{
  if (a2 == 14)
  {
    CFBooleanGetValue(BOOLean);
    v4 = *(**(a1 + 424) + 48);

    v4();
  }

  else
  {

    sub_1003A48F4(a1, a2);
  }
}

void sub_1006FEF60(uint64_t a1, uint64_t a2, CFDictionaryRef theDict)
{
  switch(a2)
  {
    case '\'':
      value = 0;
      LODWORD(number) = 0;
      if (CFDictionaryGetValueIfPresent(theDict, @"kBTAudioMsgPropertyAmpAvgSkipDurationInSecond", &value))
      {
        CFNumberGetValue(value, kCFNumberIntType, &number);
        v7 = number;
      }

      else
      {
        v7 = 0;
      }

      (*(**(a1 + 424) + 96))(*(a1 + 424), a1, v7);
      break;
    case '&':
      v6 = *(**(a1 + 424) + 88);

      v6();
      break;
    case '%':
      number = 0;
      value = 0;
      v8 = 130;
      valuePtr = 0;
      if (CFDictionaryGetValueIfPresent(theDict, @"kBTAudioMsgPropertyAmpRouteReason", &value))
      {
        CFNumberGetValue(value, kCFNumberIntType, &valuePtr);
      }

      if (CFDictionaryGetValueIfPresent(theDict, @"kBTAudioMsgPropertyAmpCodecID", &number))
      {
        CFNumberGetValue(number, kCFNumberIntType, &v8);
        v5 = v8;
      }

      else
      {
        v5 = 130;
      }

      (*(**(a1 + 424) + 80))(*(a1 + 424), a1, valuePtr, v5);
      break;
    default:

      sub_1003A48A8(a1, a2);
      break;
  }
}

void sub_1006FF118(uint64_t a1, char *a2, unsigned int a3)
{
  if (*(a1 + 432) == 1)
  {
    v6 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *a2;
      v8 = a2[1];
      v9 = a2[2];
      v10 = a2[3];
      v17[0] = 67110144;
      v17[1] = a3;
      v18 = 1024;
      v19 = v7;
      v20 = 1024;
      v21 = v8;
      v22 = 1024;
      v23 = v9;
      v24 = 1024;
      v25 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "AMP link data len=%u data=%.8x, %.8x, %.8x, %.8x", v17, 0x20u);
    }
  }

  if (_os_feature_enabled_impl())
  {
    if (a2 && a3 && (sub_1003A2BF4(a1) || sub_1003A2C04(a1)))
    {
      v11 = a2[6];
      v12 = v11 & 0xF;
      v13 = v11 >> 4;
      if (v12 == 8)
      {
        v14 = v13;
      }

      else
      {
        v14 = 0;
      }

      if (v14 == 1)
      {
        sub_1003A3150(a1, a2, a3, 1);
      }

      else
      {
        v16 = qword_100BCE8D0;
        if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
        {
          sub_100865ADC(v14, v16);
        }
      }
    }

    else
    {
      v15 = qword_100BCE8D0;
      if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_ERROR))
      {
        sub_100865A38(a3, a2 != 0, v15);
      }
    }
  }
}

void sub_1006FF2D8(uint64_t a1, int a2, int a3)
{
  valuePtr = a3;
  *keys = *&off_100B09BF0;
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  v6 = v5;
  v7 = &kCFBooleanTrue;
  if (!a2)
  {
    v7 = &kCFBooleanFalse;
  }

  values[0] = *v7;
  values[1] = v5;
  v8 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sub_1003A3724(a1, "kBTAudioMsgPropertyAmpIsEnabled", v8);
  CFRelease(v6);
  CFRelease(v8);
}

void sub_1006FF3D8(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 436) < a2)
  {
    *(a1 + 436) = a2;
  }

  ++*(a1 + 440);
  *(a1 + 448) += a2;
  if (qword_100B50940 != -1)
  {
    sub_100865B54();
  }

  sub_10062F210(off_100B50938, *(a1 + 416), *(a1 + 448) / *(a1 + 440), *(a1 + 436));
  v3 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 436);
    v5 = *(a1 + 440);
    v6 = *(a1 + 448);
    v7[0] = 67109632;
    v7[1] = v4;
    v8 = 1024;
    v9 = v5;
    v10 = 2048;
    v11 = v6 / v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "AMP Metric SendAMPSkipDuration Max %u ms, count %u, avg %llu", v7, 0x18u);
  }
}

uint64_t sub_1006FF71C(uint64_t a1)
{
  *a1 = off_100B09C30;
  v2 = a1 + 256;
  *(a1 + 256) = off_100B09CA0;
  dispatch_release(*(a1 + 512));
  CFRelease(*(a1 + 520));

  sub_1003FCA4C(v2);

  return sub_10032F580(a1);
}

void sub_1006FF7B4(_Unwind_Exception *a1)
{
  sub_1003FCA4C(v2);
  sub_10032F580(v1);
  _Unwind_Resume(a1);
}

void sub_1006FF7E4(uint64_t a1)
{
  sub_1006FF71C(a1);

  operator delete();
}

void sub_1006FF81C(uint64_t a1)
{
  sub_1006FF71C(a1 - 256);

  operator delete();
}

uint64_t sub_1006FF858(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  *(a1 + 504) = 1;
  v4 = 0;
  sub_1000216B4(&v4);
  if (sub_1002EF24C(sub_1006FFA08, off_100B09CF0, 0x3EFu, 0x3B01u, (a1 + 504), &unk_100B09D18))
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100865B68();
    }

LABEL_10:
    v2 = 1;
    goto LABEL_11;
  }

  *&v7 = &unk_100B09D48;
  WORD4(v7) = 3;
  *&v8 = &unk_100B09CC0;
  WORD4(v8) = 1;
  *&v5 = &unk_100B09D90;
  WORD4(v5) = 3;
  *&v6 = &unk_100B09CD8;
  WORD4(v6) = 1;
  byte_100BC7048 = 1;
  word_100BC704A = 1;
  dword_100BC7050 = *(a1 + 504);
  if (sub_1002F7E1C(&v7, (a1 + 496)))
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100865BD8();
    }

    goto LABEL_10;
  }

  v2 = sub_1002F7E1C(&v5, (a1 + 500));
  if (v2)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100865C48();
    }

    goto LABEL_10;
  }

LABEL_11:
  sub_10002249C(&v4);
  return v2;
}

void sub_1006FFA08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (qword_100B54EC0 != -1)
  {
    sub_100865CB8();
  }

  v6 = off_100B54EB8;

  sub_1006FFFB0(v6, a1, v4);
}

uint64_t sub_1006FFA64(uint64_t a1)
{
  v4 = 0;
  sub_1000216B4(&v4);
  sub_1002F8018(*(a1 + 496));
  sub_1002F8018(*(a1 + 500));
  if (sub_1002EF558(*(a1 + 504)) == 101)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100865CCC();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  sub_10002249C(&v4);
  return v2;
}

uint64_t sub_1006FFB30(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v21 = unk_100B09DE8;
    v22 = unk_100B09DD8;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v4 = sub_10053BFB4(a2, &v21, 4u, &v18);
    if ((v4 & 1) != 0 || sub_10053BFB4(a2, &v22, 4u, &v18))
    {
      v6 = v18;
      v5 = v19;
      if (v18 != v19)
      {
        v7 = v18;
        while (1)
        {
          if (*v7 == 6 && *(v7 + 1) == 2)
          {
            v9 = v7[1];
            v10 = *v9 == 3 && *(v9 + 8) == 3;
            if (v10 && *(v9 + 16) == 1)
            {
              break;
            }
          }

          v7 += 2;
          if (v7 == v19)
          {
            v11 = -1;
            goto LABEL_26;
          }
        }

        v11 = *(v9 + 24);
LABEL_26:
        while (v6 != v5)
        {
          *buf = *v6;
          sub_10037D4F4(buf);
          ++v6;
          v5 = v19;
        }

        if (v11 != -1)
        {
          v14 = qword_100BCE8C8;
          if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(a2, __p);
            if (v24 >= 0)
            {
              v15 = __p;
            }

            else
            {
              v15 = __p[0];
            }

            v16 = "Old WiAP UUID";
            *buf = 136446722;
            if (v4)
            {
              v16 = "New WiAP UUID";
            }

            *&buf[4] = v15;
            *&buf[12] = 1024;
            *&buf[14] = v11;
            v26 = 2082;
            v27 = v16;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Initiating outgoing Wireless IAP connection request to device %{public}s on rfcomm channel %d, %{public}s", buf, 0x1Cu);
            if (v24 < 0)
            {
              operator delete(__p[0]);
            }
          }

          LOBYTE(__p[0]) = 0;
          sub_1000216B4(__p);
          *buf = 0;
          if (sub_1002EF8BC(sub_1006FFEB8, off_100B09CF0, (a2 + 128), v11, 0x3EFu, 0x3B01u, buf, &unk_100B09D18))
          {
            if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
            {
              sub_100865DBC();
            }

            v12 = 305;
          }

          else
          {
            sub_10057E218(a1, a2, *buf);
            v12 = 0;
          }

          sub_10002249C(__p);
          goto LABEL_45;
        }
      }

      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100865E2C();
      }
    }

    else
    {
      v13 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(a2, buf);
        sub_100865D48(buf, __p, v13);
      }
    }

    v12 = 305;
LABEL_45:
    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }

    return v12;
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100865E68();
  }

  return 1;
}

void sub_1006FFE74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006FFEB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  if (qword_100B54EC0 != -1)
  {
    sub_100865CB8();
  }

  v5 = off_100B54EB8;

  sub_100700220(v5, v4, a3);
}

uint64_t sub_1006FFF14(void *a1, unint64_t a2)
{
  v2 = sub_10057E30C(a1, a2);
  v5 = 0;
  sub_1000216B4(&v5);
  v3 = sub_1002EFF1C(v2, 1818);
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100851590();
    }

    v3 = 1;
  }

  sub_10002249C(&v5);
  return v3;
}

void sub_1006FFFB0(void *a1, uint64_t a2, unsigned int a3)
{
  if (qword_100B508F0 != -1)
  {
    sub_100865EA4();
  }

  *buf = *a2;
  LOWORD(v19) = *(a2 + 4);
  v6 = sub_1000E6554(off_100B508E8, buf, 1);
  v7 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v6, __p);
    v8 = v17;
    v9 = __p[0];
    v10 = sub_10057E30C(a1, v6);
    v11 = __p;
    *buf = 136446722;
    if (v8 < 0)
    {
      v11 = v9;
    }

    v19 = v11;
    v20 = 1024;
    v21 = v10;
    v22 = 1024;
    v23 = a3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Received incoming connection attempt from device %{public}s getHandleForDevice %d, linkHandle %d", buf, 0x18u);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (sub_10057DFAC(a1, v6) && !sub_10057E30C(a1, v6))
  {
    v13 = sub_1002EFBAC(sub_1006FFEB8, a3, 1);
    if (!v13)
    {
      sub_10057E218(a1, v6, a3);
      sub_10057D9B0(a1, v6, 1);
    }

    v14 = 1;
    goto LABEL_14;
  }

  v12 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Denying connection attempt", buf, 2u);
  }

  v13 = sub_1002EFBAC(sub_1006FFEB8, a3, 0);
  if (v13)
  {
    v14 = 0;
LABEL_14:
    v15 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100865EB8(v14, v13, v15);
    }
  }
}

void sub_1007001FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100700220(void *a1, int a2, uint64_t a3)
{
  v5 = sub_10057E420(a1, a2);
  if (v5)
  {
    v6 = v5;
    if (a3)
    {
      v7 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(v6, __p);
        v9 = v11 >= 0 ? __p : __p[0];
        *buf = 136446466;
        v13 = v9;
        v14 = 1024;
        v15 = a3;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Connection to device %{public}s failed - result was %{bluetooth:OI_STATUS}u", buf, 0x12u);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (qword_100B50AA0 != -1)
      {
        sub_100865F58();
      }

      v8 = sub_1000DD584(off_100B50A98, a3, 20000);
      sub_10057DA84(a1, v6, v8);
    }

    sub_10057DA84(a1, v5, 0);
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100866060();
  }
}

_BYTE *sub_100700530(uint64_t a1)
{
  v2 = *(a1 + 32);
  v17 = 0;
  sub_1000216B4(&v17);
  v4 = *(a1 + 40);
  v3 = (a1 + 40);
  v5 = sub_10057E420(v2, v4);
  sub_100022214(&v17);
  if (!v5)
  {
    return sub_10002249C(&v17);
  }

  sub_1000BE6F8((v5 + 128), __p);
  if (v21 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = *__p;
  }

  v7 = CFStringCreateWithCString(kCFAllocatorDefault, v6, 0x600u);
  if (v21 < 0)
  {
    operator delete(*__p);
  }

  Connection = acc_transportClient_createConnection();
  if (v7)
  {
    CFRelease(v7);
  }

  if (!Connection)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_1008660D8();
    }

    goto LABEL_21;
  }

  v16[5] = _NSConcreteStackBlock;
  v16[6] = 3221225472;
  v16[7] = sub_10070091C;
  v16[8] = &unk_100AEC180;
  v16[9] = v2;
  v16[10] = v5;
  Endpoint = acc_transportClient_createEndpoint();
  v10 = qword_100BCE8C8;
  if (!Endpoint)
  {
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_10086609C();
    }

LABEL_21:
    sub_1000618AC(&v17);
    (*(*v2 + 80))(v2, v5);
    return sub_10002249C(&v17);
  }

  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    *__p = 138412546;
    *&__p[4] = Connection;
    v19 = 2112;
    v20 = Endpoint;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[iAP CONNECTED] CONNUUID: %@ and ENDPOINTUUID: %@", __p, 0x16u);
  }

  v11 = CFNumberCreate(kCFAllocatorDefault, kCFNumberSInt16Type, v3);
  CFDictionarySetValue(*(v2 + 520), Connection, v11);
  CFRelease(v11);
  v12 = objc_opt_new();
  [v12 setConnectionUUID:Connection];

  [v12 setEndpointUUID:Endpoint];
  v13 = *(v2 + 528);
  v14 = [NSNumber numberWithUnsignedShort:*v3];
  [v13 setObject:v12 forKey:v14];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100700980;
  v16[3] = &unk_100ADF8F8;
  v16[4] = v2;
  if (qword_100BC7058 != -1)
  {
    dispatch_once(&qword_100BC7058, v16);
  }

  return sub_10002249C(&v17);
}

uint64_t sub_10070091C(uint64_t a1, int a2, int a3, CFDataRef theData)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);

  return sub_1003FD79C(v6 + 256, v5, BytePtr, Length, 1);
}

void sub_100700A04(id a1, __CFString *a2, BOOL a3)
{
  v3 = a3;
  v5 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = a2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "acc_transportClient_setConnectionAuthStatusDidChangeHandler - connUID:%@", &v6, 0xCu);
  }

  if (qword_100B54EC0 != -1)
  {
    sub_100866114();
  }

  sub_100700AE0(off_100B54EB8, a2, v3);
}

void sub_100700AE0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "authStatusDidChange - connUUID: %@", &v14, 0xCu);
  }

  v7 = sub_100701640(a1, a2);
  v8 = sub_10057E420(a1, v7);
  if (v8)
  {
    v9 = a1[66];
    v10 = [NSNumber numberWithUnsignedShort:v7];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = [v11 endpointUUID];
    v13 = acc_transportClient_copyPropertiesForEndpointWithUUID();

    if (v13)
    {
      LOBYTE(v14) = 0;
      if (sub_100701784(v13, &v14))
      {
        if (qword_100B547A0 != -1)
        {
          sub_10086613C();
        }

        (*(*off_100B54798 + 240))(off_100B54798, v8, a3, v14);
      }

      CFRelease(v13);
    }
  }
}

void sub_100700CB8(uint64_t a1, uint64_t a2, const __CFDictionary *a3, const __CFDictionary *a4, uint64_t a5)
{
  if (sub_100700D70(*(a1 + 32), a2))
  {
    if (qword_100B54EC0 != -1)
    {
      sub_100865CB8();
    }

    v9 = off_100B54EB8;

    sub_100700E2C(v9, v8, a3, a4, a5);
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100866164();
  }
}

uint64_t sub_100700D70(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  if (a2)
  {
    v2 = *(a1 + 512);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007018C4;
    block[3] = &unk_100AE0EB8;
    block[5] = a1;
    block[6] = a2;
    block[4] = &v6;
    dispatch_sync(v2, block);
    v3 = *(v7 + 12);
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t sub_100700E2C(void *a1, uint64_t a2, const __CFDictionary *a3, const __CFDictionary *a4, uint64_t a5)
{
  v8 = sub_100701640(a1, a5);
  result = sub_10057E420(a1, v8);
  if (a3)
  {
    v10 = result;
    if (result)
    {
      result = acc_transportClient_isConnectionAuthenticated();
      if (result)
      {
        result = sub_100701784(a4, 0);
        if ((result & 1) == 0)
        {
          v11 = 0;
          result = sub_100701784(a3, &v11);
          if (result)
          {
            if (qword_100B547A0 != -1)
            {
              sub_10086613C();
            }

            return (*(*off_100B54798 + 240))(off_100B54798, v10, 1, v11);
          }
        }
      }
    }
  }

  return result;
}

void sub_100700F08(void *a1, int a2, int a3)
{
  v4 = a2;
  v6 = sub_10057E420(a1, a2);
  sub_10057E710(a1, v6, 0, a3);
  if (v6)
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
    sub_1000C2364(v6, &v12 + 1, &v12, &v11, &v10);
    if (v12 == 7563 && (v11 & 0xFFFFFFFD) == 0xC008)
    {
      if (qword_100B50910 != -1)
      {
        sub_100865F80();
      }

      sub_1005BC588(off_100B50908, 0, (v6[128] << 40) | (v6[129] << 32) | (v6[130] << 24) | (v6[131] << 16) | (v6[132] << 8) | v6[133]);
    }
  }

  sub_1003FD414((a1 + 32), v6);
  v7 = a1[64];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100701064;
  v8[3] = &unk_100AEB940;
  v8[4] = a1;
  v9 = v4;
  dispatch_async(v7, v8);
}

void sub_100701064(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 528);
  v4 = [NSNumber numberWithUnsignedShort:*(a1 + 40)];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 connectionUUID];
    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[iAP DISCONNECTED] connectionUUID: %@", &v13, 0xCu);
  }

  if (v5)
  {
    v8 = [v5 connectionUUID];
    acc_transportClient_destroyConnection();

    v9 = *(v2 + 520);
    v10 = [v5 connectionUUID];
    CFDictionaryRemoveValue(v9, v10);

    v11 = *(v2 + 528);
    v12 = [NSNumber numberWithUnsignedShort:*(a1 + 40)];
    [v11 removeObjectForKey:v12];
  }
}

void sub_10070121C(void *a1, int a2, const UInt8 *a3, unsigned int a4)
{
  v6 = a2;
  if (sub_10057E420(a1, a2))
  {
    v8 = CFDataCreate(kCFAllocatorDefault, a3, a4);
    v9 = a1[64];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100701300;
    block[3] = &unk_100AE0EF8;
    v11 = v6;
    block[4] = a1;
    block[5] = v8;
    dispatch_async(v9, block);
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_1008661D8();
  }
}

void sub_100701300(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 528);
  v3 = [NSNumber numberWithUnsignedShort:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = [v4 endpointUUID];
  v6 = acc_transportClient_processIncomingData();

  v7 = *(a1 + 40);
  if (v7)
  {
    CFRelease(v7);
  }

  if ((v6 & 1) == 0 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100866214();
  }
}

void sub_1007013EC(void *a1, int a2)
{
  v3 = sub_10057E420(a1, a2);
  if (v3)
  {

    sub_1003FD9B4((a1 + 32), v3);
  }

  else if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_100866250();
  }
}

BOOL sub_100701460(void *a1, unint64_t a2, char *a3, int a4)
{
  v8 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_INFO))
  {
    v12[0] = 67109120;
    v12[1] = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Sending %d bytes of WiAP data to stack", v12, 8u);
  }

  v9 = sub_10057E30C(a1, a2);
  LOBYTE(v12[0]) = 0;
  sub_1000216B4(v12);
  v10 = sub_1002EF8B0(sub_1007015B4, v9, a3, a4);
  if (v10 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_10086628C();
  }

  sub_10002249C(v12);
  return v10 == 0;
}

void sub_100701598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void sub_1007015B4(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 && os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
  {
    sub_1008662FC();
  }

  if (qword_100B54EC0 != -1)
  {
    sub_100866114();
  }

  sub_1007013EC(off_100B54EB8, a1);
}

uint64_t sub_100701640(uint64_t a1, uint64_t a2)
{
  v4 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "getLinkForConnectionUUID - connectionUUID: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v10 = 0x2020000000;
  v11 = 0;
  if (a2)
  {
    v5 = *(a1 + 512);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1007017EC;
    block[3] = &unk_100AE0EB8;
    block[5] = a1;
    block[6] = a2;
    block[4] = &buf;
    dispatch_sync(v5, block);
    v6 = *(*(&buf + 1) + 24);
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&buf, 8);
  return v6;
}

const __CFDictionary *sub_100701784(const __CFDictionary *result, _BYTE *a2)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, kCFACCProperties_Endpoint_Bluetooth_HIDFunction);
    valuePtr = 0;
    if (result)
    {
      result = CFNumberGetValue(result, kCFNumberIntType, &valuePtr);
      if (result)
      {
        if (a2)
        {
          *a2 = valuePtr;
        }

        return 1;
      }
    }
  }

  return result;
}

void sub_1007017EC(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(*(a1 + 40) + 520), *(a1 + 48));
  v3 = qword_100BCE8C8;
  if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = Value;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "getLinkForConnectionUUID - linkCF: %@", &v4, 0xCu);
  }

  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt16Type, (*(*(a1 + 32) + 8) + 24));
  }
}

void sub_1007018C4(void *a1)
{
  v2 = a1[5];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(v2 + 528);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [*(v2 + 528) objectForKeyedSubscript:{v7, v11}];
        v9 = a1[6];
        v10 = [v8 endpointUUID];
        LODWORD(v9) = CFStringCompare(v9, v10, 0) == kCFCompareEqualTo;

        if (v9)
        {
          CFNumberGetValue(v7, kCFNumberSInt16Type, (*(a1[4] + 8) + 24));
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

void sub_100701A68(int a1, int a2)
{
  if (qword_100B54EC0 != -1)
  {
    sub_100865CB8();
  }

  v4 = off_100B54EB8;

  sub_100700F08(v4, a1, a2);
}

void sub_100701AC4(int a1, const UInt8 *a2, unsigned int a3)
{
  if (qword_100B54EC0 != -1)
  {
    sub_100865CB8();
  }

  v6 = off_100B54EB8;

  sub_10070121C(v6, a1, a2, a3);
}

uint64_t sub_100701EA4(uint64_t a1)
{
  *sub_100589578(a1, "WiAPSinkService", 0x20000) = &off_100B09F78;
  if (qword_100B54ED0 != -1)
  {
    sub_10086636C();
  }

  sub_100589880(a1, off_100B54EC8);
  return a1;
}

void sub_100701F38(uint64_t a1)
{
  sub_100589670(a1);

  operator delete();
}

uint64_t sub_100701F78()
{
  if (qword_100B54ED0 != -1)
  {
    sub_10086636C();
  }

  v0 = *(*(off_100B54EC8 + 32) + 16);

  return v0();
}

void sub_100701FF0(uint64_t a1, uint64_t a2)
{
  v20 = unk_100B0A078;
  v21 = unk_100B0A068;
  __p = 0;
  v18 = 0;
  v19 = 0;
  if (!sub_10053C3E8(a2))
  {
    v7 = 0;
    goto LABEL_22;
  }

  v4 = sub_10053A020(a2, &v21, 4u);
  v5 = sub_10053A020(a2, &v20, 4u);
  v6 = v5;
  if (!v4 && !v5)
  {
    v7 = 1;
    goto LABEL_22;
  }

  if (v4)
  {
    if (sub_10053BFB4(a2, &v21, 0x301u, &__p))
    {
      goto LABEL_11;
    }
  }

  else if (v5)
  {
    v6 = sub_10053BFB4(a2, &v20, 0x301u, &__p);
  }

  if (!v6)
  {
    goto LABEL_21;
  }

LABEL_11:
  v8 = __p;
  if (__p == v18)
  {
    goto LABEL_21;
  }

  while (1)
  {
    if (*v8 != 1)
    {
      v10 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100866380(&v15, v16, v10);
      }

      goto LABEL_18;
    }

    if (v8[1] == 4)
    {
      break;
    }

    v9 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100866380(&buf, v14, v9);
    }

LABEL_18:
    v8 += 8;
    if (v8 == v18)
    {
      goto LABEL_21;
    }
  }

  sub_100542814(a2, *(v8 + 2));
LABEL_21:
  v7 = 4;
LABEL_22:
  v11 = *(a1 + 32);
  v22 = 0;
  sub_100016250(&v22);
  *&v12 = v22;
  *(&v12 + 1) = SWORD2(v22);
  sub_100539554(a2, v11, v7, &v12, 0);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_1007021D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100702200(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v13 = 0;
  v12 = 0;
  v17 = xmmword_1008A5380;
  memset(v18, 0, sizeof(v18));
  v10 = unk_100B0A098;
  v11 = unk_100B0A088;
  v15 = xmmword_1008C5060;
  v16 = xmmword_1008A5390;
  v14 = xmmword_1008C5070;
  *a3 = 0;
  if (sub_10054BE34(a2, v18, &v13) && v13 && ((result = sub_10024AB64(v18, &v17, &v12, v5), !result) || (result = sub_10024AB64(v18, &v16, &v12, v7), !result) || (result = sub_10024AB64(v18, &v15, &v12, v8), !result) || (result = sub_10024AB64(v18, &v14, &v12, v9), !result)) || (result = sub_10053C3E8(a2), result) && ((result = sub_10053A020(a2, &v11, 4u), (result & 1) != 0) || (result = sub_10053A020(a2, &v10, 4u), result)))
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_1007023F4(uint64_t a1)
{
  *sub_100589578(a1, "WiAPService", 128) = &off_100B0A0D8;
  if (qword_100B54EC0 != -1)
  {
    sub_1008663C0();
  }

  sub_100589880(a1, off_100B54EB8);
  return a1;
}

void sub_100702488(uint64_t a1)
{
  sub_100589670(a1);

  operator delete();
}

uint64_t sub_1007024C8()
{
  if (qword_100B54EC0 != -1)
  {
    sub_1008663C0();
  }

  v0 = *(*(off_100B54EB8 + 32) + 16);

  return v0();
}

void sub_100702540(uint64_t a1, uint64_t a2)
{
  v20 = unk_100B0A1D8;
  v21 = unk_100B0A1C8;
  __p = 0;
  v18 = 0;
  v19 = 0;
  if (!sub_10053C3E8(a2))
  {
    v7 = 0;
    goto LABEL_22;
  }

  v4 = sub_10053A020(a2, &v21, 4u);
  v5 = sub_10053A020(a2, &v20, 4u);
  v6 = v5;
  if (!v4 && !v5)
  {
    sub_100543938(a2, 0);
    v7 = 1;
    goto LABEL_22;
  }

  if (v4)
  {
    sub_100543938(a2, 1);
    if (sub_10053BFB4(a2, &v21, 0x301u, &__p))
    {
      goto LABEL_11;
    }
  }

  else if (v5)
  {
    sub_100543938(a2, 2);
    v6 = sub_10053BFB4(a2, &v20, 0x301u, &__p);
  }

  if (!v6)
  {
    goto LABEL_21;
  }

LABEL_11:
  v8 = __p;
  if (__p == v18)
  {
    goto LABEL_21;
  }

  while (1)
  {
    if (*v8 != 1)
    {
      v10 = qword_100BCE8C8;
      if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
      {
        sub_100866380(&v15, v16, v10);
      }

      goto LABEL_18;
    }

    if (v8[1] == 4)
    {
      break;
    }

    v9 = qword_100BCE8C8;
    if (os_log_type_enabled(qword_100BCE8C8, OS_LOG_TYPE_ERROR))
    {
      sub_100866380(&buf, v14, v9);
    }

LABEL_18:
    v8 += 8;
    if (v8 == v18)
    {
      goto LABEL_21;
    }
  }

  sub_100542814(a2, *(v8 + 2));
LABEL_21:
  v7 = 4;
LABEL_22:
  v11 = *(a1 + 32);
  v22 = 0;
  sub_100016250(&v22);
  *&v12 = v22;
  *(&v12 + 1) = SWORD2(v22);
  sub_100539554(a2, v11, v7, &v12, 0);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_10070274C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100702774(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v13 = 0;
  v12 = 0;
  v17 = xmmword_1008A5380;
  memset(v18, 0, sizeof(v18));
  v10 = unk_100B0A1D8;
  v11 = unk_100B0A1C8;
  v15 = xmmword_1008C5080;
  v16 = xmmword_1008A5390;
  v14 = xmmword_1008C5070;
  *a3 = 0;
  if (sub_10054BE34(a2, v18, &v13) && v13 && ((result = sub_10024AB64(v18, &v17, &v12, v5), !result) || (result = sub_10024AB64(v18, &v16, &v12, v7), !result) || (result = sub_10024AB64(v18, &v15, &v12, v8), !result) || (result = sub_10024AB64(v18, &v14, &v12, v9), !result)) || (result = sub_10053C3E8(a2), result) && ((result = sub_10053A020(a2, &v11, 4u), (result & 1) != 0) || (result = sub_10053A020(a2, &v10, 4u), result)))
  {
    *a3 = 1;
  }

  return result;
}

uint64_t sub_100702968(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1003A1C64(a1, 1952539500);
  *v8 = &off_100B0A218;
  sub_100508E60((v8 + 50), a2, a3);
  *(a1 + 776) = a4;
  *(a1 + 784) = 0;
  return a1;
}

uint64_t sub_1007029F8(void *a1)
{
  *a1 = &off_100B0A218;
  sub_100508ECC((a1 + 50));

  return sub_1003A1D74(a1);
}

void sub_100702A50(void *a1)
{
  *a1 = &off_100B0A218;
  sub_100508ECC((a1 + 50));
  sub_1003A1D74(a1);

  operator delete();
}

void sub_100702AC4(uint64_t a1, char *__s1, const __CFBoolean *a3)
{
  if (!strcmp(__s1, "kBTAudioMsgPropertyGameOn"))
  {
    CFBooleanGetValue(a3);
    v6 = *(**(a1 + 776) + 48);

    goto LABEL_43;
  }

  if (!strcmp(__s1, "kBTAudioMsgPropertyExpanseOn"))
  {
    CFBooleanGetValue(a3);
    v6 = *(**(a1 + 776) + 56);

    goto LABEL_43;
  }

  if (!strcmp(__s1, "kBTAudioMsgPropertyVoiceOverOn"))
  {
    CFBooleanGetValue(a3);
    v6 = *(**(a1 + 776) + 64);

    goto LABEL_43;
  }

  if (!strcmp(__s1, "kBTAudioMsgPropertyDynamicLatencyAudioAndInputAggregationOn"))
  {
    CFBooleanGetValue(a3);
    v6 = *(**(a1 + 776) + 112);

    goto LABEL_43;
  }

  if (strcmp(__s1, "kBTAudioMsgPropertyWSModeEnabled"))
  {
    if (!strcmp(__s1, "kBTAudioMsgPropertyEnableSoftwareVolume"))
    {
      CFBooleanGetValue(a3);
      v6 = *(**(a1 + 776) + 120);
    }

    else if (!strcmp(__s1, "kBTAudioMsgPropertyPMEOnBuds"))
    {
      CFBooleanGetValue(a3);
      v6 = *(**(a1 + 776) + 128);
    }

    else
    {
      if (!strcmp(__s1, "kBTAudioMsgPropertySpatialOn"))
      {
        LODWORD(valuePtr) = 0;
        CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
        if (valuePtr)
        {
          (*(**(a1 + 776) + 80))(*(a1 + 776), a1, 1);
        }

        else
        {
          v8 = **(a1 + 776);
          if ((valuePtr & 2) != 0)
          {
            (*(v8 + 72))();
          }

          else
          {
            (*(v8 + 80))();
            (*(**(a1 + 776) + 72))(*(a1 + 776), a1, 0);
          }
        }

        return;
      }

      if (strcmp(__s1, "kBTAudioMsgPropertySpatialAudioActive"))
      {
        if (!strcmp(__s1, "kBTAudioMsgPropertySpatialAudioAppBasedMode"))
        {
          value = 0;
          valuePtr = 0;
          BOOLean = 0;
          LODWORD(number) = 0;
          if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertySpatialBundleID", &valuePtr))
          {
            v9 = [valuePtr copy];
          }

          else
          {
            v9 = 0;
          }

          if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertySpatialMode", &value))
          {
            CFNumberGetValue(value, kCFNumberSInt32Type, &number);
          }

          if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyHeadTrack", &BOOLean))
          {
            if (CFBooleanGetValue(BOOLean))
            {
              v12 = 0xFFFFFFFFLL;
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v12 = 0xFFFFFFFFLL;
          }

          (*(**(a1 + 776) + 160))(*(a1 + 776), a1, v9, number, v12);
        }

        else if (!strcmp(__s1, "kBTAudioMsgPropertyAdaptiveVolumeRampEnd"))
        {
          BOOLean = 0;
          value = 0;
          number = 0;
          LODWORD(v18) = 0;
          v19 = 0;
          if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyAdaptiveVolumeCurrentVolume", &value))
          {
            CFNumberGetValue(value, kCFNumberSInt32Type, &v18);
          }

          if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyAdaptiveVolumeAudioCategory", &BOOLean))
          {
            v10 = [(__CFBoolean *)BOOLean copy];
          }

          else
          {
            v10 = 0;
          }

          if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyAdaptiveVolumeRampEndReason", &number))
          {
            CFNumberGetValue(number, kCFNumberSInt32Type, &v19);
            v13 = v19;
          }

          else
          {
            v13 = 0;
          }

          v14 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(valuePtr) = 67109634;
            HIDWORD(valuePtr) = v18;
            v24 = 2112;
            v25 = v10;
            v26 = 1024;
            v27 = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Adaptive Volume: Volume ramp ended with currentVolume: %d audioCategory %@ rampEndReason %d", &valuePtr, 0x18u);
            v13 = v19;
          }

          (*(**(a1 + 776) + 96))(*(a1 + 776), a1, v18, v10, v13);
        }

        else if (!strcmp(__s1, "kBTAudioMsgPropertyManualVolumeUpdate"))
        {
          BOOLean = 0;
          value = 0;
          number = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyManualVolumeUpdateNewVolume", &number))
          {
            CFNumberGetValue(number, kCFNumberSInt32Type, &v19);
          }

          if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyManualVolumeUpdateCurrentVolume", &value))
          {
            CFNumberGetValue(value, kCFNumberSInt32Type, &v17 + 4);
          }

          if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyManualVolumeUpdateCurrentAudioCategory", &BOOLean))
          {
            v11 = [(__CFBoolean *)BOOLean copy];
          }

          else
          {
            v11 = 0;
          }

          if (CFDictionaryGetValueIfPresent(a3, @"kBTAudioMsgPropertyManualVolumeUpdateRampInProgress", &v18))
          {
            CFNumberGetValue(v18, kCFNumberSInt32Type, &v17);
            v15 = v17;
          }

          else
          {
            v15 = 0;
          }

          v16 = qword_100BCE8D0;
          if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(valuePtr) = 67109890;
            HIDWORD(valuePtr) = BYTE4(v17);
            v24 = 2112;
            v25 = v11;
            v26 = 1024;
            v27 = v19;
            v28 = 1024;
            v29 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Manual Volume update received currentVolume: %d audioCategory %@ newVolume %d isRampInProgress %d", &valuePtr, 0x1Eu);
            v15 = v17;
          }

          (*(**(a1 + 776) + 88))(*(a1 + 776), a1, HIDWORD(v17), v11, v19, v15 != 0);
        }

        else if (!strcmp(__s1, "kBTAudioMsgPropertyFrameCount"))
        {
          LODWORD(valuePtr) = 0;
          CFNumberGetValue(a3, kCFNumberSInt32Type, &valuePtr);
          (*(**(a1 + 776) + 176))(*(a1 + 776), a1, valuePtr);
        }

        else
        {

          sub_1003A432C(a1, __s1, a3);
        }

        return;
      }

      CFBooleanGetValue(a3);
      v6 = *(**(a1 + 776) + 168);
    }

LABEL_43:
    v6();
    return;
  }

  CFBooleanGetValue(a3);
  v7 = *(**(a1 + 776) + 104);

  v7();
}

uint64_t sub_100703548(uint64_t a1)
{
  result = (***(a1 + 776))(*(a1 + 776), a1);
  *(a1 + 784) = 1;
  return result;
}

void sub_100703758(uint64_t a1, int a2, float a3)
{
  valuePtr = a3;
  v7 = a2;
  *keys = *off_100B0A328;
  v4 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloat32Type, &valuePtr);
  v5 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &v7);
  values[0] = v4;
  values[1] = v5;
  v6 = CFDictionaryCreate(kCFAllocatorDefault, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sub_1003A3724(a1, "kBTAudioMsgPropertySamplingSpeedParams", v6);
  CFRelease(v4);
  CFRelease(v5);
  CFRelease(v6);
}

void sub_100703900(uint64_t a1, CFDictionaryRef theDict)
{
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  sub_1003A3724(a1, "kBTAudioMsgPropertySpatialPerAppModeMap", MutableCopy);

  CFRelease(MutableCopy);
}

void sub_100703964(uint64_t a1, CFDictionaryRef theDict)
{
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  sub_1003A3724(a1, "kBTAudioMsgPropertyAdaptiveVolumeMap", MutableCopy);

  CFRelease(MutableCopy);
}

uint64_t sub_1007039D8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = *(a1 + 660);
  LOBYTE(v4) = *(a1 + 652);
  v9 = sub_1005095A4(a1 + 400);
  LODWORD(v3) = vcvtps_s32_f32(a3 / v4);
  if (*(a1 + 396) == 1 && (v10 = qword_100BCE8D0, os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEBUG)))
  {
    v13 = 134218496;
    v14 = a3;
    v15 = 1024;
    v16 = v3;
    v17 = 1024;
    v18 = v8;
    _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "A2DPAudioDevice readHandler called on data of size %lu (%d frames) with maxFrame count of %d", &v13, 0x18u);
    if (v9)
    {
      goto LABEL_4;
    }
  }

  else if (v9)
  {
LABEL_4:
    v3 = 0;
    return (*(**(a1 + 776) + 16))(*(a1 + 776), a1, a2, a3, v3, v9);
  }

  if (v8 < v3)
  {
    v11 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_FAULT))
    {
      sub_1008663D4(v3, v8, v11);
    }
  }

  return (*(**(a1 + 776) + 16))(*(a1 + 776), a1, a2, a3, v3, v9);
}

uint64_t sub_100703B78(uint64_t a1)
{
  *(a1 + 68) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = off_100AF0C10;
  sub_100044BBC((a1 + 8));
  *(a1 + 72) = 0;
  *a1 = off_100B0A348;
  *(a1 + 96) = 0;
  *(a1 + 88) = a1 + 96;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 152) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a1 + 144;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 168) = a1 + 176;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 208) = 0;
  *(a1 + 216) = a1 + 224;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = a1 + 248;
  *(a1 + 80) = 2;
  return a1;
}

uint64_t sub_100703C60@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 8);
  sub_100068968(a2, (a1 + 88));
  return sub_1000088CC(v5);
}

uint64_t sub_100703CC4@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 8);
  sub_100068968(a2, (a1 + 112));
  return sub_1000088CC(v5);
}

uint64_t sub_100703D28@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 8);
  sub_100068968(a2, (a1 + 136));
  return sub_1000088CC(v5);
}

uint64_t sub_100703D8C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 8);
  v2 = *(a1 + 160);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100703DD4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 8);
  sub_100704E14(a2, a1 + 168);
  return sub_1000088CC(v5);
}

uint64_t sub_100703E38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 8);
  sub_100705158(a2, (a1 + 192));
  return sub_1000088CC(v5);
}

uint64_t sub_100703E9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 8);
  sub_100705380(a2, a1 + 216);
  return sub_1000088CC(v5);
}

uint64_t sub_100703F00(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 8);
  v2 = *(a1 + 264);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100703F48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 8);
  sub_1007054FC(a2, (a1 + 240));
  return sub_1000088CC(v5);
}

void sub_100703FAC(uint64_t a1, void *a2)
{
  v40[0] = 0;
  v40[1] = 0;
  v35 = a2;
  sub_100007F88(v40, a1 + 8);
  objc_storeStrong((a1 + 72), a2);
  v4 = [*(a1 + 72) getLocalFileUrl];
  v5 = [NSURL URLWithString:@"MobileBluetoothConfig.plist" relativeToURL:v4];

  v39 = 0;
  v6 = [NSDictionary dictionaryWithContentsOfURL:v5 error:&v39];
  v34 = v39;
  v33 = [v6 valueForKey:@"denylistedAVRCPSubstrings"];
  sub_1007044A4(v33, &v36);
  v7 = a1 + 120;
  sub_10004B61C(a1 + 112, *(a1 + 120));
  v8 = v37;
  *(a1 + 112) = v36;
  *(a1 + 120) = v8;
  v9 = v38;
  *(a1 + 128) = v38;
  if (v9)
  {
    *(v8 + 2) = v7;
    v36 = &v37;
    v37 = 0;
    v38 = 0;
    v8 = 0;
  }

  else
  {
    *(a1 + 112) = v7;
  }

  sub_10004B61C(&v36, v8);
  v32 = [v6 valueForKey:@"denylistedCATTSubstrings"];
  sub_1007044A4(v32, &v36);
  v10 = a1 + 144;
  sub_10004B61C(a1 + 136, *(a1 + 144));
  v11 = v37;
  *(a1 + 136) = v36;
  *(a1 + 144) = v11;
  v12 = v38;
  *(a1 + 152) = v38;
  if (v12)
  {
    *(v11 + 2) = v10;
    v36 = &v37;
    v37 = 0;
    v38 = 0;
    v11 = 0;
  }

  else
  {
    *(a1 + 136) = v10;
  }

  sub_10004B61C(&v36, v11);
  v13 = [v6 valueForKey:@"denylistedPBAPSubstrings"];
  sub_1007044A4(v13, &v36);
  v14 = a1 + 96;
  sub_10004B61C(a1 + 88, *(a1 + 96));
  v15 = v37;
  *(a1 + 88) = v36;
  *(a1 + 96) = v15;
  v16 = v38;
  *(a1 + 104) = v38;
  if (v16)
  {
    *(v15 + 2) = v14;
    v36 = &v37;
    v37 = 0;
    v38 = 0;
    v15 = 0;
  }

  else
  {
    *(a1 + 88) = v14;
  }

  sub_10004B61C(&v36, v15);
  v17 = [v6 valueForKey:@"triesteDenylistedAutomationDongles"];
  sub_100704624(v17, &v36);
  v18 = a1 + 200;
  sub_10004B61C(a1 + 192, *(a1 + 200));
  v19 = v37;
  *(a1 + 192) = v36;
  *(a1 + 200) = v19;
  v20 = v38;
  *(a1 + 208) = v38;
  if (v20)
  {
    *(v19 + 2) = v18;
    v36 = &v37;
    v37 = 0;
    v38 = 0;
    v19 = 0;
  }

  else
  {
    *(a1 + 192) = v18;
  }

  sub_10004B61C(&v36, v19);
  v21 = [v6 valueForKey:@"exposureNotificationState"];
  *(a1 + 160) = [v21 unsignedIntValue];
  v22 = [v6 valueForKey:@"maxFindMyLEConnections"];
  sub_1007047B8(v22, &v36);
  v23 = a1 + 224;
  sub_10000CEDC(a1 + 216, *(a1 + 224));
  v24 = v37;
  *(a1 + 216) = v36;
  *(a1 + 224) = v24;
  v25 = v38;
  *(a1 + 232) = v38;
  if (v25)
  {
    *(v24 + 2) = v23;
    v36 = &v37;
    v37 = 0;
    v38 = 0;
    v24 = 0;
  }

  else
  {
    *(a1 + 216) = v23;
  }

  sub_10000CEDC(&v36, v24);
  v26 = [v6 valueForKey:@"maxFindMyLETransientConnections"];
  *(a1 + 264) = [v26 unsignedCharValue];
  v27 = [v6 valueForKey:@"maxSharingNearbyInvitationsHostLEConnections"];
  sub_1007048E4(v27, &v36);
  v29 = *(a1 + 248);
  v28 = (a1 + 248);
  sub_10004B61C((v28 - 1), v29);
  v30 = v37;
  *(v28 - 1) = v36;
  *v28 = v30;
  v31 = v38;
  v28[1] = v38;
  if (v31)
  {
    *(v30 + 2) = v28;
    v36 = &v37;
    v37 = 0;
    v38 = 0;
    v30 = 0;
  }

  else
  {
    *(v28 - 1) = v28;
  }

  sub_10004B61C(&v36, v30);

  sub_1000088CC(v40);
}

void sub_1007043CC(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1007044A4(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  *a2 = a2 + 8;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        sub_100007E30(__p, [*(*(&v10 + 1) + 8 * v7) UTF8String]);
        sub_100071970(a2, __p, __p);
        if (v9 < 0)
        {
          operator delete(__p[0]);
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

void sub_1007045D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_10004B61C(v15, *(v15 + 8));

  _Unwind_Resume(a1);
}

void sub_100704624(void *a1@<X1>, uint64_t **a2@<X8>)
{
  v3 = a1;
  a2[2] = 0;
  a2[1] = 0;
  *a2 = (a2 + 1);
  v4 = [v3 objectEnumerator];
  while (1)
  {
    v5 = [v4 nextObject];
    v6 = v5;
    if (!v5)
    {
      break;
    }

    __p[0] = 0;
    __p[1] = 0;
    v10 = 0;
    v7 = [v5 valueForKey:@"friendlyName"];
    sub_100007E30(__p, [v7 UTF8String]);

    v8 = [v6 valueForKey:@"chipsetManufacturerNameID"];
    LOWORD(v7) = [v8 unsignedIntValue];

    v12 = __p;
    *(sub_100705724(a2, __p, &unk_1008A9BD0, &v12, &v11) + 28) = v7;
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100704754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_10004B61C(v16, *(v16 + 8));

  _Unwind_Resume(a1);
}

void sub_1007047B8(void *a1@<X1>, void *a2@<X8>)
{
  v3 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x4812000000;
  v8 = sub_100042458;
  v9 = sub_1000426A0;
  v10 = "";
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100704A10;
  v4[3] = &unk_100B0A368;
  v4[4] = &v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
  sub_100705380(a2, (v6 + 6));
  _Block_object_dispose(&v5, 8);
  sub_10000CEDC(&v11, v12[0]);
}

void sub_1007048BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  _Block_object_dispose(&a14, 8);
  sub_10000CEDC(v22 + 48, a21);

  _Unwind_Resume(a1);
}

void sub_1007048E4(void *a1@<X1>, void *a2@<X8>)
{
  v3 = a1;
  v5 = 0;
  v6 = &v5;
  v7 = 0x4812000000;
  v8 = sub_100704B80;
  v9 = sub_100704BBC;
  v10 = "";
  v12[0] = 0;
  v12[1] = 0;
  v11 = v12;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100704BC8;
  v4[3] = &unk_100B0A368;
  v4[4] = &v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
  sub_1007054FC(a2, v6 + 6);
  _Block_object_dispose(&v5, 8);
  sub_10004B61C(&v11, v12[0]);
}

void sub_1007049E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21)
{
  _Block_object_dispose(&a14, 8);
  sub_10004B61C(v22 + 48, a21);

  _Unwind_Resume(a1);
}

void sub_100704A10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:@"legacyBCMChipsets"])
  {
    v7 = [v6 unsignedCharValue];
    v8 = *(*(a1 + 32) + 8);
    v12 = 0;
    v13 = &v12;
    v9 = sub_1003FA174(v8 + 48, &v12, &unk_1008A9BD0, &v13);
LABEL_7:
    *(v9 + 32) = v7;
    goto LABEL_8;
  }

  if ([v5 isEqualToString:@"modernBCMChipsets"])
  {
    v7 = [v6 unsignedCharValue];
    v10 = *(*(a1 + 32) + 8);
    v12 = 1;
    v13 = &v12;
    v9 = sub_1003FA174(v10 + 48, &v12, &unk_1008A9BD0, &v13);
    goto LABEL_7;
  }

  if ([v5 isEqualToString:@"aciChipsets"])
  {
    v7 = [v6 unsignedCharValue];
    v11 = *(*(a1 + 32) + 8);
    v12 = 2;
    v13 = &v12;
    v9 = sub_1003FA174(v11 + 48, &v12, &unk_1008A9BD0, &v13);
    goto LABEL_7;
  }

LABEL_8:
}

void *sub_100704B80(void *result, void *a2)
{
  result[6] = a2[6];
  v2 = a2 + 7;
  v3 = a2[7];
  result[7] = v3;
  v4 = result + 7;
  v5 = a2[8];
  result[8] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[6] = v2;
    *v2 = 0;
    a2[8] = 0;
  }

  else
  {
    result[6] = v4;
  }

  return result;
}

void sub_100704BC8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 unsignedCharValue];
  v8 = *(*(a1 + 32) + 8);
  sub_100007E30(__p, [v5 UTF8String]);
  v11 = __p;
  *(sub_1003C5428((v8 + 48), __p, &unk_1008A9BD0, &v11) + 56) = v7;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100704C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100704CAC(uint64_t a1)
{
  sub_10004B61C(a1 + 240, *(a1 + 248));
  sub_10000CEDC(a1 + 216, *(a1 + 224));
  sub_10004B61C(a1 + 192, *(a1 + 200));
  sub_10000CEDC(a1 + 168, *(a1 + 176));
  sub_10004B61C(a1 + 136, *(a1 + 144));
  sub_10004B61C(a1 + 112, *(a1 + 120));
  sub_10004B61C(a1 + 88, *(a1 + 96));
  *a1 = off_100AF0C10;

  sub_10007A068(a1 + 8);
  return a1;
}

void sub_100704D50(uint64_t a1)
{
  sub_10004B61C(a1 + 240, *(a1 + 248));
  sub_10000CEDC(a1 + 216, *(a1 + 224));
  sub_10004B61C(a1 + 192, *(a1 + 200));
  sub_10000CEDC(a1 + 168, *(a1 + 176));
  sub_10004B61C(a1 + 136, *(a1 + 144));
  sub_10004B61C(a1 + 112, *(a1 + 120));
  sub_10004B61C(a1 + 88, *(a1 + 96));
  *a1 = off_100AF0C10;

  sub_10007A068(a1 + 8);

  operator delete();
}

void *sub_100704E14(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100704E6C(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_100704E6C(void *result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100704EF4(v5, (v5 + 8), v4 + 7, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_100704EF4(uint64_t ***a1, uint64_t **a2, unsigned int *a3, void *a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *sub_100704F90(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_100704F90(uint64_t ***a1, uint64_t **a2, uint64_t **a3, uint64_t ***a4, unsigned int *a5)
{
  if (a1 + 1 == a2)
  {
    goto LABEL_3;
  }

  v5 = *a5;
  v6 = *(a2 + 7);
  if (*a5 < v6)
  {
    goto LABEL_3;
  }

  if (v6 < v5)
  {
LABEL_9:
    v10 = a2[1];
    if (v10)
    {
      v11 = a2[1];
      do
      {
        a4 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      v17 = a2;
      do
      {
        a4 = v17[2];
        v13 = *a4 == v17;
        v17 = a4;
      }

      while (!v13);
    }

    if (a4 != a1 + 1)
    {
      v18 = *(a4 + 7);
      if (v5 >= v18 && (v18 < v5 || a5[1] >= *(a4 + 8)))
      {
        return sub_1007050F4(a1, a3, a5);
      }
    }

    if (v10)
    {
      *a3 = a4;
    }

    else
    {
      *a3 = a2;
      return (a2 + 1);
    }

    return a4;
  }

  v15 = a5[1];
  v16 = *(a2 + 8);
  if (v15 >= v16)
  {
    if (v16 >= v15)
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    goto LABEL_9;
  }

LABEL_3:
  v7 = *a2;
  if (*a1 == a2)
  {
    v9 = a2;
  }

  else
  {
    if (v7)
    {
      v8 = *a2;
      do
      {
        v9 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v12 = a2;
      do
      {
        v9 = v12[2];
        v13 = *v9 == v12;
        v12 = v9;
      }

      while (v13);
    }

    v14 = *(v9 + 7);
    if (v14 >= *a5 && (*a5 < v14 || *(v9 + 8) >= a5[1]))
    {
      return sub_1007050F4(a1, a3, a5);
    }
  }

  if (v7)
  {
    *a3 = v9;
    return (v9 + 1);
  }

  else
  {
    *a3 = a2;
    return a2;
  }
}

uint64_t *sub_1007050F4(uint64_t a1, uint64_t **a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 28);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 8);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

void *sub_100705158(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1007051B0(a1, *a2, a2 + 1);
  return a1;
}

void *sub_1007051B0(void *result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100705238(v5, (v5 + 8), v4 + 4, (v4 + 4));
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_100705238(uint64_t **a1, void *a2, const void **a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  result = *sub_100086A74(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_1007052C8();
  }

  return result;
}

void sub_100705364(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001132FC(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_100705380(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1007053D8(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1007053D8(void *result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100705460(v5, (v5 + 8), v4 + 7, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_100705460(uint64_t **a1, uint64_t *a2, int *a3, void *a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *sub_100588944(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *sub_1007054FC(void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100705554(a1, *a2, a2 + 1);
  return a1;
}

void *sub_100705554(void *result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1007055DC(v5, (v5 + 8), v4 + 4, (v4 + 4));
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_1007055DC(uint64_t **a1, void *a2, const void **a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  result = *sub_100086A74(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_10070566C();
  }

  return result;
}

void sub_100705708(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001132FC(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_100705724(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_1000867EC(a1, &v6, a2);
  if (!result)
  {
    sub_1007057C8();
  }

  return result;
}

void sub_100705864(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001132FC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100705880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 432);
  if (v5)
  {
    v6 = *(a3 + 424) / v5;
  }

  else
  {
    LODWORD(v6) = 0;
  }

  v7 = *(a3 + 352);
  v8 = *(a3 + 360);
  if (v7 == v8)
  {
    goto LABEL_13;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v12 = *v7++;
    v11 = v12;
    v13 = v12 - 1;
    if ((v12 - 1) < 0x64)
    {
      ++v10;
    }

    if (v13 >= 0x64)
    {
      v11 = 0;
    }

    v9 += v11;
  }

  while (v7 != v8);
  if (!v10)
  {
LABEL_13:
    v14 = 0;
  }

  else
  {
    v14 = v9 / v10;
  }

  v15 = *(a3 + 336);
  if (*(a3 + 328) == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = **(v15 - 8);
  }

  if (*(a3 + 479) >= 0)
  {
    v17 = a3 + 456;
  }

  else
  {
    v17 = *(a3 + 456);
  }

  v18 = [NSString stringWithUTF8String:v17];
  v19 = [v18 containsString:@"Spatial"];
  if ((v19 & 1) == 0)
  {
    v19 = [v18 containsString:@"Game"];
  }

  v20 = *(a3 + 504);
  __chkstk_darwin(v19);
  v24 = 1;
  v25 = 0;
  v26 = 0;
  v27 = v6;
  v28 = v14;
  v29 = 0;
  v30 = v16;
  v31 = 0;
  v32 = v21;
  v33 = 0;
  v34 = v22;
  v35 = 0;
  v36 = v20;
  v37 = 0;
  v23 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v39 = "A2DP";
    v40 = 1024;
    v41 = v6;
    v42 = 1024;
    v43 = v14;
    v44 = 2112;
    v45 = v18;
    v46 = 2048;
    v47 = v20;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Sending AirPods summary type %s avgRSSI %d avgRx %u audioCategory %@ overWaitCount %llu", buf, 0x2Cu);
  }

  if (qword_100B508E0 != -1)
  {
    sub_10086645C();
  }

  sub_100518EC4(off_100B508D8, a2, 72, &v24);
}

uint64_t sub_100705B08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 432);
  if (v4)
  {
    v5 = *(a3 + 424) / v4;
  }

  else
  {
    LODWORD(v5) = 0;
  }

  v6 = *(a3 + 352);
  v7 = *(a3 + 360);
  if (v6 == v7)
  {
    v13 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v11 = *v6++;
      v10 = v11;
      v12 = v11 - 1;
      if ((v11 - 1) < 0x64)
      {
        ++v9;
      }

      if (v12 >= 0x64)
      {
        v10 = 0;
      }

      v8 += v10;
    }

    while (v6 != v7);
    v13 = v8 / v9;
  }

  __chkstk_darwin(a1);
  v16 = 3;
  v17 = 0;
  v18 = 0;
  v19 = v5;
  v20 = v13;
  v21 = 0u;
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  v14 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v25 = "A2DPPackFlush";
    v26 = 1024;
    v27 = v5;
    v28 = 1024;
    v29 = v13;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending AirPods summary type %s avgRSSI %d avgRx %u", buf, 0x18u);
  }

  if (qword_100B508E0 != -1)
  {
    sub_10086645C();
  }

  return sub_100518EC4(off_100B508D8, a2, 72, &v16);
}

void sub_100705CB0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v25 = 0u;
  memset(v26, 0, 28);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  LOBYTE(v21) = 5;
  v5 = [v4 objectForKeyedSubscript:@"ErrorCode"];
  DWORD1(v21) = [v5 integerValue];

  v6 = [v4 objectForKeyedSubscript:@"ErrorReason"];
  v7 = [v6 UTF8String];

  v8 = strlen(v7);
  if (v8 <= 0x63)
  {
    v9 = v8;
    v10 = [v4 objectForKeyedSubscript:@"ErrorReason"];
    strncpy(&v21 + 8, [v10 UTF8String], v9);
  }

  __chkstk_darwin(v8);
  v13[4] = v25;
  *v14 = v26[0];
  *&v14[12] = *(v26 + 12);
  v13[0] = v21;
  v13[1] = v22;
  v13[2] = v23;
  v13[3] = v24;
  v11 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    if (v21 > 6uLL)
    {
      v12 = "?";
    }

    else
    {
      v12 = off_100B0A3C8[v21];
    }

    *buf = 136315650;
    v16 = v12;
    v17 = 2080;
    v18 = &v21 + 8;
    v19 = 1024;
    v20 = DWORD1(v21);
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending AirPods summary type %s errorReason %s errorCode %d", buf, 0x1Cu);
  }

  if (qword_100B508E0 != -1)
  {
    sub_10086645C();
  }

  sub_100518EC4(off_100B508D8, a3, 108, v13);
}

uint64_t sub_100705F18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 200);
  if (v4)
  {
    v5 = *(a3 + 192) / v4;
  }

  else
  {
    LODWORD(v5) = 0;
  }

  v6 = *(a3 + 164);
  v7 = *(a3 + 220);
  __chkstk_darwin(a1);
  v12 = 2;
  v13 = 0;
  v14 = 0;
  v15 = v5;
  v16 = v7;
  v17 = 0;
  v18 = v6;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = v8;
  v23 = 0;
  v24 = 0;
  v25 = v9;
  v26 = 0;
  v10 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v28 = "HFP";
    v29 = 1024;
    v30 = v5;
    v31 = 1024;
    v32 = v7;
    v33 = 2048;
    v34 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sending AirPods summary type %s avgRSSI %d avgRx %u duration %llus", buf, 0x22u);
  }

  if (qword_100B508E0 != -1)
  {
    sub_10086645C();
  }

  return sub_100518EC4(off_100B508D8, a2, 72, &v12);
}

void sub_1007060B8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"Result"];
  v6 = [v5 integerValue];

  if (qword_100B508F0 != -1)
  {
    sub_100866484();
  }

  v7 = sub_1000504C8(off_100B508E8, a2, 0);
  v8 = v7;
  if (v7)
  {
    __chkstk_darwin(v7);
    v11 = (v6 << 32) | 6;
    v9 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "Pairing";
      v14 = 1024;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending AirPods summary type %s errorCode %d", buf, 0x12u);
    }

    if (qword_100B508E0 != -1)
    {
      sub_10086645C();
    }

    sub_100518EC4(off_100B508D8, v8, 8, &v11);
  }

  else
  {
    v10 = qword_100BCE8D0;
    if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "Pairing";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sending AirPods summary type %s failed. Can't find bt device", buf, 0xCu);
    }
  }
}

void sub_1007062CC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [v4 objectForKeyedSubscript:@"Status"];
  v6 = [v5 integerValue];

  __chkstk_darwin(v7);
  v9 = (v6 << 32) | 4;
  v8 = qword_100BCE8D0;
  if (os_log_type_enabled(qword_100BCE8D0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "MagicPairing";
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending AirPods summary type %s errorCode %d", buf, 0x12u);
  }

  if (qword_100B508E0 != -1)
  {
    sub_10086645C();
  }

  sub_100518EC4(off_100B508D8, a3, 8, &v9);
}

uint64_t sub_10070651C(uint64_t a1)
{
  *a1 = off_100B0A410;
  *(a1 + 8) = &off_100B0A480;
  v21 = a1 + 16;
  *(a1 + 16) = off_100B0A498;
  v20 = a1 + 24;
  *(a1 + 24) = off_100B0A4C8;
  v19 = a1 + 32;
  *(a1 + 32) = off_100B0A4F8;
  *(a1 + 48) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = a1 + 80;
  v2 = (a1 + 72);
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  *(a1 + 120) = a1 + 128;
  v22 = (a1 + 120);
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 152) = 0;
  *(a1 + 248) = a1 + 256;
  *(a1 + 144) = a1 + 152;
  v3 = (a1 + 144);
  *(a1 + 176) = 0;
  *(a1 + 168) = a1 + 176;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 224) = 0;
  *(a1 + 216) = a1 + 224;
  *(a1 + 208) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 30;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *__p = xmmword_1008A4B48;
  v25 = 0;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf, buf);
  *__p = xmmword_1008A4B5C;
  v25 = 0;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf, buf);
  *__p = xmmword_1008A4D28;
  v25 = 0;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf, buf);
  *__p = xmmword_1008A4D50;
  v25 = 0;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf, buf);
  *__p = xmmword_1008A4D64;
  v25 = -805294830;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf, buf);
  *__p = xmmword_1008A4D78;
  v25 = -587704915;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf, buf);
  *__p = xmmword_1008A4D8C;
  v25 = -1765695659;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf, buf);
  *__p = xmmword_1008A4DC8;
  v25 = 0;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf, buf);
  *__p = xmmword_1008A4EA8;
  v25 = 1880579407;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf, buf);
  *__p = xmmword_1008A4DB4;
  v25 = -1171415960;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf, buf);
  *__p = xmmword_1008A4E40;
  v25 = 1729713604;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf, buf);
  *__p = xmmword_1008A4EE4;
  v25 = -815610143;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf, buf);
  *__p = xmmword_1008A4EF8;
  v25 = 1323364242;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf, buf);
  *__p = xmmword_1008A4F0C;
  v25 = 0;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf, buf);
  *__p = xmmword_1008A4F34;
  v25 = 0;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf, buf);
  *__p = xmmword_1008A4F5C;
  v25 = -1079296166;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf, buf);
  *__p = xmmword_1008A4E94;
  v25 = -2130188885;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf, buf);
  v31 = 0uLL;
  v32 = 0;
  *buf = xmmword_1008C5090;
  sub_10006A0FC(buf, 16, 0, &v31);
  *__p = v31;
  v25 = v32;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf, buf);
  *__p = xmmword_1008A4E18;
  v25 = 0;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v2, buf, buf);
  *__p = xmmword_1008A4E54;
  v25 = 2027922698;
  sub_10000D03C(buf, __p);
  sub_100051F7C(v22, buf, buf);
  *__p = xmmword_1008A4E04;
  v25 = 0;
  sub_10000D03C(buf, __p);
  __p[0] = buf;
  v4 = sub_1004F27E4(v3, buf, &unk_1008A9BD0, __p);
  v29 = xmmword_1008A4EBC;
  v30 = 295542594;
  sub_10000D03C(__p, &v29);
  sub_100051F7C((v4 + 56), __p, __p);
  *__p = xmmword_1008A4E04;
  v25 = 0;
  sub_10000D03C(buf, __p);
  __p[0] = buf;
  v5 = sub_1004F27E4(v3, buf, &unk_1008A9BD0, __p);
  v29 = xmmword_1008A4ED0;
  v30 = 312319810;
  sub_10000D03C(__p, &v29);
  sub_100051F7C((v5 + 56), __p, __p);
  LODWORD(v29) = 0;
  v6 = sub_10000E92C();
  sub_100007E30(buf, "LE");
  sub_100007E30(__p, "MaxUnpairedDatabasesCached");
  v7 = (*(*v6 + 88))(v6, buf, __p, &v29);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (v28 < 0)
  {
    operator delete(*buf);
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  else if (!v7)
  {
    goto LABEL_13;
  }

  v8 = v29;
  v9 = qword_100BCE910;
  if (v29 < 1)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100866498();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Warning: Using override value (%d) for max number of unpaired databases to be cached", buf, 8u);
      LOWORD(v8) = v29;
    }

    *(a1 + 240) = v8;
  }

LABEL_13:
  v23 = 0;
  v10 = sub_10000E92C();
  sub_100007E30(buf, "GATT");
  sub_100007E30(__p, "MTU");
  v11 = (*(*v10 + 88))(v10, buf, __p, &v23);
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (v28 < 0)
  {
    operator delete(*buf);
  }

  v12 = v23;
  if (v23)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v13 == 1)
  {
    v14 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Using Gatt MTU override of %d", buf, 8u);
      LOWORD(v12) = v23;
    }

    *(a1 + 242) = v12;
  }

  *(a1 + 244) = 0;
  v15 = sub_10000E92C();
  if ((*(*v15 + 8))(v15))
  {
    v16 = sub_10000E92C();
    sub_100007E30(buf, "GATT");
    sub_100007E30(__p, "StartInitSequenceOnConnectionComplete");
    if ((*(*v16 + 72))(v16, buf, __p, a1 + 244))
    {
      v17 = *(a1 + 244);
    }

    else
    {
      v17 = 0;
    }

    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    if (v28 < 0)
    {
      operator delete(*buf);
      if ((v17 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    else if ((v17 & 1) == 0)
    {
      goto LABEL_36;
    }

    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100866508();
    }
  }

LABEL_36:
  if (qword_100B50AA0 != -1)
  {
    sub_100866544();
  }

  sub_100312650(off_100B50A98 + 64, v21);
  if (qword_100B50F78 != -1)
  {
    sub_10086656C();
  }

  sub_100580E68(qword_100B50F70, a1);
  if (qword_100B508F0 != -1)
  {
    sub_100866594();
  }

  sub_1000F0D9C(off_100B508E8 + 240, v20);
  if (qword_100B508C0 != -1)
  {
    sub_1008665BC();
  }

  sub_1007BF384(off_100B508B8, v19);
  return a1;
}

uint64_t sub_100707120(uint64_t a1)
{
  *a1 = off_100B0A410;
  *(a1 + 8) = &off_100B0A480;
  v2 = a1 + 16;
  *(a1 + 16) = off_100B0A498;
  v3 = a1 + 24;
  *(a1 + 24) = off_100B0A4C8;
  v4 = a1 + 32;
  *(a1 + 32) = off_100B0A4F8;
  if (qword_100B50AA0 != -1)
  {
    sub_1008665E4();
  }

  sub_10007A3F0(off_100B50A98 + 64, v2);
  if (qword_100B50F78 != -1)
  {
    sub_1008665F8();
  }

  sub_100580EFC(qword_100B50F70, a1);
  if (qword_100B508F0 != -1)
  {
    sub_10086660C();
  }

  sub_10007A3F0(off_100B508E8 + 240, v3);
  if (qword_100B508C0 != -1)
  {
    sub_100866620();
  }

  sub_1007BF4C0(off_100B508B8, v4);
  sub_10007A490(a1 + 248, *(a1 + 256));
  sub_100712EBC(a1 + 216, *(a1 + 224));
  sub_100712E14(a1 + 192, *(a1 + 200));
  sub_10007A490(a1 + 168, *(a1 + 176));
  sub_1004F2678(a1 + 144, *(a1 + 152));
  sub_10000CEDC(a1 + 120, *(a1 + 128));
  sub_10000CEDC(a1 + 96, *(a1 + 104));
  sub_10000CEDC(a1 + 72, *(a1 + 80));
  v5 = *(a1 + 48);
  if (v5)
  {
    *(a1 + 56) = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_100707300(_Unwind_Exception *a1)
{
  sub_10007A490(v1 + 248, *(v1 + 256));
  sub_100712EBC(v1 + 216, *(v1 + 224));
  sub_100712E14(v1 + 192, *(v1 + 200));
  sub_10007A490(v1 + 168, *(v1 + 176));
  sub_1004F2678(v1 + 144, *(v1 + 152));
  sub_10000CEDC(v1 + 120, *(v1 + 128));
  sub_10000CEDC(v1 + 96, *(v1 + 104));
  sub_10000CEDC(v1 + 72, *(v1 + 80));
  v3 = *(v1 + 48);
  if (v3)
  {
    *(v1 + 56) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_100707380(uint64_t a1)
{
  sub_100707120(a1);

  operator delete();
}

_BYTE *sub_1007073B8(uint64_t a1)
{
  v3 = 0;
  sub_1000216B4(&v3);
  if (sub_1002D359C())
  {
    if (sub_1002D442C() && os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_100866634();
    }

    sub_1002B554C(sub_100707494, 0);
    sub_1002B5528(sub_100707700);
    if (*(a1 + 242))
    {
      sub_1002BA558(*(a1 + 242));
    }

    sub_100022214(&v3);
  }

  return sub_10002249C(&v3);
}

void sub_100707494(uint64_t a1, __int16 a2, const void *a3, unsigned int a4, char a5, uint64_t a6)
{
  v22 = 0;
  v23 = 0;
  sub_10000C704(&v22, a3, a4);
  v10 = sub_100364070();
  if (sub_1000ABD24(a1))
  {
    v11 = sub_100255A20(a1);
    if (v11)
    {
      v13 = (v11[1] << 40) | (v11[2] << 32) | (v11[3] << 24) | (v11[4] << 16) | (v11[5] << 8) | v11[6] | (*v11 << 48);
LABEL_8:
      v14 = sub_100007EE8(v11, v12);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3321888768;
      v15[2] = sub_1007115B8;
      v15[3] = &unk_100B0A668;
      v15[4] = a1;
      v15[5] = v13;
      v20 = a2;
      v16 = &off_100AE0A78;
      v17 = v23;
      if (v23)
      {
        sub_10000C69C(v23);
      }

      v21 = a5;
      v18 = a6;
      v19 = v10;
      sub_10000CA94(v14, v15);
      v16 = &off_100AE0A78;
      if (v17)
      {
        sub_10000C808(v17);
      }

      goto LABEL_14;
    }

    goto LABEL_7;
  }

  if (sub_1000B8B5C(a1))
  {
    v11 = sub_100255A78(a1);
    if (v11)
    {
      v13 = (*v11 << 40) | (v11[1] << 32) | (v11[2] << 24) | (v11[3] << 16) | (v11[4] << 8) | v11[5];
      goto LABEL_8;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
  {
    sub_1008666A4();
  }

LABEL_14:
  v22 = &off_100AE0A78;
  if (v23)
  {
    sub_10000C808(v23);
  }
}

void sub_1007076A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  *(v17 - 80) = &off_100AE0A78;
  v19 = *(v17 - 72);
  if (v19)
  {
    sub_10000C808(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_100707700(uint64_t a1, uint64_t a2)
{
  v2 = sub_100007EE8(a1, a2);

  sub_10000CA94(v2, &stru_100B0A648);
}

_BYTE *sub_100707738(uint64_t a1)
{
  v2 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "GattGateway::stackWillStop enter", buf, 2u);
  }

  v9 = 0;
  sub_1000216B4(&v9);
  if (sub_1002D359C())
  {
    sub_1002B5584(sub_100707494);
    sub_1002D43E8();
    v3 = sub_100022214(&v9);
    v5 = sub_100007EE8(v3, v4);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10070788C;
    v8[3] = &unk_100ADF8F8;
    v8[4] = a1;
    sub_10000D334(v5, v8);
    v6 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "GattGateway::stackWillStop exit", buf, 2u);
    }
  }

  return sub_10002249C(&v9);
}

void sub_10070788C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100712E14(v1 + 192, *(v1 + 200));
  *(v1 + 192) = v1 + 200;
  *(v1 + 200) = 0;
  v2 = *(v1 + 224);
  v1 += 224;
  *(v1 - 16) = 0;
  sub_100712EBC(v1 - 8, v2);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 - 8) = v1;
  sub_10007A490(v1 + 24, *(v1 + 32));
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 24) = v1 + 32;
}

void sub_1007078FC(uint64_t a1, unsigned __int8 *a2, int a3)
{
  v6 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO) && ((sub_1000E5A58(a2, __p), v21 >= 0) ? (v7 = __p) : (v7 = __p[0]), *buf = 136446466, v23 = v7, v24 = 1024, LODWORD(v25) = a3, _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "deviceInfoChanged device %{public}s infoChanged:%d", buf, 0x12u), v21 < 0))
  {
    operator delete(__p[0]);
    if (a2)
    {
      goto LABEL_7;
    }
  }

  else if (a2)
  {
LABEL_7:
    v8 = (a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133];
    v9 = qword_100BCE910;
    v10 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEBUG);
    if (v10)
    {
      sub_1000E5A58(a2, __p);
      v14 = v21;
      v15 = __p[0];
      v16 = sub_1007774DC(v8);
      v17 = v16;
      v18 = __p;
      if (v14 < 0)
      {
        v18 = v15;
      }

      *buf = 136446466;
      v23 = v18;
      v24 = 2114;
      v25 = v16;
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "deviceInfoChanged device %{public}s address %{public}@", buf, 0x16u);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (a3 == 4099)
    {
      v12 = sub_100007EE8(v10, v11);
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_100707B94;
      v19[3] = &unk_100AE0860;
      v19[4] = a1;
      v19[5] = v8;
      sub_10000CA94(v12, v19);
    }

    return;
  }

  v13 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_INFO))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "deviceInfoChanged invalid device", __p, 2u);
  }
}

void sub_100707B70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100707B94(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (qword_100B508D0 != -1)
  {
    sub_1008666E0();
  }

  *uu = 0;
  v17 = 0;
  sub_1000498D4(off_100B508C8, *(a1 + 40), 0, 1u, 0, 0, uu);
  if (!uuid_is_null(uu))
  {
    v3 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      memset(out, 0, 37);
      uuid_unparse_upper(uu, out);
      sub_100007E30(__p, out);
      v4 = v11;
      v5 = __p[0];
      v6 = sub_1007774DC(*(a1 + 40));
      v7 = v6;
      v8 = __p;
      if (v4 < 0)
      {
        v8 = v5;
      }

      *buf = 136446466;
      v13 = v8;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "deviceInfoChanged Clearing device DB for device %{public}s (%{public}@)", buf, 0x16u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9 = sub_10004DF60(uu);
    sub_100707D50(v2, v9);
  }
}

void sub_100707D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100707D50(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_10004DFB4(&v6, v3);
  v4 = sub_10004E34C(a1 + 216, &v6);
  if ((a1 + 224) != v4)
  {
    v5 = qword_100BCE910;
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clearing database cache for device %{public}@", &v6, 0xCu);
    }

    sub_100714C8C((a1 + 216), v4);
  }
}

void sub_100707E60(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  v6 = qword_100BCE910;
  v7 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    *buf = 138412546;
    v14 = v5;
    v15 = 1024;
    v16 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "GattGateway device %@ paired with result %d", buf, 0x12u);
  }

  if (!a3)
  {
    v9 = sub_100007EE8(v7, v8);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100707FC0;
    v10[3] = &unk_100AE1200;
    v12 = a1;
    v11 = v5;
    sub_10000CA94(v9, v10);
  }
}

void sub_100707FC0(uint64_t a1)
{
  v2 = *(a1 + 40);
  sub_10004DFB4(v3, *(a1 + 32));
  sub_100708044(v2, v3);
  sub_10004DFB4(v3, *(a1 + 32));
  sub_1007093E0(v2, v3);
}

void sub_100708044(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_10004DF60(a2);
  if (qword_100B508D0 != -1)
  {
    sub_1008666E0();
  }

  if (sub_10078DA3C(off_100B508C8, v4))
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEBUG))
    {
      sub_100866824();
    }

    goto LABEL_145;
  }

  v120 = 0;
  v121 = 0;
  v122 = 0;
  *buf = a2;
  v5 = sub_100713C3C((a1 + 248), a2, &unk_1008A9BD0, buf, v126);
  sub_1007134F4(&v120, (v5 + 6));
  v6 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Trying to detect built in services on device %@", buf, 0xCu);
  }

  v118 = 0;
  v119 = 0;
  sub_10004DFB4(buf, v4);
  sub_10070B42C(a1, buf, 0, &v118);
  v7 = v118;
  if (!v118)
  {
    if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
    {
      sub_1008667B4();
    }

    goto LABEL_142;
  }

  sub_1005B7638(v118, "");
  *v126 = xmmword_1008A4D28;
  *&v126[16] = 0;
  sub_10000D03C(buf, v126);
  sub_10003A364(v126);
  v8 = sub_1005B68E8(v7, buf, v126);
  if (_os_feature_enabled_impl())
  {
    *v126 = xmmword_1008A4D28;
    *&v126[16] = 0;
    sub_10000D03C(buf, v126);
    if (sub_10070BD80(a1, buf, v4))
    {
      v8 = 0;
    }
  }

  *v126 = xmmword_1008A4E40;
  *&v126[16] = 1729713604;
  sub_10000D03C(buf, v126);
  sub_10003A364(v126);
  v9 = sub_1005B68E8(v7, buf, v126);
  *v126 = xmmword_1008A4E54;
  *&v126[16] = 2027922698;
  sub_10000D03C(buf, v126);
  sub_10003A364(v126);
  v98 = sub_1005B68E8(v7, buf, v126);
  *v126 = xmmword_1008A4D14;
  *&v126[16] = 0;
  sub_10000D03C(buf, v126);
  sub_10003A364(v126);
  v95 = sub_1005B68E8(v7, buf, v126);
  *v126 = xmmword_1008A4D3C;
  *&v126[16] = 0;
  sub_10000D03C(buf, v126);
  sub_10003A364(v126);
  v94 = sub_1005B68E8(v7, buf, v126);
  *v126 = xmmword_1008A4E94;
  *&v126[16] = -2130188885;
  sub_10000D03C(buf, v126);
  sub_10003A364(v126);
  v97 = sub_1005B68E8(v7, buf, v126);
  *v126 = xmmword_1008A4E2C;
  *&v126[16] = 0;
  sub_10000D03C(buf, v126);
  sub_10003A364(v126);
  v96 = sub_1005B68E8(v7, buf, v126);
  *v126 = xmmword_1008A4D00;
  *&v126[16] = 0;
  sub_10000D03C(buf, v126);
  sub_10003A364(v126);
  v99 = sub_1005B68E8(v7, buf, v126);
  sub_10004DFB4(buf, v4);
  v10 = sub_10070EB84(a1, buf);
  v11 = qword_100BCE910;
  if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "disabled";
    if (v10)
    {
      v12 = "enabled";
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "LE Audio is %s.", buf, 0xCu);
  }

  if (!_os_feature_enabled_impl())
  {
    goto LABEL_28;
  }

  if (qword_100B508D0 != -1)
  {
    sub_1008666F4();
  }

  v13 = off_100B508C8;
  v14 = sub_10004DF60(a2);
  v15 = sub_100046458(v13, v14, 0);

  if (qword_100B508F0 != -1)
  {
    sub_100866594();
  }

  v16 = sub_1000504C8(off_100B508E8, v15, 0);
  if (v16)
  {
    v93 = v16;
    if (sub_1005399A0(v16))
    {
      if (qword_100B508D0 != -1)
      {
        sub_1008666F4();
      }

      v17 = off_100B508C8;
      sub_100007E30(__p, "_CATT_");
      sub_10078787C(v17, v4, __p);
      if (v117 < 0)
      {
        operator delete(__p[0]);
      }

      v92 = 0;
      goto LABEL_30;
    }
  }

  else
  {
LABEL_28:
    v93 = 0;
  }

  v92 = 1;
LABEL_30:
  if (sub_10070E714(a1, &xmmword_1008A4D28, a2))
  {
    if (v8)
    {
      v18 = *(v8 + 8);
      v19 = *(v18 + 20);
      *buf = *(v18 + 4);
      v124 = v19;
      sub_10000D03C(v126, buf);
      *buf = xmmword_1008C50C4;
      v124 = 0;
      if (sub_10004E15C(v20, buf))
      {
        v21 = qword_100BCE910;
        v22 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT);
        if (v22)
        {
          *buf = 138412290;
          *&buf[4] = v4;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "The device %@ supports HID", buf, 0xCu);
        }

        v24 = sub_100432610(v22, v23);
        (*(*v24 + 24))(v24, v4);
        if (qword_100B508D0 != -1)
        {
          sub_1008666F4();
        }

        sub_10078DE78(off_100B508C8, v4);
        if (qword_100B508D0 != -1)
        {
          sub_1008666F4();
        }

        sub_100785F60(off_100B508C8, v4, 0);
        if (qword_100B508D0 != -1)
        {
          sub_1008666F4();
        }

        v25 = off_100B508C8;
        sub_100007E30(v114, "_HID_DEVICE_");
        sub_10078787C(v25, v4, v114);
        if (v115 < 0)
        {
          operator delete(v114[0]);
        }

        if (qword_100B508B0 != -1)
        {
          sub_10086671C();
        }

        sub_100747A10(off_100B508A8, v4, 1);
        sub_10070E940(a1, &xmmword_1008A4D28, a2);
        *v126 = 0;
        if (qword_100B508B0 != -1)
        {
          sub_10086671C();
        }

        v26 = off_100B508A8;
        sub_10004DFB4(buf, v4);
        if (sub_1000C4FCC(v26, buf, v126))
        {
          buf[0] = 0;
          sub_1000216B4(buf);
          v27 = sub_100255698(*v126);
          if ((sub_1001C4E34(v27 & 0xFFF, **(v8 + 8), *(v8 + 48)) & 1) == 0)
          {
            v28 = qword_100BCE910;
            if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_ERROR))
            {
              v29 = sub_10004DF60(a2);
              sub_100866744(v29, v129, v28);
            }
          }

          sub_10002249C(buf);
        }
      }
    }
  }

  if (sub_10070E714(a1, &xmmword_1008A4E40, a2))
  {
    if (v9)
    {
      v30 = *(v9 + 8);
      v31 = *(v30 + 20);
      *buf = *(v30 + 4);
      v124 = v31;
      sub_10000D03C(v126, buf);
      *buf = xmmword_1008C50C4;
      v124 = 0;
      if (sub_10004E15C(v32, buf))
      {
        v33 = qword_100BCE910;
        v34 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT);
        if (v34)
        {
          *buf = 138412290;
          *&buf[4] = v4;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "The device %@ supports DOAP", buf, 0xCu);
        }

        v36 = sub_100432610(v34, v35);
        (*(*v36 + 56))(v36, v4);
        sub_10070E940(a1, &xmmword_1008A4E40, a2);
      }
    }
  }

  if (sub_10070E714(a1, &xmmword_1008A4E54, a2))
  {
    if (v98)
    {
      v37 = *(v98 + 8);
      v38 = *(v37 + 20);
      *buf = *(v37 + 4);
      v124 = v38;
      sub_10000D03C(v126, buf);
      *buf = xmmword_1008C50C4;
      v124 = 0;
      if (sub_10004E15C(v39, buf))
      {
        *buf = xmmword_1008A4E54;
        v124 = 2027922698;
        sub_10000D03C(&v127, buf);
        v40 = a1 + 128 != sub_10007C324(a1 + 120, &v127);
        if (sub_10070C2D0(v4, v40))
        {
          v41 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v4;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "The device %@ supports UARP", buf, 0xCu);
          }

          if (qword_100B508D0 != -1)
          {
            sub_1008666F4();
          }

          v42 = off_100B508C8;
          sub_100007E30(v112, "_UARP_");
          v43 = sub_10078787C(v42, v4, v112);
          if (v113 < 0)
          {
            operator delete(v112[0]);
          }

          v45 = sub_100432610(v43, v44);
          (*(*v45 + 64))(v45, v4);
          sub_10070E940(a1, &xmmword_1008A4E54, a2);
        }
      }
    }
  }

  if (((v10 | !sub_10070E714(a1, &xmmword_1008A4E94, a2)) & 1) == 0)
  {
    if (v97)
    {
      v46 = *(v97 + 8);
      v47 = *(v46 + 20);
      *buf = *(v46 + 4);
      v124 = v47;
      sub_10000D03C(v126, buf);
      *buf = xmmword_1008C50C4;
      v124 = 0;
      if (sub_10004E15C(v48, buf))
      {
        v49 = qword_100BCE910;
        if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v4;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "The device %@ supports MFi", buf, 0xCu);
        }

        if (qword_100B508D0 != -1)
        {
          sub_1008666F4();
        }

        v50 = off_100B508C8;
        sub_100007E30(v110, "needsMFiAuthentication4.0");
        sub_10078787C(v50, v4, v110);
        if (v111 < 0)
        {
          operator delete(v110[0]);
        }

        if (qword_100B508D0 != -1)
        {
          sub_1008666F4();
        }

        v51 = off_100B508C8;
        sub_100007E30(v108, "MFi-Generic");
        v52 = sub_10078787C(v51, v4, v108);
        if (v109 < 0)
        {
          operator delete(v108[0]);
        }

        v54 = sub_100432610(v52, v53);
        (*(*v54 + 80))(v54, v4);
        sub_10070E940(a1, &xmmword_1008A4E94, a2);
      }
    }
  }

  if (_os_feature_enabled_impl())
  {
    if (sub_10070E714(a1, &xmmword_1008A4D14, a2))
    {
      if (v95)
      {
        v55 = *(v95 + 8);
        v56 = *(v55 + 20);
        *buf = *(v55 + 4);
        v124 = v56;
        sub_10000D03C(v126, buf);
        *buf = xmmword_1008C50C4;
        v124 = 0;
        if (sub_10004E15C(v57, buf))
        {
          v58 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v4;
            _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "The device %@ supports CATT Battery Service", buf, 0xCu);
          }

          v59 = v92;
          if (!v93)
          {
            v59 = 1;
          }

          if ((v59 & 1) == 0)
          {
            v60 = sub_100540800(v93, 1);
            v62 = sub_100432610(v60, v61);
            (*(*v62 + 48))(v62, v4);
            sub_10070E940(a1, &xmmword_1008A4D14, a2);
          }
        }
      }
    }
  }

  if (_os_feature_enabled_impl())
  {
    if (sub_10070E714(a1, &xmmword_1008A4D3C, a2))
    {
      if (v94)
      {
        v63 = *(v94 + 8);
        v64 = *(v63 + 20);
        *buf = *(v63 + 4);
        v124 = v64;
        sub_10000D03C(v126, buf);
        *buf = xmmword_1008C50C4;
        v124 = 0;
        if (sub_10004E15C(v65, buf))
        {
          v66 = qword_100BCE910;
          v67 = os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT);
          if (v67)
          {
            *buf = 138412290;
            *&buf[4] = v4;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "The device %@ supports GHS", buf, 0xCu);
          }

          v69 = sub_100432610(v67, v68);
          (*(*v69 + 24))(v69, v4);
          if (qword_100B508D0 != -1)
          {
            sub_1008666F4();
          }

          v70 = off_100B508C8;
          sub_100007E30(v106, "_GHS_DEVICE_");
          sub_10078787C(v70, v4, v106);
          if (v107 < 0)
          {
            operator delete(v106[0]);
          }

          sub_10070E940(a1, &xmmword_1008A4D3C, a2);
          if (qword_100B508D0 != -1)
          {
            sub_1008666F4();
          }

          sub_100785F60(off_100B508C8, v4, 0);
        }
      }
    }
  }

  if (sub_10070E714(a1, &xmmword_1008A4E2C, a2))
  {
    if (v96)
    {
      v71 = *(v96 + 8);
      v72 = *(v71 + 20);
      *buf = *(v71 + 4);
      v124 = v72;
      sub_10000D03C(v126, buf);
      *buf = xmmword_1008C50C4;
      v124 = 0;
      if (sub_10004E15C(v73, buf))
      {
        v74 = sub_10004DF60(a2);
        if (qword_100B508D0 != -1)
        {
          sub_1008666F4();
        }

        if (sub_100788D8C(off_100B508C8, v74) == 21)
        {
          v75 = qword_100BCE910;
          if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v74;
            _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "The device %{public}@ supports CCC, disabling autopairing now", buf, 0xCu);
          }

          *v126 = 0;
          if (qword_100B508B0 != -1)
          {
            sub_10086671C();
          }

          v76 = off_100B508A8;
          sub_10004DFB4(buf, v74);
          if (sub_1000C4FCC(v76, buf, v126))
          {
            buf[0] = 0;
            sub_1000216B4(buf);
            sub_1002D69D8(*v126, 0);
            sub_10002249C(buf);
          }
        }
      }
    }
  }

  if (sub_10070E714(a1, &xmmword_1008A4D00, a2))
  {
    if (v99)
    {
      v77 = *(v99 + 8);
      v78 = *(v77 + 20);
      *buf = *(v77 + 4);
      v124 = v78;
      sub_10000D03C(v126, buf);
      *buf = xmmword_1008C50C4;
      v124 = 0;
      if (sub_10004E15C(v79, buf))
      {
        if (qword_100B508D0 != -1)
        {
          sub_1008666F4();
        }

        v80 = sub_100046458(off_100B508C8, v4, 0);
        v82 = v80;
        if ((v80 & 0xFFFFFFFFFFFFLL) != 0)
        {
          v83 = sub_100017F4C(v80, v81);
          v100[0] = _NSConcreteStackBlock;
          v100[1] = 3221225472;
          v100[2] = sub_10070F3C0;
          v100[3] = &unk_100B04A18;
          v102 = a1;
          v103 = v82;
          v101 = v4;
          v104 = a2;
          v105 = v99;
          sub_10000CA94(v83, v100);
        }
      }
    }
  }

  *buf = a2;
  v84 = sub_100713C3C((a1 + 248), a2, &unk_1008A9BD0, buf, v126);
  v85 = v84[6];
  v86 = v84 + 7;
  if (v85 != v84 + 7)
  {
    do
    {
      v127 = *(v85 + 28);
      v128 = *(v85 + 11);
      v87 = qword_100BCE910;
      if (os_log_type_enabled(qword_100BCE910, OS_LOG_TYPE_DEFAULT))
      {
        sub_10003B85C(&v127, buf);
        v88 = v125 >= 0 ? buf : *buf;
        *v126 = 136315394;
        *&v126[4] = v88;
        *&v126[12] = 2112;
        *&v126[14] = v4;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Detected service %s on device %@ and notified", v126, 0x16u);
        if (v125 < 0)
        {
          operator delete(*buf);
        }
      }

      v89 = v85[1];
      if (v89)
      {
        do
        {
          v90 = v89;
          v89 = *v89;
        }

        while (v89);
      }

      else
      {
        do
        {
          v90 = v85[2];
          v91 = *v90 == v85;
          v85 = v90;
        }

        while (!v91);
      }

      v85 = v90;
    }

    while (v90 != v86);
  }

LABEL_142:
  if (v119)
  {
    sub_100117644(v119);
  }

  sub_10000CEDC(&v120, v121);
LABEL_145:
}