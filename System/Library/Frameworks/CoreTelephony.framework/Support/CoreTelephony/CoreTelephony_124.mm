void sub_10081FFC8(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  std::mutex::unlock(v1 + 5);
  _Unwind_Resume(a1);
}

void sub_10081FFE8(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  if (sub_100820170(a1))
  {
    if (*a4)
    {
      v10 = *(*a4 + 152);
      if ((v10 & a2) != 0)
      {
        v12 = a1 + 384;
        v11 = *(a1 + 384);
        v13 = *(v12 + 8) - v11;
        if (v13)
        {
          v14 = v13 >> 4;
          if (v14 <= 1)
          {
            v14 = 1;
          }

          do
          {
            if ((*(*v11 + 228) & a3) != 0 && (*(*v11 + 152) & v10) != 0)
            {
              sub_1002AEE08();
            }

            v11 += 16;
            --v14;
          }

          while (v14);
        }
      }
    }
  }

  *a5 = 0;
  a5[1] = 0;
}

void sub_100820158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100820170(uint64_t a1)
{
  cf = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
  v3 = ServiceMap;
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  v18 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v18);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  v12 = sub_1002A4990(a1);
  (*(*v10 + 80))(&cf, v10, v12, 1, @"SupportsSIMAPN", kCFBooleanFalse, 0);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  v13 = cf;
  LOBYTE(v18) = 0;
  if (cf)
  {
    v14 = CFGetTypeID(cf);
    if (v14 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v18, v13, v15);
      LOBYTE(v13) = v18;
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  sub_10000A1EC(&cf);
  return v13 & 1;
}

void sub_100820318(std::mutex *a1@<X0>, const void **a2@<X8>)
{
  std::mutex::lock(a1 + 5);
  sub_100820378(a1, a2);

  std::mutex::unlock(a1 + 5);
}

void sub_100820378(uint64_t a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  if ((sub_100820170(a1) & 1) == 0)
  {
    return;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 64));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  v19 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v19);
  if (!v10)
  {
    v12 = 0;
    goto LABEL_9;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
LABEL_9:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
LABEL_10:
  v19 = 0;
  v20 = 0;
  sub_1002A4990(a1);
  sub_1004196C0(v12, &v19);
  if (v19)
  {
    (*(*v19 + 72))(v18);
    v15 = v18[0];
    v14 = v18[1];
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  v19 = 0;
  v20 = 0;
  v17[0] = v15;
  v17[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10081FFE8(a1, 1, 32, v17, &v19);
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v19)
  {
    sub_10029FEBC(v19, 0, &v16);
    if (&v16 != a2)
    {
      v18[0] = *a2;
      *a2 = v16;
      v16 = 0;
      sub_10001021C(v18);
    }

    sub_10001021C(&v16);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }
}

void sub_100820578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  sub_10001021C(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_1008205F4(uint64_t a1)
{
  if (!sub_100820170(a1))
  {
    return 0;
  }

  std::mutex::lock((a1 + 320));
  v2 = (*(a1 + 392) - *(a1 + 384)) >> 4;
  std::mutex::unlock((a1 + 320));
  return v2;
}

BOOL sub_100820644(uint64_t a1)
{
  if (!sub_100820170(a1))
  {
    return 0;
  }

  std::mutex::lock((a1 + 320));
  v2 = *(a1 + 384);
  v3 = *(a1 + 392) - v2;
  if (v3)
  {
    v4 = v3 >> 4;
    if (v4 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v4;
    }

    if ((*(*v2 + 152) & 0x10) != 0)
    {
      v10 = 1;
    }

    else
    {
      v6 = v2 + 2;
      v7 = 1;
      do
      {
        v8 = v7;
        if (v5 == v7)
        {
          break;
        }

        v9 = *v6;
        v6 += 2;
        ++v7;
      }

      while ((*(v9 + 152) & 0x10) == 0);
      v10 = v8 < v4;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock((a1 + 320));
  return v10;
}

void sub_1008206E8(uint64_t a1, const std::string *a2)
{
  v4 = SlotIdFromPersonalityId();
  v5 = sub_1002A4990(a1);
  v6 = *(a1 + 56);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4 == v5)
  {
    if (v7)
    {
      asString();
      v8 = v12 >= 0 ? __p : __p[0];
      *buf = 136315138;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Received personality event: %s", buf, 0xCu);
      if (SHIBYTE(v12) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9 = a2[1].__r_.__value_.__s.__data_[0];
    if ((v9 - 6) < 2)
    {
      __p[0] = 0;
      __p[1] = 0;
      v12 = 0;
      sub_1008208F8(a1, 0, __p);
    }

    else
    {
      if (a2[1].__r_.__value_.__s.__data_[0])
      {
        if (v9 != 5)
        {
          sub_10081FE4C(a1);
        }
      }

      else
      {
        std::string::operator=((a1 + 296), a2);
      }

      sub_100820E88(a1, __p);
      sub_1008208F8(a1, 0, __p);
    }

    *buf = __p;
    sub_1000212F4(buf);
  }

  else if (v7)
  {
    asString();
    v10 = v12 >= 0 ? __p : __p[0];
    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Ignore personality event: %s", buf, 0xCu);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1008208D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000212F4(va);
  _Unwind_Resume(a1);
}

void sub_1008208F8(uint64_t a1, int a2, uint64_t **a3)
{
  std::mutex::lock((a1 + 320));
  v6 = a3[1];
  v7 = v6 - *a3;
  v8 = (a1 + 384);
  if (v7 == *(a1 + 392) - *(a1 + 384))
  {
    if (v6 == *a3)
    {
      v15 = 0;
    }

    else
    {
      v9 = 0;
      v10 = v7 >> 4;
      if (v10 <= 1)
      {
        v10 = 1;
      }

      v11 = v10 - 1;
      do
      {
        v12 = sub_1002A44B4(*(*v8 + v9 * 8), (*a3)[v9]);
        v14 = v11-- != 0;
        v9 += 2;
      }

      while ((v12 & v14 & 1) != 0);
      v15 = v12 ^ 1;
    }
  }

  else
  {
    v15 = 1;
  }

  v16 = (a1 + 56);
  v17 = *(a1 + 56);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *a3;
    v18 = a3[1];
    v20 = CSIBOOLAsString(a2);
    v21 = "same";
    *buf = 134218498;
    *&buf[4] = (v18 - v19) >> 4;
    v49 = 2080;
    if (v15)
    {
      v21 = "updated";
    }

    v50 = v21;
    v51 = 2080;
    v52 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#N Handle %zu %s APNs. FromSim: %s", buf, 0x20u);
  }

  if (!v15)
  {
    std::mutex::unlock((a1 + 320));
    return;
  }

  v47 = 0;
  sub_100820378(a1, &v47);
  if (v8 != a3)
  {
    sub_100822424((a1 + 384), *a3, a3[1], (a3[1] - *a3) >> 4);
  }

  v46 = 0;
  sub_100820378(a1, &v46);
  std::mutex::unlock((a1 + 320));
  if (a2)
  {
    sub_100821C30(a1, a3);
  }

  v22 = *v16;
  if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
  {
    v23 = (a3[1] - *a3) >> 4;
    *buf = 134217984;
    *&buf[4] = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Using %zu APNs from SIM ==>>", buf, 0xCu);
  }

  v24 = a3[1] - *a3;
  if (v24)
  {
    v25 = 0;
    v26 = v24 >> 4;
    if (v26 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v26;
    }

    do
    {
      sub_1002A3288((*a3)[v25], (a1 + 56), "");
      v25 += 2;
      --v27;
    }

    while (v27);
  }

  v28 = *v16;
  if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I <<== APN(s)", buf, 2u);
  }

  if ((sub_100820170(a1) & 1) == 0)
  {
    v39 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I SIM APNs is not supported. Ignore SIM APNs change", buf, 2u);
    }

    goto LABEL_58;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 64));
  v30 = ServiceMap;
  if (v31 < 0)
  {
    v32 = (v31 & 0x7FFFFFFFFFFFFFFFLL);
    v33 = 5381;
    do
    {
      v31 = v33;
      v34 = *v32++;
      v33 = (33 * v33) ^ v34;
    }

    while (v34);
  }

  std::mutex::lock(ServiceMap);
  *buf = v31;
  v35 = sub_100009510(&v30[1].__m_.__sig, buf);
  if (v35)
  {
    v37 = v35[3];
    v36 = v35[4];
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v30);
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v36);
      v38 = 0;
      if (!v37)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }
  }

  else
  {
    v37 = 0;
  }

  std::mutex::unlock(v30);
  v36 = 0;
  v38 = 1;
  if (v37)
  {
LABEL_44:
    v40 = sub_1002A4990(a1);
    (*(*v37 + 664))(v37, v40, 20, 0xFFFFFFFFLL, 0);
  }

LABEL_45:
  if ((v38 & 1) == 0)
  {
    sub_100004A34(v36);
  }

  if ((v47 != 0) == (v46 == 0) || v46 && !CFEqual(v46, v47))
  {
    v41 = *v16;
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
    if (v42)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I Resetting the baseband and refreshing AttachAPN", buf, 2u);
    }

    if ((capabilities::ct::supportsCompleteCleanupOnFilePushFailure(v42) & 1) == 0)
    {
      sub_10000501C(&__p, "SIM APNs change");
      rest::ResetPayload::ResetPayload();
      sub_100108D68(a1 + 80, buf);
      if (SHIBYTE(v51) < 0)
      {
        operator delete(*buf);
      }

      if (v45 < 0)
      {
        operator delete(__p);
      }
    }

    v43 = sub_1002A4990(a1);
    sub_1002A945C(event::data::refreshAttachApn, v43, "sim-apn");
  }

LABEL_58:
  sub_10001021C(&v46);
  sub_10001021C(&v47);
}

void sub_100820DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  sub_10001021C(&a16);
  sub_10001021C(&a17);
  _Unwind_Resume(a1);
}

void sub_100820E88(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 64);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  ServiceMap = Registry::getServiceMap(v4);
  v6 = ServiceMap;
  if (v7 < 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  *buf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, buf);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      if (!v13)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
  if (!v13)
  {
LABEL_7:
    v15 = *(a1 + 56);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#E Personal wallet not found. Unable to restore SIM APNs", buf, 2u);
      if (v14)
      {
        return;
      }

      goto LABEL_42;
    }

LABEL_41:
    if (v14)
    {
      return;
    }

    goto LABEL_42;
  }

LABEL_12:
  memset(buf, 0, sizeof(buf));
  v32 = 0;
  v16 = *(a1 + 319);
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a1 + 304);
  }

  if (v16)
  {
    v18 = (a1 + 296);
    if (v17 < 0)
    {
      sub_100005F2C(buf, *v18, *(a1 + 304));
    }

    else
    {
      *buf = *v18;
      v32 = *(a1 + 312);
    }
  }

  else
  {
    sub_1002A4990(a1);
    PersonalityIdFromSlotId();
  }

  theArray = 0;
  (*(*v13 + 24))(&cf, v13, buf, @"apns", @"SimApns", 0, 2);
  v34 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v33 = 0;
  *v35 = 0;
  sub_10006DD00(v35, &v34);
  if (*v35)
  {
    sub_1002F5980(&v33, v35);
  }

  sub_100010250(v35);
  theArray = v33;
  v33 = 0;
  sub_100010250(&v33);
  sub_10000A1EC(&v34);
  sub_10000A1EC(&cf);
  if (!theArray)
  {
    v28 = *(a1 + 56);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_40;
    }

    *v35 = 0;
    v25 = "#I Sim apns not found in Personal wallet";
LABEL_38:
    v26 = v28;
    v27 = 2;
    goto LABEL_39;
  }

  Count = CFArrayGetCount(theArray);
  v20 = Count;
  if (!Count)
  {
    v28 = *(a1 + 56);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_40;
    }

    *v35 = 0;
    v25 = "#I No Sim apns in Personal wallet";
    goto LABEL_38;
  }

  if (Count >= 1)
  {
    v21 = 0;
    do
    {
      v34 = 0;
      *v35 = CFArrayGetValueAtIndex(theArray, v21);
      sub_100010180(&v34, v35);
      if (v34)
      {
        *v35 = 0uLL;
        sub_1002A4990(a1);
        sub_1002A938C(v35);
      }

      v22 = *(a1 + 56);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v35 = 134217984;
        *&v35[4] = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#E Invalid Sim apn at index %zu", v35, 0xCu);
      }

      sub_10001021C(&v34);
      ++v21;
    }

    while (v20 != v21);
  }

  v23 = *(a1 + 56);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = (a2[1] - *a2) >> 4;
    *v35 = 134217984;
    *&v35[4] = v24;
    v25 = "#I Successfully restored %zu Sim apns from Personal wallet";
    v26 = v23;
    v27 = 12;
LABEL_39:
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v25, v35, v27);
  }

LABEL_40:
  sub_100010250(&theArray);
  if ((SHIBYTE(v32) & 0x80000000) == 0)
  {
    goto LABEL_41;
  }

  operator delete(*buf);
  if (v14)
  {
    return;
  }

LABEL_42:
  sub_100004A34(v12);
}

void sub_1008212F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27)
{
  sub_100010250(&a13);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if ((v28 & 1) == 0)
  {
    sub_100004A34(v27);
  }

  sub_1000212F4(&__p);
  _Unwind_Resume(a1);
}

void sub_1008213A0(uint64_t a1, char **a2)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = v3 - *a2;
  memset(v27, 0, sizeof(v27));
  v26 = 0;
  v25[0] = a1;
  v25[1] = v27;
  v25[2] = &v26;
  memset(&v24, 0, sizeof(v24));
  memset(&v23, 0, sizeof(v23));
  memset(&v22, 0, sizeof(v22));
  memset(&v21, 0, sizeof(v21));
  __p[0] = 0;
  __p[1] = 0;
  v20 = 0;
  if (v5 < 3)
  {
    goto LABEL_41;
  }

  v6 = 0;
  v18 = 0;
  v7 = 0;
  v8 = 0;
  v9 = v4;
  while (1)
  {
    if (!v4)
    {
      v12 = 2;
      goto LABEL_35;
    }

    v10 = *v4;
    v11 = v4[1];
    v12 = v11 + 2;
    if (*v4 <= -121 && v12 > v5)
    {
      break;
    }

    if (*v4 > 0x83u)
    {
      if (*v4 > 0x86u)
      {
        if (v10 == 135)
        {
          v7 = v4[2];
        }

        else if (v10 == 255)
        {
          if (v8)
          {
            sub_100821744(v25, &v23, v6, &v22, &v21, __p, v18, &v24, v7);
          }

          v15 = memchr(v9, -125, v3 - v9);
          v16 = v15 - v9;
          if (v15 == v3)
          {
            v16 = v3 - v9;
          }

          if (v15)
          {
            v12 = v16;
          }

          else
          {
            v12 = v3 - v9;
          }

          v8 = 0;
        }

        goto LABEL_35;
      }

      if (v10 != 132)
      {
        if (v10 == 134)
        {
          v18 = v4[2];
        }

        goto LABEL_35;
      }

      v14 = __p;
      goto LABEL_33;
    }

    if (*v4 > 0x81u)
    {
      if (v10 == 130)
      {
        v14 = &v21;
        goto LABEL_33;
      }

      v6 = v4[2];
      std::string::append(&v24, v4 + 4, v4[3] >> 3);
      v8 = 1;
    }

    else
    {
      if (v10 == 128)
      {
        v14 = &v23;
        goto LABEL_33;
      }

      if (v10 == 129)
      {
        v14 = &v22;
LABEL_33:
        std::string::append(v14, v4 + 2, v11);
      }
    }

LABEL_35:
    v9 += v12;
    v5 -= v12;
    v4 += v12;
    if (v5 <= 2)
    {
      goto LABEL_39;
    }
  }

  v17 = *(a1 + 56);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109632;
    *&buf[4] = v10;
    v29 = 2048;
    v30 = v12;
    v31 = 2048;
    v32 = v5;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#E SIM APN contains malformed TLV (0x%X). Expect length: %zu, remaining length: %zu", buf, 0x1Cu);
  }

LABEL_39:
  if (v8)
  {
    sub_100821744(v25, &v23, v6, &v22, &v21, __p, v18, &v24, v7);
  }

LABEL_41:
  sub_1008208F8(a1, 1, v27);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  *buf = v27;
  sub_1000212F4(buf);
}

void sub_1008216D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  *(v45 - 144) = &a45;
  sub_1000212F4((v45 - 144));
  _Unwind_Resume(a1);
}

void sub_100821744(uint64_t *a1, const std::string *a2, int a3, const std::string *a4, const std::string *a5, uint64_t a6, unsigned int a7, uint64_t a8, unsigned __int8 a9)
{
  v10 = *a1;
  v11 = 0;
  v12 = 0;
  sub_1002A4990(v10);
  ++*a1[2];
  sub_100822190();
}

