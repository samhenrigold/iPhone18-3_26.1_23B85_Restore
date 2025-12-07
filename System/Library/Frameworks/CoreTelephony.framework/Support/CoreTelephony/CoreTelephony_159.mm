void sub_10139C028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35)
{
  if (*(v35 - 97) < 0)
  {
    operator delete(*(v35 - 120));
  }

  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10139C06C(capabilities::ct *a1, PersonalityInfo ***a2, uint64_t *a3, char **a4)
{
  v6 = *(a1 + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = **a2;
    v8 = *(v7 + 14);
    v9 = PersonalityInfo::logPrefix(v7);
    v10 = **a2;
    v13 = *(v10 + 3);
    v11 = v10 + 24;
    v12 = v13;
    v14 = *(v11 + 23);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v11 + 8);
    }

    if (v15 >= 0)
    {
      v12 = v11;
    }

    if (v14)
    {
      v16 = v12;
    }

    else
    {
      v16 = "<invalid>";
    }

    *buf = 136316418;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    v19 = 1024;
    v20 = v8;
    v21 = 2080;
    v22 = v9;
    v23 = 2080;
    v24 = v16;
    v25 = 2080;
    v26 = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sPersonality [%d] %s %s (previously on slot %s) is gone (forced out)", buf, 0x3Au);
  }

  sub_1000727F0(a1 + 61, **a2 + 24);
  v17 = 0uLL;
  sub_1004CA38C();
}

void sub_10139C5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_101393148(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26)
  {
    sub_100004A34(a26);
  }

  _Unwind_Resume(a1);
}

void sub_10139C67C(uint64_t a1, void *a2, int a3)
{
  v14 = 0u;
  v15 = 0u;
  v17[0] = 0;
  v17[1] = 0;
  v16 = v17;
  if (capabilities::ct::supportsGemini(a1))
  {
    operator new();
  }

  sub_1013BF894(&v14 + 1, &v16);
  sub_1001B1588(&v16, v17[0]);
  std::mutex::lock((a1 + 984));
  if (a3)
  {
    sub_1013A7564(buf, a1);
    sub_1013A74F4(a1 + 1048, buf);
  }

  else
  {
    sub_1013A7564(buf, a1);
    if (*(a1 + 1104) == 1 && *(a1 + 1096) == *&buf[16])
    {
      v5 = *(a1 + 1080);
      if (v5 == (a1 + 1088))
      {
LABEL_22:
        sub_1001704B0(buf, *&buf[8]);
        std::mutex::unlock((a1 + 984));
        goto LABEL_26;
      }

      v6 = *buf;
      while (sub_100071DF8(v5 + 4, v6 + 4) && SimLabel::operator==())
      {
        v7 = v5[1];
        v8 = v5;
        if (v7)
        {
          do
          {
            v5 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v5 = v8[2];
            v9 = *v5 == v8;
            v8 = v5;
          }

          while (!v9);
        }

        v10 = v6[1];
        if (v10)
        {
          do
          {
            v11 = v10;
            v10 = *v10;
          }

          while (v10);
        }

        else
        {
          do
          {
            v11 = v6[2];
            v9 = *v11 == v6;
            v6 = v11;
          }

          while (!v9);
        }

        v6 = v11;
        if (v5 == (a1 + 1088))
        {
          goto LABEL_22;
        }
      }
    }

    sub_1013A74F4(a1 + 1048, buf);
  }

  sub_1001704B0(buf, *&buf[8]);
  std::mutex::unlock((a1 + 984));
  v12 = *(a1 + 40);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    v19 = a2;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%spublished assigned sim labels update caused by %s", buf, 0x20u);
  }

LABEL_26:
  sub_1001B1588(&v14 + 8, v15);
}

void sub_10139CFF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, const void **a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  sub_100004A34(a16);
  sub_1001B1588(&a32, a33);
  _Unwind_Resume(a1);
}

const void **sub_10139D0E0(const void **result, uint64_t a2)
{
  result[2] = 0;
  result[1] = 0;
  *result = result + 1;
  v2 = *(a2 + 880);
  v3 = (a2 + 888);
  if (v2 != (a2 + 888))
  {
    v5 = result;
    v20 = a2 + 520;
    v6 = a2 + 544;
    do
    {
      theDict = 0;
      (*(**(a2 + 120) + 24))(&v21);
      sub_100010180(&theDict, &v21);
      sub_10000A1EC(&v21);
      if (theDict)
      {
        Value = CFDictionaryGetValue(theDict, @"type");
        v8 = Value;
        if (Value)
        {
          v9 = CFGetTypeID(Value);
          if (v9 == CFStringGetTypeID() && CFStringCompare(v8, @"sim", 0) == kCFCompareEqualTo)
          {
            v10 = CFDictionaryGetValue(theDict, @"no_src");
            v11 = v10;
            v13 = v10 && (v12 = CFGetTypeID(v10), v12 == CFBooleanGetTypeID()) && CFBooleanGetValue(v11) == 1;
            v14 = sub_100007A6C(a2 + 512, v2 + 32);
            v15 = sub_100007A6C(a2 + 536, v2 + 32);
            v16 = v20 != v14 && v6 == v15;
            v17 = v16 || v13;
            if ((v17 & 1) == 0 && !sub_101395904(a2, v2 + 32))
            {
              sub_1013B731C(v5, v2 + 4, (v2 + 32));
            }
          }
        }
      }

      result = sub_10001021C(&theDict);
      v18 = *(v2 + 1);
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
          v19 = *(v2 + 2);
          v16 = *v19 == v2;
          v2 = v19;
        }

        while (!v16);
      }

      v2 = v19;
    }

    while (v19 != v3);
  }

  return result;
}

void sub_10139D2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10001021C(va);
  sub_100009970(v7, *(v7 + 8));
  _Unwind_Resume(a1);
}

BOOL sub_10139D330(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 976) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 975);
  if (v2 >= 0)
  {
    v3 = *(a1 + 975);
  }

  else
  {
    v3 = *(a1 + 960);
  }

  v4 = *(a2 + 71);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 56);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v6 = (a1 + 952);
  }

  else
  {
    v6 = *(a1 + 952);
  }

  if (v5 >= 0)
  {
    v7 = (a2 + 48);
  }

  else
  {
    v7 = *(a2 + 48);
  }

  return memcmp(v6, v7, v3) == 0;
}

uint64_t sub_10139D3B8(void *a1)
{
  if (a1[60])
  {
    v2 = a1[58];
    v34[0] = off_101F33E48;
    v34[1] = a1;
    v34[3] = v34;
    v3 = a1[5];
    v4 = "<invalid>";
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(v2 + 55);
      v6 = (v5 & 0x80u) != 0;
      if ((v5 & 0x80u) != 0)
      {
        v5 = *(v2 + 40);
      }

      if (v6)
      {
        v7 = *(v2 + 32);
      }

      else
      {
        v7 = (v2 + 32);
      }

      if (v5)
      {
        v8 = v7;
      }

      else
      {
        v8 = "<invalid>";
      }

      *buf = 136315650;
      *&buf[4] = "";
      v38 = 2080;
      v39 = "";
      v40 = 2080;
      v41 = v8;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sresolveSimLabel, %s", buf, 0x20u);
      v3 = a1[5];
    }

    v30 = v2;
    memset(v32, 0, sizeof(v32));
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      v38 = 2080;
      v39 = "";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s======== available", buf, 0x16u);
    }

    v31 = (v2 + 32);
    v9 = a1[82];
    v10 = *v9;
    v11 = v9[1];
    if (*v9 != v11)
    {
      v12 = a1 + 111;
      do
      {
        v13 = *v10;
        if (!*(*v10 + 49) && *(v13 + 48) == 1)
        {
          v14 = sub_100007A6C((a1 + 110), (v13 + 24));
          v15 = a1[5];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = *v10 + 24;
            v17 = *(*v10 + 47);
            v18 = v17;
            if ((v17 & 0x80u) != 0)
            {
              v17 = *(*v10 + 32);
            }

            if (v18 < 0)
            {
              v16 = *(*v10 + 24);
            }

            v19 = v4;
            if (v17)
            {
              v4 = v16;
            }

            if (v12 == v14)
            {
              *buf = 136315906;
              *&buf[4] = "";
              v38 = 2080;
              v39 = "";
              v40 = 2080;
              v41 = v4;
              v42[0] = 2080;
              *&v42[1] = "";
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%s  %s %s", buf, 0x2Au);
            }

            else
            {
              asString();
              p_p = &__p;
              if (v36 < 0)
              {
                p_p = __p;
              }

              *buf = 136315906;
              *&buf[4] = "";
              v38 = 2080;
              v39 = "";
              v40 = 2080;
              v41 = v4;
              v42[0] = 2080;
              *&v42[1] = p_p;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%s  %s %s", buf, 0x2Au);
              if (v36 < 0)
              {
                operator delete(__p);
              }
            }

            v4 = v19;
          }

          if (v12 != v14)
          {
            v21 = *v10;
            (*(*a1 + 168))(buf, a1, v14 + 56);
            sub_1013BE194(&__p, (v21 + 24), buf);
          }
        }

        v10 += 2;
      }

      while (v10 != v11);
    }

    v23 = sub_100007A6C((a1 + 110), v31);
    if (a1 + 111 != v23)
    {
      (*(*a1 + 168))(buf, a1, v23 + 56);
      sub_1013BE194(&__p, v31, buf);
    }

    v24 = a1[5];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(v30 + 55);
      v26 = (v25 & 0x80u) != 0;
      if ((v25 & 0x80u) != 0)
      {
        v25 = *(v30 + 40);
      }

      if (v26)
      {
        v27 = *(v30 + 32);
      }

      else
      {
        v27 = v31;
      }

      if (v25)
      {
        v28 = v27;
      }

      else
      {
        v28 = v4;
      }

      *buf = 136315650;
      *&buf[4] = "";
      v38 = 2080;
      v39 = "";
      v40 = 2080;
      v41 = v28;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%sFailed to find label for: %s", buf, 0x20u);
    }

    v33 = v32;
    sub_1000212F4(&v33);
    sub_1013BEF6C(v34);
  }

  else
  {
    v22 = a1[5];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "";
      v38 = 2080;
      v39 = "";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sdoResolveRemovedSims, nothing to resolve", buf, 0x16u);
    }
  }

  return sub_101393188(a1, a1 + 58, @"RemovedSims", "sims-to-resolve", 1);
}

void sub_10139DBD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10139DCB8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit((a3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a1[5];
  a1[4] = a2;
  a1[5] = a3;
  if (v4)
  {
    sub_100004A34(v4);
  }

  result = a1[3];
  if (result)
  {
    v6 = *(*result + 48);

    return v6();
  }

  return result;
}

void sub_10139DD40(void *a1)
{
  v1 = *(a1[105] + 8 * (a1[108] / 0x55uLL)) + 48 * (a1[108] % 0x55uLL);
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 32);
    v4 = *(v3 + 14);
    v5 = PersonalityInfo::logPrefix(v3);
    v6 = *(v1 + 23);
    v7 = (v6 & 0x80u) != 0;
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(v1 + 8);
    }

    if (v7)
    {
      v8 = *v1;
    }

    else
    {
      v8 = v1;
    }

    if (v6)
    {
      v9 = v8;
    }

    else
    {
      v9 = "<invalid>";
    }

    *buf = 136316418;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    v13 = 1024;
    v14 = v4;
    v15 = 2080;
    v16 = v5;
    v17 = 2080;
    v18 = v9;
    v19 = 2080;
    v20 = asString();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sfiring: [%d] %s [persona:%s -> %s]", buf, 0x3Au);
  }

  v10 = 0;
  v11 = 0;
  *buf = dispatch_group_create();
  sub_100A63BB0();
}

void sub_10139E600(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *aBlock, dispatch_object_t object, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, uint64_t a36, void *a37, dispatch_object_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10139E7E8(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v6 = *(v3 + 816);
        *(v3 + 816) = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        v30 = 0;
        v31 = 0;
        v29 = 0;
        v7 = a1[7];
        v8 = *(v7 + 8);
        v9 = *(v7 + 16);
        while (v8 != v9)
        {
          v10 = v8[1];
          if (v10)
          {
            v11 = std::__shared_weak_count::lock(v10);
            if (v11)
            {
              v12 = v11;
              v13 = *v8;
              if (*v8)
              {
                v14 = v30;
                if (v30 >= v31)
                {
                  v16 = sub_1000053A0(&v29, v13);
                }

                else
                {
                  if (*(v13 + 23) < 0)
                  {
                    sub_100005F2C(v30, *v13, *(v13 + 8));
                  }

                  else
                  {
                    v15 = *v13;
                    v30->__r_.__value_.__r.__words[2] = *(v13 + 16);
                    *&v14->__r_.__value_.__l.__data_ = v15;
                  }

                  v16 = v14 + 1;
                }

                v30 = v16;
              }

              sub_100004A34(v12);
            }
          }

          v8 += 2;
        }

        v17 = *(v3 + 40);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "";
          v33 = 2080;
          v34 = "";
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "#E %s%s******************************", buf, 0x16u);
        }

        v18 = 10;
        do
        {
          v19 = *(v3 + 40);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "";
            v33 = 2080;
            v34 = "";
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "#E %s%s", buf, 0x16u);
          }

          --v18;
        }

        while (v18);
        v20 = *(v3 + 40);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          asString();
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          *buf = 136315650;
          *&buf[4] = "";
          v33 = 2080;
          v34 = "";
          v35 = 2080;
          v36 = p_p;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "#E %s%sfiring timed out!!!: %s", buf, 0x20u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v20 = *(v3 + 40);
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v26 = v29;
          v25 = v30;
          sub_1000D1184(&__p, v29, v30, ",", 1uLL);
          v27 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136315906;
          *&buf[4] = "";
          v33 = 2080;
          v34 = "";
          v35 = 2048;
          v36 = 0xAAAAAAAAAAAAAAABLL * ((v25 - v26) >> 3);
          v37 = 2082;
          v38 = v27;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "#E %s%s%zu client(s) is stuck: %{public}s", buf, 0x2Au);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v21 = 10;
        do
        {
          v22 = *(v3 + 40);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "";
            v33 = 2080;
            v34 = "";
            _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "#E %s%s", buf, 0x16u);
          }

          --v21;
        }

        while (v21);
        v23 = *(v3 + 40);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "";
          v33 = 2080;
          v34 = "";
          _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "#E %s%s******************************", buf, 0x16u);
        }

        sub_10139ECB0(v3);
        *buf = &v29;
        sub_1000087B4(buf);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10139EC68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, void **a17)
{
  sub_100004A34(v18);
  a17 = &a14;
  sub_1000087B4(&a17);
  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

void sub_10139ECB0(uint64_t a1)
{
  v2 = *(a1 + 816);
  if (v2)
  {
    (*(*v2 + 16))(v2);
    v3 = *(a1 + 816);
    *(a1 + 816) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  v4 = *(a1 + 824);
  if (v4)
  {
    (*(*v4 + 16))(v4);
    v5 = *(a1 + 824);
    *(a1 + 824) = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }
  }

  sub_1013B08A0(*(*(a1 + 840) + 8 * (*(a1 + 864) / 0x55uLL)) + 48 * (*(a1 + 864) % 0x55uLL));
  v6 = vaddq_s64(*(a1 + 864), xmmword_1017CD970);
  *(a1 + 864) = v6;
  if (v6.i64[0] < 0xAAuLL)
  {
    if (!v6.i64[1])
    {
      return;
    }
  }

  else
  {
    operator delete(**(a1 + 840));
    *(a1 + 840) += 8;
    *(a1 + 864) -= 85;
    if (!*(a1 + 872))
    {
      return;
    }
  }

  sub_10139DD40(a1);
}

void *sub_10139EE2C(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10139EE60(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_10139EEB0(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        v27 = 0;
        v26 = 0uLL;
        v6 = a1[7];
        v7 = *(v6 + 8);
        v8 = *(v6 + 16);
        if (v7 != v8)
        {
          do
          {
            v9 = v7[1];
            if (v9)
            {
              v10 = std::__shared_weak_count::lock(v9);
              if (v10)
              {
                v11 = v10;
                v12 = *v7;
                if (*v7)
                {
                  v13 = *(&v26 + 1);
                  if (*(&v26 + 1) >= v27)
                  {
                    v15 = sub_1000053A0(&v26, v12);
                  }

                  else
                  {
                    if (*(v12 + 23) < 0)
                    {
                      sub_100005F2C(*(&v26 + 1), *v12, *(v12 + 8));
                    }

                    else
                    {
                      v14 = *v12;
                      *(*(&v26 + 1) + 16) = *(v12 + 16);
                      *v13 = v14;
                    }

                    v15 = v13 + 24;
                  }

                  *(&v26 + 1) = v15;
                }

                sub_100004A34(v11);
              }
            }

            v7 += 2;
          }

          while (v7 != v8);
          v16 = *(&v26 + 1);
          v17 = v26;
          v18 = *(&v26 + 1) - v26;
          if (*(&v26 + 1) != v26)
          {
            v19 = a1[9];
            v20 = *v19 + 1;
            *v19 = v20;
            v21 = *(v3 + 40);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              sub_1000D1184(&__p, v17, v16, ",", 1uLL);
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
              *(buf.__r_.__value_.__r.__words + 4) = "";
              WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
              HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
              v30 = v20;
              v31 = 2048;
              v32 = 0xAAAAAAAAAAAAAAABLL * (v18 >> 3);
              v33 = 2082;
              v34 = p_p;
              _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "#E %s%s! %d secs delay on event queue by %zu client(s) : %{public}s", &buf, 0x30u);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v20 = *a1[9];
            }

            if (v20 == 30)
            {
              v22 = *(v3 + 40);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
              {
                v24 = v26;
                sub_1000D1184(&buf, v26, *(&v26 + 1), ",", 1uLL);
                if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  p_buf = &buf;
                }

                else
                {
                  p_buf = buf.__r_.__value_.__r.__words[0];
                }

                LODWORD(__p.__r_.__value_.__l.__data_) = 134218242;
                *(__p.__r_.__value_.__r.__words + 4) = 0xAAAAAAAAAAAAAAABLL * ((*(&v24 + 1) - v24) >> 3);
                WORD2(__p.__r_.__value_.__r.__words[1]) = 2082;
                *(&__p.__r_.__value_.__r.__words[1] + 6) = p_buf;
                _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "Long delay on event queue by %zu client(s) : %{public}s", &__p, 0x16u);
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }
              }
            }
          }
        }

        buf.__r_.__value_.__r.__words[0] = &v26;
        sub_1000087B4(&buf);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10139F1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void **a17)
{
  a17 = &a9;
  sub_1000087B4(&a17);
  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

void *sub_10139F1EC(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[10];
  result[9] = a2[9];
  result[10] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10139F238(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[6];
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void sub_10139F294(uint64_t a1, const void **a2)
{
  v3 = (a1 + 312);
  v4 = *(a2 + 24);
  v5 = *(a1 + 336);
  if (v4 != v5 || v4 == 0)
  {
    if (v4 == v5)
    {
      return;
    }

    goto LABEL_21;
  }

  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  v9 = *(a1 + 335);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a1 + 320);
  }

  if (v8 != v9 || (v7 >= 0 ? (v11 = a2) : (v11 = *a2), v10 >= 0 ? (v12 = v3) : (v12 = *v3), memcmp(v11, v12, v8)))
  {
LABEL_21:
    v13 = *(a1 + 40);
    if (v5)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a1 + 335) < 0)
        {
          v3 = *v3;
        }

        v14 = 136315650;
        v15 = "";
        v16 = 2080;
        v17 = "";
        v18 = 2080;
        v19 = v3;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%smeid detected: %s", &v14, 0x20u);
      }

      if (sub_101395968(a1))
      {
        sub_10139A758(a1);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315394;
      v15 = "";
      v16 = 2080;
      v17 = "";
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "#E %s%sno meid detected", &v14, 0x16u);
    }
  }
}

void sub_10139F448(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v188 = a2;
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
  v5 = ServiceMap;
  if ((v6 & 0x8000000000000000) != 0)
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
  buf.__r_.__value_.__r.__words[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &buf);
  v11 = a3;
  if (!v10)
  {
    v12 = 0;
    goto LABEL_8;
  }

  v12 = v10[3];
  v13 = v10[4];
  if (!v13)
  {
LABEL_8:
    std::mutex::unlock(v5);
    v13 = 0;
    v14 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = a3;
  sub_100004A34(v13);
  v14 = 0;
LABEL_9:
  theDict = 0;
  (*(*v12 + 200))(&buf, v12, v188);
  v194.__r_.__value_.__r.__words[0] = 0;
  theDict = buf.__r_.__value_.__l.__size_;
  buf.__r_.__value_.__l.__size_ = 0;
  sub_10001021C(&v194.__r_.__value_.__l.__data_);
  sub_10001021C(&buf.__r_.__value_.__r.__words[2]);
  sub_10001021C(&buf.__r_.__value_.__l.__size_);
  memset(&v186, 0, sizeof(v186));
  if (!theDict)
  {
    goto LABEL_13;
  }

  Value = CFDictionaryGetValue(theDict, qword_101FCB6E8);
  if (Value)
  {
    CFGetTypeID(Value);
    CFStringGetTypeID();
  }

  memset(&buf, 0, sizeof(buf));
  ctu::cf::assign();
  *&v186.__r_.__value_.__l.__data_ = *&buf.__r_.__value_.__l.__data_;
  *(&v186.__r_.__value_.__r.__words[1] + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
  *(&v186.__r_.__value_.__s + 23) = *(&buf.__r_.__value_.__s + 23);
  memset(&__dst, 0, sizeof(__dst));
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(&__dst, buf.__r_.__value_.__l.__data_, v186.__r_.__value_.__l.__size_);
  }

  else
  {
LABEL_13:
    __dst = v186;
  }

  v183 = 0;
  v184 = 0;
  v16 = *(a1 + 656);
  v17 = v188;
  v18 = *v16;
  v19 = v16[1];
  if (v18 != v19)
  {
    while ((*v18)[2].__r_.__value_.__s.__data_[1] || HIDWORD((*v18)[2].__r_.__value_.__r.__words[0]) != v188)
    {
      v18 += 2;
      if (v18 == v19)
      {
        goto LABEL_23;
      }
    }
  }

  if (v18 == v19)
  {
LABEL_23:
    v20 = 0;
  }

  else
  {
    v20 = v18[1];
    v183 = *v18;
    v184 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v17 == 1 && v11[1] == 2 && *(a1 + 336) == 1)
  {
    sub_10139A758(a1);
    v21 = *(a1 + 656);
    v22 = *v21;
    v23 = v21[1];
    if (v22 != v23)
    {
      while ((*v22)[2].__r_.__value_.__s.__data_[1] || HIDWORD((*v22)[2].__r_.__value_.__r.__words[0]) != v188)
      {
        v22 += 2;
        if (v22 == v23)
        {
          goto LABEL_35;
        }
      }
    }

    if (v22 == v23)
    {
LABEL_35:
      v25 = 0;
      v24 = 0;
    }

    else
    {
      v25 = *v22;
      v24 = v22[1];
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    v183 = v25;
    v184 = v24;
    if (v20)
    {
      sub_100004A34(v20);
    }

    if (v25)
    {
      std::string::operator=(&__dst, v25 + 1);
    }
  }

  v26 = (a1 + 448);
  v27 = *(a1 + 448);
  if (!v27)
  {
    goto LABEL_49;
  }

  v28 = a1 + 448;
  do
  {
    if (*(v27 + 32) >= v188)
    {
      v28 = v27;
    }

    v27 = *(v27 + 8 * (*(v27 + 32) < v188));
  }

  while (v27);
  if (v28 == v26 || v188 < *(v28 + 32) || !sub_100071DF8((v28 + 40), &__dst) || (rest::operator==() & 1) == 0)
  {
LABEL_49:
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      v33 = *(a1 + 40);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = subscriber::asString();
        asString();
        if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v35 = &v194;
        }

        else
        {
          v35 = v194.__r_.__value_.__r.__words[0];
        }

        v36 = &v186;
        if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v36 = v186.__r_.__value_.__r.__words[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
        *(buf.__r_.__value_.__r.__words + 4) = "";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        *v192 = v34;
        *&v192[8] = 2082;
        *&v192[10] = v35;
        *&v192[18] = 2080;
        *&v192[20] = v36;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I %s%s--> carrier_bundle slot %s: %{public}s [iccid:%s] -- No PersonalityID while CB changed", &buf, 0x34u);
        if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v194.__r_.__value_.__l.__data_);
        }
      }

      goto LABEL_354;
    }

    v30 = 0;
    v31 = *v11;
    if (v31 > 3)
    {
      if (v31 == 255 || v31 == 5)
      {
        goto LABEL_354;
      }

      v32 = 0;
      if (v31 == 4)
      {
LABEL_68:
        v30 = 0;
        v32 = 1;
      }
    }

    else
    {
      if (v31 - 2 < 2)
      {
        v32 = 0;
        v30 = 1;
        goto LABEL_69;
      }

      v32 = 0;
      if (v31 == 1)
      {
        goto LABEL_68;
      }
    }

