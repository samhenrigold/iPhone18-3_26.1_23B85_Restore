void sub_10021CCFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21, uint64_t a22, const void *a23, const void *a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, const void *a48)
{
  if (*(v48 - 137) < 0)
  {
    operator delete(*(v48 - 160));
  }

  if (__p)
  {
    operator delete(__p);
  }

  v50 = *(v48 - 192);
  if (v50)
  {
    *(v48 - 184) = v50;
    operator delete(v50);
  }

  sub_10001021C(&a22);
  sub_100005978(&a23);
  sub_100005978(&a24);
  sub_10001021C(&a28);
  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  sub_100005978(&a48);
  _Unwind_Resume(a1);
}

uint64_t sub_10021CF1C(uint64_t a1)
{
  v1 = *(a1 + 752);
  if (!v1 || *(v1 + 4) != 1)
  {
    return 0;
  }

  if (*(v1 + 32) == 1)
  {
    v3 = (*(v1 + 16) - *(v1 + 8)) >> 7;
  }

  else
  {
    v3 = 0;
  }

  v5 = *v1 - v3;
  if (v5 < 0)
  {
    v6 = *(a1 + 48);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    v5 = 0;
    if (v7)
    {
      v8 = PersonalityInfo::logPrefix(**(a1 + 80));
      v9 = **(a1 + 752);
      v10 = 136315906;
      v11 = v8;
      v12 = 2080;
      v13 = " ";
      v14 = 1024;
      v15 = v9;
      v16 = 2048;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#W %s%sIncorrect PS device list: max=%u, used=%zu", &v10, 0x26u);
      return 0;
    }
  }

  return v5;
}

BOOL sub_10021D09C(char *a1, void *a2)
{
  if (a1[24] != 1)
  {
    return 0;
  }

  v2 = a1[23];
  if (v2 >= 0)
  {
    v3 = a1[23];
  }

  else
  {
    v3 = *(a1 + 1);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

const void **sub_10021D11C(const void **a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  v6 = v4;
  sub_100005978(&v6);
  return a1;
}

uint64_t sub_10021D170(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 256) == 1)
  {
    sub_10012BF3C(a1, a2);
    sub_10012BF3C((a1 + 32), (a2 + 32));
    sub_10012BF3C((a1 + 64), (a2 + 64));
    sub_10012BF3C((a1 + 96), (a2 + 96));
    sub_10012BF3C((a1 + 128), (a2 + 128));
    sub_10012BF3C((a1 + 160), (a2 + 160));
    sub_10012BF3C((a1 + 192), (a2 + 192));
    sub_10012BF3C((a1 + 224), (a2 + 224));
  }

  else
  {
    sub_100221DCC(a1, a2);
    *(a1 + 256) = 1;
  }

  return a1;
}

void sub_10021D214(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
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
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  propertyList = 0;
  (*(*v12 + 96))(buf, v12, *(**(a1 + 80) + 52), 1, kIWLANSettingsKey, 0, 0);
  sub_100010180(&propertyList, buf);
  sub_10000A1EC(buf);
  v20 = 0;
  (*(*v12 + 96))(buf, v12, *(**(a1 + 80) + 52), 1, @"TechSettingsSecondaryOverlay", 0, 0);
  sub_100010180(&v20, buf);
  sub_10000A1EC(buf);
  v14 = v20;
  if (!v20)
  {
    v15 = *(a1 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 80));
      v22 = 0uLL;
      v23 = 0;
      ctu::cf::assign();
      *__p = v22;
      v19 = v23;
      v17 = __p;
      if (v23 < 0)
      {
        v17 = v22;
      }

      *buf = 136315650;
      *&buf[4] = v16;
      v25 = 2080;
      v26 = " ";
      v27 = 2080;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sNo overlay dictionary %s", buf, 0x20u);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      v14 = v20;
    }

    else
    {
      v14 = 0;
    }
  }

  sub_10080F7B4(a2, propertyList, v14, a1);
  sub_10001021C(&v20);
  sub_10001021C(&propertyList);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_10021D4E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a12);
  sub_10001021C(&a13);
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(a1);
}

void sub_10021D55C(void *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  JUMPOUT(0x10021D554);
}

void sub_10021D56C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
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
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  propertyList = 0;
  (*(*v12 + 96))(buf, v12, *(**(a1 + 80) + 52), 1, @"IMSConfig", 0, 0);
  sub_100010180(&propertyList, buf);
  sub_10000A1EC(buf);
  v20 = 0;
  (*(*v12 + 96))(buf, v12, *(**(a1 + 80) + 52), 1, @"IMSConfigSecondaryOverlay", 0, 0);
  sub_100010180(&v20, buf);
  sub_10000A1EC(buf);
  v14 = v20;
  if (!v20)
  {
    v15 = *(a1 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 80));
      v22 = 0uLL;
      v23 = 0;
      ctu::cf::assign();
      *__p = v22;
      v19 = v23;
      v17 = __p;
      if (v23 < 0)
      {
        v17 = v22;
      }

      *buf = 136315650;
      *&buf[4] = v16;
      v25 = 2080;
      v26 = " ";
      v27 = 2080;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sNo overlay dictionary %s", buf, 0x20u);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      v14 = v20;
    }

    else
    {
      v14 = 0;
    }
  }

  sub_10080F7B4(a2, propertyList, v14, a1);
  sub_10001021C(&v20);
  sub_10001021C(&propertyList);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_10021D840(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a12);
  sub_10001021C(&a13);
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(a1);
}

void sub_10021D8B4(void *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  JUMPOUT(0x10021D8ACLL);
}

void sub_10021D8C4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
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
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  propertyList = 0;
  (*(*v12 + 96))(buf, v12, *(**(a1 + 80) + 52), 1, @"CarrierEntitlements", 0, 0);
  sub_100010180(&propertyList, buf);
  sub_10000A1EC(buf);
  v20 = 0;
  (*(*v12 + 96))(buf, v12, *(**(a1 + 80) + 52), 1, @"CarrierEntitlementsSecondaryOverlay", 0, 0);
  sub_100010180(&v20, buf);
  sub_10000A1EC(buf);
  v14 = v20;
  if (!v20)
  {
    v15 = *(a1 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 80));
      v22 = 0uLL;
      v23 = 0;
      ctu::cf::assign();
      *__p = v22;
      v19 = v23;
      v17 = __p;
      if (v23 < 0)
      {
        v17 = v22;
      }

      *buf = 136315650;
      *&buf[4] = v16;
      v25 = 2080;
      v26 = " ";
      v27 = 2080;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sNo overlay dictionary %s", buf, 0x20u);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      v14 = v20;
    }

    else
    {
      v14 = 0;
    }
  }

  sub_10080F7B4(a2, propertyList, v14, a1);
  sub_10001021C(&v20);
  sub_10001021C(&propertyList);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_10021DB98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a12);
  sub_10001021C(&a13);
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(a1);
}

void sub_10021DC0C(void *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  JUMPOUT(0x10021DC04);
}

void sub_10021DC1C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
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
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  propertyList = 0;
  (*(*v12 + 96))(buf, v12, *(**(a1 + 80) + 52), 1, @"PushSettings", 0, 0);
  sub_100010180(&propertyList, buf);
  sub_10000A1EC(buf);
  v20 = 0;
  (*(*v12 + 96))(buf, v12, *(**(a1 + 80) + 52), 1, @"PushSettingsSecondaryOverlay", 0, 0);
  sub_100010180(&v20, buf);
  sub_10000A1EC(buf);
  v14 = v20;
  if (!v20)
  {
    v15 = *(a1 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 80));
      v22 = 0uLL;
      v23 = 0;
      ctu::cf::assign();
      *__p = v22;
      v19 = v23;
      v17 = __p;
      if (v23 < 0)
      {
        v17 = v22;
      }

      *buf = 136315650;
      *&buf[4] = v16;
      v25 = 2080;
      v26 = " ";
      v27 = 2080;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sNo overlay dictionary %s", buf, 0x20u);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      v14 = v20;
    }

    else
    {
      v14 = 0;
    }
  }

  sub_10080F7B4(a2, propertyList, v14, a1);
  sub_10001021C(&v20);
  sub_10001021C(&propertyList);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_10021DEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a12);
  sub_10001021C(&a13);
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(a1);
}

void sub_10021DF64(void *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  JUMPOUT(0x10021DF5CLL);
}

void sub_10021DF74(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
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
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  propertyList = 0;
  (*(*v12 + 96))(buf, v12, *(**(a1 + 80) + 52), 1, @"Location", 0, 0);
  sub_100010180(&propertyList, buf);
  sub_10000A1EC(buf);
  v20 = 0;
  (*(*v12 + 96))(buf, v12, *(**(a1 + 80) + 52), 1, @"LocationSecondaryOverlay", 0, 0);
  sub_100010180(&v20, buf);
  sub_10000A1EC(buf);
  v14 = v20;
  if (!v20)
  {
    v15 = *(a1 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 80));
      v22 = 0uLL;
      v23 = 0;
      ctu::cf::assign();
      *__p = v22;
      v19 = v23;
      v17 = __p;
      if (v23 < 0)
      {
        v17 = v22;
      }

      *buf = 136315650;
      *&buf[4] = v16;
      v25 = 2080;
      v26 = " ";
      v27 = 2080;
      v28 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sNo overlay dictionary %s", buf, 0x20u);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      v14 = v20;
    }

    else
    {
      v14 = 0;
    }
  }

  sub_10080F7B4(a2, propertyList, v14, a1);
  sub_10001021C(&v20);
  sub_10001021C(&propertyList);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_10021E244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a12);
  sub_10001021C(&a13);
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(a1);
}

void sub_10021E2B8(void *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  JUMPOUT(0x10021E2B0);
}

const void **sub_10021E2C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v31 = 0;
  v32 = 0;
  v29 = &v30;
  v30 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v4 = ServiceMap;
  if (v5 < 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v33 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v33);
  v23 = a2;
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  (*(*v11 + 112))(v11, &v29, 1);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  if (v31)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v14 = v32;
    v32 = Mutable;
    v33 = v14;
    sub_1000296E0(&v33);
    v15 = v29;
    if (v29 != &v30)
    {
      do
      {
        v33 = 0;
        v33 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%d", *(v15 + 8));
        value = 0;
        v16 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
        v27 = v16;
        value = v16;
        v18 = v15[5];
        v17 = v15[6];
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 1174405120;
        v25 = sub_10021F2D4;
        v26 = &unk_101E31FF0;
        if (v16)
        {
          CFRetain(v16);
        }

        while (v18 != v17)
        {
          v25(v24, v18);
          v18 += 24;
        }

        CFDictionaryAddValue(v32, v33, value);
        sub_1000279DC(&v27);
        sub_1000279DC(&value);
        sub_100005978(&v33);
        v19 = v15[1];
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = v15[2];
            v21 = *v20 == v15;
            v15 = v20;
          }

          while (!v21);
        }

        v15 = v20;
      }

      while (v20 != &v30);
    }
  }

  sub_100010180(v23, &v32);
  sub_1001A918C(&v29, v30);
  return sub_1000296E0(&v32);
}

void sub_10021E580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, char *);
  v21 = va_arg(va1, void);
  sub_1001A918C(va, v20);
  sub_1000296E0(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_10021E5F4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return a2;
  }

  v4 = *(a1 + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 80));
    v6 = (a1 + 120);
    if (*(a1 + 143) < 0)
    {
      v6 = *v6;
    }

    *v23 = 136315650;
    *&v23[4] = v5;
    v24 = 2080;
    v25 = " ";
    v26 = 2080;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sreceived iCloud info on my account:'%s'", v23, 0x20u);
  }

  *(a1 + 779) = 1;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v8 = ServiceMap;
  if (v9 < 0)
  {
    v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
    v11 = 5381;
    do
    {
      v9 = v11;
      v12 = *v10++;
      v11 = (33 * v11) ^ v12;
    }

    while (v12);
  }

  std::mutex::lock(ServiceMap);
  *v23 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, v23);
  if (!v13)
  {
    v15 = 0;
    goto LABEL_13;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
LABEL_13:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    goto LABEL_14;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
LABEL_14:
  (*(*v15 + 16))(v15, **(a1 + 80) + 24, @"NeedAccountInvalidation", kCFBooleanTrue, kPhoneServicesWalletDomain, 0, 1, 0);
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  *(a1 + 168) = 1;
  v17 = *(a1 + 784);
  *(a1 + 784) = v17 + 1;
  if (v17)
  {
    v18 = *(a1 + 48);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = PersonalityInfo::logPrefix(**(a1 + 80));
      v21 = *(a1 + 784);
      *v23 = 136315650;
      *&v23[4] = v20;
      v24 = 2080;
      v25 = " ";
      v26 = 1024;
      LODWORD(v27) = v21;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "#E %s%s|| cloud updated configuration for my own Thumper account. Collision number %u.", v23, 0x1Cu);
      v18 = *(a1 + 48);
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v22 = PersonalityInfo::logPrefix(**(a1 + 80));
      *v23 = 136315394;
      *&v23[4] = v22;
      v24 = 2080;
      v25 = " ";
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "#E %s%s|| Potentially another iPhone with the same phone number is present and active, and pretend it owns the number.", v23, 0x16u);
      v18 = *(a1 + 48);
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_101766200((a1 + 80));
    }

    sub_100347EF8(*(a1 + 96) + 360, 0);
    sub_1003486A4(*(a1 + 96) + 360);
  }

  return a2;
}