void sub_100821BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  v13 = (v11 + 87);
  v14 = -96;
  v15 = (v11 + 87);
  while (1)
  {
    v16 = *v15;
    v15 -= 32;
    if (v16 < 0)
    {
      operator delete(*(v13 - 23));
    }

    v13 = v15;
    v14 += 32;
    if (!v14)
    {
      __cxa_guard_abort(&qword_101FBAC98);
      if (a11)
      {
        sub_100004A34(a11);
      }

      _Unwind_Resume(a1);
    }
  }
}

void sub_100821C30(uint64_t a1, uint64_t **a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  value[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, value);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      if (!v12)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (!v12)
  {
LABEL_7:
    v14 = *(a1 + 56);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(value[0]) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#E Personal wallet not found. Unable to save SIM APNs", value, 2u);
    }

    goto LABEL_22;
  }

LABEL_11:
  theArray = 0;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    theArray = Mutable;
    value[0] = 0;
    sub_1000279DC(value);
  }

  v16 = *a2;
  v17 = a2[1];
  while (v16 != v17)
  {
    value[0] = 0;
    sub_10029FEBC(*v16, 1, value);
    CFArrayAppendValue(theArray, value[0]);
    sub_10001021C(value);
    v16 += 2;
  }

  value[0] = 0;
  value[1] = 0;
  v22 = 0;
  sub_1002A4990(a1);
  PersonalityIdFromSlotId();
  v18 = (*(*v12 + 16))(v12, value, @"apns", theArray, @"SimApns", 0, 2, 0);
  if (v18)
  {
    v19 = *(a1 + 56);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = (a2[1] - *a2) >> 4;
      *buf = 134218240;
      v25 = v20;
      v26 = 1024;
      v27 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#E Failed to save %zu Sim apns to Personal wallet. Error: %d", buf, 0x12u);
    }
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(value[0]);
  }

  sub_1000279DC(&theArray);
LABEL_22:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_100821EE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000279DC(&a15);
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(a1);
}

void sub_100821F48(uint64_t a1)
{
  std::mutex::lock((a1 + 320));
  v2 = (a1 + 56);
  v3 = *(a1 + 56);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I DATA:: SIM_APN_Storage:", buf, 2u);
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = sub_100820170(a1);
    v5 = CSIBOOLAsString(v4);
    *buf = 136315138;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I DATA:: \tsupportsSimApns: %s", buf, 0xCu);
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (*(a1 + 392) - *(a1 + 384)) >> 4;
    *buf = 134217984;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t%zu APN(s) found", buf, 0xCu);
  }

  v7 = *(a1 + 384);
  if (*(a1 + 392) != v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v12 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t APNx%zu:", buf, 0xCu);
        v7 = *(a1 + 384);
      }

      sub_1002A24E4(*(v7 + v8), (a1 + 56));
      ++v9;
      v7 = *(a1 + 384);
      v8 += 16;
    }

    while (v9 < (*(a1 + 392) - v7) >> 4);
  }

  std::mutex::unlock((a1 + 320));
}

void sub_100822158(uint64_t a1)
{
  sub_100822564(a1);

  operator delete();
}

uint64_t **sub_10082225C(uint64_t **a1, char *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = (a1 + 1);
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_1008222DC(a1, v4, a2, a2);
      a2 += 32;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

void *sub_1008222DC(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  result = *sub_100074A00(a1, a2, &v6, &v5, a3);
  if (!result)
  {
    sub_10082236C();
  }

  return result;
}

void sub_100822408(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100822424(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    sub_1000FA138(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_10009A404(a1, v11);
    }

    sub_1000CE3D4();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    sub_1000FA3BC(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          sub_100004A34(v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    sub_1000FA3BC(&v17, a2, (a2 + v12), v8);
    a1[1] = sub_10009A4C8(a1, (a2 + v12), a3, a1[1]);
  }
}

void *sub_100822564(uint64_t a1)
{
  *a1 = off_101E86E30;
  v5 = (a1 + 384);
  sub_1000212F4(&v5);
  std::mutex::~mutex((a1 + 320));
  if (*(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  PersonalitiesTracker::~PersonalitiesTracker((a1 + 128));
  sub_100359978(a1 + 96, *(a1 + 104));
  v2 = *(a1 + 88);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 56));
  sub_1000C0544((a1 + 24));
  return sub_1002A493C(a1);
}

void sub_100822694(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101780DB8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1008226B0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1008226E8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100822718(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100822758(uint64_t **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 56);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping...", buf, 2u);
  }

  v4 = v1[1];
  *buf = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v4);
  }

  sub_10081F9A8(v2, buf);
}

void sub_10082281C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_100822850(uint64_t **a1)
{
  v2 = a1;
  v1 = **a1;
  sub_100820E88(v1, v3);
  sub_1008208F8(v1, 0, v3);
  v4 = v3;
  sub_1000212F4(&v4);
  operator delete();
}

void sub_1008228D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000212F4(va);
  operator delete();
}

uint64_t *sub_10082290C(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 56);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  ctu::RestModule::disconnect((v2 + 80));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_100822990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100822A1C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E86FC8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100822A50(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100822A9C(std::string **a1, xpc_object_t *a2)
{
  v2 = *a1;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  sub_10010A62C(&v4, a2);
  memset(v3, 0, sizeof(v3));
  sub_1000B2128(v3, v4, v5, 0xCF3CF3CF3CF3CF3DLL * ((v5 - v4) >> 3));
  sub_100D21B04(v2, v3);
  v7 = v3;
  sub_1000B2AF8(&v7);
  v7 = &v4;
  sub_1000B2AF8(&v7);
}

void sub_100822B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 24) = v13;
  sub_1000B2AF8((v14 - 24));
  *(v14 - 24) = &a13;
  sub_1000B2AF8((v14 - 24));
  _Unwind_Resume(a1);
}

void sub_100822C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100822CEC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E87048;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_100822D24(void *a1)
{
  __p[0] = 0x2800000000;
  __p[1] = 0;
  v6 = 0uLL;
  v7 = 0;
  rest::read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4, __p);
  if (__p[1])
  {
    *&v6 = __p[1];
    operator delete(__p[1]);
  }
}

void sub_100822DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100822DE8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100822EA4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E870C8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100822ED0(uint64_t a1, xpc *this, uint64_t a3)
{
  v3 = *(a1 + 8);
  result = xpc::dyn_cast_or_default(this, 0, a3);
  v5 = 0x10101000000uLL >> (8 * result);
  if (result >= 7)
  {
    LOBYTE(v5) = 1;
  }

  *v3 = v5;
  return result;
}

uint64_t sub_100822F18(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100822F64(void *a1)
{
  *a1 = off_101E87148;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100822FB0(void *a1)
{
  *a1 = off_101E87148;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100823088(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101E87148;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1008230C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1008230D0(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100823110(uint64_t a1, uint64_t a2, const std::string *a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 8);
      if (v8)
      {
        sub_1008206E8(v8, a3);
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_100823198(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1008231E4(uint64_t **a1)
{
  v1 = **a1;
  if ((sub_100820170(v1) & 1) == 0)
  {
    v13 = *(v1 + 56);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Skipping refresh as SIM APNs is not supported", buf, 2u);
    }

LABEL_36:
    operator delete();
  }

  ServiceMap = Registry::getServiceMap(*(v1 + 64));
  v3 = ServiceMap;
  if (v4 < 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  *buf = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, buf);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      if (!v10)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  if (!v10)
  {
LABEL_8:
    v12 = *(v1 + 56);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#E Subscriber sim controller not found. Unable to refresh SIM APNs", buf, 2u);
    }

LABEL_34:
    if ((v11 & 1) == 0)
    {
      sub_100004A34(v9);
    }

    goto LABEL_36;
  }

LABEL_14:
  v14 = sub_1002A4990(v1);
  *buf = 0;
  v27[0] = 0;
  v27[1] = 0;
  LODWORD(__p) = 35;
  v15 = sub_1008235B0(buf, &__p, 1);
  if ((capabilities::ct::supportsSIMAPNSingleFile(v15) & 1) == 0)
  {
    LODWORD(__p) = 34;
    sub_100715B08(buf, *buf, &__p, &__p);
  }

  (*(*v10 + 168))(v10, v14, buf);
  __p = 0;
  v25 = 0uLL;
  v16 = *buf;
  if (*buf == v27)
  {
    v17 = 0;
LABEL_28:
    v21 = *(v1 + 56);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Ignore SIM APNs read result with no data", v22, 2u);
    }
  }

  else
  {
    while (1)
    {
      (*(*v10 + 176))(v22, v10, v14, *(v16 + 7));
      if (__p)
      {
        operator delete(__p);
      }

      v17 = *v22;
      __p = *v22;
      v25 = v23;
      if (*v22 != v23)
      {
        break;
      }

      v18 = v16[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v16[2];
          v20 = *v19 == v16;
          v16 = v19;
        }

        while (!v20);
      }

      v16 = v19;
      if (v19 == v27)
      {
        goto LABEL_28;
      }
    }

    sub_1008213A0(v1, &__p);
  }

  if (v17)
  {
    *&v25 = v17;
    operator delete(v17);
  }

  sub_10006DCAC(buf, v27[0]);
  goto LABEL_34;
}

void sub_10082352C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (v19)
  {
    operator delete(v19);
  }

  sub_10006DCAC(&a17, a18);
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  operator delete();
}

uint64_t sub_1008235B0(uint64_t a1, int *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 4 * a3;
    do
    {
      sub_100715B08(a1, v4, a2, a2);
      ++a2;
      v6 -= 4;
    }

    while (v6);
  }

  return a1;
}

void sub_100823630(uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  operator new();
}

void sub_100823828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __cxa_free_exception(v13);
  v15 = *(v12 + 8);
  if (v15)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(a1);
}

void sub_1008238BC(void **a1)
{
  *a1 = off_101E871C8;
  v6 = a1 + 17;
  sub_10082586C(&v6);
  v2 = a1[12];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    dispatch_release(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);
  BasebandControllerInterface::~BasebandControllerInterface(a1);
}

void sub_10082395C(void **a1)
{
  sub_1008238BC(a1);

  operator delete();
}

uint64_t sub_100823994(uint64_t a1, uint64_t *a2, NSObject **a3, uint64_t a4)
{
  v8 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v20, kCtLoggingSystemName, "bb.ctr");
  sub_100823BE0(v8, a3, &v20);
  ctu::OsLogContext::~OsLogContext(&v20);
  *a1 = off_101E871C8;
  v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v10 = dispatch_queue_create_with_target_V2("BasebandController", v9, *(a1 + 24));
  *a1 = off_101E871C8;
  v12 = *a2;
  v11 = a2[1];
  *(a1 + 48) = v10;
  *(a1 + 56) = v12;
  *(a1 + 64) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "BasebandController");
  v13 = *(a1 + 24);
  v17 = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  v14 = *(a1 + 32);
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v17)
  {
    dispatch_release(v17);
  }

  if (v19 < 0)
  {
    operator delete(__p);
  }

  (*(**a4 + 16))();
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  *(a1 + 130) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  return a1;
}

void sub_100823B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  v21 = v18[10];
  if (v21)
  {
    sub_100004A34(v21);
  }

  v22 = v18[8];
  if (v22)
  {
    sub_100004A34(v22);
  }

  v23 = v18[6];
  if (v23)
  {
    dispatch_release(v23);
  }

  ctu::OsLogLogger::~OsLogLogger((v18 + 5));
  sub_1000C0544(v19);
  BasebandControllerInterface::~BasebandControllerInterface(v18);
  _Unwind_Resume(a1);
}

void *sub_100823BE0(void *a1, NSObject **a2, OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  a1[2] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v7, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  return a1;
}

void sub_100823C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

void sub_100823C6C(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = 0uLL;
  sub_100004AA0(&v4, (a1 + 8));
  v4 = 0uLL;
  operator new();
}

void sub_100823D3C(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void sub_100823E18(NSObject *a1, int a2, ServiceStage *this)
{
  ServiceStage::holdOffStage(&group[1], this);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, &a1[1].isa);
  operator new();
}

void sub_100823F50(uint64_t a1, uint64_t a2, dispatch_object_t *a3, uint64_t a4)
{
  v6 = *(a1 + 88);
  v7 = *a3;
  if (*a3)
  {
    object = *a3;
  }

  else
  {
    v7 = *(a1 + 24);
    object = v7;
    if (!v7)
    {
      goto LABEL_5;
    }
  }

  dispatch_retain(v7);
LABEL_5:
  sub_1003103C4(v9, a4);
  (*(*v6 + 40))(v6, a2, &object, v9);
  sub_10031045C(v9);
  if (object)
  {
    dispatch_release(object);
  }
}

void sub_10082402C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, ...)
{
  va_start(va, object);
  sub_10031045C(va);
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

void sub_100824058(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7[0] = 0;
  v7[1] = 0;
  v8 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v7, *a2, *(a2 + 8));
  }

  else
  {
    *v7 = *a2;
    v8 = *(a2 + 16);
  }

  v9[4] = a1;
  if (SHIBYTE(v8) < 0)
  {
    sub_100005F2C(&__p, v7[0], v7[1]);
  }

  else
  {
    __p = *v7;
    v11 = v8;
  }

  v12 = a3;
  sub_100049BB8(&v13, a4);
  v9[0] = 0;
  v9[1] = 0;
  sub_100004AA0(v9, (a1 + 8));
  operator new();
}

void sub_100824238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10082428C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 96);
  *a2 = *(result + 88);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1008242A8(uint64_t a1, uint64_t a2, void **a3, NSObject **a4, uint64_t a5)
{
  v9 = *(a1 + 88);
  v10 = *a3;
  v13 = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    v13 = xpc_null_create();
  }

  v11 = *a4;
  if (v11)
  {
    object = v11;
  }

  else
  {
    v11 = *(a1 + 24);
    object = v11;
    if (!v11)
    {
      goto LABEL_8;
    }
  }

  dispatch_retain(v11);
LABEL_8:
  sub_100049BB8(v14, a5);
  (*(*v9 + 48))(v9, a2, &v13, &object, v14);
  sub_100049CCC(v14);
  if (object)
  {
    dispatch_release(object);
  }

  xpc_release(v13);
}

void sub_1008243BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, xpc_object_t a11, char a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_10082440C(uint64_t a1, uint64_t a2, void **a3, uint64_t a4)
{
  v6 = *(a1 + 88);
  v7 = *a3;
  object = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  v8 = (*(*v6 + 56))(v6, a2, &object, a4);
  xpc_release(object);
  return v8;
}

void sub_1008244C4(uint64_t a1)
{
  v2 = *(a1 + 128);
  v3 = *(a1 + 116);
  v20 = a1;
  if (v3)
  {
    if (v3 != 2)
    {
      if (v3 != 1)
      {
        return;
      }

      v4 = *(a1 + 129);
      v5 = *(a1 + 40);
      v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      if (v4 == 1)
      {
        if (!v6)
        {
          return;
        }

        *buf = 0;
        v7 = "#I Baseband reset is in progress. Pending prevent baseband reset assertion";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
        return;
      }

      if (v2)
      {
        if (!v6)
        {
          return;
        }

        *buf = 0;
        v7 = "#I Baseband is currently down. Pending prevent baseband reset assertion";
        goto LABEL_17;
      }

      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Granting prevent baseband reset assertion", buf, 2u);
      }

      ServiceMap = Registry::getServiceMap(*(a1 + 56));
      v10 = ServiceMap;
      if (v11 < 0)
      {
        v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
        v13 = 5381;
        do
        {
          v11 = v13;
          v14 = *v12++;
          v13 = (33 * v13) ^ v14;
        }

        while (v14);
      }

      std::mutex::lock(ServiceMap);
      *buf = v11;
      v15 = sub_100009510(&v10[1].__m_.__sig, buf);
      if (v15)
      {
        v17 = v15[3];
        v16 = v15[4];
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v10);
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v16);
          v18 = 0;
LABEL_28:
          if (v17)
          {
            v19 = *(a1 + 40);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Releasing EOS no-reset assertion as BB no reset assertion is being acquired", buf, 2u);
            }

            (*(*v17 + 32))(v17);
          }

          if ((v18 & 1) == 0)
          {
            sub_100004A34(v16);
          }

          sub_100824774((a1 + 112), a1 + 72);
          return;
        }
      }

      else
      {
        v17 = 0;
      }

      std::mutex::unlock(v10);
      v16 = 0;
      v18 = 1;
      goto LABEL_28;
    }

    if (v2)
    {
      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Revoking prevent baseband reset assertion because radio is down", buf, 2u);
      }

      sub_100824888((a1 + 112), a1 + 72);
      sub_100824998(&v20);
    }
  }

  else
  {
    sub_100824998(&v20);

    sub_100824AFC(a1);
  }
}