LABEL_69:
    v37 = *(a1 + 40);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v171 = v13;
      v38 = subscriber::asString();
      v39 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      v40 = *&__dst.__r_.__value_.__l.__data_;
      asString();
      if ((v39 & 0x80u) == 0)
      {
        v41 = v39;
      }

      else
      {
        v41 = *(&v40 + 1);
      }

      p_dst = &__dst;
      if ((v39 & 0x80u) != 0)
      {
        p_dst = v40;
      }

      v43 = v41 == 0;
      *(buf.__r_.__value_.__r.__words + 4) = "";
      *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
      v44 = "<invalid>";
      LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
      if (!v43)
      {
        v44 = p_dst;
      }

      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = &v194;
      }

      else
      {
        v45 = v194.__r_.__value_.__r.__words[0];
      }

      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      *v192 = v38;
      *&v192[8] = 2080;
      *&v192[10] = v44;
      *&v192[18] = 2082;
      *&v192[20] = v45;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I %s%s--> carrier_bundle slot %s [%s] event: %{public}s", &buf, 0x34u);
      if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v194.__r_.__value_.__l.__data_);
      }

      v13 = v171;
      v11 = a3;
    }

    v46 = *v26;
    if (!*v26)
    {
      goto LABEL_93;
    }

    v47 = a1 + 448;
    do
    {
      if (*(v46 + 32) >= v188)
      {
        v47 = v46;
      }

      v46 = *(v46 + 8 * (*(v46 + 32) < v188));
    }

    while (v46);
    if (v47 != v26 && v188 >= *(v47 + 32) && sub_100071DF8((v47 + 40), &__dst))
    {
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        buf = __dst;
      }

      *v192 = *v11;
      if (v11[31] < 0)
      {
        sub_100005F2C(&v192[8], *(v11 + 1), *(v11 + 2));
      }

      else
      {
        *&v192[8] = *(v11 + 8);
        *&v192[24] = *(v11 + 3);
      }

      if (v11[55] < 0)
      {
        sub_100005F2C(&v192[32], *(v11 + 4), *(v11 + 5));
      }

      else
      {
        *&v192[32] = *(v11 + 2);
        *&v192[48] = *(v11 + 6);
      }

      if (v30)
      {
        v97 = 1;
      }

      else
      {
        v97 = *(v47 + 120);
      }

      LOBYTE(v193) = v97 & 1;
      if (v32)
      {
        v98 = 1;
      }

      else
      {
        v98 = *(v47 + 121);
      }

      HIBYTE(v193) = v98 & 1;
      v194.__r_.__value_.__r.__words[0] = &v188;
      v48 = sub_1013B7C88((a1 + 440), v188, &v194);
      std::string::operator=((v48 + 5), &buf);
    }

    else
    {
LABEL_93:
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
      }

      else
      {
        buf = __dst;
      }

      *v192 = *v11;
      if (v11[31] < 0)
      {
        sub_100005F2C(&v192[8], *(v11 + 1), *(v11 + 2));
      }

      else
      {
        *&v192[8] = *(v11 + 8);
        *&v192[24] = *(v11 + 3);
      }

      if (v11[55] < 0)
      {
        sub_100005F2C(&v192[32], *(v11 + 4), *(v11 + 5));
      }

      else
      {
        *&v192[32] = *(v11 + 2);
        *&v192[48] = *(v11 + 6);
      }

      LOBYTE(v193) = v30;
      HIBYTE(v193) = v32;
      v194.__r_.__value_.__r.__words[0] = &v188;
      v48 = sub_1013B7C88((a1 + 440), v188, &v194);
      std::string::operator=((v48 + 5), &buf);
    }

    *(v48 + 32) = *v192;
    if (*(v48 + 95) < 0)
    {
      operator delete(v48[9]);
    }

    v48[11] = *&v192[24];
    *(v48 + 9) = *&v192[8];
    v192[31] = 0;
    v192[8] = 0;
    if (*(v48 + 119) < 0)
    {
      operator delete(v48[12]);
      v49 = v192[31];
      *(v48 + 6) = *&v192[32];
      v48[14] = *&v192[48];
      v192[55] = 0;
      v192[32] = 0;
      *(v48 + 60) = v193;
      if (v49 < 0)
      {
        operator delete(*&v192[8]);
      }
    }

    else
    {
      *(v48 + 6) = *&v192[32];
      v48[14] = *&v192[48];
      v192[55] = 0;
      v192[32] = 0;
      *(v48 + 60) = v193;
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v50 = v183;
    if (!v183)
    {
      goto LABEL_354;
    }

    v51 = &v183[1];
    if (!isReal() || !sub_100071DF8(v183[1].__r_.__value_.__r.__words, &__dst))
    {
      goto LABEL_354;
    }

    v52 = (*(a1 + 416) + 16 * subscriber::simSlotAsInstance());
    v53 = v52[1];
    *v52 = 0;
    v52[1] = 0;
    if (v53)
    {
      sub_100004A34(v53);
    }

    buf.__r_.__value_.__r.__words[0] = &v188;
    v176 = v14;
    if (*(sub_1013B7C88((a1 + 440), v188, &buf) + 121))
    {
LABEL_148:
      v68 = *(a1 + 120);
      if (v11[55] < 0)
      {
        sub_100005F2C(&v182, *(v11 + 4), *(v11 + 5));
      }

      else
      {
        v182 = *(v11 + 32);
      }

      if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&v194, v182.__r_.__value_.__l.__data_, v182.__r_.__value_.__l.__size_);
      }

      else
      {
        v194 = v182;
      }

      *&v190 = 0;
      if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&buf, v194.__r_.__value_.__l.__data_, v194.__r_.__value_.__l.__size_);
      }

      else
      {
        buf = v194;
      }

      v196 = 0;
      if (ctu::cf::convert_copy())
      {
        v69 = v190;
        *&v190 = v196;
        theString1.__r_.__value_.__r.__words[0] = v69;
        sub_100005978(&theString1.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v179 = v190;
      *&v190 = 0;
      sub_100005978(&v190);
      if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v194.__r_.__value_.__l.__data_);
      }

      (*(*v68 + 16))(v68, v50 + 1, @"cb_ver", v179, @"info", 0, 0, 0);
      sub_100005978(&v179);
      if (SHIBYTE(v182.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v182.__r_.__value_.__l.__data_);
      }

      v70 = *(a1 + 120);
      v173 = v11 + 8;
      if (v11[31] < 0)
      {
        sub_100005F2C(&v181, *(v11 + 1), *(v11 + 2));
      }

      else
      {
        v181 = *(v11 + 8);
      }

      if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&v194, v181.__r_.__value_.__l.__data_, v181.__r_.__value_.__l.__size_);
      }

      else
      {
        v194 = v181;
      }

      *&v190 = 0;
      if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&buf, v194.__r_.__value_.__l.__data_, v194.__r_.__value_.__l.__size_);
      }

      else
      {
        buf = v194;
      }

      v196 = 0;
      if (ctu::cf::convert_copy())
      {
        v71 = v190;
        *&v190 = v196;
        theString1.__r_.__value_.__r.__words[0] = v71;
        sub_100005978(&theString1.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v179 = v190;
      *&v190 = 0;
      sub_100005978(&v190);
      if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v194.__r_.__value_.__l.__data_);
      }

      (*(*v70 + 16))(v70, v50 + 1, @"cb_id", v179, @"info", 0, 0, 0);
      sub_100005978(&v179);
      if (SHIBYTE(v181.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v181.__r_.__value_.__l.__data_);
      }

      v179 = 0;
      v180 = 0;
      v72 = Registry::getServiceMap(*(a1 + 64));
      v73 = v72;
      if ((v74 & 0x8000000000000000) != 0)
      {
        v75 = (v74 & 0x7FFFFFFFFFFFFFFFLL);
        v76 = 5381;
        do
        {
          v74 = v76;
          v77 = *v75++;
          v76 = (33 * v76) ^ v77;
        }

        while (v77);
      }

      std::mutex::lock(v72);
      buf.__r_.__value_.__r.__words[0] = v74;
      v78 = sub_100009510(&v73[1].__m_.__sig, &buf);
      v169 = v11 + 32;
      if (v78)
      {
        v80 = v78[3];
        v79 = v78[4];
        if (v79)
        {
          atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v73);
          atomic_fetch_add_explicit(&v79->__shared_owners_, 1uLL, memory_order_relaxed);
          v81 = v79;
          sub_100004A34(v79);
          v82 = 0;
          goto LABEL_190;
        }
      }

      else
      {
        v80 = 0;
      }

      std::mutex::unlock(v73);
      v81 = 0;
      v82 = 1;
LABEL_190:
      if (v80)
      {
        v166 = v82;
        v83 = *(a1 + 656);
        v84 = *v83;
        v85 = *(v83 + 8);
        if (*v83 != v85)
        {
          while (!sub_100071DF8((*v84 + 24), v50[1].__r_.__value_.__r.__words))
          {
            v84 += 2;
            if (v84 == v85)
            {
              v84 = v85;
              break;
            }
          }

          v85 = *(v83 + 8);
        }

        if (v84 == v85)
        {
          v14 = v176;
          if (v166)
          {
LABEL_275:
            v179 = 0;
            v180 = 0;
            buf.__r_.__value_.__r.__words[0] = &v188;
            v114 = sub_1013B7C88((a1 + 440), v188, &buf);
            v115 = v183;
            if ((*(v114 + 121) & 1) != 0 || v183[2].__r_.__value_.__s.__data_[0] == 1 && (buf.__r_.__value_.__r.__words[0] = &v188, *(sub_1013B7C88((a1 + 440), v188, &buf) + 120) == 1))
            {
              v116 = *(a1 + 40);
              if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
              {
                v117 = v115[2].__r_.__value_.__r.__words[1];
                v118 = PersonalityInfo::logPrefix(v115);
                data = v115[1].__r_.__value_.__l.__data_;
                v120 = HIBYTE(v115[1].__r_.__value_.__r.__words[2]);
                v121 = v115[1].__r_.__value_.__l.__size_;
                v122 = subscriber::asString();
                if ((v120 & 0x80u) == 0)
                {
                  v123 = v120;
                }

                else
                {
                  v123 = v121;
                }

                if ((v120 & 0x80u) == 0)
                {
                  v124 = &v115[1];
                }

                else
                {
                  v124 = data;
                }

                v43 = v123 == 0;
                v125 = a3[55];
                v126 = *(a3 + 4);
                if (v43)
                {
                  v124 = "<invalid>";
                }

                v128 = v169;
                v127 = v173;
                if ((a3[31] & 0x80u) != 0)
                {
                  v127 = *(a3 + 1);
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136316930;
                *(buf.__r_.__value_.__r.__words + 4) = "";
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                if (v125 < 0)
                {
                  v128 = v126;
                }

                *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
                *v192 = v117;
                *&v192[4] = 2080;
                *&v192[6] = v118;
                *&v192[14] = 2080;
                *&v192[16] = v124;
                *&v192[24] = 2080;
                *&v192[26] = v122;
                *&v192[34] = 2082;
                *&v192[36] = v127;
                *&v192[44] = 2082;
                *&v192[46] = v128;
                _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "#I %s%sCB for personality [%d] %s %s updated, slot:%s, %{public}s:[%{public}s]", &buf, 0x4Eu);
                v14 = v176;
              }

              if (SHIBYTE(v115[1].__r_.__value_.__r.__words[2]) < 0)
              {
                sub_100005F2C(&v194, v115[1].__r_.__value_.__l.__data_, v115[1].__r_.__value_.__l.__size_);
              }

              else
              {
                v194 = v115[1];
              }

              v195 = 4;
              if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_100005F2C(&buf, v194.__r_.__value_.__l.__data_, v194.__r_.__value_.__l.__size_);
                v129 = v195;
              }

              else
              {
                buf = v194;
                v129 = 4;
              }

              v192[0] = v129;
              *&v192[8] = v115;
              *&v192[16] = v184;
              if (v184)
              {
                atomic_fetch_add_explicit(&v184->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              sub_101399700(a1, &buf);
              if (*&v192[16])
              {
                sub_100004A34(*&v192[16]);
              }

              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v194.__r_.__value_.__l.__data_);
              }
            }

            buf.__r_.__value_.__r.__words[0] = &v188;
            *(sub_1013B7C88((a1 + 440), v188, &buf) + 120) = 0;
            buf.__r_.__value_.__r.__words[0] = &v188;
            *(sub_1013B7C88((a1 + 440), v188, &buf) + 121) = 0;
            if ((v115[2].__r_.__value_.__s.__data_[0] & 1) == 0)
            {
              v130 = *(a1 + 40);
              if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
              {
                v131 = v115[1].__r_.__value_.__l.__data_;
                v132 = HIBYTE(v115[1].__r_.__value_.__r.__words[2]);
                v133 = v115[1].__r_.__value_.__l.__size_;
                v134 = subscriber::asString();
                if ((v132 & 0x80u) == 0)
                {
                  v135 = v132;
                }

                else
                {
                  v135 = v133;
                }

                if ((v132 & 0x80u) == 0)
                {
                  v136 = &v115[1];
                }

                else
                {
                  v136 = v131;
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
                *(buf.__r_.__value_.__r.__words + 4) = "";
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                if (v135)
                {
                  v137 = v136;
                }

                else
                {
                  v137 = "<invalid>";
                }

                *v192 = v137;
                *&v192[8] = 2080;
                *&v192[10] = v134;
                _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "#I %s%scheck if personality %s on slot %s can be activated now", &buf, 0x2Au);
              }

              v138 = v184;
              if (v184)
              {
                atomic_fetch_add_explicit(&v184->__shared_owners_, 1uLL, memory_order_relaxed);
                atomic_fetch_add_explicit(&v138->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v196 = v115;
              v197 = v138;
              v139 = sub_101399F4C(a1, &v196);
              if (v138)
              {
                sub_100004A34(v138);
              }

              if (v139)
              {
                v140 = *(a1 + 656);
                v142 = *v140;
                v141 = v140[1];
                if (*v140 != v141)
                {
                  while (!sub_100071DF8((*v142 + 24), v115[1].__r_.__value_.__r.__words))
                  {
                    v142 += 16;
                    if (v142 == v141)
                    {
                      v142 = v141;
                      break;
                    }
                  }

                  v141 = *(*(a1 + 656) + 8);
                }

                v143 = *(a1 + 40);
                if (v142 != v141)
                {
                  if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
                  {
                    v144 = v115[2].__r_.__value_.__r.__words[1];
                    v178 = PersonalityInfo::logPrefix(v115);
                    v175 = v115[1].__r_.__value_.__l.__data_;
                    v145 = HIBYTE(v115[1].__r_.__value_.__r.__words[2]);
                    v146 = v115[1].__r_.__value_.__l.__size_;
                    v147 = subscriber::asString();
                    LODWORD(buf.__r_.__value_.__l.__data_) = 136316418;
                    *(buf.__r_.__value_.__r.__words + 4) = "";
                    if ((v145 & 0x80u) == 0)
                    {
                      v148 = v145;
                    }

                    else
                    {
                      v148 = v146;
                    }

                    *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                    v149 = "<invalid>";
                    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                    v150 = v175;
                    if ((v145 & 0x80u) == 0)
                    {
                      v150 = &v115[1];
                    }

                    HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
                    if (v148)
                    {
                      v149 = v150;
                    }

                    *v192 = v144;
                    *&v192[4] = 2080;
                    *&v192[6] = v178;
                    *&v192[14] = 2080;
                    *&v192[16] = v149;
                    *&v192[24] = 2080;
                    *&v192[26] = v147;
                    _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "#I %s%sPersonality [%d] %s %s activated on slot %s", &buf, 0x3Au);
                  }

                  v190 = 0uLL;
                  sub_1004CA38C();
                }

                if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
                {
                  v151 = v115[2].__r_.__value_.__r.__words[1];
                  v152 = PersonalityInfo::logPrefix(v115);
                  v155 = v115[1].__r_.__value_.__l.__data_;
                  v153 = v115 + 1;
                  v154 = v155;
                  v156 = HIBYTE(v153->__r_.__value_.__r.__words[2]);
                  v157 = v153->__r_.__value_.__l.__size_;
                  v158 = subscriber::asString();
                  LODWORD(buf.__r_.__value_.__l.__data_) = 136316418;
                  *(buf.__r_.__value_.__r.__words + 4) = "";
                  if ((v156 & 0x80u) == 0)
                  {
                    v159 = v156;
                  }

                  else
                  {
                    v159 = v157;
                  }

                  *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                  v160 = "<invalid>";
                  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                  if ((v156 & 0x80u) == 0)
                  {
                    v161 = v153;
                  }

                  else
                  {
                    v161 = v154;
                  }

                  HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
                  if (v159)
                  {
                    v160 = v161;
                  }

                  *v192 = v151;
                  *&v192[4] = 2080;
                  *&v192[6] = v152;
                  *&v192[14] = 2080;
                  *&v192[16] = v160;
                  *&v192[24] = 2080;
                  *&v192[26] = v158;
                  _os_log_error_impl(&_mh_execute_header, v143, OS_LOG_TYPE_ERROR, "#E %s%simpossible. Personality disappeared from array. [%d] %s %s slot %s", &buf, 0x3Au);
                  v14 = v176;
                }
              }

              if (v138)
              {
                sub_100004A34(v138);
              }
            }

            if (v180)
            {
              sub_100004A34(v180);
            }

            goto LABEL_354;
          }

LABEL_274:
          sub_100004A34(v81);
          goto LABEL_275;
        }

        v86 = v84[1];
        v164 = *v84;
        v14 = v176;
        if (v86)
        {
          atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v82 = v166;
        if (v164 && !*(v164 + 49) && isReal())
        {
          v163 = v81;
          v87 = sub_100007A6C(a1 + 880, &v50[1]);
          if (a1 + 888 != v87)
          {
            theString1.__r_.__value_.__r.__words[0] = 0;
            v196 = @"CarrierName";
            memset(&buf, 0, sizeof(buf));
            sub_10005B328(&buf, &v196, &v197, 1uLL);
            (*(*a1 + 128))(&v194, a1, v50 + 1, &buf, 0);
            sub_100060DE8(&theString1, &v194.__r_.__value_.__l.__data_);
            sub_10000A1EC(&v194.__r_.__value_.__l.__data_);
            if (buf.__r_.__value_.__r.__words[0])
            {
              buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
              operator delete(buf.__r_.__value_.__l.__data_);
            }

            if (theString1.__r_.__value_.__r.__words[0] && CFStringCompare(theString1.__r_.__value_.__l.__data_, @"Carrier", 0))
            {
              v196 = 0;
              (*(**(a1 + 120) + 24))(&buf);
              sub_100060DE8(&v196, &buf.__r_.__value_.__l.__data_);
              sub_10000A1EC(&buf.__r_.__value_.__l.__data_);
              if (v196 && CFStringCompare(theString1.__r_.__value_.__l.__data_, v196, 0) == kCFCompareEqualTo)
              {
                v96 = 0;
              }

              else
              {
                log = *(a1 + 40);
                if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
                {
                  v88 = HIBYTE(v50[1].__r_.__value_.__r.__words[2]);
                  v89 = (v88 & 0x80u) != 0;
                  if ((v88 & 0x80u) != 0)
                  {
                    v88 = v50[1].__r_.__value_.__l.__size_;
                  }

                  if (v89)
                  {
                    v90 = v50[1].__r_.__value_.__l.__data_;
                  }

                  else
                  {
                    v90 = &v50[1];
                  }

                  if (v88)
                  {
                    v91 = v90;
                  }

                  else
                  {
                    v91 = "<invalid>";
                  }

                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
                  *(buf.__r_.__value_.__r.__words + 4) = "";
                  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                  *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
                  HIWORD(buf.__r_.__value_.__r.__words[2]) = 2112;
                  *v192 = theString1.__r_.__value_.__r.__words[0];
                  *&v192[8] = 2080;
                  *&v192[10] = v91;
                  _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I %s%sObtained CarrierName '%@' for persona %s", &buf, 0x2Au);
                }

                (*(**(a1 + 120) + 16))(*(a1 + 120), v50 + 1, @"carrier-name", theString1.__r_.__value_.__r.__words[0], @"info", 0, 0, 0);
                v92 = v87;
                memset(&buf, 0, sizeof(buf));
                ctu::cf::assign();
                v194.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__l.__size_;
                v93 = buf.__r_.__value_.__r.__words[0];
                *(v194.__r_.__value_.__r.__words + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
                v94 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                if (*(v92 + 207) < 0)
                {
                  operator delete(*(v92 + 184));
                }

                v95 = v194.__r_.__value_.__r.__words[0];
                *(v92 + 184) = v93;
                *(v92 + 192) = v95;
                *(v92 + 199) = *(v194.__r_.__value_.__r.__words + 7);
                *(v92 + 207) = v94;
                v96 = 1;
                v87 = v92;
              }

              sub_100005978(&v196);
            }

            else
            {
              v96 = 0;
            }

            v109 = v96 | sub_1013A153C(a1, v51, v87 + 56, 1);
            sub_100005978(&theString1.__r_.__value_.__l.__data_);
            if (v109)
            {
              sub_10139C67C(a1, "carrier name detected", 0);
            }
          }

          v110 = *(v164 + 52);
          v194.__r_.__value_.__r.__words[0] = @"CellularDataPlanSettings";
          v194.__r_.__value_.__l.__size_ = @"DataOnlySubscription";
          memset(&buf, 0, sizeof(buf));
          sub_10005B328(&buf, &v194, &v194.__r_.__value_.__r.__words[2], 2uLL);
          (*(*v80 + 104))(&theString1, v80, v110, 1, &buf, 0, 0);
          v111 = theString1.__r_.__value_.__r.__words[0];
          LOBYTE(v196) = 0;
          v81 = v163;
          if (theString1.__r_.__value_.__r.__words[0])
          {
            v112 = CFGetTypeID(theString1.__r_.__value_.__l.__data_);
            if (v112 == CFBooleanGetTypeID())
            {
              ctu::cf::assign(&v196, v111, v113);
              LOBYTE(v111) = v196;
            }

            else
            {
              LOBYTE(v111) = 0;
            }
          }

          sub_10000A1EC(&theString1.__r_.__value_.__l.__data_);
          if (buf.__r_.__value_.__r.__words[0])
          {
            buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          v179 = 0;
          v180 = 0;
          sub_1013A1ECC(&v179, a1, v51, 2, v111 & 1);
          if (v179)
          {
            sub_101398148(a1, "onCBReady", 1);
          }

          if (v180)
          {
            sub_100004A34(v180);
          }
        }

        if (v86)
        {
          sub_100004A34(v86);
        }
      }

      if (v82)
      {
        goto LABEL_275;
      }

      goto LABEL_274;
    }

    memset(&v194, 0, sizeof(v194));
    (*(**(a1 + 120) + 24))(&theString1);
    memset(&buf, 0, sizeof(buf));
    ctu::cf::assign();
    v194 = buf;
    sub_10000A1EC(&theString1.__r_.__value_.__l.__data_);
    memset(&theString1, 0, sizeof(theString1));
    (*(**(a1 + 120) + 24))(&v196);
    memset(&buf, 0, sizeof(buf));
    ctu::cf::assign();
    theString1 = buf;
    sub_10000A1EC(&v196);
    v54 = v11[55];
    if (v54 >= 0)
    {
      v55 = v11[55];
    }

    else
    {
      v55 = *(v11 + 5);
    }

    v56 = HIBYTE(v194.__r_.__value_.__r.__words[2]);
    if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v56 = v194.__r_.__value_.__l.__size_;
    }

    if (v55 == v56 && (v54 >= 0 ? (v57 = v11 + 32) : (v57 = *(v11 + 4)), (v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v58 = &v194) : (v58 = v194.__r_.__value_.__r.__words[0]), !memcmp(v57, v58, v55)))
    {
      v99 = HIBYTE(theString1.__r_.__value_.__r.__words[2]);
      if ((theString1.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v99 = theString1.__r_.__value_.__l.__size_;
      }

      if (!v99 || sub_100071DF8(&theString1, v11 + 1))
      {
        goto LABEL_144;
      }

      v100 = *(a1 + 40);
      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
        v174 = v50[2].__r_.__value_.__r.__words[1];
        v170 = PersonalityInfo::logPrefix(v50);
        v101 = HIBYTE(v50[1].__r_.__value_.__r.__words[2]);
        v102 = v50[1].__r_.__value_.__l.__size_;
        v167 = v50[1].__r_.__value_.__l.__data_;
        v103 = subscriber::asString();
        if ((v101 & 0x80u) == 0)
        {
          v104 = v101;
        }

        else
        {
          v104 = v102;
        }

        v105 = v167;
        if ((v101 & 0x80u) == 0)
        {
          v105 = &v50[1];
        }

        if (!v104)
        {
          v105 = "<invalid>";
        }

        v106 = v11[31];
        p_theString1 = &theString1;
        if ((theString1.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_theString1 = theString1.__r_.__value_.__r.__words[0];
        }

        v108 = *(v11 + 1);
        LODWORD(buf.__r_.__value_.__l.__data_) = 136316930;
        *(buf.__r_.__value_.__r.__words + 4) = "";
        if (v106 >= 0)
        {
          v108 = v11 + 8;
        }

        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
        *v192 = v174;
        *&v192[4] = 2080;
        *&v192[6] = v170;
        *&v192[14] = 2080;
        *&v192[16] = v105;
        *&v192[24] = 2080;
        *&v192[26] = v103;
        *&v192[34] = 2082;
        *&v192[36] = p_theString1;
        *&v192[44] = 2082;
        *&v192[46] = v108;
        _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "#I %s%sCB ID don't match cache for [%d] %s %s, slot:%s, id:[%{public}s] -> [%{public}s]", &buf, 0x4Eu);
        v14 = v176;
      }
    }

    else
    {
      v59 = *(a1 + 40);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        v172 = v50[2].__r_.__value_.__r.__words[1];
        v168 = PersonalityInfo::logPrefix(v50);
        v60 = HIBYTE(v50[1].__r_.__value_.__r.__words[2]);
        v61 = v50[1].__r_.__value_.__l.__size_;
        v165 = v50[1].__r_.__value_.__l.__data_;
        v62 = subscriber::asString();
        if ((v60 & 0x80u) == 0)
        {
          v63 = v60;
        }

        else
        {
          v63 = v61;
        }

        v64 = v165;
        if ((v60 & 0x80u) == 0)
        {
          v64 = &v50[1];
        }

        if (!v63)
        {
          v64 = "<invalid>";
        }

        v65 = v11[55];
        v66 = &v194;
        if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v66 = v194.__r_.__value_.__r.__words[0];
        }

        v67 = *(v11 + 4);
        LODWORD(buf.__r_.__value_.__l.__data_) = 136316930;
        *(buf.__r_.__value_.__r.__words + 4) = "";
        if (v65 >= 0)
        {
          v67 = v11 + 32;
        }

        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
        *v192 = v172;
        *&v192[4] = 2080;
        *&v192[6] = v168;
        *&v192[14] = 2080;
        *&v192[16] = v64;
        *&v192[24] = 2080;
        *&v192[26] = v62;
        *&v192[34] = 2082;
        *&v192[36] = v66;
        *&v192[44] = 2082;
        *&v192[46] = v67;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I %s%sCB VER don't match cache for [%d] %s %s, slot:%s, ver:[%{public}s] -> [%{public}s]", &buf, 0x4Eu);
        v14 = v176;
      }
    }

    buf.__r_.__value_.__r.__words[0] = &v188;
    *(sub_1013B7C88((a1 + 440), v188, &buf) + 121) = 1;
