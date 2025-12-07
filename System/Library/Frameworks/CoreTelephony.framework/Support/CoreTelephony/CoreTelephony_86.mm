void sub_10058A9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, void *a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10058AEF4(uint64_t **a1, void *a2)
{
  v3 = a2;
  v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  rep = v4.__d_.__rep_;
  if (a1[25])
  {
    v6 = a1[21][a1[24] / 0x66] + 40 * (a1[24] % 0x66);
    v7 = v4.__d_.__rep_ - *(v6 + 32);
    v8 = v7 > 30000000000;
    if (v7 > 30000000000)
    {
      do
      {
        v9 = *(v6 + 31);
        if (v9 < 0)
        {
          v9 = *(v6 + 16);
        }

        v10 = (v6 + 8);
        if (v9)
        {
          sub_1000727F0(a1 + 32, (v6 + 8));
        }

        v11 = [v3 removePolicyWithID:*v6];
        v12 = a1[7];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          sub_100585044(a1, __p);
          if (v26 >= 0)
          {
            v13 = __p;
          }

          else
          {
            v13 = __p[0];
          }

          if (*(v6 + 31) < 0)
          {
            v10 = *v10;
          }

          v14 = *v6;
          v15 = asStringBool(v11);
          *buf = 136315906;
          v28 = v13;
          v29 = 2080;
          v30 = v10;
          v31 = 2048;
          v32 = v14;
          v33 = 2080;
          v34 = v15;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I (timeout) removed fTmpPolicies for NWAgent %s: key=%s, id=%lu, result is %s", buf, 0x2Au);
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_10058C0C8(a1 + 20);
        if (!a1[25])
        {
          break;
        }

        v6 = a1[21][a1[24] / 0x66] + 40 * (a1[24] % 0x66);
      }

      while (rep - *(v6 + 32) >= 0x6FC23AC01);
      v8 = v8;
    }
  }

  else
  {
    v8 = 0;
  }

  if (a1[31])
  {
    v16 = a1[27][a1[30] / 0x66] + 40 * (a1[30] % 0x66);
    if (rep - *(v16 + 32) >= 0x4E94914F0001)
    {
      do
      {
        v17 = *(v16 + 31);
        if (v17 < 0)
        {
          v17 = *(v16 + 16);
        }

        v18 = (v16 + 8);
        if (v17)
        {
          sub_1000727F0(a1 + 32, (v16 + 8));
        }

        v19 = [v3 removePolicyWithID:*v16];
        v20 = a1[7];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          sub_100585044(a1, __p);
          if (v26 >= 0)
          {
            v21 = __p;
          }

          else
          {
            v21 = __p[0];
          }

          if (*(v16 + 31) < 0)
          {
            v18 = *v18;
          }

          v22 = *v16;
          v23 = asStringBool(v19);
          *buf = 136315906;
          v28 = v21;
          v29 = 2080;
          v30 = v18;
          v31 = 2048;
          v32 = v22;
          v33 = 2080;
          v34 = v23;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I (timeout) removed fTmpPoliciesLong for NWAgent %s: key=%s, id=%lu, result is %s", buf, 0x2Au);
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_10058C0C8(a1 + 26);
        if (!a1[31])
        {
          break;
        }

        v16 = a1[27][a1[30] / 0x66] + 40 * (a1[30] % 0x66);
      }

      while (rep - *(v16 + 32) >= 0x4E94914F0001);
      v8 = 1;
    }
  }

  return v8;
}

void sub_10058B2B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10058B300(uint64_t result, TrafficDescriptor *this, int a3, uint64_t a4)
{
  v6 = result;
  v8 = 0;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = 3;
  }

  if ((v7 & 2) == 0)
  {
    if ((v7 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_10058B3C4(v6, this, 1, &v8, a4);
    goto LABEL_10;
  }

  result = sub_10058B3C4(result, this, 2, &v8, a4);
  if (v7 & 1) != 0 && (result)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v8 == 1)
  {

    return sub_100585D4C(v6, 3u);
  }

  return result;
}

uint64_t sub_10058B3C4(uint64_t a1, TrafficDescriptor *this, int a3, _BYTE *a4, uint64_t a5)
{
  if (*this == -1)
  {
    v10 = 0;
  }

  else
  {
    v10 = (100 * *this) | 2;
  }

  v11 = *(a1 + 88);
  v18 = 0;
  hasIPTupleInfo = TrafficDescriptor::hasIPTupleInfo(this);
  if (v11)
  {
    v13 = hasIPTupleInfo;
  }

  else
  {
    v13 = 1;
  }

  v17 = 0u;
  memset(__p, 0, sizeof(__p));
  LODWORD(__p[0]) = a3;
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(&__p[1], *a5, *(a5 + 8));
  }

  else
  {
    *&__p[1] = *a5;
    __p[3] = *(a5 + 16);
  }

  LODWORD(v17) = v10;
  DWORD1(v17) = v10 + 2;
  BYTE8(v17) = v11 != 0;
  *(&v17 + 9) = 257;
  BYTE11(v17) = v13;
  v14 = sub_100588008(a1, this, __p, *(a1 + 296), &v18);
  *a4 = (*a4 | v18) & 1;
  if (SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  return v14;
}

void sub_10058B4EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10058B510(PersonalitySpecificImpl *a1, uint64_t a2, uint64_t a3, int a4, _BOOL4 a5, TrafficDescriptor **a6, int a7, uint64_t a8, unsigned int a9)
{
  v16 = objc_autoreleasePoolPush();
  if (*(a1 + 22))
  {
    v17 = isSlice();
    if (v17)
    {
      if ((a7 & 1) == 0 && *(a1 + 78) == 3)
      {
        goto LABEL_15;
      }

LABEL_14:
      sub_1005854DC(a1);
      goto LABEL_15;
    }

    if ((capabilities::ct::supportsGemini(v17) & 1) == 0)
    {
      goto LABEL_14;
    }

    if (a7)
    {
      sub_100584B14(a1, 0);
    }

    if (*(a1 + 22) == 19)
    {
      sub_10058B634(a1);
    }

    else if (a4)
    {
      sub_1005867B4(a1);
    }

    else
    {
      sub_1005855C4(a1);
    }
  }

  else
  {
    if (a7)
    {
      sub_100584B14(a1, 0);
    }

    sub_1005878BC(a1, a2, a4, a5, a6, a8, a9);
  }

LABEL_15:

  objc_autoreleasePoolPop(v16);
}

void sub_10058B634(PersonalitySpecificImpl *a1)
{
  v2 = 0;
  v3 = 0;
  (*(*a1 + 16))(&v2);
  if (v2 && *(v2 + 62) == 1)
  {
    sub_1005867B4(a1);
  }

  else
  {
    sub_1005855C4(a1);
  }

  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_10058B6C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10058B700(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "nwpolicy";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: ------------ NEPolicy: %s ------------------>>", buf, 0xCu);
  }

  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 56);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = asString();
    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tfConnectionType=%s", buf, 0xCu);
    v4 = *(a1 + 56);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = asStringBool(*(a1 + 96) != 0);
    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tfSession=%s", buf, 0xCu);
  }

  v7 = *(a1 + 120);
  if (v7)
  {
    v8 = *(a1 + 56);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tfPolicies=%lu", buf, 0xCu);
    }

    v9 = *(a1 + 104);
    if (v9 != (a1 + 112))
    {
      do
      {
        v10 = *(a1 + 56);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = v9[4];
          *buf = 134217984;
          *&buf[4] = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t\t%lu", buf, 0xCu);
        }

        v12 = v9[1];
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
            v13 = v9[2];
            v14 = *v13 == v9;
            v9 = v13;
          }

          while (!v14);
        }

        v9 = v13;
      }

      while (v13 != (a1 + 112));
    }
  }

  if (*(a1 + 152) == 1)
  {
    v15 = *(a1 + 128);
    for (i = *(a1 + 136); v15 != i; ++v15)
    {
      v17 = *(a1 + 56);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *v15;
        *buf = 134217984;
        *&buf[4] = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t\tfPolicyThirdPartyDrop.item=%lu", buf, 0xCu);
      }
    }
  }

  v19 = *(a1 + 200);
  v20 = *(a1 + 56);
  if (v19)
  {
    if (os_log_type_enabled(*(a1 + 56), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tfTmpPolicies=%lu", buf, 0xCu);
    }

    v35 = 0u;
    v36 = 0u;
    *buf = 0u;
    sub_10058C974(buf, (a1 + 160));
    while (*(&v36 + 1))
    {
      v21 = *(a1 + 56);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(*(*&buf[8] + 8 * (v36 / 0x66)) + 40 * (v36 % 0x66));
        *v32 = 134217984;
        v33 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t\t%lu", v32, 0xCu);
      }

      sub_10058C0C8(buf);
    }

    sub_10058BDE4(buf);
    v20 = *(a1 + 56);
  }

  v23 = *(a1 + 248);
  if (v23)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tfTmpPoliciesLong=%lu", buf, 0xCu);
    }

    v35 = 0u;
    v36 = 0u;
    *buf = 0u;
    sub_10058C974(buf, (a1 + 208));
    while (*(&v36 + 1))
    {
      v24 = *(a1 + 56);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(*(*&buf[8] + 8 * (v36 / 0x66)) + 40 * (v36 % 0x66));
        *v32 = 134217984;
        v33 = v25;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t\t%lu", v32, 0xCu);
      }

      sub_10058C0C8(buf);
    }

    sub_10058BDE4(buf);
    v20 = *(a1 + 56);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v26 = *(a1 + 280);
    *buf = 138412290;
    *&buf[4] = v26;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tfDomain=%@", buf, 0xCu);
    v20 = *(a1 + 56);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(a1 + 288);
    *buf = 138412290;
    *&buf[4] = v27;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tfType=%@", buf, 0xCu);
    v20 = *(a1 + 56);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v28 = *(a1 + 296);
    *buf = 138412290;
    *&buf[4] = v28;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tfAgentUUID=%@", buf, 0xCu);
    v20 = *(a1 + 56);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v29 = *(a1 + 304);
    *buf = 138412290;
    *&buf[4] = v29;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tfAgentSliceUUID=%@", buf, 0xCu);
    v20 = *(a1 + 56);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v30 = sub_1005845FC(*(a1 + 312));
    *buf = 136315138;
    *&buf[4] = v30;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tfCurrentPolicyType=%s", buf, 0xCu);
    v20 = *(a1 + 56);
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v31 = asStringBool(*(a1 + 320) != 0);
    *buf = 136315138;
    *&buf[4] = v31;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\tfInternetTimer=%s", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
}

uint64_t sub_10058BDE4(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x66];
    v7 = *v6;
    v8 = *v6 + 40 * (v5 % 0x66);
    v9 = v2[(a1[5] + v5) / 0x66] + 40 * ((a1[5] + v5) % 0x66);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 31) < 0)
        {
          operator delete(*(v8 + 8));
          v7 = *v6;
        }

        v8 += 40;
        if (v8 - v7 == 4080)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 51;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_18;
    }

    v12 = 102;
  }

  a1[4] = v12;
LABEL_18:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return sub_10001BD44(a1);
}

void sub_10058BFC8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[5], v1, sub_10058C09C);
  __cxa_rethrow();
}

void sub_10058C008(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10058C05C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10058C09C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10058C0C8(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[1] + 8 * (v2 / 0x66)) + 40 * (v2 % 0x66);
  if (*(v3 + 31) < 0)
  {
    operator delete(*(v3 + 8));
    v2 = a1[4];
  }

  v4 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v4;

  return sub_10058C158(a1, 1);
}

uint64_t sub_10058C158(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x66)
  {
    a2 = 1;
  }

  if (v2 < 0xCC)
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
    *(a1 + 32) -= 102;
  }

  return v4 ^ 1u;
}

void *sub_10058C1B8(void *a1)
{
  *a1 = off_101E614B8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10058C204(void *a1)
{
  *a1 = off_101E614B8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10058C2E4(uint64_t result, uint64_t a2)
{
  *a2 = off_101E614B8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10058C324(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10058C334(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10058C374(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[2])
      {
        v6[0] = _NSConcreteStackBlock;
        v6[1] = 3221225472;
        v6[2] = sub_10058C46C;
        v6[3] = &unk_101E26008;
        v6[4] = v3;
        sub_10058C570((v3 + 24), v6);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10058C420(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10058C46C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Internet agent timer: fired", buf, 2u);
  }

  v3 = (*(*v1 + 40))(v1);
  if (v3)
  {
    if (sub_10058AEF4(v1, v3))
    {
      sub_100585D4C(v1, *(v1 + 312));
    }

    v4 = *(v1 + 56);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Internet agent timer: completed", v5, 2u);
    }
  }
}

void sub_10058C570(void *a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = 0;
  sub_100004AA0(&v10, a1);
  v4 = a1[2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10058C650;
  block[3] = &unk_101E61520;
  v8 = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = v3;
  v7 = v5;
  dispatch_async(v4, block);

  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

uint64_t sub_10058C660(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10058C67C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void *sub_10058C68C(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 102 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    sub_10058C744(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = (*(v4 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66));
  }

  result = sub_10058C918(v8, a2);
  ++a1[5];
  return result;
}

void sub_10058C744(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x66;
  v3 = v1 - 102;
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
    sub_1000FB8B8(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_100129284(a1, &v9);
}

void sub_10058C8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_10058C918(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 1;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v4[2] = *(a2 + 24);
    *v4 = v5;
  }

  a1[4] = *(a2 + 32);
  return a1;
}

unint64_t *sub_10058C974(unint64_t *a1, void *a2)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  v3 = a2[4];
  v4 = a2[1];
  if (a2[2] == v4)
  {
    v5 = 0;
    v8 = 0;
    v7 = (v4 + 8 * ((a2[5] + v3) / 0x66));
  }

  else
  {
    v5 = *(v4 + 8 * (v3 / 0x66)) + 40 * (v3 % 0x66);
    v6 = a2[5] + v3;
    v7 = (v4 + 8 * (v6 / 0x66));
    v8 = *v7 + 40 * (v6 % 0x66);
  }

  sub_10058CA44(a1, (v4 + 8 * (v3 / 0x66)), v5, v7, v8);
  return a1;
}

void *sub_10058CA44(unint64_t *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (a5 == a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = 102 * (a4 - a2) - 0x3333333333333333 * ((a5 - *a4) >> 3) + 0x3333333333333333 * ((a3 - *a2) >> 3);
  }

  return sub_10058CA94(a1, a2, a3, v5);
}

void *sub_10058CA94(unint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 102 * ((v9 - v8) >> 3) - 1;
  }

  v11 = a1[5] + a1[4];
  v12 = v10 - v11;
  if (a4 > v12)
  {
    sub_10058CC4C(a1, a4 - v12);
    v8 = a1[1];
    v9 = a1[2];
    v11 = a1[4] + a1[5];
  }

  v13 = (v8 + 8 * (v11 / 0x66));
  if (v9 == v8)
  {
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v14 = *v13 + 40 * (v11 % 0x66);
    v15 = v14;
  }

  v24 = v13;
  v25 = v15;
  result = sub_10058CF98(&v24, a4);
  v17 = v25;
  if (v14 != v25)
  {
    v18 = v24;
    do
    {
      if (v13 == v18)
      {
        v19 = v17;
      }

      else
      {
        v19 = *v13 + 4080;
      }

      if (v14 == v19)
      {
        v19 = v14;
      }

      else
      {
        v20 = 0;
        v21 = v14;
        do
        {
          result = sub_10058C918(v21, a3);
          a3 += 40;
          if (a3 - *a2 == 4080)
          {
            v22 = a2[1];
            ++a2;
            a3 = v22;
          }

          v21 += 5;
          v20 -= 40;
        }

        while (v21 != v19);
      }

      a1[5] -= 0x3333333333333333 * ((v19 - v14) >> 3);
      if (v13 == v18)
      {
        break;
      }

      v23 = v13[1];
      ++v13;
      v14 = v23;
    }

    while (v23 != v17);
  }

  return result;
}

void sub_10058CC4C(unint64_t *a1, unint64_t a2)
{
  v3 = a1[2] - a1[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if (v4 % 0x66)
  {
    v5 = v4 / 0x66 + 1;
  }

  else
  {
    v5 = v4 / 0x66;
  }

  v6 = a1[4];
  if (v5 >= v6 / 0x66)
  {
    v7 = v6 / 0x66;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 / 0x66)
  {
    for (a1[4] = v6 - 102 * v7; v7; --v7)
    {
      v14 = a1[1];
      v16[0] = *v14;
      a1[1] = (v14 + 1);
      sub_100129284(a1, v16);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = a1[3] - *a1;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      v10 = v3 >> 3;
      v11 = v9 >> 2;
      if (v11 <= v8 + v10)
      {
        v12 = v8 + v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v10 - v7;
      v18 = a1;
      if (v12)
      {
        sub_1000FB8B8(a1, v12);
      }

      v16[0] = 0;
      v16[1] = 8 * v13;
      v17 = 8 * v13;
      operator new();
    }

    if (v8)
    {
      if (a1[3] != a1[2])
      {
        operator new();
      }

      operator new();
    }

    for (a1[4] -= 102 * v7; v7; --v7)
    {
      v15 = a1[1];
      v16[0] = *v15;
      a1[1] = (v15 + 1);
      sub_100129284(a1, v16);
    }
  }
}

void sub_10058CF24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10058CF98(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = *result;
    v3 = a2 - 0x3333333333333333 * ((result[1] - **result) >> 3);
    if (v3 < 1)
    {
      v5 = 101 - v3;
      v6 = &v2[-(v5 / 0x66)];
      *result = v6;
      v4 = *v6 + 40 * (102 * (v5 / 0x66) - v5) + 4040;
    }

    else
    {
      *result = &v2[v3 / 0x66];
      v4 = v2[v3 / 0x66] + 40 * (v3 % 0x66);
    }

    result[1] = v4;
  }

  return result;
}

uint64_t sub_10058D044(uint64_t a1)
{
  v2 = 1;
  if ((sub_10080FFF8(a1) & 1) == 0)
  {
    v12 = 1;
    v3 = sub_10005D028();
    sub_10000501C(__p, "EnableThumperByDefault");
    v4 = sub_10005D0D8(v3, __p, &v12);
    v5 = v4;
    if (v11 < 0)
    {
      operator delete(__p[0]);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else if (v4)
    {
LABEL_4:
      v2 = v12;
      return v2 & 1;
    }

    (*(**(a1 + 96) + 472))(__p);
    v6 = __p[0];
    v2 = 1;
    v13 = 1;
    if (__p[0])
    {
      v7 = CFGetTypeID(__p[0]);
      if (v7 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(&v13, v6, v8);
        v2 = v13;
      }

      else
      {
        v2 = 1;
      }
    }

    sub_10000A1EC(__p);
  }

  return v2 & 1;
}

void getAssociatedID(void *a1@<X8>)
{
  sub_1006160F0(&v2);
  v4 = sub_1006160B8(v2, @"associated.account");
  sub_100222990(a1, &v4);
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_10058D1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void setAssociatedID(const __CFString *a1)
{
  sub_1006160F0(&v2);
  sub_100616054(v2, @"associated.account", a1);
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_10058D244(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10058D25C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (sub_10080FFF8(a1))
  {

    sub_10058D2AC(a1, v2);
  }
}

void sub_10058D2AC(uint64_t a1, int a2)
{
  v4 = *(a1 + 48);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v6;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sSomebody wants us to stay alive", buf, 0x16u);
    }

    *buf = &off_101EA1020;
    v7 = sub_1009C9364(buf, kLaunchdKeepAlivePath);
    FileSystemInterface::~FileSystemInterface(buf);
    v8 = *(a1 + 48);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v9)
      {
        v10 = PersonalityInfo::logPrefix(**(a1 + 80));
        *buf = 136315394;
        *&buf[4] = v10;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v11 = "#I %s%sKeepAlive file touched";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v11, buf, 0x16u);
      }
    }

    else if (v9)
    {
      v18 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v18;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v11 = "#I %s%sFailed to touch KeepAlive file";
      goto LABEL_16;
    }

    if (*(a1 + 536))
    {
      v19 = *(a1 + 48);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v20 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v20;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v21 = "#I %s%sThumperKeepAlive Jetsam assertion already taken";
LABEL_50:
      v37 = v19;
      v38 = 22;
LABEL_51:
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v21, buf, v38);
      return;
    }

    *&buf[16] = 0u;
    v46 = 0u;
    v22 = *(a1 + 48);
    v23 = os_signpost_id_generate(v22);
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v24 = *(a1 + 48);
      if (os_signpost_enabled(v24))
      {
        *v47 = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_BEGIN, v23, "ThumperKeepAlive", "", v47, 2u);
      }
    }

    *v47 = off_101E61890;
    v49 = v47;
    *buf = v23;
    *&buf[8] = os_retain(v22);
    sub_1000148FC(&buf[16], v47);
    sub_10001499C(v47);
    sub_10000501C(&__p, "ThumperKeepAlive");
    v43[0] = *buf;
    v43[1] = *&buf[8];
    sub_1000148FC(&v44, &buf[16]);
    *buf = 0;
    *&buf[8] = 0;
    sub_100014A28(&buf[16]);
    Registry::createXpcJetsamAssertion();
    v25 = *v47;
    *v47 = 0;
    *&v47[8] = 0;
    v26 = *(a1 + 544);
    *(a1 + 536) = v25;
    if (v26)
    {
      sub_100004A34(v26);
      if (*&v47[8])
      {
        sub_100004A34(*&v47[8]);
      }
    }

    sub_100014DA8(v43);
    if (v42 < 0)
    {
      operator delete(__p);
    }

    v27 = *(a1 + 48);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = PersonalityInfo::logPrefix(**(a1 + 80));
      *v47 = 136315394;
      *&v47[4] = v28;
      *&v47[12] = 2080;
      *&v47[14] = " ";
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I %s%sThumperKeepAlive Jetsam assertion taken.", v47, 0x16u);
    }

    sub_100014DA8(buf);
    return;
  }

  if (v5)
  {
    v12 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v12;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sSomebody wants us to go away", buf, 0x16u);
  }

  *v47 = &off_101EA1020;
  sub_10000501C(buf, kLaunchdKeepAlivePath);
  v13 = sub_1009C861C(v47, buf);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  FileSystemInterface::~FileSystemInterface(v47);
  v14 = *(a1 + 48);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v15)
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v16;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      v17 = "#I %s%sKeepAlive file removed";
LABEL_33:
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v17, buf, 0x16u);
    }
  }

  else if (v15)
  {
    v29 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v29;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v17 = "#I %s%sFailed to remove KeepAlive file";
    goto LABEL_33;
  }

  if (!*(a1 + 536))
  {
    v19 = *(a1 + 48);
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v36 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v36;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v21 = "#I %s%sThumperKeepAlive Jetsam assertion wasn't taken";
    goto LABEL_50;
  }

  v30 = *(a1 + 544);
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  if (v30)
  {
    sub_100004A34(v30);
  }

  Registry::getXpcJetsamAssertionManager(buf, *(a1 + 56));
  AssertionCount = ctu::XpcJetsamAssertion::getAssertionCount(*buf);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v32 = *(a1 + 48);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = PersonalityInfo::logPrefix(**(a1 + 80));
    v34 = v33;
    if (!AssertionCount)
    {
      *buf = 136315650;
      *&buf[4] = v33;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = "We might exit after some time";
      v21 = "#I %s%sThumperKeepAlive Jetsam assertion released. %s";
      v37 = v32;
      v38 = 32;
      goto LABEL_51;
    }

    Registry::getXpcJetsamAssertionManager(&v39, *(a1 + 56));
    ctu::XpcJetsamAssertion::dumpState(v47, v39);
    if (v48 >= 0)
    {
      v35 = v47;
    }

    else
    {
      v35 = *v47;
    }

    *buf = 136315650;
    *&buf[4] = v34;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = v35;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I %s%sThumperKeepAlive Jetsam assertion released. %s", buf, 0x20u);
    if (v48 < 0)
    {
      operator delete(*v47);
    }

    if (v40)
    {
      sub_100004A34(v40);
    }
  }
}