void sub_100824758(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100824774(unsigned int *a1, uint64_t a2)
{
  if (a1[1] == 1)
  {
    sub_10000501C(v4, "/cc/assertions/prevent_baseband_reset");
    *__p = *v4;
    v7 = v5;
    v4[1] = 0;
    v5 = 0;
    v4[0] = 0;
    ctu::path_join_impl();
    object = xpc_int64_create(*a1);
    if (!object)
    {
      object = xpc_null_create();
    }

    ctu::RestModule::setProperty();
    xpc_release(object);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v5) < 0)
    {
      operator delete(v4[0]);
    }
  }
}

void sub_100824840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_100824888(unsigned int *a1, uint64_t a2)
{
  if (a1[1])
  {
    sub_10000501C(v4, "/cc/assertions/prevent_baseband_reset");
    *__p = *v4;
    v7 = v5;
    v4[1] = 0;
    v5 = 0;
    v4[0] = 0;
    ctu::path_join_impl();
    object = xpc_int64_create(*a1);
    if (!object)
    {
      object = xpc_null_create();
    }

    ctu::RestModule::setProperty();
    xpc_release(object);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v5) < 0)
    {
      operator delete(v4[0]);
    }
  }
}

void sub_100824950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_100824998(uint64_t *a1)
{
  v1 = *a1;
  ServiceMap = Registry::getServiceMap(*(*a1 + 56));
  v3 = ServiceMap;
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  v14 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v14);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      if (!v10)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_10:
  v12 = *(v1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Releasing EOS no-reset assertion as BB no reset assertion is being released", v13, 2u);
  }

  (*(*v10 + 40))(v10);
LABEL_13:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_100824AE0(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100824AFC(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(a1 + 144);
  if (v1 == v2)
  {
    return;
  }

  if (*(a1 + 116))
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = (v2 - v1) >> 6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Someone's preventing baseband reset. %zu pending reset request(s)", buf, 0xCu);
    }

    return;
  }

  v40 = a1;
  v5 = *(a1 + 129);
  v6 = *(a1 + 40);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5 == 1)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Baseband reset in progress. Dropping all pending reset requests", buf, 2u);
    }

    v36 = 0;
    v38 = 0;
    v39 = 0;
    v37 = 0;
    v8 = xpc_null_create();
    v35 = v8;
    sub_1008250B8(&v40, &v36, &v35);
    xpc_release(v8);
    return;
  }

  if (v7)
  {
    *buf = 134217984;
    *&buf[4] = (v2 - v1) >> 6;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Resetting baseband (requested by %zu client(s))", buf, 0xCu);
  }

  *(a1 + 129) = 1;
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  *buf = 0u;
  v43 = 0u;
  sub_10031538C(buf);
  __p[0] = 0;
  __p[1] = 0;
  v34 = 0;
  sub_1003155AC(buf, __p);
  v9 = *(a1 + 136);
  v10 = *(a1 + 144);
  if (v9 != v10)
  {
    while ((v9[3] & 1) == 0)
    {
      v9 += 8;
      if (v9 == v10)
      {
        v9 = *(a1 + 144);
        break;
      }
    }
  }

  if (v9 == v10)
  {
    v11 = (v10 - 8);
  }

  else
  {
    v11 = v9;
  }

  v32 = 0;
  v12 = xpc_dictionary_create(0, 0, 0);
  v13 = v12;
  if (v12)
  {
    v32 = v12;
  }

  else
  {
    v13 = xpc_null_create();
    v32 = v13;
    if (!v13)
    {
      v14 = xpc_null_create();
      v13 = 0;
      goto LABEL_25;
    }
  }

  if (xpc_get_type(v13) != &_xpc_type_dictionary)
  {
    v14 = xpc_null_create();
LABEL_25:
    v32 = v14;
    goto LABEL_26;
  }

  xpc_retain(v13);
LABEL_26:
  xpc_release(v13);
  v15 = &abm::kBasebandResetTypeHard;
  if (v9 == v10)
  {
    v15 = &abm::kBasebandResetTypeSoft;
  }

  v30 = xpc_string_create(*v15);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  v28 = &v32;
  v29 = abm::kKeyBasebandResetType;
  sub_10000F688(&v28, &v30, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v30);
  v30 = 0;
  v26 = xpc_string_create(abm::kBasebandResetSubTypeOtherErrors);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  v28 = &v32;
  v29 = abm::kKeyBasebandResetSubType;
  sub_10000F688(&v28, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  if (v11[23] < 0)
  {
    v11 = *v11;
  }

  v24 = xpc_string_create(v11);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  v28 = &v32;
  v29 = abm::kKeyBasebandResetReason;
  sub_10000F688(&v28, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  if (v34 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  v22 = xpc_string_create(v16);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  v28 = &v32;
  v29 = abm::kKeyTimestampString;
  sub_10000F688(&v28, &v22, &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(v22);
  v17 = v32;
  v21 = v32;
  v22 = 0;
  if (v32)
  {
    xpc_retain(v32);
  }

  else
  {
    v17 = xpc_null_create();
    v21 = v17;
  }

  v18 = abm::kCommandResetBaseband;
  v19 = *(a1 + 24);
  v20 = v19;
  if (v19)
  {
    dispatch_retain(v19);
  }

  v41[0] = off_101E87640;
  v41[1] = v40;
  v41[3] = v41;
  sub_1008242A8(a1, v18, &v21, &v20, v41);
  sub_100049CCC(v41);
  if (v19)
  {
    dispatch_release(v19);
  }

  xpc_release(v17);
  v21 = 0;
  xpc_release(v32);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(*(&v44 + 1));
  }

  if (SBYTE7(v44) < 0)
  {
    operator delete(v43);
  }
}

void sub_100824FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, xpc_object_t object, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1008250B8(uint64_t *a1, int *a2, void **a3)
{
  v3 = *a1;
  v5 = *(*a1 + 136);
  v4 = *(*a1 + 144);
  if (v5 != v4)
  {
    do
    {
      if (*(v5 + 56))
      {
        v11 = *a2;
        if (*(a2 + 31) < 0)
        {
          sub_100005F2C(&__p, *(a2 + 1), *(a2 + 2));
        }

        else
        {
          __p = *(a2 + 2);
          v13 = *(a2 + 3);
        }

        v8 = *a3;
        object = v8;
        if (v8)
        {
          xpc_retain(v8);
        }

        else
        {
          object = xpc_null_create();
        }

        v9 = *(v5 + 56);
        if (!v9)
        {
          sub_100022DB4();
        }

        (*(*v9 + 48))(v9, &v11, &object);
        xpc_release(object);
        object = 0;
        if (SHIBYTE(v13) < 0)
        {
          operator delete(__p);
        }
      }

      v5 += 64;
    }

    while (v5 != v4);
    v5 = *(v3 + 136);
    v4 = *(v3 + 144);
  }

  while (v4 != v5)
  {
    v4 -= 64;
    sub_1008258F0(v4);
  }

  *(v3 + 144) = v5;
}

void sub_1008251E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100825218(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "allow";
    if (a2)
    {
      v7 = "prevent";
    }

    *buf = 136315138;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Request ABM to %s nvm sync", buf, 0xCu);
  }

  v8 = xpc_null_create();
  v9 = *(a1 + 24);
  v10 = v9;
  v11 = v8;
  if (v9)
  {
    dispatch_retain(v9);
  }

  sub_10009CF40(v12, a3);
  v13 = 0;
  operator new();
}

void sub_1008253AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_100825408(uint64_t a1)
{
  v2 = *(a1 + 124);
  if (v2)
  {
    if (v2 == 2)
    {
      v5 = *(a1 + 40);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v7) = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Some entity is already holding assertion to prevent nvm sync assertion", &v7, 2u);
      }
    }

    else if (v2 == 1)
    {
      v3 = *(a1 + 40);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v7) = 0;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Some entity acquired assertion to prevent nvm sync", &v7, 2u);
      }

      *(a1 + 130) = 1;
      sub_100004AA0(&v7, (a1 + 8));
      v4 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v4);
      }

      operator new();
    }
  }

  else
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I No entity is holding assertion to prevent nvm sync assertion", &v7, 2u);
    }

    if (*(a1 + 130) == 1)
    {
      v10 = 0;
      sub_100825218(a1, 0, v9);
    }
  }
}

void sub_1008255E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002B644(va);
  _Unwind_Resume(a1);
}

void sub_10082561C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CSIBOOLAsString(*(a1 + 128));
    v4 = CSIBOOLAsString(*(a1 + 129));
    v5 = (*(a1 + 144) - *(a1 + 136)) >> 6;
    v9 = 136315650;
    v10 = v3;
    v11 = 2080;
    v12 = v4;
    v13 = 2048;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I fIsRadioDown: %s, fIsBasebandResetInProgress: %s, reset requests: %lu", &v9, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = ctu::rest::asString();
    v9 = 136315138;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I prevent-baseband-reset-assertion state: %s", &v9, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = ctu::rest::asString();
    v9 = 136315138;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I prevent-nvm-sync-assertion state: %s", &v9, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = ctu::rest::asString();
    v9 = 136315138;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I exclusive-baseband-operation-assertion state: %s", &v9, 0xCu);
  }
}

void *sub_1008257E0(void *__dst, __int128 *a2, char a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v7;
  }

  *(__dst + 24) = a3;
  sub_100049BB8((__dst + 4), a4);
  return __dst;
}