LABEL_144:
    if (SHIBYTE(theString1.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(theString1.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v194.__r_.__value_.__l.__data_);
    }

    goto LABEL_148;
  }

LABEL_354:
  if (v184)
  {
    sub_100004A34(v184);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v186.__r_.__value_.__l.__data_);
  }

  sub_10001021C(&theDict);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_1013A10AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, int a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, const void *a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a55 < 0)
  {
    operator delete(__p);
  }

  sub_100005978((v57 - 120));
  sub_100005978(&a44);
  if (v55)
  {
    sub_100004A34(v55);
  }

  if ((a12 & 1) == 0)
  {
    sub_100004A34(a10);
  }

  if (a29)
  {
    sub_100004A34(a29);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  sub_10001021C(&a42);
  if ((a16 & 1) == 0)
  {
    sub_100004A34(v56);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1013A153C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v51 = 0;
  v52 = 0;
  v8 = *(a1 + 656);
  v9 = *v8;
  v10 = *(v8 + 8);
  if (*v8 != v10)
  {
    while (!sub_100071DF8((*v9 + 24), a2))
    {
      v9 += 2;
      if (v9 == v10)
      {
        v9 = v10;
        break;
      }
    }

    v10 = *(v8 + 8);
  }

  if (v9 == v10)
  {
    if (v52 != 1)
    {
      goto LABEL_105;
    }

    v12 = 0;
    goto LABEL_97;
  }

  v11 = *v9;
  v12 = v9[1];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v11 && ((*(v11 + 48) & 1) != 0 || a4))
  {
    v13 = sub_100007A6C(a1 + 216, a2);
    v14 = v13;
    if (a1 + 224 != v13)
    {
      v15 = *(v13 + 79);
      if (v15 < 0)
      {
        v15 = *(v13 + 64);
      }

      if (v15)
      {
        v50 = 0;
        (*(**(a1 + 120) + 24))(__p);
        sub_100060DE8(&v50, __p);
        sub_10000A1EC(__p);
        if (!v50)
        {
LABEL_95:
          sub_100005978(&v50);
          goto LABEL_96;
        }

        theString1 = 0;
        v63 = @"DisplayNormalizedPhoneNumber";
        memset(__p, 0, sizeof(__p));
        sub_10005B328(__p, &v63, &v64, 1uLL);
        (*(*a1 + 128))(&v61, a1, a2, __p, kCFBooleanTrue);
        v16 = v61;
        LOBYTE(v54) = 0;
        if (v61)
        {
          v17 = CFGetTypeID(v61);
          if (v17 == CFBooleanGetTypeID())
          {
            ctu::cf::assign(&v54, v16, v18);
          }
        }

        v19 = v54;
        sub_10000A1EC(&v61);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        if (v19)
        {
          v48 = 0;
          if (*(v14 + 103) < 0)
          {
            sub_100005F2C(v44, *(v14 + 80), *(v14 + 88));
          }

          else
          {
            *v44 = *(v14 + 80);
            v45 = *(v14 + 96);
          }

          if (SHIBYTE(v45) < 0)
          {
            sub_100005F2C(&v61, v44[0], v44[1]);
          }

          else
          {
            v61 = *v44;
            v62 = v45;
          }

          v53 = 0;
          if (SHIBYTE(v62) < 0)
          {
            sub_100005F2C(__p, v61, *(&v61 + 1));
          }

          else
          {
            *__p = v61;
            __p[2] = v62;
          }

          v54 = 0;
          if (ctu::cf::convert_copy())
          {
            v20 = v53;
            v53 = v54;
            v63 = v20;
            sub_100005978(&v63);
          }

          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          v48 = v53;
          v53 = 0;
          sub_100005978(&v53);
          if (SHIBYTE(v62) < 0)
          {
            operator delete(v61);
          }

          if (SHIBYTE(v45) < 0)
          {
            operator delete(v44[0]);
          }

          *&v61 = 0;
          *&v61 = CFPhoneNumberCreate();
          if (v61)
          {
            String = CFPhoneNumberCreateString();
LABEL_63:
            v23 = theString1;
            theString1 = String;
            __p[0] = v23;
            sub_100005978(__p);
          }
        }

        else
        {
          v48 = 0;
          if (*(v14 + 79) < 0)
          {
            sub_100005F2C(__dst, *(v14 + 56), *(v14 + 64));
          }

          else
          {
            *__dst = *(v14 + 56);
            v47 = *(v14 + 72);
          }

          if (SHIBYTE(v47) < 0)
          {
            sub_100005F2C(&v61, __dst[0], __dst[1]);
          }

          else
          {
            v61 = *__dst;
            v62 = v47;
          }

          v53 = 0;
          if (SHIBYTE(v62) < 0)
          {
            sub_100005F2C(__p, v61, *(&v61 + 1));
          }

          else
          {
            *__p = v61;
            __p[2] = v62;
          }

          v54 = 0;
          if (ctu::cf::convert_copy())
          {
            v22 = v53;
            v53 = v54;
            v63 = v22;
            sub_100005978(&v63);
          }

          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

          v48 = v53;
          v53 = 0;
          sub_100005978(&v53);
          if (SHIBYTE(v62) < 0)
          {
            operator delete(v61);
          }

          if (SHIBYTE(v47) < 0)
          {
            operator delete(__dst[0]);
          }

          *&v61 = 0;
          *&v61 = CFPhoneNumberCreate();
          if (v61)
          {
            String = CFPhoneNumberCreateString();
            goto LABEL_63;
          }
        }

        sub_100936194(&v61);
        sub_100005978(&v48);
        if (!theString1)
        {
          v24 = *(a1 + 40);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(__p[0]) = 136315394;
            *(__p + 4) = "";
            WORD2(__p[1]) = 2080;
            *(&__p[1] + 6) = "";
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#W %s%sfail to build formatted phone number", __p, 0x16u);
          }

          goto LABEL_94;
        }

        *&v61 = 0;
        (*(**(a1 + 120) + 24))(__p);
        sub_100060DE8(&v61, __p);
        sub_10000A1EC(__p);
        if (!v61 || CFStringCompare(theString1, v61, 0))
        {
          if (v52 == 1)
          {
            sub_100222570(&v51, &theString1);
          }

          else
          {
            sub_10005C7A4(&v51, &theString1);
            LOBYTE(v52) = 1;
          }

          v25 = v61;
          v26 = *(a1 + 40);
          v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
          if (v25)
          {
            if (v27)
            {
              v28 = *(a2 + 23);
              v29 = (v28 & 0x80u) != 0;
              if ((v28 & 0x80u) != 0)
              {
                v28 = *(a2 + 8);
              }

              if (v29)
              {
                v30 = *a2;
              }

              else
              {
                v30 = a2;
              }

              if (v28)
              {
                v31 = v30;
              }

              else
              {
                v31 = "<invalid>";
              }

              LODWORD(__p[0]) = 136316162;
              *(__p + 4) = "";
              WORD2(__p[1]) = 2080;
              *(&__p[1] + 6) = "";
              HIWORD(__p[2]) = 2080;
              v56 = v31;
              v57 = 2112;
              v58 = v25;
              v59 = 2112;
              v60 = theString1;
              v32 = "#I %s%sreplacing formatted MDN for %s from '%@' to '%@'";
              v33 = v26;
              v34 = 52;
LABEL_92:
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, v32, __p, v34);
            }
          }

          else if (v27)
          {
            v35 = *(a2 + 23);
            v36 = (v35 & 0x80u) != 0;
            v37 = *a2;
            if ((v35 & 0x80u) != 0)
            {
              v35 = *(a2 + 8);
            }

            if (!v36)
            {
              v37 = a2;
            }

            if (v35)
            {
              v38 = v37;
            }

            else
            {
              v38 = "<invalid>";
            }

            LODWORD(__p[0]) = 136315906;
            *(__p + 4) = "";
            WORD2(__p[1]) = 2080;
            *(&__p[1] + 6) = "";
            HIWORD(__p[2]) = 2080;
            v56 = v38;
            v57 = 2112;
            v58 = theString1;
            v32 = "#I %s%ssetting formatted MDN for %s to '%@'";
            v33 = v26;
            v34 = 42;
            goto LABEL_92;
          }
        }

        sub_100005978(&v61);
LABEL_94:
        sub_100005978(&theString1);
        goto LABEL_95;
      }
    }
  }

LABEL_96:
  if ((v52 & 1) == 0)
  {
    v42 = 0;
    if (!v12)
    {
      return v42 & 1;
    }

    goto LABEL_103;
  }

LABEL_97:
  memset(__p, 0, sizeof(__p));
  ctu::cf::assign();
  v39 = __p[0];
  *&v61 = __p[1];
  *(&v61 + 7) = *(&__p[1] + 7);
  v40 = HIBYTE(__p[2]);
  if (*(a3 + 127) < 0)
  {
    operator delete(*(a3 + 104));
  }

  v41 = v61;
  *(a3 + 104) = v39;
  *(a3 + 112) = v41;
  *(a3 + 119) = *(&v61 + 7);
  *(a3 + 127) = v40;
  (*(**(a1 + 120) + 16))(*(a1 + 120), a2, @"formatted-mdn", v51, @"info", 0, 0, 0);
  v42 = v52;
  if (!v12)
  {
    if (v52)
    {
      v42 = 1;
LABEL_104:
      sub_100005978(&v51);
      return v42 & 1;
    }

LABEL_105:
    v42 = 0;
    return v42 & 1;
  }

LABEL_103:
  sub_100004A34(v12);
  if (v52)
  {
    goto LABEL_104;
  }

  return v42 & 1;
}

void sub_1013A1D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, int a23, const void *a24, const void *a25, const void *a26, __int16 a27, char a28, char a29, int a30, const void *a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_100005978(&a31);
  if (*(v39 - 105) < 0)
  {
    operator delete(*(v39 - 128));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a24);
  sub_100005978(&a25);
  if (v38)
  {
    sub_100004A34(v38);
  }

  if (a27 == 1)
  {
    sub_100005978(&a26);
  }

  _Unwind_Resume(a1);
}

void sub_1013A1ECC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = a4;
  *a1 = 0;
  a1[1] = 0;
  (*(**(a2 + 120) + 24))(cf);
  v9 = *cf;
  LODWORD(v31) = 0;
  if (*cf)
  {
    v10 = CFGetTypeID(*cf);
    if (v10 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&v31, v9, v11);
    }
  }

  v12 = v31;
  sub_10000A1EC(cf);
  if (a5)
  {
    v13 = v12 | v6;
  }

  else
  {
    v13 = v12 & ~v6;
  }

  if (v13 != v12)
  {
    v14 = *(a2 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a3 + 23);
      v17 = *a3;
      v16 = *(a3 + 8);
      v18 = asString();
      v19 = v15;
      *cf = 136316674;
      *&cf[4] = "";
      if (v15 >= 0)
      {
        v20 = a3;
      }

      else
      {
        v19 = v16;
        v20 = v17;
      }

      *&cf[14] = "";
      v21 = "data-only";
      if (!v13)
      {
        v21 = "voice+data";
      }

      *&cf[12] = 2080;
      v22 = v19 == 0;
      v23 = "<invalid>";
      v33 = 2080;
      if (!v22)
      {
        v23 = v20;
      }

      v34 = v23;
      v35 = 2080;
      v36 = v21;
      v37 = 2080;
      v38 = v18;
      v39 = 1024;
      v40 = v12;
      v41 = 1024;
      v42 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sPersonality %s marked as %s (update reason:%s, mask:0x%X->0x%X)", cf, 0x40u);
    }

    v24 = *(a2 + 120);
    if (v13)
    {
      v31 = 0;
      *cf = v13;
      v25 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, cf);
      if (v25)
      {
        v31 = v25;
        *cf = 0;
        sub_100029A48(cf);
        v26 = v31;
      }

      else
      {
        v26 = 0;
      }

      v31 = 0;
      sub_100029A48(&v31);
      (*(*v24 + 16))(v24, a3, @"data-only-plan", v26, @"info", 0, 0, 0, v26);
      sub_100029A48(&v30);
    }

    else
    {
      (*(*v24 + 32))(*(a2 + 120), a3, @"data-only-plan", @"info", 0, 0);
    }

    v27 = *(a2 + 656);
    v28 = *v27;
    v29 = v27[1];
    if (*v27 != v29)
    {
      while (!sub_100071DF8((*v28 + 24), a3) || *(*v28 + 49) || (isReal() & 1) == 0)
      {
        v28 += 16;
        if (v28 == v29)
        {
          v28 = v29;
          break;
        }
      }

      v29 = *(*(a2 + 656) + 8);
    }

    if (v28 != v29)
    {
      *cf = 0;
      *&cf[8] = 0;
      sub_1004CA38C();
    }
  }
}

void sub_1013A22B8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(a1 + 40))
      {
LABEL_40:
        sub_100004A34(v5);
        return;
      }

      v6 = (v3[52] + 16 * subscriber::simSlotAsInstance());
      v7 = v6[1];
      *v6 = 0;
      v6[1] = 0;
      if (v7)
      {
        sub_100004A34(v7);
      }

      v8 = v3[5];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = subscriber::asString();
        v10 = (a1 + 56);
        v11 = *(a1 + 79);
        v12 = v11;
        if ((v11 & 0x80u) != 0)
        {
          v11 = *(a1 + 64);
        }

        if (v12 < 0)
        {
          v10 = *(a1 + 56);
        }

        v24 = 136315906;
        v25 = "";
        v26 = 2080;
        if (!v11)
        {
          v10 = "<invalid>";
        }

        v27 = "";
        v28 = 2080;
        v29 = v9;
        v30 = 2080;
        v31 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sUntrusted CB Timer for slot %s (%s) expired", &v24, 0x2Au);
      }

      v13 = v3[82];
      v14 = *v13;
      v15 = *(v13 + 8);
      if (v14 != v15)
      {
        while (*(*v14 + 49) || *(*v14 + 52) != *(a1 + 80))
        {
          v14 += 2;
          if (v14 == v15)
          {
            goto LABEL_35;
          }
        }
      }

      if (v14 == v15)
      {
LABEL_35:
        v16 = 0;
      }

      else
      {
        v17 = *v14;
        v16 = v14[1];
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v17 && sub_100071DF8((v17 + 24), (a1 + 56)))
        {
          if ((*(v17 + 48) & 1) == 0)
          {
            v18 = v3[56];
            if (v18)
            {
              v19 = *(a1 + 80);
              v20 = (v3 + 56);
              do
              {
                if (*(v18 + 32) >= v19)
                {
                  v20 = v18;
                }

                v18 = *(v18 + 8 * (*(v18 + 32) < v19));
              }

              while (v18);
              if (v20 != (v3 + 56) && v19 >= *(v20 + 8))
              {
                v21 = v3[5];
                if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                {
                  v22 = subscriber::asString();
                  v24 = 136315650;
                  v25 = "";
                  v26 = 2080;
                  v27 = "";
                  v28 = 2080;
                  v29 = v22;
                  _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%ssimulating CB event in case incorrect ICCID was caught on slot %s", &v24, 0x20u);
                  v19 = *(a1 + 80);
                }

                sub_10139F448(v3, v19, v20 + 64);
              }
            }
          }

          goto LABEL_38;
        }
      }

      v23 = v3[5];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 136315394;
        v25 = "";
        v26 = 2080;
        v27 = "";
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%stimer ignored. Personality swapped", &v24, 0x16u);
      }

LABEL_38:
      if (v16)
      {
        sub_100004A34(v16);
      }

      goto LABEL_40;
    }
  }
}

void sub_1013A25B4(_Unwind_Exception *a1)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

char *sub_1013A25E4(char *result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 5) = *(a2 + 40);
  *(result + 6) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    return sub_100005F2C(result + 56, *(a2 + 56), *(a2 + 64));
  }

  v3 = *(a2 + 56);
  *(result + 9) = *(a2 + 72);
  *(result + 56) = v3;
  return result;
}