void sub_10058DA54(uint64_t a1)
{
  if (!sub_10080FFF8(a1))
  {
    return;
  }

  v7 = &off_101EA1020;
  sub_10000501C(__p, kLaunchdKeepAlivePath);
  v2 = sub_1009C7B10(&v7, __p);
  if (v11 < 0)
  {
    operator delete(*__p);
  }

  FileSystemInterface::~FileSystemInterface(&v7);
  v3 = *(a1 + 48);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v5 = PersonalityInfo::logPrefix(**(a1 + 80));
      *__p = 136315394;
      *&__p[4] = v5;
      v9 = 2080;
      v10 = " ";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sKeepAlive file found", __p, 0x16u);
    }

    if ((sub_10080FFF8(a1) & 1) == 0)
    {
      return;
    }

LABEL_12:
    sub_10058D2AC(a1, v2);
    return;
  }

  if (v4)
  {
    v6 = PersonalityInfo::logPrefix(**(a1 + 80));
    *__p = 136315394;
    *&__p[4] = v6;
    v9 = 2080;
    v10 = " ";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sKeepAlive file not found", __p, 0x16u);
  }

  if (sub_10080FFF8(a1))
  {
    goto LABEL_12;
  }
}

void sub_10058DBFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  FileSystemInterface::~FileSystemInterface(&a10);
  _Unwind_Resume(a1);
}

void sub_10058DD54(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_100004A34(v2);
    if (!v1)
    {
LABEL_3:
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  sub_100004A34(v1);
  if (v3)
  {
LABEL_4:
    operator delete();
  }

LABEL_5:
  _Unwind_Resume(exception_object);
}

uint64_t sub_10058DD94(uint64_t a1, void *a2, NSObject **a3, uint64_t **a4, uint64_t a5, uint64_t *a6)
{
  v9 = a6[1];
  v22 = *a6;
  v23 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a4[1];
  v20 = *a4;
  v21 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10080FBC8(a1, a2, 1, a3, &v22, &v20, a5, "ps.ths");
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v23)
  {
    sub_100004A34(v23);
  }

  *a1 = off_101E615A8;
  *(a1 + 8) = off_101E61710;
  sub_10000501C(&__p, "ths");
  v11 = *a3;
  v17 = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  object = 0;
  ctu::RestModule::RestModule();
  if (v17)
  {
    dispatch_release(v17);
  }

  if (v19 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 200) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 208) = a1 + 216;
  *(a1 + 248) = 0;
  *(a1 + 192) = 0x300000000;
  *(a1 + 384) = 0;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 850045863;
  *(a1 + 232) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 514) = 0u;
  *(a1 + 552) = 0;
  *(a1 + 536) = 0u;
  sub_1005A1630(a1 + 576);
  Registry::getNotificationSenderFactory(&v24, *(a1 + 56));
  (*(*v24 + 144))(v14);
  *(a1 + 616) = *v14;
  v14[0] = 0;
  v14[1] = 0;
  if (v25)
  {
    sub_100004A34(v25);
  }

  *(a1 + 632) = 0;
  *(a1 + 640) = 0;
  v12 = **a4;
  v14[0] = 0;
  v14[1] = 0;
  v15 = 0;
  sub_10079CC3C((a1 + 648), a1 + 56, v12 + 24, kLocationPopupShown, kPhoneServicesWalletDomain, v14, 1);
  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  *(a1 + 664) = 0u;
  return a1;
}

void sub_10058E024(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, dispatch_object_t object, dispatch_object_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  v26 = a2;
  if (__p)
  {
    a10 = __p;
    operator delete(__p);
  }

  sub_101774DA0(&__p, (v19 + 632), (v19 + 624), a1, v26, v25 - 80);
  v28 = *(v25 - 80);
  sub_1005A1674((v20 + 47));
  v29 = *(v19 + 568);
  if (v29)
  {
    sub_100004A34(v29);
  }

  v30 = *(v19 + 544);
  if (v30)
  {
    sub_100004A34(v30);
  }

  sub_10001021C(v20 + 39);
  v31 = *(v19 + 504);
  if (v31)
  {
    sub_100004A34(v31);
  }

  std::mutex::~mutex(v24);
  sub_10058E160(v23);
  sub_1005A1728(v22);
  v32 = *(v19 + 240);
  if (v32)
  {
    sub_100004A34(v32);
  }

  sub_10013DF64(v21, *(v19 + 216));
  sub_100005978(v20);
  v33 = *(v19 + 184);
  if (v33)
  {
    sub_100004A34(v33);
  }

  sub_10080FEE4(v19);
  _Unwind_Resume(v28);
}

void sub_10058E140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  JUMPOUT(0x10058E138);
}

uint64_t sub_10058E160(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    sub_1005A16F4((a1 + 8));
    sub_1005A16F4(a1);
  }

  return a1;
}

void sub_10058E1A0(uint64_t a1)
{
  *a1 = off_101E615A8;
  *(a1 + 8) = off_101E61710;
  ctu::RestModule::disconnect((a1 + 176));
  v2 = *(a1 + 672);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 656);
  *(a1 + 656) = 0;
  if (v3)
  {
    (*(*v3 + 32))(v3);
  }

  TMKXPCServer.shutdown()();
  v4 = *(a1 + 632);
  *(a1 + 632) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(a1 + 624);
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_1005A1674(a1 + 576);
  v6 = *(a1 + 568);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 544);
  if (v7)
  {
    sub_100004A34(v7);
  }

  sub_10001021C((a1 + 512));
  v8 = *(a1 + 504);
  if (v8)
  {
    sub_100004A34(v8);
  }

  std::mutex::~mutex((a1 + 432));
  if (*(a1 + 424) == 1)
  {
    sub_1005A16F4((a1 + 408));
    sub_1005A16F4((a1 + 400));
  }

  if (*(a1 + 384) == 1)
  {
    *(a1 + 248) = off_101EA6578;
    if (*(a1 + 376) == 1 && *(a1 + 375) < 0)
    {
      operator delete(*(a1 + 352));
    }

    if (*(a1 + 344) == 1 && *(a1 + 343) < 0)
    {
      operator delete(*(a1 + 320));
    }

    if (*(a1 + 312) == 1 && *(a1 + 311) < 0)
    {
      operator delete(*(a1 + 288));
    }

    if (*(a1 + 280) == 1 && *(a1 + 279) < 0)
    {
      operator delete(*(a1 + 256));
    }

    TMKXPCServer.shutdown()();
  }

  v9 = *(a1 + 240);
  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_10013DF64(a1 + 208, *(a1 + 216));
  sub_100005978((a1 + 200));
  v10 = *(a1 + 184);
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_10080FEE4(a1);
}

void sub_10058E3D0(uint64_t a1)
{
  sub_10058E1A0(a1);

  operator delete();
}

void sub_10058E408(uint64_t a1)
{
  sub_10058E1A0(a1 - 8);

  operator delete();
}

const void **sub_10058E444(uint64_t a1)
{
  v29 = 0;
  sub_1006160F0(buf);
  v30 = sub_1006160B8(*buf, @"last.account");
  sub_100222990(&v29, &v30);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v29)
  {
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    v27 = *buf;
    v28 = *&buf[16];
    sub_1006160F0(buf);
    sub_100616054(*buf, @"last.account", 0);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v26 = 0;
    sub_1005D7A90(@"LocalCredentials", &v27, &v26);
    v25 = 0;
    sub_1006160F0(buf);
    v2 = kCFLocalProvisioningApplied;
    v30 = sub_1006160B8(*buf, kCFLocalProvisioningApplied);
    sub_10017A3BC(&v25, &v30);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    buf[0] = 0;
    ctu::cf::assign(buf, v25, v3);
    if (buf[0] != 1)
    {
      sub_1006160F0(buf);
      sub_100616054(*buf, v2, 0);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      sub_1006160F0(buf);
      sub_100616054(*buf, @"CarrierBundle", 0);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      sub_1006160F0(buf);
      sub_100616054(*buf, @"IMSInfo", 0);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      sub_1006160F0(buf);
      sub_100616054(*buf, @"last.dn", 0);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      sub_1006160F0(buf);
      sub_100616054(*buf, v26, 0);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      sub_100BB40F4(a1 + 56, @"com.apple.th");
      goto LABEL_38;
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    sub_1004419D4(buf, ServiceMap);
    (*(**buf + 16))(*buf, **(a1 + 80) + 24, v2, kCFBooleanTrue, kPhoneServicesWalletDomain, 0, 1, 0);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    sub_1006160F0(buf);
    sub_100616054(*buf, v2, 0);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v24[0] = a1;
    v24[1] = &v27;
    sub_10058ED7C(v24, @"CarrierBundle");
    sub_10058ED7C(v24, @"IMSInfo");
    sub_10058ED7C(v24, @"last.dn");
    sub_10058ED7C(v24, v26);
    theDict[0] = 0;
    theDict[1] = 0;
    v23 = 0;
    v20[0] = 0;
    v20[1] = 0;
    v21 = 0;
    v5 = sub_100BB2DE4(a1 + 56, @"com.apple.th", v20, theDict);
    switch(v5)
    {
      case 0:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        ctu::base64::decode();
        v10 = *(a1 + 48);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = PersonalityInfo::logPrefix(**(a1 + 80));
          *buf = 136315394;
          *&buf[4] = v11;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%smigration, Individual secret is not of valid format", buf, 0x16u);
        }

        goto LABEL_34;
      case 1:
        v6 = *(a1 + 48);
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
LABEL_34:
          sub_100BB40F4(a1 + 56, @"com.apple.th");
          if (SHIBYTE(v21) < 0)
          {
            operator delete(v20[0]);
          }

          if (SHIBYTE(v23) < 0)
          {
            operator delete(theDict[0]);
          }

LABEL_38:
          theDict[0] = 0;
          v12 = CFPreferencesCopyMultiple(0, @"com.apple.commcenter.callservices", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
          theDict[0] = v12;
          if (v12)
          {
            Count = CFDictionaryGetCount(v12);
            if (Count)
            {
              memset(buf, 0, sizeof(buf));
              sub_100222418(buf, Count);
              CFDictionaryGetKeysAndValues(theDict[0], *buf, 0);
              v14 = *buf;
              v15 = *&buf[8];
              if (*buf != *&buf[8])
              {
                do
                {
                  if (CFStringHasPrefix(*v14, @"LocalCredentials"))
                  {
                    sub_1006160F0(&v30);
                    sub_100616054(v30, *v14, 0);
                    if (v31)
                    {
                      sub_100004A34(v31);
                    }
                  }

                  ++v14;
                }

                while (v14 != v15);
                v14 = *buf;
              }

              if (v14)
              {
                *&buf[8] = v14;
                operator delete(v14);
              }
            }
          }

          sub_10001021C(theDict);
          sub_100045C8C(&v25);
          sub_100005978(&v26);
          if (SHIBYTE(v28) < 0)
          {
            operator delete(v27);
          }

          return sub_100005978(&v29);
        }

        v9 = PersonalityInfo::logPrefix(**(a1 + 80));
        *buf = 136315394;
        *&buf[4] = v9;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v8 = "#I %s%smigration, No individual secret in keychain - request new one";
        break;
      case 2:
        v6 = *(a1 + 48);
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_34;
        }

        v7 = PersonalityInfo::logPrefix(**(a1 + 80));
        *buf = 136315394;
        *&buf[4] = v7;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v8 = "#W %s%smigration, KeyChain is locked - will re-request individual key";
        break;
      default:
        goto LABEL_34;
    }

    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0x16u);
    goto LABEL_34;
  }

  return sub_100005978(&v29);
}

void sub_10058EB7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, char a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, const void *a31, const void *a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (__p)
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

  sub_100045C8C(&a31);
  sub_100005978(&a32);
  if (a38 < 0)
  {
    operator delete(a33);
  }

  sub_100005978((v38 - 136));
  _Unwind_Resume(a1);
}

const void **sub_10058ED7C(uint64_t *a1, const __CFString *a2)
{
  v4 = *a1;
  sub_1006160F0(&v9);
  v5 = sub_1006160B8(v9, a2);
  v11 = v5;
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (v5)
  {
    v8 = 0;
    sub_1005D63F0(*(v4 + 104), a2, v5, a1[1]);
    ServiceMap = Registry::getServiceMap(*(v4 + 56));
    sub_1004419D4(&v9, ServiceMap);
    (*(*v9 + 16))();
    if (v10)
    {
      sub_100004A34(v10);
    }

    sub_1006160F0(&v9);
    sub_100616054(v9, a2, 0);
    if (v10)
    {
      sub_100004A34(v10);
    }

    sub_10000A1EC(&v8);
  }

  return sub_10000A1EC(&v11);
}

void sub_10058EEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, std::__shared_weak_count *a11, const void *a12)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  sub_10000A1EC(&a9);
  sub_10000A1EC(&a12);
  _Unwind_Resume(a1);
}

const void **sub_10058EF00(uint64_t a1)
{
  v11 = 0u;
  v12 = 0u;
  result = sub_1009A834C(@"com.apple.callservices.identifier2", &v11);
  if (BYTE8(v12) == 1)
  {
    v10 = 0;
    sub_1009A8948(@"com.apple.callservices.identifier2", &v10);
    if (!v10)
    {
      goto LABEL_10;
    }

    sub_1009A9408(@"com.apple.callservices.identifier2");
    LOBYTE(v12) = 0;
    v9 = 0;
    sub_1005D7A90(@"com.apple.callservices.identifier.", (a1 + 120), &v9);
    v3 = sub_1009A8954(v9, v10, &v11);
    v4 = *(a1 + 48);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v6 = PersonalityInfo::logPrefix(**(a1 + 80));
        *buf = 136315650;
        v14 = v6;
        v15 = 2080;
        v16 = " ";
        v17 = 2112;
        v18 = v9;
        v7 = "#I %s%sthumper keychain identity successfully migrated to %@";
LABEL_8:
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v7, buf, 0x20u);
      }
    }

    else if (v5)
    {
      v8 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315650;
      v14 = v8;
      v15 = 2080;
      v16 = " ";
      v17 = 2112;
      v18 = v9;
      v7 = "#W %s%sfailed to migrated thumper keychain identity %@";
      goto LABEL_8;
    }

    sub_100005978(&v9);
LABEL_10:
    result = sub_1005A17EC(&v10);
    if (BYTE8(v12))
    {
      sub_1005A16F4(&v11 + 1);
      return sub_1005A16F4(&v11);
    }
  }

  return result;
}

void sub_10058F0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10, char a12)
{
  sub_100005978(&a9);
  sub_1005A17EC(&a10);
  sub_10058E160(&a12);
  _Unwind_Resume(a1);
}

void sub_10058F120(uint64_t a1)
{
  std::string::operator=((a1 + 120), (**(a1 + 80) + 24));
  sub_10058E444(a1);
  sub_10058EF00(a1);
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *&v40[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v40);
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
LABEL_9:
      (*(*v10 + 24))(v38, v10, **(a1 + 80) + 24, @"ProvisioningFailedAlertShown", kPhoneServicesWalletDomain, 0, 3);
      v12 = v38[0];
      LOBYTE(v40[0]) = 0;
      if (v38[0])
      {
        v13 = CFGetTypeID(v38[0]);
        if (v13 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(v40, v12, v14);
        }
      }

      *(a1 + 552) = v40[0];
      sub_10000A1EC(v38);
      if ((v11 & 1) == 0)
      {
        sub_100004A34(v9);
      }

      sub_10080FDE4(a1);
      sub_100590008(a1);
      sub_10058DA54(a1);
      sub_100004AA0(v40, (a1 + 16));
      v15 = v40[0];
      if (*(&v40[0] + 1))
      {
        atomic_fetch_add_explicit((*(&v40[0] + 1) + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(*(&v15 + 1));
      }

      sub_100004AA0(v17, (a1 + 16));
      v16 = *(a1 + 32);
      v17[2] = v16;
      v17[3] = a1;
      v18 = v15;
      if (*(&v15 + 1))
      {
        atomic_fetch_add_explicit((*(&v15 + 1) + 16), 1uLL, memory_order_relaxed);
      }

      dispatch_retain(v16);
      memset(v40, 0, 32);
      v19 = v16;
      v20 = a1;
      v21 = v15;
      if (*(&v15 + 1))
      {
        atomic_fetch_add_explicit((*(&v15 + 1) + 16), 1uLL, memory_order_relaxed);
        dispatch_retain(v16);
        v22 = v16;
        v23 = a1;
        v24 = v15;
        atomic_fetch_add_explicit((*(&v15 + 1) + 16), 1uLL, memory_order_relaxed);
        dispatch_retain(v16);
        v26 = v16;
        v28 = v15;
        atomic_fetch_add_explicit((*(&v15 + 1) + 16), 1uLL, memory_order_relaxed);
        dispatch_retain(v16);
        v31 = v15;
        atomic_fetch_add_explicit((*(&v15 + 1) + 16), 1uLL, memory_order_relaxed);
        dispatch_retain(v16);
        v34 = v15;
        atomic_fetch_add_explicit((*(&v15 + 1) + 16), 1uLL, memory_order_relaxed);
      }

      else
      {
        dispatch_retain(v16);
        v22 = v16;
        v23 = a1;
        v24 = v15;
        dispatch_retain(v16);
        v26 = v16;
        v28 = v15;
        dispatch_retain(v16);
        v31 = v15;
        dispatch_retain(v16);
        v34 = v15;
      }

      v27 = a1;
      v25 = 0;
      v29 = v16;
      v30 = a1;
      v32 = v16;
      v33 = a1;
      dispatch_retain(v16);
      v35 = v16;
      v36 = a1;
      v37 = v15;
      if (*(&v15 + 1))
      {
        atomic_fetch_add_explicit((*(&v15 + 1) + 16), 1uLL, memory_order_relaxed);
        dispatch_retain(v16);
        v39 = v15;
        atomic_fetch_add_explicit((*(&v15 + 1) + 16), 1uLL, memory_order_relaxed);
      }

      else
      {
        dispatch_retain(v16);
        v39 = v15;
      }

      v38[0] = v16;
      v38[1] = a1;
      dispatch_retain(v16);
      operator new();
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  goto LABEL_9;
}

void sub_10058FD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100590008(uint64_t a1)
{
  v17 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v3 = ServiceMap;
  v4 = "8UStorage";
  if (("8UStorage" & 0x8000000000000000) != 0)
  {
    v5 = ("8UStorage" & 0x7FFFFFFFFFFFFFFFLL);
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
  sub_10005B878(&v16, v10, @"last.dev.icloud.ver", kPhoneServicesWalletDomain, 0, 1);
  sub_10010B240(&v17, &v16);
  sub_10000A1EC(&v16);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (v17)
  {
    *buf = 0;
    ctu::cf::assign(buf, v17, v12);
    dword_101FCB960 = *buf;
    v13 = *(a1 + 48);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315650;
      *&buf[4] = v14;
      v19 = 2080;
      v20 = " ";
      v21 = 1024;
      v22 = dword_101FCB960;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%sRestored fLastDevSectionVer %u", buf, 0x1Cu);
    }
  }

  return sub_100029A48(&v17);
}

void sub_1005901F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100590240(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_1005A5228(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

void sub_1005902A4(void *a1, int a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8 = *(v5 + 48);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = PersonalityInfo::logPrefix(**(v5 + 80));
          v10 = "locked";
          v11 = 136315650;
          v12 = v9;
          v13 = 2080;
          v14 = " ";
          if (a2)
          {
            v10 = "unlocked. Invoking service refresh";
          }

          v15 = 2080;
          v16 = v10;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sKeychain is %s", &v11, 0x20u);
        }

        if (a2)
        {
          sub_1005903E0(v5, 0, 0);
        }
      }

      sub_100004A34(v7);
    }
  }
}

const void **sub_1005903E0(const void **result, _BOOL4 a2, _BOOL4 a3)
{
  if (*(result[12] + 354))
  {
    return result;
  }

  v5 = result;
  result = (*(*result[13] + 16))(result[13]);
  if (!result)
  {
    return result;
  }

  v6 = (*(*v5 + 28))(v5);
  v7 = v5[6];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(*v5[10]);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
    *(buf.__r_.__value_.__r.__words + 4) = v8;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    v88 = asStringBool(a2);
    v89 = 2080;
    *v90 = asStringBool(a3);
    *&v90[8] = 2080;
    *&v90[10] = asStringBool(v6 == 1);
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%suserAction:%s, reprovisioning:%s, service was up:%s", &buf, 0x34u);
  }

  v9 = v5[12];
  if (v9[344] == 1 && v9[276] == 1 && *(v9 + 68) == 4)
  {
    sub_100594338(v5);
  }

  else if (!a3)
  {
    v20 = 0;
    goto LABEL_26;
  }

  if ((*(*v5 + 28))(v5) == 1)
  {
    sub_100592DFC(v5, 0);
  }

  if (*(v5 + 392) == 1)
  {
    sub_100594514(v5, 0, 0);
  }

  sub_100595194(v5);
  *(v5 + 262) = 0;
  sub_10034B824(v5[12]);
  ServiceMap = Registry::getServiceMap(v5[7]);
  v11 = ServiceMap;
  if ((v12 & 0x8000000000000000) != 0)
  {
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(ServiceMap);
  buf.__r_.__value_.__r.__words[0] = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &buf);
  if (!v16)
  {
    v18 = 0;
    goto LABEL_22;
  }

  v18 = v16[3];
  v17 = v16[4];
  if (!v17)
  {
LABEL_22:
    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    goto LABEL_23;
  }

  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v11);
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v17);
  v19 = 0;