void sub_10021E938(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10021E970(uint64_t a1, int a2, CFStringRef theString, const __CFDictionary *a4)
{
  v4 = a4;
  v63 = 0;
  v7 = *(a1 + 143);
  if (v7 < 0)
  {
    v7 = *(a1 + 128);
  }

  v8 = 0;
  if (a4 && v7)
  {
    v9 = (a1 + 120);
    if (CFStringHasPrefix(theString, @"dev."))
    {
      Value = CFDictionaryGetValue(v4, @"accounts");
      v11 = Value;
      if (!Value)
      {
        goto LABEL_102;
      }

      v12 = CFGetTypeID(Value);
      if (v12 != CFDictionaryGetTypeID())
      {
        goto LABEL_102;
      }

      if (*(a1 + 143) < 0)
      {
        sub_100005F2C(__dst, *(a1 + 120), *(a1 + 128));
      }

      else
      {
        *__dst = *v9;
        v61 = *(a1 + 136);
      }

      if (SHIBYTE(v61) < 0)
      {
        sub_100005F2C(theDict, __dst[0], __dst[1]);
      }

      else
      {
        *theDict = *__dst;
        v66 = v61;
      }

      theArray = 0;
      if (SHIBYTE(v66) < 0)
      {
        sub_100005F2C(__p, theDict[0], theDict[1]);
      }

      else
      {
        *__p = *theDict;
        __p[2] = v66;
      }

      v67 = 0;
      if (ctu::cf::convert_copy())
      {
        v13 = theArray;
        theArray = v67;
        v68 = v13;
        sub_100005978(&v68);
      }

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      key = theArray;
      theArray = 0;
      sub_100005978(&theArray);
      if (SHIBYTE(v66) < 0)
      {
        operator delete(theDict[0]);
      }

      v14 = CFDictionaryGetValue(v11, key);
      v15 = v14;
      if (v14)
      {
        v16 = CFGetTypeID(v14);
        if (v16 != CFDictionaryGetTypeID())
        {
          v15 = 0;
        }
      }

      sub_100005978(&key);
      if (SHIBYTE(v61) < 0)
      {
        operator delete(__dst[0]);
      }

      if (!v15)
      {
        goto LABEL_102;
      }

      sub_1005D72A4(__p, theString, *(a1 + 104), 2u, a1 + 120, 0, v15);
      theDict[0] = v63;
      v63 = __p[1];
      __p[1] = 0;
      sub_10001021C(theDict);
      sub_10001021C(&__p[1]);
      v4 = v63;
      if (!v63)
      {
        goto LABEL_102;
      }
    }

    v17 = CFDictionaryGetValue(v4, @"account");
    if (!v17)
    {
      goto LABEL_49;
    }

    v18 = CFGetTypeID(v17);
    if (v18 != CFStringGetTypeID())
    {
      goto LABEL_49;
    }

    memset(__p, 0, 24);
    ctu::cf::assign();
    v66 = __p[2];
    *theDict = *__p;
    v19 = *(a1 + 143);
    if (v19 >= 0)
    {
      v20 = *(a1 + 143);
    }

    else
    {
      v20 = *(a1 + 128);
    }

    v21 = HIBYTE(v66);
    v22 = SHIBYTE(v66);
    if (SHIBYTE(v66) < 0)
    {
      v21 = theDict[1];
    }

    if (v20 == v21)
    {
      if (v19 >= 0)
      {
        v23 = (a1 + 120);
      }

      else
      {
        v23 = *v9;
      }

      if (SHIBYTE(v66) >= 0)
      {
        v24 = theDict;
      }

      else
      {
        v24 = theDict[0];
      }

      v25 = memcmp(v23, v24, v20) == 0;
      if ((v22 & 0x80000000) == 0)
      {
LABEL_48:
        if (!v25)
        {
          goto LABEL_102;
        }

LABEL_49:
        v26 = CFDictionaryGetValue(v4, @"last-expired-token");
        v27 = v26;
        if (!v26)
        {
          goto LABEL_102;
        }

        v28 = CFGetTypeID(v26);
        if (v28 != CFStringGetTypeID())
        {
          goto LABEL_102;
        }

        theDict[0] = 0;
        theDict[1] = 0;
        sub_1005D67F8(*(a1 + 104), 0, (a1 + 120), 0, theDict);
        if (theDict[1])
        {
          if (sub_10020B7A4(a1))
          {
            v29 = CFDictionaryGetValue(theDict[1], @"masterToken");
            v30 = v29;
            if (v29)
            {
              v31 = CFGetTypeID(v29);
              if (v31 == CFStringGetTypeID())
              {
                v32 = CFStringCompare(v30, v27, 0);
                sub_10001021C(&theDict[1]);
                if (v32 == kCFCompareEqualTo)
                {
LABEL_56:
                  memset(__p, 0, 24);
                  ctu::cf::assign();
                  *theDict = *__p;
                  v66 = __p[2];
                  if ((*(a1 + 664) & 1) == 0 || *(a1 + 264) != 1)
                  {
LABEL_104:
                    v54 = *(a1 + 48);
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                    {
                      v55 = PersonalityInfo::logPrefix(**(a1 + 80));
                      v56 = theDict;
                      if (SHIBYTE(v66) < 0)
                      {
                        v56 = theDict[0];
                      }

                      LODWORD(__p[0]) = 136315650;
                      *(__p + 4) = v55;
                      WORD2(__p[1]) = 2080;
                      *(&__p[1] + 6) = " ";
                      HIWORD(__p[2]) = 2080;
                      __p[3] = v56;
                      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I %s%sRequest to refresh token %s", __p, 0x20u);
                    }

                    *(a1 + 168) = 1;
                    if (SHIBYTE(v66) < 0)
                    {
                      operator delete(theDict[0]);
                    }

                    v8 = 1;
                    goto LABEL_103;
                  }

                  v33 = *(a1 + 240);
                  v34 = *(a1 + 248);
                  v35 = HIBYTE(v66);
                  if (v33 != v34)
                  {
                    if (SHIBYTE(v66) >= 0)
                    {
                      v36 = HIBYTE(v66);
                    }

                    else
                    {
                      v36 = theDict[1];
                    }

                    if (SHIBYTE(v66) >= 0)
                    {
                      v37 = theDict;
                    }

                    else
                    {
                      v37 = theDict[0];
                    }

                    do
                    {
                      v38 = *(v33 + 23);
                      v39 = v38;
                      if ((v38 & 0x80u) != 0)
                      {
                        v38 = *(v33 + 8);
                      }

                      if (v38 == v36)
                      {
                        v40 = v39 >= 0 ? v33 : *v33;
                        if (!memcmp(v40, v37, v36))
                        {
                          goto LABEL_104;
                        }
                      }

                      v33 += 24;
                    }

                    while (v33 != v34);
                  }

                  if (v35 < 0)
                  {
                    operator delete(theDict[0]);
                  }
                }

LABEL_102:
                v8 = 0;
                goto LABEL_103;
              }
            }
          }

          else
          {
            v41 = CFDictionaryGetValue(theDict[1], @"cfgSlots");
            v42 = v41;
            if (v41)
            {
              v43 = CFGetTypeID(v41);
              if (v43 == CFArrayGetTypeID())
              {
                theArray = 0;
                sub_10020CBC8(*(a1 + 56), __p);
                (*(*__p[0] + 24))(&v68);
                sub_10006DD00(&theArray, &v68);
                sub_10000A1EC(&v68);
                if (__p[1])
                {
                  sub_100004A34(__p[1]);
                }

                if (theArray)
                {
                  for (i = 0; i < CFArrayGetCount(v42) && i < CFArrayGetCount(theArray); ++i)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v42, i);
                    v46 = ValueAtIndex;
                    if (ValueAtIndex)
                    {
                      v47 = CFGetTypeID(ValueAtIndex);
                      if (v47 == CFDataGetTypeID())
                      {
                        key = 0;
                        v48 = CFArrayGetValueAtIndex(theArray, i);
                        memset(__p, 0, 24);
                        if (v48)
                        {
                          v49 = CFGetTypeID(v48);
                          if (v49 == CFDataGetTypeID())
                          {
                            ctu::cf::assign();
                          }
                        }

                        *v57 = *__p;
                        v58 = __p[2];
                        sub_1009F8218(v46, v57, &cf);
                        v68 = cf;
                        if (cf)
                        {
                          CFRetain(cf);
                        }

                        v67 = 0;
                        __p[0] = 0;
                        sub_100010180(__p, &v68);
                        if (__p[0])
                        {
                          sub_1000676D4(&v67, __p);
                        }

                        sub_10001021C(__p);
                        key = v67;
                        v67 = 0;
                        sub_10001021C(&v67);
                        sub_10000A1EC(&v68);
                        sub_10000A1EC(&cf);
                        if (v57[0])
                        {
                          v57[1] = v57[0];
                          operator delete(v57[0]);
                        }

                        if (key)
                        {
                          v50 = CFDictionaryGetValue(key, @"token");
                          v51 = v50;
                          if (v50)
                          {
                            v52 = CFGetTypeID(v50);
                            if (v52 == CFStringGetTypeID() && CFStringCompare(v51, v27, 0) == kCFCompareEqualTo)
                            {
                              sub_10001021C(&key);
                              sub_100010250(&theArray);
                              sub_10001021C(&theDict[1]);
                              goto LABEL_56;
                            }
                          }
                        }

                        sub_10001021C(&key);
                      }
                    }
                  }
                }

                sub_100010250(&theArray);
              }
            }
          }
        }

        sub_10001021C(&theDict[1]);
        goto LABEL_102;
      }
    }

    else
    {
      v25 = 0;
      if ((SHIBYTE(v66) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }
    }

    operator delete(theDict[0]);
    goto LABEL_48;
  }

LABEL_103:
  sub_10001021C(&v63);
  return v8;
}

void sub_10021F148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, int a20, const void *a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a30 < 0)
  {
    operator delete(a25);
  }

  sub_10001021C(&a21);
  _Unwind_Resume(a1);
}

void sub_10021F2D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v5, *a2, *(a2 + 8));
  }

  else
  {
    *v5 = *a2;
    v6 = *(a2 + 16);
  }

  if (SHIBYTE(v6) < 0)
  {
    sub_100005F2C(__p, v5[0], v5[1]);
  }

  else
  {
    *__p = *v5;
    v10 = v6;
  }

  v8 = 0;
  if (SHIBYTE(v10) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v12 = v10;
  }

  v13 = 0;
  if (ctu::cf::convert_copy())
  {
    v3 = v8;
    v8 = v13;
    v14 = v3;
    sub_100005978(&v14);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__dst);
  }

  v4 = v8;
  v7 = v8;
  v8 = 0;
  sub_100005978(&v8);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  CFArrayAppendValue(v2, v4);
  sub_100005978(&v7);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_10021F410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