void sub_1013A2648(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013A2660(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1013A26B4(void *a1, __int128 *a2, char a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 1));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 2);
  }

  v7 = a3;
  v5 = a1[2];
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A2818(void *a1, __int128 *a2, int a3, char a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 1));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 2);
  }

  v9 = a3;
  v10 = a4;
  v7 = a1[2];
  if (v7)
  {
    if (std::__shared_weak_count::lock(v7))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A2B04(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1013A2B20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v8, *a2, *(a2 + 8));
  }

  else
  {
    *v8 = *a2;
    v9 = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v10, *a3, *(a3 + 8));
  }

  else
  {
    *v10 = *a3;
    v11 = *(a3 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v13 = *(a4 + 16);
  }

  v7 = a1[2];
  if (v7)
  {
    if (std::__shared_weak_count::lock(v7))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A2D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013A2D64(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A2EB8(void *a1, __int128 *a2, char a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 1));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 2);
  }

  v7 = a3;
  v5 = a1[2];
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A301C(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A3170(void *a1, __int128 *a2, char *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 1));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 2);
  }

  v7 = *a3;
  v5 = a1[2];
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A32D8(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v5 = *(a2 + 16);
  }

  v3 = a1[2];
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A342C(void *a1, __int128 *a2, char a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 1));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 2);
  }

  v7 = a3;
  v5 = a1[2];
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A3590(void *a1, uint64_t a2, const void *a3)
{
  cf = 0;
  if (a3)
  {
    v8 = a3;
    sub_1002A2218(&cf, &v8);
  }

  else
  {
    v5 = CFDictionaryCreate(0, 0, 0, 0, 0, 0);
    v6 = cf;
    cf = v5;
    v8 = v6;
    sub_10001021C(&v8);
  }

  v8 = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v10 = *(a2 + 16);
  }

  v11 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v7 = a1[2];
  if (v7)
  {
    if (std::__shared_weak_count::lock(v7))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A3754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_1013A377C(uint64_t a1@<X0>, char *a2@<X1>, const void **a3@<X8>)
{
  std::mutex::lock((a1 + 1232));
  v6 = *(a1 + 1304);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = a1 + 1304;
  do
  {
    v8 = sub_1000068BC((v6 + 32), a2);
    if ((v8 & 0x80u) == 0)
    {
      v7 = v6;
    }

    v6 = *(v6 + ((v8 >> 4) & 8));
  }

  while (v6);
  if (v7 == a1 + 1304 || (sub_1000068BC(a2, (v7 + 32)) & 0x80) != 0)
  {
LABEL_9:
    *a3 = 0;
  }

  else
  {
    sub_100010024(a3, (v7 + 56));
  }

  std::mutex::unlock((a1 + 1232));
}

const void **sub_1013A3834@<X0>(uint64_t a1@<X0>, void *a2@<X2>, const void *a3@<X3>, const void **a4@<X8>)
{
  v16 = 0;
  (*(*a1 + 112))(&cf);
  v7 = cf;
  theDict = cf;
  if (cf)
  {
    CFRetain(cf);
    sub_10001021C(&cf);
    v8 = a2[1] - *a2;
    if (v8)
    {
      v9 = 0;
      v10 = v8 >> 3;
      v11 = (v8 >> 3) - 1;
      do
      {
        v12 = CFGetTypeID(v7);
        if (v12 != CFDictionaryGetTypeID() || v9 >= v10)
        {
          break;
        }

        if (v9 >= (a2[1] - *a2) >> 3)
        {
          sub_1002030E0();
        }

        cf = CFDictionaryGetValue(theDict, *(*a2 + 8 * v9));
        sub_1000673E0(&theDict, &cf);
        if (v11 == v9)
        {
          sub_1000420D0(&v16, &theDict);
        }

        ++v9;
        v7 = theDict;
      }

      while (theDict);
    }

    else
    {
      sub_1000420D0(&v16, &theDict);
    }
  }

  else
  {
    sub_10001021C(&cf);
  }

  if (v16)
  {
    sub_100060E84(a4, &v16);
  }

  else if (a3)
  {
    *a4 = a3;
    CFRetain(a3);
  }

  else
  {
    *a4 = 0;
  }

  sub_10000A1EC(&theDict);
  return sub_10000A1EC(&v16);
}

void sub_1013A39B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

void sub_1013A39E0(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = *(a1 + 656);
  v11 = *v10;
  v12 = *(v10 + 8);
  if (*v10 != v12)
  {
    while (!sub_100071DF8((*v11 + 24), a2))
    {
      v11 += 2;
      if (v11 == v12)
      {
        v11 = v12;
        break;
      }
    }

    v12 = *(v10 + 8);
  }

  if (v11 == v12)
  {
    v13 = 0;
    goto LABEL_22;
  }

  v14 = *v11;
  v13 = v11[1];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v14 || a3[1] == *a3)
  {
    goto LABEL_22;
  }

  v15 = *(v14 + 49);
  if ((v15 - 2) < 2)
  {
    (*(*a1 + 120))(a1, a2, a3, a4);
    goto LABEL_23;
  }

  if (v15 != 1)
  {
    if (!*(v14 + 49))
    {
      ServiceMap = Registry::getServiceMap(*(a1 + 64));
      v17 = ServiceMap;
      if ((v18 & 0x8000000000000000) != 0)
      {
        v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
        v20 = 5381;
        do
        {
          v18 = v20;
          v21 = *v19++;
          v20 = (33 * v20) ^ v21;
        }

        while (v21);
      }

      std::mutex::lock(ServiceMap);
      v37 = v18;
      v22 = sub_100009510(&v17[1].__m_.__sig, &v37);
      if (v22)
      {
        v24 = v22[3];
        v23 = v22[4];
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v17);
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v23);
          if (!v24)
          {
            v25 = v23;
LABEL_50:
            sub_100004A34(v25);
            goto LABEL_22;
          }

          goto LABEL_43;
        }

        std::mutex::unlock(v17);
        if (v24)
        {
LABEL_43:
          (*(*v24 + 104))(v24, *(v14 + 52), 1, a3, a4, 0);
          if (!v23)
          {
            goto LABEL_23;
          }

          v36 = v23;
          goto LABEL_45;
        }
      }

      else
      {
        std::mutex::unlock(v17);
      }
    }

LABEL_22:
    *a5 = 0;
    goto LABEL_23;
  }

  v26 = Registry::getServiceMap(*(a1 + 64));
  v27 = v26;
  if ((v28 & 0x8000000000000000) != 0)
  {
    v29 = (v28 & 0x7FFFFFFFFFFFFFFFLL);
    v30 = 5381;
    do
    {
      v28 = v30;
      v31 = *v29++;
      v30 = (33 * v30) ^ v31;
    }

    while (v31);
  }

  std::mutex::lock(v26);
  v37 = v28;
  v32 = sub_100009510(&v27[1].__m_.__sig, &v37);
  if (v32)
  {
    v34 = v32[3];
    v33 = v32[4];
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v27);
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v33);
      v35 = 0;
      goto LABEL_36;
    }
  }

  else
  {
    v34 = 0;
  }

  std::mutex::unlock(v27);
  v33 = 0;
  v35 = 1;
LABEL_36:
  if (!v34)
  {
    goto LABEL_48;
  }

  v37 = 0;
  v38 = 0;
  (**v34)(&v37, v34, v14 + 24);
  if (!v37)
  {
    if (v38)
    {
      sub_100004A34(v38);
    }

LABEL_48:
    if ((v35 & 1) == 0)
    {
      v25 = v33;
      goto LABEL_50;
    }

    goto LABEL_22;
  }

  (*(*v37 + 120))(v37, a3, a4);
  if (v38)
  {
    sub_100004A34(v38);
  }

  if ((v35 & 1) == 0)
  {
    v36 = v33;
LABEL_45:
    sub_100004A34(v36);
  }

LABEL_23:
  if (v13)
  {
    sub_100004A34(v13);
  }
}

void sub_1013A3D34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1013A3D94(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (*(*(v1 + 656) + 8) - **(v1 + 656)) >> 4;
    LODWORD(buf[0].__locale_) = 136315650;
    *(&buf[0].__locale_ + 4) = "";
    WORD2(buf[1].__locale_) = 2080;
    *(&buf[1].__locale_ + 6) = "";
    HIWORD(buf[2].__locale_) = 2048;
    buf[3].__locale_ = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sPersonalities: %zu items", buf, 0x20u);
  }

  v4 = *(v1 + 656);
  v5 = *v4;
  v194 = v4[1];
  v197 = v1;
  if (*v4 != v194)
  {
    do
    {
      v6 = *(*v5 + 49);
      if (*(*v5 + 49))
      {
        v7 = v6 == 3;
      }

      else
      {
        v7 = 1;
      }

      v8 = v7;
      memset(__p, 0, 24);
      memset(v205, 0, 24);
      v203 = 0;
      v204 = 0uLL;
      v256 = 0;
      v254 = 0u;
      v255 = 0u;
      v252 = 0u;
      v253 = 0u;
      v250 = 0u;
      v251 = 0u;
      v248 = 0u;
      v249 = 0u;
      v246 = 0u;
      v247 = 0u;
      v245 = 0u;
      memset(v244, 0, sizeof(v244));
      memset(buf, 0, sizeof(buf));
      sub_10000C320(buf);
      theDict = 0;
      v202 = 0uLL;
      if ((v6 == 3 || !v6) && isReal())
      {
        (*(**(v1 + 120) + 24))(v242);
        memset(cf, 0, sizeof(cf));
        ctu::cf::assign();
        v9 = cf[0];
        *&v240 = cf[1];
        *(&v240 + 7) = *(&cf[1] + 7);
        v10 = HIBYTE(cf[2]);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        __p[0] = v9;
        __p[1] = v240;
        *(&__p[1] + 7) = *(&v240 + 7);
        HIBYTE(__p[2]) = v10;
        sub_10000A1EC(v242);
        (*(**(v1 + 120) + 24))(v242);
        memset(cf, 0, sizeof(cf));
        ctu::cf::assign();
        v11 = cf[0];
        *&v240 = cf[1];
        *(&v240 + 7) = *(&cf[1] + 7);
        v12 = HIBYTE(cf[2]);
        if (SHIBYTE(v205[2]) < 0)
        {
          operator delete(v205[0]);
        }

        v205[0] = v11;
        v205[1] = v240;
        *(&v205[1] + 7) = *(&v240 + 7);
        HIBYTE(v205[2]) = v12;
        sub_10000A1EC(v242);
        v13 = *v5;
        v239 = @"CarrierName";
        v240 = 0uLL;
        v241 = 0;
        sub_10005B328(&v240, &v239, &v240, 1uLL);
        (*(*v1 + 128))(&v200, v1, v13 + 24, &v240, 0);
        memset(cf, 0, sizeof(cf));
        ctu::cf::assign();
        v14 = cf[0];
        *v242 = cf[1];
        *&v242[7] = *(&cf[1] + 7);
        v15 = HIBYTE(cf[2]);
        if (SHIBYTE(v204) < 0)
        {
          operator delete(v203);
        }

        v203 = v14;
        *&v204 = *v242;
        *(&v204 + 7) = *&v242[7];
        HIBYTE(v204) = v15;
        sub_10000A1EC(&v200);
        if (v240)
        {
          *(&v240 + 1) = v240;
          operator delete(v240);
        }

        (*(**(v1 + 120) + 24))(v242);
        memset(cf, 0, sizeof(cf));
        ctu::cf::assign();
        v16 = cf[0];
        *&v240 = cf[1];
        *(&v240 + 7) = *(&cf[1] + 7);
        v17 = HIBYTE(cf[2]);
        if (SHIBYTE(v202) < 0)
        {
          operator delete(theDict);
        }

        theDict = v16;
        *&v202 = v240;
        *(&v202 + 7) = *(&v240 + 7);
        HIBYTE(v202) = v17;
        sub_10000A1EC(v242);
        v18 = *v5;
        if (*(*v5 + 96) == 1)
        {
          (*(**(v1 + 120) + 24))(cf);
          v19 = cf[0];
          LODWORD(v240) = 0;
          if (cf[0])
          {
            v20 = CFGetTypeID(cf[0]);
            if (v20 == CFNumberGetTypeID())
            {
              ctu::cf::assign(&v240, v19, v21);
            }
          }

          sub_10000A1EC(cf);
          v22 = sub_10000C030(&buf[2].__locale_, " data-only (0x", 14);
          *(v22 + *(*v22 - 24) + 8) = *(v22 + *(*v22 - 24) + 8) & 0xFFFFFFB5 | 8;
          v23 = std::ostream::operator<<();
          sub_10000C030(v23, ")", 1);
          v18 = *v5;
        }

        if (*(v18 + 63) == 1)
        {
          sub_10000C030(&buf[2].__locale_, " offload", 8);
          v18 = *v5;
        }

        if (*(v18 + 62) == 1)
        {
          sub_10000C030(&buf[2].__locale_, " bootstrap", 10);
        }
      }

      v24 = *(v1 + 40);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(*v5 + 14);
        v26 = PersonalityInfo::logPrefix(*v5);
        v27 = asString();
        v28 = *v5;
        v29 = *(*v5 + 47);
        v30 = (v29 & 0x80u) != 0;
        if ((v29 & 0x80u) != 0)
        {
          v29 = *(*v5 + 4);
        }

        v31 = v28 + 24;
        if (v30)
        {
          v31 = *(v28 + 3);
        }

        if (v29)
        {
          v32 = v31;
        }

        else
        {
          v32 = "<invalid>";
        }

        if (v6 == 3 || (v33 = "", !v6))
        {
          if (*(v28 + 61))
          {
            v33 = " (e)";
          }

          else
          {
            v33 = " (f)";
          }
        }

        v34 = " slot:";
        if (*(v28 + 49))
        {
          v34 = "";
        }

        v189 = v34;
        v35 = "";
        if (!*(v28 + 49))
        {
          v35 = subscriber::asString();
        }

        if (v8)
        {
          v36 = " cb:";
        }

        else
        {
          v36 = "";
        }

        v37 = v205;
        if (SHIBYTE(v205[2]) < 0)
        {
          v37 = v205[0];
        }

        v186 = v37;
        v187 = v36;
        if (SHIBYTE(__p[2]) >= 0)
        {
          v38 = __p;
        }

        else
        {
          v38 = __p[0];
        }

        v39 = v203;
        if (v204 >= 0)
        {
          v39 = &v203;
        }

        v188 = v33;
        v184 = v39;
        v185 = v38;
        v40 = v32;
        if (SHIBYTE(v202) < 0)
        {
          v42 = " ";
          if (!v202)
          {
            v42 = "";
          }

          v182 = v42;
          p_theDict = theDict;
        }

        else
        {
          if (HIBYTE(v202))
          {
            v41 = " ";
          }

          else
          {
            v41 = "";
          }

          v182 = v41;
          p_theDict = &theDict;
        }

        v43 = *v5;
        if (*(*v5 + 48))
        {
          v44 = "active";
        }

        else
        {
          v44 = "inactive";
        }

        if (v6 == 3 || (v45 = "", !v6))
        {
          if (*(v43 + 64))
          {
            v45 = ", turned OFF";
            if ((*(v43 + 65) & 1) == 0)
            {
              if (*(v43 + 66))
              {
                v45 = ", unauthorized";
              }

              else
              {
                v45 = "";
              }
            }
          }

          else
          {
            v45 = ", noSIM";
          }
        }

        v46 = (v43 + 72);
        if (*(v43 + 95) < 0)
        {
          v46 = *v46;
        }

        sub_100061574(buf, &v240);
        v47 = &v240;
        if (v241 < 0)
        {
          v47 = v240;
        }

        LODWORD(cf[0]) = 136319746;
        *(cf + 4) = "";
        WORD2(cf[1]) = 2080;
        *(&cf[1] + 6) = "";
        HIWORD(cf[2]) = 1024;
        *v208 = v25;
        *&v208[4] = 2080;
        *&v208[6] = v26;
        v209 = 2080;
        v210 = v27;
        v211 = 2080;
        v212 = v40;
        v213 = 2080;
        v214 = v188;
        v215 = 2080;
        v216 = v189;
        v217 = 2080;
        v218 = v35;
        v219 = 2080;
        v220 = v187;
        v221 = 2082;
        v222 = v186;
        v223 = 2082;
        v224 = v185;
        v225 = 2082;
        v226 = v184;
        v227 = 2080;
        v228 = v182;
        v229 = 2082;
        v230 = p_theDict;
        v231 = 2080;
        v232 = v44;
        v233 = 2080;
        v234 = v45;
        v235 = 2080;
        v236 = v46;
        v237 = 2082;
        v238 = v47;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%s | [%d] %s %-5s %s%s%s%s%s%{public}s:%{public}s %{public}s%s%{public}s - %s%s %s%{public}s", cf, 0xBCu);
        if (SHIBYTE(v241) < 0)
        {
          operator delete(v240);
        }

        v1 = v197;
      }

      if (SHIBYTE(v202) < 0)
      {
        operator delete(theDict);
      }

      buf[0].__locale_ = v192;
      *(&buf[0].__locale_ + *(v192 - 3)) = v191;
      buf[2].__locale_ = v190;
      if (SHIBYTE(v245) < 0)
      {
        operator delete(*(&v244[1] + 1));
      }

      std::locale::~locale(&buf[4]);
      std::iostream::~basic_iostream();
      std::ios::~ios();
      if (SHIBYTE(v204) < 0)
      {
        operator delete(v203);
      }

      if (SHIBYTE(v205[2]) < 0)
      {
        operator delete(v205[0]);
      }

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      v5 += 2;
    }

    while (v5 != v194);
  }

  v48 = *(v1 + 40);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf[0].__locale_) = 136315394;
    *(&buf[0].__locale_ + 4) = "";
    WORD2(buf[1].__locale_) = 2080;
    *(&buf[1].__locale_ + 6) = "";
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I %s%sLabel assignments:", buf, 0x16u);
  }

  v49 = *(v1 + 880);
  v50 = (v1 + 888);
  if (v49 != (v1 + 888))
  {
    v195 = (v1 + 952);
    v51 = @"unique-sim-label-store";
    do
    {
      theDict = 0;
      v52 = v49 + 13;
      if (*(v49 + 127) < 0)
      {
        sub_100005F2C(__dst, v49[13], v49[14]);
      }

      else
      {
        *__dst = *v52;
        v199 = v49[15];
      }

      if (SHIBYTE(v199) < 0)
      {
        sub_100005F2C(cf, __dst[0], __dst[1]);
      }

      else
      {
        *cf = *__dst;
        cf[2] = v199;
      }

      v203 = 0;
      v1 = v197;
      if (SHIBYTE(cf[2]) < 0)
      {
        sub_100005F2C(buf, cf[0], cf[1]);
      }

      else
      {
        *&buf[0].__locale_ = *cf;
        buf[2] = cf[2];
      }

      v205[0] = 0;
      if (ctu::cf::convert_copy())
      {
        v53 = v203;
        v203 = v205[0];
        __p[0] = v53;
        sub_100005978(__p);
      }

      if (SHIBYTE(buf[2].__locale_) < 0)
      {
        operator delete(buf[0].__locale_);
      }

      theDict = v203;
      v203 = 0;
      sub_100005978(&v203);
      if (SHIBYTE(cf[2]) < 0)
      {
        operator delete(cf[0]);
      }

      if (SHIBYTE(v199) < 0)
      {
        operator delete(__dst[0]);
      }

      v205[0] = 0;
      v54 = *(v197 + 104);
      cf[0] = v51;
      cf[1] = theDict;
      memset(buf, 0, 24);
      sub_10005B328(buf, cf, &cf[2], 2uLL);
      sub_10071C330(__p, v54, @"ts", buf, 0);
      sub_10010B240(v205, __p);
      sub_10000A1EC(__p);
      if (buf[0].__locale_)
      {
        buf[1] = buf[0];
        operator delete(buf[0].__locale_);
      }

      v55 = *(v197 + 40);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = v51;
        v57 = (v49 + 4);
        v58 = *(v49 + 55);
        v59 = (v58 & 0x80u) != 0;
        if ((v58 & 0x80u) != 0)
        {
          v58 = v49[5];
        }

        if (v59)
        {
          v57 = v49[4];
        }

        if (v58)
        {
          v60 = v57;
        }

        else
        {
          v60 = "<invalid>";
        }

        asString();
        if (SHIBYTE(cf[2]) >= 0)
        {
          v62 = cf;
        }

        else
        {
          v62 = cf[0];
        }

        __p[0] = 0;
        ctu::cf::assign(__p, v205[0], v61);
        v63 = __p[0];
        if (*(v197 + 976) != 1)
        {
          goto LABEL_147;
        }

        v64 = *(v49 + 127);
        if (v64 >= 0)
        {
          v65 = *(v49 + 127);
        }

        else
        {
          v65 = v49[14];
        }

        v66 = *(v197 + 975);
        v67 = v66;
        if ((v66 & 0x80u) != 0)
        {
          v66 = *(v197 + 960);
        }

        if (v65 == v66)
        {
          if (v64 >= 0)
          {
            v68 = v49 + 13;
          }

          else
          {
            v68 = *v52;
          }

          if (v67 >= 0)
          {
            v69 = v195;
          }

          else
          {
            v69 = *v195;
          }

          v70 = memcmp(v68, v69, v65);
          v71 = " -SUPER";
          if (v70)
          {
            v71 = "";
          }
        }

        else
        {
LABEL_147:
          v71 = "";
        }

        LODWORD(buf[0].__locale_) = 136316418;
        *(&buf[0].__locale_ + 4) = "";
        WORD2(buf[1].__locale_) = 2080;
        *(&buf[1].__locale_ + 6) = "";
        HIWORD(buf[2].__locale_) = 2080;
        buf[3].__locale_ = v60;
        LOWORD(buf[4].__locale_) = 2080;
        *(&buf[4].__locale_ + 2) = v62;
        WORD1(buf[5].__locale_) = 2048;
        *(&buf[5].__locale_ + 4) = v63;
        WORD2(buf[6].__locale_) = 2080;
        *(&buf[6].__locale_ + 6) = v71;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I %s%s | %s: %s dated:%ld%s", buf, 0x3Eu);
        if (SHIBYTE(cf[2]) < 0)
        {
          operator delete(cf[0]);
        }

        v1 = v197;
        v51 = v56;
      }

      sub_100029A48(v205);
      sub_100005978(&theDict);
      v72 = v49[1];
      if (v72)
      {
        do
        {
          v73 = v72;
          v72 = *v72;
        }

        while (v72);
      }

      else
      {
        do
        {
          v73 = v49[2];
          v7 = *v73 == v49;
          v49 = v73;
        }

        while (!v7);
      }

      v49 = v73;
    }

    while (v73 != v50);
  }

  v74 = v1;
  v75 = *(v1 + 904);
  v76 = (v74 + 912);
  if (v75 != (v74 + 912))
  {
    do
    {
      v77 = *(v197 + 40);
      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
      {
        v78 = v75[4];
        v79 = *(v75 + 55);
        v80 = v79;
        if ((v79 & 0x80u) != 0)
        {
          v79 = v75[5];
        }

        if (v80 >= 0)
        {
          v78 = (v75 + 4);
        }

        if (v79)
        {
          v81 = v78;
        }

        else
        {
          v81 = "<invalid>";
        }

        asString();
        if (SHIBYTE(cf[2]) >= 0)
        {
          v82 = cf;
        }

        else
        {
          v82 = cf[0];
        }

        LODWORD(buf[0].__locale_) = 136315906;
        *(&buf[0].__locale_ + 4) = "";
        WORD2(buf[1].__locale_) = 2080;
        *(&buf[1].__locale_ + 6) = "";
        HIWORD(buf[2].__locale_) = 2080;
        buf[3].__locale_ = v81;
        LOWORD(buf[4].__locale_) = 2080;
        *(&buf[4].__locale_ + 2) = v82;
        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, "#I %s%s | %s: thumper %s", buf, 0x2Au);
        if (SHIBYTE(cf[2]) < 0)
        {
          operator delete(cf[0]);
        }
      }

      v83 = v75[1];
      if (v83)
      {
        do
        {
          v84 = v83;
          v83 = *v83;
        }

        while (v83);
      }

      else
      {
        do
        {
          v84 = v75[2];
          v7 = *v84 == v75;
          v75 = v84;
        }

        while (!v7);
      }

      v75 = v84;
    }

    while (v84 != v76);
  }

  v85 = *(v197 + 928);
  if (v85 != (v197 + 936))
  {
    do
    {
      v86 = *(v197 + 40);
      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        v87 = v85[4];
        v88 = *(v85 + 55);
        v89 = v88;
        if ((v88 & 0x80u) != 0)
        {
          v88 = v85[5];
        }

        if (v89 >= 0)
        {
          v87 = (v85 + 4);
        }

        if (v88)
        {
          v90 = v87;
        }

        else
        {
          v90 = "<invalid>";
        }

        asString();
        if (SHIBYTE(cf[2]) >= 0)
        {
          v91 = cf;
        }

        else
        {
          v91 = cf[0];
        }

        LODWORD(buf[0].__locale_) = 136315906;
        *(&buf[0].__locale_ + 4) = "";
        WORD2(buf[1].__locale_) = 2080;
        *(&buf[1].__locale_ + 6) = "";
        HIWORD(buf[2].__locale_) = 2080;
        buf[3].__locale_ = v90;
        LOWORD(buf[4].__locale_) = 2080;
        *(&buf[4].__locale_ + 2) = v91;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "#I %s%s | %s: prefixed %s", buf, 0x2Au);
        if (SHIBYTE(cf[2]) < 0)
        {
          operator delete(cf[0]);
        }
      }

      v92 = v85[1];
      if (v92)
      {
        do
        {
          v93 = v92;
          v92 = *v92;
        }

        while (v92);
      }

      else
      {
        do
        {
          v93 = v85[2];
          v7 = *v93 == v85;
          v85 = v93;
        }

        while (!v7);
      }

      v85 = v93;
    }

    while (v93 != (v197 + 936));
  }

  std::mutex::lock((v197 + 984));
  v94 = v197;
  v95 = *(v197 + 40);
  if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
  {
    v96 = (v197 + 1160);
    if (*(v197 + 1183) < 0)
    {
      v96 = *v96;
    }

    LODWORD(buf[0].__locale_) = 136315650;
    *(&buf[0].__locale_ + 4) = "";
    WORD2(buf[1].__locale_) = 2080;
    *(&buf[1].__locale_ + 6) = "";
    HIWORD(buf[2].__locale_) = 2082;
    buf[3].__locale_ = v96;
    _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "#I %s%sbadges language: %{public}s", buf, 0x20u);
  }

  v97 = *(v197 + 1112);
  if (v97 != (v197 + 1120))
  {
    do
    {
      memset(__p, 0, 24);
      v98 = *(v94 + 1184);
      if (v98)
      {
        v101 = *(v98 + 8);
        v99 = v98 + 8;
        v100 = v101;
        if (v101)
        {
          v102 = *(v97 + 8);
          v103 = v99;
          do
          {
            if (*(v100 + 32) >= v102)
            {
              v103 = v100;
            }

            v100 = *(v100 + 8 * (*(v100 + 32) < v102));
          }

          while (v100);
          if (v103 != v99 && v102 >= *(v103 + 32))
          {
            asString();
            if (SHIBYTE(__p[2]) < 0)
            {
              operator delete(__p[0]);
            }

            *__p = *&buf[0].__locale_;
            __p[2] = buf[2].__locale_;
          }
        }
      }

      v104 = *(v94 + 40);
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        v105 = subscriber::asString();
        v106 = SHIBYTE(__p[2]);
        v107 = __p[0];
        memset(cf, 0, sizeof(cf));
        ctu::cf::assign();
        v108 = __p;
        if (v106 < 0)
        {
          v108 = v107;
        }

        *v205 = *cf;
        v205[2] = cf[2];
        v109 = cf[0];
        if (SHIBYTE(cf[2]) >= 0)
        {
          v109 = v205;
        }

        LODWORD(buf[0].__locale_) = 136316162;
        *(&buf[0].__locale_ + 4) = "";
        WORD2(buf[1].__locale_) = 2080;
        *(&buf[1].__locale_ + 6) = "";
        HIWORD(buf[2].__locale_) = 2080;
        buf[3].__locale_ = v105;
        LOWORD(buf[4].__locale_) = 2080;
        *(&buf[4].__locale_ + 2) = v108;
        WORD1(buf[5].__locale_) = 2080;
        *(&buf[5].__locale_ + 4) = v109;
        _os_log_impl(&_mh_execute_header, v104, OS_LOG_TYPE_DEFAULT, "#I %s%sbadge %s [%s] -> %s", buf, 0x34u);
        if (SHIBYTE(v205[2]) < 0)
        {
          operator delete(v205[0]);
        }

        v94 = v197;
      }

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      v110 = v97[1];
      if (v110)
      {
        do
        {
          v111 = v110;
          v110 = *v110;
        }

        while (v110);
      }

      else
      {
        do
        {
          v111 = v97[2];
          v7 = *v111 == v97;
          v97 = v111;
        }

        while (!v7);
      }

      v97 = v111;
    }

    while (v111 != (v197 + 1120));
  }

  std::mutex::unlock((v94 + 984));
  if (*(v94 + 552))
  {
    v256 = 0;
    v254 = 0u;
    v255 = 0u;
    v252 = 0u;
    v253 = 0u;
    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    v245 = 0u;
    memset(v244, 0, sizeof(v244));
    memset(buf, 0, sizeof(buf));
    sub_10000C320(buf);
    v94 = v197;
    v112 = *(v197 + 536);
    if (v112 != (v197 + 544))
    {
      v113 = 0;
      do
      {
        if (v113)
        {
          sub_10000C030(&buf[2].__locale_, ", ", 2);
        }

        v114 = *(v112 + 55);
        if (v114 >= 0)
        {
          v115 = (v112 + 4);
        }

        else
        {
          v115 = v112[4];
        }

        if (v114 >= 0)
        {
          v116 = *(v112 + 55);
        }

        else
        {
          v116 = v112[5];
        }

        sub_10000C030(&buf[2].__locale_, v115, v116);
        v117 = v112[1];
        if (v117)
        {
          do
          {
            v118 = v117;
            v117 = *v117;
          }

          while (v117);
        }

        else
        {
          do
          {
            v118 = v112[2];
            v7 = *v118 == v112;
            v112 = v118;
          }

          while (!v7);
        }

        ++v113;
        v112 = v118;
      }

      while (v118 != (v197 + 544));
    }

    v119 = *(v197 + 40);
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
    {
      sub_100061574(buf, __p);
      v120 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
      LODWORD(cf[0]) = 136315650;
      *(cf + 4) = "";
      WORD2(cf[1]) = 2080;
      *(&cf[1] + 6) = "";
      HIWORD(cf[2]) = 2080;
      *v208 = v120;
      _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "#I %s%shidden 4FF sims: [%s]", cf, 0x20u);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[2].__locale_ = v121;
    if (SHIBYTE(v245) < 0)
    {
      operator delete(*(&v244[1] + 1));
    }

    std::locale::~locale(&buf[4]);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  os_unfair_lock_lock((v94 + 608));
  if (*(v94 + 632))
  {
    v256 = 0;
    v254 = 0u;
    v255 = 0u;
    v252 = 0u;
    v253 = 0u;
    v250 = 0u;
    v251 = 0u;
    v248 = 0u;
    v249 = 0u;
    v246 = 0u;
    v247 = 0u;
    v245 = 0u;
    memset(v244, 0, sizeof(v244));
    memset(buf, 0, sizeof(buf));
    sub_10000C320(buf);
    v122 = *(v94 + 616);
    if (v122 != (v94 + 624))
    {
      v123 = 0;
      do
      {
        if (v123)
        {
          sub_10000C030(&buf[2].__locale_, ", ", 2);
        }

        v124 = *(v122 + 55);
        if (v124 >= 0)
        {
          v125 = (v122 + 4);
        }

        else
        {
          v125 = v122[4];
        }

        if (v124 >= 0)
        {
          v126 = *(v122 + 55);
        }

        else
        {
          v126 = v122[5];
        }

        sub_10000C030(&buf[2].__locale_, v125, v126);
        v127 = v122[1];
        if (v127)
        {
          do
          {
            v128 = v127;
            v127 = *v127;
          }

          while (v127);
        }

        else
        {
          do
          {
            v128 = v122[2];
            v7 = *v128 == v122;
            v122 = v128;
          }

          while (!v7);
        }

        ++v123;
        v122 = v128;
      }

      while (v128 != (v94 + 624));
    }

    v129 = *(v94 + 40);
    if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
    {
      sub_100061574(buf, __p);
      v130 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
      LODWORD(cf[0]) = 136315650;
      *(cf + 4) = "";
      WORD2(cf[1]) = 2080;
      *(&cf[1] + 6) = "";
      HIWORD(cf[2]) = 2080;
      *v208 = v130;
      _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "#I %s%sabandoned sims: [%s]", cf, 0x20u);
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }
    }

    buf[2].__locale_ = v131;
    if (SHIBYTE(v245) < 0)
    {
      operator delete(*(&v244[1] + 1));
    }

    std::locale::~locale(&buf[4]);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }

  os_unfair_lock_unlock((v94 + 608));
  theDict = 0;
  sub_100061A94(&buf[0].__locale_, @"label-remap-history", kDevicePersistentStoreDataArchive, 0);
  sub_100010180(&theDict, &buf[0].__locale_);
  sub_10000A1EC(&buf[0].__locale_);
  if (!theDict)
  {
    v178 = *(v197 + 40);
    if (!os_log_type_enabled(v178, OS_LOG_TYPE_DEFAULT))
    {
      return sub_10001021C(&theDict);
    }

    LODWORD(buf[0].__locale_) = 136315394;
    *(&buf[0].__locale_ + 4) = "";
    WORD2(buf[1].__locale_) = 2080;
    *(&buf[1].__locale_ + 6) = "";
    v179 = "#I %s%sLabelID remap journal is missing";
    v180 = v178;
LABEL_338:
    _os_log_impl(&_mh_execute_header, v180, OS_LOG_TYPE_DEFAULT, v179, buf, 0x16u);
    return sub_10001021C(&theDict);
  }

  Count = CFDictionaryGetCount(theDict);
  v133 = *(v197 + 40);
  v134 = os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT);
  if (!Count)
  {
    if (!v134)
    {
      return sub_10001021C(&theDict);
    }

    LODWORD(buf[0].__locale_) = 136315394;
    *(&buf[0].__locale_ + 4) = "";
    WORD2(buf[1].__locale_) = 2080;
    *(&buf[1].__locale_ + 6) = "";
    v179 = "#I %s%sLabelID remap journal is empty";
    v180 = v133;
    goto LABEL_338;
  }

  if (v134)
  {
    v135 = " (max)";
    LODWORD(buf[0].__locale_) = 136315906;
    if (Count != 30)
    {
      v135 = "";
    }

    *(&buf[0].__locale_ + 4) = "";
    WORD2(buf[1].__locale_) = 2080;
    *(&buf[1].__locale_ + 6) = "";
    HIWORD(buf[2].__locale_) = 1024;
    LODWORD(buf[3].__locale_) = Count;
    WORD2(buf[3].__locale_) = 2080;
    *(&buf[3].__locale_ + 6) = v135;
    _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "#I %s%sLabelID remap journal: %d element(s)%s", buf, 0x26u);
  }

  memset(cf, 0, sizeof(cf));
  sub_100222418(cf, Count);
  memset(__p, 0, 24);
  sub_10007D780(__p, Count);
  CFDictionaryGetKeysAndValues(theDict, cf[0], __p[0]);
  memset(v205, 0, 24);
  sub_1013B0250(v205, Count);
  for (i = 0; i != Count; i = (i + 1))
  {
    v137 = *(__p[0] + i);
    if (v137)
    {
      v138 = CFGetTypeID(*(__p[0] + i));
      if (v138 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(v137, @"ts");
        v140 = Value;
        if (Value && (v141 = CFGetTypeID(Value), v141 == CFNumberGetTypeID()))
        {
          v203 = 0;
          ctu::cf::assign(&v203, v140, v142);
          v143 = v203;
        }

        else
        {
          v143 = 0;
        }

        buf[0].__locale_ = i;
        buf[1].__locale_ = v143;
        sub_1013B02F4(v205, buf);
      }
    }
  }

  v144 = v205[0];
  v145 = v205[1];
  v146 = (v205[1] - v205[0]) >> 4;
  v147 = 126 - 2 * __clz(v146);
  if (v205[1] == v205[0])
  {
    v148 = 0;
  }

  else
  {
    v148 = v147;
  }

  sub_1013B2230(v205[0], v205[1], v148, 1);
  v193 = v144;
  if (v145 != v144)
  {
    v149 = 0;
    if (v146 <= 1)
    {
      v150 = 1;
    }

    else
    {
      v150 = v146;
    }

    v196 = v150;
    v151 = v144;
    do
    {
      v152 = *v151;
      v153 = *(cf[0] + *v151);
      if (v153)
      {
        v154 = CFGetTypeID(*(cf[0] + *v151));
        if (v154 == CFStringGetTypeID())
        {
          v155 = v153;
        }

        else
        {
          v155 = 0;
        }

        v152 = *v151;
      }

      else
      {
        v155 = 0;
      }

      v156 = *(__p[0] + v152);
      if (v156 && (v157 = CFGetTypeID(*(__p[0] + v152)), v157 == CFDictionaryGetTypeID()))
      {
        v158 = CFDictionaryGetValue(v156, @"to");
        v159 = v158;
        if (v158)
        {
          v160 = CFGetTypeID(v158);
          if (v160 == CFStringGetTypeID())
          {
            v161 = v159;
          }

          else
          {
            v161 = 0;
          }
        }

        else
        {
          v161 = 0;
        }

        v165 = CFDictionaryGetValue(v156, @"action");
        v166 = v165;
        if (v165)
        {
          v167 = CFGetTypeID(v165);
          if (v167 == CFStringGetTypeID())
          {
            v163 = v166;
          }

          else
          {
            v163 = 0;
          }
        }

        else
        {
          v163 = 0;
        }

        v168 = CFDictionaryGetValue(v156, @"from_dated");
        v169 = v168;
        buf[0].__locale_ = 0;
        if (v168)
        {
          v170 = CFGetTypeID(v168);
          if (v170 == CFNumberGetTypeID())
          {
            ctu::cf::assign(buf, v169, v171);
          }
        }

        locale = buf[0].__locale_;
        v172 = CFDictionaryGetValue(v156, @"to_dated");
        v173 = v172;
        buf[0].__locale_ = 0;
        if (v172)
        {
          v174 = CFGetTypeID(v172);
          if (v174 == CFNumberGetTypeID())
          {
            ctu::cf::assign(buf, v173, v175);
          }
        }

        v164 = buf[0].__locale_;
      }

      else
      {
        locale = -1;
        v163 = @"?";
        v161 = @"?";
        v164 = -1;
      }

      v176 = *(v197 + 40);
      if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
      {
        v177 = v151[1];
        LODWORD(buf[0].__locale_) = 136317186;
        *(&buf[0].__locale_ + 4) = "";
        WORD2(buf[1].__locale_) = 2080;
        *(&buf[1].__locale_ + 6) = "";
        HIWORD(buf[2].__locale_) = 2048;
        buf[3].__locale_ = v149;
        LOWORD(buf[4].__locale_) = 2114;
        *(&buf[4].__locale_ + 2) = v155;
        WORD1(buf[5].__locale_) = 2048;
        *(&buf[5].__locale_ + 4) = locale;
        WORD2(buf[6].__locale_) = 2114;
        *(&buf[6].__locale_ + 6) = v161;
        HIWORD(buf[7].__locale_) = 2048;
        *&v244[0] = v164;
        WORD4(v244[0]) = 2048;
        *(v244 + 10) = v177;
        WORD1(v244[1]) = 2114;
        *(&v244[1] + 4) = v163;
        _os_log_impl(&_mh_execute_header, v176, OS_LOG_TYPE_DEFAULT, "#I %s%s  %02zu: %{public}@ dated:%ld -> %{public}@ dated:%ld ts:%ld, %{public}@", buf, 0x5Cu);
      }

      v149 = (v149 + 1);
      v151 += 2;
    }

    while (v196 != v149);
    goto LABEL_340;
  }

  if (v144)
  {
LABEL_340:
    operator delete(v193);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (cf[0])
  {
    cf[1] = cf[0];
    operator delete(cf[0]);
  }

  return sub_10001021C(&theDict);
}