void sub_100825850(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10082586C(void ***a1)
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
        v4 -= 64;
        sub_1008258F0(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_1008258F0(uint64_t a1)
{
  sub_100049CCC(a1 + 32);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_1008259C0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100825A94);
  __cxa_rethrow();
}

void sub_100825A00(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100825A54(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100825A94(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100825AC0(std::mutex *this, uint64_t *a2)
{
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(this);
  v8 = *a2;
  if (*a2)
  {
    v9 = a2[1];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = v8;
    v14 = v9;
    v15 = v4;
    sub_100145BF0(&this[1].__m_.__sig, &v15, &v15, &v13);
    v11 = v10;
    if (v14)
    {
      sub_100004A34(v14);
    }
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = v4;
    sub_100145EC4(&this[1].__m_.__sig, &v15);
    v11 = 1;
  }

  std::mutex::unlock(this);
  return v11 & 1;
}

void sub_100825BA0(ServiceManager::Service *this)
{
  *this = off_101E87340;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_100825BFC(ServiceManager::Service *this)
{
  *this = off_101E87340;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_100825C7C@<X0>(uint64_t *a1@<X8>)
{
  v2 = 3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_100825CC0(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
    sub_100823C6C(v2, &v4);
  }

  sub_100823C6C(v2, &v4);
}

uint64_t *sub_100825D78(uint64_t *a1)
{
  v4 = a1;
  v1 = *a1;
  v2 = *(*a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  Registry::createRestModuleOneTimeUseConnection(&v5, *(v1 + 56));
  ctu::RestModule::connect();
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_10000501C(__p, "/cc/props/radio_state");
  *buf = off_101E873C0;
  v10 = v1 + 128;
  v11 = v1;
  v12 = buf;
  ctu::RestModule::observeProperty();
  sub_1000062D4(buf);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100826264(__p);
  *buf = off_101E87440;
  v10 = v1 + 112;
  v11 = v1;
  v12 = buf;
  ctu::RestModule::observeProperty();
  sub_1000062D4(buf);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100826424(__p);
  *buf = off_101E874C0;
  v10 = v1 + 104;
  v11 = v1;
  v12 = buf;
  ctu::RestModule::observeProperty();
  sub_1000062D4(buf);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100826744(__p);
  *buf = off_101E87540;
  v10 = v1 + 120;
  v11 = v1;
  v12 = buf;
  ctu::RestModule::observeProperty();
  sub_1000062D4(buf);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000501C(__p, "/cc/events/dump_state");
  *buf = off_101E875C0;
  v10 = v1;
  v12 = buf;
  ctu::RestModule::observeEvent();
  sub_1000062D4(buf);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return sub_100146328(&v4);
}

void sub_100825FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  sub_1000062D4(&a18);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_100146328(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_1008260C8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E873C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1008260F8(uint64_t a1, xpc *this, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = xpc::dyn_cast_or_default(this, 0, a3);
  v6 = *v4;
  v7 = 0x10101000000uLL >> (8 * v5);
  if (v5 >= 7)
  {
    LOBYTE(v7) = 1;
  }

  *v4 = v7;
  if (v6 != (v7 & 1))
  {
    v8 = *(a1 + 16);
    v9 = *(v8 + 128);
    if (v9 != v6)
    {
      v10 = *(v8 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315394;
        v12 = CSIBOOLAsString(v6);
        v13 = 2080;
        v14 = CSIBOOLAsString(v9);
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Radio down changed from %s -> %s", &v11, 0x16u);
      }

      if ((v9 & 1) == 0)
      {
        *(v8 + 129) = 0;
      }

      sub_1008244C4(v8);
    }
  }
}

uint64_t sub_100826218(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100826264(uint64_t a1@<X8>)
{
  sub_10000501C(__p, "/cc/assertions/prevent_baseband_reset");
  *a1 = *__p;
  *(a1 + 16) = v3;
  __p[1] = 0;
  v3 = 0;
  __p[0] = 0;
  ctu::path_join_impl();
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1008262D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  sub_101760E98(va);
  _Unwind_Resume(a1);
}

__n128 sub_10082636C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E87440;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10082639C(uint64_t a1)
{
  ctu::rest::read_rest_value();
  v2 = *(a1 + 16);

  sub_1008244C4(v2);
}

uint64_t sub_1008263D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100826424(uint64_t a1@<X8>)
{
  sub_10000501C(__p, "/cc/exclusive_assertions/baseband_operation");
  *a1 = *__p;
  *(a1 + 16) = v3;
  __p[1] = 0;
  v3 = 0;
  __p[0] = 0;
  ctu::path_join_impl();
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100826494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  sub_101760E98(va);
  _Unwind_Resume(a1);
}

__n128 sub_10082652C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E874C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10082655C(uint64_t a1)
{
  ctu::rest::read_rest_value();
  v2 = *(a1 + 16);
  if (*(v2 + 108) == 1)
  {
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Granting exclusive baseband operation assertion", v4, 2u);
    }

    sub_100826630((v2 + 104), v2 + 72);
  }
}

uint64_t sub_1008265E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100826630(unsigned int *a1, uint64_t a2)
{
  if (a1[1] == 1)
  {
    sub_10000501C(v4, "/cc/exclusive_assertions/baseband_operation");
    *__p = *v4;
    v7 = v5;
    v4[1] = 0;
    v5 = 0;
    v4[0] = 0;
    ctu::path_join_impl();
    object = xpc_int64_create(*a1);
    if (!object)
    {
      object = xpc_null_create();
    }

    ctu::RestModule::setProperty();
    xpc_release(object);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v5) < 0)
    {
      operator delete(v4[0]);
    }
  }
}

void sub_1008266FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_100826744(uint64_t a1@<X8>)
{
  sub_10000501C(__p, "/cc/assertions/prevent_nvm_sync");
  *a1 = *__p;
  *(a1 + 16) = v3;
  __p[1] = 0;
  v3 = 0;
  __p[0] = 0;
  ctu::path_join_impl();
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1008267B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  sub_101760E98(va);
  _Unwind_Resume(a1);
}

__n128 sub_10082684C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E87540;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10082687C(uint64_t a1)
{
  ctu::rest::read_rest_value();
  v2 = *(a1 + 16);

  sub_100825408(v2);
}

uint64_t sub_1008268B8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100826974(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E875C0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1008269A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1008269F4(uint64_t a1)
{
  v2 = a1;
  v1 = *(**a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  operator delete();
}

uint64_t *sub_100826A80(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  ctu::RestModule::disconnect((v2 + 72));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_100826B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100826B20(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_100826BA0(uint64_t **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = v1 + 40;
  v3 = *v1;
  v4 = *(*v1 + 144);
  if (v4 >= *(*v1 + 152))
  {
    v5 = sub_100826CB8((v3 + 136), (v1 + 8), (v1 + 32), v2);
  }

  else
  {
    sub_100826DE0(*(*v1 + 144), (v1 + 8), (v1 + 32), v2);
    v5 = v4 + 64;
    *(v3 + 144) = v4 + 64;
  }

  *(v3 + 144) = v5;
  sub_100824AFC(v3);
  sub_100826C58(&v8);
  return sub_1000049E0(&v7);
}

void sub_100826C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  *(v9 + 144) = v10;
  sub_100826C58(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100826C58(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100049CCC(v1 + 40);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_100826CB8(uint64_t *a1, __int128 *a2, char *a3, uint64_t a4)
{
  v4 = (a1[1] - *a1) >> 6;
  v5 = v4 + 1;
  if ((v4 + 1) >> 58)
  {
    sub_1000CE3D4();
  }

  v8 = a1[2] - *a1;
  if (v8 >> 5 > v5)
  {
    v5 = v8 >> 5;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFC0)
  {
    v9 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v5;
  }

  v19 = a1;
  if (v9)
  {
    sub_100826E8C(a1, v9);
  }

  v16 = 0;
  v17 = v4 << 6;
  sub_100826DE0((v4 << 6), a2, a3, a4);
  v18 = ((v4 << 6) + 64);
  v10 = a1[1];
  v11 = (v4 << 6) + *a1 - v10;
  sub_100826ED4(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_100826FD0(&v16);
  return v15;
}

void sub_100826DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100826FD0(va);
  _Unwind_Resume(a1);
}

void *sub_100826DE0(void *a1, __int128 *a2, char *a3, uint64_t a4)
{
  v6 = *a3;
  sub_100049BB8(v8, a4);
  sub_1008257E0(a1, a2, v6 & 1, v8);
  sub_100049CCC(v8);
  return a1;
}

void sub_100826E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100049CCC(va);
  _Unwind_Resume(a1);
}

void sub_100826E8C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_100013D10();
}

void sub_100826ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = (v6 + v7);
      v9 = a4 + v7;
      if (*(v6 + v7 + 23) < 0)
      {
        sub_100005F2C(v9, *v8, *(v8 + 1));
      }

      else
      {
        v10 = *v8;
        *(v9 + 16) = *(v8 + 2);
        *v9 = v10;
      }

      *(a4 + v7 + 24) = *(v6 + v7 + 24);
      sub_100049BB8(a4 + v7 + 32, v6 + v7 + 32);
      v7 += 64;
    }

    while (v6 + v7 != a3);
    while (v6 != a3)
    {
      sub_1008258F0(v6);
      v6 += 64;
    }
  }
}

void sub_100826F88(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 64;
    v5 = -v2;
    do
    {
      sub_1008258F0(v4);
      v4 -= 64;
      v5 += 64;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100826FD0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    sub_1008258F0(i - 64);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100827090(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E87640;
  a2[1] = v2;
  return result;
}

void sub_1008270BC(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  *v10 = *(a2 + 24);
  *&v10[3] = *(a2 + 27);
  v7 = *(a2 + 31);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v8 = *a3;
  *a3 = xpc_null_create();
  v12 = v4;
  if (v7 < 0)
  {
    sub_100005F2C(__p, v5, v6);
  }

  else
  {
    __p[0] = v5;
    __p[1] = v6;
    *v14 = *v10;
    *&v14[3] = *&v10[3];
    v15 = v7;
  }

  v11 = v8;
  if (v8)
  {
    xpc_retain(v8);
    v9 = v8;
  }

  else
  {
    v9 = xpc_null_create();
    v11 = v9;
  }

  sub_1008250B8((a1 + 8), &v12, &v11);
  xpc_release(v9);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v8);
  if (v7 < 0)
  {
    operator delete(v5);
  }
}

void sub_1008271C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(v18);
  if (v19 < 0)
  {
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100827220(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10082726C(void *a1)
{
  *a1 = off_101E876C0;
  sub_10002B644((a1 + 1));
  return a1;
}

void sub_1008272B0(void *a1)
{
  *a1 = off_101E876C0;
  sub_10002B644((a1 + 1));

  operator delete();
}

void sub_1008273C0(void *a1)
{
  sub_10002B644(a1 + 8);

  operator delete(a1);
}

void sub_1008273FC(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 31);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v6 = *a3;
  *a3 = xpc_null_create();
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(*v7 + 48))(v7);
  }

  xpc_release(v6);
  if (v5 < 0)
  {

    operator delete(v4);
  }
}

void sub_1008274AC(_Unwind_Exception *a1)
{
  xpc_release(v2);
  if (v3 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1008274D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100827524(void *a1)
{
  *a1 = off_101E87740;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100827570(void *a1)
{
  *a1 = off_101E87740;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100827650(uint64_t result, uint64_t a2)
{
  *a2 = off_101E87740;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100827690(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1008276A0(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1008276E0(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[2] && *(v3 + 124))
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Granting assertion to prevent nvm sync", v7, 2u);
        }

        sub_1008277E8((v3 + 120), v3 + 72);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10082779C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1008277E8(unsigned int *a1, uint64_t a2)
{
  if (a1[1] == 1)
  {
    sub_10000501C(v4, "/cc/assertions/prevent_nvm_sync");
    *__p = *v4;
    v7 = v5;
    v4[1] = 0;
    v5 = 0;
    v4[0] = 0;
    ctu::path_join_impl();
    object = xpc_int64_create(*a1);
    if (!object)
    {
      object = xpc_null_create();
    }

    ctu::RestModule::setProperty();
    xpc_release(object);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v5) < 0)
    {
      operator delete(v4[0]);
    }
  }
}

void sub_1008278B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void read_rest_value(int *a1, void **a2)
{
  LODWORD(p_object) = 0;
  BYTE4(p_object) = 1;
  __p.n128_u8[0] = 0;
  v14 = 0;
  *a1 = 0;
  *(a1 + 4) = 1;
  sub_10016A270((a1 + 2), &__p);
  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p.n128_u64[0]);
  }

  v4 = *a2;
  object = v4;
  if (v4 && xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
    v5 = object;
  }

  else
  {
    v5 = xpc_null_create();
    object = v5;
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    p_object = &object;
    __p.n128_u64[0] = "config";
    sub_100006354(&p_object, &v9);
    type = xpc_get_type(v9);
    if (type == &_xpc_type_string)
    {
      v15 = *a1;
      ctu::rest::detail::read_enum_string_value(&v15, &v9, v7);
      *a1 = v15;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&v9, 0, v7);
    }

    xpc_release(v9);
    p_object = &object;
    __p.n128_u64[0] = "preferInRoaming";
    sub_100006354(&p_object, &v9);
    *(a1 + 4) = xpc::dyn_cast_or_default(&v9, 0, v8);
    xpc_release(v9);
    p_object = &object;
    __p.n128_u64[0] = "thumperId";
    if (xpc_dictionary_get_value(object, "thumperId"))
    {
      sub_100006354(&p_object, &v9);
      sub_1001E6158((a1 + 2), &v9);
      xpc_release(v9);
    }
  }

  xpc_release(object);
}

{
  *a1 = 0;
  a1[2] = 0;
  v3 = *a2;
  object = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
    v4 = object;
  }

  else
  {
    v4 = xpc_null_create();
    object = v4;
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    p_object = &object;
    v12 = "VoWiFiConfigSrc";
    sub_100006354(&p_object, &v13);
    type = xpc_get_type(v13);
    if (type == &_xpc_type_string)
    {
      v15 = a1[2];
      ctu::rest::detail::read_enum_string_value(&v15, &v13, v6);
      a1[2] = v15;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      a1[2] = xpc::dyn_cast_or_default(&v13, 0, v6);
    }

    xpc_release(v13);
    p_object = &object;
    v12 = "VolteFeatureSupport";
    sub_100006354(&p_object, &v13);
    v7 = xpc_get_type(v13);
    if (v7 == &_xpc_type_string)
    {
      v15 = *a1;
      ctu::rest::detail::read_enum_string_value(&v15, &v13, v8);
      *a1 = v15;
    }

    else if (v7 == &_xpc_type_BOOL || v7 == &_xpc_type_int64 || v7 == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&v13, 0, v8);
    }

    xpc_release(v13);
    p_object = &object;
    v12 = "VoNRFeatureSupport";
    sub_100006354(&p_object, &v13);
    v9 = xpc_get_type(v13);
    if (v9 == &_xpc_type_string)
    {
      v15 = a1[1];
      ctu::rest::detail::read_enum_string_value(&v15, &v13, v10);
      a1[1] = v15;
    }

    else if (v9 == &_xpc_type_BOOL || v9 == &_xpc_type_int64 || v9 == &_xpc_type_uint64)
    {
      a1[1] = xpc::dyn_cast_or_default(&v13, 0, v10);
    }

    xpc_release(v13);
  }

  xpc_release(object);
}

void sub_100827AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

void write_rest_value(unsigned int *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v23 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v23 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v23 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v23 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *a1;
  v8 = asString();
  ctu::rest::detail::write_enum_string_value(v7, v8, v9);
  v19 = &v23;
  v20 = "config";
  sub_10000F688(&v19, &object, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(object);
  object = 0;
  v17 = xpc_BOOL_create(*(a1 + 4));
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v19 = &v23;
  v20 = "preferInRoaming";
  sub_10000F688(&v19, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  if (*(a1 + 32) == 1)
  {
    v12 = *(a1 + 1);
    v11 = a1 + 2;
    v10 = v12;
    if (*(v11 + 23) >= 0)
    {
      v13 = v11;
    }

    else
    {
      v13 = v10;
    }

    v15 = xpc_string_create(v13);
    if (!v15)
    {
      v15 = xpc_null_create();
    }

    v19 = &v23;
    v20 = "thumperId";
    sub_10000F688(&v19, &v15, &v16);
    xpc_release(v16);
    v16 = 0;
    xpc_release(v15);
    v15 = 0;
  }

  v14 = v23;
  *a2 = v23;
  if (v14)
  {
    xpc_retain(v14);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v23);
}

{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v25 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v25 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v25 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = a1[2];
  v8 = asString();
  ctu::rest::detail::write_enum_string_value(v7, v8, v9);
  v21 = &v25;
  v22 = "VoWiFiConfigSrc";
  sub_10000F688(&v21, &object, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(object);
  object = 0;
  v10 = *a1;
  v11 = asString();
  ctu::rest::detail::write_enum_string_value(v10, v11, v12);
  v21 = &v25;
  v22 = "VolteFeatureSupport";
  sub_10000F688(&v21, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v19 = 0;
  v13 = a1[1];
  v14 = asString();
  ctu::rest::detail::write_enum_string_value(v13, v14, v15);
  v21 = &v25;
  v22 = "VoNRFeatureSupport";
  sub_10000F688(&v21, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  v16 = v25;
  *a2 = v25;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v25);
}

void read_rest_value(ThumperCapability *a1, xpc_object_t *a2)
{
  *a1 = 0;
  v3 = *a2;
  v9 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v6 = &v9;
    v7 = "fThumperCapable";
    sub_100006354(&v6, &object);
    *a1 = xpc::dyn_cast_or_default(&object, 0, v4);
    xpc_release(object);
    v6 = &v9;
    v7 = "fThumperEnabled";
    sub_100006354(&v6, &object);
    *(a1 + 1) = xpc::dyn_cast_or_default(&object, 0, v5);
    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_10082838C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void write_rest_value(xpc_object_t *__return_ptr a1@<X8>, const ThumperCapability *a2@<X0>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v14 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v14 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v14 = v6;
LABEL_9:
  xpc_release(v5);
  v12 = xpc_BOOL_create(*a2);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v10 = &v14;
  v11 = "fThumperCapable";
  sub_10000F688(&v10, &v12, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v12);
  v12 = 0;
  v8 = xpc_BOOL_create(*(a2 + 1));
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v10 = &v14;
  v11 = "fThumperEnabled";
  sub_10000F688(&v10, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  v7 = v14;
  *a1 = v14;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  xpc_release(v14);
}

void read_rest_value(uint64_t a1, xpc_object_t *a2)
{
  sub_100828594(a1, a2, "PersonalityID", "IMSProvisioningState");
}

{
  sub_100828B94(a1, a2, "PersonalityID", "State");
}

{
  sub_1008291CC(a1, a2, "PersonalityID", "State");
}

{
  *a1 = 0;
  *(a1 + 4) = 0;
  v3 = *a2;
  v10 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v10 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v7 = &v10;
    v8 = "state";
    sub_100006354(&v7, &object);
    *a1 = xpc::dyn_cast_or_default(&object, 0, v4);
    xpc_release(object);
    v7 = &v10;
    v8 = "rawState";
    sub_100006354(&v7, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v11 = *(a1 + 4);
      ctu::rest::detail::read_enum_string_value(&v11, &object, v6);
      *(a1 + 4) = v11;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *(a1 + 4) = xpc::dyn_cast_or_default(&object, 0, v6);
    }

    xpc_release(object);
    v3 = v10;
  }

  xpc_release(v3);
}

{
  sub_10082A5C4(a1, a2, "PersonalityID", "State");
}

{
  sub_10082B050(a1, a2, "PersonalityID", "State");
}

void sub_100828594(uint64_t a1, xpc_object_t *a2, void *a3, void *a4)
{
  v8 = (a1 + 8);
  sub_100009970(a1, *(a1 + 8));
  *a1 = v8;
  *(a1 + 16) = 0;
  *v8 = 0;
  v9 = *a2;
  if (v9 && xpc_get_type(v9) == &_xpc_type_array)
  {
    xpc_retain(v9);
    object[0] = v9;
    goto LABEL_6;
  }

  v9 = xpc_null_create();
  object[0] = v9;
  if (v9)
  {
LABEL_6:
    xpc_retain(v9);
    v10 = 0;
    goto LABEL_7;
  }

  v9 = 0;
  object[0] = xpc_null_create();
  v10 = 1;
LABEL_7:
  sub_100008EA4(&v25, object, 0);
  xpc_release(object[0]);
  object[0] = v9;
  if (v10)
  {
    object[0] = xpc_null_create();
  }

  else
  {
    xpc_retain(v9);
  }

  if (xpc_get_type(v9) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v9);
  }

  else
  {
    count = 0;
  }

  sub_100008EA4(v24, object, count);
  xpc_release(object[0]);
  for (i = v26; i != v24[1] || v25 != v24[0]; i = ++v26)
  {
    v23[0] = &v25;
    v23[1] = i;
    v22 = 0;
    sub_10003EAD4(v23, &v22);
    if (xpc_get_type(v22) == &_xpc_type_dictionary)
    {
      __p[0] = 0;
      __p[1] = 0;
      v21 = 0;
      v19 = 0;
      v18 = 0;
      object[0] = &v22;
      object[1] = a3;
      sub_100006354(object, &v17);
      read_rest_value();
      xpc_release(v17);
      object[0] = &v22;
      object[1] = a4;
      sub_100006354(object, &v17);
      read_rest_value(&v18, &v17);
      xpc_release(v17);
      if (SHIBYTE(v21) < 0)
      {
        sub_100005F2C(object, __p[0], __p[1]);
      }

      else
      {
        *object = *__p;
        v14 = v21;
      }

      v15 = v18;
      v16 = v19;
      sub_10024DECC(a1, object, object);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(object[0]);
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p[0]);
      }
    }

    xpc_release(v22);
  }

  xpc_release(v24[0]);
  xpc_release(v25);
  xpc_release(v9);
}

void sub_100828820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, xpc_object_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, xpc_object_t a26)
{
  xpc_release(object);
  xpc_release(*(v27 - 80));
  xpc_release(v26);
  _Unwind_Resume(a1);
}

void write_rest_value(void *a1@<X0>, xpc_object_t *a2@<X8>)
{
  sub_100828900(a1, "PersonalityID", "IMSProvisioningState", a2);
}

{
  sub_100828F38(a1, "PersonalityID", "State", a2);
}

{
  sub_100829524(a1, "PersonalityID", "State", a2);
}

{
  sub_10082A950(a1, "PersonalityID", "State", a2);
}

{
  sub_10082B3F0(a1, "PersonalityID", "State", a2);
}

void sub_100828900(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, xpc_object_t *a4@<X8>)
{
  v8 = xpc_array_create(0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v8) == &_xpc_type_array)
    {
      xpc_retain(v8);
      v9 = v8;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v8 = 0;
  }

  xpc_release(v8);
  v12 = *a1;
  v10 = (a1 + 1);
  v11 = v12;
  if (v12 != v10)
  {
    do
    {
      value = 0;
      v13 = xpc_dictionary_create(0, 0, 0);
      v14 = v13;
      if (v13)
      {
        value = v13;
      }

      else
      {
        v14 = xpc_null_create();
        value = v14;
        if (!v14)
        {
          v15 = xpc_null_create();
          v14 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v14) != &_xpc_type_dictionary)
      {
        v15 = xpc_null_create();
LABEL_15:
        value = v15;
        goto LABEL_16;
      }

      xpc_retain(v14);
LABEL_16:
      xpc_release(v14);
      write_rest_value();
      p_value = &value;
      v22 = a2;
      sub_10000F688(&p_value, &v23, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v23);
      v23 = 0;
      write_rest_value(v11 + 14, &v19);
      p_value = &value;
      v22 = a3;
      sub_10000F688(&p_value, &v19, &v20);
      xpc_release(v20);
      v20 = 0;
      xpc_release(v19);
      v19 = 0;
      xpc_array_append_value(v9, value);
      xpc_release(value);
      v16 = *(v11 + 1);
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
          v17 = *(v11 + 2);
          v18 = *v17 == v11;
          v11 = v17;
        }

        while (!v18);
      }

      v11 = v17;
    }

    while (v17 != v10);
  }

  *a4 = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *a4 = xpc_null_create();
  }

  xpc_release(v9);
}

void sub_100828B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v16);
  _Unwind_Resume(a1);
}

void sub_100828B94(uint64_t a1, xpc_object_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = (a1 + 8);
  sub_1001A904C(a1, *(a1 + 8));
  *a1 = v8;
  *(a1 + 16) = 0;
  *v8 = 0;
  v9 = *a2;
  if (v9 && xpc_get_type(v9) == &_xpc_type_array)
  {
    xpc_retain(v9);
    object = v9;
    goto LABEL_6;
  }

  v9 = xpc_null_create();
  object = v9;
  if (v9)
  {
LABEL_6:
    xpc_retain(v9);
    v10 = 0;
    goto LABEL_7;
  }

  v9 = 0;
  object = xpc_null_create();
  v10 = 1;
LABEL_7:
  sub_100008EA4(&v28, &object, 0);
  xpc_release(object);
  object = v9;
  if (v10)
  {
    object = xpc_null_create();
  }

  else
  {
    xpc_retain(v9);
  }

  if (xpc_get_type(v9) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v9);
  }

  else
  {
    count = 0;
  }

  sub_100008EA4(v27, &object, count);
  xpc_release(object);
  for (i = v29; i != v27[1] || v28 != v27[0]; i = ++v29)
  {
    v26[0] = &v28;
    v26[1] = i;
    v25 = 0;
    sub_10003EAD4(v26, &v25);
    if (xpc_get_type(v25) == &_xpc_type_dictionary)
    {
      v23 = 0uLL;
      v24 = 0;
      *v20 = 0u;
      v21 = 0u;
      BYTE4(v20[0]) = 1;
      v22 = 0;
      object = &v25;
      v14 = a3;
      sub_100006354(&object, &v19);
      read_rest_value();
      xpc_release(v19);
      object = &v25;
      v14 = a4;
      sub_100006354(&object, &v19);
      read_rest_value(v20, &v19);
      xpc_release(v19);
      sub_10082B738(&object, &v23, v20);
      sub_10024DA74(a1, &object, &object);
      if (v18 == 1 && v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(object);
      }

      if (v22 == 1 && SHIBYTE(v21) < 0)
      {
        operator delete(v20[1]);
      }

      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23);
      }
    }

    xpc_release(v25);
  }

  xpc_release(v27[0]);
  xpc_release(v28);
  xpc_release(v9);
}