LABEL_23:
  (*(*v18 + 32))(v18, *v5[10] + 24, kCFPSReprovisioningRequired, kPhoneServicesWalletDomain, 0, 1);
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  v20 = 1;
LABEL_26:
  v21 = sub_1005DCD74(v5[13]);
  v22 = *(v5 + 48);
  if (v22)
  {
    v23 = v22 == 2;
  }

  else
  {
    v23 = sub_10058D044(v5);
  }

  theDict = 0;
  v86 = 0;
  sub_1005954E4(v5, &theDict);
  if (theDict)
  {
    v24 = v21;
  }

  else
  {
    v24 = 0;
  }

  if (v24 != 1 || v86 != 1)
  {
    v28 = Registry::getServiceMap(v5[7]);
    sub_1005A589C(&buf, v28);
    (*(*buf.__r_.__value_.__l.__data_ + 56))(buf.__r_.__value_.__r.__words[0], *v5[10] + 24);
    if (buf.__r_.__value_.__l.__size_)
    {
      sub_100004A34(buf.__r_.__value_.__l.__size_);
    }

    if (v86 == 1)
    {
      sub_100810310(v5, 2, 0, 1, 1);
    }

    __p[0] = 0;
    __p[1] = 0;
    v84 = 0;
    sub_10000501C(__p, "-");
    v77 = 0;
    v25 = 0;
    v27 = 0;
    v29 = 0;
    goto LABEL_48;
  }

  if (!sub_10059424C(v5))
  {
    __p[0] = 0;
    __p[1] = 0;
    v84 = 0;
    if (CFStringCompare(v5[25], &stru_101F6AFB8, 0))
    {
      sub_10000501C(&v79, "mismatch: '");
      v51 = *(v5 + 143);
      if (v51 >= 0)
      {
        v52 = (v5 + 15);
      }

      else
      {
        v52 = v5[15];
      }

      if (v51 >= 0)
      {
        v53 = *(v5 + 143);
      }

      else
      {
        v53 = v5[16];
      }

      v54 = std::string::append(&v79, v52, v53);
      v55 = *&v54->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      v56 = std::string::append(&v80, "' vs '", 6uLL);
      v57 = *&v56->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      memset(&buf, 0, sizeof(buf));
      ctu::cf::assign();
      v78 = buf;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = &v78;
      }

      else
      {
        v58 = buf.__r_.__value_.__r.__words[0];
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = buf.__r_.__value_.__l.__size_;
      }

      v60 = std::string::append(&v81, v58, size);
      v61 = *&v60->__r_.__value_.__l.__data_;
      v82.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
      *&v82.__r_.__value_.__l.__data_ = v61;
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      v62 = std::string::append(&v82, "'", 1uLL);
      v63 = *&v62->__r_.__value_.__l.__data_;
      v84 = v62->__r_.__value_.__r.__words[2];
      *__p = v63;
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      sub_10000501C(__p, "disabled");
    }

    v25 = 0;
    v27 = 0;
    v29 = 0;
    v77 = 0x100000000;
LABEL_48:
    v26 = -1;
    goto LABEL_49;
  }

  if (v6 == 1 && (v5[66] & 1) == 0)
  {
    *(v5 + 528) = 1;
  }

  v25 = sub_1005955F0(v5, theDict, 1);
  if (v25)
  {
    if (sub_100347D60(*(v5 + 49)) == 1)
    {
      v26 = sub_10034B458(v5[12], v20 | a2, 0);
      if (v26 == 1)
      {
        if (v5[49])
        {
          v27 = 0;
          v26 = 1;
        }

        else
        {
          v26 = 1;
          v27 = sub_100595BDC(v5, theDict, 1);
        }
      }

      else
      {
        v27 = 0;
      }

      v70 = 1;
      goto LABEL_137;
    }
  }

  else if (!sub_1005962C8(v5))
  {
    v64 = *v5[10];
    if (*(v64 + 48) == 1)
    {
      v65 = v25;
      v66 = v20;
      v67 = v5[6];
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = PersonalityInfo::logPrefix(v64);
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = v68;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "#I %s%sno fCBRoot -> disable personality", &buf, 0x16u);
      }

      v69 = Registry::getServiceMap(v5[7]);
      sub_1005A589C(&buf, v69);
      (*(*buf.__r_.__value_.__l.__data_ + 64))(buf.__r_.__value_.__r.__words[0], *v5[10] + 24, 0);
      v20 = v66;
      v25 = v65;
      if (buf.__r_.__value_.__l.__size_)
      {
        sub_100004A34(buf.__r_.__value_.__l.__size_);
      }
    }
  }

  v27 = 0;
  v70 = 0;
  v26 = -1;
LABEL_137:
  __p[0] = 0;
  __p[1] = 0;
  v84 = 0;
  sub_10000501C(&buf, "match ");
  v71 = *(v5 + 143);
  if (v71 >= 0)
  {
    v72 = (v5 + 15);
  }

  else
  {
    v72 = v5[15];
  }

  if (v71 >= 0)
  {
    v73 = *(v5 + 143);
  }

  else
  {
    v73 = v5[16];
  }

  v74 = std::string::append(&buf, v72, v73);
  LODWORD(v77) = v70;
  v75 = *&v74->__r_.__value_.__l.__data_;
  v84 = v74->__r_.__value_.__r.__words[2];
  *__p = v75;
  v74->__r_.__value_.__l.__size_ = 0;
  v74->__r_.__value_.__r.__words[2] = 0;
  v74->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  HIDWORD(v77) = 1;
  v29 = 1;
LABEL_49:
  v30 = v5[6];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v76 = v25;
    v31 = v20;
    v32 = PersonalityInfo::logPrefix(*v5[10]);
    v33 = (*(*v5 + 28))(v5);
    v34 = sub_10060FF94(v33);
    v35 = sub_10060FFC0(*(v5 + 48));
    v36 = "OFF";
    v37 = *(v5 + 392);
    if (v23)
    {
      v36 = "ON";
    }

    v38 = "signed-out";
    LODWORD(buf.__r_.__value_.__l.__data_) = 136318722;
    *(buf.__r_.__value_.__r.__words + 4) = v32;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
    if (v21)
    {
      v38 = "signed-in";
    }

    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    v39 = __p;
    if (v84 < 0)
    {
      v39 = __p[0];
    }

    v88 = v34;
    v89 = 2080;
    *v90 = v36;
    if (v37)
    {
      v40 = "*";
    }

    else
    {
      v40 = "";
    }

    *&v90[8] = 2080;
    if (v27)
    {
      v40 = "";
    }

    *&v90[10] = v35;
    v41 = "no";
    *&v90[18] = 2080;
    v91 = v38;
    v92 = 1024;
    if (v31)
    {
      v41 = "yes";
    }

    v93 = HIDWORD(v77);
    v94 = 2080;
    v95 = v39;
    v96 = 1024;
    v97 = v26;
    v98 = 1024;
    v25 = v76;
    v99 = v76;
    v100 = 1024;
    v101 = v77;
    v102 = 1024;
    v103 = v27;
    v104 = 2080;
    v105 = v40;
    v106 = 1024;
    v107 = v37;
    v108 = 2080;
    v109 = v41;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%s+ state:%s switch:%s(%s) iCloud:%s paired:[%d] calledID:[%s] accountState:[%d] preprovisioned:[%d] serviceAllowed:[%d] provisioned:[%d%s] applied:[%d] reprovisioning:%s", &buf, 0x80u);
  }

  if ((*(*v5 + 28))(v5) == 1 && ((v23 & v29 & v25) != 1 || v26 == -1 || ((*(v5 + 392) | v27) & 1) == 0))
  {
    sub_100592DFC(v5, 0);
  }

  if ((v29 & v27 & (*(v5 + 392) ^ 1)) != 1 || v26 != 1)
  {
    if (!*(v5 + 392))
    {
      goto LABEL_80;
    }

LABEL_74:
    if (!HIDWORD(v77) || v29 && (!v25 || *(*v5[10] + 48) == 1 && v26 == -1))
    {
      sub_100594514(v5, 0, 0);
    }

    goto LABEL_80;
  }

  sub_100594514(v5, 1, theDict);
  sub_100596308(v5, 1);
  if (v5[49])
  {
    goto LABEL_74;
  }

LABEL_80:
  if ((v29 & v23 & ((*(*v5 + 28))(v5) != 1)) == 1 && *(v5 + 392) == 1 && *(*v5[10] + 48) == 1)
  {
    sub_100592DFC(v5, 1);
  }

  (*(*v5 + 25))(&buf, v5, 0);
  v42 = buf.__r_.__value_.__s.__data_[0];
  sub_10001021C(&buf.__r_.__value_.__l.__size_);
  (*(*v5 + 24))(&buf, v5);
  v43 = buf.__r_.__value_.__s.__data_[0];
  sub_10001021C(&buf.__r_.__value_.__l.__size_);
  ThumperCapability::ThumperCapability(&buf, v42, v43);
  sub_100596484((v5 + 72), &buf);
  v44 = v5[6];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = PersonalityInfo::logPrefix(*v5[10]);
    v46 = (*(*v5 + 28))(v5);
    v47 = sub_10060FF94(v46);
    v48 = *(v5 + 392);
    v49 = "";
    v50 = "*";
    LODWORD(buf.__r_.__value_.__l.__data_) = 136316418;
    if ((v48 & 1) == 0)
    {
      v50 = "";
    }

    *(buf.__r_.__value_.__r.__words + 4) = v45;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    if (!v27)
    {
      v49 = v50;
    }

    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    v88 = v47;
    v89 = 1024;
    *v90 = v27;
    *&v90[4] = 2080;
    *&v90[6] = v49;
    *&v90[14] = 1024;
    *&v90[16] = v48;
    _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I %s%s- state:%s provisioned:[%d%s] applied:[%d]", &buf, 0x36u);
  }

  if ((sub_10034B81C(v5[12]) & 1) == 0 && (*(v5 + 524) & 1) == 0 && (*(v5 + 525) & 1) == 0 && (*(v5 + 526) & 1) == 0 && (*(v5 + 527) & 1) == 0)
  {
    *(v5 + 528) = 0;
    sub_10034CC54(v5[12], 1);
  }

  if ((v5[66] & 1) == 0)
  {
    sub_10034CD9C(v5[12], 1, 0);
  }

  sub_1005964FC(v5, v23, SHIDWORD(v77), v29, v26);
  if (SHIBYTE(v84) < 0)
  {
    operator delete(__p[0]);
  }

  return sub_10001021C(&theDict);
}

uint64_t sub_10059120C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100591228(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_100591240(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sloading initial states", buf, 0x16u);
  }

  v4 = sub_100591B44(a1);
  sub_100591CF8(a1, HIDWORD(v4));
  *(a1 + 196) = 2;
  getAssociatedID(__p);
  v5 = (a1 + 200);
  if ((a1 + 200) != __p)
  {
    *buf = *v5;
    *v5 = __p[0];
    __p[0] = 0;
    sub_100005978(buf);
  }

  sub_100005978(__p);
  v6 = *(a1 + 48);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(**(a1 + 80));
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = *buf;
    v46 = *&buf[16];
    v8 = *buf;
    if ((buf[23] & 0x80u) == 0)
    {
      v8 = __p;
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v48 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sLoaded AssociatedAccountID '%s'", buf, 0x20u);
    if (SHIBYTE(v46) < 0)
    {
      operator delete(__p[0]);
    }
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
  if (!v15)
  {
    v17 = 0;
    goto LABEL_17;
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
LABEL_17:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v10);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
LABEL_18:
  (*(*v17 + 24))(__p, v17, **(a1 + 80) + 24, kCFPSReprovisioningRequired, kPhoneServicesWalletDomain, 0, 1);
  v19 = __p[0];
  buf[0] = 0;
  if (__p[0])
  {
    v20 = CFGetTypeID(__p[0]);
    if (v20 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(buf, v19, v21);
    }
  }

  v22 = buf[0];
  sub_10000A1EC(__p);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  if ((v22 & 1) == 0)
  {
    std::mutex::lock((a1 + 432));
    v44 = 0;
    v23 = Registry::getServiceMap(*(a1 + 56));
    sub_1004419D4(buf, v23);
    (*(**buf + 24))(__p);
    sub_10002FE1C(&v44, __p);
    sub_10000A1EC(__p);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    buf[0] = 0;
    ctu::cf::assign(buf, v44, v24);
    v25 = buf[0];
    *(a1 + 392) = buf[0];
    if (v25 == 1)
    {
      v26 = Registry::getServiceMap(*(a1 + 56));
      sub_1004419D4(buf, v26);
      (*(**buf + 24))(&v42);
      sub_100010180(&v43, &v42);
      v27 = (a1 + 512);
      if ((a1 + 512) != &v43)
      {
        __p[0] = *v27;
        *v27 = v43;
        v43 = 0;
        sub_10001021C(__p);
      }

      sub_10001021C(&v43);
      sub_10000A1EC(&v42);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      v28 = *v27;
      if (*v27)
      {
        v29 = *(a1 + 48);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = PersonalityInfo::logPrefix(**(a1 + 80));
          *buf = 136315394;
          *&buf[4] = v30;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%sLoaded CB from local store", buf, 0x16u);
        }

        __p[0] = 0;
        v31 = Registry::getServiceMap(*(a1 + 56));
        sub_1004419D4(buf, v31);
        (*(**buf + 24))(&v43);
        sub_100010180(__p, &v43);
        sub_10000A1EC(&v43);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if (__p[0])
        {
          operator new();
        }

        sub_10001021C(__p);
        v28 = *v27;
        if (*v27)
        {
          if (*(a1 + 496))
          {
            goto LABEL_41;
          }
        }
      }

      *(a1 + 512) = 0;
      *buf = v28;
      sub_10001021C(buf);
      *(a1 + 392) = 0;
      if (*(a1 + 512))
      {
LABEL_41:
        sub_100591FC4(a1);
        v32 = *(a1 + 48);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = PersonalityInfo::logPrefix(**(a1 + 80));
          *buf = 136315394;
          *&buf[4] = v33;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I %s%spreloaded fCBRoot in place -> enable personality", buf, 0x16u);
        }

        v34 = Registry::getServiceMap(*(a1 + 56));
        sub_1005A589C(buf, v34);
        (*(**buf + 64))(*buf, **(a1 + 80) + 24, 1);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }
      }
    }

    sub_100045C8C(&v44);
    std::mutex::unlock((a1 + 432));
  }

  v35 = *(a1 + 48);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = PersonalityInfo::logPrefix(**(a1 + 80));
    v37 = sub_10060FFC0(*(a1 + 192));
    v38 = (a1 + 120);
    if (*(a1 + 143) < 0)
    {
      v38 = *v38;
    }

    v39 = asStringBool(*(a1 + 392));
    v40 = asStringBool(v22);
    *buf = 136316418;
    *&buf[4] = v36;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v48 = v37;
    v49 = 2080;
    v50 = v38;
    v51 = 2080;
    v52 = v39;
    v53 = 2080;
    v54 = v40;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s%sBootup switch is:%s, account ID:%s, fProvisioningApplied:%s, reprovisioningNeeded:%s", buf, 0x3Eu);
  }

  *(a1 + 529) = 1;
  return v22;
}

void sub_100591A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, const void *a16, const void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_10001021C(&a17);
  sub_100045C8C(&a16);
  std::mutex::unlock((v26 + 432));
  _Unwind_Resume(a1);
}

uint64_t sub_100591B44(uint64_t a1)
{
  result = sub_1008100FC(a1);
  if (result)
  {
    v19 = 0;
    theDict = 0;
    v3 = (a1 + 120);
    v4 = *(a1 + 104);
    v5 = sub_1008100FC(a1);
    sub_1005D67F8(v4, 2, (a1 + 120), v5, &v19);
    if (!theDict)
    {
      v13 = 0;
      v14 = 0;
LABEL_29:
      sub_10001021C(&theDict);
      return v14 | v13;
    }

    if (CFDictionaryGetValue(theDict, @"account"))
    {
      v21 = 0uLL;
      v22 = 0;
      ctu::cf::assign();
      v18 = v22;
      *__p = v21;
      v6 = *(a1 + 128);
      v7 = *(a1 + 143);
      v8 = SHIBYTE(v22);
      if (v22 >= 0)
      {
        v9 = HIBYTE(v22);
      }

      else
      {
        v9 = *(&v21 + 1);
      }

      if ((v7 & 0x80u) == 0)
      {
        v6 = v7;
      }

      if (v9 == v6)
      {
        if (v22 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        if ((v7 & 0x80u) == 0)
        {
          v11 = v3;
        }

        else
        {
          v11 = *v3;
        }

        v12 = memcmp(v10, v11, v9) == 0;
        if (v8 < 0)
        {
LABEL_22:
          operator delete(__p[0]);
          if (!v12)
          {
            goto LABEL_27;
          }

          goto LABEL_23;
        }
      }

      else
      {
        v12 = 0;
        if (SHIBYTE(v22) < 0)
        {
          goto LABEL_22;
        }
      }

      if (!v12)
      {
        goto LABEL_27;
      }
    }

LABEL_23:
    Value = CFDictionaryGetValue(theDict, @"enable");
    if (Value)
    {
      LOBYTE(v21) = 0;
      ctu::cf::assign(&v21, Value, v16);
      if (v21)
      {
        v14 = 0x200000000;
      }

      else
      {
        v14 = &_mh_execute_header;
      }

      goto LABEL_28;
    }

LABEL_27:
    v14 = 0;
LABEL_28:
    v13 = 1;
    goto LABEL_29;
  }

  return result;
}

void sub_100591CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C((v19 + 8));
  _Unwind_Resume(a1);
}

BOOL sub_100591CF8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 192) == a2)
  {
    return 0;
  }

  v3 = a2;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *v24 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, v24);
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
      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_11:
  isWatch = GestaltUtilityInterface::isWatch(v13);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (isWatch)
  {
    v16 = *(a1 + 48);
    result = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      v17 = PersonalityInfo::logPrefix(**(a1 + 80));
      v18 = sub_10060FFC0(v3);
      *v24 = 136315650;
      *&v24[4] = v17;
      v25 = 2080;
      v26 = " ";
      v27 = 2080;
      v28 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#W %s%sThumper: user switch state on Watch cannot be changed from 'Default'. Attempted:'%s'", v24, 0x20u);
      return 0;
    }
  }

  else
  {
    v19 = *(a1 + 192);
    *(a1 + 192) = v3;
    v20 = *(a1 + 48);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = PersonalityInfo::logPrefix(**(a1 + 80));
      v22 = sub_10060FFC0(v19);
      v23 = sub_10060FFC0(*(a1 + 192));
      *v24 = 136315906;
      *&v24[4] = v21;
      v25 = 2080;
      v26 = " ";
      v27 = 2080;
      v28 = v22;
      v29 = 2080;
      v30 = v23;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sThumper: user switch state changed from %s -> %s", v24, 0x2Au);
    }

    return 1;
  }

  return result;
}

void sub_100591F4C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100591FC4(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  (*(*v10 + 72))(v10, **(a1 + 80) + 24);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  v12 = *(a1 + 616);
  PersonalityInfo::uuid(&v14, **(a1 + 80));
  (*(*v12 + 24))(v12, v14);
  return sub_1000475BC(&v14);
}

void sub_10059211C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000475BC(va);
  _Unwind_Resume(a1);
}

void sub_100592148(uint64_t a1)
{
  sub_1005D1DDC(*(a1 + 104));
  if (sub_1008100FC(a1) && (*(a1 + 529) & 1) == 0)
  {
    sub_100591240(a1);
    *buf = 0;
    *&buf[8] = 0;
    sub_100004AA0(buf, (a1 + 16));
    operator new();
  }

  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sPostpone loading initial states until device-ID is ready", buf, 0x16u);
  }

  sub_100004AA0(buf, (a1 + 16));
  v5 = *buf;
  v4 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_1005923D8;
  v6[3] = &unk_101E61808;
  v6[4] = a1;
  v6[5] = v5;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10079D8A0(524531, v6);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_100592398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005923D8(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[5])
      {
        v5 = a1[6];
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
        }

        v6[0] = 0;
        v6[1] = 0;
        sub_100004AA0(v6, (v3 + 16));
        operator new();
      }

      sub_100004A34(v4);
    }
  }
}

void sub_100592520(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!sub_10112CDBC(a2, (**(a1 + 80) + 24)))
  {
    v6 = *(a1 + 48);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(**(a1 + 80));
      v22 = 136315394;
      v23 = v7;
      v24 = 2080;
      v25 = " ";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Evaluate Entitlement Update ================================", &v22, 0x16u);
    }

    v10 = *(a4 + 8);
    v9 = a4 + 8;
    v8 = v10;
    if (v10)
    {
      v11 = v9;
      do
      {
        if (*(v8 + 28) >= 8)
        {
          v11 = v8;
        }

        v8 = *(v8 + 8 * (*(v8 + 28) < 8));
      }

      while (v8);
      if (v11 != v9 && *(v11 + 28) <= 8)
      {
        v12 = *(v11 + 32);
        v13 = *(a1 + 196);
        v14 = *(a1 + 48);
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v12 == 3 || v12 == v13)
        {
          if (v15)
          {
            v17 = PersonalityInfo::logPrefix(**(a1 + 80));
            v18 = sub_100A38E08(v12);
            v22 = 136315650;
            v23 = v17;
            v24 = 2080;
            v25 = " ";
            v26 = 2080;
            v27 = v18;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sThumper Entitlement:%s - no change", &v22, 0x20u);
          }
        }

        else
        {
          if (v15)
          {
            v19 = PersonalityInfo::logPrefix(**(a1 + 80));
            v20 = sub_100A38E08(*(a1 + 196));
            v21 = sub_100A38E08(v12);
            v22 = 136315906;
            v23 = v19;
            v24 = 2080;
            v25 = " ";
            v26 = 2080;
            v27 = v20;
            v28 = 2080;
            v29 = v21;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sThumper entitlement is changing from %s to %s", &v22, 0x2Au);
          }

          *(a1 + 196) = v12;
          sub_1005903E0(a1, 0, 0);
        }
      }
    }
  }
}