void sub_1013A5AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, os_unfair_lock_s *a28)
{
  sub_10068C9D8(&STACK[0x220]);
  os_unfair_lock_unlock(a28 + 152);
  _Unwind_Resume(a1);
}

void sub_1013A5D7C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 896) == 1)
  {
    __dst = 0uLL;
    v22 = 0;
    v4 = *(a1 + 880);
    if (*(v4 + 55) < 0)
    {
      sub_100005F2C(&__dst, *(v4 + 32), *(v4 + 40));
      v4 = *(a1 + 880);
    }

    else
    {
      __dst = *(v4 + 32);
      v22 = *(v4 + 48);
    }

    v20 = 0;
    v18 = 0u;
    *v19 = 0u;
    *v16 = 0u;
    *v17 = 0u;
    *v14 = 0u;
    v15 = 0u;
    *v12 = 0u;
    v13 = 0u;
    *v11 = 0u;
    sub_100DFECD0(v11, v4 + 56);
    v5 = *(a2 + 24) == 1 && sub_100071DF8(&__dst, a2);
    if (!sub_10139D330(a1, v11))
    {
      sub_1001696A4((a1 + 952), v14);
    }

    if (v5)
    {
      v6 = *(a1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = (SBYTE7(v15) & 0x80u) == 0 ? v14 : v14[0];
        strcpy(__p, "parked_super_label");
        v9 = unk_10195CC73;
        v10 = unk_10195CC74;
        *buf = 136315906;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        v24 = v7;
        v25 = 2080;
        v26 = __p;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%spark label '%s' with persona [%s]", buf, 0x2Au);
        if (SHIBYTE(v10) < 0)
        {
          operator delete(*__p);
        }
      }

      strcpy(buf, "parked_super_label");
      buf[19] = unk_10195CC73;
      *&buf[20] = unk_10195CC74;
      sub_1013A925C(a1, buf, (a1 + 952));
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19[0]);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17[1]);
    }

    if (SHIBYTE(v17[0]) < 0)
    {
      operator delete(v16[0]);
    }

    if (SBYTE7(v15) < 0)
    {
      operator delete(v14[0]);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12[1]);
    }

    if (SHIBYTE(v12[0]) < 0)
    {
      operator delete(v11[0]);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(__dst);
    }
  }
}

void sub_1013A6030(uint64_t a1, uint64_t a2, void *a3)
{
  v169 = 0;
  v168 = 0;
  v170 = 0;
  sub_10139D0E0(&v168, a2);
  v110 = a1;
  v6 = *(a2 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 896);
    v8 = *(a2 + 944);
    v9 = a3[2];
    *buf = 136316418;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2048;
    *&buf[24] = v7;
    *&buf[32] = 2048;
    *&buf[34] = v170;
    *&buf[42] = 2048;
    *&buf[44] = v8;
    *&buf[52] = 2048;
    *&buf[54] = v9;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sHave %zu labeled sims from which %zu present, + %zu prefixed labeled sims, %zu need labels", buf, 0x3Eu);
  }

  v167 = 0;
  v166 = 0;
  v165 = &v166;
  v111 = a3;
  v12 = *a3;
  v10 = a3 + 1;
  v11 = v12;
  if (v12 != v10)
  {
    while (1)
    {
      (*(**(a2 + 120) + 24))(buf);
      v13 = *buf;
      LOBYTE(v140[0]) = 0;
      if (*buf)
      {
        v14 = CFGetTypeID(*buf);
        if (v14 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(v140, v13, v15);
        }
      }

      v16 = LOBYTE(v140[0]);
      sub_10000A1EC(buf);
      if (v16 == 1)
      {
        v17 = *(a2 + 40);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(v11 + 55);
          v19 = (v18 & 0x80u) != 0;
          if ((v18 & 0x80u) != 0)
          {
            v18 = v11[5];
          }

          if (v19)
          {
            v20 = v11[4];
          }

          else
          {
            v20 = (v11 + 4);
          }

          v21 = v18 == 0;
          v22 = "<invalid>";
          if (!v21)
          {
            v22 = v20;
          }

          *buf = 136315650;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          *&buf[24] = v22;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sNeed to label bootstrap sim %s", buf, 0x20u);
        }

        sub_1013A8F04(v154, a2, (v11 + 4), "Provisioning", qword_101FCA9A8);
        if (v164 < 0)
        {
          operator delete(__p);
        }

        if (v162 < 0)
        {
          operator delete(v161);
        }

        if (v160 < 0)
        {
          operator delete(v159);
        }

        if (v158 < 0)
        {
          operator delete(v157);
        }

        if (v156 < 0)
        {
          operator delete(v155);
        }

        if ((v154[23] & 0x80000000) == 0)
        {
          goto LABEL_56;
        }

        v23 = v154;
      }

      else
      {
        (*(**(a2 + 120) + 24))(buf);
        v24 = *buf;
        LOBYTE(v140[0]) = 0;
        if (*buf)
        {
          v25 = CFGetTypeID(*buf);
          if (v25 == CFBooleanGetTypeID())
          {
            ctu::cf::assign(v140, v24, v26);
          }
        }

        v27 = LOBYTE(v140[0]);
        sub_10000A1EC(buf);
        if (v27 != 1)
        {
          sub_1013B731C(&v165, v11 + 4, (v11 + 4));
          goto LABEL_56;
        }

        v28 = *(a2 + 40);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = *(v11 + 55);
          v30 = (v29 & 0x80u) != 0;
          if ((v29 & 0x80u) != 0)
          {
            v29 = v11[5];
          }

          if (v30)
          {
            v31 = v11[4];
          }

          else
          {
            v31 = (v11 + 4);
          }

          v21 = v29 == 0;
          v32 = "<invalid>";
          if (!v21)
          {
            v32 = v31;
          }

          *buf = 136315650;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          *&buf[24] = v32;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%sNeed to label offload sim %s", buf, 0x20u);
        }

        sub_1013A8F04(v143, a2, (v11 + 4), "Other", qword_101FCA9C0);
        if (v153 < 0)
        {
          operator delete(v152);
        }

        if (v151 < 0)
        {
          operator delete(v150);
        }

        if (v149 < 0)
        {
          operator delete(v148);
        }

        if (v147 < 0)
        {
          operator delete(v146);
        }

        if (v145 < 0)
        {
          operator delete(v144);
        }

        if ((v143[23] & 0x80000000) == 0)
        {
          goto LABEL_56;
        }

        v23 = v143;
      }

      operator delete(*v23);
LABEL_56:
      v33 = v11[1];
      if (v33)
      {
        do
        {
          v34 = v33;
          v33 = *v33;
        }

        while (v33);
      }

      else
      {
        do
        {
          v34 = v11[2];
          v21 = *v34 == v11;
          v11 = v34;
        }

        while (!v21);
      }

      v11 = v34;
      if (v34 == v10)
      {
        v35 = v167;
        goto LABEL_64;
      }
    }
  }

  v35 = 0;