void sub_100828E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  xpc_release(object);
  xpc_release(*(v34 - 96));
  xpc_release(v33);
  _Unwind_Resume(a1);
}

void sub_100828F38(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, xpc_object_t *a4@<X8>)
{
  v8 = xpc_array_create(0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v8) == &_xpc_type_array)
    {
      xpc_retain(v8);
      v9 = v8;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v8 = 0;
  }

  xpc_release(v8);
  v12 = *a1;
  v10 = (a1 + 1);
  v11 = v12;
  if (v12 != v10)
  {
    do
    {
      value = 0;
      v13 = xpc_dictionary_create(0, 0, 0);
      v14 = v13;
      if (v13)
      {
        value = v13;
      }

      else
      {
        v14 = xpc_null_create();
        value = v14;
        if (!v14)
        {
          v15 = xpc_null_create();
          v14 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v14) != &_xpc_type_dictionary)
      {
        v15 = xpc_null_create();
LABEL_15:
        value = v15;
        goto LABEL_16;
      }

      xpc_retain(v14);
LABEL_16:
      xpc_release(v14);
      write_rest_value();
      p_value = &value;
      v22 = a2;
      sub_10000F688(&p_value, &v23, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v23);
      v23 = 0;
      write_rest_value(v11 + 14, &v19);
      p_value = &value;
      v22 = a3;
      sub_10000F688(&p_value, &v19, &v20);
      xpc_release(v20);
      v20 = 0;
      xpc_release(v19);
      v19 = 0;
      xpc_array_append_value(v9, value);
      xpc_release(value);
      v16 = *(v11 + 1);
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
          v17 = *(v11 + 2);
          v18 = *v17 == v11;
          v11 = v17;
        }

        while (!v18);
      }

      v11 = v17;
    }

    while (v17 != v10);
  }

  *a4 = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *a4 = xpc_null_create();
  }

  xpc_release(v9);
}

void sub_100829194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v16);
  _Unwind_Resume(a1);
}

void sub_1008291CC(uint64_t a1, xpc_object_t *a2, void *a3, void *a4)
{
  v8 = (a1 + 8);
  sub_100009970(a1, *(a1 + 8));
  *a1 = v8;
  *(a1 + 16) = 0;
  *v8 = 0;
  v9 = *a2;
  if (v9 && xpc_get_type(v9) == &_xpc_type_array)
  {
    xpc_retain(v9);
    object[0] = v9;
    goto LABEL_6;
  }

  v9 = xpc_null_create();
  object[0] = v9;
  if (v9)
  {
LABEL_6:
    xpc_retain(v9);
    v10 = 0;
    goto LABEL_7;
  }

  v9 = 0;
  object[0] = xpc_null_create();
  v10 = 1;
LABEL_7:
  sub_100008EA4(&v24, object, 0);
  xpc_release(object[0]);
  object[0] = v9;
  if (v10)
  {
    object[0] = xpc_null_create();
  }

  else
  {
    xpc_retain(v9);
  }

  if (xpc_get_type(v9) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v9);
  }

  else
  {
    count = 0;
  }

  sub_100008EA4(v23, object, count);
  xpc_release(object[0]);
  for (i = v25; i != v23[1] || v24 != v23[0]; i = ++v25)
  {
    v22[0] = &v24;
    v22[1] = i;
    v21 = 0;
    sub_10003EAD4(v22, &v21);
    if (xpc_get_type(v21) == &_xpc_type_dictionary)
    {
      __p[0] = 0;
      __p[1] = 0;
      v20 = 0;
      object[0] = &v21;
      object[1] = a3;
      sub_100006354(object, &v18);
      read_rest_value();
      xpc_release(v18);
      object[0] = &v21;
      object[1] = a4;
      sub_100006354(object, &v18);
      v14 = xpc::dyn_cast_or_default(&v18, 0, v13);
      xpc_release(v18);
      if (SHIBYTE(v20) < 0)
      {
        sub_100005F2C(object, __p[0], __p[1]);
      }

      else
      {
        *object = *__p;
        v16 = v20;
      }

      v17 = v14;
      sub_10024DD88(a1, object, object);
      if (SHIBYTE(v16) < 0)
      {
        operator delete(object[0]);
      }

      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p[0]);
      }
    }

    xpc_release(v21);
  }

  xpc_release(v23[0]);
  xpc_release(v24);
  xpc_release(v9);
}

void sub_100829444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, xpc_object_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, xpc_object_t a24, uint64_t a25, uint64_t a26, xpc_object_t a27)
{
  xpc_release(object);
  xpc_release(*(v28 - 80));
  xpc_release(v27);
  _Unwind_Resume(a1);
}

void sub_100829524(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, xpc_object_t *a4@<X8>)
{
  v8 = xpc_array_create(0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v8) == &_xpc_type_array)
    {
      xpc_retain(v8);
      v9 = v8;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v8 = 0;
  }

  xpc_release(v8);
  v12 = *a1;
  v10 = a1 + 1;
  v11 = v12;
  if (v12 != v10)
  {
    do
    {
      value = 0;
      v13 = xpc_dictionary_create(0, 0, 0);
      v14 = v13;
      if (v13)
      {
        value = v13;
      }

      else
      {
        v14 = xpc_null_create();
        value = v14;
        if (!v14)
        {
          v15 = xpc_null_create();
          v14 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v14) != &_xpc_type_dictionary)
      {
        v15 = xpc_null_create();
LABEL_15:
        value = v15;
        goto LABEL_16;
      }

      xpc_retain(v14);
LABEL_16:
      xpc_release(v14);
      write_rest_value();
      p_value = &value;
      v22 = a2;
      sub_10000F688(&p_value, &v23, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v23);
      v23 = 0;
      v19 = xpc_BOOL_create(*(v11 + 56));
      if (!v19)
      {
        v19 = xpc_null_create();
      }

      p_value = &value;
      v22 = a3;
      sub_10000F688(&p_value, &v19, &v20);
      xpc_release(v20);
      v20 = 0;
      xpc_release(v19);
      v19 = 0;
      xpc_array_append_value(v9, value);
      xpc_release(value);
      v16 = v11[1];
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
          v17 = v11[2];
          v18 = *v17 == v11;
          v11 = v17;
        }

        while (!v18);
      }

      v11 = v17;
    }

    while (v17 != v10);
  }

  *a4 = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *a4 = xpc_null_create();
  }

  xpc_release(v9);
}

void sub_100829794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v16);
  _Unwind_Resume(a1);
}

uint64_t asString@<X0>(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *__p = 0u;
  v17 = 0u;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v13 = 0u;
  sub_10000C320(&v13);
  if (*a1)
  {
    v4 = "on";
  }

  else
  {
    v4 = "off";
  }

  if (*a1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  v6 = sub_10000C030(&v14, v4, v5);
  v7 = sub_10000C030(v6, "[", 1);
  v8 = asString();
  v9 = strlen(v8);
  v10 = sub_10000C030(v7, v8, v9);
  sub_10000C030(v10, "]", 1);
  sub_100061574(&v13, a2);
  *&v14 = v11;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void write_rest_value(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v17 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v17 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v17 = v6;
LABEL_9:
  xpc_release(v5);
  v15 = xpc_BOOL_create(*a1);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  v13 = &v17;
  v14 = "state";
  sub_10000F688(&v13, &v15, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v15);
  v15 = 0;
  v7 = *(a1 + 4);
  v8 = asString();
  ctu::rest::detail::write_enum_string_value(v7, v8, v9);
  v13 = &v17;
  v14 = "rawState";
  sub_10000F688(&v13, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  v10 = v17;
  *a2 = v17;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v17);
}

{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v14 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v14 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v14 = v6;
LABEL_9:
  xpc_release(v5);
  v12 = xpc_BOOL_create(*a1);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v10 = &v14;
  v11 = "allowed";
  sub_10000F688(&v10, &v12, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v12);
  v12 = 0;
  if (*(a1 + 48) == 1)
  {
    sub_1001E6628((a1 + 8), &v8);
    v10 = &v14;
    v11 = "properties";
    sub_10000F688(&v10, &v8, &v9);
    xpc_release(v9);
    v9 = 0;
    xpc_release(v8);
    v8 = 0;
  }

  v7 = v14;
  *a2 = v14;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v14);
}

uint64_t asString@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v19 = 0u;
  sub_10000C320(&v19);
  sub_10000C030(&v20, "[", 1);
  v6 = *a1;
  v4 = a1 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      sub_10000C030(&v20, "(category ", 10);
      v7 = std::ostream::operator<<();
      v8 = sub_10000C030(v7, ": ", 2);
      asString(v5 + 40, __p);
      if ((v18 & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((v18 & 0x80u) == 0)
      {
        v10 = v18;
      }

      else
      {
        v10 = __p[1];
      }

      v11 = sub_10000C030(v8, v9, v10);
      sub_10000C030(v11, "),", 2);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }

      v12 = v5[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v5[2];
          v14 = *v13 == v5;
          v5 = v13;
        }

        while (!v14);
      }

      v5 = v13;
    }

    while (v13 != v4);
  }

  sub_10000C030(&v20, "]", 1);
  sub_100061574(&v19, a2);
  *&v20 = v15;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[1]);
  }

  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10082A04C(void *a1, xpc_object_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 + 1;
  sub_10006DCAC(a1, a1[1]);
  *a1 = v8;
  a1[2] = 0;
  *v8 = 0;
  v9 = *a2;
  if (v9 && xpc_get_type(v9) == &_xpc_type_array)
  {
    xpc_retain(v9);
    object[0] = v9;
  }

  else
  {
    v9 = xpc_null_create();
    object[0] = v9;
    if (!v9)
    {
      v9 = 0;
      object[0] = xpc_null_create();
      v10 = 1;
      goto LABEL_7;
    }
  }

  xpc_retain(v9);
  v10 = 0;
LABEL_7:
  sub_100008EA4(&v21, object, 0);
  xpc_release(object[0]);
  v19[0] = v9;
  if (v10)
  {
    v19[0] = xpc_null_create();
  }

  else
  {
    xpc_retain(v9);
  }

  if (xpc_get_type(v9) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v9);
  }

  else
  {
    count = 0;
  }

  sub_100008EA4(object, v19, count);
  xpc_release(v19[0]);
  for (i = v22; i != object[1] || v21 != object[0]; i = ++v22)
  {
    v19[0] = &v21;
    v19[1] = i;
    v18 = 0;
    sub_10003EAD4(v19, &v18);
    if (xpc_get_type(v18) == &_xpc_type_dictionary)
    {
      v17 = 0;
      *&v15 = &v18;
      *(&v15 + 1) = a3;
      sub_100006354(&v15, &v16);
      v14 = xpc::dyn_cast_or_default(&v16, 0, v13);
      xpc_release(v16);
      *&v15 = &v18;
      *(&v15 + 1) = a4;
      sub_100006354(&v15, &v16);
      read_rest_value(&v17, &v16);
      xpc_release(v16);
      *&v15 = v14;
      *(&v15 + 1) = v17;
      sub_10024E018(a1, &v15, &v15);
    }

    xpc_release(v18);
  }

  xpc_release(object[0]);
  xpc_release(v21);
  xpc_release(v9);
}

void sub_10082A27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, uint64_t a13, xpc_object_t a14, xpc_object_t object, uint64_t a16, xpc_object_t a17, uint64_t a18, xpc_object_t a19)
{
  xpc_release(object);
  xpc_release(a19);
  xpc_release(v19);
  _Unwind_Resume(a1);
}

void sub_10082A31C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, xpc_object_t *a4@<X8>)
{
  v8 = xpc_array_create(0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v8) == &_xpc_type_array)
    {
      xpc_retain(v8);
      v9 = v8;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v8 = 0;
  }

  xpc_release(v8);
  v12 = *a1;
  v10 = a1 + 1;
  v11 = v12;
  if (v12 != v10)
  {
    do
    {
      value = 0;
      v13 = xpc_dictionary_create(0, 0, 0);
      v14 = v13;
      if (v13)
      {
        value = v13;
      }

      else
      {
        v14 = xpc_null_create();
        value = v14;
        if (!v14)
        {
          v15 = xpc_null_create();
          v14 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v14) != &_xpc_type_dictionary)
      {
        v15 = xpc_null_create();
LABEL_15:
        value = v15;
        goto LABEL_16;
      }

      xpc_retain(v14);
LABEL_16:
      xpc_release(v14);
      v23 = xpc_uint64_create(v11[4]);
      if (!v23)
      {
        v23 = xpc_null_create();
      }

      p_value = &value;
      v22 = a2;
      sub_10000F688(&p_value, &v23, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v23);
      v23 = 0;
      write_rest_value((v11 + 5), &v19);
      p_value = &value;
      v22 = a3;
      sub_10000F688(&p_value, &v19, &v20);
      xpc_release(v20);
      v20 = 0;
      xpc_release(v19);
      v19 = 0;
      xpc_array_append_value(v9, value);
      xpc_release(value);
      v16 = v11[1];
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
          v17 = v11[2];
          v18 = *v17 == v11;
          v11 = v17;
        }

        while (!v18);
      }

      v11 = v17;
    }

    while (v17 != v10);
  }

  *a4 = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *a4 = xpc_null_create();
  }

  xpc_release(v9);
}

void sub_10082A58C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v16);
  _Unwind_Resume(a1);
}

void sub_10082A5C4(uint64_t a1, xpc_object_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = (a1 + 8);
  sub_100246FAC(a1, *(a1 + 8));
  *a1 = v8;
  *(a1 + 16) = 0;
  *v8 = 0;
  v9 = *a2;
  if (*a2 && xpc_get_type(v9) == &_xpc_type_array)
  {
    xpc_retain(v9);
    object = v9;
    goto LABEL_6;
  }

  v9 = xpc_null_create();
  object = v9;
  if (v9)
  {
LABEL_6:
    xpc_retain(v9);
    v10 = 0;
    goto LABEL_7;
  }

  v9 = 0;
  object = xpc_null_create();
  v10 = 1;
LABEL_7:
  sub_100008EA4(&v25, &object, 0);
  xpc_release(object);
  object = v9;
  if (v10)
  {
    object = xpc_null_create();
  }

  else
  {
    xpc_retain(v9);
  }

  if (xpc_get_type(v9) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v9);
  }

  else
  {
    count = 0;
  }

  sub_100008EA4(v24, &object, count);
  xpc_release(object);
  for (i = v26; i != v24[1] || v25 != v24[0]; i = ++v26)
  {
    v23[0] = &v25;
    v23[1] = i;
    v22 = 0;
    sub_10003EAD4(v23, &v22);
    if (xpc_get_type(v22) == &_xpc_type_dictionary)
    {
      __p = 0uLL;
      v21 = 0;
      v19[0] = 0;
      v19[1] = 0;
      v18 = v19;
      object = &v22;
      v14 = a3;
      sub_100006354(&object, &v17);
      read_rest_value();
      xpc_release(v17);
      object = &v22;
      v14 = a4;
      sub_100006354(&object, &v17);
      sub_10082A04C(&v18, &v17, "AppCategoryID", "State");
      xpc_release(v17);
      sub_10082B7C4(&object, &__p, &v18);
      sub_10024E0E4(a1, &object, &object);
      sub_10006DCAC(v16, v16[1]);
      if (v15 < 0)
      {
        operator delete(object);
      }

      sub_10006DCAC(&v18, v19[0]);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p);
      }
    }

    xpc_release(v22);
  }

  xpc_release(v24[0]);
  xpc_release(v25);
  xpc_release(v9);
}