void sub_10059276C(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v3 = dispatch_queue_create("LocationPopupQueue", v2);
  v4 = *(a1 + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 80));
    buf = 136315394;
    *buf_4 = v5;
    *&buf_4[8] = 2080;
    *&buf_4[10] = " ";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sShowing popup to indicate location use during emergency calls", &buf, 0x16u);
  }

  if (*(a1 + 664))
  {
    v6 = *(a1 + 48);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = PersonalityInfo::logPrefix(**(a1 + 80));
      buf = 136315394;
      *buf_4 = v7;
      *&buf_4[8] = 2080;
      *&buf_4[10] = " ";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sAlready showing a location popup!", &buf, 0x16u);
    }
  }

  else
  {
    v17 = 0;
    v18 = 0;
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    sub_1005A5A80(&v17, ServiceMap);
    if (v17)
    {
      v16 = 0;
      (*(*v17 + 40))(&v16);
      v15 = 0;
      (*(*v17 + 40))(&v15);
      v14 = 0;
      (*(*v17 + 40))(&v14);
      v13 = 0;
      (*(*v17 + 40))(&v13);
      v9 = *(a1 + 32);
      if (v9)
      {
        dispatch_retain(v9);
      }

      sub_100004AA0(&buf, (a1 + 16));
      v10 = *&buf_4[4];
      if (*&buf_4[4])
      {
        atomic_fetch_add_explicit((*&buf_4[4] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v10);
      }

      operator new();
    }

    v11 = *(a1 + 48);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = PersonalityInfo::logPrefix(**(a1 + 80));
      buf = 136315394;
      *buf_4 = v12;
      *&buf_4[8] = 2080;
      *&buf_4[10] = " ";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#W %s%sLocalization interface doesn't exist. Bailing!", &buf, 0x16u);
    }

    if (v18)
    {
      sub_100004A34(v18);
    }
  }

  if (v3)
  {
    dispatch_release(v3);
  }
}

void sub_100592C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::__shared_weak_count *a30, char a31)
{
  if (a30)
  {
    sub_100004A34(a30);
  }

  if (v31)
  {
    dispatch_release(v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100592D58(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    dispatch_release(v3);
  }

  return a1;
}

uint64_t sub_100592D94(uint64_t a1)
{
  result = sub_10080FFF8(a1);
  if ((result & 1) == 0)
  {
    sub_10007B7D8(a1 + 648);
    v3 = v4;
    result = sub_10000A1EC(&v4);
    if (!v3)
    {
      sub_10059276C(a1);
      return sub_10079CC40(a1 + 648);
    }
  }

  return result;
}

void sub_100592DFC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_100592FC4(a1, a2);
  v4 = *(a1 + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 80));
    v6 = "OFF";
    *buf = 136315650;
    v14 = v5;
    v16 = " ";
    v15 = 2080;
    if (v2)
    {
      v6 = "ON";
    }

    v17 = 2080;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sTHUMPER %s", buf, 0x20u);
  }

  if (v2)
  {
    sub_100592D94(a1);
  }

  v7 = *(a1 + 96);
  v8 = *(a1 + 520);
  if (*(a1 + 143) < 0)
  {
    sub_100005F2C(__p, *(a1 + 120), *(a1 + 128));
  }

  else
  {
    *__p = *(a1 + 120);
    v12 = *(a1 + 136);
  }

  v9 = (*(*v7 + 448))(v7, 1, v8 == 1, __p);
  v10 = v9;
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
    if (!v10)
    {
      return;
    }

    goto LABEL_14;
  }

  if (v9)
  {
LABEL_14:
    ResetAllPacketHandlersAPNs(0xC, 0xFFFFFFFFLL, 0);
    sub_100593034(a1, v2);
  }
}

void sub_100592FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100592FC4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = (*(*a1 + 224))(a1);
  if (v4 != v2)
  {
    sub_10059FB14(a1, v2);
  }

  return v4 != v2;
}

void sub_100593034(uint64_t a1, char a2)
{
  if (a2)
  {
    v80 = 0;
    theDict = 0;
    sub_1005D67F8(*(a1 + 104), 0, (a1 + 120), 0, &v80);
    if (!theDict)
    {
LABEL_102:
      sub_10001021C(&theDict);
      return;
    }

    Value = CFDictionaryGetValue(theDict, @"emergencyNumbers");
    if (Value)
    {
      v77 = 0;
      v78 = 0;
      v79 = 0;
      *&__src[8] = 0;
      *&__src[16] = 0;
      *__src = &__src[8];
      *&buf[8] = 0;
      *&buf[16] = 0;
      context[1] = &buf[8];
      *buf = &buf[8];
      context[0] = buf;
      CFDictionaryApplyFunction(Value, sub_1005A677C, context);
      v5 = *__src;
      v4 = *&__src[8];
      *__src = *buf;
      *&__src[8] = *&buf[8];
      *buf = v5;
      *&buf[8] = v4;
      v6 = *&__src[16];
      v7 = *&buf[16];
      *&__src[16] = *&buf[16];
      *&buf[16] = v6;
      if (v7)
      {
        v8 = (*&__src[8] + 16);
      }

      else
      {
        v8 = __src;
      }

      *v8 = &__src[8];
      if (v6)
      {
        v9 = (v4 + 2);
      }

      else
      {
        v9 = buf;
      }

      *v9 = &buf[8];
      sub_100580908(buf, v4);
      v10 = *&__src[8];
      v77 = *__src;
      v78 = *&__src[8];
      v79 = *&__src[16];
      if (*&__src[16])
      {
        *(*&__src[8] + 16) = &v78;
        *__src = &__src[8];
        *&__src[8] = 0;
        *&__src[16] = 0;
        v10 = 0;
      }

      else
      {
        v77 = &v78;
      }

      sub_100580908(__src, v10);
      v23 = v77;
      if (v77 != &v78)
      {
        while (1)
        {
          if (v23[55] >= 0)
          {
            v24 = v23 + 32;
          }

          else
          {
            v24 = *(v23 + 4);
          }

          v25 = atoi(v24);
          memset(__src, 0, sizeof(__src));
          sub_10004EFD0(__src, *(v23 + 7), *(v23 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v23 + 8) - *(v23 + 7)) >> 3));
          v26 = *(a1 + 48);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = PersonalityInfo::logPrefix(**(a1 + 80));
            v29 = *__src;
            v28 = *&__src[8];
            v30 = asString();
            *buf = 136315906;
            *&buf[4] = v27;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2048;
            *&buf[24] = 0xAAAAAAAAAAAAAAABLL * ((v28 - v29) >> 3);
            LOWORD(v84) = 2080;
            *(&v84 + 2) = v30;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%sAdding %zu %s emergency number(s) from iCloud", buf, 0x2Au);
          }

          ServiceMap = Registry::getServiceMap(*(a1 + 56));
          v32 = ServiceMap;
          if (v33 < 0)
          {
            v34 = (v33 & 0x7FFFFFFFFFFFFFFFLL);
            v35 = 5381;
            do
            {
              v33 = v35;
              v36 = *v34++;
              v35 = (33 * v35) ^ v36;
            }

            while (v36);
          }

          std::mutex::lock(ServiceMap);
          *buf = v33;
          v37 = sub_100009510(&v32[1].__m_.__sig, buf);
          if (!v37)
          {
            break;
          }

          v39 = v37[3];
          v38 = v37[4];
          if (!v38)
          {
            goto LABEL_38;
          }

          atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v32);
          atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v38);
          v40 = 0;
LABEL_39:
          memset(buf, 0, 24);
          sub_10004EFD0(buf, *__src, *&__src[8], 0xAAAAAAAAAAAAAAABLL * ((*&__src[8] - *__src) >> 3));
          (*(*v39 + 56))(v39, v25, buf, 1);
          context[0] = buf;
          sub_1000087B4(context);
          if ((v40 & 1) == 0)
          {
            sub_100004A34(v38);
          }

          context[0] = __src;
          sub_1000087B4(context);
          v41 = *(v23 + 1);
          if (v41)
          {
            do
            {
              v42 = v41;
              v41 = *v41;
            }

            while (v41);
          }

          else
          {
            do
            {
              v42 = *(v23 + 2);
              v43 = *v42 == v23;
              v23 = v42;
            }

            while (!v43);
          }

          v23 = v42;
          if (v42 == &v78)
          {
            goto LABEL_47;
          }
        }

        v39 = 0;
LABEL_38:
        std::mutex::unlock(v32);
        v38 = 0;
        v40 = 1;
        goto LABEL_39;
      }

LABEL_47:
      sub_100580908(&v77, v78);
    }

    if (!CFDictionaryGetValue(theDict, @"preferredEmergencyNumber"))
    {
LABEL_86:
      *__src = @"IMSConfig";
      *&__src[8] = @"EmergencyNumbersOverWifiOnly";
      memset(buf, 0, 24);
      sub_10005B328(buf, __src, &__src[16], 2uLL);
      v65 = 0;
      sub_10059DA0C(a1, buf, 0, &cf);
      v77 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      context[0] = 0;
      *__src = 0;
      sub_10006DD00(__src, &v77);
      if (*__src)
      {
        sub_1002F5980(context, __src);
      }

      sub_100010250(__src);
      v65 = context[0];
      context[0] = 0;
      sub_100010250(context);
      sub_10000A1EC(&v77);
      sub_10000A1EC(&cf);
      if (!v65)
      {
        v57 = *(a1 + 48);
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          v58 = PersonalityInfo::logPrefix(**(a1 + 80));
          *__src = 136315394;
          *&__src[4] = v58;
          *&__src[12] = 2080;
          *&__src[14] = " ";
          _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#I %s%sEmergency numbers over Wifi-only missing!!!", __src, 0x16u);
        }
      }

      *__src = @"IMSConfig";
      *&__src[8] = @"LocalShortCodeNumbers";
      sub_1005A1CB8(buf, __src, &__src[16], 2uLL);
      v63 = 0;
      sub_10059DA0C(a1, buf, 0, &v62);
      v77 = v62;
      if (v62)
      {
        CFRetain(v62);
      }

      context[0] = 0;
      *__src = 0;
      sub_10006DD00(__src, &v77);
      if (*__src)
      {
        sub_1002F5980(context, __src);
      }

      sub_100010250(__src);
      v59 = context[0];
      v63 = context[0];
      context[0] = 0;
      sub_100010250(context);
      sub_10000A1EC(&v77);
      sub_10000A1EC(&v62);
      if (!v59)
      {
        v60 = *(a1 + 48);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          v61 = PersonalityInfo::logPrefix(**(a1 + 80));
          *__src = 136315394;
          *&__src[4] = v61;
          *&__src[12] = 2080;
          *&__src[14] = " ";
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I %s%sLocalShortCodeNumbers missing!!!", __src, 0x16u);
        }
      }

      sub_100010250(&v63);
      sub_100010250(&v65);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      goto LABEL_102;
    }

    memset(__src, 0, sizeof(__src));
    memset(buf, 0, 24);
    ctu::cf::assign();
    *__src = *buf;
    *&__src[16] = *&buf[16];
    v44 = *(a1 + 48);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = PersonalityInfo::logPrefix(**(a1 + 80));
      v46 = __src;
      if ((__src[23] & 0x80u) != 0)
      {
        v46 = *__src;
      }

      *buf = 136315650;
      *&buf[4] = v45;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      *&buf[24] = v46;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I %s%sSetting preferred emergency number from iCloud: %s", buf, 0x20u);
    }

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    memset(buf, 0, sizeof(buf));
    CSIPhoneNumber::CSIPhoneNumber();
    v47 = Registry::getServiceMap(*(a1 + 56));
    v48 = v47;
    if (v49 < 0)
    {
      v50 = (v49 & 0x7FFFFFFFFFFFFFFFLL);
      v51 = 5381;
      do
      {
        v49 = v51;
        v52 = *v50++;
        v51 = (33 * v51) ^ v52;
      }

      while (v52);
    }

    std::mutex::lock(v47);
    v77 = v49;
    v53 = sub_100009510(&v48[1].__m_.__sig, &v77);
    if (v53)
    {
      v55 = v53[3];
      v54 = v53[4];
      if (v54)
      {
        atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v48);
        atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v54);
        v56 = 0;
        if (!v55)
        {
          goto LABEL_72;
        }

        goto LABEL_62;
      }
    }

    else
    {
      v55 = 0;
    }

    std::mutex::unlock(v48);
    v54 = 0;
    v56 = 1;
    if (!v55)
    {
LABEL_72:
      if ((v56 & 1) == 0)
      {
        sub_100004A34(v54);
      }

      if (SBYTE7(v91) < 0)
      {
        operator delete(v90);
      }

      if (SHIBYTE(v89) < 0)
      {
        operator delete(*(&v88 + 1));
      }

      if (SBYTE7(v87) < 0)
      {
        operator delete(v86);
      }

      if (SBYTE7(v85) < 0)
      {
        operator delete(v84);
      }

      if (buf[31] < 0)
      {
        operator delete(*&buf[8]);
      }

      if (__src[23] < 0)
      {
        operator delete(*__src);
      }

      goto LABEL_86;
    }

LABEL_62:
    sub_1000AE428(v66, buf);
    (*(*v55 + 104))(v55, v66, 1);
    if (v76 < 0)
    {
      operator delete(__p);
    }

    if (v74 < 0)
    {
      operator delete(v73);
    }

    if (v72 < 0)
    {
      operator delete(v71);
    }

    if (v70 < 0)
    {
      operator delete(v69);
    }

    if (v68 < 0)
    {
      operator delete(v67);
    }

    goto LABEL_72;
  }

  v11 = Registry::getServiceMap(*(a1 + 56));
  v12 = v11;
  if (v13 < 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(v11);
  *buf = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, buf);
  if (!v17)
  {
    v19 = 0;
    goto LABEL_19;
  }

  v19 = v17[3];
  v18 = v17[4];
  if (!v18)
  {
LABEL_19:
    std::mutex::unlock(v12);
    v18 = 0;
    v20 = 1;
    goto LABEL_20;
  }

  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v12);
  atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v18);
  v20 = 0;
LABEL_20:
  (*(*v19 + 64))(v19);
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  v21 = *(a1 + 48);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v22;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%siCloud emergency number(s) removed", buf, 0x16u);
  }
}

void sub_100593A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, const void *a14, __int16 a15, char a16, char a17, int a18, const void *a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  sub_100010250(&a14);
  sub_100010250(&a19);
  if (__p)
  {
    a50 = __p;
    operator delete(__p);
  }

  sub_10001021C(&a46);
  _Unwind_Resume(a1);
}

void sub_100593BE4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a1 + 48);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = PersonalityInfo::logPrefix(**(a1 + 80));
      *v29 = 136315394;
      *&v29[4] = v7;
      v30 = 2080;
      v31 = " ";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sSaved credentials", v29, 0x16u);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    v9 = ServiceMap;
    if (v10 < 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    *v29 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, v29);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
LABEL_20:
    v28 = **(a1 + 80);
    sub_100612A44(*a2, v29);
    (*(*v16 + 16))(v16, v28 + 24, @"LocalCredentials", *v29, kPhoneServicesWalletDomain, 0, 4, 0);
    sub_1000296E0(v29);
    if (v17)
    {
      return;
    }

    goto LABEL_21;
  }

  if (v6)
  {
    v18 = PersonalityInfo::logPrefix(**(a1 + 80));
    *v29 = 136315394;
    *&v29[4] = v18;
    v30 = 2080;
    v31 = " ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sErased credentials", v29, 0x16u);
  }

  v19 = Registry::getServiceMap(*(a1 + 56));
  v20 = v19;
  if (v21 < 0)
  {
    v22 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
    v23 = 5381;
    do
    {
      v21 = v23;
      v24 = *v22++;
      v23 = (33 * v23) ^ v24;
    }

    while (v24);
  }

  std::mutex::lock(v19);
  *v29 = v21;
  v25 = sub_100009510(&v20[1].__m_.__sig, v29);
  if (v25)
  {
    v26 = v25[3];
    v15 = v25[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v20);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v27 = 0;
      goto LABEL_25;
    }
  }

  else
  {
    v26 = 0;
  }

  std::mutex::unlock(v20);
  v15 = 0;
  v27 = 1;
LABEL_25:
  (*(*v26 + 32))(v26, **(a1 + 80) + 24, @"LocalCredentials", kPhoneServicesWalletDomain, 0, 4);
  if (v27)
  {
    return;
  }

LABEL_21:
  sub_100004A34(v15);
}

void sub_100593F1C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100593F6C(uint64_t a1)
{
  v13 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  (*(*v10 + 24))(&v12, v10, **(a1 + 80) + 24, @"LocalCredentials", kPhoneServicesWalletDomain, 0, 4);
  sub_100010180(&v13, &v12);
  sub_10000A1EC(&v12);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (v13)
  {
    operator new();
  }

  sub_100594204((a1 + 232), 0);
}

void sub_100594198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

BOOL sub_10059424C(uint64_t a1)
{
  if (!*(a1 + 200))
  {
    return 1;
  }

  v10 = 0uLL;
  v11 = 0;
  ctu::cf::assign();
  v9 = 0;
  *__p = 0uLL;
  v2 = *(a1 + 143);
  if (v2 >= 0)
  {
    v3 = *(a1 + 143);
  }

  else
  {
    v3 = *(a1 + 128);
  }

  v4 = HIBYTE(v9);
  if (v9 < 0)
  {
    v4 = __p[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v5 = (a1 + 120);
  }

  else
  {
    v5 = *(a1 + 120);
  }

  return memcmp(v5, __p, v3) == 0;
}

void sub_10059431C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100594338(uint64_t a1)
{
  sub_100810310(a1, 2, 0, 1, 1);
  v15 = 0;
  theDict = 0;
  sub_1005D67F8(*(a1 + 104), 1, (a1 + 120), 0, &v15);
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
    Count = CFDictionaryGetCount(MutableCopy);
    if (Count)
    {
      keys = 0;
      v12 = 0;
      v13 = 0;
      sub_100222418(&keys, Count);
      values = 0;
      v9 = 0;
      v10 = 0;
      sub_10007D780(&values, Count);
      CFDictionaryGetKeysAndValues(MutableCopy, keys, values);
      v3 = 0;
      while (1)
      {
        v4 = values[v3];
        if (v4)
        {
          v5 = CFGetTypeID(values[v3]);
          if (v5 == CFStringGetTypeID())
          {
            v6 = sub_1008100FC(a1);
            if (CFStringCompare(v6, v4, 0) == kCFCompareEqualTo)
            {
              break;
            }
          }
        }

        if (Count == ++v3)
        {
          goto LABEL_10;
        }
      }

      CFDictionaryRemoveValue(MutableCopy, keys[v3]);
      sub_1005D550C(*(a1 + 104), 1, MutableCopy, (v15 + 1), (a1 + 120), 1, 1);
LABEL_10:
      if (values)
      {
        v9 = values;
        operator delete(values);
      }

      if (keys)
      {
        v12 = keys;
        operator delete(keys);
      }
    }

    sub_1000296E0(&MutableCopy);
  }

  return sub_10001021C(&theDict);
}

void sub_1005944B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, const void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  sub_1000296E0(&a16);
  sub_10001021C((v16 + 8));
  _Unwind_Resume(a1);
}

void sub_100594514(uint64_t a1, int a2, CFDictionaryRef theDict)
{
  if (a2)
  {
    Value = CFDictionaryGetValue(theDict, @"imsCommonCredentials");
    if (Value && (v7 = Value, v8 = CFGetTypeID(Value), v8 == CFDictionaryGetTypeID()))
    {
      v104 = 0;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      memset(v77, 0, sizeof(v77));
      sub_1006113E8(v77, v7);
      v71 = 0;
      if (*(a1 + 280) == 1)
      {
        sub_10059AB30(&v72);
      }

      v68 = 0;
      sub_10059AF40(&v68, theDict);
      v11 = v68;
      if (v68)
      {
        v12 = *(a1 + 48);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = PersonalityInfo::logPrefix(**(a1 + 80));
          v72 = 0uLL;
          v73 = 0;
          ctu::cf::assign();
          *__p = v72;
          v70 = v73;
          v14 = v72;
          if (v73 >= 0)
          {
            v14 = __p;
          }

          *buf = 136315650;
          *&buf[4] = v13;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          v75 = 2080;
          v76 = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sCA name: '%s'", buf, 0x20u);
          if (SHIBYTE(v70) < 0)
          {
            operator delete(__p[0]);
          }

          v11 = v68;
        }
      }

      *&v72 = 0;
      sub_10059B230(&v72, theDict, a1, v71, v11, v77);
      if (v72)
      {
        __p[0] = 0;
        std::mutex::lock((a1 + 432));
        sub_1000676D4((a1 + 512), &v72);
        IMSInfo::serialize(&v67, *(a1 + 496));
        *buf = __p[0];
        __p[0] = v67;
        v67 = 0;
        sub_10001021C(buf);
        sub_10001021C(&v67);
        std::mutex::unlock((a1 + 432));
        ServiceMap = Registry::getServiceMap(*(a1 + 56));
        sub_1004419D4(buf, ServiceMap);
        v16 = kPhoneServicesWalletDomain;
        (*(**buf + 16))(*buf, **(a1 + 80) + 24, @"CarrierBundle", v72, kPhoneServicesWalletDomain, 0, 4, 0);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        v17 = Registry::getServiceMap(*(a1 + 56));
        sub_1004419D4(buf, v17);
        (*(**buf + 16))(*buf, **(a1 + 80) + 24, @"IMSInfo", __p[0], v16, 0, 4, 0);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        v18 = *(a1 + 48);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = PersonalityInfo::logPrefix(**(a1 + 80));
          *buf = 136315394;
          *&buf[4] = v19;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sThumper provisioning applied", buf, 0x16u);
        }

        sub_10001021C(__p);
        sub_10001021C(&v72);
        sub_100005978(&v68);
        sub_100005978(&v71);
        sub_100220C2C(v77);
        *(a1 + 392) = 1;
        v20 = Registry::getServiceMap(*(a1 + 56));
        v21 = v20;
        if (v22 < 0)
        {
          v23 = (v22 & 0x7FFFFFFFFFFFFFFFLL);
          v24 = 5381;
          do
          {
            v22 = v24;
            v25 = *v23++;
            v24 = (33 * v24) ^ v25;
          }

          while (v25);
        }

        std::mutex::lock(v20);
        *v77 = v22;
        v26 = sub_100009510(&v21[1].__m_.__sig, v77);
        if (v26)
        {
          v28 = v26[3];
          v27 = v26[4];
          if (v27)
          {
            atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v21);
            atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v27);
            v29 = 0;
LABEL_84:
            (*(*v28 + 16))(v28, **(a1 + 80) + 24, kCFLocalProvisioningApplied, kCFBooleanTrue, v16, 0, 1, 0);
            if ((v29 & 1) == 0)
            {
              sub_100004A34(v27);
            }

            sub_100591FC4(a1);
            return;
          }
        }

        else
        {
          v28 = 0;
        }

        std::mutex::unlock(v21);
        v27 = 0;
        v29 = 1;
        goto LABEL_84;
      }

      v30 = *(a1 + 48);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = PersonalityInfo::logPrefix(**(a1 + 80));
        *buf = 136315394;
        *&buf[4] = v31;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%sUnable to compile CB - bailout", buf, 0x16u);
      }

      sub_10001021C(&v72);
      sub_100005978(&v68);
      sub_100005978(&v71);
      sub_100220C2C(v77);
    }

    else
    {
      v9 = *(a1 + 48);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = PersonalityInfo::logPrefix(**(a1 + 80));
        *v77 = 136315394;
        *&v77[4] = v10;
        *&v77[12] = 2080;
        *&v77[14] = " ";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sims common credentials are unavailable", v77, 0x16u);
      }
    }
  }

  std::mutex::lock((a1 + 432));
  v32 = *(a1 + 504);
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  if (v32)
  {
    sub_100004A34(v32);
  }

  sub_10059B8C8(a1, *(a1 + 512));
  std::mutex::unlock((a1 + 432));
  v33 = Registry::getServiceMap(*(a1 + 56));
  v34 = v33;
  v36 = v35;
  if (v35 < 0)
  {
    v37 = (v35 & 0x7FFFFFFFFFFFFFFFLL);
    v38 = 5381;
    do
    {
      v36 = v38;
      v39 = *v37++;
      v38 = (33 * v38) ^ v39;
    }

    while (v39);
  }

  std::mutex::lock(v33);
  *v77 = v36;
  v40 = sub_100009510(&v34[1].__m_.__sig, v77);
  if (v40)
  {
    v42 = v40[3];
    v41 = v40[4];
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v34);
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v41);
      v43 = 0;
      goto LABEL_41;
    }
  }

  else
  {
    v42 = 0;
  }

  std::mutex::unlock(v34);
  v41 = 0;
  v43 = 1;