LABEL_64:
  v36 = v170 + v35;
  v38 = *(a2 + 896) < 2uLL && v36 < 2;
  v39 = *(a2 + 40);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = "MultiSim";
    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    if (v38)
    {
      v40 = "SingleSim";
    }

    *&buf[22] = 2080;
    *&buf[24] = v40;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%sLabeling mode is %s", buf, 0x20u);
  }

  v142 = 0;
  memset(v141, 0, sizeof(v141));
  *v140 = 0u;
  v41 = *(a2 + 880);
  v42 = (a2 + 888);
  if (v41 != (a2 + 888))
  {
    while (!sub_10139D330(a2, (v41 + 7)))
    {
      v43 = v41[1];
      if (v43)
      {
        do
        {
          v44 = v43;
          v43 = *v43;
        }

        while (v43);
      }

      else
      {
        do
        {
          v44 = v41[2];
          v21 = *v44 == v41;
          v41 = v44;
        }

        while (!v21);
      }

      v41 = v44;
      if (v44 == v42)
      {
        goto LABEL_93;
      }
    }

    if (*(v41 + 55) < 0)
    {
      sub_100005F2C(buf, v41[4], v41[5]);
    }

    else
    {
      *buf = *(v41 + 2);
      *&buf[16] = v41[6];
    }

    if (*(v41 + 127) < 0)
    {
      sub_100005F2C(&buf[24], v41[13], v41[14]);
    }

    else
    {
      *&buf[24] = *(v41 + 13);
      *&buf[40] = v41[15];
    }

    sub_1013A91A8(v140, buf);
    if ((buf[47] & 0x80000000) != 0)
    {
      operator delete(*&buf[24]);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

LABEL_93:
  v45 = a2 + 880;
  v46 = v165;
  if (v165 == &v166)
  {
    goto LABEL_261;
  }

  v112 = v38;
  do
  {
    v47 = v46 + 4;
    v48 = *(a2 + 40);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      v49 = *(v46 + 55);
      v50 = (v49 & 0x80u) != 0;
      if ((v49 & 0x80u) != 0)
      {
        v49 = v46[5];
      }

      if (v50)
      {
        v51 = v46[4];
      }

      else
      {
        v51 = (v46 + 4);
      }

      v21 = v49 == 0;
      v52 = "<invalid>";
      if (!v21)
      {
        v52 = v51;
      }

      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *&buf[24] = v52;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I %s%sNeed to label %s", buf, 0x20u);
    }

    if (v42 != sub_100007A6C(v45, v46 + 32))
    {
      __assert_rtn("createLabels", "PersonalityImpl.cpp", 3236, "fAssignedLabels.find(in_need) == fAssignedLabels.end()");
    }

    if (v170)
    {
      v53 = v38;
    }

    else
    {
      v53 = 1;
    }

    if (v53 == 1)
    {
      if (v142 == 1)
      {
        v54 = *(a2 + 40);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          v55 = &v141[1];
          if (SHIBYTE(v141[3]) < 0)
          {
            v55 = v141[1];
          }

          v56 = HIBYTE(v141[0]);
          if (SHIBYTE(v141[0]) < 0)
          {
            v56 = v140[1];
          }

          v57 = v140;
          if (SHIBYTE(v141[0]) < 0)
          {
            v57 = v140[0];
          }

          v58 = *(v46 + 55);
          v59 = (v58 & 0x80u) != 0;
          if ((v58 & 0x80u) != 0)
          {
            v58 = v46[5];
          }

          if (v59)
          {
            v60 = v46[4];
          }

          else
          {
            v60 = (v46 + 4);
          }

          if (v56)
          {
            v61 = v57;
          }

          else
          {
            v61 = "<invalid>";
          }

          if (v58)
          {
            v62 = v60;
          }

          else
          {
            v62 = "<invalid>";
          }

          *buf = 136316162;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          *&buf[24] = v55;
          *&buf[32] = 2080;
          *&buf[34] = v61;
          *&buf[42] = 2080;
          *&buf[44] = v62;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I %s%sReassigned label %s from '%s' to '%s'", buf, 0x34u);
        }

        sub_1013A925C(a2, (v46 + 4), &v141[1]);
        if (*(v46 + 55) < 0)
        {
          sub_100005F2C(buf, v46[4], v46[5]);
        }

        else
        {
          *buf = *v47;
          *&buf[16] = v46[6];
        }

        if (SHIBYTE(v141[3]) < 0)
        {
          sub_100005F2C(&buf[24], v141[1], v141[2]);
        }

        else
        {
          *&buf[24] = *&v141[1];
          *&buf[40] = v141[3];
        }

        sub_1013A91A8(v140, buf);
      }

      else
      {
        v81 = *(a2 + 40);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          v82 = *(v46 + 55);
          v83 = (v82 & 0x80u) != 0;
          if ((v82 & 0x80u) != 0)
          {
            v82 = v46[5];
          }

          if (v83)
          {
            v84 = v46[4];
          }

          else
          {
            v84 = (v46 + 4);
          }

          v21 = v82 == 0;
          v85 = "<invalid>";
          if (!v21)
          {
            v85 = v84;
          }

          *v182 = 136315650;
          *&v182[4] = "";
          v183 = 2080;
          v184 = "";
          v185 = 2080;
          v186 = v85;
          _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "#I %s%screating super label for %s", v182, 0x20u);
        }

        v181 = 0;
        *v180 = 0u;
        *v178 = 0u;
        v179 = 0u;
        v176 = 0u;
        *v177 = 0u;
        memset(buf, 0, sizeof(buf));
        sub_10000501C(v173, "");
        sub_10000501C(v171, "");
        v182[0] = 0;
        LOBYTE(v186) = 0;
        sub_1013AA2B0(buf, a2, (v46 + 4), v173, v171, v182);
        if (v172 < 0)
        {
          operator delete(v171[0]);
        }

        if (v174 < 0)
        {
          operator delete(v173[0]);
        }

        sub_1001696A4((a2 + 952), &buf[48]);
        if (*(v46 + 55) < 0)
        {
          sub_100005F2C(&__dst, v46[4], v46[5]);
        }

        else
        {
          *&__dst.__r_.__value_.__l.__data_ = *v47;
          __dst.__r_.__value_.__r.__words[2] = v46[6];
        }

        v138 = *&buf[48];
        v139 = v176;
        *&buf[56] = 0;
        *&v176 = 0;
        *&buf[48] = 0;
        sub_1013A91A8(v140, &__dst);
        if (SHIBYTE(v139) < 0)
        {
          operator delete(v138);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v181) < 0)
        {
          operator delete(v180[0]);
        }

        if (SHIBYTE(v179) < 0)
        {
          operator delete(v178[1]);
        }

        if (SHIBYTE(v178[0]) < 0)
        {
          operator delete(v177[0]);
        }

        if (SBYTE7(v176) < 0)
        {
          operator delete(*&buf[48]);
        }
      }

      if ((buf[47] & 0x80000000) != 0)
      {
        operator delete(*&buf[24]);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        v86 = *buf;
LABEL_217:
        operator delete(v86);
      }

      goto LABEL_218;
    }

    v63 = *(a2 + 40);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      v64 = *(v46 + 55);
      v65 = (v64 & 0x80u) != 0;
      if ((v64 & 0x80u) != 0)
      {
        v64 = v46[5];
      }

      if (v65)
      {
        v66 = v46[4];
      }

      else
      {
        v66 = (v46 + 4);
      }

      v21 = v64 == 0;
      v67 = "<invalid>";
      if (!v21)
      {
        v67 = v66;
      }

      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *&buf[24] = v67;
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I %s%screating default label for %s", buf, 0x20u);
    }

    if (!*(a2 + 896))
    {
LABEL_178:
      sub_10000501C(&__dst, "");
      sub_10000501C(v182, "USER_LABEL_PRIMARY");
      buf[0] = 0;
      buf[24] = 0;
      sub_1013AA2B0(v125, a2, (v46 + 4), &__dst, v182, buf);
      goto LABEL_179;
    }

    v68 = time(0);
    srand(v68);
    v69 = v45;
    for (i = 0; i != 3; ++i)
    {
      v71 = rand() % 5uLL + 1;
      v72 = *(a2 + 40);
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2048;
        *&buf[24] = i;
        *&buf[32] = 2048;
        *&buf[34] = v71;
        _os_log_debug_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEBUG, "#D %s%sdice %zu: %zu", buf, 0x2Au);
      }

      v73 = off_101F33090[v71];
      v74 = *v69;
      if (*v69 == v42)
      {
LABEL_162:
        sub_10000501C(&__dst, "");
        v45 = v69;
        v38 = v112;
        sub_10000501C(v182, v73);
        buf[0] = 0;
        buf[24] = 0;
        sub_1013AA2B0(v125, a2, (v46 + 4), &__dst, v182, buf);
        goto LABEL_179;
      }

      v75 = strlen(v73);
      v76 = *v69;
      while (1)
      {
        v77 = v76 + 10;
        v78 = *(v76 + 103);
        if ((v78 & 0x8000000000000000) == 0)
        {
          break;
        }

        if (v75 == v76[11])
        {
          if (v75 == -1)
          {
            sub_10013C334();
          }

          v77 = *v77;
          goto LABEL_152;
        }

LABEL_153:
        v79 = v76[1];
        if (v79)
        {
          do
          {
            v80 = v79;
            v79 = *v79;
          }

          while (v79);
        }

        else
        {
          do
          {
            v80 = v76[2];
            v21 = *v80 == v76;
            v76 = v80;
          }

          while (!v21);
        }

        v76 = v80;
        if (v80 == v42)
        {
          goto LABEL_162;
        }
      }

      if (v75 != v78)
      {
        goto LABEL_153;
      }

LABEL_152:
      if (memcmp(v77, v73, v75))
      {
        goto LABEL_153;
      }
    }

    for (j = 1; j != 6; ++j)
    {
      v90 = *(a2 + 40);
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2048;
        *&buf[24] = j;
        _os_log_debug_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEBUG, "#D %s%spassthrough %zu", buf, 0x20u);
        v74 = *v69;
      }

      v73 = off_101F33090[j];
      if (v74 == v42)
      {
        goto LABEL_162;
      }

      v91 = strlen(off_101F33090[j]);
      v92 = v74;
      while (1)
      {
        v93 = v92 + 10;
        v94 = *(v92 + 103);
        if ((v94 & 0x8000000000000000) == 0)
        {
          break;
        }

        if (v91 == v92[11])
        {
          if (v91 == -1)
          {
            sub_10013C334();
          }

          v93 = *v93;
          goto LABEL_235;
        }

LABEL_236:
        v95 = v92[1];
        if (v95)
        {
          do
          {
            v96 = v95;
            v95 = *v95;
          }

          while (v95);
        }

        else
        {
          do
          {
            v96 = v92[2];
            v21 = *v96 == v92;
            v92 = v96;
          }

          while (!v21);
        }

        v92 = v96;
        if (v96 == v42)
        {
          goto LABEL_162;
        }
      }

      if (v91 != v94)
      {
        goto LABEL_236;
      }

LABEL_235:
      if (memcmp(v93, v73, v91))
      {
        goto LABEL_236;
      }

      v38 = v112;
    }

    v97 = strlen("USER_LABEL_PRIMARY");
    v45 = v69;
    while (1)
    {
      v98 = v74 + 10;
      v99 = *(v74 + 103);
      if ((v99 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (v97 == v74[11])
      {
        if (v97 == -1)
        {
          sub_10013C334();
        }

        v98 = *v98;
        goto LABEL_252;
      }

LABEL_253:
      v100 = v74[1];
      if (v100)
      {
        do
        {
          v101 = v100;
          v100 = *v100;
        }

        while (v100);
      }

      else
      {
        do
        {
          v101 = v74[2];
          v21 = *v101 == v74;
          v74 = v101;
        }

        while (!v21);
      }

      v74 = v101;
      if (v101 == v42)
      {
        goto LABEL_178;
      }
    }

    if (v97 != v99)
    {
      goto LABEL_253;
    }

LABEL_252:
    if (memcmp(v98, "USER_LABEL_PRIMARY", v97))
    {
      goto LABEL_253;
    }

    v102 = rand();
    sub_10000501C(&__dst, "");
    sub_10000501C(v182, off_101F33090[v102 % 5uLL + 1]);
    buf[0] = 0;
    buf[24] = 0;
    sub_1013AA2B0(v125, a2, (v46 + 4), &__dst, v182, buf);
LABEL_179:
    if (SHIBYTE(v185) < 0)
    {
      operator delete(*v182);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (v136 < 0)
    {
      operator delete(v135);
    }

    if (v134 < 0)
    {
      operator delete(v133);
    }

    if (v132 < 0)
    {
      operator delete(v131);
    }

    if (v130 < 0)
    {
      operator delete(v129);
    }

    if (v128 < 0)
    {
      operator delete(v127);
    }

    if (v126 < 0)
    {
      v86 = v125[0];
      goto LABEL_217;
    }

LABEL_218:
    sub_1013B731C(&v168, v46 + 4, (v46 + 4));
    v87 = v46[1];
    if (v87)
    {
      do
      {
        v88 = v87;
        v87 = *v87;
      }

      while (v87);
    }

    else
    {
      do
      {
        v88 = v46[2];
        v21 = *v88 == v46;
        v46 = v88;
      }

      while (!v21);
    }

    v46 = v88;
  }

  while (v88 != &v166);
LABEL_261:
  if (!v38)
  {
    if (v142 == 1)
    {
      v103 = sub_100007A6C(v45, v140);
      v104 = v103;
      if (v42 != v103)
      {
        if ((*(v103 + 79) & 0x8000000000000000) != 0)
        {
          if (!*(v103 + 64))
          {
            goto LABEL_268;
          }
        }

        else if (!*(v103 + 79))
        {
LABEL_268:
          v105 = *(v103 + 103);
          if (v105 < 0)
          {
            v105 = *(v103 + 88);
          }

          if (!v105)
          {
            sub_10000501C(buf, "");
            sub_10000501C(&__dst, "USER_LABEL_PRIMARY");
            sub_1013A9B98(&v113, a2, v140, buf, &__dst, *(v104 + 128));
            if (v124 < 0)
            {
              operator delete(v123);
            }

            if (v122 < 0)
            {
              operator delete(v121);
            }

            if (v120 < 0)
            {
              operator delete(v119);
            }

            if (v118 < 0)
            {
              operator delete(v117);
            }

            if (v116 < 0)
            {
              operator delete(v115);
            }

            if (v114 < 0)
            {
              operator delete(v113);
            }

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }
          }
        }
      }
    }

    if (*(a2 + 976) == 1)
    {
      v106 = (a2 + 952);
      v107 = *(a2 + 40);
      if (!os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_292;
      }

      v108 = (a2 + 952);
      if (*(a2 + 975) < 0)
      {
        v108 = *v106;
      }

      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      *&buf[24] = v108;
      _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "#I %s%slabel %s stopped being super", buf, 0x20u);
      if (*(a2 + 976))
      {
LABEL_292:
        if (*(a2 + 975) < 0)
        {
          operator delete(*v106);
        }

        *(a2 + 976) = 0;
      }
    }
  }

  v109 = sub_100007A6C(v45, (*v111 + 32));
  if (v42 == v109)
  {
    v109 = sub_100007A6C(a2 + 928, (*v111 + 32));
  }

  sub_100DFECD0(v110, v109 + 56);
  if (v142 == 1)
  {
    if (SHIBYTE(v141[3]) < 0)
    {
      operator delete(v141[1]);
    }

    if (SHIBYTE(v141[0]) < 0)
    {
      operator delete(v140[0]);
    }
  }

  sub_100009970(&v165, v166);
  sub_100009970(&v168, v169);
}

void sub_1013A7370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (*(v65 - 121) < 0)
  {
    operator delete(*(v65 - 144));
  }

  if (a64 < 0)
  {
    operator delete(__p);
  }

  sub_10038E598(&a65);
  sub_100009970(&STACK[0x330], STACK[0x338]);
  sub_100009970(&STACK[0x348], STACK[0x350]);
  _Unwind_Resume(a1);
}

uint64_t sub_1013A74F4(uint64_t a1, void *a2)
{
  sub_10084A8C4(a1 + 32, a2);
  result = *(a1 + 24);
  if (result)
  {
    v4 = *(*result + 48);

    return v4();
  }

  return result;
}

uint64_t sub_1013A7564(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = sub_1007960D0(a1, a2 + 880);
  sub_100796128(v4, *(a2 + 904), (a2 + 912));
  return sub_100796128(a1, *(a2 + 928), (a2 + 936));
}

uint64_t sub_1013A75CC(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 880);
  v3 = (a1 + 888);
  if (v2 == (a1 + 888))
  {
    return 0;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  while (1)
  {
    v7 = *(v2 + 127);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = v2[14];
    }

    if (v7 == v5)
    {
      v9 = v8 >= 0 ? v2 + 13 : v2[13];
      if (!memcmp(v9, v6, v5))
      {
        break;
      }
    }

    v10 = v2[1];
    if (v10)
    {
      do
      {
        v11 = v10;
        v10 = *v10;
      }

      while (v10);
    }

    else
    {
      do
      {
        v11 = v2[2];
        v12 = *v11 == v2;
        v2 = v11;
      }

      while (!v12);
    }

    v2 = v11;
    if (v11 == v3)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1013A7698(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[5];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a2 + 23);
    v9 = (v8 & 0x80u) != 0;
    v10 = *a2;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(a2 + 8);
    }

    if (!v9)
    {
      v10 = a2;
    }

    if (v8)
    {
      v11 = v10;
    }

    else
    {
      v11 = "<invalid>";
    }

    LODWORD(v12[0]) = 136315650;
    *(v12 + 4) = "";
    WORD2(v12[1]) = 2080;
    *(&v12[1] + 6) = "";
    HIWORD(v12[2]) = 2080;
    v12[3] = v11;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "#D %s%sgetLocalizedSimLabel, %s", v12, 0x20u);
  }

  v20 = 0;
  v18 = 0u;
  *__p = 0u;
  *v16 = 0u;
  *v17 = 0u;
  *v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  (*(*a1 + 192))(v12, a1, a2);
  v7 = BYTE7(v15);
  if (SBYTE7(v15) < 0)
  {
    v7 = v14[1];
  }

  if (v7)
  {
    (*(*a1 + 168))(a1, v12);
  }

  else
  {
    *(a3 + 57) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0;
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[1]);
  }

  if (SHIBYTE(v17[0]) < 0)
  {
    operator delete(v16[0]);
  }

  if (SBYTE7(v15) < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[3]);
  }

  if (SHIBYTE(v12[2]) < 0)
  {
    operator delete(v12[0]);
  }
}

void sub_1013A78BC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a2 + 23);
    v10 = (v9 & 0x80u) != 0;
    v11 = *a2;
    if ((v9 & 0x80u) != 0)
    {
      v9 = *(a2 + 8);
    }

    if (!v10)
    {
      v11 = a2;
    }

    if (v9)
    {
      v12 = v11;
    }

    else
    {
      v12 = "<invalid>";
    }

    v13 = 136315650;
    v14 = "";
    v15 = 2080;
    v16 = "";
    v17 = 2080;
    v18 = v12;
    _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "#D %s%sgetRawSimLabel, %s", &v13, 0x20u);
  }

  std::mutex::lock((a1 + 984));
  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (v7 && *(a1 + 1104) == 1 && (v8 = sub_100007A6C(a1 + 1080, a2), a1 + 1088 != v8))
  {
    sub_100DFECD0(a3, v8 + 56);
  }

  else
  {
    *(a3 + 57) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0;
  }

  std::mutex::unlock((a1 + 984));
}

uint64_t sub_1013A7A44(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 984));
  v4 = *(a2 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (v4 && *(a1 + 1104) == 1 && a1 + 1088 != sub_100007A6C(a1 + 1080, a2))
  {
    theDict = 0;
    (*(**(a1 + 120) + 24))(&v13);
    sub_100010180(&theDict, &v13);
    sub_10000A1EC(&v13);
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"type");
      v6 = Value;
      if (Value)
      {
        v7 = CFGetTypeID(Value);
        if (v7 == CFStringGetTypeID() && CFStringCompare(v6, @"sim", 0) == kCFCompareEqualTo)
        {
          v10 = CFDictionaryGetValue(theDict, @"no_src");
          v11 = v10;
          if (!v10 || (v12 = CFGetTypeID(v10), v12 != CFBooleanGetTypeID()) || !CFBooleanGetValue(v11))
          {
            sub_10001021C(&theDict);
            v8 = 1;
            goto LABEL_12;
          }
        }
      }
    }

    sub_10001021C(&theDict);
  }

  v8 = 0;
LABEL_12:
  std::mutex::unlock((a1 + 984));
  return v8;
}

void sub_1013A7BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  std::mutex::unlock((v3 + 984));
  _Unwind_Resume(a1);
}

void sub_1013A7C04(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  v4 = (a2 + 8);
  *(a2 + 16) = 0;
  *a2 = a2 + 8;
  std::mutex::lock((a1 + 984));
  if (*(a1 + 1104) == 1)
  {
    v5 = *(a1 + 1080);
    if (v5 != (a1 + 1088))
    {
      do
      {
        theDict = 0;
        (*(**(a1 + 120) + 24))(buf);
        sub_100010180(&theDict, buf);
        sub_10000A1EC(buf);
        if (theDict)
        {
          Value = CFDictionaryGetValue(theDict, @"type");
          v7 = Value;
          if (Value)
          {
            v8 = CFGetTypeID(Value);
            if (v8 == CFStringGetTypeID() && CFStringCompare(v7, @"sim", 0) == kCFCompareEqualTo)
            {
              v9 = CFDictionaryGetValue(theDict, @"no_src");
              v10 = v9;
              if (!v9 || (v11 = CFGetTypeID(v9), v11 != CFBooleanGetTypeID()) || !CFBooleanGetValue(v10))
              {
                __p[0] = 0;
                __p[1] = 0;
                v25 = 0;
                CFDictionaryGetValue(theDict, @"mdn");
                memset(buf, 0, sizeof(buf));
                ctu::cf::assign();
                *__p = *buf;
                v25 = *&buf[16];
                v12 = *&buf[8];
                v13 = buf[23];
                if ((buf[23] & 0x80u) == 0)
                {
                  v12 = HIBYTE(*&buf[16]);
                }

                if (v12)
                {
                  sub_10017695C(a2, __p, __p);
                  v13 = HIBYTE(v25);
                }

                if ((v13 & 0x80) != 0)
                {
                  operator delete(__p[0]);
                }
              }
            }
          }
        }

        sub_10001021C(&theDict);
        v14 = v5[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v5[2];
            v16 = *v15 == v5;
            v5 = v15;
          }

          while (!v16);
        }

        v5 = v15;
      }

      while (v15 != (a1 + 1088));
    }
  }

  v17 = *(a1 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a2 + 16);
    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2048;
    v28 = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%s--- %zu MDNs from present labeled SIMs --", buf, 0x20u);
  }

  v19 = *a2;
  if (*a2 != v4)
  {
    do
    {
      v20 = *(a1 + 40);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v19 + 4;
        if (*(v19 + 55) < 0)
        {
          v21 = *v21;
        }

        *buf = 136315650;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        v28 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%s  %s", buf, 0x20u);
      }

      v22 = v19[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v19[2];
          v16 = *v23 == v19;
          v19 = v23;
        }

        while (!v16);
      }

      v19 = v23;
    }

    while (v23 != v4);
  }

  std::mutex::unlock((a1 + 984));
}

void sub_1013A7F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a17);
  std::mutex::unlock((v23 + 984));
  sub_100009970(v24, *(v24 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_1013A800C(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
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
    operator delete(*a1);
  }

  return a1;
}

void sub_1013A80A0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1013BC7A8;
  v5[3] = &unk_101F33BF8;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1013BC910;
    v10 = &unk_101F33C38;
    v11 = a2;
    v12 = &v6;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1013BC8A0;
    v10 = &unk_101F33C18;
    v11 = a2;
    v12 = &v6;
    dispatch_sync(v2, &block);
  }
}

void sub_1013A81C4(void *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v6 = v5;
      (*(*v3 + 24))(v3, v5);
    }

    else
    {
      v6 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v6 = 0;
  }

  v4 = a1[2];
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A83B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1013A83CC(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 + 8;
  v7 = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__p, *a2, *(a2 + 1));
  }

  else
  {
    __p = *a2;
    v9 = *(a2 + 2);
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_1013BCD80;
  v10[3] = &unk_101F33C58;
  v10[4] = v5;
  v10[5] = &v7;
  v11 = v10;
  v6 = *(a1 + 24);
  if (*(a1 + 32))
  {
    *(a3 + 144) = 0;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    block = _NSConcreteStackBlock;
    v13 = 0x40000000;
    v14 = sub_1013BD1E8;
    v15 = &unk_101F33C98;
    v16 = a3;
    v17 = &v11;
    dispatch_async_and_wait(v6, &block);
  }

  else
  {
    *(a3 + 144) = 0;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    block = _NSConcreteStackBlock;
    v13 = 0x40000000;
    v14 = sub_1013BD0D4;
    v15 = &unk_101F33C78;
    v16 = a3;
    v17 = &v11;
    dispatch_sync(v6, &block);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }
}