void sub_10082A86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, xpc_object_t a26)
{
  xpc_release(object);
  xpc_release(*(v26 - 104));
  xpc_release(a9);
  _Unwind_Resume(a1);
}

void sub_10082A950(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, xpc_object_t *a4@<X8>)
{
  v8 = xpc_array_create(0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v8) == &_xpc_type_array)
    {
      xpc_retain(v8);
      v9 = v8;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v8 = 0;
  }

  xpc_release(v8);
  v12 = *a1;
  v10 = a1 + 1;
  v11 = v12;
  if (v12 != v10)
  {
    do
    {
      value = 0;
      v13 = xpc_dictionary_create(0, 0, 0);
      v14 = v13;
      if (v13)
      {
        value = v13;
      }

      else
      {
        v14 = xpc_null_create();
        value = v14;
        if (!v14)
        {
          v15 = xpc_null_create();
          v14 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v14) != &_xpc_type_dictionary)
      {
        v15 = xpc_null_create();
LABEL_15:
        value = v15;
        goto LABEL_16;
      }

      xpc_retain(v14);
LABEL_16:
      xpc_release(v14);
      write_rest_value();
      p_value = &value;
      v22 = a2;
      sub_10000F688(&p_value, &v23, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v23);
      v23 = 0;
      sub_10082A31C(v11 + 7, "AppCategoryID", "State", &v19);
      p_value = &value;
      v22 = a3;
      sub_10000F688(&p_value, &v19, &v20);
      xpc_release(v20);
      v20 = 0;
      xpc_release(v19);
      v19 = 0;
      xpc_array_append_value(v9, value);
      xpc_release(value);
      v16 = v11[1];
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
          v17 = v11[2];
          v18 = *v17 == v11;
          v11 = v17;
        }

        while (!v18);
      }

      v11 = v17;
    }

    while (v17 != v10);
  }

  *a4 = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *a4 = xpc_null_create();
  }

  xpc_release(v9);
}

void sub_10082ABCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v16);
  _Unwind_Resume(a1);
}

void read_rest_value(_BYTE *a1, xpc_object_t *a2)
{
  LOBYTE(v9) = 0;
  LOBYTE(v10) = 0;
  v13 = 0;
  *a1 = 0;
  v4 = (a1 + 8);
  sub_10082B670((a1 + 8), &v10);
  if (v13 == 1)
  {
    v14 = v11;
    sub_1000087B4(&v14);
  }

  v5 = *a2;
  v8 = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
    v8 = v5;
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    v9 = &v8;
    v10 = "allowed";
    sub_100006354(&v9, &v14);
    *a1 = xpc::dyn_cast_or_default(&v14, 0, v6);
    xpc_release(v14);
    object = 0;
    v9 = &v8;
    v10 = "properties";
    sub_100006354(&v9, &object);
    if (xpc_get_type(object) != &_xpc_type_null)
    {
      LODWORD(v9) = 1;
      v11[0] = 0;
      v11[1] = 0;
      v10 = 0;
      v12 = 0;
      sub_10082ADEC(v4, &v9);
      v14 = &v10;
      sub_1000087B4(&v14);
      sub_1001E6408(v4, &object);
    }

    xpc_release(object);
    v5 = v8;
  }

  xpc_release(v5);
}

void sub_10082AD7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  *(v11 - 40) = v10;
  sub_1000087B4((v11 - 40));
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_10082ADEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = (a2 + 8);
  *a1 = *a2;
  if (v4 == 1)
  {
    sub_100071A6C(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    v6 = *(a2 + 32);
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *v5 = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v6 = *(a2 + 32);
    *(a1 + 40) = 1;
  }

  *(a1 + 32) = v6;
  return a1;
}

void sub_10082B050(uint64_t a1, xpc_object_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = (a1 + 8);
  sub_100246E7C(a1, *(a1 + 8));
  *a1 = v8;
  *(a1 + 16) = 0;
  *v8 = 0;
  v9 = *a2;
  if (v9 && xpc_get_type(v9) == &_xpc_type_array)
  {
    xpc_retain(v9);
    object = v9;
    goto LABEL_6;
  }

  v9 = xpc_null_create();
  object = v9;
  if (v9)
  {
LABEL_6:
    xpc_retain(v9);
    v10 = 0;
    goto LABEL_7;
  }

  v9 = 0;
  object = xpc_null_create();
  v10 = 1;
LABEL_7:
  sub_100008EA4(&v25, &object, 0);
  xpc_release(object);
  object = v9;
  if (v10)
  {
    object = xpc_null_create();
  }

  else
  {
    xpc_retain(v9);
  }

  if (xpc_get_type(v9) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v9);
  }

  else
  {
    count = 0;
  }

  sub_100008EA4(v24, &object, count);
  xpc_release(object);
  for (i = v26; i != v24[1] || v25 != v24[0]; i = ++v26)
  {
    v23[0] = &v25;
    v23[1] = i;
    v22 = 0;
    sub_10003EAD4(v23, &v22);
    if (xpc_get_type(v22) == &_xpc_type_dictionary)
    {
      __p = 0uLL;
      v21 = 0;
      v19 = 0;
      memset(v18, 0, sizeof(v18));
      v17 = 0u;
      object = &v22;
      v14 = a3;
      sub_100006354(&object, &v27);
      read_rest_value();
      xpc_release(v27);
      object = &v22;
      v14 = a4;
      sub_100006354(&object, &v27);
      read_rest_value(&v17, &v27);
      xpc_release(v27);
      sub_10082B840(&object, &__p, &v17);
      sub_10024E504(a1, &object, &object);
      if (v16[32] == 1)
      {
        v27 = v16;
        sub_1000087B4(&v27);
      }

      if (v15 < 0)
      {
        operator delete(object);
      }

      if (v19 == 1)
      {
        object = v18;
        sub_1000087B4(&object);
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p);
      }
    }

    xpc_release(v22);
  }

  xpc_release(v24[0]);
  xpc_release(v25);
  xpc_release(v9);
}

void sub_10082B300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  xpc_release(object);
  xpc_release(*(v32 - 104));
  xpc_release(v31);
  _Unwind_Resume(a1);
}

void sub_10082B3F0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, xpc_object_t *a4@<X8>)
{
  v8 = xpc_array_create(0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v8) == &_xpc_type_array)
    {
      xpc_retain(v8);
      v9 = v8;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v8 = 0;
  }

  xpc_release(v8);
  v12 = *a1;
  v10 = a1 + 1;
  v11 = v12;
  if (v12 != v10)
  {
    do
    {
      value = 0;
      v13 = xpc_dictionary_create(0, 0, 0);
      v14 = v13;
      if (v13)
      {
        value = v13;
      }

      else
      {
        v14 = xpc_null_create();
        value = v14;
        if (!v14)
        {
          v15 = xpc_null_create();
          v14 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v14) != &_xpc_type_dictionary)
      {
        v15 = xpc_null_create();
LABEL_15:
        value = v15;
        goto LABEL_16;
      }

      xpc_retain(v14);
LABEL_16:
      xpc_release(v14);
      write_rest_value();
      p_value = &value;
      v22 = a2;
      sub_10000F688(&p_value, &v23, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v23);
      v23 = 0;
      write_rest_value((v11 + 7), &v19);
      p_value = &value;
      v22 = a3;
      sub_10000F688(&p_value, &v19, &v20);
      xpc_release(v20);
      v20 = 0;
      xpc_release(v19);
      v19 = 0;
      xpc_array_append_value(v9, value);
      xpc_release(value);
      v16 = v11[1];
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
          v17 = v11[2];
          v18 = *v17 == v11;
          v11 = v17;
        }

        while (!v18);
      }

      v11 = v17;
    }

    while (v17 != v10);
  }

  *a4 = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *a4 = xpc_null_create();
  }

  xpc_release(v9);
}

void sub_10082B64C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v16);
  _Unwind_Resume(a1);
}

__n128 sub_10082B670(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40))
  {
    if (*(a1 + 40))
    {
      *a1 = *a2;
      sub_100071A6C(a1 + 8);
      result = *(a2 + 8);
      *(a1 + 8) = result;
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a1 + 32) = *(a2 + 32);
    }
  }

  else if (*(a1 + 40))
  {
    v5 = (a1 + 8);
    sub_1000087B4(&v5);
    *(a1 + 40) = 0;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    result = *(a2 + 8);
    *(a1 + 8) = result;
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = 1;
  }

  return result;
}

void *sub_10082B738(void *__dst, __int128 *a2, int *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  v6 = *a3;
  *(__dst + 28) = *(a3 + 4);
  *(__dst + 6) = v6;
  sub_10006F264(__dst + 32, (a3 + 2));
  return __dst;
}

void sub_10082B7A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10082B7C4(void *__dst, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  sub_10024E348(__dst + 3, a3);
  return __dst;
}

void sub_10082B824(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10082B840(void *__dst, __int128 *a2, _BYTE *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  *(__dst + 24) = *a3;
  sub_10024E78C((__dst + 4), (a3 + 8));
  return __dst;
}

void sub_10082B8A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10082B8C4(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, NSObject **a5, int a6)
{
  v10 = a2[1];
  v19 = *a2;
  v20 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a5;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = "DATA.Connection.UT.X";
  v13 = *(*a3 + 52);
  if (v13 == 2)
  {
    v12 = "DATA.Connection.UT.2";
  }

  v14 = "UT.X";
  if (v13 == 2)
  {
    v14 = "UT.2";
  }

  if (v13 == 1)
  {
    v15 = "DATA.Connection.UT.1";
  }

  else
  {
    v15 = v12;
  }

  if (v13 == 1)
  {
    v16 = "UT.1";
  }

  else
  {
    v16 = v14;
  }

  sub_1009679C4(a1, &off_101E88248, &v19, a3, a4, &object, v15, v16, a6);
  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  *a1 = off_101E877E8;
  a1[8] = off_101E87D48;
  a1[9] = off_101E87FE8;
  a1[10] = off_101E881D0;
  return a1;
}

void sub_10082BA50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  PersonalitySpecific::~PersonalitySpecific(v12);
  _Unwind_Resume(a1);
}

void sub_10082BA7C(uint64_t a1)
{
  sub_10096807C(a1, &off_101E88248);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10082BAAC(uint64_t a1)
{
  sub_10096807C(a1 - 64, &off_101E88248);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10082BAE0(uint64_t a1)
{
  sub_10096807C(a1 - 72, &off_101E88248);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10082BB14(uint64_t a1)
{
  sub_10096807C(a1 - 80, &off_101E88248);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10082BB48(uint64_t a1)
{
  sub_10096807C(a1, &off_101E88248);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

ctu::OsLogLogger *sub_10082BBD4(ctu::OsLogLogger *a1)
{
  ctu::OsLogContext::OsLogContext(&v3, kCtLoggingSystemName, "lazuli.text/plain");
  ctu::OsLogLogger::OsLogLogger(v4, &v3);
  ctu::OsLogLogger::OsLogLogger(a1, v4);
  ctu::OsLogLogger::~OsLogLogger(v4);
  ctu::OsLogContext::~OsLogContext(&v3);
  sub_100C180E4(a1 + 8);
  *(a1 + 48) = 0;
  sub_100917CB8(a1 + 7);
  return a1;
}

void sub_10082BC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (*(v12 + 31) < 0)
  {
    operator delete(*(v12 + 8));
  }

  ctu::OsLogLogger::~OsLogLogger(v12);
  _Unwind_Resume(a1);
}

uint64_t sub_10082BCA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  *__src = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  sub_10000C320(&v19);
  sub_1000D0C38(&v19, "Content-Type", off_101E97778);
  sub_1000D0C38(&v19, "Content-Disposition", &off_101E89018);
  v4 = (a1 + 8);
  memset(&__p, 0, sizeof(__p));
  if (*(a1 + 48) == 1)
  {
    v5 = *(a1 + 31);
    if (v5 < 0)
    {
      v4 = *(a1 + 8);
      v5 = *(a1 + 16);
    }

    __dst = 0;
    v16 = 0;
    v17 = 0;
    sub_1001E0D88(&__dst, v4, v4 + v5, v5);
    ctu::base64::encode();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v14;
    sub_1000D0C38(&v19, "Content-Transfer-Encoding", off_101E97770);
    if (__dst)
    {
      v16 = __dst;
      operator delete(__dst);
    }
  }

  else
  {
    std::string::operator=(&__p, v4);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  __dst = size;
  sub_1000D0D2C(&v19, "Content-Length", &__dst);
  sub_100917E0C(&v19);
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
    v8 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v8 = __p.__r_.__value_.__l.__size_;
  }

  sub_10000C030(&v20, p_p, v8);
  if ((BYTE8(v26) & 0x10) != 0)
  {
    v10 = v26;
    if (v26 < __src[1])
    {
      *&v26 = __src[1];
      v10 = __src[1];
    }

    v11 = __src[0];
  }

  else
  {
    if ((BYTE8(v26) & 8) == 0)
    {
      v9 = 0;
      HIBYTE(v17) = 0;
      goto LABEL_30;
    }

    v11 = *(&v21 + 1);
    v10 = *(&v22 + 1);
  }

  v9 = v10 - v11;
  if ((v10 - v11) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v17) = v10 - v11;
  if (v9)
  {
    memmove(&__dst, v11, v9);
  }

LABEL_30:
  *(&__dst + v9) = 0;
  sub_100C180E0(a2, &__dst);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *&v20 = v12;
  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[1]);
  }

  std::locale::~locale(&v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10082C070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *__p, uint64_t a6, int a7, __int16 a8, char a9, char a10, void *a11, uint64_t a12, void *a13, uint64_t a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t _A8, uint64_t _B0, uint64_t _B8, uint64_t a34, ...)
{
  if (a13)
  {
    operator delete(a13);
  }

  if (SHIBYTE(a21) < 0)
  {
    operator delete(a19);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_10082C0EC(void *result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = result + 1;
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (*(v6 + 8))
    {
      v8 = *(v6 + 8);
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          std::string::operator=((v8 + 7), (v9 + 7));
          sub_10082C260(v5, v14);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_1000685CC(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_100173490(&v12);
  }

  if (a2 != a3)
  {
    sub_10082C2E4(v5);
  }

  return result;
}

void sub_10082C24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100173490(va);
  _Unwind_Resume(a1);
}

uint64_t ***sub_10082C260(uint64_t a1, uint64_t ***a2)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!sub_1009172C4(a2 + 4, v4 + 32))
        {
          break;
        }

        v4 = *v5;
        v6 = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    v6 = v5 + 1;
  }

  else
  {
    v6 = (a1 + 8);
  }

LABEL_8:
  sub_1000070DC(a1, v5, v6, a2);
  return a2;
}

void sub_10082C2E4(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  sub_1006A3690();
}

void sub_10082C390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000DFA0C(va);
  _Unwind_Resume(a1);
}