LABEL_41:
  v44 = kPhoneServicesWalletDomain;
  (*(*v42 + 32))(v42, **(a1 + 80) + 24, @"CarrierBundle", kPhoneServicesWalletDomain, 0, 4);
  if ((v43 & 1) == 0)
  {
    sub_100004A34(v41);
  }

  v45 = Registry::getServiceMap(*(a1 + 56));
  v46 = v45;
  v47 = v35;
  if (v35 < 0)
  {
    v48 = (v35 & 0x7FFFFFFFFFFFFFFFLL);
    v49 = 5381;
    do
    {
      v47 = v49;
      v50 = *v48++;
      v49 = (33 * v49) ^ v50;
    }

    while (v50);
  }

  std::mutex::lock(v45);
  *v77 = v47;
  v51 = sub_100009510(&v46[1].__m_.__sig, v77);
  if (v51)
  {
    v53 = v51[3];
    v52 = v51[4];
    if (v52)
    {
      atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v46);
      atomic_fetch_add_explicit(&v52->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v52);
      v54 = 0;
      goto LABEL_51;
    }
  }

  else
  {
    v53 = 0;
  }

  std::mutex::unlock(v46);
  v52 = 0;
  v54 = 1;
LABEL_51:
  (*(*v53 + 32))(v53, **(a1 + 80) + 24, @"IMSInfo", v44, 0, 4);
  if ((v54 & 1) == 0)
  {
    sub_100004A34(v52);
  }

  if (*(a1 + 384) == 1)
  {
    *(a1 + 248) = off_101EA6578;
    if (*(a1 + 376) == 1 && *(a1 + 375) < 0)
    {
      operator delete(*(a1 + 352));
    }

    if (*(a1 + 344) == 1 && *(a1 + 343) < 0)
    {
      operator delete(*(a1 + 320));
    }

    if (*(a1 + 312) == 1 && *(a1 + 311) < 0)
    {
      operator delete(*(a1 + 288));
    }

    if (*(a1 + 280) == 1 && *(a1 + 279) < 0)
    {
      operator delete(*(a1 + 256));
    }

    TMKXPCServer.shutdown()();
    *(a1 + 384) = 0;
  }

  v55 = *(a1 + 48);
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = PersonalityInfo::logPrefix(**(a1 + 80));
    v57 = "removed";
    *v77 = 136315650;
    *&v77[4] = v56;
    *&v77[12] = 2080;
    *&v77[14] = " ";
    if (a2)
    {
      v57 = "cannot be applied";
    }

    *&v77[22] = 2080;
    *&v77[24] = v57;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I %s%sThumper provisioning %s", v77, 0x20u);
  }

  *(a1 + 392) = 0;
  v58 = Registry::getServiceMap(*(a1 + 56));
  v59 = v58;
  if (v35 < 0)
  {
    v60 = (v35 & 0x7FFFFFFFFFFFFFFFLL);
    v61 = 5381;
    do
    {
      v35 = v61;
      v62 = *v60++;
      v61 = (33 * v61) ^ v62;
    }

    while (v62);
  }

  std::mutex::lock(v58);
  *v77 = v35;
  v63 = sub_100009510(&v59[1].__m_.__sig, v77);
  if (v63)
  {
    v65 = v63[3];
    v64 = v63[4];
    if (v64)
    {
      atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v59);
      atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v64);
      v66 = 0;
      goto LABEL_79;
    }
  }

  else
  {
    v65 = 0;
  }

  std::mutex::unlock(v59);
  v64 = 0;
  v66 = 1;
LABEL_79:
  (*(*v65 + 32))(v65, **(a1 + 80) + 24, kCFLocalProvisioningApplied, v44, 0, 1);
  if ((v66 & 1) == 0)
  {
    sub_100004A34(v64);
  }
}

void sub_100595068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a18);
  sub_100220C2C(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_100595194(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *v28 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v28);
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
  (*(*v10 + 32))(v10, **(a1 + 80) + 24, @"CarrierBundle", kPhoneServicesWalletDomain, 0, 4);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  std::mutex::lock((a1 + 432));
  v12 = *(a1 + 512);
  *(a1 + 512) = 0;
  *v28 = v12;
  sub_10001021C(v28);
  std::mutex::unlock((a1 + 432));
  v13 = *(a1 + 48);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = PersonalityInfo::logPrefix(**(a1 + 80));
    *v28 = 136315394;
    *&v28[4] = v14;
    *&v28[12] = 2080;
    *&v28[14] = " ";
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%spre-provisioning dropped ->disable personality", v28, 0x16u);
  }

  v15 = Registry::getServiceMap(*(a1 + 56));
  v16 = v15;
  if (v17 < 0)
  {
    v18 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v17 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  std::mutex::lock(v15);
  *v28 = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, v28);
  if (v21)
  {
    v23 = v21[3];
    v22 = v21[4];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v16);
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v22);
      v24 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v16);
  v22 = 0;
  v24 = 1;
LABEL_21:
  (*(*v23 + 64))(v23, **(a1 + 80) + 24, 0);
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  v25 = *(a1 + 240);
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  if (v25)
  {
    sub_100004A34(v25);
  }

  *v28 = 0;
  *&v28[8] = 0;
  sub_100593BE4(a1, v28);
  v26 = **(a1 + 96);
  *(a1 + 196) = 2;
  return (*(v26 + 312))();
}

void sub_1005954AC(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1005954E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1008100FC(a1);
  v9 = 0uLL;
  v10 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v8 = 0;
  v4 = sub_100598EC4(a1, (a1 + 120), __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  if (v4 == -1)
  {
    *a2 = 0;
    *&v9 = 0;
    *(a2 + 8) = 1;
    v5 = &v9;
  }

  else
  {
    v9 = 0uLL;
    sub_1005D67F8(*(a1 + 104), 0, (a1 + 120), 0, &v9);
    sub_100010024(a2, &v9 + 1);
    *(a2 + 8) = BYTE4(v4);
    v5 = &v9 + 1;
  }

  return sub_10001021C(v5);
}

void sub_1005955C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005955F0(uint64_t a1, CFDictionaryRef theDict, char a3)
{
  v7 = (a1 + 232);
  v6 = *(a1 + 232);
  if (v6 && (*(v6 + 256) & 1) != 0)
  {
    sub_1005989F8(a1);
    goto LABEL_91;
  }

  Value = CFDictionaryGetValue(theDict, @"masterToken");
  if (Value)
  {
    v9 = CFGetTypeID(Value);
    v10 = v9 != CFStringGetTypeID();
  }

  else
  {
    v10 = 1;
  }

  v35 = 0;
  v11 = *v7;
  if (*v7)
  {
    LOBYTE(v11) = v11[10].__r_.__value_.__s.__data_[16];
  }

  if ((v11 & 1) != 0 || !v10)
  {
    v35 = 0;
  }

  else
  {
    sub_1005999D0(&v35, theDict, a1);
  }

  std::mutex::lock((a1 + 432));
  v12 = *(a1 + 512);
  std::mutex::unlock((a1 + 432));
  if ((v12 || sub_10059900C(a1, theDict, v35)) && (!*v7 || ((*v7)[10].__r_.__value_.__s.__data_[16] & 1) == 0))
  {
    if (!v10)
    {
      sub_100593F6C(a1);
    }

    if (v35)
    {
      operator new();
    }

    if (!*v7 || (*v7)[10].__r_.__value_.__s.__data_[16] != 1)
    {
      if (!v10 && (a3 & 1) != 0 && *(**(a1 + 80) + 48) == 1)
      {
        sub_10059837C(a1);
      }

      goto LABEL_90;
    }

    memset(&v34, 0, sizeof(v34));
    memset(&__p, 0, sizeof(__p));
    memset(&v32, 0, sizeof(v32));
    std::mutex::lock((a1 + 432));
    v13 = *(a1 + 496);
    if (v13)
    {
      std::string::operator=(&v32, v13);
      std::string::operator=(&v34, (*(a1 + 496) + 24));
      v14 = *(*(a1 + 496) + 48);
      if (*(*(a1 + 496) + 56) == v14)
      {
        sub_10000501C(&__dst, "");
      }

      else if (*(v14 + 23) < 0)
      {
        sub_100005F2C(&__dst, *v14, *(v14 + 1));
      }

      else
      {
        v15 = *v14;
        __dst.__r_.__value_.__r.__words[2] = *(v14 + 2);
        *&__dst.__r_.__value_.__l.__data_ = v15;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = __dst;
    }

    std::mutex::unlock((a1 + 432));
    size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v34.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      goto LABEL_63;
    }

    if (*(a1 + 384) == 1 && *(a1 + 344) == 1)
    {
      p_data = (a1 + 320);
      if (*(a1 + 343) < 0)
      {
        p_size = (a1 + 328);
LABEL_47:
        sub_100005F2C(&__dst, *p_data, *p_size);
LABEL_48:
        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        v34 = __dst;
        v20 = *v7;
        if ((*v7)[7].__r_.__value_.__s.__data_[16] == 1)
        {
          if (v20[7].__r_.__value_.__s.__data_[15] < 0)
          {
            sub_100005F2C(&__dst, v20[6].__r_.__value_.__r.__words[2], v20[7].__r_.__value_.__r.__words[0]);
          }

          else
          {
            __dst = *(v20 + 160);
          }
        }

        else
        {
          sub_10000501C(&__dst, "");
        }

        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        v32 = __dst;
        if (*(a1 + 384) == 1 && *(a1 + 376) == 1)
        {
          v21 = (a1 + 352);
        }

        else
        {
          if ((*v7)[9].__r_.__value_.__s.__data_[0] != 1)
          {
            v27 = CFDictionaryGetValue(theDict, @"impu");
            v28 = v27;
            if (v27)
            {
              v29 = CFGetTypeID(v27);
              if (v29 == CFArrayGetTypeID())
              {
                if (CFArrayGetCount(v28))
                {
                  CFArrayGetValueAtIndex(v28, 0);
                  memset(&__dst, 0, sizeof(__dst));
                  ctu::cf::assign();
                  v37[0] = __dst.__r_.__value_.__l.__size_;
                  v30 = __dst.__r_.__value_.__r.__words[0];
                  *(v37 + 7) = *(&__dst.__r_.__value_.__r.__words[1] + 7);
                  v31 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                  }

                  __p.__r_.__value_.__r.__words[0] = v30;
                  __p.__r_.__value_.__l.__size_ = v37[0];
                  *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v37 + 7);
                  *(&__p.__r_.__value_.__s + 23) = v31;
                }
              }
            }

            goto LABEL_63;
          }

          v21 = *v7 + 8;
        }

        std::string::operator=(&__p, v21);
LABEL_63:
        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v34.__r_.__value_.__l.__size_)
          {
            v22 = v34.__r_.__value_.__r.__words[0];
          }

          else
          {
            v22 = 0;
          }
        }

        else if (*(&v34.__r_.__value_.__s + 23))
        {
          v22 = &v34;
        }

        else
        {
          v22 = 0;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          if (__p.__r_.__value_.__l.__size_)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          else
          {
            p_p = 0;
          }
        }

        else if (*(&__p.__r_.__value_.__s + 23))
        {
          p_p = &__p;
        }

        else
        {
          p_p = 0;
        }

        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v32.__r_.__value_.__l.__size_)
          {
            v24 = v32.__r_.__value_.__r.__words[0];
          }

          else
          {
            v24 = 0;
          }
        }

        else if (*(&v32.__r_.__value_.__s + 23))
        {
          v24 = &v32;
        }

        else
        {
          v24 = 0;
        }

        sub_100597B4C(a1, v22, p_p, v24, 0, 0);
        sub_1005989F8(a1);
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v34.__r_.__value_.__l.__data_);
        }

        goto LABEL_90;
      }
    }

    else
    {
      v19 = *v7;
      if ((*v7)[5].__r_.__value_.__s.__data_[0] != 1)
      {
        sub_10000501C(&__dst, "");
        goto LABEL_48;
      }

      p_data = &v19[4].__r_.__value_.__l.__data_;
      if (SHIBYTE(v19[4].__r_.__value_.__r.__words[2]) < 0)
      {
        p_size = &v19[4].__r_.__value_.__l.__size_;
        goto LABEL_47;
      }
    }

    __dst = *p_data;
    goto LABEL_48;
  }

LABEL_90:
  sub_10001021C(&v35);
LABEL_91:
  v25 = *v7;
  if (*v7)
  {
    LOBYTE(v25) = v25[10].__r_.__value_.__s.__data_[16];
  }

  return v25 & 1;
}

void sub_100595B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, const void *a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  sub_10001021C(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_100595BDC(uint64_t a1, CFDictionaryRef theDict, int a3)
{
  if (a3 && (*(a1 + 384) & 1) == 0)
  {
    if (*(a1 + 525))
    {
      v5 = *(a1 + 48);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = PersonalityInfo::logPrefix(**(a1 + 80));
        *buf = 136315394;
        *&buf[4] = v6;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%ssetProvisioning call in progress - bailout", buf, 0x16u);
      }
    }

    else
    {
      Value = CFDictionaryGetValue(theDict, @"imsCommonCredentials");
      if (Value)
      {
        v8 = *(a1 + 232);
        if (v8)
        {
          if (*(v8 + 256) == 1)
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
            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v20 = 0u;
            v21 = 0u;
            v18 = 0u;
            v19 = 0u;
            v16 = 0u;
            v17 = 0u;
            v14 = 0u;
            v15 = 0u;
            v12 = 0u;
            v13 = 0u;
            v10 = 0u;
            v11 = 0u;
            memset(buf, 0, sizeof(buf));
            sub_1006113E8(buf, Value);
            operator new();
          }
        }
      }
    }
  }

  return *(a1 + 384);
}

void sub_1005961FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_10002D760(&a15);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v27);
  sub_100220C2C(&a27);
  _Unwind_Resume(a1);
}

BOOL sub_1005962C8(uint64_t a1)
{
  std::mutex::lock((a1 + 432));
  v2 = *(a1 + 512) != 0;
  std::mutex::unlock((a1 + 432));
  return v2;
}

void sub_100596308(uint64_t a1, char a2)
{
  v4 = sub_100591B44(a1);
  v5 = *(a1 + 192);
  if (v5)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = sub_10058D044(a1);
  }

  v7 = (v5 == 2) | v6 & a2;
  if ((v4 & 1) == 0)
  {
    v7 = 0;
  }

  *(a1 + 640) = v7 & 1;
  v8 = *(a1 + 96);
  if (v8)
  {
    v9 = *(a1 + 48);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = PersonalityInfo::logPrefix(**(a1 + 80));
      v11 = asStringBool(v4 & 1);
      v12 = sub_10060FFC0(*(a1 + 192));
      v13 = sub_10060FF94(*(a1 + 520));
      v14 = asStringBool(*(a1 + 640));
      v15 = 136316418;
      v16 = v10;
      v17 = 2080;
      v18 = " ";
      v19 = 2080;
      v20 = v11;
      v21 = 2080;
      v22 = v12;
      v23 = 2080;
      v24 = v13;
      v25 = 2080;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sevaluateWiFiLocationRequirement: paired: %s, fSwitchState: %s, fServiceStatus: %s, locationRequired: %s", &v15, 0x3Eu);
      v8 = *(a1 + 96);
    }

    sub_100350590(v8);
  }
}

BOOL sub_100596484(uint64_t a1, unsigned __int8 *a2)
{
  v4 = ThumperCapability::operator!=((a1 + 32), a2);
  if (v4)
  {
    *(a1 + 32) = *a2;
    v5 = *(a1 + 24);
    if (v5)
    {
      (*(*v5 + 48))(v5, a1 + 32);
    }
  }

  return v4;
}

void sub_1005964FC(uint64_t a1, int a2, int a3, int a4, int a5)
{
  if ((sub_10080FFF8(a1) & 1) == 0)
  {
    v12 = *(**(a1 + 80) + 48) != 1 || a3 == 0 || a4 == 0 || a2 == 0;
    if (v12 || (*(*a1 + 224))(a1) == 1 || (sub_10034B81C(*(a1 + 96)) & 1) != 0 || (*(a1 + 524) & 1) != 0 || (*(a1 + 525) & 1) != 0 || (*(a1 + 526) & 1) != 0 || (*(a1 + 527) & 1) != 0 || sub_10034B35C(*(a1 + 96), *(a1 + 196)))
    {
      if (a2)
      {
        v13 = *(*a1 + 224);

        v13(a1);
      }
    }

    else if ((*(a1 + 552) & 1) == 0)
    {
      v14 = *(a1 + 196);
      if (v14 == 1 || v14 == 6 || a5 == -1)
      {
        v15 = *(a1 + 48);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = PersonalityInfo::logPrefix(**(a1 + 80));
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
          *(buf.__r_.__value_.__r.__words + 4) = v16;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = " ";
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sShowing UI popup", &buf, 0x16u);
        }

        v47 = 0;
        v48 = 0;
        ServiceMap = Registry::getServiceMap(*(a1 + 56));
        sub_1005A5A80(&v47, ServiceMap);
        v46 = 0;
        (*(*v47 + 40))(&v46);
        v44 = 0;
        v45 = 0;
        v18 = Registry::getServiceMap(*(a1 + 56));
        sub_1005A61F8(&buf, v18);
        (*(*buf.__r_.__value_.__l.__data_ + 72))(buf.__r_.__value_.__r.__words[0]);
        if (buf.__r_.__value_.__l.__size_)
        {
          sub_100004A34(buf.__r_.__value_.__l.__size_);
        }

        (*(*v47 + 40))(&__str);
        buf.__r_.__value_.__r.__words[0] = v45;
        v45 = __str.__r_.__value_.__r.__words[0];
        __str.__r_.__value_.__r.__words[0] = 0;
        sub_100005978(&buf.__r_.__value_.__l.__data_);
        sub_100005978(&__str.__r_.__value_.__l.__data_);
        (*(*v47 + 40))(&__str);
        buf.__r_.__value_.__r.__words[0] = v44;
        v44 = __str.__r_.__value_.__r.__words[0];
        __str.__r_.__value_.__r.__words[0] = 0;
        sub_100005978(&buf.__r_.__value_.__l.__data_);
        sub_100005978(&__str.__r_.__value_.__l.__data_);
        memset(&__str, 0, sizeof(__str));
        memset(&buf, 0, sizeof(buf));
        ctu::cf::assign();
        __str = buf;
        v19 = sub_1003D9A94(&__str, "%s", 0);
        if (v19 != -1)
        {
          v20 = v19;
          v42 = 0;
          sub_100060E4C(&v42, @"carrier");
          v21 = *(a1 + 96);
          {
            v23 = (*(*v22 + 112))(v22);
            buf.__r_.__value_.__r.__words[0] = v23;
            value.__r_.__value_.__r.__words[0] = 0;
            if (v23)
            {
              if (CFDictionaryGetValueIfPresent(v23, @"CarrierName", &value.__r_.__value_.__l.__data_))
              {
                if (value.__r_.__value_.__r.__words[0])
                {
                  v24 = CFGetTypeID(value.__r_.__value_.__l.__data_);
                  if (v24 == CFStringGetTypeID())
                  {
                    v40.__r_.__value_.__r.__words[0] = value.__r_.__value_.__r.__words[0];
                    sub_100596E24(&v42, &v40.__r_.__value_.__l.__data_);
                  }
                }
              }
            }
          }

          else
          {
            buf.__r_.__value_.__r.__words[0] = 0;
          }

          sub_10001021C(&buf.__r_.__value_.__l.__data_);
          std::string::basic_string(&v40, &__str, 0, v20, &buf);
          memset(&buf, 0, sizeof(buf));
          ctu::cf::assign();
          __p = buf;
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
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

          v27 = std::string::append(&v40, p_p, size);
          v28 = *&v27->__r_.__value_.__l.__data_;
          value.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
          *&value.__r_.__value_.__l.__data_ = v28;
          v27->__r_.__value_.__l.__size_ = 0;
          v27->__r_.__value_.__r.__words[2] = 0;
          v27->__r_.__value_.__r.__words[0] = 0;
          std::string::basic_string(&buf, &__str, v20 + 2, 0xFFFFFFFFFFFFFFFFLL, &v49);
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v30 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v30 = buf.__r_.__value_.__l.__size_;
          }

          v31 = std::string::append(&value, p_buf, v30);
          v32 = v31->__r_.__value_.__r.__words[0];
          v50[0] = v31->__r_.__value_.__l.__size_;
          *(v50 + 7) = *(&v31->__r_.__value_.__r.__words[1] + 7);
          v33 = HIBYTE(v31->__r_.__value_.__r.__words[2]);
          v31->__r_.__value_.__l.__size_ = 0;
          v31->__r_.__value_.__r.__words[2] = 0;
          v31->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          __str.__r_.__value_.__r.__words[0] = v32;
          __str.__r_.__value_.__l.__size_ = v50[0];
          *(&__str.__r_.__value_.__r.__words[1] + 7) = *(v50 + 7);
          *(&__str.__r_.__value_.__s + 23) = v33;
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(value.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(value.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v40.__r_.__value_.__l.__data_);
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_str = &__str;
          }

          else
          {
            p_str = __str.__r_.__value_.__r.__words[0];
          }

          v35 = CFStringCreateWithCString(kCFAllocatorDefault, p_str, 0x8000100u);
          v36 = v44;
          v44 = v35;
          buf.__r_.__value_.__r.__words[0] = v36;
          sub_100005978(&buf.__r_.__value_.__l.__data_);
          sub_100005978(&v42);
        }

        v37 = Registry::getServiceMap(*(a1 + 56));
        sub_1005A62BC(&buf, v37);
        (*(*buf.__r_.__value_.__l.__data_ + 32))(buf.__r_.__value_.__r.__words[0], v45, v44, v46);
        if (buf.__r_.__value_.__l.__size_)
        {
          sub_100004A34(buf.__r_.__value_.__l.__size_);
        }

        *(a1 + 552) = 1;
        v38 = Registry::getServiceMap(*(a1 + 56));
        sub_1004419D4(&buf, v38);
        (*(*buf.__r_.__value_.__l.__data_ + 16))(buf.__r_.__value_.__r.__words[0], **(a1 + 80) + 24, @"ProvisioningFailedAlertShown", kCFBooleanTrue, kPhoneServicesWalletDomain, 0, 3, 0);
        if (buf.__r_.__value_.__l.__size_)
        {
          sub_100004A34(buf.__r_.__value_.__l.__size_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        sub_100005978(&v44);
        sub_100005978(&v45);
        sub_100005978(&v46);
        if (v48)
        {
          sub_100004A34(v48);
        }
      }
    }
  }
}