uint64_t sub_10021F488(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  result = sub_10020B7A4(a1);
  if (result)
  {
    return result;
  }

  theArray = 0;
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
  if (!v15)
  {
    v17 = 0;
    goto LABEL_9;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
LABEL_9:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
LABEL_10:
  (*(*v17 + 24))(&v34, v17, **(a1 + 80) + 24, @"individual.keys", kPhoneServicesWalletDomain, 0, 4);
  sub_10006DD00(&theArray, &v34);
  sub_10000A1EC(&v34);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  if (theArray && CFArrayGetCount(theArray) > a3)
  {
    v19 = *(a1 + 48);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = PersonalityInfo::logPrefix(**(a1 + 80));
      v21 = v20;
      if (!a4)
      {
        a4 = (a1 + 120);
        if (*(a1 + 143) < 0)
        {
          a4 = *a4;
        }
      }

      if (a2)
      {
        v34 = 0uLL;
        v35 = 0;
        ctu::cf::assign();
        *__p = v34;
        v32 = v35;
        v22 = __p;
        if (v35 < 0)
        {
          v22 = v34;
        }

        *buf = 136316162;
        *&buf[4] = v21;
        v37 = 2080;
        v38 = " ";
        v39 = 2080;
        v40 = a4;
        v41 = 1024;
        v42 = a3;
        v43 = 2080;
        v44 = v22;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sSending individual secret for account '%s' slot %d to device %s", buf, 0x30u);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136316162;
        *&buf[4] = v20;
        v37 = 2080;
        v38 = " ";
        v39 = 2080;
        v40 = a4;
        v41 = 1024;
        v42 = a3;
        v43 = 2080;
        v44 = "<none>";
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sSending individual secret for account '%s' slot %d to device %s", buf, 0x30u);
      }
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3);
    v28 = ValueAtIndex;
    if (ValueAtIndex)
    {
      v29 = CFGetTypeID(ValueAtIndex);
      if (v29 == CFDataGetTypeID())
      {
        v30 = v28;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v30 = 0;
    }

    (*(**(a1 + 104) + 32))(*(a1 + 104), a2, **(a1 + 80) + 24, v30);
  }

  else
  {
    v23 = *(a1 + 48);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = PersonalityInfo::logPrefix(**(a1 + 80));
      v25 = v24;
      if (!a4)
      {
        a4 = (a1 + 120);
        if (*(a1 + 143) < 0)
        {
          a4 = *a4;
        }
      }

      if (a2)
      {
        v34 = 0uLL;
        v35 = 0;
        ctu::cf::assign();
        *__p = v34;
        v32 = v35;
        v26 = __p;
        if (v35 < 0)
        {
          v26 = v34;
        }

        *buf = 136316162;
        *&buf[4] = v25;
        v37 = 2080;
        v38 = " ";
        v39 = 2080;
        v40 = a4;
        v41 = 1024;
        v42 = a3;
        v43 = 2080;
        v44 = v26;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%sFailed to send individual secret for account '%s' slot %d to device %s", buf, 0x30u);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136316162;
        *&buf[4] = v24;
        v37 = 2080;
        v38 = " ";
        v39 = 2080;
        v40 = a4;
        v41 = 1024;
        v42 = a3;
        v43 = 2080;
        v44 = "<none>";
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%sFailed to send individual secret for account '%s' slot %d to device %s", buf, 0x30u);
      }
    }
  }

  return sub_100010250(&theArray);
}

void sub_10021F95C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_100010250(&a13);
  _Unwind_Resume(a1);
}

void sub_10021F9CC(uint64_t a1, void **a2, const void *a3)
{
  if (sub_10020B624(a1) && sub_1002128B8(a1))
  {
    v6 = *(a1 + 48);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sprohibited operation. Cannot remove anything while in stealthmode - ignored", buf, 0x16u);
    }

    sub_100004AA0(buf, (a1 + 16));
    v8 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
    }

    *buf = 0;
    *&buf[8] = 0;
    sub_100004AA0(buf, (a1 + 16));
    operator new();
  }

  sub_1002167DC(a1, a2, a3);

  sub_10020F318(a1, 1, 0);
}

void sub_10021FBD4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_10021FBEC(uint64_t a1)
{
  sub_10081043C(a1);
  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 80));
    v4 = sub_10060FFC0(*(a1 + 192));
    v5 = sub_10060FF94(*(a1 + 196));
    v6 = sub_100A38E08(*(a1 + 200));
    *buf = 136316162;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = v4;
    LOWORD(v40[0].__locale_) = 2080;
    *(&v40[0].__locale_ + 2) = v5;
    WORD1(v40[1].__locale_) = 2080;
    *(&v40[1].__locale_ + 4) = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s| fSwitchState: %s, fServiceStatus: %s, fEntitlementResultForThumper: %s", buf, 0x34u);
  }

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  __src = 0u;
  memset(v40, 0, sizeof(v40));
  memset(buf, 0, sizeof(buf));
  sub_10000C320(buf);
  sub_100A41FCC(&buf[16], a1 + 208);
  v7 = *(a1 + 48);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(**(a1 + 80));
    v9 = asStringBool(*(a1 + 772));
    v10 = asStringBool(*(a1 + 773));
    if ((BYTE8(v44) & 0x10) != 0)
    {
      v12 = v44;
      if (v44 < *(&__src + 1))
      {
        *&v44 = *(&__src + 1);
        v12 = *(&__src + 1);
      }

      locale = __src;
    }

    else
    {
      if ((BYTE8(v44) & 8) == 0)
      {
        v11 = 0;
        v24 = 0;
LABEL_17:
        *(&__dst + v11) = 0;
        p_dst = &__dst;
        if (v24 < 0)
        {
          p_dst = __dst;
        }

        *v25 = 136316162;
        v26 = v8;
        v27 = 2080;
        v28 = " ";
        v29 = 2080;
        v30 = v9;
        v31 = 2080;
        v32 = v10;
        v33 = 2080;
        v34 = p_dst;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s| fAwaitingGetProvisioning: %s, fAwaitingSetProvisioning: %s, fAuthenticationResponse: %s", v25, 0x34u);
        if (v24 < 0)
        {
          operator delete(__dst);
        }

        v7 = *(a1 + 48);
        goto LABEL_22;
      }

      locale = v40[1].__locale_;
      v12 = v40[3].__locale_;
    }

    v11 = v12 - locale;
    if ((v12 - locale) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    if (v11 >= 0x17)
    {
      operator new();
    }

    v24 = v12 - locale;
    if (v11)
    {
      memmove(&__dst, locale, v11);
    }

    goto LABEL_17;
  }

LABEL_22:
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 80));
    v16 = asStringBool(*(a1 + 776));
    v17 = asStringBool(*(a1 + 777));
    v18 = asStringBool(*(a1 + 778));
    v19 = asStringBool(*(a1 + 779));
    v20 = *(a1 + 784);
    *v25 = 136316674;
    v26 = v15;
    v27 = 2080;
    v28 = " ";
    v29 = 2080;
    v30 = v16;
    v31 = 2080;
    v32 = v17;
    v33 = 2080;
    v34 = v18;
    v35 = 2080;
    v36 = v19;
    v37 = 1024;
    v38 = v20;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s| fReprovisioningRequested: %s, fICloudUpdateRequested: %s, fAccountInvalidationNeeded: %s, fAccountInvalidationForced: %s, fCloudCollisionCounter: %u", v25, 0x44u);
  }

  *&buf[16] = v21;
  if (SHIBYTE(v43) < 0)
  {
    operator delete(*(&v42 + 1));
  }

  std::locale::~locale(v40);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1002200C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void **sub_100220110(void **result)
{
  if (*(*result[10] + 48) == 1)
  {
    v11[1] = v4;
    v11[2] = v3;
    v11[3] = v2;
    v11[4] = v1;
    v11[5] = v5;
    v11[6] = v6;
    v7 = result;
    v8 = sub_1002106E4(result) == 1;
    ((*v7)[25])(&v10, v7);
    v9 = v10;
    sub_10001021C(v11);
    phoneservices::submitSwitchAnalytics((v7 + 7), 1u, *(*v7[10] + 52), v8, v9);
  }

  return result;
}

void sub_1002201CC(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = *(a1 + 112);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v2 + 72))(v2, a1 + 120);
  if (v3)
  {
    sub_100004A34(v3);
  }

  *(a1 + 784) = 0;
}

void sub_10022023C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100220258(uint64_t a1, uint64_t a2)
{
  v25 = 0;
  v26 = 0;
  sub_1005DC42C(*(a1 + 104), &v25);
  if (!v25)
  {
    goto LABEL_27;
  }

  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *__p = *buf;
  v24 = *&buf[16];
  v4 = (a1 + 120);
  v5 = sub_100007A6C(v25 + 144, (a1 + 120));
  if (v25 + 152 == v5)
  {
    v7 = *(a1 + 48);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v8 = PersonalityInfo::logPrefix(**(a1 + 80));
    v9 = __p;
    if (v24 < 0)
    {
      v9 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v28 = v9;
    v10 = "#I %s%sIgnore 'requestIndividualSecret' from '%s'. Unknown account?!?";
LABEL_14:
    v13 = v7;
    v14 = 32;
LABEL_15:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v10, buf, v14);
    goto LABEL_25;
  }

  if (*(v5 + 56) + 96 == sub_100007A6C(*(v5 + 56) + 88, __p))
  {
    v7 = *(a1 + 48);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_25;
    }

    v11 = PersonalityInfo::logPrefix(**(a1 + 80));
    v12 = __p;
    if (v24 < 0)
    {
      v12 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v28 = v12;
    v10 = "#I %s%sIgnore 'requestIndividualSecret' from '%s'. Unknown device";
    goto LABEL_14;
  }

  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  v22 = *&buf[16];
  *v21 = *buf;
  if (buf[23] < 0)
  {
    v6 = atoi(v21[0]);
    operator delete(v21[0]);
  }

  else
  {
    v6 = atoi(v21);
  }

  v15 = (a1 + 904);
  v16 = *(a1 + 904);
  if (v6 >= ((*(a1 + 912) - v16) >> 2))
  {
    *buf = 0;
    sub_100220624((a1 + 904), v6 + 1, buf);
    v16 = *v15;
  }

  v17 = *(v16 + 4 * v6) + 1;
  *(v16 + 4 * v6) = v17;
  if (v17 % *(a1 + 928))
  {
    if (*(a1 + 143) < 0)
    {
      v4 = *v4;
    }

    sub_10021F488(a1, a2, v6, v4);
    goto LABEL_25;
  }

  v18 = *(a1 + 48);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = PersonalityInfo::logPrefix(**(a1 + 80));
    v20 = *(*v15 + 4 * v6);
    *buf = 136315650;
    *&buf[4] = v19;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 1024;
    LODWORD(v28) = v20;
    v10 = "#I %s%sSuppress reply on 'requestIndividualSecret' to prevent loop (id %d)";
    v13 = v18;
    v14 = 28;
    goto LABEL_15;
  }

LABEL_25:
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_27:
  if (v26)
  {
    sub_100004A34(v26);
  }
}

void sub_1002205AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (a21)
  {
    sub_100004A34(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_100220624(void *result, unint64_t a2, int *a3)
{
  v3 = (result[1] - *result) >> 2;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 4 * a2;
    }
  }

  else
  {
    sub_1002225C8(result, a2 - v3, a3);
  }
}