void *sub_10082C3A4(void *a1, void *a2)
{
  sub_10000501C(__p, "commCenterSwitchState");
  AnalyticsEvent::AnalyticsEvent(a1, __p, a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &off_101E89030;
  return a1;
}

void sub_10082C420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10082C448(void **a1)
{
  AnalyticsEvent::~AnalyticsEvent(a1);

  operator delete();
}

void sub_10082C480(uint64_t a1, uint64_t a2)
{
  if (!a2 || a2 == 3)
  {
    return;
  }

  v4 = analytics::simSlotAsSubsId();
  v22 = xpc_int64_create(v4);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  v5 = a1 + 32;
  __p[0] = (a1 + 32);
  __p[1] = "subs_id";
  sub_10000F688(__p, &v22, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v22);
  v22 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 40));
  v7 = ServiceMap;
  if (v8 < 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, __p);
  if (!v12)
  {
    v14 = 0;
LABEL_13:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    if (!v14)
    {
      goto LABEL_11;
    }

LABEL_14:
    (*(*v14 + 16))(__p, v14, a2);
    goto LABEL_15;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
  if (v14)
  {
    goto LABEL_14;
  }

LABEL_11:
  sub_10000501C(__p, "");
LABEL_15:
  if (v19 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  v20 = xpc_string_create(v16);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  v17[0] = v5;
  v17[1] = "carrierName";
  sub_10000F688(v17, &v20, &v21);
  xpc_release(v21);
  v21 = 0;
  xpc_release(v20);
  v20 = 0;
  if (v19 < 0)
  {
    operator delete(__p[0]);
    if (v15)
    {
      return;
    }
  }

  else if (v15)
  {
    return;
  }

  sub_100004A34(v13);
}

void sub_10082C69C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10082C6C4(uint64_t a1, char *string)
{
  if (string[23] < 0)
  {
    string = *string;
  }

  v4 = xpc_string_create(string);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = a1 + 32;
  v3[1] = "status";
  sub_10000F688(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

void sub_10082C754(uint64_t a1, char *string)
{
  if (string[23] < 0)
  {
    string = *string;
  }

  v4 = xpc_string_create(string);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = a1 + 32;
  v3[1] = "switchName";
  sub_10000F688(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

void entitlements::WebServiceDelegate::~WebServiceDelegate(entitlements::WebServiceDelegate *this)
{
  *this = off_101E89068;
  v1 = *(this + 2);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

{
  *this = off_101E89068;
  v1 = *(this + 2);
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t entitlements::WebServiceDelegate::forwardTransferAuthorizationPostRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 24))
  {
    return 0;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    codec::encode<entitlements::WebServiceRequest>(__p, a3);
    sub_10082DD7C(v16, a5);
    v9 = entitlements::WebServiceDelegate::impl::forwardTransferAuthorizationPostRequest(v6, a2, __p, a4, v16);
    sub_10029C318(v16);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v14[0] = 0;
    v15 = 0;
    v13 = 0;
    sub_10082CA68(a5, v14, 0);
    if (v15 == 1)
    {
      sub_100284EB4(v14);
    }

    return 1;
  }

  return v9;
}

void sub_10082CA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  if (a52 == 1)
  {
    sub_100284EB4(&a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10082CA68(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t entitlements::WebServiceDelegate::impl::forwardTransferAuthorizationPostRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 24))
  {
    if ((atomic_load_explicit(&qword_101FBACB8, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_101FBACB8))
      {
        sub_1000DCEE0(v9, "Content-Type", "application/json");
        sub_1000DF684(qword_101FBACA0, v9, 1);
        sub_1000D6F38(v9);
        __cxa_atexit(sub_10082D150, qword_101FBACA0, &_mh_execute_header);
        __cxa_guard_release(&qword_101FBACB8);
      }
    }

    sub_10082DEAC(v7, a5);
    v8 = 0;
    operator new();
  }

  return 0;
}

void sub_10082CC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1000D6F38(va);
  __cxa_guard_abort(&qword_101FBACB8);
  _Unwind_Resume(a1);
}

uint64_t entitlements::WebServiceDelegate::forwardTransferSIMServicePostRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 24))
  {
    return 0;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    codec::encode<entitlements::WebServiceRequest>(v12, a3);
    sub_10082DE14(v31, a5);
    v9 = entitlements::WebServiceDelegate::impl::forwardTransferSIMServicePostRequest(v6, a2, v12, a4, v31);
    sub_10029CBE0(v31);
    if (v13 < 0)
    {
      v10 = v12[0];
LABEL_20:
      operator delete(v10);
    }
  }

  else
  {
    v16[0] = 0;
    v30 = 0;
    v14 = 0;
    v15 = 0;
    sub_10082CE74(a5, v16, 0);
    if (v30 != 1)
    {
      return 1;
    }

    if (v29 < 0)
    {
      operator delete(__p);
    }

    if (v27 < 0)
    {
      operator delete(v26);
    }

    if (v25 == 1 && v24 < 0)
    {
      operator delete(v23);
    }

    if (v22 == 1 && v21 < 0)
    {
      operator delete(v20);
    }

    v9 = 1;
    if (v19 == 1 && v18 < 0)
    {
      v10 = v17;
      goto LABEL_20;
    }
  }

  return v9;
}

void sub_10082CE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, char a18)
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_100276FF0(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_10082CE74(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t entitlements::WebServiceDelegate::impl::forwardTransferSIMServicePostRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 24))
  {
    if ((atomic_load_explicit(&qword_101FBACD8, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_101FBACD8))
      {
        sub_1000DCEE0(v9, "Content-Type", "application/json");
        sub_1000DF684(dword_101FBACC0, v9, 1);
        sub_1000D6F38(v9);
        __cxa_atexit(sub_10082D150, dword_101FBACC0, &_mh_execute_header);
        __cxa_guard_release(&qword_101FBACD8);
      }
    }

    sub_10082ED34(v7, a5);
    v8 = 0;
    operator new();
  }

  return 0;
}

void sub_10082D064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1000D6F38(va);
  __cxa_guard_abort(&qword_101FBACD8);
  _Unwind_Resume(a1);
}

uint64_t entitlements::WebServiceDelegate::impl::impl(uint64_t a1, NSObject **a2, void *a3)
{
  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, "cp.tr.http");
  sub_1001303E4(a1, a2, &v8);
  ctu::OsLogContext::~OsLogContext(&v8);
  v6 = a3[1];
  *(a1 + 40) = *a3;
  *(a1 + 48) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

BOOL entitlements::WebServiceDelegate::impl::processPostRequest(uint64_t a1, void **a2, uint64_t a3, char *a4, _DWORD *a5, uint64_t a6)
{
  v6 = *(a6 + 24);
  if (!v6)
  {
    return v6 != 0;
  }

  v13 = *(a1 + 56) + 1;
  *(a1 + 56) = v13;
  v14 = *(a1 + 32);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }

    if (a4[23] >= 0)
    {
      v16 = a4;
    }

    else
    {
      v16 = *a4;
    }

    *buf = 67109634;
    *&buf[4] = v13;
    *&buf[8] = 2082;
    *&buf[10] = v15;
    *&buf[18] = 2080;
    *&buf[20] = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I -----> web service request [%d]. url:%{public}s data:%s", buf, 0x1Cu);
  }

  v38 = v13;
  ServiceMap = Registry::getServiceMap(*(a1 + 40));
  v18 = ServiceMap;
  if ((v19 & 0x8000000000000000) != 0)
  {
    v20 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
    v21 = 5381;
    do
    {
      v19 = v21;
      v22 = *v20++;
      v21 = (33 * v21) ^ v22;
    }

    while (v22);
  }

  std::mutex::lock(ServiceMap);
  v45 = v19;
  v23 = sub_100009510(&v18[1].__m_.__sig, &v45);
  v39 = a5;
  v40 = a3;
  if (v23)
  {
    v25 = v23[3];
    v24 = v23[4];
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v18);
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v24);
      v26 = 0;
      goto LABEL_18;
    }
  }

  else
  {
    v25 = 0;
  }

  std::mutex::unlock(v18);
  v24 = 0;
  v26 = 1;
LABEL_18:
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, a2[1]);
  }

  else
  {
    *__dst = *a2;
    v44 = a2[2];
  }

  (*(*v25 + 16))(buf, v25, 3, __dst, v40);
  v27 = *buf;
  *buf = 0;
  *&buf[8] = 0;
  v28 = *(a1 + 72);
  *(a1 + 64) = v27;
  if (v28)
  {
    sub_100004A34(v28);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(__dst[0]);
    if (v26)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ((v26 & 1) == 0)
  {
LABEL_26:
    sub_100004A34(v24);
  }

LABEL_27:
  (*(**(a1 + 64) + 8))(*(a1 + 64), *(a1 + 16));
  v29 = *(a1 + 64);
  v30 = a4[23];
  if (v30 >= 0)
  {
    v31 = a4;
  }

  else
  {
    v31 = *a4;
  }

  if (v30 >= 0)
  {
    v32 = a4[23];
  }

  else
  {
    v32 = *(a4 + 1);
  }

  memset(buf, 0, 24);
  sub_1001E0D88(buf, v31, &v31[v32], v32);
  (*(*v29 + 56))(v29, buf);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  LODWORD(v33) = *v39;
  (*(**(a1 + 64) + 96))(*(a1 + 64), v33);
  (*(**(a1 + 64) + 224))(*(a1 + 64), *v39);
  v34 = *(a1 + 64);
  sub_10000501C(buf, "com.apple.CommCenter.CellularPlanProvisioning");
  (*(*v34 + 160))(v34, buf);
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  v35 = *(a1 + 64);
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3321888768;
  v46[2] = sub_10082D6BC;
  v46[3] = &unk_101E89088;
  v46[4] = a1;
  sub_10082F6D4(v47, a6);
  v47[8] = v38;
  (*(*v35 + 16))(v35, v46);
  v36 = *(a1 + 64);
  __p[1] = 0;
  v42 = 0;
  __p[0] = 0;
  (*(*v36 + 40))(v36, __p);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  sub_10082ECB4(v47);
  return v6 != 0;
}

void sub_10082D620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_10082D6BC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (!*a2)
  {
    sub_10000501C(v27, "");
    v10 = a2[1];
    v24 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10082DB58(a1 + 40, 0, v27, 1);
    v11 = v24;
    if (!v24)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if ((*(**a2 + 16))(*a2) != 1)
  {
    v13 = ctu::OsLogContext::OsLogContext(v27, kCtLoggingSystemName, "cp.tr.http");
    v14 = v28;
    ctu::OsLogContext::~OsLogContext(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      (*(**a2 + 16))();
      ctu::Http::asString();
      v15 = v29 >= 0 ? v27 : *v27;
      *buf = 136446210;
      v26[0] = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "HTTP Error: %{public}s", buf, 0xCu);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(*v27);
      }
    }

    sub_10000501C(v27, "");
    v16 = a2[1];
    v23 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10082DB58(a1 + 40, 0, v27, 1);
    v11 = v23;
    if (!v23)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if ((*(**a2 + 24))() == 200)
  {
    *v27 = 0;
    v28 = 0;
    v29 = 0;
    (*(**a2 + 48))(v27);
    v5 = v4[4];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 72);
      v7 = v27;
      if (v29 < 0)
      {
        v7 = *v27;
      }

      *buf = 67109378;
      LODWORD(v26[0]) = v6;
      WORD2(v26[0]) = 2080;
      *(v26 + 6) = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I <----- web service response [%d]. %s", buf, 0x12u);
    }

    v8 = a2[1];
    v21 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10082DB58(a1 + 40, 1, v27, 3);
    if (v21)
    {
      sub_100004A34(v21);
    }

    v9 = v4[9];
    v4[8] = 0;
    v4[9] = 0;
    if (v9)
    {
      sub_100004A34(v9);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(*v27);
    }

    return;
  }

  v17 = ctu::OsLogContext::OsLogContext(v27, kCtLoggingSystemName, "cp.tr.http");
  v18 = v28;
  ctu::OsLogContext::~OsLogContext(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = (*(**a2 + 24))();
    *v27 = 67240192;
    *&v27[4] = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "HTTP Response Code: %{public}d", v27, 8u);
  }

  sub_10000501C(v27, "");
  v20 = a2[1];
  v22 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10082DB58(a1 + 40, 0, v27, 3);
  v11 = v22;
  if (v22)
  {
LABEL_19:
    sub_100004A34(v11);
  }

LABEL_20:
  if (SHIBYTE(v29) < 0)
  {
    operator delete(*v27);
  }

  v12 = v4[9];
  v4[8] = 0;
  v4[9] = 0;
  if (v12)
  {
    sub_100004A34(v12);
  }
}

void sub_10082DADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_101760E98(v12 - 80);
  _Unwind_Resume(a1);
}

uint64_t sub_10082DB58(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v7 = a2;
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  return (*(*v4 + 48))(v4, &v7, a3, &v6);
}

void *sub_10082DC54(void *a1, NSObject **a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E890D8;
  entitlements::WebServiceDelegate::impl::impl((a1 + 3), a2, a3);
  return a1;
}

void sub_10082DCD0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E890D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10082DD24(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 7));

  return sub_1000C0544(a1 + 3);
}

uint64_t sub_10082DD7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10082DE14(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10082DEAC(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void *sub_10082DF2C(void *a1)
{
  *a1 = off_101E89128;
  sub_10029C318((a1 + 1));
  return a1;
}

void sub_10082DF70(void *a1)
{
  *a1 = off_101E89128;
  sub_10029C318((a1 + 1));

  operator delete();
}

void sub_10082E080(void *a1)
{
  sub_10029C318(a1 + 8);

  operator delete(a1);
}

void sub_10082E0BC(uint64_t a1, char *a2, uint64_t a3, int *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *a4;
  v8 = *a5;
  v7 = a5[1];
  *a5 = 0;
  a5[1] = 0;
  if (*(a1 + 32))
  {
    if (v5)
    {
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      codec::decode<entitlements::TransferAuthorizationViaWebServiceResponse>(&v42, a3);
      v10 = kCtLoggingSystemName;
      ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cp.tr.http");
      v11 = *(&buf[0] + 1);
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *&buf[0] = 0x104020200;
        WORD4(buf[0]) = 1026;
        *(buf + 10) = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "success: %{public}d, EventCause: %{public}d", buf, 0xEu);
      }

      ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
      v12 = *(&buf[0] + 1);
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "<----- web service response: {", buf, 2u);
      }

      ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
      v13 = *(&buf[0] + 1);
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        if (BYTE1(v42) == 1)
        {
          v14 = entitlements::asString();
        }

        else
        {
          v14 = "None";
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "\tPreflightState: %{public}s", buf, 0xCu);
      }

      if (v44 == 1)
      {
        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v15 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          if ((v44 & 1) == 0)
          {
            sub_1000D1644();
          }

          v16 = &v42 + 8;
          if (v43 < 0)
          {
            v16 = *(&v42 + 1);
          }

          LODWORD(buf[0]) = 136315138;
          *(buf + 4) = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "\tIccid: %s", buf, 0xCu);
        }
      }

      if (BYTE12(v44) == 1)
      {
        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v17 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          if ((BYTE12(v44) & 1) == 0)
          {
            sub_1000D1644();
          }

          LODWORD(buf[0]) = 67240192;
          DWORD1(buf[0]) = DWORD2(v44);
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "\tReasonCode: %{public}d", buf, 8u);
        }
      }

      if (BYTE8(v46) == 1)
      {
        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v18 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          if ((BYTE8(v46) & 1) == 0)
          {
            sub_1000D1644();
          }

          v19 = &v45;
          if (SBYTE7(v46) < 0)
          {
            v19 = v45;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "\tReasonCodeUrl: %{public}s", buf, 0xCu);
        }
      }

      if (v53 == 1)
      {
        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v20 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "\tTermsAndConditions: {", buf, 2u);
        }

        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v21 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          if ((v53 & 1) == 0)
          {
            sub_1000D1644();
          }

          v22 = BYTE7(v48);
          if (SBYTE7(v48) < 0)
          {
            v22 = *(&v47 + 1);
          }

          if (v22)
          {
            v23 = "Present";
          }

          else
          {
            v23 = "Empty";
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "\t\tMainText: %{public}s", buf, 0xCu);
        }

        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v24 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          if ((v53 & 1) == 0)
          {
            sub_1000D1644();
          }

          v25 = &v48 + 8;
          if (v49 < 0)
          {
            v25 = *(&v48 + 1);
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "\t\tUserChoiceUrl: %{public}s", buf, 0xCu);
        }

        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v26 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          if ((v53 & 1) == 0)
          {
            sub_1000D1644();
          }

          v27 = &v50;
          if (SBYTE7(v51) < 0)
          {
            v27 = v50;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "\t\tAccpetPostData: %{public}s", buf, 0xCu);
        }

        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v28 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          if ((v53 & 1) == 0)
          {
            sub_1000D1644();
          }

          v29 = &v51 + 8;
          if (v52 < 0)
          {
            v29 = *(&v51 + 1);
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "\t\tRejectPostData: %{public}s", buf, 0xCu);
        }

        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v30 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "\t}", buf, 2u);
        }
      }

      if (BYTE8(v58) == 1)
      {
        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v31 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "\tOtpContent: {", buf, 2u);
        }

        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v32 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          if ((BYTE8(v58) & 1) == 0)
          {
            sub_1000D1644();
          }

          v33 = &v53 + 8;
          if (v54 < 0)
          {
            v33 = *(&v53 + 1);
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "\t\tLastFourNumbers: %{public}s", buf, 0xCu);
        }

        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v34 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          if ((BYTE8(v58) & 1) == 0)
          {
            sub_1000D1644();
          }

          v35 = &v55;
          if (SBYTE7(v56) < 0)
          {
            v35 = v55;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = v35;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "\t\tOtpUrl: %{public}s", buf, 0xCu);
        }

        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v36 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          if ((BYTE8(v58) & 1) == 0)
          {
            sub_1000D1644();
          }

          v37 = &v56 + 8;
          if (v57 < 0)
          {
            v37 = *(&v56 + 1);
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "\t\tOtpPostData: %{public}s", buf, 0xCu);
        }

        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v38 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          if ((BYTE8(v58) & 1) == 0)
          {
            sub_1000D1644();
          }

          v39 = entitlements::asString();
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = v39;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "\t\tOtpState: %{public}s", buf, 0xCu);
        }

        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v40 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "\t}", buf, 2u);
        }
      }

      ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
      v41 = *(&buf[0] + 1);
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "}", buf, 2u);
      }

      sub_100299E08(buf, &v42);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10082CA68(a1 + 8, buf, v6);
      if (v7)
      {
        sub_100004A34(v7);
      }

      if (v61 == 1)
      {
        sub_100284EB4(buf);
      }
    }

    else
    {
      LOBYTE(v42) = 0;
      LOBYTE(v59) = 0;
      *&buf[0] = v8;
      *(&buf[0] + 1) = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10082CA68(a1 + 8, &v42, v6);
      if (*(&buf[0] + 1))
      {
        sub_100004A34(*(&buf[0] + 1));
      }
    }

    if (v59 == 1)
    {
      sub_100284EB4(&v42);
    }
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10082EB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a45 == 1)
  {
    sub_100284EB4(&a11);
  }

  if (v45)
  {
    sub_100004A34(v45);
  }

  _Unwind_Resume(a1);
}