void sub_100596CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, const void *a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, const void *a35, const void *a36, const void *a37)
{
  sub_10001021C((v37 - 80));
  sub_100005978(&a27);
  if (a33 < 0)
  {
    operator delete(a28);
  }

  sub_100005978(&a35);
  sub_100005978(&a36);
  sub_100005978(&a37);
  v39 = *(v37 - 112);
  if (v39)
  {
    sub_100004A34(v39);
  }

  _Unwind_Resume(a1);
}

const void **sub_100596E24(const void **a1, CFTypeRef *a2)
{
  v5 = 0;
  sub_100060DE8(&v5, a2);
  v3 = *a1;
  *a1 = v5;
  v5 = v3;
  sub_100005978(&v5);
  return a1;
}

void sub_100596E74(__int128 *__return_ptr a1@<X8>, std::string *__str@<X1>, uint64_t a3@<X0>, uint64_t a4@<X2>)
{
  *a1 = 0;
  v51 = 0u;
  memset(&v52, 0, sizeof(v52));
  *v49 = 0u;
  *v50 = 0u;
  *v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  *v46 = 0u;
  memset(v44, 0, sizeof(v44));
  if (*(a4 + 56) == 1)
  {
    std::string::operator=(&v44[24], (a4 + 32));
  }

  if (*(a4 + 88) == 1)
  {
    std::string::operator=(v46, (a4 + 64));
  }

  if (*(a4 + 120) == 1)
  {
    std::string::operator=(&v47[1], (a4 + 96));
  }

  if (*(a4 + 152) == 1)
  {
    std::string::operator=(v49, (a4 + 128));
  }

  if (*(a4 + 184) == 1)
  {
    std::string::operator=(&v50[1], (a4 + 160));
  }

  if (*(a4 + 216) == 1)
  {
    std::string::operator=(&v52, (a4 + 192));
  }

  std::string::operator=(v44, __str);
  v43 = 0;
  sub_1005D7A90(@"com.apple.callservices.identifier.", (a3 + 120), &v43);
  v42 = 0;
  ServiceMap = Registry::getServiceMap(*(a3 + 56));
  sub_1004419D4(buf, ServiceMap);
  v9 = kPhoneServicesWalletDomain;
  (*(**buf + 24))(&__dst);
  sub_100060DE8(&v42, &__dst);
  sub_10000A1EC(&__dst);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (!v42)
  {
    goto LABEL_38;
  }

  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  v55 = *&buf[16];
  __dst = *buf;
  v10 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v10 >= 0)
  {
    size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  v12 = HIBYTE(v55);
  v13 = SHIBYTE(v55);
  if (v55 < 0)
  {
    v12 = *(&__dst + 1);
  }

  if (size == v12)
  {
    if (v10 >= 0)
    {
      v14 = __str;
    }

    else
    {
      v14 = __str->__r_.__value_.__r.__words[0];
    }

    if (v55 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    v16 = memcmp(v14, p_dst, size) == 0;
    if ((v13 & 0x80000000) == 0)
    {
LABEL_29:
      if (v16)
      {
        goto LABEL_30;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v16 = 0;
    if ((SHIBYTE(v55) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }
  }

  operator delete(__dst);
  if (v16)
  {
LABEL_30:
    if (*(a3 + 424))
    {
      v17 = *(a3 + 48);
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_60;
      }

      v18 = PersonalityInfo::logPrefix(**(a3 + 80));
      if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = __str;
      }

      else
      {
        v19 = __str->__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = v18;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v59 = v19;
      v20 = "#I %s%sUse existing thumper key for %s";
      v21 = v17;
      v22 = 32;
      goto LABEL_59;
    }

    sub_1009A834C(v43, buf);
    sub_1005A1A38((a3 + 400), buf);
    if (v59 == 1)
    {
      sub_1005A16F4(&buf[8]);
      sub_1005A16F4(buf);
    }

    v33 = *(a3 + 48);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = PersonalityInfo::logPrefix(**(a3 + 80));
      if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = __str;
      }

      else
      {
        v35 = __str->__r_.__value_.__r.__words[0];
      }

      v36 = "out";
      if (*(a3 + 424))
      {
        v36 = "";
      }

      *buf = 136315906;
      *&buf[4] = v34;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v59 = v35;
      v60 = 2080;
      v61 = v36;
      v20 = "#I %s%sRead thumper key for %s from keychain with%s success";
      v21 = v33;
      v22 = 42;
      goto LABEL_59;
    }

    goto LABEL_60;
  }

LABEL_38:
  sub_100597730((a3 + 400));
  sub_1009A9408(v43);
  v23 = Registry::getServiceMap(*(a3 + 56));
  sub_1004419D4(&v40, v23);
  v24 = v40;
  v25 = **(a3 + 80);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&__str->__r_.__value_.__l.__data_;
    v38 = __str->__r_.__value_.__r.__words[2];
  }

  if (SHIBYTE(v38) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v55 = v38;
  }

  v53 = 0;
  if (SHIBYTE(v55) < 0)
  {
    sub_100005F2C(buf, __dst, *(&__dst + 1));
  }

  else
  {
    *buf = __dst;
    *&buf[16] = v55;
  }

  v56 = 0;
  if (ctu::cf::convert_copy())
  {
    v26 = v53;
    v53 = v56;
    v57 = v26;
    sub_100005978(&v57);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  v39 = v53;
  v53 = 0;
  sub_100005978(&v53);
  if (SHIBYTE(v55) < 0)
  {
    operator delete(__dst);
  }

  (*(*v24 + 16))(v24, v25 + 24, @"last.dn", v39, v9, 0, 4, 0);
  sub_100005978(&v39);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }

  if (v41)
  {
    sub_100004A34(v41);
  }

  v27 = *(a3 + 48);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = PersonalityInfo::logPrefix(**(a3 + 80));
    *buf = 136315394;
    *&buf[4] = v28;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v20 = "#I %s%sCleaned up keychain's Thumper key record";
    v21 = v27;
    v22 = 22;
LABEL_59:
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
  }

LABEL_60:
  if ((*(a3 + 424) & 1) == 0)
  {
    sub_1009A6A9C(buf);
    sub_1005A1A38((a3 + 400), buf);
    if (v59 == 1)
    {
      sub_1005A16F4(&buf[8]);
      sub_1005A16F4(buf);
    }

    v29 = *(a3 + 48);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = PersonalityInfo::logPrefix(**(a3 + 80));
      if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = __str;
      }

      else
      {
        v31 = __str->__r_.__value_.__r.__words[0];
      }

      v32 = "out";
      if (*(a3 + 424))
      {
        v32 = "";
      }

      *buf = 136315906;
      *&buf[4] = v30;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v59 = v31;
      v60 = 2080;
      v61 = v32;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%sGenerated new thumper key for %s with%s success", buf, 0x2Au);
    }
  }

  if (*(a3 + 424) == 1)
  {
    sub_1009A78C8(v44, &__dst);
    if (&__dst != a1)
    {
      *buf = *a1;
      *a1 = __dst;
      *&__dst = 0;
      sub_10002D760(buf);
    }

    sub_10002D760(&__dst);
  }

  sub_100005978(&v42);
  sub_100005978(&v43);
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50[1]);
  }

  if (SHIBYTE(v50[0]) < 0)
  {
    operator delete(v49[0]);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[1]);
  }

  if (SHIBYTE(v47[0]) < 0)
  {
    operator delete(v46[0]);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(*&v44[24]);
  }

  if ((v44[23] & 0x80000000) != 0)
  {
    operator delete(*v44);
  }
}

void sub_10059760C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, const void *a18, const void *a19, __int16 a20, char a21, char a22)
{
  sub_100005978(&a18);
  sub_100005978(&a19);
  sub_1005A1B24(&a20);
  sub_10002D760(v22);
  _Unwind_Resume(a1);
}

const void **sub_100597730(const void **result)
{
  if (*(result + 24) == 1)
  {
    v1 = result;
    sub_1005A16F4(result + 1);
    result = sub_1005A16F4(v1);
    *(v1 + 24) = 0;
  }

  return result;
}

const void **sub_100597774(uint64_t a1, void *a2, const void **a3)
{
  result = sub_10112CDBC(a2, (**(a1 + 80) + 24));
  if (result)
  {
    return result;
  }

  v6 = *(a1 + 48);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Evaluating Service Token Expired ================================", buf, 0x16u);
  }

  theDict[0] = 0;
  theDict[1] = 0;
  sub_1005954E4(a1, theDict);
  if (!theDict[0])
  {
    goto LABEL_36;
  }

  Value = CFDictionaryGetValue(theDict[0], @"masterToken");
  if (Value)
  {
    v9 = CFGetTypeID(Value);
    if (v9 == CFStringGetTypeID())
    {
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      v33 = *&buf[16];
      *__p = *buf;
      v10 = *(a3 + 23);
      if (v10 >= 0)
      {
        v11 = *(a3 + 23);
      }

      else
      {
        v11 = a3[1];
      }

      v12 = HIBYTE(v33);
      v13 = SHIBYTE(v33);
      if (v33 < 0)
      {
        v12 = __p[1];
      }

      if (v11 == v12)
      {
        if (v10 >= 0)
        {
          v14 = a3;
        }

        else
        {
          v14 = *a3;
        }

        if (v33 >= 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0];
        }

        v16 = memcmp(v14, v15, v11) == 0;
        if ((v13 & 0x80000000) == 0)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v16 = 0;
        if ((SHIBYTE(v33) & 0x80000000) == 0)
        {
LABEL_53:
          v25 = "master";
          goto LABEL_38;
        }
      }

      operator delete(__p[0]);
      goto LABEL_53;
    }
  }

  v17 = *(a1 + 232);
  if (v17 && *(v17 + 288) == 1)
  {
    v18 = *(a3 + 23);
    if (v18 >= 0)
    {
      v19 = *(a3 + 23);
    }

    else
    {
      v19 = a3[1];
    }

    v20 = *(v17 + 287);
    v21 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v20 = *(v17 + 272);
    }

    if (v19 == v20)
    {
      v22 = (v17 + 264);
      if (v18 >= 0)
      {
        v23 = a3;
      }

      else
      {
        v23 = *a3;
      }

      if (v21 >= 0)
      {
        v24 = v22;
      }

      else
      {
        v24 = *v22;
      }

      v16 = memcmp(v23, v24, v19) == 0;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
LABEL_36:
    v16 = 1;
  }

  v25 = "individual";
LABEL_38:
  v26 = *(a1 + 48);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = PersonalityInfo::logPrefix(**(a1 + 80));
    v28 = "doesn't";
    *buf = 136315906;
    *&buf[4] = v27;
    *&buf[14] = " ";
    *&buf[12] = 2080;
    if (v16)
    {
      v28 = "";
    }

    *&buf[22] = 2080;
    v36 = v28;
    v37 = 2080;
    v38 = v25;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%sExpired token %smatch active %s token", buf, 0x2Au);
  }

  if (v16)
  {
    if (*(a3 + 23) >= 0)
    {
      v29 = a3;
    }

    else
    {
      v29 = *a3;
    }

    sub_100597B4C(a1, 0, 0, 0, 0, v29);
    sub_10034BA70(*(a1 + 96));
    sub_100348348(*(a1 + 96) + 360);
  }

  else
  {
    v30 = *(a1 + 48);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v31;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s%sexpired token processing ignored, token is not active already", buf, 0x16u);
    }
  }

  return sub_10001021C(theDict);
}

void sub_100597B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a13);
  _Unwind_Resume(a1);
}

const void **sub_100597B4C(uint64_t a1, const __CFString **a2, const __CFString **a3, const __CFString **a4, _BYTE *a5, const __CFString **a6)
{
  result = sub_1008100FC(a1);
  if (!result)
  {
    return result;
  }

  v46 = 0;
  theDict = 0;
  sub_1005D67F8(*(a1 + 104), 2, (a1 + 120), 0, &v46);
  v45 = 0;
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!MutableCopy)
    {
      goto LABEL_6;
    }
  }

  v14 = v45;
  v45 = MutableCopy;
  *&__dst = v14;
  sub_1000296E0(&__dst);
LABEL_6:
  v15 = sub_10080FFF8(a1);
  if (a5)
  {
    v17 = v15;
  }

  else
  {
    v17 = 1;
  }

  if ((v17 & 1) == 0)
  {
    v18 = &kCFBooleanTrue;
    if (!*a5)
    {
      v18 = &kCFBooleanFalse;
    }

    CFDictionarySetValue(v45, @"enable", *v18);
  }

  if (a2)
  {
    v19 = v45;
    __src[0] = 0;
    __p[0] = 0;
    if (ctu::cf::convert_copy(__p, a2, 0x8000100, kCFAllocatorDefault, v16))
    {
      v20 = __src[0];
      __src[0] = __p[0];
      *&__dst = v20;
      sub_100005978(&__dst);
    }

    v54 = __src[0];
    __src[0] = 0;
    sub_100005978(__src);
    CFDictionarySetValue(v19, @"impi", v54);
    sub_100005978(&v54);
  }

  if (a3)
  {
    v21 = v45;
    __src[0] = 0;
    __p[0] = 0;
    if (ctu::cf::convert_copy(__p, a3, 0x8000100, kCFAllocatorDefault, v16))
    {
      v22 = __src[0];
      __src[0] = __p[0];
      *&__dst = v22;
      sub_100005978(&__dst);
    }

    v54 = __src[0];
    __src[0] = 0;
    sub_100005978(__src);
    CFDictionarySetValue(v21, @"impu", v54);
    sub_100005978(&v54);
  }

  if (a4)
  {
    v23 = v45;
    __src[0] = 0;
    __p[0] = 0;
    if (ctu::cf::convert_copy(__p, a4, 0x8000100, kCFAllocatorDefault, v16))
    {
      v24 = __src[0];
      __src[0] = __p[0];
      *&__dst = v24;
      sub_100005978(&__dst);
    }

    v54 = __src[0];
    __src[0] = 0;
    sub_100005978(__src);
    CFDictionarySetValue(v23, @"imsi", v54);
    sub_100005978(&v54);
  }

  if (a6)
  {
    v25 = v45;
    __src[0] = 0;
    __p[0] = 0;
    if (ctu::cf::convert_copy(__p, a6, 0x8000100, kCFAllocatorDefault, v16))
    {
      v26 = __src[0];
      __src[0] = __p[0];
      *&__dst = v26;
      sub_100005978(&__dst);
    }

    v54 = __src[0];
    __src[0] = 0;
    sub_100005978(__src);
    CFDictionarySetValue(v25, @"last-expired-token", v54);
    sub_100005978(&v54);
  }

  if (!CFDictionaryGetValue(v45, @"hardware"))
  {
    value = 0;
    sub_10034EBC8(*(a1 + 96), v43);
    if (SHIBYTE(v44) < 0)
    {
      sub_100005F2C(__p, v43[0], v43[1]);
    }

    else
    {
      *__p = *v43;
      v50 = v44;
    }

    v53 = 0;
    if (SHIBYTE(v50) < 0)
    {
      sub_100005F2C(&__dst, __p[0], __p[1]);
    }

    else
    {
      __dst = *__p;
      v52 = v50;
    }

    v54 = 0;
    if (ctu::cf::convert_copy())
    {
      v27 = v53;
      v53 = v54;
      __src[0] = v27;
      sub_100005978(__src);
    }

    if (SHIBYTE(v52) < 0)
    {
      operator delete(__dst);
    }

    value = v53;
    v53 = 0;
    sub_100005978(&v53);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v44) < 0)
    {
      operator delete(v43[0]);
    }

    if (value)
    {
      CFDictionaryAddValue(v45, @"hardware", value);
    }

    sub_100005978(&value);
  }

  if (CFDictionaryGetValue(v45, @"deviceCarrierId"))
  {
    goto LABEL_48;
  }

  __src[0] = 0;
  __src[1] = 0;
  v42 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  sub_1005A6380(__p, ServiceMap);
  (**__p[0])(&__dst);
  (*(*__dst + 120))(__src);
  if (*(&__dst + 1))
  {
    sub_100004A34(*(&__dst + 1));
  }

  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  if (SHIBYTE(v42) < 0)
  {
    if (!__src[1])
    {
LABEL_84:
      operator delete(__src[0]);
      goto LABEL_48;
    }

    v31 = v45;
    sub_100005F2C(v38, __src[0], __src[1]);
LABEL_69:
    if (SHIBYTE(v39) < 0)
    {
      sub_100005F2C(__p, v38[0], v38[1]);
    }

    else
    {
      *__p = *v38;
      v50 = v39;
    }

    value = 0;
    if (SHIBYTE(v50) < 0)
    {
      sub_100005F2C(&__dst, __p[0], __p[1]);
    }

    else
    {
      __dst = *__p;
      v52 = v50;
    }

    v53 = 0;
    if (ctu::cf::convert_copy())
    {
      v33 = value;
      value = v53;
      v54 = v33;
      sub_100005978(&v54);
    }

    if (SHIBYTE(v52) < 0)
    {
      operator delete(__dst);
    }

    v34 = value;
    v40 = value;
    value = 0;
    sub_100005978(&value);
    if (SHIBYTE(v50) < 0)
    {
      operator delete(__p[0]);
    }

    CFDictionaryAddValue(v31, @"deviceCarrierId", v34);
    sub_100005978(&v40);
    if (SHIBYTE(v39) < 0)
    {
      operator delete(v38[0]);
    }

    if ((SHIBYTE(v42) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_84;
  }

  if (HIBYTE(v42))
  {
    v31 = v45;
    *v38 = *__src;
    v39 = v42;
    goto LABEL_69;
  }

LABEL_48:
  if (!theDict || !CFEqual(theDict, v45))
  {
    goto LABEL_64;
  }

  v28 = *(a1 + 104);
  v29 = theDict;
  if (*(a1 + 143) < 0)
  {
    sub_100005F2C(v35, *(a1 + 120), *(a1 + 128));
  }

  else
  {
    *v35 = *(a1 + 120);
    v36 = *(a1 + 136);
  }

  v37 = 1;
  v32 = sub_1005D39BC(v28, v29, v35, 1);
  if (v37 == 1 && SHIBYTE(v36) < 0)
  {
    operator delete(v35[0]);
  }

  if ((v32 & 1) == 0)
  {
LABEL_64:
    sub_100810310(a1, 2, v45, 1, 1);
  }

  sub_1000296E0(&v45);
  return sub_10001021C(&theDict);
}

void sub_100598208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, const void *a35, uint64_t a36, uint64_t a37, const void *a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  sub_100005978(&a38);
  if (a44 < 0)
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

  sub_1000296E0(&a35);
  sub_10001021C((v44 + 8));
  _Unwind_Resume(a1);
}

void sub_10059837C(uint64_t a1)
{
  if (*(a1 + 524))
  {
    v2 = *(a1 + 48);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v3;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sgetProvisioning call in progress - bailout", buf, 0x16u);
    }

    return;
  }

  v4 = sub_100347EC0(*(a1 + 96) + 360);
  v5 = *(a1 + 48);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = PersonalityInfo::logPrefix(**(a1 + 80));
      *buf = 136315394;
      *&buf[4] = v7;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Call Get Provisiong Data Update ================================", buf, 0x16u);
    }

    v19 = 256;
    ServiceMap = Registry::getServiceMap(*(a1 + 56));
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v20 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v20);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
LABEL_18:
        (**v16)(buf, v16, **(a1 + 80) + 24);
        (*(**buf + 440))(*buf, 0, &v19);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        *(a1 + 524) = 1;
        return;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    goto LABEL_18;
  }

  if (v6)
  {
    v18 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v18;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sRequest throttled, scheduling service refresh", buf, 0x16u);
  }

  sub_1003486A4(*(a1 + 96) + 360);
}