void sub_1013A8574(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v13, *a2, *(a2 + 8));
  }

  else
  {
    *v13 = *a2;
    v14 = *(a2 + 16);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v15, *a3, *(a3 + 8));
  }

  else
  {
    *v15 = *a3;
    v16 = *(a3 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v18 = *(a4 + 16);
  }

  v19 = a5;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 0x40000000;
  v20[2] = sub_1013BD2FC;
  v20[3] = &unk_101F33CB8;
  v20[4] = a1 + 8;
  v20[5] = &v12;
  v21 = v20;
  v11 = *(a1 + 24);
  if (*(a1 + 32))
  {
    *(a6 + 144) = 0;
    *(a6 + 112) = 0u;
    *(a6 + 128) = 0u;
    *(a6 + 80) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 48) = 0u;
    *(a6 + 64) = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0u;
    *a6 = 0u;
    block = _NSConcreteStackBlock;
    v23 = 0x40000000;
    v24 = sub_1013BD1E8;
    v25 = &unk_101F33C98;
    v26 = a6;
    v27 = &v21;
    dispatch_async_and_wait(v11, &block);
  }

  else
  {
    *(a6 + 144) = 0;
    *(a6 + 112) = 0u;
    *(a6 + 128) = 0u;
    *(a6 + 80) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 48) = 0u;
    *(a6 + 64) = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0u;
    *a6 = 0u;
    block = _NSConcreteStackBlock;
    v23 = 0x40000000;
    v24 = sub_1013BD0D4;
    v25 = &unk_101F33C78;
    v26 = a6;
    v27 = &v21;
    dispatch_sync(v11, &block);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }
}

void sub_1013A87AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013A87E0(void *a1, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v6, *a2, *(a2 + 1));
  }

  else
  {
    *v6 = *a2;
    v6[2] = *(a2 + 2);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&__p, *a3, *(a3 + 1));
  }

  else
  {
    __p = *a3;
    v8 = *(a3 + 2);
  }

  v5 = a1[2];
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A8988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013A89AC(void *a1, __int128 *a2, char a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 1));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 2);
  }

  v7 = a3;
  v5 = a1[2];
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013A8B10(uint64_t a1, uint64_t a2, _BOOL4 a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a2 + 23);
    v8 = (v7 & 0x80u) != 0;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 8);
    }

    if (v8)
    {
      v9 = *a2;
    }

    else
    {
      v9 = a2;
    }

    if (v7)
    {
      v10 = v9;
    }

    else
    {
      v10 = "<invalid>";
    }

    *buf = 136315906;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    v22 = v10;
    v23 = 2080;
    v24 = asStringBool(a3);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%smarkDidSetup, %s -> %s", buf, 0x2Au);
  }

  memset(buf, 0, sizeof(buf));
  v11 = *(a2 + 23);
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a2 + 8);
  }

  if (v11)
  {
    sub_1013A8D68(buf, a2);
  }

  else
  {
    v17 = *(a1 + 656);
    v18 = *v17;
    v19 = v17[1];
    while (v18 != v19)
    {
      if (!*(*v18 + 49))
      {
        sub_1013A8D68(buf, (*v18 + 24));
      }

      v18 += 16;
    }
  }

  v12 = *buf;
  v13 = *&buf[8];
  if (*buf != *&buf[8])
  {
    do
    {
      v14 = sub_100007A6C(a1 + 880, v12);
      if (a1 + 888 != v14)
      {
        *(v14 + 128) = a3;
      }

      v12 += 24;
    }

    while (v12 != v13);
    v12 = *buf;
    v13 = *&buf[8];
  }

  if (v12 != v13)
  {
    v15 = &kCFBooleanTrue;
    if (!a3)
    {
      v15 = &kCFBooleanFalse;
    }

    v16 = *v15;
    do
    {
      (*(**(a1 + 120) + 16))(*(a1 + 120), v12, @"label-id-confirmed", v16, @"info", 0, 0, 0);
      v12 += 24;
    }

    while (v12 != v13);
  }

  v20 = buf;
  sub_10005AAF8(&v20);
}

void sub_1013A8D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, char a11)
{
  a10 = &a11;
  sub_10005AAF8(&a10);
  _Unwind_Resume(a1);
}

char **sub_1013A8D68(char **result, __int128 *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000CE3D4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v23 = result;
    if (v10)
    {
      sub_100005348(result, v10);
    }

    v12 = 24 * v7;
    v20 = 0;
    v21 = 24 * v7;
    v22 = 24 * v7;
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(v12, *a2, *(a2 + 1));
      v12 = v21;
      v14 = v22;
    }

    else
    {
      v13 = *a2;
      *(24 * v7 + 0x10) = *(a2 + 2);
      *v12 = v13;
      v14 = 24 * v7;
    }

    *&v22 = v14 + 24;
    v15 = v3[1];
    v16 = (v12 + *v3 - v15);
    sub_10005A560(v3, *v3, v15, v16);
    v17 = *v3;
    *v3 = v16;
    v18 = v3[2];
    v19 = v22;
    *(v3 + 1) = v22;
    *&v22 = v17;
    *(&v22 + 1) = v18;
    v20 = v17;
    v21 = v17;
    result = sub_1000054E0(&v20);
    v11 = v19;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      result = sub_100005F2C(result[1], *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(v5 + 2) = *(a2 + 2);
      *v5 = v6;
    }

    v11 = v5 + 24;
    v3[1] = v5 + 24;
  }

  v3[1] = v11;
  return result;
}

void sub_1013A8F04(char *__dst, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v10 = *(a2 + 656);
  v11 = *v10;
  v12 = *(v10 + 8);
  if (*v10 != v12)
  {
    while (!sub_100071DF8((*v11 + 24), a3))
    {
      v11 += 2;
      if (v11 == v12)
      {
        v11 = v12;
        break;
      }
    }

    v12 = *(v10 + 8);
  }

  if (v11 == v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  *(__dst + 18) = 0;
  *(__dst + 7) = 0u;
  *(__dst + 8) = 0u;
  *(__dst + 5) = 0u;
  *(__dst + 6) = 0u;
  *(__dst + 3) = 0u;
  *(__dst + 4) = 0u;
  *(__dst + 1) = 0u;
  *(__dst + 2) = 0u;
  *__dst = 0u;
  memset(buf, 0, sizeof(buf));
  __p = 0uLL;
  v27 = 0;
  v24 = 0uLL;
  v25 = 0;
  v22 = 0uLL;
  v23 = 0;
  sub_1013B1DD4(__dst, a5, buf, a4, 1, &__p, &v24, &v22);
  v14 = *(a2 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a3 + 23);
    v17 = *a3;
    v16 = *(a3 + 8);
    asString();
    if ((v15 & 0x80u) == 0)
    {
      v18 = v15;
    }

    else
    {
      v18 = v16;
    }

    if ((v15 & 0x80u) == 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = v17;
    }

    p_p = __p;
    *buf = 136315906;
    if (!v18)
    {
      v19 = "<invalid>";
    }

    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    if (v27 >= 0)
    {
      p_p = &__p;
    }

    *&buf[22] = 2080;
    v29 = v19;
    v30 = 2080;
    v31 = p_p;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%screatePrefixedLabel, %s <- %s", buf, 0x2Au);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p);
    }
  }

  *buf = a3;
  v21 = sub_1013BBEE8((a2 + 928), a3, buf);
  std::string::operator=((v21 + 56), __dst);
  std::string::operator=((v21 + 80), __dst + 1);
  std::string::operator=((v21 + 104), __dst + 2);
  *(v21 + 128) = __dst[72];
  std::string::operator=((v21 + 136), (__dst + 80));
  std::string::operator=((v21 + 160), (__dst + 104));
  std::string::operator=((v21 + 184), (__dst + 128));
  if (v13)
  {
    sub_100004A34(v13);
  }
}

void sub_1013A917C(_Unwind_Exception *a1)
{
  sub_100FB0A00(v1);
  if (v2)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

std::string *sub_1013A91A8(std::string *__dst, std::string *__str)
{
  if (__dst[2].__r_.__value_.__s.__data_[0] == 1)
  {
    std::string::operator=(__dst, __str);
    if (SHIBYTE(__dst[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst[1].__r_.__value_.__l.__data_);
    }

    v4 = *&__str[1].__r_.__value_.__l.__data_;
    __dst[1].__r_.__value_.__r.__words[2] = __str[1].__r_.__value_.__r.__words[2];
    *&__dst[1].__r_.__value_.__l.__data_ = v4;
    *(&__str[1].__r_.__value_.__s + 23) = 0;
    __str[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(__dst, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v5 = *&__str->__r_.__value_.__l.__data_;
      __dst->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
      *&__dst->__r_.__value_.__l.__data_ = v5;
    }

    v6 = *&__str[1].__r_.__value_.__l.__data_;
    __dst[1].__r_.__value_.__r.__words[2] = __str[1].__r_.__value_.__r.__words[2];
    *&__dst[1].__r_.__value_.__l.__data_ = v6;
    __str[1].__r_.__value_.__l.__size_ = 0;
    __str[1].__r_.__value_.__r.__words[2] = 0;
    __str[1].__r_.__value_.__r.__words[0] = 0;
    __dst[2].__r_.__value_.__s.__data_[0] = 1;
  }

  return __dst;
}

void sub_1013A925C(uint64_t a1, std::string::size_type a2, const void **a3)
{
  v6 = *(a1 + 880);
  v7 = (a1 + 888);
  if (v6 != (a1 + 888))
  {
    v8 = *(a3 + 23);
    if (v8 >= 0)
    {
      v9 = *(a3 + 23);
    }

    else
    {
      v9 = a3[1];
    }

    if (v8 >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    while (1)
    {
      v11 = *(v6 + 127);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = v6[14];
      }

      if (v11 == v9)
      {
        v13 = v12 >= 0 ? v6 + 13 : v6[13];
        if (!memcmp(v13, v10, v9))
        {
          break;
        }
      }

      v14 = v6[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v6[2];
          v16 = *v15 == v6;
          v6 = v15;
        }

        while (!v16);
      }

      v6 = v15;
      if (v15 == v7)
      {
        goto LABEL_37;
      }
    }
  }

  if (v6 != v7)
  {
    if (sub_100071DF8(v6 + 4, a2))
    {
      v17 = *(a1 + 40);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a3 + 23) >= 0)
        {
          v18 = a3;
        }

        else
        {
          v18 = *a3;
        }

        v19 = *(a2 + 23);
        v20 = (v19 & 0x80u) != 0;
        if ((v19 & 0x80u) != 0)
        {
          v19 = *(a2 + 8);
        }

        if (v20)
        {
          v21 = *a2;
        }

        else
        {
          v21 = a2;
        }

        if (v19)
        {
          v22 = v21;
        }

        else
        {
          v22 = "<invalid>";
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
        *(buf.__r_.__value_.__r.__words + 4) = "";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v61 = v18;
        v62 = 2080;
        v63 = v22;
        v23 = "#W %s%sassignLabel, called for label %s to be assigned to it's own persona %s - suppressed";
        goto LABEL_50;
      }

      return;
    }

    __dst[0] = 0;
    __dst[1] = 0;
    v55 = 0;
    if (*(v6 + 55) < 0)
    {
      sub_100005F2C(__dst, v6[4], v6[5]);
    }

    else
    {
      *__dst = *(v6 + 2);
      v55 = v6[6];
    }

    v53 = 0;
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v51, *a3, a3[1]);
    }

    else
    {
      *v51 = *a3;
      v52 = a3[2];
    }

    if (SHIBYTE(v52) < 0)
    {
      sub_100005F2C(__p, v51[0], v51[1]);
    }

    else
    {
      *__p = *v51;
      *&v50 = v52;
    }

    v56 = 0;
    if (SBYTE7(v50) < 0)
    {
      sub_100005F2C(&buf, __p[0], __p[1]);
    }

    else
    {
      *&buf.__r_.__value_.__l.__data_ = *__p;
      buf.__r_.__value_.__r.__words[2] = v50;
    }

    v57 = 0;
    if (ctu::cf::convert_copy())
    {
      v29 = v56;
      v56 = v57;
      *v58 = v29;
      sub_100005978(v58);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v53 = v56;
    v56 = 0;
    sub_100005978(&v56);
    if (SBYTE7(v50) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v52) < 0)
    {
      operator delete(v51[0]);
    }

    *__p = 0u;
    v50 = 0u;
    v30 = sub_100007A6C(a1 + 880, a2);
    if (v7 != v30)
    {
      sub_1001696A4(__p, (v30 + 104));
    }

    buf.__r_.__value_.__r.__words[0] = a2;
    v31 = sub_1013BBEE8((a1 + 880), a2, &buf);
    std::string::operator=((v31 + 56), (v6 + 7));
    std::string::operator=((v31 + 80), (v6 + 10));
    std::string::operator=((v31 + 104), (v6 + 13));
    *(v31 + 128) = *(v6 + 128);
    std::string::operator=((v31 + 136), (v6 + 17));
    std::string::operator=((v31 + 160), (v6 + 20));
    std::string::operator=((v31 + 184), (v6 + 23));
    *(v31 + 128) = 0;
    v32 = *(a1 + 656);
    v33 = *v32;
    v34 = *(v32 + 8);
    if (*v32 != v34)
    {
      while (!sub_100071DF8((*v33 + 24), a2))
      {
        v33 += 2;
        if (v33 == v34)
        {
          v33 = v34;
          break;
        }
      }

      v34 = *(v32 + 8);
    }

    if (v33 == v34)
    {
      v36 = 0;
    }

    else
    {
      v35 = *v33;
      v36 = v33[1];
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v35)
      {
        if (*(v35 + 95) < 0)
        {
          sub_100005F2C(&buf, *(v35 + 72), *(v35 + 80));
        }

        else
        {
          buf = *(v35 + 72);
        }

        goto LABEL_86;
      }
    }

    memset(&buf, 0, sizeof(buf));
LABEL_86:
    std::string::operator=((v31 + 136), &buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    (*(**(a1 + 120) + 24))(&v57);
    memset(&buf, 0, sizeof(buf));
    ctu::cf::assign();
    *v58 = buf.__r_.__value_.__l.__size_;
    v37 = buf.__r_.__value_.__r.__words[0];
    *&v58[7] = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v38 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if (*(v31 + 183) < 0)
    {
      operator delete(*(v31 + 160));
    }

    v39 = *v58;
    *(v31 + 160) = v37;
    *(v31 + 168) = v39;
    *(v31 + 175) = *&v58[7];
    *(v31 + 183) = v38;
    sub_10000A1EC(&v57);
    v40 = *(a1 + 40);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = *(a2 + 23);
      v43 = *a2;
      v42 = *(a2 + 8);
      asString();
      if ((v41 & 0x80u) == 0)
      {
        v44 = v41;
      }

      else
      {
        v44 = v42;
      }

      if ((v41 & 0x80u) == 0)
      {
        v45 = a2;
      }

      else
      {
        v45 = v43;
      }

      v46 = *v58;
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
      if (!v44)
      {
        v45 = "<invalid>";
      }

      *(buf.__r_.__value_.__r.__words + 4) = "";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
      if (v59 >= 0)
      {
        v46 = v58;
      }

      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
      v61 = v45;
      v62 = 2080;
      v63 = v46;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I %s%sassignLabel, %s <- %s", &buf, 0x2Au);
      if (v59 < 0)
      {
        operator delete(*v58);
      }
    }

    sub_1013B7834((a1 + 880), __dst);
    (*(**(a1 + 120) + 32))(*(a1 + 120), __dst, @"label-id", @"info", 0, 0);
    (*(**(a1 + 120) + 32))(*(a1 + 120), __dst, @"label-id-confirmed", @"info", 0, 0);
    if (BYTE8(v50) == 1 && (sub_1013A75CC(a1, __p) & 1) == 0)
    {
      *v58 = @"unique-sim-label-store";
      memset(&buf, 0, sizeof(buf));
      sub_10005B328(&buf, v58, &v58[8], 1uLL);
      v48 = (SBYTE7(v50) & 0x80u) == 0 ? __p : __p[0];
      sub_10071C520(*(a1 + 104), v48, &buf, 0, v47);
      if (buf.__r_.__value_.__r.__words[0])
      {
        buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    (*(**(a1 + 120) + 16))(*(a1 + 120), a2, @"label-id", v53, @"info", 0, 0, 0);
    (*(**(a1 + 120) + 32))(*(a1 + 120), a2, @"label-id-confirmed", @"info", 0, 0);
    if (v36)
    {
      sub_100004A34(v36);
    }

    if (BYTE8(v50) == 1 && SBYTE7(v50) < 0)
    {
      operator delete(__p[0]);
    }

    sub_100005978(&v53);
    if (SHIBYTE(v55) < 0)
    {
      operator delete(__dst[0]);
    }

    return;
  }

LABEL_37:
  v17 = *(a1 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(a2 + 23);
    v25 = (v24 & 0x80u) != 0;
    if ((v24 & 0x80u) != 0)
    {
      v24 = *(a2 + 8);
    }

    if (v25)
    {
      v26 = *a2;
    }

    else
    {
      v26 = a2;
    }

    if (v24)
    {
      v27 = v26;
    }

    else
    {
      v27 = "<invalid>";
    }

    if (*(a3 + 23) >= 0)
    {
      v28 = a3;
    }

    else
    {
      v28 = *a3;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
    *(buf.__r_.__value_.__r.__words + 4) = "";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    v61 = v27;
    v62 = 2080;
    v63 = v28;
    v23 = "#W %s%sassignLabel, %s <- %s failed : label not found";
LABEL_50:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v23, &buf, 0x2Au);
  }
}

void sub_1013A9A84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (v42)
  {
    sub_100004A34(v42);
  }

  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a22);
  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void sub_1013A9B98(uint64_t a1, uint64_t a2, uint64_t a3, const std::string *a4, const std::string *a5, int a6)
{
  *buf = a3;
  v12 = sub_1013BBEE8((a2 + 880), a3, buf);
  std::string::operator=((v12 + 56), a4);
  std::string::operator=((v12 + 80), a5);
  *(v12 + 128) = a6;
  v13 = *(a2 + 40);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = (v12 + 104);
    if (*(v12 + 127) < 0)
    {
      v14 = v14->isa;
    }

    if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = a4;
    }

    else
    {
      v15 = a4->__r_.__value_.__r.__words[0];
    }

    if ((a5->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = a5;
    }

    else
    {
      v16 = a5->__r_.__value_.__r.__words[0];
    }

    v17 = *(a3 + 23);
    v18 = (v17 & 0x80u) != 0;
    if ((v17 & 0x80u) != 0)
    {
      v17 = *(a3 + 8);
    }

    if (v18)
    {
      v19 = *a3;
    }

    else
    {
      v19 = a3;
    }

    if (v17)
    {
      v20 = v19;
    }

    else
    {
      v20 = "<invalid>";
    }

    *buf = 136316418;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    v53 = v14;
    v54 = 2080;
    v55 = v15;
    v56 = 2080;
    v57 = v16;
    v58 = 2080;
    v59 = v20;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%supdateLabelText, %s <- text:%s (tag:%s) : belongs to %s", buf, 0x3Eu);
  }

  *buf = @"unique-sim-label-store";
  v45 = 0;
  v46 = 0;
  v44 = 0;
  sub_10005B328(&v44, buf, &buf[8], 1uLL);
  theDict = 0;
  v22 = (v12 + 104);
  v23 = (v12 + 104);
  if (*(v12 + 127) < 0)
  {
    v23 = *v22;
  }

  v36 = a1;
  sub_10071C448(v23, v21, buf, *(a2 + 104), &v44, 0);
  v24 = *buf;
  if (*buf && (v25 = CFGetTypeID(*buf), v25 == CFDictionaryGetTypeID()))
  {
    theDict = v24;
    CFRetain(v24);
  }

  else
  {
    theDict = 0;
  }

  sub_10000A1EC(buf);
  v42 = 0;
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
LABEL_32:
    v29 = v42;
    v42 = MutableCopy;
    *buf = v29;
    sub_1000296E0(buf);
    goto LABEL_33;
  }

  v27 = *(a2 + 40);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = (v12 + 104);
    if (*(v12 + 127) < 0)
    {
      v28 = *v22;
    }

    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    v53 = v28;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#W %s%supdateLabelText called for missing labelID %s", buf, 0x20u);
  }

  MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (MutableCopy)
  {
    goto LABEL_32;
  }

LABEL_33:
  v30 = v42;
  if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(__dst, a4->__r_.__value_.__l.__data_, a4->__r_.__value_.__l.__size_);
  }

  else
  {
    *__dst = *&a4->__r_.__value_.__l.__data_;
    v40 = a4->__r_.__value_.__r.__words[2];
  }

  if (SHIBYTE(v40) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v49 = v40;
  }

  v47 = 0;
  if (SHIBYTE(v49) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = v49;
  }

  v50 = 0;
  if (ctu::cf::convert_copy())
  {
    v31 = v47;
    v47 = v50;
    v51 = v31;
    sub_100005978(&v51);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  value = v47;
  v47 = 0;
  sub_100005978(&v47);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p[0]);
  }

  CFDictionarySetValue(v30, @"text", value);
  sub_100005978(&value);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__dst[0]);
  }

  v32 = v42;
  if (SHIBYTE(a5->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100005F2C(v37, a5->__r_.__value_.__l.__data_, a5->__r_.__value_.__l.__size_);
  }

  else
  {
    *v37 = *&a5->__r_.__value_.__l.__data_;
    v38 = a5->__r_.__value_.__r.__words[2];
  }

  if (SHIBYTE(v38) < 0)
  {
    sub_100005F2C(__p, v37[0], v37[1]);
  }

  else
  {
    *__p = *v37;
    v49 = v38;
  }

  v47 = 0;
  if (SHIBYTE(v49) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = v49;
  }

  v50 = 0;
  if (ctu::cf::convert_copy())
  {
    v33 = v47;
    v47 = v50;
    v51 = v33;
    sub_100005978(&v51);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v34 = v47;
  value = v47;
  v47 = 0;
  sub_100005978(&v47);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p[0]);
  }

  CFDictionarySetValue(v32, @"tag", v34);
  sub_100005978(&value);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }

  if (*(v12 + 127) < 0)
  {
    v22 = *v22;
  }

  sub_10071C350(*(a2 + 104), v22, v42, &v44, 0, 0, 0);
  v35 = &kCFBooleanTrue;
  if (!a6)
  {
    v35 = &kCFBooleanFalse;
  }

  (*(**(a2 + 120) + 16))(*(a2 + 120), a3, @"label-id-confirmed", *v35, @"info", 0, 0, 0);
  sub_100DFECD0(v36, v12 + 56);
  sub_1000296E0(&v42);
  sub_1000296E0(&theDict);
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }
}

void sub_1013AA18C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, uint64_t a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013AA2B0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  v12 = *(a2 + 656);
  v13 = *v12;
  v14 = *(v12 + 8);
  if (*v12 != v14)
  {
    while (!sub_100071DF8((*v13 + 24), a3))
    {
      v13 += 2;
      if (v13 == v14)
      {
        v13 = v14;
        break;
      }
    }

    v14 = *(v12 + 8);
  }

  if (v13 == v14)
  {
    v16 = 0;
LABEL_13:
    v67 = 0uLL;
    v68 = 0;
    goto LABEL_14;
  }

  v15 = *v13;
  v16 = v13[1];
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v67 = 0uLL;
  v68 = 0;
  if (!v15)
  {
    goto LABEL_13;
  }

  if (*(v15 + 95) < 0)
  {
    sub_100005F2C(&v67, *(v15 + 72), *(v15 + 80));
  }

  else
  {
    v67 = *(v15 + 72);
    v68 = *(v15 + 88);
  }