void sub_10082EC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48)
{
  if (a48)
  {
    sub_100004A34(a48);
  }

  JUMPOUT(0x10082EC20);
}

void sub_10082EC5C()
{
  if (!v0)
  {
    JUMPOUT(0x10082EC40);
  }

  JUMPOUT(0x10082EC38);
}

uint64_t sub_10082EC68(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10082ECB4(uint64_t a1)
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

uint64_t sub_10082ED34(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void *sub_10082EDB4(void *a1)
{
  *a1 = off_101E891B8;
  sub_10029CBE0((a1 + 1));
  return a1;
}

void sub_10082EDF8(void *a1)
{
  *a1 = off_101E891B8;
  sub_10029CBE0((a1 + 1));

  operator delete();
}

void sub_10082EF08(void *a1)
{
  sub_10029CBE0(a1 + 8);

  operator delete(a1);
}

void sub_10082EF44(uint64_t a1, char *a2, uint64_t a3, int *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *a4;
  v8 = *a5;
  v7 = a5[1];
  *a5 = 0;
  a5[1] = 0;
  if (*(a1 + 32))
  {
    if (v5)
    {
      v36 = 0;
      *v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      *v33 = 0u;
      *v30 = 0u;
      v31 = 0u;
      *v28 = 0u;
      v29 = 0u;
      *v26 = 0u;
      v27 = 0u;
      codec::decode<entitlements::TransferSIMViaWebServiceResponse>(v26, a3);
      v10 = kCtLoggingSystemName;
      ctu::OsLogContext::OsLogContext(&buf, kCtLoggingSystemName, "cp.tr.http");
      v11 = *(&buf + 1);
      ctu::OsLogContext::~OsLogContext(&buf);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<----- web service response: {", &buf, 2u);
      }

      ctu::OsLogContext::OsLogContext(&buf, v10, "cp.tr.http");
      v12 = *(&buf + 1);
      ctu::OsLogContext::~OsLogContext(&buf);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = entitlements::asString();
        LODWORD(buf) = 136446210;
        *(&buf + 4) = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "TransferState: %{public}s", &buf, 0xCu);
      }

      if (LOBYTE(v28[0]) == 1)
      {
        ctu::OsLogContext::OsLogContext(&buf, v10, "cp.tr.http");
        v14 = *(&buf + 1);
        ctu::OsLogContext::~OsLogContext(&buf);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          if ((v28[0] & 1) == 0)
          {
            sub_1000D1644();
          }

          v15 = &v26[1];
          if (v27 < 0)
          {
            v15 = v26[1];
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Iccid: %s", &buf, 0xCu);
        }
      }

      if (LOBYTE(v30[0]) == 1)
      {
        ctu::OsLogContext::OsLogContext(&buf, v10, "cp.tr.http");
        v16 = *(&buf + 1);
        ctu::OsLogContext::~OsLogContext(&buf);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          if ((v30[0] & 1) == 0)
          {
            sub_1000D1644();
          }

          v17 = &v28[1];
          if (v29 < 0)
          {
            v17 = v28[1];
          }

          LODWORD(buf) = 136446210;
          *(&buf + 4) = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "IccidState: %{public}s", &buf, 0xCu);
        }
      }

      if (v32 == 1)
      {
        ctu::OsLogContext::OsLogContext(&buf, v10, "cp.tr.http");
        v18 = *(&buf + 1);
        ctu::OsLogContext::~OsLogContext(&buf);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          if ((v32 & 1) == 0)
          {
            sub_1000D1644();
          }

          v19 = &v30[1];
          if (v31 < 0)
          {
            v19 = v30[1];
          }

          LODWORD(buf) = 136446210;
          *(&buf + 4) = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "AltSmdpFqdn: %{public}s", &buf, 0xCu);
        }
      }

      if (BYTE9(v32) == 1)
      {
        ctu::OsLogContext::OsLogContext(&buf, v10, "cp.tr.http");
        v20 = *(&buf + 1);
        ctu::OsLogContext::~OsLogContext(&buf);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          if ((BYTE9(v32) & 1) == 0)
          {
            sub_1000D1644();
          }

          LODWORD(buf) = 67240192;
          DWORD1(buf) = BYTE8(v32);
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "UseDS: %{public}d", &buf, 8u);
        }
      }

      ctu::OsLogContext::OsLogContext(&buf, v10, "cp.tr.http");
      v21 = *(&buf + 1);
      ctu::OsLogContext::~OsLogContext(&buf);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v33;
        if (SHIBYTE(v34[0]) < 0)
        {
          v22 = v33[0];
        }

        LODWORD(buf) = 136446210;
        *(&buf + 4) = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "ReasonCode: %{public}s", &buf, 0xCu);
      }

      ctu::OsLogContext::OsLogContext(&buf, v10, "cp.tr.http");
      v23 = *(&buf + 1);
      ctu::OsLogContext::~OsLogContext(&buf);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = &v34[1];
        if (v35 < 0)
        {
          v24 = v34[1];
        }

        LODWORD(buf) = 136446210;
        *(&buf + 4) = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "ReasonCodeUrl: %{public}s", &buf, 0xCu);
      }

      ctu::OsLogContext::OsLogContext(&buf, v10, "cp.tr.http");
      v25 = *(&buf + 1);
      ctu::OsLogContext::~OsLogContext(&buf);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "}", &buf, 2u);
      }

      sub_100285238(&buf, v26);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10082CE74(a1 + 8, &buf, v6);
      if (v7)
      {
        sub_100004A34(v7);
      }

      if (v50 == 1)
      {
        if (v49 < 0)
        {
          operator delete(__p);
        }

        if (v47 < 0)
        {
          operator delete(v46);
        }

        if (v45 == 1 && v44 < 0)
        {
          operator delete(v43);
        }

        if (v42 == 1 && v41 < 0)
        {
          operator delete(v40);
        }

        if (v39 == 1 && v38 < 0)
        {
          operator delete(*(&buf + 1));
        }
      }
    }

    else
    {
      LOBYTE(v26[0]) = 0;
      LOBYTE(v36) = 0;
      *&buf = v8;
      *(&buf + 1) = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10082CE74(a1 + 8, v26, v6);
      if (*(&buf + 1))
      {
        sub_100004A34(*(&buf + 1));
      }
    }

    if (v36 == 1)
    {
      if (SHIBYTE(v35) < 0)
      {
        operator delete(v34[1]);
      }

      if (SHIBYTE(v34[0]) < 0)
      {
        operator delete(v33[0]);
      }

      if (v32 == 1 && SHIBYTE(v31) < 0)
      {
        operator delete(v30[1]);
      }

      if (LOBYTE(v30[0]) == 1 && SHIBYTE(v29) < 0)
      {
        operator delete(v28[1]);
      }

      if (LOBYTE(v28[0]) == 1 && SHIBYTE(v27) < 0)
      {
        operator delete(v26[1]);
      }
    }
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10082F5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100276FF0(va);
  if (v5)
  {
    sub_100004A34(v5);
  }

  _Unwind_Resume(a1);
}

void sub_10082F668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34)
{
  if (a34)
  {
    sub_100004A34(a34);
  }

  JUMPOUT(0x10082F64CLL);
}

void sub_10082F67C()
{
  if (!v0)
  {
    JUMPOUT(0x10082F660);
  }

  JUMPOUT(0x10082F658);
}

uint64_t sub_10082F688(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10082F6D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10082F76C@<X0>(std::string **a1@<X0>, void *a2@<X8>)
{
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *__p = 0u;
  v8 = 0u;
  v5 = 0u;
  memset(v6, 0, sizeof(v6));
  sub_10000D518(&v5);
  sub_10082F8F8(&v5, a1);
  sub_10000D684(&v5, a2);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v6);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void *sub_10082F8F8(void *a1, std::string **a2)
{
  v3 = sub_10000C030(a1, "{", 1);
  sub_1000D1184(&__p, *a2, a2[1], ", ", 2uLL);
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

  v6 = sub_10000C030(v3, p_p, size);
  v7 = sub_10000C030(v6, "}", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v7;
}

void sub_10082F998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10082F9FC(uint64_t a1, uint64_t *a2, int a3)
{
  if (a3 > 2)
  {
    if (a3 != 3)
    {
      if (a3 == 4)
      {
        operator new();
      }

      operator new();
    }

    operator new();
  }

  if (a3 == 1)
  {
    operator new();
  }

  operator new();
}

void *sub_10082FBD8(void *a1)
{
  *a1 = off_101E89238;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

const void **sub_10082FC38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(v7, *a1, *(a1 + 8));
  }

  else
  {
    *v7 = *a1;
    v8 = *(a1 + 16);
  }

  if (SHIBYTE(v8) < 0)
  {
    sub_100005F2C(__p, v7[0], v7[1]);
  }

  else
  {
    *__p = *v7;
    v12 = v8;
  }

  v10 = 0;
  if (SHIBYTE(v12) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v14 = v12;
  }

  v15 = 0;
  if (ctu::cf::convert_copy())
  {
    v3 = v10;
    v10 = v15;
    v16 = v3;
    sub_100005978(&v16);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst);
  }

  v4 = v10;
  v9 = v10;
  v10 = 0;
  sub_100005978(&v10);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  v5 = CFURLCreateWithString(0, v4, 0);
  __p[0] = v5;
  if (v5)
  {
    v16 = CFURLCopyHostName(v5);
    __dst = 0uLL;
    v14 = 0;
    ctu::cf::assign();
    *a2 = __dst;
    *(a2 + 16) = v14;
    sub_100005978(&v16);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  sub_1002030AC(__p);
  return sub_100005978(&v9);
}

void sub_10082FDC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void *sub_10082FE5C(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a3[1];
  v6 = *a3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10082FED8(a1, a2, &v6, 1);
  if (v7)
  {
    sub_100004A34(v7);
  }

  *a1 = &off_101E89260;
  return a1;
}

uint64_t sub_10082FED8(uint64_t a1, uint64_t *a2, uint64_t *a3, char a4)
{
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *a2;
  v7 = a2[1];
  *a1 = off_101E89238;
  *(a1 + 8) = v8;
  *(a1 + 16) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 40) = a4;
    sub_100004A34(v5);
  }

  else
  {
    *(a1 + 40) = a4;
  }

  *a1 = &off_101E89440;
  return a1;
}

void sub_10082FF88(void *a1)
{
  sub_10082FBD8(a1);

  operator delete();
}

void *sub_10082FFC0(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a3[1];
  v6 = *a3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10082FED8(a1, a2, &v6, 2);
  if (v7)
  {
    sub_100004A34(v7);
  }

  *a1 = &off_101E89288;
  return a1;
}

void sub_100830040(void *a1)
{
  sub_10082FBD8(a1);

  operator delete();
}

void *sub_100830078(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a3[1];
  v6 = *a3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10082FED8(a1, a2, &v6, 3);
  if (v7)
  {
    sub_100004A34(v7);
  }

  *a1 = &off_101E892B0;
  return a1;
}

void sub_1008300F8(void *a1)
{
  sub_10082FBD8(a1);

  operator delete();
}

void *sub_100830130(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a3[1];
  v6 = *a3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1008301AC(a1, a2, &v6, 4);
  if (v7)
  {
    sub_100004A34(v7);
  }

  *a1 = &off_101E892D8;
  return a1;
}

uint64_t sub_1008301AC(uint64_t a1, uint64_t *a2, uint64_t *a3, char a4)
{
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *a2;
  v7 = a2[1];
  *a1 = off_101E89238;
  *(a1 + 8) = v8;
  *(a1 + 16) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 40) = a4;
    sub_100004A34(v5);
  }

  else
  {
    *(a1 + 40) = a4;
  }

  *a1 = &off_101E89468;
  return a1;
}

void sub_10083025C(void *a1)
{
  sub_10082FBD8(a1);

  operator delete();
}

void *sub_100830294(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a3[1];
  v6 = *a3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1008301AC(a1, a2, &v6, 16);
  if (v7)
  {
    sub_100004A34(v7);
  }

  *a1 = &off_101E89300;
  return a1;
}

void sub_100830314(void *a1)
{
  sub_10082FBD8(a1);

  operator delete();
}

void sub_10083034C(const void **a2@<X1>, uint64_t a3@<X2>, void **a4@<X8>)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  sub_10082FC38(a3, &v25);
  v6 = SHIBYTE(v27);
  if ((SHIBYTE(v27) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v27))
    {
      v7 = SHIBYTE(v27);
      goto LABEL_5;
    }

LABEL_19:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    goto LABEL_20;
  }

  v7 = v26;
  if (!v26)
  {
    goto LABEL_19;
  }

LABEL_5:
  v8 = a2[1] + v7 - *a2;
  __p = 0;
  v23 = 0;
  v24 = 0;
  sub_1000CFAD0(&__p, v8 + 5);
  v9 = byte_order::big::operator()();
  if ((v6 & 0x80000000) == 0)
  {
    v10 = v6;
  }

  else
  {
    v10 = v26;
  }

  v11 = byte_order::big::operator()();
  v12 = byte_order::big::operator()();
  v13 = __p;
  *__p = v9;
  *(v13 + 1) = v11;
  v14 = v13 + 3;
  if (v10)
  {
    if ((v6 & 0x80000000) == 0)
    {
      v15 = &v25;
    }

    else
    {
      v15 = v25;
    }

    memmove(v14, v15, v10);
  }

  v16 = &v14[v10];
  *v16 = v12;
  v17 = v16 + 2;
  v18 = *a2;
  v19 = a2[1] - *a2;
  if (v19)
  {
    memmove(v17, v18, v19);
  }

  v20 = v23;
  if (&v17[v19] != v23)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    if (__p)
    {
      v23 = __p;
      operator delete(__p);
      if ((v6 & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_21;
    }

LABEL_20:
    if ((v6 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

  v21 = v24;
  *a4 = __p;
  a4[1] = v20;
  a4[2] = v21;
  if ((v6 & 0x80000000) != 0)
  {
LABEL_21:
    operator delete(v25);
  }
}

void sub_1008304DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100830514(const void **a2@<X1>, uint64_t a3@<X2>, void **a4@<X8>)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  sub_10082FC38(a3, &v25);
  v6 = SHIBYTE(v27);
  if ((SHIBYTE(v27) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v27))
    {
      v7 = SHIBYTE(v27);
      goto LABEL_5;
    }

LABEL_19:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    goto LABEL_20;
  }

  v7 = v26;
  if (!v26)
  {
    goto LABEL_19;
  }

LABEL_5:
  v8 = a2[1] + v7 - *a2;
  __p = 0;
  v23 = 0;
  v24 = 0;
  sub_1000CFAD0(&__p, v8 + 7);
  v9 = byte_order::big::operator()();
  if ((v6 & 0x80000000) == 0)
  {
    v10 = v6;
  }

  else
  {
    v10 = v26;
  }

  v11 = byte_order::big::operator()();
  v12 = byte_order::big::operator()();
  v13 = __p;
  *__p = v9;
  *(v13 + 1) = v11;
  v14 = v13 + 3;
  if (v10)
  {
    if ((v6 & 0x80000000) == 0)
    {
      v15 = &v25;
    }

    else
    {
      v15 = v25;
    }

    memmove(v14, v15, v10);
  }

  v16 = &v14[v10];
  *v16 = v12;
  v17 = v16 + 4;
  v18 = *a2;
  v19 = a2[1] - *a2;
  if (v19)
  {
    memmove(v17, v18, v19);
  }

  v20 = v23;
  if (&v17[v19] != v23)
  {
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    if (__p)
    {
      v23 = __p;
      operator delete(__p);
      if ((v6 & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_21;
    }

LABEL_20:
    if ((v6 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

  v21 = v24;
  *a4 = __p;
  a4[1] = v20;
  a4[2] = v21;
  if ((v6 & 0x80000000) != 0)
  {
LABEL_21:
    operator delete(v25);
  }
}