void sub_100598668(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005986AC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  if (!sub_10112CDBC(a2, (**(a1 + 80) + 24)))
  {
    v7 = *(a1 + 96);
    v8 = a4[1];
    v24 = *a4;
    v25 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = sub_10034BFF4(v7, v5, &v24);
    if (v25)
    {
      sub_100004A34(v25);
    }

    if (v9)
    {
      v10 = *(a1 + 48);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = PersonalityInfo::logPrefix(**(a1 + 80));
        v12 = sub_100A38E30(v5);
        *buf = 136315650;
        v27 = v11;
        v28 = 2080;
        v29 = " ";
        v30 = 2080;
        v31 = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Evaluating Get Provisiong Data Update ==(cause:%s)==============================", buf, 0x20u);
      }

      *(a1 + 524) = 0;
      if ((v9 & 0x100) != 0)
      {
        if (sub_100347D60(*(a1 + 196)) == 1)
        {
          v13 = *(*a4 + 24);
          v16 = *(v13 + 8);
          v14 = v13 + 8;
          v15 = v16;
          if (v16)
          {
            v17 = v14;
            do
            {
              if (*(v15 + 32) >= 8)
              {
                v17 = v15;
              }

              v15 = *(v15 + 8 * (*(v15 + 32) < 8));
            }

            while (v15);
            if (v17 != v14 && *(v17 + 32) <= 8)
            {
              if (*(v17 + 64) != 1 || (v18 = *(v17 + 40), v19 = *(v17 + 48), v19 == v18))
              {
                v22 = *(a1 + 48);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  v23 = PersonalityInfo::logPrefix(**(a1 + 80));
                  *buf = 136315394;
                  v27 = v23;
                  v28 = 2080;
                  v29 = " ";
                  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sNo IMS credentials attached to getProvisioning", buf, 0x16u);
                }
              }

              else
              {
                if (!*(a1 + 232))
                {
                  operator new();
                }

                if (v19 == v18)
                {
                  sub_1002030E0();
                }

                sub_10021D170(*(a1 + 232), v18);
                sub_100593BE4(a1, (a1 + 232));
                sub_1005989F8(a1);
              }
            }
          }
        }

        else
        {
          v20 = *(a1 + 48);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = PersonalityInfo::logPrefix(**(a1 + 80));
            *buf = 136315394;
            v27 = v21;
            v28 = 2080;
            v29 = " ";
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sService is not allowed - ignore", buf, 0x16u);
          }

          sub_100348350(*(a1 + 96) + 360);
        }
      }

      sub_1005903E0(a1, 0, 0);
    }
  }
}

void sub_1005989D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1005989F8(uint64_t a1)
{
  v2 = *(a1 + 232);
  if (*(v2 + 256) == 1 && *(v2 + 120) == 1)
  {
    v3 = *(a1 + 48);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(**(a1 + 80));
      v5 = *(a1 + 232);
      v6 = (v5 + 96);
      if (*(v5 + 119) < 0)
      {
        v6 = *v6;
      }

      v9 = 136315650;
      v10 = v4;
      v11 = 2080;
      v12 = " ";
      v13 = 2080;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sAssigned SIP username: %s", &v9, 0x20u);
    }

    v7 = *(a1 + 96);
    if (v7)
    {
      sub_1009FE230(v7, (*(a1 + 232) + 96));
    }
  }

  return sub_100599754(a1);
}

void sub_100598B08(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  if (!sub_10112CDBC(a2, (**(a1 + 80) + 24)))
  {
    v7 = *(a1 + 96);
    v8 = a4[1];
    v27 = *a4;
    v28 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = sub_10034BFF4(v7, v5, &v27);
    if (v28)
    {
      sub_100004A34(v28);
    }

    if (v9)
    {
      v10 = *(*a4 + 24);
      v13 = *(v10 + 8);
      v11 = v10 + 8;
      v12 = v13;
      if (!v13)
      {
        goto LABEL_14;
      }

      v14 = v11;
      do
      {
        if (*(v12 + 32) >= 8)
        {
          v14 = v12;
        }

        v12 = *(v12 + 8 * (*(v12 + 32) < 8));
      }

      while (v12);
      if (v14 != v11 && *(v14 + 32) < 9)
      {
        v17 = *(a1 + 48);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = PersonalityInfo::logPrefix(**(a1 + 80));
          v19 = sub_100A38E30(v5);
          *buf = 136315650;
          v30 = v18;
          v31 = 2080;
          v32 = " ";
          v33 = 2080;
          v34 = v19;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Evaluating Set Provisiong Data Update ==(cause:%s)==============================", buf, 0x20u);
        }

        *(a1 + 525) = 0;
        if ((v9 & 0x100) != 0)
        {
          v20 = sub_100347D60(*(a1 + 196));
          v21 = *(a1 + 48);
          v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          if (v20 == 1)
          {
            if (v22)
            {
              v23 = PersonalityInfo::logPrefix(**(a1 + 80));
              *buf = 136315394;
              v30 = v23;
              v31 = 2080;
              v32 = " ";
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%sset provisioning succeed", buf, 0x16u);
            }

            v24 = *(v14 + 40);
            v25 = *(v14 + 48);
            if (v25)
            {
              atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_100598E48(a1 + 248, v24);
            if (v25)
            {
              sub_100004A34(v25);
            }
          }

          else
          {
            if (v22)
            {
              v26 = PersonalityInfo::logPrefix(**(a1 + 80));
              *buf = 136315394;
              v30 = v26;
              v31 = 2080;
              v32 = " ";
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%sService is not allowed - ignore", buf, 0x16u);
            }

            sub_100348350(*(a1 + 96) + 360);
          }
        }

        sub_1005903E0(a1, 0, 0);
      }

      else
      {
LABEL_14:
        v15 = *(a1 + 48);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = PersonalityInfo::logPrefix(**(a1 + 80));
          *buf = 136315394;
          v30 = v16;
          v31 = 2080;
          v32 = " ";
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sset provisioning do not have iCloudVoWiFi part - keep waiting", buf, 0x16u);
        }
      }
    }
  }
}

void sub_100598E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100598E48(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 136) == 1)
  {
    sub_10012BF3C((a1 + 8), (a2 + 8));
    sub_10012BF3C((a1 + 40), (a2 + 40));
    sub_10012BF3C((a1 + 72), (a2 + 72));
    sub_10012BF3C((a1 + 104), (a2 + 104));
  }

  else
  {
    sub_1005A1BB8(a1, a2);
    *(a1 + 136) = 1;
  }

  return a1;
}

uint64_t sub_100598EC4(uint64_t a1, char *a2, char *a3)
{
  v17 = 0;
  v18 = 0;
  sub_1005DC42C(*(a1 + 104), &v17);
  if (!v17 || (v5 = sub_100007A6C(v17 + 144, a2), v6 = v5, v17 + 152 == v5) || *(v5 + 56) + 96 == sub_100007A6C(*(v5 + 56) + 88, a3))
  {
    v13 = 0x1FFFFFFFFLL;
  }

  else
  {
    v19 = 0uLL;
    v20 = 0;
    ctu::cf::assign();
    v15 = v19;
    v16 = v20;
    v7 = *(v6 + 56);
    v8 = SHIBYTE(v20);
    v9 = v19;
    if (v20 >= 0)
    {
      v10 = &v15;
    }

    else
    {
      v10 = v19;
    }

    v11 = atoi(v10);
    if (*(v7 + 9) == 1)
    {
      v12 = *(v7 + 8) << 32;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12 | v11;
    if (v8 < 0)
    {
      operator delete(v9);
    }
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  return v13;
}

void sub_100598FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10059900C(uint64_t a1, CFDictionaryRef theDict, const __CFDictionary *a3)
{
  if (!CFDictionaryGetValue(theDict, @"primarySubscriberId"))
  {
    v24 = *(a1 + 48);
    result = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v26 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v26;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v27 = "#I %s%sNo subscriber ID, secondary entitlement contoller cannot be provisioned";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v27, buf, 0x16u);
    return 0;
  }

  if (CFDictionaryGetValue(theDict, @"masterToken"))
  {
    v6 = *(a1 + 48);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    v7 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v8 = "#I %s%sMaster service token found";
    goto LABEL_5;
  }

  if (!a3 || !CFDictionaryGetValue(a3, @"token"))
  {
    v24 = *(a1 + 48);
    result = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v29 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v29;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v27 = "#I %s%sNo service-token found for the device, secondary entitlement controller cannot be provisioned";
    goto LABEL_29;
  }

  v6 = *(a1 + 48);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v28 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v28;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    v8 = "#I %s%sService token found";
LABEL_5:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0x16u);
  }

LABEL_6:
  Value = CFDictionaryGetValue(theDict, @"CBRoot");
  if (!Value)
  {
    return 0;
  }

  sub_100599540(a1, Value, theDict);
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  __p = *buf;
  v32 = buf[23];
  CarrierEntitlements::setSubscriberId();
  if (v32 < 0)
  {
    operator delete(__p);
  }

  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  __pa = *buf;
  v33 = buf[23];
  buf[0] = 0;
  buf[8] = 0;
  CarrierEntitlements::setServiceToken();
  if (v33 < 0)
  {
    operator delete(__pa);
  }

  v10 = *(a1 + 48);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sfCBRoot (basic) ready ->indicate", buf, 0x16u);
  }

  sub_100591FC4(a1);
  v12 = *(a1 + 48);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = PersonalityInfo::logPrefix(**(a1 + 80));
    *buf = 136315394;
    *&buf[4] = v13;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sfCBRoot ready ->enable personality", buf, 0x16u);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v15 = ServiceMap;
  if (v16 < 0)
  {
    v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
    v18 = 5381;
    do
    {
      v16 = v18;
      v19 = *v17++;
      v18 = (33 * v18) ^ v19;
    }

    while (v19);
  }

  std::mutex::lock(ServiceMap);
  *buf = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, buf);
  if (!v20)
  {
    v22 = 0;
    goto LABEL_32;
  }

  v22 = v20[3];
  v21 = v20[4];
  if (!v21)
  {
LABEL_32:
    std::mutex::unlock(v15);
    v21 = 0;
    v23 = 1;
    goto LABEL_33;
  }

  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v15);
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v21);
  v23 = 0;
LABEL_33:
  (*(*v22 + 64))(v22, **(a1 + 80) + 24, 1);
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  return 1;
}

void sub_1005994DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100599540(uint64_t a1, const __CFDictionary *cf, CFDictionaryRef theDict)
{
  v19 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = CFDictionaryGetValue(theDict, @"imsCommonCredentials");
  v7 = v6;
  if (v6)
  {
    v8 = CFGetTypeID(v6);
    if (v8 == CFDictionaryGetTypeID())
    {
      v18 = 0;
      memset(v17, 0, sizeof(v17));
      sub_1006113E8(v17, v7);
      v9 = CFDictionaryGetValue(cf, @"CarrierEntitlements");
      v10 = v9;
      if (v9)
      {
        v11 = CFGetTypeID(v9);
        if (v11 == CFDictionaryGetTypeID())
        {
          value = 0;
          sub_10059BA78(v10, v17, &value);
          MutableCopy = CFDictionaryCreateMutableCopy(0, 0, cf);
          CFDictionarySetValue(MutableCopy, @"CarrierEntitlements", value);
          sub_100010180(&v14, &MutableCopy);
          v12 = v19;
          v19 = v14;
          v20 = v12;
          v14 = 0;
          sub_10001021C(&v20);
          sub_10001021C(&v14);
          sub_1000296E0(&MutableCopy);
          sub_10001021C(&value);
        }
      }

      sub_100220C2C(v17);
    }
  }

  std::mutex::lock((a1 + 432));
  sub_10059B8C8(a1, v19);
  std::mutex::unlock((a1 + 432));
  return sub_10001021C(&v19);
}

void sub_1005996EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v9 = va_arg(va2, const void *);
  sub_1000296E0(va);
  sub_10001021C(va1);
  sub_100220C2C(va2);
  sub_10001021C((v5 - 64));
  _Unwind_Resume(a1);
}

const void **sub_100599754(uint64_t a1)
{
  theDict[0] = 0;
  theDict[1] = 0;
  sub_1005954E4(a1, theDict);
  if (!theDict[0])
  {
    return sub_10001021C(theDict);
  }

  v20 = 0;
  v21 = 0uLL;
  __p = 0;
  v18 = 0;
  v19 = 0;
  CTGetRootVersionString();
  Value = CFDictionaryGetValue(theDict[0], @"CoreTelephonyVersion");
  v3 = Value;
  if (!Value)
  {
    goto LABEL_6;
  }

  v4 = CFGetTypeID(Value);
  if (v4 != CFStringGetTypeID())
  {
    v3 = 0;
LABEL_6:
    v5 = 0;
    v6 = 0;
    goto LABEL_7;
  }

  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *(&v21 + 7) = *&buf[15];
  v3 = *buf;
  v5 = *&buf[8];
  v6 = buf[23];
  v20 = *buf;
  *&v21 = *&buf[8];
  HIBYTE(v21) = buf[23];
LABEL_7:
  v7 = v6;
  if ((v6 & 0x80u) == 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  v9 = HIBYTE(v19);
  v10 = HIBYTE(v19);
  if (v19 < 0)
  {
    v9 = v18;
  }

  if (v8 != v9 || (v7 >= 0 ? (v11 = &v20) : (v11 = v3), memcmp(v11, &__p, v8)))
  {
    v12 = *(a1 + 48);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PersonalityInfo::logPrefix(**(a1 + 80));
      v14 = &v20;
      if (v7 < 0)
      {
        v14 = v3;
      }

      p_p = &__p;
      if (v19 < 0)
      {
        p_p = __p;
      }

      *buf = 136315906;
      *&buf[4] = v13;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v24 = v14;
      v25 = 2080;
      v26 = p_p;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sCT version mismatch. primary: %s, secondary: %s", buf, 0x2Au);
      v10 = HIBYTE(v19);
    }
  }

  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }

  return sub_10001021C(theDict);
}

void sub_100599968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_10001021C(&a18);
  _Unwind_Resume(a1);
}

void sub_1005999D0(const void **__return_ptr a1@<X8>, CFDictionaryRef theDict@<X1>, uint64_t a3@<X0>)
{
  *a1 = 0;
  Value = CFDictionaryGetValue(theDict, @"cfgSlots");
  v7 = Value;
  if (Value)
  {
    Count = CFArrayGetCount(Value);
    v9 = Count;
    if (Count)
    {
      v10 = *(a3 + 48);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = PersonalityInfo::logPrefix(**(a3 + 80));
        v12 = (a3 + 120);
        if (*(a3 + 143) < 0)
        {
          v12 = *v12;
        }

        *buf = 136315906;
        *&buf[4] = v11;
        v72 = 2080;
        v73 = " ";
        v74 = 2080;
        v75 = v12;
        v76 = 1024;
        v77 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sAccount %s have %d data slot(s)", buf, 0x26u);
      }

      v67 = 0;
      theDicta = 0;
      v13 = (a3 + 120);
      sub_1005D67F8(*(a3 + 104), 1, (a3 + 120), 0, &v67);
      v14 = theDicta;
      if (theDicta)
      {
        v15 = *(a3 + 104);
        if (*(a3 + 143) < 0)
        {
          sub_100005F2C(__p, *(a3 + 120), *(a3 + 128));
        }

        else
        {
          *__p = *v13;
          v65 = *(a3 + 136);
        }

        v66 = 1;
        v22 = sub_1005D39BC(v15, v14, __p, 0);
        if (v66 == 1 && SHIBYTE(v65) < 0)
        {
          operator delete(__p[0]);
        }

        if (v22)
        {
          v23 = CFDictionaryGetValue(theDicta, @"assignments");
          v24 = v23;
          if (v23)
          {
            v25 = CFDictionaryGetCount(v23);
            if (v25)
            {
              keys = 0;
              v62 = 0;
              v63 = 0;
              sub_100222418(&keys, v25);
              values = 0;
              v59 = 0;
              v60 = 0;
              sub_10007D780(&values, v25);
              CFDictionaryGetKeysAndValues(v24, keys, values);
              if (v25 >= 1)
              {
                v26 = 0;
                while (1)
                {
                  v27 = values[v26];
                  if (v27)
                  {
                    v28 = sub_1008100FC(a3);
                    if (CFEqual(v27, v28))
                    {
                      break;
                    }
                  }

                  if (v25 == ++v26)
                  {
                    goto LABEL_78;
                  }
                }

                if (!sub_10059A484(a3))
                {
                  v31 = CFDictionaryGetValue(theDict, @"primaryDeviceId");
                  if (v31)
                  {
                    (*(**(a3 + 104) + 24))(*(a3 + 104), v31, **(a3 + 80) + 24);
                    *(a3 + 527) = 1;
                  }

                  else
                  {
                    v32 = *(a3 + 48);
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                    {
                      v33 = PersonalityInfo::logPrefix(**(a3 + 80));
                      v34 = CSIBOOLAsString(theDict != 0);
                      *buf = 136315650;
                      *&buf[4] = v33;
                      v72 = 2080;
                      v73 = " ";
                      v74 = 2080;
                      v75 = v34;
                      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I %s%sNo primary deviceId. Valid mainCfg: %s", buf, 0x20u);
                    }
                  }
                }

                if (*(a3 + 560))
                {
                  for (i = 0; i < CFArrayGetCount(v7); ++i)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
                    if (ValueAtIndex)
                    {
                      v57 = 0;
                      v37 = *(a3 + 560);
                      v54 = 0;
                      v55 = 0;
                      v53 = 0;
                      sub_100034C50(&v53, *v37, *(v37 + 8), *(v37 + 8) - *v37);
                      sub_1009F8218(ValueAtIndex, &v53, &cf);
                      *&v69 = cf;
                      if (cf)
                      {
                        CFRetain(cf);
                      }

                      v51[0] = 0;
                      *buf = 0;
                      sub_100010180(buf, &v69);
                      if (*buf)
                      {
                        sub_1000676D4(v51, buf);
                      }

                      sub_10001021C(buf);
                      v57 = v51[0];
                      v51[0] = 0;
                      sub_10001021C(v51);
                      sub_10000A1EC(&v69);
                      sub_10000A1EC(&cf);
                      if (v53)
                      {
                        v54 = v53;
                        operator delete(v53);
                      }

                      if (v57)
                      {
                        v38 = CFDictionaryGetValue(v57, @"slotId");
                        if (v38)
                        {
                          if (CFEqual(keys[v26], v38))
                          {
                            sub_1000676D4(a1, &v57);
                            v43 = *(a3 + 48);
                            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                            {
                              v44 = PersonalityInfo::logPrefix(**(a3 + 80));
                              v69 = 0uLL;
                              v70 = 0;
                              ctu::cf::assign();
                              *v51 = v69;
                              v52 = v70;
                              v45 = v69;
                              if (v70 >= 0)
                              {
                                v45 = v51;
                              }

                              *buf = 136315650;
                              *&buf[4] = v44;
                              v72 = 2080;
                              v73 = " ";
                              v74 = 2080;
                              v75 = v45;
                              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I %s%sMy slot %s", buf, 0x20u);
                              if (SHIBYTE(v52) < 0)
                              {
                                operator delete(v51[0]);
                              }
                            }

                            sub_10001021C(&v57);
                            break;
                          }
                        }
                      }

                      sub_10001021C(&v57);
                    }

                    else
                    {
                      v39 = *(a3 + 48);
                      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                      {
                        v40 = PersonalityInfo::logPrefix(**(a3 + 80));
                        *buf = 136315650;
                        *&buf[4] = v40;
                        v72 = 2080;
                        v73 = " ";
                        v74 = 1024;
                        LODWORD(v75) = i;
                        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%sIncorrect slot %d data format", buf, 0x1Cu);
                      }
                    }
                  }

                  if (!*a1)
                  {
                    v46 = *(a3 + 48);
                    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
                    {
                      v47 = PersonalityInfo::logPrefix(**(a3 + 80));
                      *buf = 136315394;
                      *&buf[4] = v47;
                      v72 = 2080;
                      v73 = " ";
                      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I %s%sIncorrect individual key given, request new one?", buf, 0x16u);
                    }

                    v48 = CFDictionaryGetValue(theDict, @"primaryDeviceId");
                    if (v48)
                    {
                      (*(**(a3 + 104) + 24))(*(a3 + 104), v48, **(a3 + 80) + 24);
                      *(a3 + 527) = 1;
                    }
                  }
                }

                else
                {
                  v41 = *(a3 + 48);
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                  {
                    v42 = PersonalityInfo::logPrefix(**(a3 + 80));
                    *buf = 136315394;
                    *&buf[4] = v42;
                    v72 = 2080;
                    v73 = " ";
                    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I %s%sNo individual secret key given - bailout", buf, 0x16u);
                  }
                }

                if (v25 == v26)
                {
LABEL_78:
                  v49 = *(a3 + 48);
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                  {
                    v50 = PersonalityInfo::logPrefix(**(a3 + 80));
                    *buf = 136315394;
                    *&buf[4] = v50;
                    v72 = 2080;
                    v73 = " ";
                    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I %s%sImpossible! No data slot for us - bailout", buf, 0x16u);
                  }
                }
              }

              if (values)
              {
                v59 = values;
                operator delete(values);
              }

              if (keys)
              {
                v62 = keys;
                operator delete(keys);
              }
            }

            goto LABEL_40;
          }

          v19 = *(a3 + 48);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v30 = PersonalityInfo::logPrefix(**(a3 + 80));
            if (*(a3 + 143) < 0)
            {
              v13 = *v13;
            }

            *buf = 136315650;
            *&buf[4] = v30;
            v72 = 2080;
            v73 = " ";
            v74 = 2080;
            v75 = v13;
            v21 = "#I %s%sImpossible! No slots in assigments for account %s in storage";
LABEL_39:
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v21, buf, 0x20u);
          }
        }

        else
        {
          v19 = *(a3 + 48);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v29 = PersonalityInfo::logPrefix(**(a3 + 80));
            if (*(a3 + 143) < 0)
            {
              v13 = *v13;
            }

            *buf = 136315650;
            *&buf[4] = v29;
            v72 = 2080;
            v73 = " ";
            v74 = 2080;
            v75 = v13;
            v21 = "#I %s%sImpossible! Schema version mismatch for account %s";
            goto LABEL_39;
          }
        }
      }

      else
      {
        v19 = *(a3 + 48);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = PersonalityInfo::logPrefix(**(a3 + 80));
          if (*(a3 + 143) < 0)
          {
            v13 = *v13;
          }

          *buf = 136315650;
          *&buf[4] = v20;
          v72 = 2080;
          v73 = " ";
          v74 = 2080;
          v75 = v13;
          v21 = "#I %s%sImpossible! No assigments for account %s in storage";
          goto LABEL_39;
        }
      }

LABEL_40:
      sub_10001021C(&theDicta);
      return;
    }
  }

  v16 = *(a3 + 48);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = PersonalityInfo::logPrefix(**(a3 + 80));
    v18 = (a3 + 120);
    if (*(a3 + 143) < 0)
    {
      v18 = *v18;
    }

    *buf = 136315650;
    *&buf[4] = v17;
    v72 = 2080;
    v73 = " ";
    v74 = 2080;
    v75 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sAccount %s do not have data slots - bailout", buf, 0x20u);
  }
}