const void **sub_100220654@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v34 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v5 = v34;
    v34 = Mutable;
    __p[0] = v5;
    sub_1000296E0(__p);
  }

  theString2 = 0;
  if (*(a1 + 143) < 0)
  {
    sub_100005F2C(v31, *(a1 + 120), *(a1 + 128));
  }

  else
  {
    *v31 = *(a1 + 120);
    v32 = *(a1 + 136);
  }

  if (SHIBYTE(v32) < 0)
  {
    sub_100005F2C(theDict, v31[0], v31[1]);
  }

  else
  {
    *theDict = *v31;
    v37 = v32;
  }

  v35 = 0;
  if (SHIBYTE(v37) < 0)
  {
    sub_100005F2C(__p, theDict[0], theDict[1]);
  }

  else
  {
    *__p = *theDict;
    v39 = v37;
  }

  v40 = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = v35;
    v35 = v40;
    v41 = v6;
    sub_100005978(&v41);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(__p[0]);
  }

  theString2 = v35;
  v35 = 0;
  sub_100005978(&v35);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(theDict[0]);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  v7 = kPSAccountId;
  CFDictionarySetValue(v34, kPSAccountId, theString2);
  theDict[0] = 0;
  sub_1005D7AF0(*(a1 + 104), theDict);
  if (theDict[0])
  {
    v8 = kPSDeviceId;
    Value = CFDictionaryGetValue(theDict[0], kPSDeviceId);
    if (Value)
    {
      CFDictionarySetValue(v34, v8, Value);
    }

    v41 = 0;
    v10 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (v10)
    {
      v11 = v41;
      v41 = v10;
      __p[0] = v11;
      sub_1000279DC(__p);
    }

    v12 = kPSAccountList;
    v13 = CFDictionaryGetValue(theDict[0], kPSAccountList);
    v14 = v13;
    if (v13)
    {
      v15 = CFGetTypeID(v13);
      if (v15 == CFArrayGetTypeID())
      {
        Count = CFArrayGetCount(v14);
        if (Count)
        {
          v17 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v14, v17);
            v19 = ValueAtIndex;
            if (ValueAtIndex)
            {
              v20 = CFGetTypeID(ValueAtIndex);
              if (v20 == CFDictionaryGetTypeID())
              {
                v21 = CFDictionaryGetValue(v19, v7);
                v22 = v21;
                if (v21)
                {
                  v23 = CFGetTypeID(v21);
                  if (v23 == CFStringGetTypeID() && CFStringCompare(v22, theString2, 0) == kCFCompareEqualTo)
                  {
                    break;
                  }
                }
              }
            }

            if (Count == ++v17)
            {
              goto LABEL_35;
            }
          }

          CFArrayAppendValue(v41, v19);
          v25 = kPSMdn;
          v26 = CFDictionaryGetValue(v19, kPSMdn);
          if (v26)
          {
            CFDictionarySetValue(v34, v25, v26);
          }

          v27 = kPSAccountFreeSlots;
          v28 = CFDictionaryGetValue(v19, kPSAccountFreeSlots);
          if (v28)
          {
            CFDictionarySetValue(v34, v27, v28);
          }

          v29 = kPSDeviceList;
          v30 = CFDictionaryGetValue(v19, kPSDeviceList);
          if (v30)
          {
            CFDictionarySetValue(v34, v29, v30);
          }
        }
      }
    }

LABEL_35:
    CFDictionarySetValue(v34, v12, v41);
    sub_1000279DC(&v41);
  }

  sub_100010180(a2, &v34);
  sub_10001021C(theDict);
  sub_100005978(&theString2);
  return sub_1000296E0(&v34);
}

void sub_1002209FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, const void *a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_1000279DC((v32 - 88));
  sub_10001021C(&__p);
  sub_100005978(&a15);
  sub_1000296E0(&a16);
  _Unwind_Resume(a1);
}

char *sub_100220ABC@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[143] < 0)
  {
    return sub_100005F2C(a2, *(result + 15), *(result + 16));
  }

  *a2 = *(result + 120);
  *(a2 + 16) = *(result + 17);
  return result;
}

void sub_100220B4C(uint64_t a1)
{
  if (*a1 == 1)
  {
    if (*(a1 + 72) == 1)
    {
      if (*(a1 + 103) < 0)
      {
        operator delete(*(a1 + 80));
      }

      *(a1 + 72) = 0;
    }

    if (*(a1 + 40) == 1)
    {
      if (*(a1 + 71) < 0)
      {
        operator delete(*(a1 + 48));
      }

      *(a1 + 40) = 0;
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *a1 = 0;
  }
}

uint64_t sub_100220BD0(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t sub_100220C2C(uint64_t a1)
{
  if (*(a1 + 448) == 1)
  {
    sub_100220D30(a1 + 224);
  }

  if (*(a1 + 216) == 1 && *(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 184) == 1 && *(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 152) == 1)
  {
    v3 = (a1 + 128);
    sub_100220E18(&v3);
  }

  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1)
  {
    v3 = (a1 + 64);
    sub_1000087B4(&v3);
  }

  if (*(a1 + 56) == 1)
  {
    v3 = (a1 + 32);
    sub_1000087B4(&v3);
  }

  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100220D30(uint64_t a1)
{
  if (*(a1 + 216) == 1 && *(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 184) == 1 && *(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100220E18(void ****a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100220E6C(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_100220E6C(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  while (v4 != a2)
  {
    v5 = v4;
    if (*(v4 - 8) == 1 && *(v4 - 9) < 0)
    {
      operator delete(*(v4 - 4));
    }

    v4 -= 8;
    if (*(v5 - 40) == 1 && *(v5 - 41) < 0)
    {
      operator delete(*v4);
    }
  }

  *(a1 + 8) = a2;
}

void sub_100220EF0(std::string *__dst, uint64_t a2)
{
  if (__dst[19].__r_.__value_.__s.__data_[0] == *(a2 + 456))
  {
    if (__dst[19].__r_.__value_.__s.__data_[0])
    {
      sub_10012BF3C(__dst, a2);
      sub_100220FC4(&__dst[1].__r_.__value_.__l.__size_, a2 + 32);
      sub_100220FC4(&__dst[2].__r_.__value_.__r.__words[2], a2 + 64);
      sub_10012BF3C(__dst + 4, (a2 + 96));
      sub_100221094(&__dst[5].__r_.__value_.__l.__size_, (a2 + 128));
      sub_10012BF3C((__dst + 160), (a2 + 160));
      sub_10012BF3C(__dst + 8, (a2 + 192));

      sub_1002215C0(&__dst[9].__r_.__value_.__s.__data_[8], a2 + 224);
    }
  }

  else if (__dst[19].__r_.__value_.__s.__data_[0])
  {
    sub_100220C2C(__dst);
    __dst[19].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    sub_1002217D8(__dst, a2);
    __dst[19].__r_.__value_.__s.__data_[0] = 1;
  }
}

void sub_100220FC4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a2) >> 3);
      v5 = *a2;

      sub_100008234(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = a1;
    sub_1000087B4(&v6);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_10004EFD0(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    *(a1 + 24) = 1;
  }
}

void sub_100221094(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = a2[1];
      v4 = (v3 - *a2) >> 6;
      v5 = *a2;

      sub_10022114C(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = a1;
    sub_100220E18(&v6);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_100221538(a1, *a2, a2[1], (a2[1] - *a2) >> 6);
    *(a1 + 24) = 1;
  }
}

void sub_10022114C(char **a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 6)
  {
    sub_100221268(a1);
    if (!(a4 >> 58))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 5;
      if (v9 >> 5 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFC0)
      {
        v11 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_1002212A8(a1, v11);
    }

    sub_1000CE3D4();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 6)
  {
    sub_100221480(&v15, a2, a3, v8);
    sub_100220E6C(a1, v13);
  }

  else
  {
    sub_100221480(&v14, a2, a2 + v12, v8);
    a1[1] = sub_1002212E4(a1, (a2 + v12), a3, a1[1]);
  }
}

void sub_100221268(uint64_t a1)
{
  if (*a1)
  {
    sub_100220E6C(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_1002212A8(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    sub_1002214F0(a1, a2);
  }

  sub_1000CE3D4();
}

_BYTE *sub_1002212E4(uint64_t a1, __int128 *a2, __int128 *a3, _BYTE *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_10006F264(v4, v6);
      sub_10006F264(v4 + 32, v6 + 2);
      v6 += 4;
      v4 = v11 + 64;
      v11 += 64;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_1002213B4(v8);
  return v4;
}

uint64_t sub_1002213B4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100221400(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_100221400(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      v7 = v6;
      if (*(v6 - 8) == 1 && *(v6 - 9) < 0)
      {
        operator delete(*(v6 - 4));
      }

      v6 -= 8;
      if (*(v7 - 40) == 1 && *(v7 - 41) < 0)
      {
        operator delete(*v6);
      }
    }

    while (v6 != a5);
  }
}

uint64_t sub_100221480(int a1, uint64_t a2, uint64_t a3, char *__dst)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    sub_10012BF3C(__dst, v5);
    sub_10012BF3C((__dst + 32), (v5 + 32));
    __dst += 64;
    v5 += 64;
  }

  while (v5 != v6);
  return v6;
}

void sub_1002214F0(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t *sub_100221538(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1002212A8(result, a4);
  }

  return result;
}

void sub_1002215A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100220E18(&a9);
  _Unwind_Resume(a1);
}

void sub_1002215C0(char *__dst, uint64_t a2)
{
  if (__dst[224] == *(a2 + 224))
  {
    if (__dst[224])
    {
      sub_10012BF3C(__dst, a2);
      sub_10012BF3C((__dst + 32), (a2 + 32));
      sub_10012BF3C((__dst + 64), (a2 + 64));
      sub_10012BF3C(__dst + 4, (a2 + 96));
      sub_10012BF3C((__dst + 128), (a2 + 128));
      sub_10012BF3C((__dst + 160), (a2 + 160));

      sub_10012BF3C(__dst + 8, (a2 + 192));
    }
  }

  else if (__dst[224])
  {
    sub_100220D30(__dst);
    __dst[224] = 0;
  }

  else
  {
    sub_100221688(__dst, a2);
    __dst[224] = 1;
  }
}

_BYTE *sub_100221688(_BYTE *a1, __int128 *a2)
{
  v4 = sub_10006F264(a1, a2);
  sub_10006F264(v4 + 32, a2 + 2);
  sub_10006F264(a1 + 64, a2 + 4);
  sub_10006F264(a1 + 96, a2 + 6);
  sub_10006F264(a1 + 128, a2 + 8);
  sub_10006F264(a1 + 160, a2 + 10);
  sub_10006F264(a1 + 192, a2 + 12);
  return a1;
}

void sub_1002216FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 184) == 1 && *(v1 + 183) < 0)
  {
    operator delete(*(v1 + 160));
  }

  if (*(v1 + 152) == 1 && *(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 120) == 1 && *(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 88) == 1 && *(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 56) == 1 && *(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1002217D8(_BYTE *a1, __int128 *a2)
{
  v4 = sub_10006F264(a1, a2);
  sub_100221970(v4 + 32, (a2 + 2));
  sub_100221970(a1 + 64, (a2 + 4));
  sub_10006F264(a1 + 96, a2 + 6);
  sub_100221A2C(a1 + 16, (a2 + 8));
  sub_10006F264(a1 + 160, a2 + 10);
  sub_10006F264(a1 + 192, a2 + 12);
  sub_100221ADC(a1 + 224, (a2 + 14));
  return a1;
}

void sub_10022187C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 216) == 1 && *(v10 + 215) < 0)
  {
    operator delete(*(v10 + 192));
  }

  if (*(v10 + 184) == 1 && *(v10 + 183) < 0)
  {
    operator delete(*(v10 + 160));
  }

  if (*(v10 + 152) == 1)
  {
    sub_100220E18(&a10);
  }

  if (*(v10 + 120) == 1 && *(v10 + 119) < 0)
  {
    operator delete(*(v10 + 96));
  }

  if (*(v10 + 88) == 1)
  {
    sub_1000087B4(&a10);
  }

  if (*(v10 + 56) == 1)
  {
    sub_1000087B4(&a10);
  }

  if (*(v10 + 24) == 1 && *(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100221970(char *a1, uint64_t a2)
{
  *a1 = 0;
  a1[24] = 0;
  sub_1002219CC(a1, a2);
  return a1;
}

void sub_1002219A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_1000087B4(&a10);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1002219CC(char *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    *(result + 1) = 0;
    *(result + 2) = 0;
    result = sub_10004EFD0(result, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    v2[24] = 1;
  }

  return result;
}

uint64_t *sub_100221A2C(uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_100221A88(a1, a2);
  return a1;
}

void sub_100221A64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 24) == 1)
  {
    a10 = v10;
    sub_100220E18(&a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100221A88(uint64_t *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_100221538(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 6);
    *(v2 + 24) = 1;
  }

  return result;
}

_BYTE *sub_100221ADC(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[224] = 0;
  if (*(a2 + 224) == 1)
  {
    sub_100221688(a1, a2);
    a1[224] = 1;
  }

  return a1;
}

void sub_100221B24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 224) == 1)
  {
    sub_100220D30(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100221B44(std::string *__dst, std::string *__str)
{
  if (__dst[2].__r_.__value_.__s.__data_[8] == __str[2].__r_.__value_.__s.__data_[8])
  {
    if (__dst[2].__r_.__value_.__s.__data_[8])
    {
      std::string::operator=(__dst, __str);

      sub_10012BF3C(__dst + 1, __str + 1);
    }
  }

  else if (__dst[2].__r_.__value_.__s.__data_[8])
  {
    if (__dst[2].__r_.__value_.__s.__data_[0] == 1 && SHIBYTE(__dst[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst[1].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst->__r_.__value_.__l.__data_);
    }

    __dst[2].__r_.__value_.__s.__data_[8] = 0;
  }

  else
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(__dst, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v4 = *&__str->__r_.__value_.__l.__data_;
      __dst->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
      *&__dst->__r_.__value_.__l.__data_ = v4;
    }

    sub_10006F264(&__dst[1], &__str[1]);
    __dst[2].__r_.__value_.__s.__data_[8] = 1;
  }
}

void sub_100221C20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100221C3C(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100221CC4(result, a4);
  }

  return result;
}

void sub_100221CA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  sub_100222050(&a9);
  _Unwind_Resume(a1);
}