LABEL_14:
  v65 = 0uLL;
  v66 = 0;
  (*(**(a2 + 120) + 24))(&cf);
  __p[0] = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  *&v76 = 0;
  *buf = 0;
  sub_100060DE8(buf, __p);
  if (*buf)
  {
    sub_100222570(&v76, buf);
  }

  sub_100005978(buf);
  *&v62 = v76;
  *&v76 = 0;
  sub_100005978(&v76);
  sub_10000A1EC(__p);
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  v65 = *buf;
  v66 = *&buf[16];
  sub_100005978(&v62);
  sub_10000A1EC(&cf);
  v62 = 0uLL;
  v63 = 0;
  (*(**(a2 + 120) + 24))(&v61);
  __p[0] = v61;
  if (v61)
  {
    CFRetain(v61);
  }

  *&v76 = 0;
  *buf = 0;
  sub_100060DE8(buf, __p);
  if (*buf)
  {
    sub_100222570(&v76, buf);
  }

  sub_100005978(buf);
  v71 = v76;
  *&v76 = 0;
  sub_100005978(&v76);
  sub_10000A1EC(__p);
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  v62 = *buf;
  v63 = *&buf[16];
  sub_100005978(&v71);
  sub_10000A1EC(&v61);
  *(a1 + 144) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  if (*(a6 + 24) == 1)
  {
    if (*(a6 + 23) < 0)
    {
      sub_100005F2C(__p, *a6, *(a6 + 8));
    }

    else
    {
      *__p = *a6;
      *&v60 = *(a6 + 16);
    }
  }

  else
  {
    *&v76 = CFUUIDCreate(0);
    v71 = CFUUIDCreateString(0, v76);
    memset(buf, 0, sizeof(buf));
    ctu::cf::assign();
    *__p = *buf;
    *&v60 = *&buf[16];
    sub_100005978(&v71);
    sub_1000475BC(&v76);
  }

  sub_1013B1DD4(a1, __p, a4, a5, 0, &v67, &v65, &v62);
  if (SBYTE7(v60) < 0)
  {
    operator delete(__p[0]);
  }

  v17 = *(a2 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v48 = v16;
    v18 = *(a3 + 23);
    v19 = *a3;
    v20 = *(a3 + 8);
    asString();
    if ((v18 & 0x80u) == 0)
    {
      v21 = v18;
    }

    else
    {
      v21 = v20;
    }

    if ((v18 & 0x80u) == 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = v19;
    }

    v23 = __p[0];
    *buf = 136315906;
    if (!v21)
    {
      v22 = "<invalid>";
    }

    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    if ((SBYTE7(v60) & 0x80u) == 0)
    {
      v23 = __p;
    }

    *&buf[22] = 2080;
    v73 = v22;
    v74 = 2080;
    v75 = v23;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%screateNewLabel, %s <- %s", buf, 0x2Au);
    if (SBYTE7(v60) < 0)
    {
      operator delete(__p[0]);
    }

    v16 = v48;
  }

  v60 = 0u;
  *__p = 0u;
  v24 = sub_100007A6C(a2 + 880, a3);
  if (a2 + 888 != v24)
  {
    sub_1001696A4(__p, (v24 + 104));
    v25 = *(a2 + 40);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = __p;
      if (SBYTE7(v60) < 0)
      {
        v26 = __p[0];
      }

      v27 = *(a3 + 23);
      v28 = (v27 & 0x80u) != 0;
      if ((v27 & 0x80u) != 0)
      {
        v27 = *(a3 + 8);
      }

      if (v28)
      {
        v29 = *a3;
      }

      else
      {
        v29 = a3;
      }

      if (v27)
      {
        v30 = v29;
      }

      else
      {
        v30 = "<invalid>";
      }

      *buf = 136315906;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      v73 = v26;
      v74 = 2080;
      v75 = v30;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#W %s%slabel '%s' was assigned to %s. Will be destroyed", buf, 0x2Au);
    }
  }

  *buf = a3;
  v31 = sub_1013BBEE8((a2 + 880), a3, buf);
  std::string::operator=((v31 + 56), a1);
  std::string::operator=((v31 + 80), (a1 + 24));
  std::string::operator=((v31 + 104), (a1 + 48));
  *(v31 + 128) = *(a1 + 72);
  std::string::operator=((v31 + 136), (a1 + 80));
  std::string::operator=((v31 + 160), (a1 + 104));
  std::string::operator=((v31 + 184), (a1 + 128));
  v58 = 0;
  if (*(a1 + 71) < 0)
  {
    sub_100005F2C(__dst, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *__dst = *(a1 + 48);
    v57 = *(a1 + 64);
  }

  if (SHIBYTE(v57) < 0)
  {
    sub_100005F2C(&v76, __dst[0], __dst[1]);
  }

  else
  {
    v76 = *__dst;
    v77 = v57;
  }

  v69 = 0;
  if (SHIBYTE(v77) < 0)
  {
    sub_100005F2C(buf, v76, *(&v76 + 1));
  }

  else
  {
    *buf = v76;
    *&buf[16] = v77;
  }

  v70 = 0;
  if (ctu::cf::convert_copy())
  {
    v32 = v69;
    v69 = v70;
    v71 = v32;
    sub_100005978(&v71);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  v58 = v69;
  v69 = 0;
  sub_100005978(&v69);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(v76);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(__dst[0]);
  }

  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v34 = theDict;
    theDict = Mutable;
    *buf = v34;
    sub_1000296E0(buf);
  }

  v35 = theDict;
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(v52, *a1, *(a1 + 8));
  }

  else
  {
    *v52 = *a1;
    v53 = *(a1 + 16);
  }

  if (SHIBYTE(v53) < 0)
  {
    sub_100005F2C(&v76, v52[0], v52[1]);
  }

  else
  {
    v76 = *v52;
    v77 = v53;
  }

  v69 = 0;
  if (SHIBYTE(v77) < 0)
  {
    sub_100005F2C(buf, v76, *(&v76 + 1));
  }

  else
  {
    *buf = v76;
    *&buf[16] = v77;
  }

  v70 = 0;
  if (ctu::cf::convert_copy())
  {
    v36 = v69;
    v69 = v70;
    v71 = v36;
    sub_100005978(&v71);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  value = v69;
  v69 = 0;
  sub_100005978(&v69);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(v76);
  }

  CFDictionaryAddValue(v35, @"text", value);
  sub_100005978(&value);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52[0]);
  }

  if (*(a1 + 47) < 0)
  {
    v38 = *(a1 + 32);
    if (!v38)
    {
      goto LABEL_111;
    }

    v37 = theDict;
    sub_100005F2C(v50, *(a1 + 24), v38);
  }

  else
  {
    if (!*(a1 + 47))
    {
      goto LABEL_111;
    }

    v37 = theDict;
    *v50 = *(a1 + 24);
    v51 = *(a1 + 40);
  }

  if (SHIBYTE(v51) < 0)
  {
    sub_100005F2C(&v76, v50[0], v50[1]);
  }

  else
  {
    v76 = *v50;
    v77 = v51;
  }

  v69 = 0;
  if (SHIBYTE(v77) < 0)
  {
    sub_100005F2C(buf, v76, *(&v76 + 1));
  }

  else
  {
    *buf = v76;
    *&buf[16] = v77;
  }

  v70 = 0;
  if (ctu::cf::convert_copy())
  {
    v39 = v69;
    v69 = v70;
    v71 = v39;
    sub_100005978(&v71);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  value = v69;
  v69 = 0;
  sub_100005978(&v69);
  if (SHIBYTE(v77) < 0)
  {
    operator delete(v76);
  }

  CFDictionaryAddValue(v37, @"tag", value);
  sub_100005978(&value);
  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50[0]);
  }

LABEL_111:
  v69 = 0;
  if (*(a6 + 24) != 1)
  {
    goto LABEL_119;
  }

  *&v76 = @"unique-sim-label-store";
  *(&v76 + 1) = v58;
  memset(buf, 0, sizeof(buf));
  sub_10005B328(buf, &v76, &v77, 2uLL);
  sub_10071C330(&v49, *(a2 + 104), @"ts", buf, 0);
  v71 = v49;
  if (v49)
  {
    CFRetain(v49);
  }

  v70 = 0;
  *&v76 = 0;
  sub_10010B240(&v76, &v71);
  if (v76)
  {
    sub_1003F510C(&v70, &v76);
  }

  sub_100029A48(&v76);
  value = v70;
  v70 = 0;
  sub_100029A48(&v70);
  sub_10000A1EC(&v71);
  *&v76 = v69;
  v69 = value;
  value = 0;
  sub_100029A48(&v76);
  sub_100029A48(&value);
  sub_10000A1EC(&v49);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  v40 = v69;
  if (!v69)
  {
LABEL_119:
    v41 = time(0);
    *&v76 = 0;
    *buf = v41;
    v42 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, buf);
    if (v42)
    {
      v43 = v76;
      *&v76 = v42;
      *buf = v43;
      sub_100029A48(buf);
    }

    v71 = v76;
    *&v76 = 0;
    sub_100029A48(&v76);
    v44 = v69;
    v69 = v71;
    v71 = 0;
    *buf = v44;
    sub_100029A48(buf);
    sub_100029A48(&v71);
    v40 = v69;
  }

  CFDictionaryAddValue(theDict, @"ts", v40);
  *&v76 = @"unique-sim-label-store";
  memset(buf, 0, sizeof(buf));
  sub_10005B328(buf, &v76, &v76 + 1, 1uLL);
  if (*(a1 + 71) >= 0)
  {
    v45 = (a1 + 48);
  }

  else
  {
    v45 = *(a1 + 48);
  }

  sub_10071C350(*(a2 + 104), v45, theDict, buf, 0, 0, 0);
  if (BYTE8(v60) == 1 && (sub_1013A75CC(a2, __p) & 1) == 0)
  {
    if ((SBYTE7(v60) & 0x80u) == 0)
    {
      v47 = __p;
    }

    else
    {
      v47 = __p[0];
    }

    sub_10071C520(*(a2 + 104), v47, buf, 0, v46);
  }

  (*(**(a2 + 120) + 16))(*(a2 + 120), a3, @"label-id", v58, @"info", 0, 0, 0);
  (*(**(a2 + 120) + 32))(*(a2 + 120), a3, @"label-id-confirmed", @"info", 0, 0);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  sub_100029A48(&v69);
  sub_1000296E0(&theDict);
  sub_100005978(&v58);
  if (BYTE8(v60) == 1 && SBYTE7(v60) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
  }

  if (SHIBYTE(v66) < 0)
  {
    operator delete(v65);
  }

  if (SHIBYTE(v68) < 0)
  {
    operator delete(v67);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }
}

void sub_1013AAF0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, uint64_t a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, char a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (v58)
  {
    sub_100004A34(v58);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013AB290(uint64_t a1, __int128 *a2, uint64_t a3, const void *a4)
{
  v84 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v83 = *(a2 + 2);
  }

  if (SHIBYTE(v83) < 0)
  {
    sub_100005F2C(&v94, __dst, *(&__dst + 1));
  }

  else
  {
    v94 = __dst;
    v95 = v83;
  }

  v73 = 0;
  if (SHIBYTE(v95) < 0)
  {
    sub_100005F2C(valuePtr, v94, *(&v94 + 1));
  }

  else
  {
    *valuePtr = v94;
    *&valuePtr[16] = v95;
  }

  v76 = 0;
  if (ctu::cf::convert_copy())
  {
    v8 = v73;
    v73 = v76;
    __p[0] = v8;
    sub_100005978(__p);
  }

  if ((valuePtr[23] & 0x80000000) != 0)
  {
    operator delete(*valuePtr);
  }

  v84 = v73;
  v73 = 0;
  sub_100005978(&v73);
  if (SHIBYTE(v95) < 0)
  {
    operator delete(v94);
  }

  if (SHIBYTE(v83) < 0)
  {
    operator delete(__dst);
  }

  v81 = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v80 = *(a3 + 16);
  }

  if (SHIBYTE(v80) < 0)
  {
    sub_100005F2C(&v94, __p[0], __p[1]);
  }

  else
  {
    v94 = *__p;
    v95 = v80;
  }

  v66[0] = 0;
  if (SHIBYTE(v95) < 0)
  {
    sub_100005F2C(valuePtr, v94, *(&v94 + 1));
  }

  else
  {
    *valuePtr = v94;
    *&valuePtr[16] = v95;
  }

  v73 = 0;
  if (ctu::cf::convert_copy())
  {
    v9 = v66[0];
    v66[0] = v73;
    v76 = v9;
    sub_100005978(&v76);
  }

  if ((valuePtr[23] & 0x80000000) != 0)
  {
    operator delete(*valuePtr);
  }

  v81 = v66[0];
  v66[0] = 0;
  sub_100005978(v66);
  if (SHIBYTE(v95) < 0)
  {
    operator delete(v94);
  }

  if (SHIBYTE(v80) < 0)
  {
    operator delete(__p[0]);
  }

  *valuePtr = @"unique-sim-label-store";
  *&valuePtr[8] = v84;
  v77 = 0;
  v78 = 0;
  v76 = 0;
  sub_10005B328(&v76, valuePtr, &valuePtr[16], 2uLL);
  *valuePtr = @"unique-sim-label-store";
  *&valuePtr[8] = v81;
  v74 = 0;
  v75 = 0;
  v73 = 0;
  sub_10005B328(&v73, valuePtr, &valuePtr[16], 2uLL);
  v72 = 0;
  sub_10071C330(&cf, *(a1 + 104), @"ts", &v76, 0);
  *&v94 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v66[0] = 0;
  *valuePtr = 0;
  sub_10010B240(valuePtr, &v94);
  if (*valuePtr)
  {
    sub_1003F510C(v66, valuePtr);
  }

  sub_100029A48(valuePtr);
  v72 = v66[0];
  v66[0] = 0;
  sub_100029A48(v66);
  sub_10000A1EC(&v94);
  sub_10000A1EC(&cf);
  v70 = 0;
  sub_10071C330(&v69, *(a1 + 104), @"ts", &v73, 0);
  *&v94 = v69;
  if (v69)
  {
    CFRetain(v69);
  }

  v66[0] = 0;
  *valuePtr = 0;
  sub_10010B240(valuePtr, &v94);
  if (*valuePtr)
  {
    sub_1003F510C(v66, valuePtr);
  }

  sub_100029A48(valuePtr);
  v70 = v66[0];
  v66[0] = 0;
  sub_100029A48(v66);
  sub_10000A1EC(&v94);
  sub_10000A1EC(&v69);
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v11 = theDict;
    theDict = Mutable;
    *valuePtr = v11;
    sub_1000296E0(valuePtr);
  }

  v12 = theDict;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v66, *a3, *(a3 + 8));
  }

  else
  {
    *v66 = *a3;
    v67 = *(a3 + 16);
  }

  if (SHIBYTE(v67) < 0)
  {
    sub_100005F2C(&v94, v66[0], v66[1]);
  }

  else
  {
    v94 = *v66;
    v95 = v67;
  }

  values = 0;
  if (SHIBYTE(v95) < 0)
  {
    sub_100005F2C(valuePtr, v94, *(&v94 + 1));
  }

  else
  {
    *valuePtr = v94;
    *&valuePtr[16] = v95;
  }

  v60[0] = 0;
  if (ctu::cf::convert_copy())
  {
    v13 = values;
    values = v60[0];
    v63 = v13;
    sub_100005978(&v63);
  }

  if ((valuePtr[23] & 0x80000000) != 0)
  {
    operator delete(*valuePtr);
  }

  value = values;
  values = 0;
  sub_100005978(&values);
  if (SHIBYTE(v95) < 0)
  {
    operator delete(v94);
  }

  CFDictionarySetValue(v12, @"to", value);
  sub_100005978(&value);
  if (SHIBYTE(v67) < 0)
  {
    operator delete(v66[0]);
  }

  v14 = theDict;
  v15 = time(0);
  *&v94 = 0;
  *valuePtr = v15;
  v16 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, valuePtr);
  if (v16)
  {
    v17 = v94;
    *&v94 = v16;
    *valuePtr = v17;
    sub_100029A48(valuePtr);
  }

  v63 = v94;
  *&v94 = 0;
  sub_100029A48(&v94);
  CFDictionarySetValue(v14, @"ts", v63);
  sub_100029A48(&v63);
  CFDictionarySetValue(theDict, @"action", a4);
  if (v72)
  {
    CFDictionarySetValue(theDict, @"from_dated", v72);
  }

  if (v70)
  {
    CFDictionarySetValue(theDict, @"to_dated", v70);
  }

  *valuePtr = @"label-remap-history";
  v64 = 0;
  v65 = 0;
  v63 = 0;
  sub_10005B328(&v63, valuePtr, &valuePtr[8], 1uLL);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v60, *a2, *(a2 + 1));
  }

  else
  {
    *v60 = *a2;
    v61 = *(a2 + 2);
  }

  if (SHIBYTE(v61) < 0)
  {
    sub_100005F2C(&v94, v60[0], v60[1]);
  }

  else
  {
    v94 = *v60;
    v95 = v61;
  }

  v85 = 0;
  if (SHIBYTE(v95) < 0)
  {
    sub_100005F2C(valuePtr, v94, *(&v94 + 1));
  }

  else
  {
    *valuePtr = v94;
    *&valuePtr[16] = v95;
  }

  value = 0;
  if (ctu::cf::convert_copy())
  {
    v18 = v85;
    v85 = value;
    values = v18;
    sub_100005978(&values);
  }

  v19 = kDevicePersistentStoreDataArchive;
  if ((valuePtr[23] & 0x80000000) != 0)
  {
    operator delete(*valuePtr);
  }

  MutableCopy = v85;
  v85 = 0;
  sub_100005978(&v85);
  if (SHIBYTE(v95) < 0)
  {
    operator delete(v94);
  }

  sub_10071A6F8(v19, MutableCopy, theDict, &v63);
  sub_100005978(&MutableCopy);
  if (SHIBYTE(v61) < 0)
  {
    operator delete(v60[0]);
  }

  v85 = 0;
  sub_100061A94(valuePtr, @"label-remap-history", v19, 0);
  sub_100010180(&v85, valuePtr);
  sub_10000A1EC(valuePtr);
  if (v85)
  {
    Count = CFDictionaryGetCount(v85);
    if (Count >= 0x1F)
    {
      MutableCopy = 0;
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v85);
      v94 = 0uLL;
      v95 = 0;
      sub_100222418(&v94, Count);
      values = 0;
      v58 = 0;
      v59 = 0;
      sub_10007D780(&values, Count);
      CFDictionaryGetKeysAndValues(MutableCopy, v94, values);
      v53 = v19;
      value = 0;
      v55 = 0;
      v56 = 0;
      sub_1013B0250(&value, Count);
      v52 = a3;
      for (i = 0; i != Count; ++i)
      {
        v22 = values[i];
        if (v22 && (v23 = CFGetTypeID(values[i]), v23 == CFDictionaryGetTypeID()) && (v24 = CFDictionaryGetValue(v22, @"ts"), (v25 = v24) != 0) && (v26 = CFGetTypeID(v24), v26 == CFNumberGetTypeID()))
        {
          *valuePtr = 0;
          ctu::cf::assign(valuePtr, v25, v27);
          v28 = *valuePtr;
        }

        else
        {
          v28 = 0;
        }

        *valuePtr = i;
        *&valuePtr[8] = v28;
        sub_1013B02F4(&value, valuePtr);
      }

      v29 = value;
      v30 = 126 - 2 * __clz((v55 - value) >> 4);
      if (v55 == value)
      {
        v31 = 0;
      }

      else
      {
        v31 = v30;
      }

      sub_1013B2230(value, v55, v31, 1);
      v32 = Count - 30;
      v51 = v29;
      v33 = v29;
      do
      {
        v34 = values[*v33];
        if (v34 && (v35 = CFGetTypeID(values[*v33]), v35 == CFDictionaryGetTypeID()))
        {
          v36 = CFDictionaryGetValue(v34, @"to");
          v37 = v36;
          if (v36)
          {
            v38 = CFGetTypeID(v36);
            if (v38 == CFStringGetTypeID())
            {
              v39 = v37;
            }

            else
            {
              v39 = 0;
            }
          }

          else
          {
            v39 = 0;
          }

          v41 = CFDictionaryGetValue(v34, @"action");
          v40 = v41;
          if (v41)
          {
            v42 = CFGetTypeID(v41);
            if (v42 != CFStringGetTypeID())
            {
              v40 = 0;
            }
          }
        }

        else
        {
          v39 = @"?";
          v40 = @"?";
        }

        v43 = *(a1 + 40);
        v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
        v45 = *v33;
        if (v44)
        {
          v46 = *(v94 + 8 * v45);
          v47 = v33[1];
          *valuePtr = 136316418;
          *&valuePtr[4] = "";
          *&valuePtr[12] = 2080;
          *&valuePtr[14] = "";
          *&valuePtr[22] = 2114;
          v87 = v46;
          v88 = 2114;
          v89 = v39;
          v90 = 2048;
          v91 = v47;
          v92 = 2114;
          v93 = v40;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I %s%sremoving oldest record from remap journal: %{public}@ -> %{public}@ ts:%ld, %{public}@", valuePtr, 0x3Eu);
          v45 = *v33;
        }

        CFDictionaryRemoveValue(MutableCopy, *(v94 + 8 * v45));
        v33 += 2;
        --v32;
      }

      while (v32);
      sub_10071A6F8(v53, @"label-remap-history", MutableCopy, 0);
      operator delete(v51);
      a3 = v52;
      if (values)
      {
        v58 = values;
        operator delete(values);
      }

      v19 = v53;
      if (v94)
      {
        *(&v94 + 1) = v94;
        operator delete(v94);
      }

      sub_1000296E0(&MutableCopy);
    }
  }

  else
  {
    v48 = *(a1 + 40);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 136315650;
      *&valuePtr[4] = "";
      *&valuePtr[12] = 2080;
      *&valuePtr[14] = "";
      *&valuePtr[22] = 2112;
      v87 = @"label-remap-history";
      _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "#E %s%sfailed to read %@ on updateRemapHistory", valuePtr, 0x20u);
    }
  }

  sub_10071A9CC(v19);
  sub_10001021C(&v85);
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  sub_1000296E0(&theDict);
  sub_100029A48(&v70);
  sub_100029A48(&v72);
  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }

  if (v76)
  {
    v77 = v76;
    operator delete(v76);
  }

  sub_100005978(&v81);
  sub_100005978(&v84);
  *&v94 = @"unique-sim-label-store";
  memset(valuePtr, 0, sizeof(valuePtr));
  sub_10005B328(valuePtr, &v94, &v94 + 1, 1uLL);
  if (*(a2 + 23) >= 0)
  {
    v50 = a2;
  }

  else
  {
    v50 = *a2;
  }

  sub_10071C520(*(a1 + 104), v50, valuePtr, 0, v49);
  (*(**(a1 + 1200) + 24))(*(a1 + 1200), a2, a3);
  if (*valuePtr)
  {
    *&valuePtr[8] = *valuePtr;
    operator delete(*valuePtr);
  }
}