void sub_10059A340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, int a18, const void *a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, char a34, const void *a35)
{
  if (*(v36 - 145) < 0)
  {
    operator delete(*(v36 - 168));
  }

  sub_10001021C(&a19);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  sub_10001021C(&a35);
  sub_10001021C(v35);
  _Unwind_Resume(a1);
}

BOOL sub_10059A484(uint64_t a1)
{
  if (*(a1 + 560))
  {
    return 1;
  }

  v14 = 0;
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
  *buf = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, buf);
  if (!v9)
  {
    v11 = 0;
    goto LABEL_10;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
LABEL_10:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
LABEL_11:
  (*(*v11 + 24))(&v13, v11, **(a1 + 80) + 24, @"individualKey", kPhoneServicesWalletDomain, 0, 4);
  sub_1001B1A54(&v14, &v13);
  sub_10000A1EC(&v13);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  if (v14)
  {
    operator new();
  }

  sub_10002D760(&v14);
  return *(a1 + 560) != 0;
}

uint64_t sub_10059A7A0(uint64_t a1, uint64_t a2)
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
  *v17 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, v17);
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
  (*(*v12 + 16))(v12, **(a1 + 80) + 24, @"individualKey", a2, kPhoneServicesWalletDomain, 0, 4, 0);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v14 = *(a1 + 48);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 80));
    *v17 = 136315394;
    *&v17[4] = v15;
    *&v17[12] = 2080;
    *&v17[14] = " ";
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%ssaved individual key", v17, 0x16u);
  }

  *v17 = off_101E61F80;
  *&v17[8] = a1;
  v18 = v17;
  logger::CFTypeRefLogger();
  return sub_100007E44(v17);
}

BOOL sub_10059A9F0(uint64_t a1, uint64_t a2)
{
  if (!a2 || !sub_10059A484(a1) || !*(a1 + 560))
  {
    return 0;
  }

  ctu::cf::assign();
  v3 = *(a1 + 560);
  return *(v3 + 8) == *v3 && memcmp(0, *v3, 0) == 0;
}

void sub_10059AA94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10059AAB0(uint64_t a1, uint64_t a2)
{
  sub_10012BF3C(a1, a2);
  sub_10012BF3C((a1 + 32), (a2 + 32));
  sub_10012BF3C((a1 + 64), (a2 + 64));
  sub_10012BF3C((a1 + 96), (a2 + 96));
  sub_10012BF3C((a1 + 128), (a2 + 128));
  sub_10012BF3C((a1 + 160), (a2 + 160));
  sub_10012BF3C((a1 + 192), (a2 + 192));
  sub_10012BF3C((a1 + 224), (a2 + 224));
  return a1;
}

void sub_10059AB30(const void **a3@<X8>)
{
  *a3 = 0;
  v3 = 0;
  v4 = 0;
  sub_1009A78E4();
}

void sub_10059AECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  sub_100005978(&a13);
  if (a15)
  {
    sub_100004A34(a15);
  }

  sub_100005978(v22);
  _Unwind_Resume(a1);
}

void sub_10059AF40(uint64_t *__return_ptr a1@<X8>, CFDictionaryRef theDict@<X1>)
{
  *a1 = 0;
  Value = CFDictionaryGetValue(theDict, @"ePdgCACert");
  v4 = Value;
  if (Value)
  {
    v5 = CFGetTypeID(Value);
    if (v5 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v4);
      v7 = 0;
      v8 = 0;
      sub_10000501C(__p, BytePtr);
      sub_1009A78E4();
    }
  }
}

void sub_10059B1C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  sub_100005978(v22);
  _Unwind_Resume(a1);
}

const void **sub_10059B230@<X0>(uint64_t *__return_ptr a1@<X8>, CFDictionaryRef theDict@<X1>, uint64_t a3@<X0>, const void *a4@<X2>, const void *a5@<X3>, uint64_t a6@<X4>)
{
  theDicta = 0;
  v11 = CFDictionaryGetValue(theDict, @"CBRoot");
  if (v11)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v11);
    v13 = theDicta;
    theDicta = MutableCopy;
    *buf = v13;
    sub_1000296E0(buf);
    v14 = CFDictionaryGetValue(v11, @"CarrierEntitlements");
    if (v14)
    {
      value = 0;
      sub_10059BA78(v14, a6, &value);
      if (value)
      {
        CFDictionarySetValue(theDicta, @"CarrierEntitlements", value);
      }

      else
      {
        v17 = *(a3 + 48);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = PersonalityInfo::logPrefix(**(a3 + 80));
          v40 = 0uLL;
          v41 = 0;
          ctu::cf::assign();
          *__p = v40;
          v37 = v41;
          v19 = v40;
          if (v41 >= 0)
          {
            v19 = __p;
          }

          *buf = 136315650;
          *&buf[4] = v18;
          v43 = 2080;
          v44 = " ";
          v45 = 2080;
          v46 = v19;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sfailed to create %s override ", buf, 0x20u);
          if (SHIBYTE(v37) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      sub_10001021C(&value);
    }

    v20 = kIWLANSettingsKey;
    v21 = CFDictionaryGetValue(v11, kIWLANSettingsKey);
    if (v21)
    {
      value = 0;
      sub_10059BCD4(&value, v21, a3, a4, a5, a6);
      if (value)
      {
        CFDictionarySetValue(theDicta, v20, value);
      }

      else
      {
        v25 = *(a3 + 48);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = PersonalityInfo::logPrefix(**(a3 + 80));
          v40 = 0uLL;
          v41 = 0;
          ctu::cf::assign();
          *__p = v40;
          v37 = v41;
          v27 = v40;
          if (v41 >= 0)
          {
            v27 = __p;
          }

          *buf = 136315650;
          *&buf[4] = v26;
          v43 = 2080;
          v44 = " ";
          v45 = 2080;
          v46 = v27;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%sfailed to create %s override ", buf, 0x20u);
          if (SHIBYTE(v37) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      sub_10001021C(&value);
    }

    else
    {
      v22 = *(a3 + 48);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = PersonalityInfo::logPrefix(**(a3 + 80));
        v40 = 0uLL;
        v41 = 0;
        ctu::cf::assign();
        *__p = v40;
        v37 = v41;
        v24 = v40;
        if (v41 >= 0)
        {
          v24 = __p;
        }

        *buf = 136315650;
        *&buf[4] = v23;
        v43 = 2080;
        v44 = " ";
        v45 = 2080;
        v46 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%smissing %s in CB", buf, 0x20u);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    v28 = CFDictionaryGetValue(v11, @"IMSConfig");
    if (v28)
    {
      value = 0;
      sub_10059CAFC(a3, v28, &value);
      if (value)
      {
        CFDictionarySetValue(theDicta, @"IMSConfig", value);
      }

      else
      {
        v32 = *(a3 + 48);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = PersonalityInfo::logPrefix(**(a3 + 80));
          v40 = 0uLL;
          v41 = 0;
          ctu::cf::assign();
          *__p = v40;
          v37 = v41;
          v34 = __p;
          if (v41 < 0)
          {
            v34 = v40;
          }

          *buf = 136315650;
          *&buf[4] = v33;
          v43 = 2080;
          v44 = " ";
          v45 = 2080;
          v46 = v34;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I %s%sfailed to create %s override", buf, 0x20u);
          if (SHIBYTE(v37) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      sub_10001021C(&value);
    }

    else
    {
      v29 = *(a3 + 48);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = PersonalityInfo::logPrefix(**(a3 + 80));
        v40 = 0uLL;
        v41 = 0;
        ctu::cf::assign();
        *__p = v40;
        v37 = v41;
        v31 = __p;
        if (v41 < 0)
        {
          v31 = v40;
        }

        *buf = 136315650;
        *&buf[4] = v30;
        v43 = 2080;
        v44 = " ";
        v45 = 2080;
        v46 = v31;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s%smissing %s in CB", buf, 0x20u);
        if (SHIBYTE(v37) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  else
  {
    v15 = *(a3 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = PersonalityInfo::logPrefix(**(a3 + 80));
      *buf = 136315394;
      *&buf[4] = v16;
      v43 = 2080;
      v44 = " ";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%smissing CB in icloud - bailout", buf, 0x16u);
    }
  }

  sub_100010180(a1, &theDicta);
  return sub_1000296E0(&theDicta);
}

void sub_10059B82C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, const void *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a12);
  sub_1000296E0(&a13);
  _Unwind_Resume(a1);
}

const void **sub_10059B8C8(uint64_t a1, CFDictionaryRef theDict)
{
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  v3 = *(a1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = PersonalityInfo::logPrefix(**(a1 + 80));
    ctu::cf_to_xpc(MutableCopy, v5);
    xpc::object::to_string(__p, &object);
    if (v11 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = v4;
    v14 = 2080;
    v15 = " ";
    v16 = 2080;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sSetup basic carrier bundle dictionary:\n%s", buf, 0x20u);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(object);
  }

  sub_100010180(__p, &MutableCopy);
  v7 = (a1 + 512);
  if ((a1 + 512) != __p)
  {
    *buf = *v7;
    *v7 = __p[0];
    __p[0] = 0;
    sub_10001021C(buf);
  }

  sub_10001021C(__p);
  return sub_1000296E0(&MutableCopy);
}

void sub_10059BA38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10059BA78@<X0>(const void *a1@<X1>, uint64_t a2@<X2>, void **a3@<X8>)
{
  *a3 = 0;
  result = sub_1000101E4(a3, a1);
  if (*(a2 + 216) == 1)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a1);
    v13 = MutableCopy;
    if (*(a2 + 215) < 0)
    {
      sub_100005F2C(v10, *(a2 + 192), *(a2 + 200));
    }

    else
    {
      *v10 = *(a2 + 192);
      v11 = *(a2 + 208);
    }

    if (SHIBYTE(v11) < 0)
    {
      sub_100005F2C(__dst, v10[0], v10[1]);
    }

    else
    {
      *__dst = *v10;
      v16 = v11;
    }

    v14 = 0;
    if (SHIBYTE(v16) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v18 = v16;
    }

    v19 = 0;
    if (ctu::cf::convert_copy())
    {
      v8 = v14;
      v14 = v19;
      v20 = v8;
      sub_100005978(&v20);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = v14;
    v12 = v14;
    v14 = 0;
    sub_100005978(&v14);
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__dst[0]);
    }

    CFDictionarySetValue(MutableCopy, @"ServerAddress", v9);
    sub_100005978(&v12);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }

    sub_100010180(__dst, &v13);
    if (__dst != a3)
    {
      __p[0] = *a3;
      *a3 = __dst[0];
      __dst[0] = 0;
      sub_10001021C(__p);
    }

    sub_10001021C(__dst);
    return sub_1000296E0(&v13);
  }

  return result;
}

void sub_10059BC4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
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

  sub_1000296E0(&a17);
  sub_10001021C(v31);
  _Unwind_Resume(a1);
}

const void **sub_10059BCD4@<X0>(uint64_t *__return_ptr a1@<X8>, CFDictionaryRef theDict@<X1>, uint64_t a3@<X0>, const void *a4@<X2>, const void *a5@<X3>, uint64_t a6@<X4>)
{
  MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
  v12 = CFDictionaryGetValue(MutableCopy, @"IKE");
  v74 = 0;
  if (v12)
  {
    Mutable = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, v12);
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v73 = 0;
  v74 = Mutable;
  if (a4)
  {
    *buf = a4;
    sub_10021D11C(&v73, buf);
    if (v73)
    {
      goto LABEL_25;
    }
  }

  v14 = *(a3 + 232);
  if (*(v14 + 320) != 1)
  {
    goto LABEL_35;
  }

  if (*(v14 + 319) < 0)
  {
    sub_100005F2C(__p, *(v14 + 296), *(v14 + 304));
  }

  else
  {
    v15 = v14 + 296;
    *__p = *v15;
    v71 = *(v15 + 16);
  }

  if (SHIBYTE(v71) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v78 = v71;
  }

  v76 = 0;
  if (SHIBYTE(v78) < 0)
  {
    sub_100005F2C(buf, __dst, *(&__dst + 1));
  }

  else
  {
    *buf = __dst;
    *&buf[16] = v78;
  }

  v79 = 0;
  if (ctu::cf::convert_copy())
  {
    v16 = v76;
    v76 = v79;
    v80 = v16;
    sub_100005978(&v80);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v72 = v76;
  v76 = 0;
  sub_100005978(&v76);
  if (SHIBYTE(v78) < 0)
  {
    operator delete(__dst);
  }

  v17 = v72;
  *buf = v73;
  v72 = 0;
  v73 = v17;
  sub_100005978(buf);
  sub_100005978(&v72);
  if (SHIBYTE(v71) < 0)
  {
    operator delete(__p[0]);
  }

  if (v73)
  {
LABEL_25:
    v18 = CFDictionaryGetValue(v74, @"LocalIdentifier");
    v19 = v18;
    if (v18)
    {
      v20 = CFGetTypeID(v18);
      if (v20 == CFStringGetTypeID())
      {
        *&__dst = 0;
        v21 = CFStringCreateMutableCopy(0, 0, v19);
        *&__dst = v21;
        v69 = v21;
        if (v21)
        {
          CFRetain(v21);
        }

        v64 = _NSConcreteStackBlock;
        v65 = 1174405120;
        v66 = sub_10059DC04;
        v67 = &unk_101E61838;
        v68 = v73;
        if (v73)
        {
          CFRetain(v73);
        }

        v22 = DataUtils::replaceStringHolder();
        sub_100305E28(&v69);
        if (v22)
        {
          sub_100060DE8(&v80, &__dst);
          v23 = v73;
          v73 = v80;
          v80 = 0;
          *buf = v23;
          sub_100005978(buf);
          sub_100005978(&v80);
        }

        sub_100005978(&v68);
        sub_100305E28(&__dst);
      }
    }

    CFDictionarySetValue(v74, @"LocalIdentifier", v73);
  }

  else
  {
LABEL_35:
    v24 = *(a3 + 48);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = PersonalityInfo::logPrefix(**(a3 + 80));
      *buf = 136315394;
      *&buf[4] = v25;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%sNo LocalIdentifier created", buf, 0x16u);
    }
  }

  v26 = *(a3 + 232);
  if (*(v26 + 88) != 1)
  {
    goto LABEL_54;
  }

  v27 = v74;
  if (*(v26 + 87) < 0)
  {
    sub_100005F2C(v62, *(v26 + 64), *(v26 + 72));
  }

  else
  {
    *v62 = *(v26 + 64);
    v63 = *(v26 + 80);
  }

  if (SHIBYTE(v63) < 0)
  {
    sub_100005F2C(&__dst, v62[0], v62[1]);
  }

  else
  {
    __dst = *v62;
    v78 = v63;
  }

  v76 = 0;
  if (SHIBYTE(v78) < 0)
  {
    sub_100005F2C(buf, __dst, *(&__dst + 1));
  }

  else
  {
    *buf = __dst;
    *&buf[16] = v78;
  }

  v79 = 0;
  if (ctu::cf::convert_copy())
  {
    v28 = v76;
    v76 = v79;
    v80 = v28;
    sub_100005978(&v80);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v72 = v76;
  v76 = 0;
  sub_100005978(&v76);
  if (SHIBYTE(v78) < 0)
  {
    operator delete(__dst);
  }

  CFDictionarySetValue(v27, @"RemoteIdentifier", v72);
  sub_100005978(&v72);
  if ((SHIBYTE(v63) & 0x80000000) == 0)
  {
LABEL_54:
    if (!a4)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  operator delete(v62[0]);
  if (a4)
  {
LABEL_55:
    CFDictionarySetValue(v74, @"LocalCertificate", a4);
  }

LABEL_56:
  v29 = *(a3 + 232);
  if (*(v29 + 352) == 1)
  {
    v30 = v74;
    if (*(v29 + 351) < 0)
    {
      sub_100005F2C(v60, *(v29 + 328), *(v29 + 336));
    }

    else
    {
      v31 = v29 + 328;
      *v60 = *v31;
      v61 = *(v31 + 16);
    }

    if (SHIBYTE(v61) < 0)
    {
      sub_100005F2C(&__dst, v60[0], v60[1]);
    }

    else
    {
      __dst = *v60;
      v78 = v61;
    }

    v76 = 0;
    if (SHIBYTE(v78) < 0)
    {
      sub_100005F2C(buf, __dst, *(&__dst + 1));
    }

    else
    {
      *buf = __dst;
      *&buf[16] = v78;
    }

    v79 = 0;
    if (ctu::cf::convert_copy())
    {
      v32 = v76;
      v76 = v79;
      v80 = v32;
      sub_100005978(&v80);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v72 = v76;
    v76 = 0;
    sub_100005978(&v76);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(__dst);
    }

    CFDictionarySetValue(v30, @"Username", v72);
    sub_100005978(&v72);
    if (SHIBYTE(v61) < 0)
    {
      operator delete(v60[0]);
    }

    v29 = *(a3 + 232);
  }

  if (*(v29 + 384) != 1)
  {
    goto LABEL_94;
  }

  v33 = v74;
  if (*(v29 + 383) < 0)
  {
    sub_100005F2C(v58, *(v29 + 360), *(v29 + 368));
  }

  else
  {
    v34 = v29 + 360;
    *v58 = *v34;
    v59 = *(v34 + 16);
  }

  if (SHIBYTE(v59) < 0)
  {
    sub_100005F2C(&__dst, v58[0], v58[1]);
  }

  else
  {
    __dst = *v58;
    v78 = v59;
  }

  v76 = 0;
  if (SHIBYTE(v78) < 0)
  {
    sub_100005F2C(buf, __dst, *(&__dst + 1));
  }

  else
  {
    *buf = __dst;
    *&buf[16] = v78;
  }

  v79 = 0;
  if (ctu::cf::convert_copy())
  {
    v35 = v76;
    v76 = v79;
    v80 = v35;
    sub_100005978(&v80);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v72 = v76;
  v76 = 0;
  sub_100005978(&v76);
  if (SHIBYTE(v78) < 0)
  {
    operator delete(__dst);
  }

  CFDictionarySetValue(v33, @"Password", v72);
  sub_100005978(&v72);
  if ((SHIBYTE(v59) & 0x80000000) == 0)
  {
LABEL_94:
    if (!a5)
    {
      goto LABEL_96;
    }

    goto LABEL_95;
  }

  operator delete(v58[0]);
  if (a5)
  {
LABEL_95:
    CFDictionarySetValue(v74, @"RemoteCertificateAuthorityName", a5);
  }

LABEL_96:
  if (*(a6 + 184) == 1)
  {
    v36 = CFDictionaryGetValue(theDict, @"DoNotUseEPDGFromEntitlements");
    v37 = v36;
    buf[0] = 0;
    if (v36)
    {
      v38 = CFGetTypeID(v36);
      if (v38 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(buf, v37, v39);
      }
    }

    if ((buf[0] & 1) == 0)
    {
      v72 = 0;
      if (*(a6 + 183) < 0)
      {
        sub_100005F2C(v56, *(a6 + 160), *(a6 + 168));
      }

      else
      {
        *v56 = *(a6 + 160);
        v57 = *(a6 + 176);
      }

      if (SHIBYTE(v57) < 0)
      {
        sub_100005F2C(&__dst, v56[0], v56[1]);
      }

      else
      {
        __dst = *v56;
        v78 = v57;
      }

      v76 = 0;
      if (SHIBYTE(v78) < 0)
      {
        sub_100005F2C(buf, __dst, *(&__dst + 1));
      }

      else
      {
        *buf = __dst;
        *&buf[16] = v78;
      }

      v79 = 0;
      if (ctu::cf::convert_copy())
      {
        v40 = v76;
        v76 = v79;
        v80 = v40;
        sub_100005978(&v80);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v72 = v76;
      v76 = 0;
      sub_100005978(&v76);
      if (SHIBYTE(v78) < 0)
      {
        operator delete(__dst);
      }

      if (SHIBYTE(v57) < 0)
      {
        operator delete(v56[0]);
      }

      CFDictionarySetValue(v74, @"RemoteAddress", v72);
      CFDictionarySetValue(v74, @"RemoteCertificateHostname", v72);
      sub_100005978(&v72);
    }
  }

  if (*(a6 + 120) == 1)
  {
    v41 = CFDictionaryGetValue(v74, @"Proposals");
    v42 = v41;
    if (v41)
    {
      v43 = CFGetTypeID(v41);
      if (v43 == CFArrayGetTypeID())
      {
        v44 = CFArrayCreateMutableCopy(0, 0, v42);
        v45 = 0;
        v72 = v44;
        while (v45 < CFArrayGetCount(v44))
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v72, v45);
          v47 = ValueAtIndex;
          if (ValueAtIndex)
          {
            v48 = CFGetTypeID(ValueAtIndex);
            if (v48 == CFDictionaryGetTypeID())
            {
              v55 = 0;
              v49 = CFDictionaryCreateMutableCopy(0, 0, v47);
              v55 = v49;
              if (*(a6 + 119) < 0)
              {
                sub_100005F2C(v52, *(a6 + 96), *(a6 + 104));
              }

              else
              {
                *v52 = *(a6 + 96);
                v53 = *(a6 + 112);
              }

              if (SHIBYTE(v53) < 0)
              {
                sub_100005F2C(&__dst, v52[0], v52[1]);
              }

              else
              {
                __dst = *v52;
                v78 = v53;
              }

              v76 = 0;
              if (SHIBYTE(v78) < 0)
              {
                sub_100005F2C(buf, __dst, *(&__dst + 1));
              }

              else
              {
                *buf = __dst;
                *&buf[16] = v78;
              }

              v79 = 0;
              if (ctu::cf::convert_copy())
              {
                v50 = v76;
                v76 = v79;
                v80 = v50;
                sub_100005978(&v80);
              }

              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              value = v76;
              v76 = 0;
              sub_100005978(&v76);
              if (SHIBYTE(v78) < 0)
              {
                operator delete(__dst);
              }

              CFDictionarySetValue(v49, @"EAPMethod", value);
              sub_100005978(&value);
              if (SHIBYTE(v53) < 0)
              {
                operator delete(v52[0]);
              }

              CFArraySetValueAtIndex(v72, v45, v55);
              sub_1000296E0(&v55);
            }
          }

          ++v45;
          v44 = v72;
        }

        CFDictionarySetValue(v74, @"Proposals", v72);
        sub_1000279DC(&v72);
      }
    }
  }

  CFDictionarySetValue(MutableCopy, @"IKE", v74);
  sub_100010180(a1, &MutableCopy);
  sub_100005978(&v73);
  sub_1000296E0(&v74);
  return sub_1000296E0(&MutableCopy);
}