void sub_100221CC4(uint64_t *a1, unint64_t a2)
{
  if (!HIBYTE(a2))
  {
    sub_100221D00(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_100221D00(uint64_t a1, unint64_t a2)
{
  if (!HIBYTE(a2))
  {
    operator new();
  }

  sub_100013D10();
}

_BYTE *sub_100221D48(uint64_t a1, __int128 *a2, __int128 *a3, _BYTE *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_100221DCC(a4, v6);
      v6 += 16;
      a4 += 256;
      v7 -= 256;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_100221DA8(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 256;
    do
    {
      v4 = sub_100221F4C(v4) - 256;
      v2 += 256;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100221DCC(_BYTE *a1, __int128 *a2)
{
  v4 = sub_10006F264(a1, a2);
  sub_10006F264(v4 + 32, a2 + 2);
  sub_10006F264(a1 + 64, a2 + 4);
  sub_10006F264(a1 + 96, a2 + 6);
  sub_10006F264(a1 + 128, a2 + 8);
  sub_10006F264(a1 + 160, a2 + 10);
  sub_10006F264(a1 + 192, a2 + 12);
  sub_10006F264(a1 + 224, a2 + 14);
  return a1;
}

void sub_100221E4C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 216) == 1 && *(v1 + 215) < 0)
  {
    operator delete(*(v1 + 192));
  }

  if (*(v1 + 184) == 1 && *(v1 + 183) < 0)
  {
    operator delete(*(v1 + 160));
  }

  if (*(v1 + 152) == 1 && *(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 120) == 1 && *(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 88) == 1 && *(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 56) == 1 && *(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100221F4C(uint64_t a1)
{
  if (*(a1 + 248) == 1 && *(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  if (*(a1 + 216) == 1 && *(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 184) == 1 && *(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100222050(void ***a1)
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
        v4 = sub_100221F4C(v4 - 256);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const void **sub_1002220D4(uint64_t a1, void *a2)
{
  result = *a1;
  v5 = *(a1 + 8);
  v7 = (a2[1] + result - v5);
  if (v5 != result)
  {
    v8 = result;
    v9 = (a2[1] + result - v5);
    do
    {
      *v9 = 0;
      *v9++ = *v8;
      *v8++ = 0;
    }

    while (v8 != v5);
    do
    {
      result = sub_100005978(result) + 1;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v10 = *a1;
  *a1 = v7;
  *(a1 + 8) = v10;
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return result;
}

uint64_t sub_100222180(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    sub_100005978((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_1002221D0(uint64_t *a1, const void ***a2, const void ***a3, const void ***a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_100222290(a1, *a2, a2[1], a2[1] - *a2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_100222290(a1 + 3, *a3, a3[1], a3[1] - *a3);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_100222290(a1 + 6, *a4, a4[1], a4[1] - *a4);
  return a1;
}

void sub_100222264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100222314(va);
  sub_100222314(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100222290(uint64_t *result, const void **a2, const void **a3, unint64_t a4)
{
  if (a4)
  {
    sub_10005B39C(result, a4);
  }

  return result;
}

void sub_100222314(void ***a1)
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
        v4 = sub_100005978(v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *sub_100222398(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_10005B39C(a1, a2);
  }

  return a1;
}

uint64_t *sub_100222418(uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_10005B39C(a1, a2);
  }

  return a1;
}

void sub_100222474(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100222490(uint64_t a1)
{
  if (*(a1 + 384) == 1 && *(a1 + 383) < 0)
  {
    operator delete(*(a1 + 360));
  }

  if (*(a1 + 352) == 1 && *(a1 + 351) < 0)
  {
    operator delete(*(a1 + 328));
  }

  if (*(a1 + 320) == 1 && *(a1 + 319) < 0)
  {
    operator delete(*(a1 + 296));
  }

  if (*(a1 + 288) == 1 && *(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  if (*(a1 + 256) == 1)
  {
    sub_100221F4C(a1);
  }

  return a1;
}

const void **sub_100222538(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

const void **sub_100222570(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v5 = 0;
    sub_10005C7A4(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    sub_100005978(&v5);
  }

  return a1;
}

void sub_1002225C8(uint64_t a1, unint64_t a2, int *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 2)
  {
    if (a2)
    {
      v12 = 0;
      v13 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = v6 + 4 * a2;
      v17 = *a3;
      v18 = v14 + 4;
      v19 = (v6 + 8);
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1017DF6E0)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_1017DF6D0)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = *(a1 + 8);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      sub_1000CE3D4();
    }

    v9 = v7 >> 2;
    v10 = v5 - *a1;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      sub_100016740(a1, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = 4 * v9 + 4 * a2;
    v25 = *a3;
    v26 = (a2 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((a2 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1017DF6E0)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_1017DF6D0)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = *(a1 + 8) - *a1;
    v33 = v23 - v32;
    memcpy((v23 - v32), *a1, v32);
    v34 = *a1;
    *a1 = v33;
    *(a1 + 8) = v24;
    *(a1 + 16) = 0;
    if (v34)
    {

      operator delete(v34);
    }
  }
}

void sub_100222890(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[4], v1, sub_100222964);
  __cxa_rethrow();
}

void sub_1002228D0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100222924(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100222964(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *sub_100222990(void *a1, CFTypeRef *a2)
{
  v4 = *a2;
  if (*a2 && (v5 = CFGetTypeID(*a2), v5 == CFStringGetTypeID()))
  {
    *a1 = v4;
  }

  else
  {
    *a1 = 0;
    if (*a2)
    {
      CFRelease(*a2);
    }
  }

  return a1;
}

void sub_1002229FC(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100222B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100101814(va);
  if (a5)
  {
    (*(*a5 + 8))(a5);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

void **sub_100222B9C(void **a1)
{
  sub_100224AF4(a1 + 3);
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

uint64_t sub_100222BDC(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_100222C14(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100222C58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  memset(v5, 0, sizeof(v5));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v5, v4);
  sub_100222D50(a1, v5);
}

void sub_100222D20(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100222D50(uint64_t *a1, void *x1_0)
{
  v4 = 0;
  v5 = 0;
  sub_100222E4C(a1, x1_0);
}

void sub_100222E34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100222EE4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_100222F28(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_100222F6C(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_10022324C(a1, a2, 1, 2);
}

void sub_100223090(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_1002232E4(&v2, a2);
}

uint64_t sub_1002230F0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t *sub_100223134(uint64_t *a1, void *a2, int a3, uint64_t **a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_100222EE4(a1);
  result = sub_1002241D0(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_100222F28(v10 + 2);
        sub_100223914(v15, a2);
        v10 = v22;
      }

      if (*(sub_100222F28(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_100222EE4(a1);
        v18 = sub_1002241D0(v17);
        v19 = sub_100222F28(v22 + 2);
        v16 = sub_100100CE8(v18, (v19 + 64), &v22);
      }

      v22 = v16;
      v20 = sub_100222EE4(a1);
      result = sub_1002241D0(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

uint64_t *sub_10022324C(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v9 = sub_100222EE4(a1);
  v10 = sub_1002241D0(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_100222EE4(a1);
    v11 = *(sub_1002241D0(v12) + 8);
  }

  v14 = v11;
  return sub_100223134(a1, a2, a3, &v14, a4);
}

void sub_1002232E4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100223350(&v2, a2);
}

void sub_1002233C0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_100223400(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 24));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_10022351C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002236A4(a1, a2);
  sub_100223710((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

uint64_t *sub_1002236A4(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    sub_1000FB140(a1, (v2 + 16));
  }

  return a1;
}

uint64_t sub_100223710(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_100223778(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1002237E4(&v2, a2);
}

void sub_100223854(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_100223894(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t *sub_100223914(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_100223980(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_100223980(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1002239C4(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E32168;
  operator new();
}

void sub_100223AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001018AC(va);
  operator delete();
}

void sub_100223B3C(uint64_t a1)
{
  sub_100223EE8(a1);

  operator delete();
}

uint64_t sub_100223B74(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_100223F60(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_100223C20(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100223C50(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_100223C7C(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_100223CA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 32);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v7[1] = v2;
  v7[2] = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7[0] = v5;
  return sub_10004A724(v7);
}

void sub_100223D00(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100223D6C(&v2, a2);
}

void sub_100223DDC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100223E04(v1);
  __cxa_rethrow();
}

uint64_t sub_100223E04(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_100224AF4((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_100223E78(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_100224AF4((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_100223EE8(uint64_t a1)
{
  *a1 = off_101E32168;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_100223F60(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_100223980(result + 4); ; i += 6)
    {
      result = sub_100223980(v2);
      if (i == result[1])
      {
        break;
      }

      memset(v6, 0, sizeof(v6));
      sub_10004ACE8(i, v6);
      if (sub_100048EA8(i))
      {
        if (*(v4 + 24) == 1)
        {
          *(v4 + 24) = 0;
          sub_100100F00(v4, a2);
        }

        return sub_10004B040(v6);
      }

      sub_10004B040(v6);
    }
  }

  return result;
}

void sub_100224048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_100224068(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1002240D4(&v2, a2);
}

void sub_100224144(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_100224188(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1002241D0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t sub_100224214(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = *(a2 + 3);
  *(a1 + 16) = *(a2 + 2);
  *(a1 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
    v5 = *a1;
  }

  else
  {
    v5 = v3;
  }

  dispatch_retain(v5);
  return a1;
}

void (***sub_100224268(void (***result)(void, void, uint64_t), void (***a2)(void, void, uint64_t)))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_100224A3C(v4, result);
    sub_100224A3C(v3, a2);
    sub_100224A3C(a2, v4);
    return sub_100224AF4(v4);
  }

  return result;
}

uint64_t sub_1002242E4(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      sub_100222BDC(result);
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N3ctu12DispatchSlotIZN21ThumperPrimaryControl10initializeEvE3$_0EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN21ThumperPrimaryControl10initializeEvE3$_0EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_1002243E0(uint64_t **a1, __int128 *a2, uint64_t a3)
{
  v4 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v11 = *(a2 + 2);
  }

  sub_1002249D4(v9, a3);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v13 = v7;
    v14 = v8;
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v8);
    std::__shared_weak_count::__release_weak(v8);
    std::__shared_weak_count::__release_weak(v8);
    std::__shared_weak_count::__release_weak(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  else
  {
    v13 = *(v4 + 16);
    v14 = 0;
  }

  v12[0] = off_101E322B0;
  v12[1] = v6;
  sub_100224558(v5, v12, &__dst, v9);
}

void sub_100224510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_100224AF4((v66 - 80));
  if (v65)
  {
    std::__shared_weak_count::__release_weak(v65);
  }

  if (a65)
  {
    sub_100220C2C(&a9);
  }

  if (*(v66 - 89) < 0)
  {
    operator delete(*(v66 - 112));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002246F4(void *a1)
{
  sub_1002247B4(a1[4]);
  v2 = a1[4];
  if (v2)
  {
    sub_100224AF4(v2);
    operator delete();
  }

  v3 = a1[5];
  if (v3)
  {
    if (*(v3 + 23) < 0)
    {
      operator delete(*v3);
    }

    operator delete();
  }

  result = a1[6];
  if (result)
  {
    if (*(result + 456) == 1)
    {
      sub_100220C2C(result);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1002247B4(void *a1)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v4, "call to empty boost::function");
    v4.__vftable = &off_101E25EA8;
    sub_1001028A8(&v4);
  }

  v1 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v2 = a1 + 1;

  return v1(v2);
}

void sub_10022484C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN21ThumperPrimaryControl10initializeEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN21ThumperPrimaryControl10initializeEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_100224930(uint64_t *a1, void *a2, _BYTE *a3)
{
  v4 = a1[2];
  if (v4)
  {
    v7 = *a1;
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[1])
      {
        sub_100217A24(v7, a2, a3);
      }

      sub_100004A34(v9);
    }
  }
}

_BYTE *sub_1002249D4(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[456] = 0;
  if (*(a2 + 456) == 1)
  {
    sub_1002217D8(a1, a2);
    a1[456] = 1;
  }

  return a1;
}

void sub_100224A1C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 456) == 1)
  {
    sub_100220C2C(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100224A3C(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_100224AD0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_100224AF4(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_100224B44(unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100102EC0(a1, a2);
  }

  else
  {
    sub_100102FF0(a1[1], a2);
    result = v3 + 24;
    a1[1] = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void *sub_100224B98(void *a1)
{
  *a1 = off_101E322E0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100224BE4(void *a1)
{
  *a1 = off_101E322E0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_100224C50(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::lock(v2);
  }

  operator new();
}

void sub_100224D00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100224DA4(void *a1)
{
  *a1 = off_101E32330;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_100224DF0(void *a1)
{
  *a1 = off_101E32330;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

void sub_100224EC8(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_10022500C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100101814(va);
  if (a5)
  {
    (*(*a5 + 8))(a5);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

void **sub_100225068(void **a1)
{
  sub_100226D24(a1 + 3);
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

uint64_t sub_1002250A8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1002250EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  memset(v5, 0, sizeof(v5));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v5, v4);
  sub_1002251E4(a1, v5);
}

void sub_1002251B4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002251E4(uint64_t *a1, void *x1_0)
{
  v4 = 0;
  v5 = 0;
  sub_1002252E0(a1, x1_0);
}

void sub_1002252C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100225378(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_1002253BC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_100225400(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_1002256E0(a1, a2, 1, 2);
}

void sub_100225524(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_100225778(&v2, a2);
}

uint64_t sub_100225584(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t *sub_1002255C8(uint64_t *a1, void *a2, int a3, uint64_t **a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_100225378(a1);
  result = sub_100226664(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_1002253BC(v10 + 2);
        sub_100225DA8(v15, a2);
        v10 = v22;
      }

      if (*(sub_1002253BC(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_100225378(a1);
        v18 = sub_100226664(v17);
        v19 = sub_1002253BC(v22 + 2);
        v16 = sub_100100CE8(v18, (v19 + 64), &v22);
      }

      v22 = v16;
      v20 = sub_100225378(a1);
      result = sub_100226664(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

uint64_t *sub_1002256E0(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v9 = sub_100225378(a1);
  v10 = sub_100226664(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_100225378(a1);
    v11 = *(sub_100226664(v12) + 8);
  }

  v14 = v11;
  return sub_1002255C8(a1, a2, a3, &v14, a4);
}

void sub_100225778(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1002257E4(&v2, a2);
}

void sub_100225854(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_100225894(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 24));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_1002259B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100225B38(a1, a2);
  sub_100225BA4((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

uint64_t *sub_100225B38(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    sub_1000FB140(a1, (v2 + 16));
  }

  return a1;
}

uint64_t sub_100225BA4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_100225C0C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100225C78(&v2, a2);
}

void sub_100225CE8(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_100225D28(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t *sub_100225DA8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_100225E14(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_100225E14(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100225E58(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E32430;
  operator new();
}

void sub_100225F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001018AC(va);
  operator delete();
}

void sub_100225FD0(uint64_t a1)
{
  sub_10022637C(a1);

  operator delete();
}

uint64_t sub_100226008(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_1002263F4(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_1002260B4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002260E4(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_100226110(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_10022613C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 32);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v7[1] = v2;
  v7[2] = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7[0] = v5;
  return sub_10004A724(v7);
}

void sub_100226194(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100226200(&v2, a2);
}

void sub_100226270(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100226298(v1);
  __cxa_rethrow();
}

uint64_t sub_100226298(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_100226D24((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_10022630C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_100226D24((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_10022637C(uint64_t a1)
{
  *a1 = off_101E32430;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_1002263F4(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_100225E14(result + 4); ; i += 6)
    {
      result = sub_100225E14(v2);
      if (i == result[1])
      {
        break;
      }

      memset(v6, 0, sizeof(v6));
      sub_10004ACE8(i, v6);
      if (sub_100048EA8(i))
      {
        if (*(v4 + 24) == 1)
        {
          *(v4 + 24) = 0;
          sub_100100F00(v4, a2);
        }

        return sub_10004B040(v6);
      }

      sub_10004B040(v6);
    }
  }

  return result;
}

void sub_1002264DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_1002264FC(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100226568(&v2, a2);
}

void sub_1002265D8(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_10022661C(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100226664(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void (***sub_1002266A8(void (***result)(void, void, uint64_t), void (***a2)(void, void, uint64_t)))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_100226C6C(v4, result);
    sub_100226C6C(v3, a2);
    sub_100226C6C(a2, v4);
    return sub_100226D24(v4);
  }

  return result;
}

uint64_t sub_100226724(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      sub_100222BDC(result);
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N3ctu12DispatchSlotIZN21ThumperPrimaryControl10initializeEvE3$_1EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN21ThumperPrimaryControl10initializeEvE3$_1EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_100226820(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v6 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v14 = *(a2 + 16);
  }

  v8 = *a4;
  v7 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v9 = *v6;
  v10 = *(v6 + 8);
  v11 = *(v6 + 16);
  v12 = *(v6 + 24);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v17 = v11;
    v18 = v12;
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  else
  {
    v17 = *(v6 + 16);
    v18 = 0;
  }

  v16[0] = off_101E32558;
  v16[1] = v10;
  v15[0] = v8;
  v15[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1005A42F8(v9, v16, __p, v5, v15);
}

void sub_100226974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void (**a18)(void, void, uint64_t))
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_100226D24(&a18);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002269BC(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v6, "call to empty boost::function");
    v6.__vftable = &off_101E25EA8;
    sub_1001028A8(&v6);
  }

  v4 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v5 = *a4;
  *a4 = 0uLL;
  v4(a1 + 1, a2, a3, &v5);
  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_100226A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::runtime_error a11)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100226A78(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN21ThumperPrimaryControl10initializeEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN21ThumperPrimaryControl10initializeEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_100226B5C(uint64_t *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v5 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v7 = a1[2];
  if (v7)
  {
    v10 = *a1;
    v11 = std::__shared_weak_count::lock(v7);
    if (v11)
    {
      v12 = v11;
      if (a1[1])
      {
        v13[0] = v6;
        v13[1] = v5;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100217D2C(v10, a2, a3, v13);
        if (v5)
        {
          sub_100004A34(v5);
        }
      }

      sub_100004A34(v12);
    }
  }

  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_100226C3C(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100004A34(v1);
    sub_100004A34(v2);
  }

  else
  {
    v1 = v2;
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100226C6C(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_100226D00(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_100226D24(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

void sub_100226D74(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100226EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100101814(va);
  if (a5)
  {
    (*(*a5 + 8))(a5);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

void **sub_100226F14(void **a1)
{
  sub_100228BD0(a1 + 3);
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

uint64_t sub_100226F54(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100226F98(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  memset(v5, 0, sizeof(v5));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v5, v4);
  sub_100227090(a1, v5);
}

void sub_100227060(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100227090(uint64_t *a1, void *x1_0)
{
  v4 = 0;
  v5 = 0;
  sub_10022718C(a1, x1_0);
}

void sub_100227174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100227224(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_100227268(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_1002272AC(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_10022758C(a1, a2, 1, 2);
}

void sub_1002273D0(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_100227624(&v2, a2);
}

uint64_t sub_100227430(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t *sub_100227474(uint64_t *a1, void *a2, int a3, uint64_t **a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_100227224(a1);
  result = sub_100228510(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_100227268(v10 + 2);
        sub_100227C54(v15, a2);
        v10 = v22;
      }

      if (*(sub_100227268(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_100227224(a1);
        v18 = sub_100228510(v17);
        v19 = sub_100227268(v22 + 2);
        v16 = sub_100100CE8(v18, (v19 + 64), &v22);
      }

      v22 = v16;
      v20 = sub_100227224(a1);
      result = sub_100228510(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

uint64_t *sub_10022758C(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v9 = sub_100227224(a1);
  v10 = sub_100228510(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_100227224(a1);
    v11 = *(sub_100228510(v12) + 8);
  }

  v14 = v11;
  return sub_100227474(a1, a2, a3, &v14, a4);
}

void sub_100227624(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100227690(&v2, a2);
}

void sub_100227700(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_100227740(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 24));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_10022785C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002279E4(a1, a2);
  sub_100227A50((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

uint64_t *sub_1002279E4(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    sub_1000FB140(a1, (v2 + 16));
  }

  return a1;
}

uint64_t sub_100227A50(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_100227AB8(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100227B24(&v2, a2);
}

void sub_100227B94(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_100227BD4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t *sub_100227C54(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_100227CC0(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_100227CC0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100227D04(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E32648;
  operator new();
}

void sub_100227E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001018AC(va);
  operator delete();
}

void sub_100227E7C(uint64_t a1)
{
  sub_100228228(a1);

  operator delete();
}

uint64_t sub_100227EB4(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_1002282A0(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_100227F60(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100227F90(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_100227FBC(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_100227FE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 32);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v7[1] = v2;
  v7[2] = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7[0] = v5;
  return sub_10004A724(v7);
}

void sub_100228040(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1002280AC(&v2, a2);
}

void sub_10022811C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100228144(v1);
  __cxa_rethrow();
}

uint64_t sub_100228144(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_100228BD0((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1002281B8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_100228BD0((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_100228228(uint64_t a1)
{
  *a1 = off_101E32648;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_1002282A0(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_100227CC0(result + 4); ; i += 6)
    {
      result = sub_100227CC0(v2);
      if (i == result[1])
      {
        break;
      }

      memset(v6, 0, sizeof(v6));
      sub_10004ACE8(i, v6);
      if (sub_100048EA8(i))
      {
        if (*(v4 + 24) == 1)
        {
          *(v4 + 24) = 0;
          sub_100100F00(v4, a2);
        }

        return sub_10004B040(v6);
      }

      sub_10004B040(v6);
    }
  }

  return result;
}

void sub_100228388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_1002283A8(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100228414(&v2, a2);
}

void sub_100228484(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1002284C8(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100228510(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void (***sub_100228554(void (***result)(void, void, uint64_t), void (***a2)(void, void, uint64_t)))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_100228B18(v4, result);
    sub_100228B18(v3, a2);
    sub_100228B18(a2, v4);
    return sub_100228BD0(v4);
  }

  return result;
}

uint64_t sub_1002285D0(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      sub_100222BDC(result);
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N3ctu12DispatchSlotIZN21ThumperPrimaryControl10initializeEvE3$_2EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN21ThumperPrimaryControl10initializeEvE3$_2EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_1002286CC(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v6 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v14 = *(a2 + 16);
  }

  v8 = *a4;
  v7 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v9 = *v6;
  v10 = *(v6 + 8);
  v11 = *(v6 + 16);
  v12 = *(v6 + 24);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v17 = v11;
    v18 = v12;
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  else
  {
    v17 = *(v6 + 16);
    v18 = 0;
  }

  v16[0] = off_101E32770;
  v16[1] = v10;
  v15[0] = v8;
  v15[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1005A4A60(v9, v16, __p, v5, v15);
}

void sub_100228820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void (**a18)(void, void, uint64_t))
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_100228BD0(&a18);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100228868(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v6, "call to empty boost::function");
    v6.__vftable = &off_101E25EA8;
    sub_1001028A8(&v6);
  }

  v4 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v5 = *a4;
  *a4 = 0uLL;
  v4(a1 + 1, a2, a3, &v5);
  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_1002288FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::runtime_error a11)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100228924(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN21ThumperPrimaryControl10initializeEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN21ThumperPrimaryControl10initializeEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_100228A08(uint64_t *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v5 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v7 = a1[2];
  if (v7)
  {
    v10 = *a1;
    v11 = std::__shared_weak_count::lock(v7);
    if (v11)
    {
      v12 = v11;
      if (a1[1])
      {
        v13[0] = v6;
        v13[1] = v5;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_10021815C(v10, a2, a3, v13);
        if (v5)
        {
          sub_100004A34(v5);
        }
      }

      sub_100004A34(v12);
    }
  }

  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_100228AE8(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100004A34(v1);
    sub_100004A34(v2);
  }

  else
  {
    v1 = v2;
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100228B18(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_100228BAC(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_100228BD0(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

void sub_100228C20(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_100228D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100101814(va);
  if (a5)
  {
    (*(*a5 + 8))(a5);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

void **sub_100228DC0(void **a1)
{
  sub_10022AD58(a1 + 3);
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

uint64_t sub_100228E00(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100228E44(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  memset(v5, 0, sizeof(v5));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v5, v4);
  sub_100228F3C(a1, v5);
}

void sub_100228F0C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100228F3C(uint64_t *a1, void *x1_0)
{
  v4 = 0;
  v5 = 0;
  sub_100229038(a1, x1_0);
}

void sub_100229020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002290D0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_100229114(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_100229158(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_100229438(a1, a2, 1, 2);
}

void sub_10022927C(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_1002294D0(&v2, a2);
}

uint64_t sub_1002292DC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t *sub_100229320(uint64_t *a1, void *a2, int a3, uint64_t **a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_1002290D0(a1);
  result = sub_10022A3BC(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_100229114(v10 + 2);
        sub_100229B00(v15, a2);
        v10 = v22;
      }

      if (*(sub_100229114(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_1002290D0(a1);
        v18 = sub_10022A3BC(v17);
        v19 = sub_100229114(v22 + 2);
        v16 = sub_100100CE8(v18, (v19 + 64), &v22);
      }

      v22 = v16;
      v20 = sub_1002290D0(a1);
      result = sub_10022A3BC(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

uint64_t *sub_100229438(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v9 = sub_1002290D0(a1);
  v10 = sub_10022A3BC(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_1002290D0(a1);
    v11 = *(sub_10022A3BC(v12) + 8);
  }

  v14 = v11;
  return sub_100229320(a1, a2, a3, &v14, a4);
}

void sub_1002294D0(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10022953C(&v2, a2);
}

void sub_1002295AC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_1002295EC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 24));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_100229708(uint64_t a1, uint64_t a2)
{
  v4 = sub_100229890(a1, a2);
  sub_1002298FC((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

uint64_t *sub_100229890(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    sub_1000FB140(a1, (v2 + 16));
  }

  return a1;
}

uint64_t sub_1002298FC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_100229964(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1002299D0(&v2, a2);
}

void sub_100229A40(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_100229A80(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t *sub_100229B00(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_100229B6C(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_100229B6C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100229BB0(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E32860;
  operator new();
}

void sub_100229CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001018AC(va);
  operator delete();
}

void sub_100229D28(uint64_t a1)
{
  sub_10022A0D4(a1);

  operator delete();
}

uint64_t sub_100229D60(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_10022A14C(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_100229E0C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100229E3C(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_100229E68(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_100229E94@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 32);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v7[1] = v2;
  v7[2] = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7[0] = v5;
  return sub_10004A724(v7);
}

void sub_100229EEC(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100229F58(&v2, a2);
}

void sub_100229FC8(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100229FF0(v1);
  __cxa_rethrow();
}

uint64_t sub_100229FF0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_10022AD58((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_10022A064(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10022AD58((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_10022A0D4(uint64_t a1)
{
  *a1 = off_101E32860;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_10022A14C(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_100229B6C(result + 4); ; i += 6)
    {
      result = sub_100229B6C(v2);
      if (i == result[1])
      {
        break;
      }

      memset(v6, 0, sizeof(v6));
      sub_10004ACE8(i, v6);
      if (sub_100048EA8(i))
      {
        if (*(v4 + 24) == 1)
        {
          *(v4 + 24) = 0;
          sub_100100F00(v4, a2);
        }

        return sub_10004B040(v6);
      }

      sub_10004B040(v6);
    }
  }

  return result;
}

void sub_10022A234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_10022A254(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10022A2C0(&v2, a2);
}

void sub_10022A330(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_10022A374(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10022A3BC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void (***sub_10022A400(void (***result)(void, void, uint64_t), void (***a2)(void, void, uint64_t)))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_10022ACA0(v4, result);
    sub_10022ACA0(v3, a2);
    sub_10022ACA0(a2, v4);
    return sub_10022AD58(v4);
  }

  return result;
}

uint64_t sub_10022A47C(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      sub_100222BDC(result);
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N3ctu12DispatchSlotIZN21ThumperPrimaryControl10initializeEvE3$_3EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN21ThumperPrimaryControl10initializeEvE3$_3EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_10022A578(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = a3;
  v6 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v14 = *(a2 + 16);
  }

  v8 = *a4;
  v7 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v9 = *v6;
  v10 = *(v6 + 8);
  v11 = *(v6 + 16);
  v12 = *(v6 + 24);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v17 = v11;
    v18 = v12;
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  else
  {
    v17 = *(v6 + 16);
    v18 = 0;
  }

  v16[0] = off_101E329A8;
  v16[1] = v10;
  v15[0] = v8;
  v15[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10022A714(v9, v16, __p, v5, v15);
}

void sub_10022A6CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void (**a18)(void, void, uint64_t))
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_10022AD58(&a18);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10022A8DC(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[7];
  v5 = *a1[6];
  v6 = v4[1];
  *&v12 = *v4;
  *(&v12 + 1) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10022A9F0(v2, v3, v5, &v12);
  if (*(&v12 + 1))
  {
    sub_100004A34(*(&v12 + 1));
  }

  v7 = a1[4];
  if (v7)
  {
    sub_10022AD58(v7);
    operator delete();
  }

  v8 = a1[5];
  if (v8)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    operator delete();
  }

  result = a1[6];
  if (result)
  {
    operator delete();
  }

  v10 = a1[7];
  if (v10)
  {
    v11 = *(v10 + 8);
    if (v11)
    {
      sub_100004A34(v11);
    }

    operator delete();
  }

  return result;
}

void sub_10022A9D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10022A9F0(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v6, "call to empty boost::function");
    v6.__vftable = &off_101E25EA8;
    sub_1001028A8(&v6);
  }

  v4 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v5 = *a4;
  *a4 = 0uLL;
  v4(a1 + 1, a2, a3, &v5);
  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_10022AA84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, std::runtime_error a11)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10022AAAC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN21ThumperPrimaryControl10initializeEvE3$_3" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN21ThumperPrimaryControl10initializeEvE3$_3" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_10022AB90(uint64_t *a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v5 = a4[1];
  *a4 = 0;
  a4[1] = 0;
  v7 = a1[2];
  if (v7)
  {
    v10 = *a1;
    v11 = std::__shared_weak_count::lock(v7);
    if (v11)
    {
      v12 = v11;
      if (a1[1])
      {
        v13[0] = v6;
        v13[1] = v5;
        if (v5)
        {
          atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100215CCC(v10, a2, a3, v13);
        if (v5)
        {
          sub_100004A34(v5);
        }
      }

      sub_100004A34(v12);
    }
  }

  if (v5)
  {

    sub_100004A34(v5);
  }
}

void sub_10022AC70(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100004A34(v1);
    sub_100004A34(v2);
  }

  else
  {
    v1 = v2;
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10022ACA0(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_10022AD34(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_10022AD58(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

void sub_10022ADA8(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_10022AEEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100101814(va);
  if (a5)
  {
    (*(*a5 + 8))(a5);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10022AF48(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_10022AF8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022B114(a1, a2);
  sub_10022B180((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

uint64_t *sub_10022B114(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    sub_1000FB140(a1, (v2 + 16));
  }

  return a1;
}

uint64_t sub_10022B180(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_10022B1E8(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10022B254(&v2, a2);
}

void sub_10022B2C4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_10022B304(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t *sub_10022B384(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_1003517A4(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

void sub_10022B3F0(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E32A50;
  operator new();
}

void sub_10022B500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001018AC(va);
  operator delete();
}

void sub_10022B568(uint64_t a1)
{
  sub_10022B72C(a1);

  operator delete();
}

uint64_t sub_10022B5A0(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_10022B7A4(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_10022B64C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10022B67C(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_10022B6A8(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_10022B6D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 32);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v7[1] = v2;
  v7[2] = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7[0] = v5;
  return sub_10004A724(v7);
}

uint64_t sub_10022B72C(uint64_t a1)
{
  *a1 = off_101E32A50;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_10022B7A4(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_1003517A4(result + 4); ; i += 6)
    {
      result = sub_1003517A4(v2);
      if (i == result[1])
      {
        break;
      }

      memset(v6, 0, sizeof(v6));
      sub_10004ACE8(i, v6);
      if (sub_100048EA8(i))
      {
        if (*(v4 + 24) == 1)
        {
          *(v4 + 24) = 0;
          sub_100100F00(v4, a2);
        }

        return sub_10004B040(v6);
      }

      sub_10004B040(v6);
    }
  }

  return result;
}

void sub_10022B88C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_10022B8AC(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10022B918(&v2, a2);
}

void sub_10022B988(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_10022B9CC(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10022BA14(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t sub_10022BA58(uint64_t result, _WORD *a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    result = *a2;
    if (*a2)
    {
      sub_100222BDC(result);
      operator delete();
    }

LABEL_13:
    *a2 = 0;
    return result;
  }

  if (a3 != 3)
  {
LABEL_8:
    a2[4] = 0;
    return result;
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result != ("N3ctu12DispatchSlotIZN21ThumperPrimaryControl10initializeEvE3$_4EE" & 0x7FFFFFFFFFFFFFFFLL))
  {
    result = strcmp(result, ("N3ctu12DispatchSlotIZN21ThumperPrimaryControl10initializeEvE3$_4EE" & 0x7FFFFFFFFFFFFFFFLL));
    if (result)
    {
      goto LABEL_13;
    }
  }

  *a2 = *v4;
  return result;
}

void sub_10022BB54(uint64_t **a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v8 = *(a2 + 16);
  }

  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v10 = v5;
    v11 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_weak(v6);
    std::__shared_weak_count::__release_weak(v6);
    std::__shared_weak_count::__release_weak(v6);
    std::__shared_weak_count::__release_weak(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  else
  {
    v10 = v5;
    v11 = 0;
  }

  v9[0] = off_101E32B30;
  v9[1] = v4;
  sub_100351C78(v3, v9, __p);
}

void sub_10022BC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void (**a16)(void, void, uint64_t))
{
  sub_100352130(&a16);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10022BC84(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    *a2 = *a1;
    v5 = *(a1 + 16);
    *(a2 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
    }

    if (a3 != 1)
    {
      return;
    }

    v6 = *(a1 + 16);
    if (!v6)
    {
      return;
    }

LABEL_13:

    std::__shared_weak_count::__release_weak(v6);
    return;
  }

  if (a3 == 3)
  {
    v7 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v7 == ("ZN21ThumperPrimaryControl10initializeEvE3$_4" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v7, ("ZN21ThumperPrimaryControl10initializeEvE3$_4" & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *a2 = a1;
    }

    else
    {
      *a2 = 0;
    }

    return;
  }

  if (a3 != 2)
  {
LABEL_2:
    *(a2 + 8) = 0;
    return;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    goto LABEL_13;
  }
}

void sub_10022BD68(uint64_t *a1, void *a2)
{
  v3 = a1[2];
  if (v3)
  {
    v5 = *a1;
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[1])
      {
        sub_10021760C(v5, a2);
      }

      sub_100004A34(v7);
    }
  }
}

void *sub_10022BDF8(void *a1)
{
  *a1 = off_101E32B60;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10022BE44(void *a1)
{
  *a1 = off_101E32B60;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10022BF24(uint64_t result, uint64_t a2)
{
  *a2 = off_101E32B60;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10022BF64(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10022BF74(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10022BFB4(void *a1, cellplan::RemoteSimSubscriptionInfo *a2)
{
  sub_10022C090(a1[1], a2);
  v3 = a1[4];
  if (v3)
  {
    v4 = a1[2];
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[3])
      {
        sub_100212DBC(v4);
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_10022C044(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10022C090(_BYTE *a1, cellplan::RemoteSimSubscriptionInfo *a2)
{
  if (xpc_get_type(*a2) == &_xpc_type_null)
  {
    sub_100220B4C(a1);
  }

  else
  {
    if ((*a1 & 1) == 0)
    {
      v8 = 0;
      v11 = 0;
      v14 = 0;
      v6 = 0;
      v5 = 0uLL;
      v7 = 0;
      sub_10022C1D0(a1, &v5);
      if (v11 == 1)
      {
        if (v13 < 0)
        {
          operator delete(__p);
        }

        v11 = 0;
      }

      if (v8 == 1)
      {
        if (v10 < 0)
        {
          operator delete(v9);
        }

        v8 = 0;
      }

      if (SHIBYTE(v6) < 0)
      {
        operator delete(v5);
      }

      if ((*a1 & 1) == 0)
      {
        sub_101761304();
      }
    }

    cellplan::read_rest_value((a1 + 8), a2, v4);
  }
}

void sub_10022C1D0(uint64_t a1, __int128 *a2)
{
  if (*a1 == 1)
  {
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    v4 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v4;
    *(a2 + 23) = 0;
    *a2 = 0;
    *(a1 + 32) = *(a2 + 6);
    sub_10016E3EC(a1 + 40, (a2 + 2));
    sub_10016E3EC(a1 + 72, (a2 + 4));
    *(a1 + 104) = *(a2 + 24);
  }

  else
  {

    sub_10022C27C(a1, a2);
  }
}

uint64_t sub_10022C27C(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 24) = *(a2 + 2);
  *(result + 8) = v2;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  *(result + 32) = *(a2 + 6);
  *(result + 40) = 0;
  if (*(a2 + 32) == 1)
  {
    v3 = *(a2 + 40);
    *(result + 64) = *(a2 + 7);
    *(result + 48) = v3;
    a2[3] = 0uLL;
    *(a2 + 5) = 0;
    *(result + 40) = 1;
  }

  *(result + 72) = 0;
  if (*(a2 + 64) == 1)
  {
    v4 = *(a2 + 72);
    *(result + 96) = *(a2 + 11);
    *(result + 80) = v4;
    a2[5] = 0uLL;
    *(a2 + 9) = 0;
    *(result + 72) = 1;
  }

  *(result + 104) = *(a2 + 24);
  *result = 1;
  return result;
}

void sub_10022C380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_10022C424(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10022C3A4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10022C3E4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10022C424(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 32) == 1)
    {
      v2 = (a2 + 8);
      sub_10022C488(&v2);
    }

    operator delete();
  }
}

void sub_10022C488(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10022C4DC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10022C4DC(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 64;
    do
    {
      if (*(v4 + 56) == 1 && *(v4 + 55) < 0)
      {
        operator delete(*(v4 + 32));
      }

      if (*(v4 + 24) == 1 && *(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      if (*(v4 - 8) == 1 && *(v4 - 9) < 0)
      {
        operator delete(*(v4 - 32));
      }

      if (*(v4 - 40) == 1 && *(v4 - 41) < 0)
      {
        operator delete(*(v4 - 64));
      }

      v5 = v4 - 64;
      v4 -= 128;
    }

    while (v5 != v3);
  }

  a1[1] = v3;
}

void sub_10022C5B8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E32C58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_10022C634(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 32);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void sub_10022C70C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_10022C78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10022C7A0(va);
  _Unwind_Resume(a1);
}

void ***sub_10022C7A0(void ***a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = v1;
    sub_100222050(&v2);
    operator delete();
  }

  return a1;
}

void sub_10022C800(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10022C840(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10022C880(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    sub_100222050(&v2);
    operator delete();
  }
}

void sub_10022C8D4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_10022C954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10022C968(va);
  _Unwind_Resume(a1);
}

void ***sub_10022C968(void ***a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = v1;
    sub_100222314(&v2);
    operator delete();
  }

  return a1;
}

void sub_10022C9C8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10022CA08(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10022CA48(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    sub_100222314(&v2);
    operator delete();
  }
}

uint64_t *sub_10022CA9C(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 8))
      {
        sub_10020F318(v3, 0, 0);
      }

      sub_100004A34(v5);
    }
  }

  sub_10007060C(&v8);
  return sub_1000049E0(&v7);
}

void sub_10022CB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_10007060C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

BOOL sub_10022CB3C(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v8)
  {
    v6 = 0;
    v7 = 0;
    sub_10001C610(&v6);
    v4 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  else
  {
    v4 = 0;
  }

  sub_10001C0A0(&v8);
  return v4;
}

void sub_10022CC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    sub_100004A34(a7);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10022CCE8(uint64_t a1, _DWORD *a2)
{
  a2[7] |= 2u;
  a2[4] = *(a1 + 32);
  result = subscriber::simSlotAsInstance();
  a2[7] |= 4u;
  a2[5] = result;
  return result;
}

BOOL sub_10022CD30(wis::MetricFactory *a1, uint64_t a2)
{
  v2 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v8 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v2);
  if (v8)
  {
    v6 = 0;
    v7 = 0;
    sub_10001C610(&v6);
    v4 = v6 != 0;
    if (v6)
    {
      operator new();
    }

    if (v7)
    {
      sub_100004A34(v7);
    }
  }

  else
  {
    v4 = 0;
  }

  sub_10001C0A0(&v8);
  return v4;
}

void sub_10022CE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    sub_100004A34(a7);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10022CEDC(uint64_t a1, _DWORD *a2)
{
  a2[7] |= 2u;
  a2[4] = *(a1 + 32);
  result = subscriber::simSlotAsInstance();
  a2[7] |= 4u;
  a2[5] = result;
  return result;
}

void sub_10022CF24(uint64_t a1, int a2)
{
  v4 = a1 + 32;
  (*(*(a1 + 32) + 440))(buf, a1 + 32);
  if (*buf)
  {
    (*(*v4 + 440))(&v27, v4);
    v5 = (*(*v27 + 56))(v27, 1);
    if (v28)
    {
      sub_100004A34(v28);
    }
  }

  else
  {
    v5 = 0;
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v5)
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 80));
    v7 = ServiceMap;
    v9 = v8;
    if (v8 < 0)
    {
      v10 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      v11 = 5381;
      do
      {
        v9 = v11;
        v12 = *v10++;
        v11 = (33 * v11) ^ v12;
      }

      while (v12);
    }

    std::mutex::lock(ServiceMap);
    *buf = v9;
    v13 = sub_100009510(&v7[1].__m_.__sig, buf);
    if (!v13)
    {
      std::mutex::unlock(v7);
      return;
    }

    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      sub_100004A34(v14);
      if (!v15)
      {
        return;
      }
    }

    else
    {
      std::mutex::unlock(v7);
      if (!v15)
      {
        return;
      }
    }

    sub_100004AA0(buf, (a1 + 40));
    v16 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
    }

    v17 = *(a1 + 72);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = "disable";
      if (a2)
      {
        v18 = "enable";
      }

      *buf = 136315394;
      *&buf[4] = "checkAndSetWiFiCallingAttachAPN";
      *&buf[12] = 2080;
      *&buf[14] = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s: %s WiFi Calling Attach APN if needed", buf, 0x16u);
    }

    v19 = Registry::getServiceMap(*(a1 + 80));
    v20 = v19;
    if (v8 < 0)
    {
      v21 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
      v22 = 5381;
      do
      {
        v8 = v22;
        v23 = *v21++;
        v22 = (33 * v22) ^ v23;
      }

      while (v23);
    }

    std::mutex::lock(v19);
    *buf = v8;
    v24 = sub_100009510(&v20[1].__m_.__sig, buf);
    if (v24 && (v25 = v24[4]) != 0)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v20);
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v25);
    }

    else
    {
      std::mutex::unlock(v20);
    }

    PersonalitySpecificImpl::simSlot(a1);
    sub_100004AA0(buf, (a1 + 40));
    v26 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v26);
    }

    v29 = 0;
    operator new();
  }
}

void sub_10022D308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002B644(va);
  if (v7)
  {
    if (!v5)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_100004A34(v6);
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  std::__shared_weak_count::__release_weak(v5);
  goto LABEL_6;
}

void sub_10022D3B4(void **a1, uint64_t a2)
{
  v20 = 0;
  v21 = 0;
  ((*a1)[2])(&v20);
  if (v20 && (*(*a1[21] + 72))(a1[21]))
  {
    (a1[4][55])(buf, a1 + 4);
    if (*buf)
    {
      (a1[4][55])(&v18, a1 + 4);
      if ((*(*v18 + 56))(v18, 1))
      {
        v4 = *(a1 + 158) == 0;
      }

      else
      {
        v4 = 0;
      }

      if (v19)
      {
        sub_100004A34(v19);
      }
    }

    else
    {
      v4 = 0;
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v4)
    {
      ServiceMap = Registry::getServiceMap(a1[10]);
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
LABEL_27:
            if ((v14 & 1) == 0)
            {
              sub_100004A34(v12);
            }

            goto LABEL_29;
          }

LABEL_22:
          v15 = a1[9];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = "enable";
            if (a2)
            {
              v16 = "disable";
            }

            *buf = 136315394;
            *&buf[4] = "checkAndSendSaDisable";
            *&buf[12] = 2080;
            *&buf[14] = v16;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s: Sending SA %s to BB", buf, 0x16u);
          }

          v17 = PersonalitySpecificImpl::simSlot(a1);
          (*(*v13 + 424))(v13, v17, a2);
          goto LABEL_27;
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
        goto LABEL_27;
      }

      goto LABEL_22;
    }
  }

LABEL_29:
  if (v21)
  {
    sub_100004A34(v21);
  }
}

void sub_10022D6CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10022D73C(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v3 = ServiceMap;
  v5 = v4;
  if (v4 < 0)
  {
    v6 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v42[0] = v5;
  v9 = sub_100009510(&v3[1].__m_.__sig, v42);
  if (!v9)
  {
    v11 = 0;
LABEL_9:
    std::mutex::unlock(v3);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (!v11)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_20;
  }

LABEL_10:
  v14 = Registry::getServiceMap(*(a1 + 80));
  v15 = v14;
  if (v4 < 0)
  {
    v16 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v4 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  std::mutex::lock(v14);
  v42[0] = v4;
  v19 = sub_100009510(&v15[1].__m_.__sig, v42);
  if (v19)
  {
    v21 = v19[3];
    v20 = v19[4];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v15);
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v20);
      goto LABEL_18;
    }
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(v15);
  v20 = 0;
LABEL_18:
  v13 = (*(*v21 + 168))(v21, 5);
  if (v20)
  {
    sub_100004A34(v20);
  }

LABEL_20:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  if (v13)
  {
    v22 = Registry::getServiceMap(*(a1 + 80));
    v23 = v22;
    if (v24 < 0)
    {
      v25 = (v24 & 0x7FFFFFFFFFFFFFFFLL);
      v26 = 5381;
      do
      {
        v24 = v26;
        v27 = *v25++;
        v26 = (33 * v26) ^ v27;
      }

      while (v27);
    }

    std::mutex::lock(v22);
    v42[0] = v24;
    v28 = sub_100009510(&v23[1].__m_.__sig, v42);
    if (!v28)
    {
      std::mutex::unlock(v23);
      return;
    }

    v30 = v28[3];
    v29 = v28[4];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v23);
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v29);
      if (!v30)
      {
LABEL_61:
        sub_100004A34(v29);
        return;
      }
    }

    else
    {
      std::mutex::unlock(v23);
      if (!v30)
      {
        return;
      }
    }

    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    v49 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    *v42 = 0u;
    v31 = PersonalitySpecificImpl::simSlot(a1);
    (*(*v30 + 1088))(v42, v30, v31);
    if (v44 != -1 && BYTE4(v44) == 1)
    {
      sub_1003567A4((a1 + 32), __p);
      v32 = v41;
      if ((v41 & 0x80u) == 0)
      {
        v33 = v41;
      }

      else
      {
        v33 = __p[1];
      }

      v34 = HIBYTE(v43);
      if (v43 < 0)
      {
        v34 = v43;
      }

      if (v33 == v34)
      {
        if ((v41 & 0x80u) == 0)
        {
          v35 = __p;
        }

        else
        {
          v35 = __p[0];
        }

        if (v43 >= 0)
        {
          v36 = &v42[1];
        }

        else
        {
          v36 = v42[1];
        }

        v37 = memcmp(v35, v36, v33) == 0;
      }

      else
      {
        v37 = 0;
      }

      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      if (v37)
      {
        v38 = *(a1 + 72);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          sub_1003567A4((a1 + 32), __p);
          v39 = (v41 & 0x80u) == 0 ? __p : __p[0];
          *buf = 136315394;
          v54 = "handleDataContextIPActivateFailedWithAttachAPN";
          v55 = 2080;
          v56 = v39;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I %s: Context activation with handover from AttachAPN params failed for APN: %s", buf, 0x16u);
          if (v41 < 0)
          {
            operator delete(__p[0]);
          }
        }

        BYTE5(v44) = 1;
      }
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(v42[1]);
    }

    if (v29)
    {
      goto LABEL_61;
    }
  }
}