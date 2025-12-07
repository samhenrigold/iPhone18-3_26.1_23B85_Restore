void sub_101375C04(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v2 = "TravelHandler";
  sub_1001048A4();
}

void sub_101375ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, char a35)
{
  sub_1000FF0B4(v35 - 88);
  sub_101375F90(&a35);
  sub_1000D6F38(&a21);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a28)
  {
    sub_100004A34(a28);
  }

  if (a30)
  {
    sub_100004A34(a30);
  }

  if (a34)
  {
    sub_100004A34(a34);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101375F90(uint64_t a1)
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

  sub_10000FF50(a1 + 8);
  return a1;
}

uint64_t sub_101375FD4(uint64_t result)
{
  if (*(result + 1156) == 1)
  {
    if ((*(result + 279) & 0x8000000000000000) != 0)
    {
      if (!*(result + 264))
      {
        return result;
      }
    }

    else if (!*(result + 279))
    {
      return result;
    }

    result = *(result + 80);
    if (result)
    {
      return (*(*result + 24))();
    }
  }

  return result;
}

uint64_t *sub_101376028(uint64_t *result)
{
  v1 = result[41];
  v2 = result + 42;
  if (v1 != result + 42)
  {
    v3 = result;
    do
    {
      v4 = v1 + 4;
      if (sub_10136EA08(v3, v1 + 4))
      {
        v5 = v1[1];
        if (v5)
        {
          do
          {
            result = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            result = v1[2];
            v6 = *result == v1;
            v1 = result;
          }

          while (!v6);
        }
      }

      else
      {
        v7 = v3[7];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v1 + 55) < 0)
          {
            v4 = *v4;
          }

          *buf = 136315138;
          v9 = v4;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Clearing iccid (%s) from fIccidSupportsEnhancedTravelEducationMap", buf, 0xCu);
        }

        result = sub_100075658(v3 + 41, v1);
      }

      v1 = result;
    }

    while (result != v2);
  }

  return result;
}

void sub_101376164(uint64_t a1, uint64_t ***a2)
{
  if (a1 + 1112 != sub_100007A6C(a1 + 1104, a2))
  {
    v4 = sub_10136D3A8(*(a1 + 64));
    *(sub_1000E20F0(a1 + 1104, a2) + 80) = v4;

    sub_10136AD80(a1);
  }
}

uint64_t sub_1013761E4(uint64_t a1)
{
  v2 = *(a1 + 136);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000FF50(a1 + 96);
  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    sub_100009970(a1 + 8, *(a1 + 16));
  }

  return a1;
}

void sub_101376254(int a1, uint64_t a2, CFTypeRef cf1)
{
  if (a2 && cf1 && CFEqual(cf1, kCFLocaleCurrentLocaleDidChangeNotification))
  {

    sub_1013762B4(a2);
  }
}

void sub_1013762B4(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  (*(**(a1 + 128) + 8))(v4);
  v2 = 0;
  v3 = 0;
  v1 = "TravelHandler";
  sub_1001048A4();
}

void sub_101376420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  sub_10001C200(v18 - 56);
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(a1);
}

void sub_101376480(uint64_t a1, int a2)
{
  v2 = *(a1 + 1144);
  if (a2)
  {
    v3 = v2 == a2;
  }

  else
  {
    v3 = 0;
  }

  v4 = !v3;
  if (v2 != 1 || v4 == 0)
  {
    return;
  }

  v7 = *(a1 + 231);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 231))
    {
      goto LABEL_13;
    }

LABEL_30:
    v16 = *(a1 + 56);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v17 = "#I No value for fCurrentCountry";
LABEL_47:
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
    return;
  }

  if (!*(a1 + 216))
  {
    goto LABEL_30;
  }

LABEL_13:
  v8 = (a1 + 208);
  v9 = (a1 + 232);
  v10 = *(a1 + 255);
  v11 = *(a1 + 240);
  if (v10 >= 0)
  {
    v12 = *(a1 + 255);
  }

  else
  {
    v12 = *(a1 + 240);
  }

  v13 = *(a1 + 216);
  if (v7 >= 0)
  {
    v13 = *(a1 + 231);
  }

  if (v12 == v13)
  {
    v14 = (v10 >= 0 ? a1 + 232 : *v9);
    v15 = (v7 >= 0 ? a1 + 208 : *v8);
    if (!memcmp(v14, v15, v12))
    {
      v16 = *(a1 + 56);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v17 = "#I Do not issue travel notif if no change in country";
      goto LABEL_47;
    }
  }

  if (v10 < 0)
  {
    sub_100005F2C(__dst, *(a1 + 232), v11);
    if ((*(a1 + 231) & 0x80) == 0)
    {
      goto LABEL_28;
    }

LABEL_33:
    sub_100005F2C(__p, *(a1 + 208), *(a1 + 216));
    goto LABEL_34;
  }

  *__dst = *v9;
  v24 = *(a1 + 248);
  if ((v7 & 0x80) != 0)
  {
    goto LABEL_33;
  }

LABEL_28:
  *__p = *v8;
  v22 = *(a1 + 224);
LABEL_34:
  sub_101376714(a1, __dst, __p);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__dst[0]);
  }

  v18 = *(a1 + 56);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = a1 + 232;
    if (*(a1 + 255) < 0)
    {
      v19 = *v9;
    }

    v20 = a1 + 208;
    if (*(a1 + 231) < 0)
    {
      v20 = *v8;
    }

    *buf = 136315394;
    v26 = v19;
    v27 = 2080;
    v28 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Regulatory should be up to date now set prevCountryCacheForAPM [%s] to currentCountry [%s]", buf, 0x16u);
  }

  std::string::operator=((a1 + 232), (a1 + 208));
  sub_101377E24(a1);
}

void sub_1013766D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101376714(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = sub_10136AC30(a1);
  if (v6)
  {
    if ((*(a1 + 169) & 1) != 0 || !capabilities::ct::dataOnlySingleSIMDevice(v6))
    {
      v9 = sub_10136F6C8(a1);
      if (v9 && capabilities::ct::dataOnlySingleSIMDevice(v9))
      {
        v10 = *(a1 + 1168);
        sub_10000501C(&buf, "");
        sub_10000501C(v30, "");
        sub_10000501C(&__p, "roaming enabled");
        sub_101372680(a1, a1 + 256, a2, v10 + 32, 0, &buf, v30, &__p);
        if (v29 < 0)
        {
          operator delete(__p);
        }

        if (v31 < 0)
        {
          operator delete(v30[0]);
        }

        if (buf_8[15] < 0)
        {
          operator delete(*&buf);
        }
      }

      else
      {
        v11 = *(a1 + 279);
        if (v11 >= 0)
        {
          v12 = *(a1 + 279);
        }

        else
        {
          v12 = *(a1 + 264);
        }

        v13 = *(a3 + 23);
        v14 = v13;
        if ((v13 & 0x80u) != 0)
        {
          v13 = *(a3 + 1);
        }

        if (v12 == v13 && (v11 >= 0 ? (v15 = (a1 + 256)) : (v15 = *(a1 + 256)), v14 >= 0 ? (v16 = a3) : (v16 = *a3), !memcmp(v15, v16, v12)))
        {
          v18 = *(a1 + 56);
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
          if (v19)
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I user returning home", &buf, 2u);
          }

          if (!capabilities::ct::dataOnlySingleSIMDevice(v19))
          {
            v25 = a1;
            if (*(a2 + 23) < 0)
            {
              sub_100005F2C(v26, *a2, *(a2 + 8));
            }

            else
            {
              *v26 = *a2;
              v26[2] = *(a2 + 16);
            }

            if (*(a3 + 23) < 0)
            {
              sub_100005F2C(v27, *a3, *(a3 + 1));
            }

            else
            {
              *v27 = *a3;
              v27[2] = *(a3 + 2);
            }

            v32 = 0;
            operator new();
          }

          sub_1013794B0(a1, a2, a3);
        }

        else
        {
          v17 = sub_1013719B0(a1);
          if (v17 & 1) != 0 || (capabilities::ct::dataOnlySingleSIMDevice(v17) & 1) != 0 || (sub_10136ED5C(a1) & 1) != 0 || (sub_101371638(a1, a3))
          {

            TravelHandler::maybeSendTravelOutboundNotification_sync(a1, a2, a3);
          }

          else
          {
            v20 = *(a1 + 56);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Reduced education and no valid travel sims, postpone post-arrival notification by 24h", &buf, 2u);
            }

            if (*(a2 + 23) < 0)
            {
              sub_100005F2C(v23, *a2, *(a2 + 8));
            }

            else
            {
              *v23 = *a2;
              v24 = *(a2 + 16);
            }

            if (*(a3 + 23) < 0)
            {
              sub_100005F2C(v21, *a3, *(a3 + 1));
            }

            else
            {
              *v21 = *a3;
              v22 = *(a3 + 2);
            }

            TravelHandler::setPostArrivalNotificationTimer_sync(a1, v23, v21, 86400);
            if (SHIBYTE(v22) < 0)
            {
              operator delete(v21[0]);
            }

            if (SHIBYTE(v24) < 0)
            {
              operator delete(v23[0]);
            }

            buf = sub_10136D3A8(*(a1 + 64)) + 86400.0;
            if (*(a2 + 23) < 0)
            {
              sub_100005F2C(buf_8, *a2, *(a2 + 8));
            }

            else
            {
              *buf_8 = *a2;
              v35 = *(a2 + 16);
            }

            if (*(a1 + 231) < 0)
            {
              sub_100005F2C(v36, *(a1 + 208), *(a1 + 216));
            }

            else
            {
              *v36 = *(a1 + 208);
              v37 = *(a1 + 224);
            }

            sub_10137B7D0(a1 + 600, &buf);
            sub_1000EFBF0(&buf);
            TravelHandler::savePostArrivalCache_sync(a1);
          }
        }
      }
    }

    else
    {
      v7 = *(a1 + 1168);
      sub_10000501C(&buf, "");
      sub_10000501C(v30, "");
      sub_10000501C(&__p, "location disabled");
      sub_101372680(a1, a1 + 256, a2, v7 + 32, 0, &buf, v30, &__p);
      if (v29 < 0)
      {
        operator delete(__p);
      }

      if (v31 < 0)
      {
        operator delete(v30[0]);
      }

      if (buf_8[15] < 0)
      {
        operator delete(*&buf);
      }

      v8 = *(a1 + 56);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I location not enabled", &buf, 2u);
      }
    }
  }
}

void sub_101377B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, int a12, char a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1000296E0(&a65);
  if (a67 < 0)
  {
    operator delete(__p);
  }

  if (*(v68 - 201) < 0)
  {
    operator delete(*(v68 - 224));
  }

  sub_101365424(&a30);
  sub_101365424(v68 - 192);
  if ((a13 & 1) == 0)
  {
    sub_100004A34(a11);
  }

  sub_101373B64(&a54);
  sub_10000FF50(&a68);
  sub_1000EFBF0(&a23);
  _Unwind_Resume(a1);
}

void sub_101377E24(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1)
  {
    if (*(a1 + 255) < 0)
    {
      sub_100005F2C(__p, *(a1 + 232), *(a1 + 240));
    }

    else
    {
      *__p = *(a1 + 232);
      v4 = *(a1 + 248);
    }

    v5 = 1;
    (*(*v1 + 64))(v1, __p);
    if (v5 == 1 && SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v2 = *(a1 + 56);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "missing travel model", buf, 2u);
    }
  }
}

void sub_101377F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101377F30(uint64_t **a1, uint64_t a2)
{
  if (*a2)
  {
    __p[0] = 0;
    __p[1] = 0;
    v6 = 0;
    sub_10137415C(__p, a1[152], a1[153], *(a2 + 56));
    if (sub_10016FA58((a1 + 41), __p))
    {
      v3 = a1[7];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = __p;
        if (v6 < 0)
        {
          v4 = __p[0];
        }

        *buf = 136315138;
        v8 = v4;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Carrier bundle change detected for iccid (%s), reset fIccidSupportsEnhancedTravelEducationMap cache", buf, 0xCu);
      }

      sub_1000727F0(a1 + 41, __p);
    }

    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_101378054(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I PreferredNetworks change event on slot (%s)", buf, 0xCu);
  }

  v52 = 0;
  v53 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
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
  (*(*v13 + 8))(&v52, v13, a2);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (!v52)
  {
    v26 = *(a1 + 56);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Unable to get entitlement controller.", buf, 2u);
    }

    goto LABEL_86;
  }

  v15 = Registry::getServiceMap(*(a1 + 64));
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
  *buf = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, buf);
  if (!v21)
  {
    v23 = 0;
LABEL_26:
    std::mutex::unlock(v16);
    v22 = 0;
    v24 = 1;
    if (!v23)
    {
LABEL_20:
      v25 = *(a1 + 56);
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_84;
      }

      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Unable to get isoCache", buf, 2u);
      if (v24)
      {
        goto LABEL_86;
      }

LABEL_85:
      sub_100004A34(v22);
      goto LABEL_86;
    }

    goto LABEL_27;
  }

  v23 = v21[3];
  v22 = v21[4];
  if (!v22)
  {
    goto LABEL_26;
  }

  atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v16);
  atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v22);
  v24 = 0;
  if (!v23)
  {
    goto LABEL_20;
  }

LABEL_27:
  v49 = 0;
  v50 = 0;
  v51 = 0;
  sub_10137415C(&v49, *(a1 + 1216), *(a1 + 1224), a2);
  v27 = HIBYTE(v51);
  if (v51 < 0)
  {
    v27 = v50;
  }

  if (!v27)
  {
    v33 = *(a1 + 56);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = subscriber::asString();
      *buf = 136315138;
      *&buf[4] = v34;
      _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Unable to get iccid from slot (%s)", buf, 0xCu);
    }

    goto LABEL_83;
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  *buf = 0u;
  v64 = 0u;
  if (((*(*v52 + 152))(v52, buf) & 1) == 0)
  {
    v35 = *(a1 + 56);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *v59 = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Entitlements roaming priority info is not ready", v59, 2u);
    }

    goto LABEL_77;
  }

  v47 = 0;
  v48 = 0;
  v46 = &v47;
  if ((v24 & 1) == 0)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (BYTE8(v64) != 1)
  {
    goto LABEL_74;
  }

  v28 = *buf;
  v29 = *&buf[8];
  while (v28 != v29)
  {
    *v59 = 0u;
    v60[0] = 0u;
    MCC::MCC();
    if ((MCC::valid(v59) & 1) == 0)
    {
      goto LABEL_49;
    }

    v56 = 0;
    v57 = 0;
    v58 = 0;
    MCC::getStringValue(__p, v59);
    (*(*v23 + 24))(&v56, v23, __p);
    if (v55 < 0)
    {
      operator delete(__p[0]);
    }

    v30 = SHIBYTE(v58);
    if ((SHIBYTE(v58) & 0x8000000000000000) != 0)
    {
      v30 = v57;
      if (!v57)
      {
        goto LABEL_48;
      }

      v31 = v56;
    }

    else
    {
      if (!HIBYTE(v58))
      {
        goto LABEL_49;
      }

      v31 = &v56;
    }

    v32 = &v31[v30];
    while (v31 != v32)
    {
      *v31 = __tolower(*v31);
      ++v31;
    }

    sub_100073EE8(&v46, &v56, &v56);
    if (SHIBYTE(v58) < 0)
    {
LABEL_48:
      operator delete(v56);
    }

LABEL_49:
    if (SHIBYTE(v60[0]) < 0)
    {
      operator delete(*&v59[8]);
    }

    v28 += 72;
  }

  sub_1000727F0(&v46, (a1 + 256));
  if (v48)
  {
    if (a1 + 1112 == sub_100007A6C(a1 + 1104, &v49))
    {
      v61 = 0u;
      v62 = 0;
      *(&v60[0] + 1) = 0;
      memset(&v60[1], 0, 32);
      *v59 = 0u;
      *&v60[0] = v60 + 8;
      BYTE8(v61) = 0;
      v56 = &v49;
      v42 = sub_1013858F8((a1 + 1104), &v49, &v56);
      sub_1013750E0(v42 + 56, v59);
      sub_100F98440(v59);
    }

    else if (*(sub_1000E20F0(a1 + 1104, &v49) + 8) != 2)
    {
      v36 = *(a1 + 56);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = &v49;
        if (v51 < 0)
        {
          v37 = v49;
        }

        *v59 = 136315138;
        *&v59[4] = v37;
        v38 = "#I Skip overwriting supportedCountries for iccid (%s)";
        v39 = v36;
        v40 = 12;
LABEL_65:
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, v38, v59, v40);
      }

      goto LABEL_74;
    }

    v43 = *(a1 + 56);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = &v49;
      if (v51 < 0)
      {
        v44 = v49;
      }

      *v59 = 136315138;
      *&v59[4] = v44;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I Setting supportedCountries for iccid (%s)", v59, 0xCu);
    }

    *v59 = &v49;
    *(sub_1013858F8((a1 + 1104), &v49, v59) + 64) = 3;
    *v59 = &v49;
    v45 = (sub_1013858F8((a1 + 1104), &v49, v59) + 72);
    if (v45 != &v46)
    {
      sub_1001730B8(v45, v46, &v47);
    }

    sub_10136AD80(a1);
    goto LABEL_74;
  }

  v41 = *(a1 + 56);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *v59 = 0;
    v38 = "#I Unlimited PLMN info is absent";
    v39 = v41;
    v40 = 2;
    goto LABEL_65;
  }

LABEL_74:
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  sub_100009970(&v46, v47);
LABEL_77:
  if (BYTE8(v68) == 1)
  {
    *v59 = &v67;
    sub_1003EA960(v59);
  }

  if (BYTE8(v66) == 1)
  {
    *v59 = &v65;
    sub_1003EA960(v59);
  }

  if (BYTE8(v64) == 1)
  {
    *v59 = buf;
    sub_1003EA960(v59);
  }

LABEL_83:
  if (SHIBYTE(v51) < 0)
  {
    operator delete(v49);
    if (v24)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

LABEL_84:
  if ((v24 & 1) == 0)
  {
    goto LABEL_85;
  }

LABEL_86:
  if (v53)
  {
    sub_100004A34(v53);
  }
}

void sub_1013787CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  sub_100F98440(&a32);
  if (v48)
  {
    v50 = 1;
  }

  else
  {
    sub_100004A34(v47);
    v50 = 0;
  }

  sub_100009970(&a9, a10);
  sub_1003EAA2C(&a47);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if ((v50 & 1) == 0)
  {
    sub_100004A34(v47);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  _Unwind_Resume(a1);
}

void sub_1013788DC(uint64_t a1, void *a2)
{
  if (*(a1 + 1184))
  {
    memset(&buf, 0, sizeof(buf));
    v4 = *(a1 + 1168);
    if (*(v4 + 55) < 0)
    {
      sub_100005F2C(&buf, *(v4 + 32), *(v4 + 40));
    }

    else
    {
      buf = *(v4 + 32);
    }

    v6 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    size = buf.__r_.__value_.__l.__size_;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = (&buf + HIBYTE(buf.__r_.__value_.__r.__words[2]));
    }

    else
    {
      v8 = (buf.__r_.__value_.__r.__words[0] + buf.__r_.__value_.__l.__size_);
    }

    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    if (p_buf != v8)
    {
      do
      {
        p_buf->__r_.__value_.__s.__data_[0] = __tolower(p_buf->__r_.__value_.__s.__data_[0]);
        p_buf = (p_buf + 1);
      }

      while (p_buf != v8);
      v6 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
      size = buf.__r_.__value_.__l.__size_;
    }

    v10 = v6;
    if ((v6 & 0x80u) == 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = size;
    }

    if (!v11)
    {
LABEL_57:
      if (!a2[2])
      {
        v28 = *(a1 + 56);
        if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_144;
        }

        LOWORD(v61.__r_.__value_.__l.__data_) = 0;
        v26 = "#I No previous country found";
        v27 = v28;
        goto LABEL_63;
      }

      v23 = *(a1 + 1184);
      v24 = *(a1 + 56);
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
      if (v23 >= 2)
      {
        if (!v25)
        {
          goto LABEL_144;
        }

        LOWORD(v61.__r_.__value_.__l.__data_) = 0;
        v26 = "#I More than one country has been detected.";
        v27 = v24;
LABEL_63:
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, &v61, 2u);
        goto LABEL_144;
      }

      if (v25)
      {
        sub_1013793B0(__dst, a2);
        sub_100074B94(*__dst, &__dst[8], ",", 1, &v61);
        if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = &v61;
        }

        else
        {
          v29 = v61.__r_.__value_.__r.__words[0];
        }

        LODWORD(v62) = 136446210;
        *(&v62 + 4) = v29;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I prev country: %{public}s", &v62, 0xCu);
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        sub_100009970(__dst, *&__dst[8]);
        v24 = *(a1 + 56);
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        sub_1013793B0(__dst, (a1 + 1168));
        sub_100074B94(*__dst, &__dst[8], ",", 1, &v61);
        if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = &v61;
        }

        else
        {
          v30 = v61.__r_.__value_.__r.__words[0];
        }

        LODWORD(v62) = 136446210;
        *(&v62 + 4) = v30;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I current country: %{public}s", &v62, 0xCu);
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }

        sub_100009970(__dst, *&__dst[8]);
      }

      v31 = &v61;
      p_size = &v61.__r_.__value_.__l.__size_;
      *&v61.__r_.__value_.__r.__words[1] = 0uLL;
      v61.__r_.__value_.__r.__words[0] = &v61.__r_.__value_.__l.__size_;
      v33 = (a2 + 1);
      v34 = *a2;
      v35 = *(a1 + 1168);
      *&v62 = &v61;
      *(&v62 + 1) = &v61.__r_.__value_.__l.__size_;
      if (v34 != (a2 + 1))
      {
        if (v35 == (a1 + 1176))
        {
LABEL_105:
          *__dst = v31;
          *&__dst[8] = p_size;
          do
          {
            sub_10138157C(__dst, v34 + 32);
            v45 = *(v34 + 1);
            if (v45)
            {
              do
              {
                v46 = v45;
                v45 = *v45;
              }

              while (v45);
            }

            else
            {
              do
              {
                v46 = *(v34 + 2);
                v42 = *v46 == v34;
                v34 = v46;
              }

              while (!v42);
            }

            v34 = v46;
          }

          while (v46 != v33);
        }

        else
        {
          while (1)
          {
            if (RegulatoryCountry::operator<(v34 + 4, v35 + 32))
            {
              sub_10138157C(&v62, v34 + 32);
              v36 = *(v34 + 1);
              if (v36)
              {
                do
                {
                  v34 = v36;
                  v36 = *v36;
                }

                while (v36);
              }

              else
              {
                do
                {
                  v37 = v34;
                  v34 = *(v34 + 2);
                }

                while (*v34 != v37);
              }
            }

            else if (RegulatoryCountry::operator<(v35 + 4, v34 + 32))
            {
              v38 = v35[1];
              if (v38)
              {
                do
                {
                  v35 = v38;
                  v38 = *v38;
                }

                while (v38);
              }

              else
              {
                do
                {
                  v39 = v35;
                  v35 = v35[2];
                }

                while (*v35 != v39);
              }
            }

            else
            {
              v40 = *(v34 + 1);
              if (v40)
              {
                do
                {
                  v41 = v40;
                  v40 = *v40;
                }

                while (v40);
              }

              else
              {
                do
                {
                  v41 = *(v34 + 2);
                  v42 = *v41 == v34;
                  v34 = v41;
                }

                while (!v42);
              }

              v43 = v35[1];
              if (v43)
              {
                do
                {
                  v35 = v43;
                  v43 = *v43;
                }

                while (v43);
              }

              else
              {
                do
                {
                  v44 = v35;
                  v35 = v35[2];
                }

                while (*v35 != v44);
              }

              v34 = v41;
            }

            if (v34 == v33)
            {
              break;
            }

            if (v35 == (a1 + 1176))
            {
              p_size = *(&v62 + 1);
              v31 = v62;
              goto LABEL_105;
            }
          }
        }
      }

      if (v61.__r_.__value_.__r.__words[2])
      {
        if (*(a1 + 1144) != 2)
        {
          memset(__dst, 0, sizeof(__dst));
          v57 = 0;
          v49 = *a2;
          if (*(*a2 + 55) < 0)
          {
            sub_100005F2C(__dst, *(v49 + 4), *(v49 + 5));
          }

          else
          {
            *__dst = *(v49 + 2);
            v57 = *(v49 + 6);
          }

          v50 = HIBYTE(v57);
          if (v57 >= 0)
          {
            v51 = &__dst[HIBYTE(v57)];
          }

          else
          {
            v51 = (*__dst + *&__dst[8]);
          }

          if (v57 >= 0)
          {
            v52 = __dst;
          }

          else
          {
            v52 = *__dst;
          }

          if (v52 != v51)
          {
            do
            {
              *v52 = __tolower(*v52);
              ++v52;
            }

            while (v52 != v51);
            v50 = HIBYTE(v57);
          }

          if (v50 < 0)
          {
            sub_100005F2C(v54, *__dst, *&__dst[8]);
          }

          else
          {
            *v54 = *__dst;
            v55 = v57;
          }

          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&v53, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
          }

          else
          {
            v53 = buf;
          }

          sub_101376714(a1, v54, &v53);
          if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v53.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v55) < 0)
          {
            operator delete(v54[0]);
          }

          if (SHIBYTE(v57) < 0)
          {
            operator delete(*__dst);
          }

          goto LABEL_143;
        }

        v47 = *(a1 + 56);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *__dst = 0;
          v48 = "#I regulatory change detected with APM ON";
LABEL_118:
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, v48, __dst, 2u);
        }
      }

      else
      {
        v47 = *(a1 + 56);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *__dst = 0;
          v48 = "#I No changes in regulatory country list";
          goto LABEL_118;
        }
      }

LABEL_143:
      sub_100009970(&v61, v61.__r_.__value_.__l.__size_);
LABEL_144:
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      return;
    }

    if ((v6 & 0x80) != 0)
    {
      if (size != 2)
      {
        goto LABEL_26;
      }

      v12 = buf.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v6 != 2)
      {
        goto LABEL_26;
      }

      v12 = &buf;
    }

    if (LOWORD(v12->__r_.__value_.__l.__data_) == 31352)
    {
      goto LABEL_144;
    }

LABEL_26:
    v13 = *(a1 + 552);
    if (!v13)
    {
      goto LABEL_42;
    }

    v14 = *(a1 + 279);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(a1 + 264);
    }

    if (v14 != v11)
    {
      goto LABEL_42;
    }

    v16 = v15 >= 0 ? (a1 + 256) : *(a1 + 256);
    v17 = v10 >= 0 ? &buf : buf.__r_.__value_.__r.__words[0];
    if (memcmp(v16, v17, v11))
    {
      goto LABEL_42;
    }

    v18 = *(a1 + 56);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v61.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I user returned home within post-arrival timer, resetting", &v61, 2u);
      v13 = *(a1 + 552);
      *(a1 + 552) = 0;
      if (!v13)
      {
        goto LABEL_42;
      }
    }

    else
    {
      *(a1 + 552) = 0;
    }

    (*(*v13 + 8))(v13);
LABEL_42:
    v19 = *(a1 + 56);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = &buf;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v20 = buf.__r_.__value_.__r.__words[0];
      }

      LODWORD(v61.__r_.__value_.__l.__data_) = 136315138;
      *(v61.__r_.__value_.__r.__words + 4) = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Setting fCurrentCountry to (%s)", &v61, 0xCu);
    }

    std::string::operator=((a1 + 208), &buf);
    if (*(a1 + 231) < 0)
    {
      sub_100005F2C(__p, *(a1 + 208), *(a1 + 216));
    }

    else
    {
      *__p = *(a1 + 208);
      v59 = *(a1 + 224);
    }

    sub_1013791E4(a1, __p);
    if (SHIBYTE(v59) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(a1 + 1144) != 2)
    {
      v21 = *(a1 + 56);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = &buf;
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v22 = buf.__r_.__value_.__r.__words[0];
        }

        LODWORD(v61.__r_.__value_.__l.__data_) = 136315138;
        *(v61.__r_.__value_.__r.__words + 4) = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Syncing fPreviousCountryCacheForAPM to (%s) while APM off", &v61, 0xCu);
      }

      std::string::operator=((a1 + 232), &buf);
      sub_101377E24(a1);
    }

    goto LABEL_57;
  }

  v5 = *(a1 + 56);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I No current country found", &buf, 2u);
  }
}

void sub_10137911C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  sub_100009970(v42 - 128, *(v42 - 120));
  if (a42 < 0)
  {
    operator delete(a37);
  }

  _Unwind_Resume(a1);
}

void sub_1013791E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  v4 = *(a2 + 8);
  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = *(a1 + 279);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 264);
  }

  if (v5 == v6 && ((v9 = *a2, v3 >= 0) ? (v10 = a2) : (v10 = *a2), v7 >= 0 ? (v11 = (a1 + 256)) : (v11 = *(a1 + 256)), !memcmp(v10, v11, v5)))
  {
    if (v3 < 0)
    {
      sub_100005F2C(__dst, v9, v4);
    }

    else
    {
      *__dst = *a2;
      v17 = *(a2 + 16);
    }

    sub_101380498(buf, a1, __dst);
    v13 = v24;
    if (v24 == 1)
    {
      if (v23 < 0)
      {
        operator delete(__p);
      }

      if (v21 < 0)
      {
        operator delete(v20);
      }

      sub_100009970(buf, v19);
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(__dst[0]);
    }

    if ((v13 & 1) == 0)
    {
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(v14, *a2, *(a2 + 8));
      }

      else
      {
        *v14 = *a2;
        v15 = *(a2 + 16);
      }

      sub_10137FE80(a1, v14);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }
    }
  }

  else
  {
    v12 = *(a1 + 56);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "dont support non-home countries", buf, 2u);
    }
  }
}

void sub_101379380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013793B0(uint64_t **a1, void *a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  v2 = a2 + 1;
  v3 = *a2;
  v9[0] = a1;
  v9[1] = a1 + 1;
  if (v3 != a2 + 1)
  {
    do
    {
      if (*(v3 + 55) < 0)
      {
        sub_100005F2C(__p, v3[4], v3[5]);
      }

      else
      {
        *__p = *(v3 + 2);
        v8 = v3[6];
      }

      sub_101381464(v9, __p);
      if (SHIBYTE(v8) < 0)
      {
        operator delete(__p[0]);
      }

      v4 = v3[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v3[2];
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != v2);
  }
}

void sub_1013794B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 170) & 1) == 0 && (capabilities::ct::dataOnlySingleSIMDevice(a1))
  {
    return;
  }

  sub_101372478();
  if (sub_100007A6C(&qword_101FCA968, a3) != &qword_101FCA970)
  {
    v26 = *(a1 + 56);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I Denylisted country and skip showing return to home notification", buf, 2u);
    }

    sub_10000501C(buf, "");
    sub_10000501C(v156, "");
    sub_10000501C(__p, "deny listed country");
    sub_101372680(a1, a1 + 256, a2, a3, 0, buf, v156, __p);
    if (SBYTE7(v148) < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE7(v157) < 0)
    {
      operator delete(v156[0]);
    }

    if (SBYTE7(v167) < 0)
    {
      v27 = *buf;
LABEL_139:
      operator delete(v27);
      return;
    }

    return;
  }

  v141 = 0;
  v142 = 0;
  v143 = 0;
  sub_10136F470(&v141, a1, a2);
  v6 = SHIBYTE(v143);
  if (v143 >= 0)
  {
    v7 = HIBYTE(v143);
  }

  else
  {
    v7 = v142;
  }

  if (!v7)
  {
    v28 = *(a1 + 56);
    if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_137;
    }

    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Failed to retrieve previous continent code", buf, 2u);
    if ((v6 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_138;
  }

  v138 = 0;
  v139 = 0;
  v140 = 0;
  sub_10136F470(&v138, a1, a3);
  v8 = HIBYTE(v140);
  v9 = v139;
  if (v140 >= 0)
  {
    v10 = HIBYTE(v140);
  }

  else
  {
    v10 = v139;
  }

  if (!v10)
  {
    v29 = *(a1 + 56);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to retrieve current continent code", buf, 2u);
    }

    goto LABEL_136;
  }

  v131 = v6;
  if (v10 == v7)
  {
    v11 = v138;
    v12 = v140 >= 0 ? &v138 : v138;
    v13 = v6 >= 0 ? &v141 : v141;
    if (!memcmp(v12, v13, v7))
    {
      if ((v8 & 0x80) != 0)
      {
        if (v9 != 1)
        {
          goto LABEL_20;
        }

        v33 = *v11;
      }

      else
      {
        if (v8 != 1)
        {
          goto LABEL_20;
        }

        v33 = v11;
      }

      if (v33 == 50)
      {
        v54 = *(a1 + 56);
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I In EU, skip return to home notification", buf, 2u);
        }

        sub_10000501C(buf, "");
        sub_10000501C(v156, "");
        sub_10000501C(__p, "EU Travel");
        sub_101372680(a1, a1 + 256, a2, a3, 0, buf, v156, __p);
        if (SBYTE7(v148) < 0)
        {
          operator delete(__p[0]);
        }

        if (SBYTE7(v157) < 0)
        {
          operator delete(v156[0]);
        }

        if (SBYTE7(v167) < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_136;
      }
    }
  }

LABEL_20:
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
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
    v23 = v8;
    v22 = 0;
    goto LABEL_42;
  }

  v22 = v20[3];
  v21 = v20[4];
  if (!v21)
  {
    v23 = v8;
LABEL_42:
    std::mutex::unlock(v15);
    v21 = 0;
    v25 = 1;
    if (!v22)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v23 = v8;
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v15);
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v21);
  v25 = 0;
  if (v22)
  {
LABEL_43:
    *(a1 + 170) = 0;
    (*(*v22 + 16))(v22, @"TravelNotificationShowReturnHome", kCFBooleanFalse, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v24 = (*(*v22 + 48))(v22, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  }

LABEL_44:
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  LOBYTE(v8) = v23;
  if (capabilities::ct::supportsGemini(v24))
  {
    v136 = 0;
    v137 = 0;
    v135 = &stru_101F6AFB8;
    CFRetain(&stru_101F6AFB8);
    v6 = v131;
    for (i = *(a1 + 1192); i != *(a1 + 1200); i += 22)
    {
      if (*i)
      {
        v31 = i[3] == 5;
      }

      else
      {
        v31 = 1;
      }

      v32 = !v31;
      if (i[1] == 3)
      {
        if (v32)
        {
LABEL_91:
          *buf = @"TRAVEL_NOTIFICATION_RETURN_HOME_TITLE";
          sub_10021D11C(&v137, buf);
          *buf = @"TRAVEL_NOTIFICATION_RETURN_HOME_MESSAGE";
          sub_10021D11C(&v136, buf);
          goto LABEL_93;
        }

        break;
      }

      if (v32)
      {
        goto LABEL_91;
      }
    }

    *buf = @"TRAVEL_NOTIFICATION_RETURN_HOME_TITLE_PSIM";
    sub_10021D11C(&v137, buf);
    *buf = @"TRAVEL_NOTIFICATION_RETURN_HOME_MESSAGE_PSIM";
    sub_10021D11C(&v136, buf);
LABEL_93:
    v134 = 0uLL;
    v161 = 0;
    *v159 = 0u;
    v160 = 0u;
    v157 = 0u;
    v158 = 0u;
    *v156 = 0u;
    if (*(a1 + 279) < 0)
    {
      sub_100005F2C(v154, *(a1 + 256), *(a1 + 264));
    }

    else
    {
      *v154 = *(a1 + 256);
      v155 = *(a1 + 272);
    }

    sub_101373818(v156, a1, v154);
    if (SHIBYTE(v155) < 0)
    {
      operator delete(v154[0]);
    }

    if (v161)
    {
      if (v157)
      {
        v39 = Registry::getServiceMap(*(a1 + 64));
        v40 = v39;
        if (v41 < 0)
        {
          v42 = (v41 & 0x7FFFFFFFFFFFFFFFLL);
          v43 = 5381;
          do
          {
            v41 = v43;
            v44 = *v42++;
            v43 = (33 * v43) ^ v44;
          }

          while (v44);
        }

        std::mutex::lock(v39);
        *buf = v41;
        v45 = sub_100009510(&v40[1].__m_.__sig, buf);
        if (v45)
        {
          v46 = v45[3];
          v47 = v45[4];
          if (v47)
          {
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v40);
            atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v47);
            if (!v46)
            {
              v134 = 0uLL;
LABEL_435:
              sub_100004A34(v47);
              goto LABEL_110;
            }

LABEL_158:
            v153 = 0uLL;
            v55 = Registry::getServiceMap(*(a1 + 64));
            v56 = v55;
            if (v57 < 0)
            {
              v58 = (v57 & 0x7FFFFFFFFFFFFFFFLL);
              v59 = 5381;
              do
              {
                v57 = v59;
                v60 = *v58++;
                v59 = (33 * v59) ^ v60;
              }

              while (v60);
            }

            std::mutex::lock(v55);
            *buf = v57;
            v61 = sub_100009510(&v56[1].__m_.__sig, buf);
            v130 = v46;
            if (v61)
            {
              v62 = v61[3];
              v63 = v61[4];
              if (v63)
              {
                atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
                std::mutex::unlock(v56);
                atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
                sub_100004A34(v63);
                v64 = 0;
LABEL_166:
                v151 = 0;
                v152 = 0;
                v65 = v156[0];
                if (v156[0] != &v156[1])
                {
                  do
                  {
                    if (sub_10136EA08(a1, v65 + 4))
                    {
                      v66 = v65[1];
                      if (v66)
                      {
                        do
                        {
                          v67 = v66;
                          v66 = *v66;
                        }

                        while (v66);
                      }

                      else
                      {
                        do
                        {
                          v67 = v65[2];
                          v31 = *v67 == v65;
                          v65 = v67;
                        }

                        while (!v31);
                      }
                    }

                    else
                    {
                      v67 = sub_100075658(v156, v65);
                    }

                    v65 = v67;
                  }

                  while (v67 != &v156[1]);
                }

                if ((v161 & 1) == 0)
                {
                  sub_1000D1644();
                }

                if (v157 != 2)
                {
                  if (v157 != 1)
                  {
                    goto LABEL_431;
                  }

                  memset(&v150, 0, sizeof(v150));
                  v128 = v63;
                  v129 = v64;
                  if (*(v156[0] + 55) < 0)
                  {
                    sub_100005F2C(&v150, *(v156[0] + 4), *(v156[0] + 5));
                  }

                  else
                  {
                    v150 = *(v156[0] + 32);
                  }

                  v148 = 0u;
                  v149 = 0u;
                  *__p = 0u;
                  v72 = *(a1 + 1216);
                  v73 = *(a1 + 1224);
                  if (v72 == v73)
                  {
                    goto LABEL_224;
                  }

                  v74 = v72 + 96;
                  do
                  {
                    if ((subscriber::isEsimCapable() & 1) == 0)
                    {
                      v75 = *(v74 - 1);
                      if (v75 < 0 ? *(v74 - 16) : *(v74 - 1))
                      {
                        if (v75 >= 0)
                        {
                          v77 = *(v74 - 1);
                        }

                        else
                        {
                          v77 = *(v74 - 16);
                        }

                        size = HIBYTE(v150.__r_.__value_.__r.__words[2]);
                        if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                        {
                          size = v150.__r_.__value_.__l.__size_;
                        }

                        if (v77 == size)
                        {
                          v79 = v75 >= 0 ? (v74 - 24) : *(v74 - 24);
                          v80 = (v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v150 : v150.__r_.__value_.__r.__words[0];
                          if (!memcmp(v79, v80, v77))
                          {
                            v167 = 0u;
                            v168 = 0u;
                            *buf = 0u;
                            sub_100A34BC8(buf);
                            sub_10136CFD8(&v180, a1, v74 - 24);
                            if (SBYTE7(v148) < 0)
                            {
                              operator delete(__p[0]);
                            }

                            *__p = *&v180.__r_.__value_.__l.__data_;
                            *&v148 = *(&v180.__r_.__value_.__l + 2);
                            std::string::operator=((&v148 + 8), buf);
                            if (SHIBYTE(v168) < 0)
                            {
                              operator delete(*(&v167 + 1));
                            }

                            if (SBYTE7(v167) < 0)
                            {
                              operator delete(*buf);
                            }
                          }
                        }
                      }
                    }

                    v81 = v74 + 72;
                    v74 += 168;
                  }

                  while (v81 != v73);
                  v82 = BYTE7(v148);
                  if (SBYTE7(v148) < 0)
                  {
                    v82 = __p[1];
                  }

                  if (!v82)
                  {
LABEL_224:
                    v83 = *(a1 + 1192);
                    for (j = *(a1 + 1200); v83 != j; v83 += 88)
                    {
                      if (*(v83 + 12) == 3 && *(v83 + 80) == 1)
                      {
                        v85 = *(v83 + 56);
                        v86 = *(v83 + 64);
                        while (v85 != v86)
                        {
                          v179 = 0;
                          v177 = 0u;
                          v178 = 0u;
                          v175 = 0u;
                          v176 = 0u;
                          v173 = 0u;
                          *v174 = 0u;
                          *v171 = 0u;
                          *v172 = 0u;
                          *v169 = 0u;
                          v170 = 0u;
                          v167 = 0u;
                          v168 = 0u;
                          *buf = 0u;
                          sub_100F11F00(buf, v85);
                          if ((BYTE1(v171[1]) & 1) == 0)
                          {
                            if ((SBYTE7(v168) & 0x80u) == 0)
                            {
                              v87 = BYTE7(v168);
                            }

                            else
                            {
                              v87 = *(&v167 + 1);
                            }

                            v88 = HIBYTE(v150.__r_.__value_.__r.__words[2]);
                            if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                            {
                              v88 = v150.__r_.__value_.__l.__size_;
                            }

                            if (v87 == v88)
                            {
                              v89 = (SBYTE7(v168) & 0x80u) == 0 ? &v167 : v167;
                              v90 = (v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v150 : v150.__r_.__value_.__r.__words[0];
                              if (!memcmp(v89, v90, v87))
                              {
                                sub_10136CFD8(&v180, a1, &v167);
                                if (SBYTE7(v148) < 0)
                                {
                                  operator delete(__p[0]);
                                }

                                *__p = *&v180.__r_.__value_.__l.__data_;
                                *&v148 = *(&v180.__r_.__value_.__l + 2);
                                std::string::operator=((&v148 + 8), v172);
                              }
                            }
                          }

                          sub_100E3A5D4(buf);
                          v85 += 216;
                        }
                      }
                    }
                  }

                  v91 = *(a1 + 1192);
                  v92 = *(a1 + 1200);
                  v63 = v128;
                  if (v91 == v92)
                  {
LABEL_258:
                    v95 = kCBMessageLocalizationTable;
                    (*(*v130 + 40))(&v180, v130, kCBMessageLocalizationTable, @"TRAVEL_NOTIFICATION_RETURN_HOME_TITLE_PSIM_ONLY_%@", @"TRAVEL_NOTIFICATION_RETURN_HOME_TITLE_PSIM_ONLY_%@");
                  }

                  else
                  {
                    while (1)
                    {
                      v93 = !*v91 || v91[3] == 5;
                      v94 = !v93;
                      if (v91[1] == 3)
                      {
                        break;
                      }

                      if (v94)
                      {
                        goto LABEL_338;
                      }

                      v91 += 22;
                      if (v91 == v92)
                      {
                        goto LABEL_258;
                      }
                    }

                    if (!v94)
                    {
                      goto LABEL_258;
                    }

LABEL_338:
                    v95 = kCBMessageLocalizationTable;
                    (*(*v130 + 40))(&v180, v130, kCBMessageLocalizationTable, @"TRAVEL_NOTIFICATION_RETURN_HOME_TITLE_%@", @"TRAVEL_NOTIFICATION_RETURN_HOME_TITLE_%@");
                  }

                  *buf = v152;
                  v152 = v180.__r_.__value_.__r.__words[0];
                  v180.__r_.__value_.__r.__words[0] = 0;
                  sub_100005978(buf);
                  sub_100005978(&v180.__r_.__value_.__l.__data_);
                  v64 = v129;
                  if (*(a1 + 721) == 1)
                  {
                    if (*(a1 + 720) == 1)
                    {
                      (*(*v130 + 40))(&v180, v130, v95, @"TRAVEL_NOTIFICATION_RETURN_HOME_MESSAGE_TRAVEL_PSIM_%@", @"TRAVEL_NOTIFICATION_RETURN_HOME_MESSAGE_TRAVEL_PSIM_%@");
                      *buf = v151;
                      v151 = v180.__r_.__value_.__r.__words[0];
                      v180.__r_.__value_.__r.__words[0] = 0;
                      sub_100005978(buf);
                      sub_100005978(&v180.__r_.__value_.__l.__data_);
                    }

                    (*(*v130 + 40))(&v180, v130, v95, @"TRAVEL_NOTIFICATION_RETURN_HOME_MESSAGE_%@", @"TRAVEL_NOTIFICATION_RETURN_HOME_MESSAGE_%@");
                  }

                  else
                  {
                    (*(*v130 + 40))(&v180, v130, v95, @"TRAVEL_NOTIFICATION_RETURN_HOME_MESSAGE_NO_TRAVEL_%@", @"TRAVEL_NOTIFICATION_RETURN_HOME_MESSAGE_NO_TRAVEL_%@");
                  }

                  *buf = v151;
                  v151 = v180.__r_.__value_.__r.__words[0];
                  v180.__r_.__value_.__r.__words[0] = 0;
                  sub_100005978(buf);
                  v108 = sub_100005978(&v180.__r_.__value_.__l.__data_);
                  *&v175 = 0;
                  v173 = 0u;
                  *v174 = 0u;
                  *v171 = 0u;
                  *v172 = 0u;
                  *v169 = 0u;
                  v170 = 0u;
                  v167 = 0u;
                  v168 = 0u;
                  *buf = 0u;
                  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_100005F2C(v108, v150.__r_.__value_.__l.__data_, v150.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v180 = v150;
                  }

                  (*(*v62 + 184))(buf, v62, &v180);
                  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v180.__r_.__value_.__l.__data_);
                  }

                  if ((SBYTE7(v170) & 0x80u) == 0)
                  {
                    v109 = BYTE7(v170);
                  }

                  else
                  {
                    v109 = v169[1];
                  }

                  if (v109)
                  {
                    v110 = v152;
                    if (SBYTE7(v148) < 0)
                    {
                      sub_100005F2C(&v146, __p[0], __p[1]);
                    }

                    else
                    {
                      *&v146.__r_.__value_.__l.__data_ = *__p;
                      v146.__r_.__value_.__r.__words[2] = v148;
                    }

                    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
                    {
                      sub_100005F2C(&v165, v146.__r_.__value_.__l.__data_, v146.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      v165 = v146;
                    }

                    v163 = 0;
                    if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
                    {
                      sub_100005F2C(&v180, v165.__r_.__value_.__l.__data_, v165.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      v180 = v165;
                    }

                    v164 = 0;
                    if (ctu::cf::convert_copy())
                    {
                      v113 = v163;
                      v163 = v164;
                      v144.__r_.__value_.__r.__words[0] = v113;
                      sub_100005978(&v144.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v180.__r_.__value_.__l.__data_);
                    }

                    v162 = v163;
                    v163 = 0;
                    sub_100005978(&v163);
                    if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v165.__r_.__value_.__l.__data_);
                    }

                    StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v110, 0, v162);
                    v115 = v153;
                    *&v153 = StringWithValidatedFormat;
                    v180.__r_.__value_.__r.__words[0] = v115;
                    sub_100005978(&v180.__r_.__value_.__l.__data_);
                    sub_100005978(&v162);
                    if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v146.__r_.__value_.__l.__data_);
                    }

                    v116 = HIBYTE(v173);
                    if (v173 >= 0)
                    {
                      v117 = HIBYTE(v173);
                    }

                    else
                    {
                      v117 = v173;
                    }

                    v118 = 104;
                    if (!v117)
                    {
                      v118 = 80;
                    }

                    v119 = &buf[v118];
                    if (!v117)
                    {
                      v116 = HIBYTE(v172[0]);
                    }

                    if (v116 < 0)
                    {
                      if (v117)
                      {
                        v120 = v173;
                      }

                      else
                      {
                        v120 = v171[1];
                      }

                      sub_100005F2C(&v180, v119->__r_.__value_.__l.__data_, v120);
                    }

                    else
                    {
                      v180 = *v119;
                    }

                    if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
                    {
                      v121 = v180.__r_.__value_.__l.__size_;
                      operator delete(v180.__r_.__value_.__l.__data_);
                      if (!v121)
                      {
                        goto LABEL_412;
                      }
                    }

                    else if (!*(&v180.__r_.__value_.__s + 23))
                    {
                      goto LABEL_412;
                    }

                    v122 = *(a1 + 56);
                    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
                    {
                      sub_1013737D4(&v180, buf);
                      v123 = (v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v180 : v180.__r_.__value_.__r.__words[0];
                      LODWORD(v165.__r_.__value_.__l.__data_) = 136315138;
                      *(v165.__r_.__value_.__r.__words + 4) = v123;
                      _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "#I mdn (%s)", &v165, 0xCu);
                      if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(v180.__r_.__value_.__l.__data_);
                      }
                    }

                    v124 = v151;
                    sub_1013737D4(&v144, buf);
                    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
                    {
                      sub_100005F2C(&v165, v144.__r_.__value_.__l.__data_, v144.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      v165 = v144;
                    }

                    v162 = 0;
                    if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
                    {
                      sub_100005F2C(&v180, v165.__r_.__value_.__l.__data_, v165.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      v180 = v165;
                    }

                    v163 = 0;
                    if (ctu::cf::convert_copy())
                    {
                      v125 = v162;
                      v162 = v163;
                      v164 = v125;
                      sub_100005978(&v164);
                    }

                    if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v180.__r_.__value_.__l.__data_);
                    }

                    v145 = v162;
                    v162 = 0;
                    sub_100005978(&v162);
                    if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v165.__r_.__value_.__l.__data_);
                    }

                    v126 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v124, 0, v145);
                    v127 = *(&v153 + 1);
                    *(&v153 + 1) = v126;
                    v180.__r_.__value_.__r.__words[0] = v127;
                    sub_100005978(&v180.__r_.__value_.__l.__data_);
                    sub_100005978(&v145);
                    if (SHIBYTE(v144.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(v144.__r_.__value_.__l.__data_);
                    }
                  }

                  else
                  {
                    v111 = *(a1 + 56);
                    if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
                    {
                      v112 = &v150;
                      if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        v112 = v150.__r_.__value_.__r.__words[0];
                      }

                      LODWORD(v180.__r_.__value_.__l.__data_) = 136315138;
                      *(v180.__r_.__value_.__r.__words + 4) = v112;
                      _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "#I Invalid label for (%s)", &v180, 0xCu);
                    }

                    v134 = 0uLL;
                  }

LABEL_412:
                  if (SBYTE7(v175) < 0)
                  {
                    operator delete(v174[0]);
                  }

                  if (SHIBYTE(v173) < 0)
                  {
                    operator delete(v172[1]);
                  }

                  if (SHIBYTE(v172[0]) < 0)
                  {
                    operator delete(v171[0]);
                  }

                  if (SBYTE7(v170) < 0)
                  {
                    operator delete(v169[0]);
                  }

                  if (SHIBYTE(v168) < 0)
                  {
                    operator delete(*(&v167 + 1));
                  }

                  if (SBYTE7(v167) < 0)
                  {
                    operator delete(*buf);
                  }

                  if (SHIBYTE(v149) < 0)
                  {
                    operator delete(*(&v148 + 1));
                  }

                  if (SBYTE7(v148) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v150.__r_.__value_.__l.__data_);
                  }

                  if (!v109)
                  {
LABEL_432:
                    sub_100005978(&v151);
                    sub_100005978(&v152);
                    if ((v64 & 1) == 0)
                    {
                      sub_100004A34(v63);
                    }

                    sub_100005978(&v153 + 1);
                    sub_100005978(&v153);
                    v6 = v131;
                    if (!v47)
                    {
                      goto LABEL_110;
                    }

                    goto LABEL_435;
                  }

LABEL_431:
                  v134 = v153;
                  v153 = 0uLL;
                  goto LABEL_432;
                }

                memset(&v180, 0, sizeof(v180));
                memset(&v165, 0, sizeof(v165));
                for (k = *(a1 + 1192); ; k += 22)
                {
                  if (k == *(a1 + 1200))
                  {
                    v71 = v46;
                    goto LABEL_263;
                  }

                  if (*k)
                  {
                    v69 = k[3] == 5;
                  }

                  else
                  {
                    v69 = 1;
                  }

                  v70 = !v69;
                  if (k[1] == 3)
                  {
                    v71 = v46;
                    goto LABEL_263;
                  }

                  if (v70)
                  {
                    break;
                  }
                }

                v71 = v46;
LABEL_263:
                (*(*v71 + 40))(__p);
                *buf = v152;
                v152 = __p[0];
                __p[0] = 0;
                sub_100005978(buf);
                sub_100005978(__p);
                if (*(a1 + 721) == 1 && *(a1 + 720) == 1)
                {
                  (*(*v46 + 40))(__p);
                  *buf = v151;
                  v151 = __p[0];
                  __p[0] = 0;
                  sub_100005978(buf);
                  sub_100005978(__p);
                }

                (*(*v46 + 40))(__p);
                *buf = v151;
                v151 = __p[0];
                __p[0] = 0;
                sub_100005978(buf);
                sub_100005978(__p);
                if ((v161 & 1) == 0)
                {
                  sub_1000D1644();
                }

                v96 = v156[0];
                if (v156[0] == &v156[1])
                {
LABEL_300:
                  sub_100222570(&v153, &v152);
                  v102 = v151;
                  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_100005F2C(&v150, v180.__r_.__value_.__l.__data_, v180.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v150 = v180;
                  }

                  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_100005F2C(__p, v150.__r_.__value_.__l.__data_, v150.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    *__p = *&v150.__r_.__value_.__l.__data_;
                    *&v148 = *(&v150.__r_.__value_.__l + 2);
                  }

                  v164 = 0;
                  if (SBYTE7(v148) < 0)
                  {
                    sub_100005F2C(buf, __p[0], __p[1]);
                  }

                  else
                  {
                    *buf = *__p;
                    *&v167 = v148;
                  }

                  v144.__r_.__value_.__r.__words[0] = 0;
                  if (ctu::cf::convert_copy())
                  {
                    v103 = v164;
                    v164 = v144.__r_.__value_.__r.__words[0];
                    v146.__r_.__value_.__r.__words[0] = v103;
                    sub_100005978(&v146.__r_.__value_.__l.__data_);
                  }

                  if (SBYTE7(v167) < 0)
                  {
                    operator delete(*buf);
                  }

                  v162 = v164;
                  v164 = 0;
                  sub_100005978(&v164);
                  if (SBYTE7(v148) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v104 = v162;
                  if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_100005F2C(&v146, v165.__r_.__value_.__l.__data_, v165.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    v146 = v165;
                  }

                  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_100005F2C(__p, v146.__r_.__value_.__l.__data_, v146.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    *__p = *&v146.__r_.__value_.__l.__data_;
                    *&v148 = *(&v146.__r_.__value_.__l + 2);
                  }

                  v163 = 0;
                  if (SBYTE7(v148) < 0)
                  {
                    sub_100005F2C(buf, __p[0], __p[1]);
                  }

                  else
                  {
                    *buf = *__p;
                    *&v167 = v148;
                  }

                  v164 = 0;
                  if (ctu::cf::convert_copy())
                  {
                    v105 = v163;
                    v163 = v164;
                    v144.__r_.__value_.__r.__words[0] = v105;
                    sub_100005978(&v144.__r_.__value_.__l.__data_);
                  }

                  if (SBYTE7(v167) < 0)
                  {
                    operator delete(*buf);
                  }

                  v145 = v163;
                  v163 = 0;
                  sub_100005978(&v163);
                  if (SBYTE7(v148) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v106 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@%@", v102, 0, v104, v145);
                  v107 = *(&v153 + 1);
                  *(&v153 + 1) = v106;
                  *buf = v107;
                  sub_100005978(buf);
                  sub_100005978(&v145);
                  if (SHIBYTE(v146.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v146.__r_.__value_.__l.__data_);
                  }

                  sub_100005978(&v162);
                  if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v150.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v165.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v165.__r_.__value_.__l.__data_);
                  }

                  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v180.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_431;
                }

                while (1)
                {
                  *&v175 = 0;
                  v173 = 0u;
                  *v174 = 0u;
                  *v171 = 0u;
                  *v172 = 0u;
                  *v169 = 0u;
                  v170 = 0u;
                  v167 = 0u;
                  v168 = 0u;
                  *buf = 0u;
                  if (*(v96 + 55) < 0)
                  {
                    sub_100005F2C(__p, v96[4], v96[5]);
                  }

                  else
                  {
                    *__p = *(v96 + 2);
                    *&v148 = v96[6];
                  }

                  (*(*v62 + 184))(buf, v62, __p);
                  if (SBYTE7(v148) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v97 = HIBYTE(v180.__r_.__value_.__r.__words[2]);
                  if ((v180.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    v97 = v180.__r_.__value_.__l.__size_;
                  }

                  if (v97)
                  {
                    v98 = HIBYTE(v165.__r_.__value_.__r.__words[2]);
                    if ((v165.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                    {
                      v98 = v165.__r_.__value_.__l.__size_;
                    }

                    if (v98)
                    {
                      goto LABEL_282;
                    }

                    v99 = &v165;
                  }

                  else
                  {
                    v99 = &v180;
                  }

                  std::string::operator=(v99, buf);
LABEL_282:
                  if (SBYTE7(v175) < 0)
                  {
                    operator delete(v174[0]);
                  }

                  if (SHIBYTE(v173) < 0)
                  {
                    operator delete(v172[1]);
                  }

                  if (SHIBYTE(v172[0]) < 0)
                  {
                    operator delete(v171[0]);
                  }

                  if (SBYTE7(v170) < 0)
                  {
                    operator delete(v169[0]);
                  }

                  if (SHIBYTE(v168) < 0)
                  {
                    operator delete(*(&v167 + 1));
                  }

                  if (SBYTE7(v167) < 0)
                  {
                    operator delete(*buf);
                  }

                  v100 = v96[1];
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
                      v101 = v96[2];
                      v31 = *v101 == v96;
                      v96 = v101;
                    }

                    while (!v31);
                  }

                  v96 = v101;
                  if (v101 == &v156[1])
                  {
                    goto LABEL_300;
                  }
                }
              }
            }

            else
            {
              v62 = 0;
            }

            std::mutex::unlock(v56);
            v63 = 0;
            v64 = 1;
            goto LABEL_166;
          }

          std::mutex::unlock(v40);
          if (v46)
          {
            goto LABEL_158;
          }
        }

        else
        {
          std::mutex::unlock(v40);
        }
      }

      else
      {
        v53 = *(a1 + 56);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I No user enabled iccids to restore.", buf, 2u);
        }
      }
    }

    else
    {
      v48 = *(a1 + 56);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "no home settings saved", buf, 2u);
      }
    }

    v134 = 0uLL;
LABEL_110:
    if (v161 == 1)
    {
      if (SBYTE7(v160) < 0)
      {
        operator delete(v159[0]);
      }

      if (SHIBYTE(v158) < 0)
      {
        operator delete(*(&v157 + 1));
      }

      sub_100009970(v156, v156[1]);
    }

    if (v134 && *(&v134 + 1))
    {
      v49 = *(a1 + 56);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I Set title and message with home cellular settings.", buf, 2u);
      }

      sub_100222570(&v137, &v134);
      sub_100222570(&v136, &v134 + 1);
    }

    v51 = v136;
    v50 = v137;
    v52 = v135;
    sub_10000501C(buf, [@"prefs:root=MOBILE_DATA_SETTINGS_ID&client=com.apple.CommCenter&path=CELLULAR" UTF8String]);
    sub_10000501C(v156, "");
    sub_10000501C(__p, "");
    sub_10137EED0(a1, v50, v51, v52, buf, v156, __p);
    if (SBYTE7(v148) < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE7(v157) < 0)
    {
      operator delete(v156[0]);
    }

    if (SBYTE7(v167) < 0)
    {
      operator delete(*buf);
    }

    sub_100005978(&v134 + 1);
    sub_100005978(&v134);
    sub_100005978(&v135);
    sub_100005978(&v136);
    sub_100005978(&v137);
    goto LABEL_136;
  }

  memset(buf, 0, sizeof(buf));
  *&v167 = 0;
  v6 = v131;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst, *a3, *(a3 + 8));
  }

  else
  {
    *__dst = *a3;
    v133 = *(a3 + 16);
  }

  if ((v23 & 0x80) != 0)
  {
    if (v9 == 1)
    {
      v34 = v138;
      goto LABEL_69;
    }

LABEL_70:
    v35 = 0;
    goto LABEL_71;
  }

  if (v23 != 1)
  {
    goto LABEL_70;
  }

  v34 = &v138;
LABEL_69:
  v35 = *v34 == 50;
LABEL_71:
  sub_101374B80(buf, a1, __dst, v35);
  if (SHIBYTE(v133) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v167)
  {
    v36 = *buf;
    if (*buf == &buf[8])
    {
LABEL_82:
      sub_10000501C(v156, [@"prefs:root=MOBILE_DATA_SETTINGS_ID&client=com.apple.CommCenter&path=CELLULAR" UTF8String]);
      sub_10000501C(__p, "");
      sub_10000501C(&v180, "");
      sub_10137EED0(a1, @"TRAVEL_NOTIFICATION_RETURN_HOME_TITLE_%@", @"TRAVEL_NOTIFICATION_RETURN_HOME_MESSAGE_%@", &stru_101F6AFB8, v156, __p, &v180);
      if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v180.__r_.__value_.__l.__data_);
      }

      if (SBYTE7(v148) < 0)
      {
        operator delete(__p[0]);
      }

      if (SBYTE7(v157) < 0)
      {
        operator delete(v156[0]);
      }

      sub_10000501C(v156, "");
      sub_10000501C(__p, "");
      sub_10000501C(&v180, "");
      sub_101372680(a1, a1 + 256, a2, a3, 1, v156, __p, &v180);
    }

    else
    {
      while ((v36[56] & 1) == 0)
      {
        v37 = *(v36 + 1);
        if (v37)
        {
          do
          {
            v38 = v37;
            v37 = *v37;
          }

          while (v37);
        }

        else
        {
          do
          {
            v38 = *(v36 + 2);
            v31 = *v38 == v36;
            v36 = v38;
          }

          while (!v31);
        }

        v36 = v38;
        if (v38 == &buf[8])
        {
          goto LABEL_82;
        }
      }

      sub_10000501C(v156, "");
      sub_10000501C(__p, "");
      sub_10000501C(&v180, "local plan enabled");
      sub_101372680(a1, a1 + 256, a2, a3, 0, v156, __p, &v180);
    }
  }

  else
  {
    sub_10000501C(v156, "");
    sub_10000501C(__p, "");
    sub_10000501C(&v180, "Home Plan Enabled");
    sub_101372680(a1, a1 + 256, a2, a3, 0, v156, __p, &v180);
  }

  if (SHIBYTE(v180.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v180.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v148) < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v157) < 0)
  {
    operator delete(v156[0]);
  }

  sub_100009970(buf, *&buf[8]);
LABEL_136:
  if ((v8 & 0x80) == 0)
  {
LABEL_137:
    if ((v6 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_138;
  }

  operator delete(v138);
  if (v6 < 0)
  {
LABEL_138:
    v27 = v141;
    goto LABEL_139;
  }
}

void sub_10137B160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, int a13, char a14, std::__shared_weak_count *a15, uint64_t a16, int a17, int a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, const void *a26, const void *a27, const void *a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, const void *a59, const void *a60, const void *a61, const void *a62, void *a63)
{
  sub_100005978(&a66);
  if (SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  sub_100FB0A00(&STACK[0x220]);
  sub_1000D6F38(&a46);
  if (a57 < 0)
  {
    operator delete(a52);
  }

  sub_100005978(&a59);
  sub_100005978(&a60);
  if ((a14 & 1) == 0)
  {
    sub_100004A34(a12);
  }

  sub_100005978(&a62);
  sub_100005978(&a61);
  if (a15)
  {
    sub_100004A34(a15);
  }

  sub_101373B64(&a65);
  sub_100005978(&a26);
  sub_100005978(&a27);
  sub_100005978(&a28);
  if (v66 < 0)
  {
    operator delete(a29);
  }

  if (a18 < 0)
  {
    operator delete(a32);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10137B7D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  v5 = (a2 + 8);
  *a1 = *a2;
  if (v4 == 1)
  {
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    v6 = *v5;
    *(a1 + 24) = *(v5 + 2);
    *(a1 + 8) = v6;
    *(a2 + 31) = 0;
    *(a2 + 8) = 0;
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    v7 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v7;
    *(a2 + 55) = 0;
    *(a2 + 32) = 0;
  }

  else
  {
    v8 = *v5;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v8;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *v5 = 0;
    v9 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v9;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    *(a1 + 56) = 1;
  }

  return a1;
}

void TravelHandler::savePostArrivalCache_sync(TravelHandler *this)
{
  v2 = *(this + 18);
  if (v2)
  {
    LOBYTE(v4) = 0;
    v9 = 0;
    if (*(this + 656) == 1)
    {
      v4 = *(this + 75);
      if (*(this + 631) < 0)
      {
        sub_100005F2C(v5, *(this + 76), *(this + 77));
      }

      else
      {
        *v5 = *(this + 38);
        v6 = *(this + 78);
      }

      if (*(this + 655) < 0)
      {
        sub_100005F2C(__p, *(this + 79), *(this + 80));
      }

      else
      {
        *__p = *(this + 632);
        v8 = *(this + 81);
      }

      v9 = 1;
    }

    (*(*v2 + 88))(v2, &v4);
    if (v9 == 1)
    {
      if (SHIBYTE(v8) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v6) < 0)
      {
        operator delete(v5[0]);
      }
    }
  }

  else
  {
    v3 = *(this + 7);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "missing travel model", buf, 2u);
    }
  }
}

void sub_10137B9F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a19 == 1)
  {
    sub_1000EFBF0(&a9);
  }

  _Unwind_Resume(exception_object);
}

void TravelHandler::maybeSendTravelOutboundNotification_sync(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (capabilities::ct::supportsGemini(a1) && (sub_10136ED5C(a1) & 1) == 0 && sub_10136F6C8(a1))
  {
    v6 = *(a1 + 56);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I No need to show post arrival notification", &buf, 2u);
    }

    return;
  }

  sub_101372478();
  if (sub_100007A6C(&qword_101FCA968, a3) == &qword_101FCA970)
  {
    v140 = 0;
    v141 = 0;
    v142 = 0;
    sub_10136F470(&v140, a1, a2);
    v7 = SHIBYTE(v142);
    if (v142 >= 0)
    {
      v8 = HIBYTE(v142);
    }

    else
    {
      v8 = v141;
    }

    if (!v8)
    {
      v32 = *(a1 + 56);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Failed to retrieve previous continent code", &buf, 2u);
      }

      goto LABEL_282;
    }

    v137 = 0;
    v138 = 0;
    v139 = 0;
    sub_10136F470(&v137, a1, a3);
    v9 = HIBYTE(v139);
    v10 = v138;
    if (v139 >= 0)
    {
      v11 = HIBYTE(v139);
    }

    else
    {
      v11 = v138;
    }

    if (!v11)
    {
      v33 = *(a1 + 56);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Failed to retrieve current continent code", &buf, 2u);
      }

      goto LABEL_279;
    }

    if (v11 == v8)
    {
      v12 = v137;
      v13 = v139 >= 0 ? &v137 : v137;
      v14 = v7 >= 0 ? &v140 : v140;
      if (!memcmp(v13, v14, v8))
      {
        if ((v9 & 0x80) != 0)
        {
          if (v10 != 1)
          {
            goto LABEL_23;
          }

          v45 = *v12;
        }

        else
        {
          if (v9 != 1)
          {
            goto LABEL_23;
          }

          v45 = v12;
        }

        if (v45 == 50)
        {
          v68 = *(a1 + 56);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "#I in EU, skip post arrival notification", &buf, 2u);
          }

          sub_10000501C(&buf, "");
          sub_10000501C(v143, "");
          sub_10000501C(&v134, "EU Travel");
          sub_101372680(a1, a1 + 256, a2, a3, 0, &buf, v143, &v134);
          goto LABEL_244;
        }
      }
    }

LABEL_23:
    v118 = (a1 + 360);
    v15 = *(a1 + 360);
    if (v15)
    {
      v16 = a1 + 360;
      do
      {
        v17 = sub_1000068BC((v15 + 32), a3);
        if ((v17 & 0x80u) == 0)
        {
          v16 = v15;
        }

        v15 = *(v15 + ((v17 >> 4) & 8));
      }

      while (v15);
      if (v16 != v118 && (sub_1000068BC(a3, (v16 + 32)) & 0x80) == 0)
      {
        v18 = *(v16 + 56);
        if (v18 + 31536000.0 > sub_10136D3A8(*(a1 + 64)))
        {
          v19 = *(a1 + 56);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I No need to show post arrival notification because of rate limit policy.", &buf, 2u);
          }

          ++*(a1 + 172);
          ServiceMap = Registry::getServiceMap(*(a1 + 64));
          v21 = ServiceMap;
          if ((v22 & 0x8000000000000000) != 0)
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

          std::mutex::lock(ServiceMap);
          buf.__r_.__value_.__r.__words[0] = v22;
          v26 = sub_100009510(&v21[1].__m_.__sig, &buf);
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
LABEL_218:
              if (v28)
              {
                v103 = *(a1 + 172);
                *v143 = 0;
                buf.__r_.__value_.__r.__words[0] = v103;
                v104 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &buf);
                if (v104)
                {
                  *v143 = v104;
                  buf.__r_.__value_.__r.__words[0] = 0;
                  sub_100029A48(&buf.__r_.__value_.__l.__data_);
                  v105 = *v143;
                }

                else
                {
                  v105 = 0;
                }

                v134 = v105;
                *v143 = 0;
                sub_100029A48(v143);
                (*(*v28 + 16))(v28, @"TravelNotificationRateLimitCount", v105, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
                (*(*v28 + 48))(v28, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
                sub_100029A48(&v134);
              }

              else
              {
                v106 = *(a1 + 56);
                if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                  _os_log_error_impl(&_mh_execute_header, v106, OS_LOG_TYPE_ERROR, "Could not get preferences", &buf, 2u);
                }
              }

              if ((v29 & 1) == 0)
              {
                sub_100004A34(v27);
              }

              sub_10000501C(&buf, "");
              sub_10000501C(v143, "");
              sub_10000501C(&v134, "rate limited");
              sub_101372680(a1, a1 + 256, a2, a3, 0, &buf, v143, &v134);
LABEL_244:
              if (SHIBYTE(v136) < 0)
              {
                operator delete(v134);
              }

              if (v144 < 0)
              {
                operator delete(*v143);
              }

              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              goto LABEL_279;
            }
          }

          else
          {
            v28 = 0;
          }

          std::mutex::unlock(v21);
          v27 = 0;
          v29 = 1;
          goto LABEL_218;
        }
      }
    }

    v134 = 0;
    v135 = 0;
    v136 = 0;
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v133 = *(a3 + 16);
    }

    if ((v9 & 0x80) != 0)
    {
      if (v10 == 1)
      {
        v34 = v137;
        goto LABEL_59;
      }
    }

    else if (v9 == 1)
    {
      v34 = &v137;
LABEL_59:
      v35 = *v34 == 50;
      goto LABEL_61;
    }

    v35 = 0;
LABEL_61:
    sub_101374B80(&v134, a1, __p, v35);
    if (SHIBYTE(v133) < 0)
    {
      operator delete(__p[0]);
    }

    if (capabilities::ct::dataOnlySingleSIMDevice(v36))
    {
      v37 = v134;
      if (v134 != &v135)
      {
        while ((v37[56] & 1) == 0)
        {
          v38 = *(v37 + 1);
          if (v38)
          {
            do
            {
              v39 = v38;
              v38 = *v38;
            }

            while (v38);
          }

          else
          {
            do
            {
              v39 = *(v37 + 2);
              v43 = *v39 == v37;
              v37 = v39;
            }

            while (!v43);
          }

          v37 = v39;
          if (v39 == &v135)
          {
            goto LABEL_72;
          }
        }

        v67 = *(a1 + 56);
        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "#I No need to show post arrival notification because device has a local plan enabled already.", &buf, 2u);
        }

        sub_10000501C(&buf, "");
        sub_10000501C(v143, "");
        sub_10000501C(&v131, "local plan enabled");
        sub_101372680(a1, a1 + 256, a2, a3, 0, &buf, v143, &v131);
        if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v131.__r_.__value_.__l.__data_);
        }

        if (v144 < 0)
        {
          operator delete(*v143);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        goto LABEL_278;
      }
    }

LABEL_72:
    memset(&v131, 0, sizeof(v131));
    sub_10000501C(&v131, "");
    v128 = 0;
    v129 = 0;
    v130 = 0;
    sub_10000501C(&v128, "");
    v127 = @"TRAVEL_NOTIFICATION_TITLE";
    CFRetain(@"TRAVEL_NOTIFICATION_TITLE");
    v126 = 0;
    v40 = *(a1 + 1192);
    v41 = *(a1 + 1200);
    if (v40 == v41)
    {
LABEL_89:
      v42 = @"TRAVEL_NOTIFICATION_MESSAGE_PSIM_ONLY";
    }

    else
    {
      v42 = @"TRAVEL_NOTIFICATION_MESSAGE_PSIM_ONLY";
      while (1)
      {
        v43 = !*v40 || v40[3] == 5;
        v44 = !v43;
        if (v40[1] == 3)
        {
          break;
        }

        if (v44)
        {
          goto LABEL_88;
        }

        v40 += 22;
        if (v40 == v41)
        {
          goto LABEL_90;
        }
      }

      if (!v44)
      {
        goto LABEL_89;
      }

LABEL_88:
      v42 = @"TRAVEL_NOTIFICATION_MESSAGE";
    }

LABEL_90:
    v126 = v42;
    v46 = CFRetain(v42);
    if (capabilities::ct::dataOnlySingleSIMDevice(v46))
    {
      if (sub_10136DCB8(a1))
      {
        if (SHIBYTE(v130) < 0)
        {
          v129 = 6;
          v47 = v128;
        }

        else
        {
          HIBYTE(v130) = 6;
          v47 = &v128;
        }

        *(v47 + 2) = 28009;
        *v47 = 1931505518;
        v69 = v47 + 6;
        v50 = @"prefs:root=MOBILE_DATA_SETTINGS_ID&client=com.apple.CommCenter&path=CELLULAR&type=travelEducation";
      }

      else
      {
        v50 = [@"prefs:root=MOBILE_DATA_SETTINGS_ID&client=com.apple.CommCenter&path=CELLULAR&type=travelEducation" stringByAppendingString:@"&showRoamingOption=1"];
        std::string::append(&v131, "data roaming_", 0xDuLL);
        if (SHIBYTE(v130) < 0)
        {
          v129 = 13;
          v51 = v128;
        }

        else
        {
          HIBYTE(v130) = 13;
          v51 = &v128;
        }

        qmemcpy(v51, "has user sims", 13);
        v69 = v51 + 13;
      }

      *v69 = 0;
      if (v136)
      {
        v70 = [(__CFString *)v50 stringByAppendingString:@"&showLocalPlanOption=1"];

        std::string::append(&v131, "switch to existing plan_", 0x18uLL);
        if (SHIBYTE(v130) < 0)
        {
          v129 = 13;
          v71 = v128;
        }

        else
        {
          HIBYTE(v130) = 13;
          v71 = &v128;
        }

        strcpy(v71, "has local sim");
        v72 = v70;
      }

      else
      {
        v72 = v50;
      }

      v73 = [v72 stringByAppendingString:@"&showPurchaseOption=1"];

      v49 = v73;
      std::string::append(&v131, "purchase local plan", 0x13uLL);
      goto LABEL_161;
    }

    if (sub_10136EE9C(a1, a3))
    {
LABEL_95:
      v48 = *(a1 + 56);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I Suppress notification because one of the existing cellular plan(s) works in the current country.", &buf, 2u);
      }

LABEL_97:
      v49 = &stru_101F6AFB8;
      goto LABEL_273;
    }

    v52 = *(a1 + 1216);
    v53 = *(a1 + 1224);
    if (v52 != v53)
    {
      v54 = (v52 + 72);
      do
      {
        if (*(v54 + 23) < 0)
        {
          sub_100005F2C(&buf, *v54, *(v54 + 1));
        }

        else
        {
          v55 = *v54;
          buf.__r_.__value_.__r.__words[2] = *(v54 + 2);
          *&buf.__r_.__value_.__l.__data_ = v55;
        }

        v56 = sub_10136BCA0(*(a1 + 1192), *(a1 + 1200), &buf);
        v57 = v56;
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
          if (v57)
          {
            goto LABEL_117;
          }
        }

        else if (v56)
        {
          goto LABEL_117;
        }

        if (subscriber::isSimReady() && a1 + 1112 != sub_100007A6C(a1 + 1104, v54))
        {
          if (*(sub_1000E20F0(a1 + 1104, v54) + 8) == 4)
          {
            v58 = sub_1000E20F0(a1 + 1104, v54);
            sub_10000501C(v143, "*");
            v59 = sub_100007A6C(v58 + 16, v143);
            if (v144 < 0)
            {
              operator delete(*v143);
            }

            if (v58 + 24 != v59)
            {
              goto LABEL_95;
            }
          }

          if (*(sub_1000E20F0(a1 + 1104, v54) + 8) <= 2)
          {
            v60 = sub_1000E20F0(a1 + 1104, v54);
            if (v60 + 24 != sub_100007A6C(v60 + 16, a3))
            {
              goto LABEL_95;
            }
          }
        }

LABEL_117:
        v61 = v54 + 6;
        v54 = (v54 + 168);
      }

      while (v61 != v53);
    }

    v49 = &stru_101F6AFB8;
    if ((sub_10136ED5C(a1) & 1) == 0 && !sub_101371638(a1, a3))
    {
      if (*(a1 + 1096) == 1 && *(a1 + 1072) == 1)
      {
        v107 = *(a1 + 56);
        if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "#I Showed pre-departure notification already.", &buf, 2u);
        }

        goto LABEL_273;
      }

      if ((*(**(a1 + 96) + 80))(*(a1 + 96)))
      {
        for (i = *(a1 + 1192); i != *(a1 + 1200); i += 22)
        {
          if (*i)
          {
            v109 = i[3] == 5;
          }

          else
          {
            v109 = 1;
          }

          v110 = !v109;
          if (i[1] == 3)
          {
            if (!v110)
            {
              goto LABEL_97;
            }

            goto LABEL_251;
          }

          if (v110)
          {
            goto LABEL_251;
          }
        }

        goto LABEL_273;
      }

LABEL_251:
      v49 = &stru_101F6AFB8;
      if ((sub_10136F6C8(a1) & 1) == 0 && (sub_10136DCB8(a1) & 1) == 0)
      {
        if (!*(a1 + 2932))
        {
          v114 = *(a1 + 56);
          if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v114, OS_LOG_TYPE_DEFAULT, "#I Postponing post-arrival due to no wifi", &buf, 2u);
          }

          sub_100580870(&buf, a2, a3);
          v115 = (a1 + 664);
          if (*(a1 + 712) == 1)
          {
            sub_10015F6CC(v115, &buf);
          }

          else
          {
            *v115 = *&buf.__r_.__value_.__l.__data_;
            *(a1 + 680) = *(&buf.__r_.__value_.__l + 2);
            memset(&buf, 0, sizeof(buf));
            v116 = v120;
            *&v120 = 0;
            *(a1 + 688) = v116;
            *(a1 + 704) = v121;
            *(&v120 + 1) = 0;
            v121 = 0;
            *(a1 + 712) = 1;
          }

          sub_1000D6F38(&buf);
          goto LABEL_273;
        }

        v111 = sub_1013719B0(a1);
        if ((v111 & 1) == 0)
        {
          buf.__r_.__value_.__r.__words[0] = @"TRAVEL_NOTIFICATION_REDUCED_MESSAGE";
          sub_10021D11C(&v126, &buf.__r_.__value_.__l.__data_);
        }

        sub_10000501C(v143, "");
        sub_10000501C(v124, "");
        sub_10000501C(v122, "");
        sub_101374410(&buf, a1, 1, v143, v124, v111 ^ 1u, v122);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_buf = &buf;
        }

        else
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        v113 = [NSString stringWithUTF8String:p_buf];
        v49 = [&stru_101F6AFB8 stringByAppendingString:v113];

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if (v123 < 0)
        {
          operator delete(v122[0]);
        }

        if (v125 < 0)
        {
          operator delete(v124[0]);
        }

        if (v144 < 0)
        {
          operator delete(*v143);
        }
      }

LABEL_213:
      if ([(__CFString *)v49 length]&& *(a1 + 1096) == 1)
      {
        *(a1 + 1073) = 1;
        sub_1013751D4(a1);
      }

LABEL_161:
      v75 = v126;
      v74 = v127;
      sub_10000501C(&buf, [(__CFString *)v49 UTF8String]);
      sub_10000501C(v143, "");
      sub_10000501C(v124, "");
      sub_10137EED0(a1, v74, v75, &stru_101F6AFB8, &buf, v143, v124);
      if (v125 < 0)
      {
        operator delete(v124[0]);
      }

      if (v144 < 0)
      {
        operator delete(*v143);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      sub_10000501C(&buf, "");
      sub_101372680(a1, a1 + 256, a2, a3, 1, &v128, &v131, &buf);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v76 = sub_10136D3A8(*(a1 + 64));
      buf.__r_.__value_.__r.__words[0] = a3;
      *(sub_10079B1AC((a1 + 352), a3, &unk_101802C98, &buf, v143) + 7) = v76;
      v77 = Registry::getServiceMap(*(a1 + 64));
      v78 = v77;
      if ((v79 & 0x8000000000000000) != 0)
      {
        v80 = (v79 & 0x7FFFFFFFFFFFFFFFLL);
        v81 = 5381;
        do
        {
          v79 = v81;
          v82 = *v80++;
          v81 = (33 * v81) ^ v82;
        }

        while (v82);
      }

      std::mutex::lock(v77);
      buf.__r_.__value_.__r.__words[0] = v79;
      v83 = sub_100009510(&v78[1].__m_.__sig, &buf);
      if (v83)
      {
        v84 = v83[3];
        v85 = v83[4];
        if (v85)
        {
          v86 = v83[3];
          atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v78);
          atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
          v84 = v86;
          sub_100004A34(v85);
          v87 = 0;
          if (!v86)
          {
            goto LABEL_175;
          }

          goto LABEL_179;
        }
      }

      else
      {
        v84 = 0;
      }

      std::mutex::unlock(v78);
      v85 = 0;
      v87 = 1;
      if (!v84)
      {
LABEL_175:
        v88 = *(a1 + 56);
        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_error_impl(&_mh_execute_header, v88, OS_LOG_TYPE_ERROR, "Could not get preferences", &buf, 2u);
        }

        goto LABEL_195;
      }

LABEL_179:
      if (*(a1 + 368))
      {
        v117 = v84;
        v89 = [NSMutableArray arrayWithCapacity:?];
        v90 = *(a1 + 352);
        if (v90 != v118)
        {
          do
          {
            v91 = objc_opt_new();
            sub_100737750(v90 + 4, @"key", v91);
            v92 = @"value";
            v93 = v91;
            v94 = [NSNumber numberWithDouble:*(v90 + 7)];
            codec::setItem(v94, @"value", v93, v95);

            if (v93)
            {
              [v89 addObject:v93];
            }

            v96 = v90[1];
            if (v96)
            {
              do
              {
                v97 = v96;
                v96 = *v96;
              }

              while (v96);
            }

            else
            {
              do
              {
                v97 = v90[2];
                v43 = *v97 == v90;
                v90 = v97;
              }

              while (!v43);
            }

            v90 = v97;
          }

          while (v97 != v118);
        }

        v84 = v117;
        if ([v89 count])
        {
          v98 = v89;
        }

        else
        {
          v98 = 0;
        }
      }

      else
      {
        v98 = 0;
      }

      (*(*v84 + 16))(v84, @"TravelNotificationTimestamps", v98, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      *(a1 + 170) = 1;
      (*(*v84 + 16))(v84, @"TravelNotificationShowReturnHome", kCFBooleanTrue, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      (*(*v84 + 48))(v84, @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

LABEL_195:
      if ((v87 & 1) == 0)
      {
        sub_100004A34(v85);
      }

      if (*(a1 + 656) == 1)
      {
        v99 = *(a1 + 56);
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "#I Post-arrival occurred, clear postponed post arrival cache", &buf, 2u);
        }

        sub_10137FBE4(a1 + 600);
        TravelHandler::savePostArrivalCache_sync(a1);
      }

      v100 = *(a1 + 552);
      if (!v100)
      {
        goto LABEL_273;
      }

      v101 = *(a1 + 56);
      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "#I Post-arrival already occurred, clear postponed pa", &buf, 2u);
        v100 = *(a1 + 552);
        *(a1 + 552) = 0;
        if (!v100)
        {
          goto LABEL_273;
        }
      }

      else
      {
        *(a1 + 552) = 0;
      }

      (*(*v100 + 8))(v100);
LABEL_273:
      sub_100005978(&v126);
      sub_100005978(&v127);
      if (SHIBYTE(v130) < 0)
      {
        operator delete(v128);
      }

      if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v131.__r_.__value_.__l.__data_);
      }

      LOBYTE(v9) = HIBYTE(v139);
LABEL_278:
      sub_100009970(&v134, v135);
LABEL_279:
      if ((v9 & 0x80) != 0)
      {
        operator delete(v137);
      }

      LOBYTE(v7) = HIBYTE(v142);
LABEL_282:
      if ((v7 & 0x80) == 0)
      {
        return;
      }

      v31 = v140;
      goto LABEL_284;
    }

    v62 = *(a1 + 56);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#I One of the existing cellular plan(s) works in the current country.", &buf, 2u);
    }

    memset(&buf, 0, sizeof(buf));
    sub_101373CBC(&buf, a1);
    size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = buf.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      if (!sub_10136EBE4(a1, &buf))
      {
        *v143 = @"TRAVEL_NOTIFICATION_POST_ARRIVAL_TITLE";
        sub_10021D11C(&v127, v143);
        sub_101372ED8(v124, a1, &buf);
        *v143 = v126;
        v126 = v124[0];
        v124[0] = 0;
        sub_100005978(v143);
        sub_100005978(v124);
        sub_10000501C(v124, "");
        sub_10000501C(v122, "");
        sub_101374410(v143, a1, 2, &buf, v124, 0, v122);
        if (v144 >= 0)
        {
          v64 = v143;
        }

        else
        {
          v64 = *v143;
        }

        v65 = [NSString stringWithUTF8String:v64];
        v49 = [&stru_101F6AFB8 stringByAppendingString:v65];

        if (v144 < 0)
        {
          operator delete(*v143);
        }

        if (v123 < 0)
        {
          operator delete(v122[0]);
        }

        if (v125 < 0)
        {
          operator delete(v124[0]);
        }

        v66 = 1;
LABEL_210:
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if ((v66 & 1) == 0)
        {
          goto LABEL_273;
        }

        goto LABEL_213;
      }
    }

    else
    {
      v102 = *(a1 + 56);
      if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
      {
        *v143 = 0;
        _os_log_error_impl(&_mh_execute_header, v102, OS_LOG_TYPE_ERROR, "no iccid found for post-arrival notif", v143, 2u);
      }
    }

    v66 = 0;
    goto LABEL_210;
  }

  v30 = *(a1 + 56);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Denylisted country and skip showing post arrival notification", &buf, 2u);
  }

  sub_10000501C(&buf, "");
  sub_10000501C(v143, "");
  sub_10000501C(&v140, "deny listed country");
  sub_101372680(a1, a1 + 256, a2, a3, 0, &buf, v143, &v140);
  if (SHIBYTE(v142) < 0)
  {
    operator delete(v140);
  }

  if (v144 < 0)
  {
    operator delete(*v143);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    v31 = buf.__r_.__value_.__r.__words[0];
LABEL_284:
    operator delete(v31);
  }
}

void sub_10137D058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, const void *a37, const void *a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  sub_100005978(&a37);
  sub_100005978(&a38);
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  v58 = *(v56 - 153);
  sub_100009970(v56 - 200, *(v56 - 192));
  if (v58 < 0)
  {
    operator delete(*(v56 - 176));
  }

  if (*(v56 - 129) < 0)
  {
    operator delete(*(v56 - 152));
  }

  _Unwind_Resume(a1);
}

void sub_10137D434(uint64_t a1)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_10137415C(&__p, *(a1 + 1216), *(a1 + 1224), 1);
  v2 = HIBYTE(v7);
  if (v7 < 0)
  {
    v2 = v6;
  }

  if (v2)
  {
    if ((*(a1 + 1312) & 0xFFFFFFFE) == 4)
    {
      sub_101376164(a1, &__p);
    }
  }

  else
  {
    v3 = *(a1 + 56);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Unable to get iccid from slot one", v4, 2u);
    }
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void sub_10137D500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10137D51C(uint64_t a1)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_10137415C(&__p, *(a1 + 1216), *(a1 + 1224), 2);
  v2 = HIBYTE(v7);
  if (v7 < 0)
  {
    v2 = v6;
  }

  if (v2)
  {
    if ((*(a1 + 2128) & 0xFFFFFFFE) == 4)
    {
      sub_101376164(a1, &__p);
    }
  }

  else
  {
    v3 = *(a1 + 56);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Unable to get iccid from slot two", v4, 2u);
    }
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void sub_10137D5E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10137D604(uint64_t a1)
{
  v2 = *(a1 + 1216);
  v3 = *(a1 + 1224);
  if (v2 != v3)
  {
    v4 = (a1 + 312);
    do
    {
      if (subscriber::isSimReady())
      {
        if ((*(v2 + 95) & 0x8000000000000000) != 0)
        {
          if (!*(v2 + 80))
          {
            goto LABEL_135;
          }
        }

        else if (!*(v2 + 95))
        {
          goto LABEL_135;
        }

        if ((*(v2 + 119) & 0x8000000000000000) != 0)
        {
          if (*(v2 + 104))
          {
LABEL_12:
            v51 = 0u;
            memset(&v52, 0, sizeof(v52));
            *string = 0u;
            *v50 = 0u;
            v48 = 0u;
            memset(v47, 0, sizeof(v47));
            std::string::operator=(v47, (v2 + 96));
            v46 = 0u;
            memset(__str, 0, sizeof(__str));
            sub_100A34BC8(__str);
            std::string::operator=(&v47[24], __str);
            std::string::operator=(string, &__str[24]);
            std::string::operator=(&v50[1], (v2 + 120));
            std::string::operator=(&v52, (v2 + 144));
            v5 = *v4;
            if (*v4)
            {
              v6 = a1 + 312;
              do
              {
                v7 = sub_1000068BC((v5 + 32), (v2 + 72));
                if ((v7 & 0x80u) == 0)
                {
                  v6 = v5;
                }

                v5 = *(v5 + ((v7 >> 4) & 8));
              }

              while (v5);
              if (v6 != v4 && (sub_1000068BC((v2 + 72), (v6 + 32)) & 0x80) == 0)
              {
                *buf = v2 + 72;
                v8 = sub_10138AEF0((a1 + 304), (v2 + 72), buf);
                v9 = *(v2 + 119);
                if (v9 >= 0)
                {
                  v10 = *(v2 + 119);
                }

                else
                {
                  v10 = *(v2 + 104);
                }

                v11 = *(v8 + 79);
                v12 = v11;
                if ((v11 & 0x80u) != 0)
                {
                  v11 = v8[8];
                }

                if (v10 != v11 || (v9 >= 0 ? (v13 = (v2 + 96)) : (v13 = *(v2 + 96)), (v16 = v8[7], v14 = v8 + 7, v15 = v16, v12 >= 0) ? (v17 = v14) : (v17 = v15), memcmp(v13, v17, v10)))
                {
                  *buf = v2 + 72;
                  v18 = sub_10138AEF0((a1 + 304), (v2 + 72), buf);
                  ServiceMap = Registry::getServiceMap(*(a1 + 64));
                  v20 = ServiceMap;
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

                  std::mutex::lock(ServiceMap);
                  *buf = v21;
                  v25 = sub_100009510(&v20[1].__m_.__sig, buf);
                  v44 = v18;
                  if (v25)
                  {
                    v26 = v25[4];
                    v43 = v25[3];
                    if (v26)
                    {
                      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
                      std::mutex::unlock(v20);
                      atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
                      sub_100004A34(v26);
                      v27 = 0;
                      goto LABEL_40;
                    }
                  }

                  else
                  {
                    v43 = 0;
                  }

                  std::mutex::unlock(v20);
                  v26 = 0;
                  v27 = 1;
LABEL_40:
                  if (v43)
                  {
                    v71[0] = 0;
                    v28 = xpc_dictionary_create(0, 0, 0);
                    v29 = v28;
                    if (v28)
                    {
                      v71[0] = v28;
                      goto LABEL_46;
                    }

                    v29 = xpc_null_create();
                    v71[0] = v29;
                    if (v29)
                    {
LABEL_46:
                      if (xpc_get_type(v29) != &_xpc_type_dictionary)
                      {
                        v32 = xpc_null_create();
                        goto LABEL_50;
                      }

                      xpc_retain(v29);
                    }

                    else
                    {
                      v32 = xpc_null_create();
                      v29 = 0;
LABEL_50:
                      v71[0] = v32;
                    }

                    xpc_release(v29);
                    v33 = (v44 + 10);
                    if (*(v44 + 103) < 0)
                    {
                      if (!v44[11])
                      {
                        goto LABEL_59;
                      }

                      v33 = *v33;
                    }

                    else if (!*(v44 + 103))
                    {
                      goto LABEL_59;
                    }

                    v69 = xpc_string_create(v33);
                    if (!v69)
                    {
                      v69 = xpc_null_create();
                    }

                    *buf = v71;
                    v68 = "previousMCC";
                    sub_10000F688(buf, &v69, &v70);
                    xpc_release(v70);
                    v70 = 0;
                    xpc_release(v69);
                    v69 = 0;
LABEL_59:
                    v34 = (v44 + 13);
                    if (*(v44 + 127) < 0)
                    {
                      if (!v44[14])
                      {
                        goto LABEL_67;
                      }

                      v34 = *v34;
                    }

                    else if (!*(v44 + 127))
                    {
                      goto LABEL_67;
                    }

                    v65 = xpc_string_create(v34);
                    if (!v65)
                    {
                      v65 = xpc_null_create();
                    }

                    *buf = v71;
                    v68 = "previousMNC";
                    sub_10000F688(buf, &v65, &v66);
                    xpc_release(v66);
                    v66 = 0;
                    xpc_release(v65);
                    v65 = 0;
LABEL_67:
                    v35 = (v44 + 16);
                    if (*(v44 + 151) < 0)
                    {
                      if (!v44[17])
                      {
                        goto LABEL_75;
                      }

                      v35 = *v35;
                    }

                    else if (!*(v44 + 151))
                    {
                      goto LABEL_75;
                    }

                    v63 = xpc_string_create(v35);
                    if (!v63)
                    {
                      v63 = xpc_null_create();
                    }

                    *buf = v71;
                    v68 = "previousGID1";
                    sub_10000F688(buf, &v63, &v64);
                    xpc_release(v64);
                    v64 = 0;
                    xpc_release(v63);
                    v63 = 0;
LABEL_75:
                    v36 = (v44 + 19);
                    if (*(v44 + 175) < 0)
                    {
                      if (!v44[20])
                      {
                        goto LABEL_83;
                      }

                      v36 = *v36;
                    }

                    else if (!*(v44 + 175))
                    {
                      goto LABEL_83;
                    }

                    v61 = xpc_string_create(v36);
                    if (!v61)
                    {
                      v61 = xpc_null_create();
                    }

                    *buf = v71;
                    v68 = "previousGID2";
                    sub_10000F688(buf, &v61, &v62);
                    xpc_release(v62);
                    v62 = 0;
                    xpc_release(v61);
                    v61 = 0;
LABEL_83:
                    if (SHIBYTE(v48) < 0)
                    {
                      if (!v48)
                      {
                        goto LABEL_91;
                      }

                      v37 = *&v47[24];
                    }

                    else
                    {
                      v37 = &v47[24];
                      if (!HIBYTE(v48))
                      {
                        goto LABEL_91;
                      }
                    }

                    v59 = xpc_string_create(v37);
                    if (!v59)
                    {
                      v59 = xpc_null_create();
                    }

                    *buf = v71;
                    v68 = "currentMCC";
                    sub_10000F688(buf, &v59, &v60);
                    xpc_release(v60);
                    v60 = 0;
                    xpc_release(v59);
                    v59 = 0;
LABEL_91:
                    if (SHIBYTE(v50[0]) < 0)
                    {
                      if (!string[1])
                      {
                        goto LABEL_99;
                      }

                      v38 = string[0];
                    }

                    else
                    {
                      v38 = string;
                      if (!HIBYTE(v50[0]))
                      {
                        goto LABEL_99;
                      }
                    }

                    v57 = xpc_string_create(v38);
                    if (!v57)
                    {
                      v57 = xpc_null_create();
                    }

                    *buf = v71;
                    v68 = "currentMNC";
                    sub_10000F688(buf, &v57, &v58);
                    xpc_release(v58);
                    v58 = 0;
                    xpc_release(v57);
                    v57 = 0;
LABEL_99:
                    if (SHIBYTE(v51) < 0)
                    {
                      if (!v51)
                      {
                        goto LABEL_107;
                      }

                      v39 = v50[1];
                    }

                    else
                    {
                      v39 = &v50[1];
                      if (!HIBYTE(v51))
                      {
                        goto LABEL_107;
                      }
                    }

                    object = xpc_string_create(v39);
                    if (!object)
                    {
                      object = xpc_null_create();
                    }

                    *buf = v71;
                    v68 = "currentGID1";
                    sub_10000F688(buf, &object, &v56);
                    xpc_release(v56);
                    v56 = 0;
                    xpc_release(object);
                    object = 0;
LABEL_107:
                    if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
                    {
                      if (!v52.__r_.__value_.__l.__size_)
                      {
                        goto LABEL_115;
                      }

                      v40 = v52.__r_.__value_.__r.__words[0];
                    }

                    else
                    {
                      v40 = &v52;
                      if (!*(&v52.__r_.__value_.__s + 23))
                      {
                        goto LABEL_115;
                      }
                    }

                    v53 = xpc_string_create(v40);
                    if (!v53)
                    {
                      v53 = xpc_null_create();
                    }

                    *buf = v71;
                    v68 = "currentGID2";
                    sub_10000F688(buf, &v53, &v54);
                    xpc_release(v54);
                    v54 = 0;
                    xpc_release(v53);
                    v53 = 0;
LABEL_115:
                    *buf = v71[0];
                    if (v71[0])
                    {
                      xpc_retain(v71[0]);
                    }

                    else
                    {
                      *buf = xpc_null_create();
                    }

                    (*(*v43 + 16))(v43, "commCenterIMSISwitchEvent", buf);
                    v30 = v27;
                    xpc_release(*buf);
                    *buf = 0;
                    xpc_release(v71[0]);
                  }

                  else
                  {
                    v30 = v27;
                    v31 = *(a1 + 56);
                    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "Couldn't get analytics handler", buf, 2u);
                    }
                  }

                  if ((v30 & 1) == 0)
                  {
                    sub_100004A34(v26);
                  }
                }
              }
            }

            *buf = v2 + 72;
            v41 = sub_10138AEF0((a1 + 304), (v2 + 72), buf);
            std::string::operator=((v41 + 7), v47);
            std::string::operator=((v41 + 10), &v47[24]);
            std::string::operator=((v41 + 13), string);
            std::string::operator=((v41 + 16), &v50[1]);
            std::string::operator=((v41 + 19), &v52);
            if (SHIBYTE(v46) < 0)
            {
              operator delete(*&__str[24]);
            }

            if ((__str[23] & 0x80000000) != 0)
            {
              operator delete(*__str);
            }

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
              operator delete(string[0]);
            }

            if (SHIBYTE(v48) < 0)
            {
              operator delete(*&v47[24]);
            }

            if ((v47[23] & 0x80000000) != 0)
            {
              operator delete(*v47);
            }
          }
        }

        else if (*(v2 + 119))
        {
          goto LABEL_12;
        }
      }

LABEL_135:
      v2 += 168;
    }

    while (v2 != v3);
  }

  return sub_101376028(a1);
}

void sub_10137DEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  xpc_release(*(v11 - 128));
  *(v11 - 128) = 0;
  xpc_release(*(v11 - 96));
  if ((v9 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  sub_1000D6F38(va);
  sub_10016C520(va1);
  _Unwind_Resume(a1);
}

uint64_t *sub_10137DF30(uint64_t *result)
{
  if (result[150] == result[149])
  {
    return result;
  }

  v1 = result;
  v2 = result[138];
  v3 = result + 139;
  if (v2 == result + 139)
  {
    return sub_101376028(v1);
  }

  v4 = 0;
  do
  {
    v5 = v2 + 4;
    v6 = *(v2 + 55);
    if (v6 < 0)
    {
      if (v2[5] != 14)
      {
        goto LABEL_13;
      }

      v7 = *v5;
    }

    else
    {
      v7 = v2 + 4;
      if (v6 != 14)
      {
        goto LABEL_13;
      }
    }

    v8 = *v7;
    v9 = *(v7 + 6);
    if (v8 == 0x76617254706D6554 && v9 == 0x6F666E496C657661)
    {
      v14 = v2[1];
      if (v14)
      {
        do
        {
          v2 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v2;
          v2 = v2[2];
        }

        while (*v2 != v15);
      }

      continue;
    }

LABEL_13:
    v19 = 0u;
    memset(v18, 0, sizeof(v18));
    sGetProfileDetails();
    if (BYTE8(v19))
    {
      v11 = v2[1];
      if (v11)
      {
        do
        {
          v2 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v2;
          v2 = v2[2];
        }

        while (*v2 != v12);
      }

LABEL_24:
      sub_100E3A5D4(v18);
      continue;
    }

    v13 = v1[7];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v2 + 55) < 0)
      {
        v5 = *v5;
      }

      *buf = 136315138;
      v17 = v5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Clear cache for (%s)", buf, 0xCu);
    }

    v2 = sub_101386E10(v1 + 138, v2);
    v4 = 1;
    if (BYTE8(v19))
    {
      goto LABEL_24;
    }
  }

  while (v2 != v3);
  if (v4)
  {
    sub_10136AD80(v1);
  }

  return sub_101376028(v1);
}

uint64_t sub_10137E16C(uint64_t result, int a2)
{
  v2 = *(result + 1156);
  if (v2 != a2 && v2 != 0)
  {
    return sub_101375FD4(result);
  }

  return result;
}

void sub_10137E184(uint64_t a1, int a2)
{
  if (a2 != 1 && *(a1 + 2932) == 1 && *(a1 + 712) == 1)
  {
    v3 = *(a1 + 56);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I re-initiating post-arrival after getting wifi", v4, 2u);
      if ((*(a1 + 712) & 1) == 0)
      {
        sub_1000D1644();
      }
    }

    TravelHandler::maybeSendTravelOutboundNotification_sync(a1, (a1 + 664), a1 + 688);
    if (*(a1 + 712) == 1)
    {
      if (*(a1 + 711) < 0)
      {
        operator delete(*(a1 + 688));
      }

      if (*(a1 + 687) < 0)
      {
        operator delete(*(a1 + 664));
      }

      *(a1 + 712) = 0;
    }
  }
}

void sub_10137E264(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 256);
    if (*(a1 + 279) < 0)
    {
      v3 = *v3;
    }

    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I User's home country selection is: (%s)", buf, 0xCu);
    v2 = *(a1 + 56);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 208);
    if (*(a1 + 231) < 0)
    {
      v4 = *v4;
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I User's current country is: (%s)", buf, 0xCu);
  }

  v5 = *(a1 + 352);
  if (v5 != (a1 + 360))
  {
    do
    {
      v6 = *(a1 + 56);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v5 + 4;
        if (*(v5 + 55) < 0)
        {
          v7 = *v7;
        }

        v8 = v5[7];
        *buf = 136315394;
        *&buf[4] = v7;
        *&buf[12] = 2048;
        *&buf[14] = v8;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Country: %s, timestamp: %f\n", buf, 0x16u);
      }

      v9 = v5[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v5[2];
          v11 = *v10 == v5;
          v5 = v10;
        }

        while (!v11);
      }

      v5 = v10;
    }

    while (v10 != (a1 + 360));
  }

  v12 = *(a1 + 56);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 170);
    *buf = 67109120;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Should show inbound travel notification: %d", buf, 8u);
    v12 = *(a1 + 56);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 172);
    *buf = 67109120;
    *&buf[4] = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I rate limited count: %d", buf, 8u);
  }

  if (*(a1 + 1096) == 1)
  {
    v15 = *(a1 + 56);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = (a1 + 728);
      if (*(a1 + 751) < 0)
      {
        v16 = *v16;
      }

      *buf = 136315138;
      *&buf[4] = v16;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Trip ID: (%s)", buf, 0xCu);
      v15 = *(a1 + 56);
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 1096) & 1) == 0)
      {
        sub_1000D1644();
      }

      sub_101373BC0(buf);
      if (buf[23] >= 0)
      {
        v17 = buf;
      }

      else
      {
        v17 = *buf;
      }

      LODWORD(v60.__r_.__value_.__l.__data_) = 136315138;
      *(v60.__r_.__value_.__r.__words + 4) = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Departure time: (%s)", &v60, 0xCu);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v15 = *(a1 + 56);
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 1096) & 1) == 0)
      {
        sub_1000D1644();
      }

      sub_101373BC0(buf);
      if (buf[23] >= 0)
      {
        v18 = buf;
      }

      else
      {
        v18 = *buf;
      }

      LODWORD(v60.__r_.__value_.__l.__data_) = 136315138;
      *(v60.__r_.__value_.__r.__words + 4) = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Arrival time: (%s)", &v60, 0xCu);
      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v15 = *(a1 + 56);
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 1096) & 1) == 0)
      {
        sub_1000D1644();
      }

      v19 = (a1 + 872);
      if (*(a1 + 895) < 0)
      {
        v19 = *v19;
      }

      *buf = 136315138;
      *&buf[4] = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Arrival country: (%s)", buf, 0xCu);
      v15 = *(a1 + 56);
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 1096) & 1) == 0)
      {
        sub_1000D1644();
      }

      v20 = asString(*(a1 + 1072));
      *buf = 136315138;
      *&buf[4] = v20;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Pre-Departure notif shown (%s)", buf, 0xCu);
      v15 = *(a1 + 56);
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 1096) & 1) == 0)
      {
        sub_1000D1644();
      }

      v21 = *(a1 + 1088);
      *buf = 67109120;
      *&buf[4] = v21;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Pre-Departure notif time shown (%d)", buf, 8u);
      v15 = *(a1 + 56);
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 1096) & 1) == 0)
      {
        sub_1000D1644();
      }

      v22 = asString(*(a1 + 1073));
      *buf = 136315138;
      *&buf[4] = v22;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Post-Arrival shown (%s)", buf, 0xCu);
    }
  }

  if (*(a1 + 656) == 1)
  {
    v23 = *(a1 + 56);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = (a1 + 632);
      if (*(a1 + 655) < 0)
      {
        v24 = *v24;
      }

      *buf = 136315138;
      *&buf[4] = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I fPostponedPostArrivalCache - fCurrentCountry (%s)", buf, 0xCu);
      v23 = *(a1 + 56);
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 656) & 1) == 0)
      {
        sub_1000D1644();
      }

      v25 = (a1 + 608);
      if (*(a1 + 631) < 0)
      {
        v25 = *v25;
      }

      *buf = 136315138;
      *&buf[4] = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I fPostponedPostArrivalCache - fPreviousCountry (%s)", buf, 0xCu);
      v23 = *(a1 + 56);
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 656) & 1) == 0)
      {
        sub_1000D1644();
      }

      v26 = *(a1 + 600);
      *buf = 134217984;
      *&buf[4] = v26;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I fPostponedPostArrivalCache - fTimeStamp (%f)", buf, 0xCu);
    }
  }

  if (*(a1 + 712) == 1)
  {
    v27 = *(a1 + 56);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = (a1 + 664);
      if (*(a1 + 687) < 0)
      {
        v28 = *v28;
      }

      *buf = 136315138;
      *&buf[4] = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I fPostponedPostArrivalDueToNoInternet - fPreviousCountry (%s)", buf, 0xCu);
      v27 = *(a1 + 56);
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(a1 + 712) & 1) == 0)
      {
        sub_1000D1644();
      }

      v29 = (a1 + 688);
      if (*(a1 + 711) < 0)
      {
        v29 = *v29;
      }

      *buf = 136315138;
      *&buf[4] = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I fPostponedPostArrivalDueToNoInternet - fCurrentCountry (%s)", buf, 0xCu);
    }
  }

  v30 = *(a1 + 1104);
  if (v30 != (a1 + 1112))
  {
    do
    {
      v31 = *(a1 + 56);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = v30 + 4;
        if (*(v30 + 55) < 0)
        {
          v32 = *v32;
        }

        v33 = asString(*(v30 + 56));
        v34 = *(v30 + 16);
        v35 = "Undefined SourceType";
        if (v34 <= 4)
        {
          v35 = off_101F32D70[v34];
        }

        sub_100074B94(v30[9], (v30 + 10), ",", 1, &v60);
        if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = &v60;
        }

        else
        {
          v36 = v60.__r_.__value_.__r.__words[0];
        }

        v37 = "unknown";
        if (*(v30 + 97) == 1)
        {
          v37 = asString(*(v30 + 96));
        }

        v38 = "unknown";
        if (*(v30 + 128) == 1)
        {
          v38 = (v30 + 13);
          if (*(v30 + 127) < 0)
          {
            v38 = *v38;
          }
        }

        *buf = 136316418;
        *&buf[4] = v32;
        *&buf[12] = 2080;
        *&buf[14] = v33;
        *&buf[22] = 2080;
        v62 = v35;
        v63 = 2080;
        v64 = v36;
        v65 = 2080;
        v66 = v37;
        v67 = 2080;
        v68 = v38;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I Travel Iccid [%s] \nisInstalledInHomeCountry [%s] \nsupportedCountriesSource [%s] \nsupportedCountries [%s] \nisDataOnly [%s] \nrequiredIccidMatch [%s]", buf, 0x3Eu);
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v60.__r_.__value_.__l.__data_);
        }
      }

      v39 = v30[1];
      if (v39)
      {
        do
        {
          v40 = v39;
          v39 = *v39;
        }

        while (v39);
      }

      else
      {
        do
        {
          v40 = v30[2];
          v11 = *v40 == v30;
          v30 = v40;
        }

        while (!v11);
      }

      v30 = v40;
    }

    while (v40 != (a1 + 1112));
  }

  v41 = *(a1 + 56);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    v42 = (a1 + 424);
    if (*(a1 + 447) < 0)
    {
      v42 = *v42;
    }

    v43 = (a1 + 400);
    if (*(a1 + 423) < 0)
    {
      v43 = *v43;
    }

    sub_100074B94(*(a1 + 376), (a1 + 384), ",", 1, &v60);
    if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = &v60;
    }

    else
    {
      v44 = v60.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v42;
    *&buf[12] = 2080;
    *&buf[14] = v43;
    *&buf[22] = 2080;
    v62 = v44;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I Current default settings: data [%s], voice [%s], enabled sims [%s]", buf, 0x20u);
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }
  }

  memset(&v60, 0, sizeof(v60));
  v45 = (a1 + 256);
  if (*(a1 + 279) < 0)
  {
    sub_100005F2C(__p, *(a1 + 256), *(a1 + 264));
  }

  else
  {
    *__p = *v45;
    v59 = *(a1 + 272);
  }

  v46 = *(a1 + 144);
  if (v46)
  {
    if (SHIBYTE(v59) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      *&buf[16] = v59;
    }

    (*(*v46 + 32))(&v60, v46, buf);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v47 = *(a1 + 56);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "missing travel model", buf, 2u);
    }

    memset(&v60, 0, sizeof(v60));
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[0]);
  }

  v48 = *(a1 + 56);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 279) < 0)
    {
      v45 = *v45;
    }

    *buf = 136315138;
    *&buf[4] = v45;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I Home country (%s) journal:", buf, 0xCu);
  }

  size = v60.__r_.__value_.__l.__size_;
  v49 = v60.__r_.__value_.__r.__words[0];
  if (v60.__r_.__value_.__r.__words[0] != v60.__r_.__value_.__l.__size_)
  {
    v51 = (v60.__r_.__value_.__r.__words[0] + 8);
    do
    {
      v52 = *(a1 + 56);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = *(v49 + 72);
        sub_100074B94(*v49, v51, ",", 1, &v57);
        v54 = v57.__r_.__value_.__r.__words[0];
        if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v54 = &v57;
        }

        v55 = (v49 + 48);
        if (*(v49 + 71) < 0)
        {
          v55 = v55->__r_.__value_.__r.__words[0];
        }

        v56 = (v49 + 24);
        if (*(v49 + 47) < 0)
        {
          v56 = v56->__r_.__value_.__r.__words[0];
        }

        *buf = 134218754;
        *&buf[4] = v53;
        *&buf[12] = 2080;
        *&buf[14] = v54;
        *&buf[22] = 2080;
        v62 = v55;
        v63 = 2080;
        v64 = v56;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I Timestamp: [%f] -- Settings: Enabled Iccids [%s], Data [%s], Voice [%s]", buf, 0x2Au);
        if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v57.__r_.__value_.__l.__data_);
        }
      }

      v49 += 80;
      v51 = (v51 + 80);
    }

    while (v49 != size);
  }

  *buf = &v60;
  sub_101368BCC(buf);
}

void sub_10137EE68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10137EED0(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t *a5, __int128 *a6, __int128 *a7)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
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
  format = a2;
  if (v20)
  {
    v22 = v20[3];
    v21 = v20[4];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v15);
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v21);
      v60 = 0;
      if (!v22)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v22 = 0;
  }

  std::mutex::unlock(v15);
  v21 = 0;
  v60 = 1;
  if (!v22)
  {
LABEL_7:
    v23 = *(a1 + 56);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "invalid localizer", buf, 2u);
    }

    goto LABEL_119;
  }

LABEL_11:
  v75 = 0;
  v24 = kCoreTelephonyBundleID;
  v25 = kCBMessageLocalizationTable;
  (*(*v22 + 32))(&v75, v22, kCoreTelephonyBundleID, kCBMessageLocalizationTable, format, 1);
  v73 = 0;
  v74 = 0;
  v26 = *(a6 + 23);
  if ((v26 & 0x80u) != 0)
  {
    v26 = *(a6 + 1);
  }

  if (v26)
  {
    (*(*v22 + 32))(&v77, v22, v24, v25, a3, 1);
    *buf = v73;
    v73 = v77;
    *&v77 = 0;
    sub_100005978(buf);
    sub_100005978(&v77);
    v27 = *(a7 + 23);
    v28 = v27;
    if ((v27 & 0x80u) != 0)
    {
      v27 = *(a7 + 1);
    }

    if (v27)
    {
      v29 = *(a6 + 23);
      if (v29 < 0)
      {
        if (*(a6 + 1) != 4)
        {
LABEL_26:
          formata = v21;
          v33 = v73;
          if (v28 < 0)
          {
            sub_100005F2C(&__dst, *a7, *(a7 + 1));
          }

          else
          {
            __dst = *a7;
            v64 = *(a7 + 2);
          }

          if (SHIBYTE(v64) < 0)
          {
            sub_100005F2C(&v77, __dst, *(&__dst + 1));
          }

          else
          {
            v77 = __dst;
            v78 = v64;
          }

          v76 = 0;
          if (SHIBYTE(v78) < 0)
          {
            sub_100005F2C(buf, v77, *(&v77 + 1));
          }

          else
          {
            *buf = v77;
            v80 = v78;
          }

          v81 = 0;
          if (ctu::cf::convert_copy())
          {
            v34 = v76;
            v76 = v81;
            *v82 = v34;
            sub_100005978(v82);
          }

          if (SHIBYTE(v80) < 0)
          {
            operator delete(*buf);
          }

          v72 = v76;
          v76 = 0;
          sub_100005978(&v76);
          if (SHIBYTE(v78) < 0)
          {
            operator delete(v77);
          }

          v35 = v72;
          if (*(a6 + 23) < 0)
          {
            sub_100005F2C(__p, *a6, *(a6 + 1));
          }

          else
          {
            *__p = *a6;
            v62 = *(a6 + 2);
          }

          if (SHIBYTE(v62) < 0)
          {
            sub_100005F2C(&v77, __p[0], __p[1]);
          }

          else
          {
            v77 = *__p;
            v78 = v62;
          }

          v76 = 0;
          if (SHIBYTE(v78) < 0)
          {
            sub_100005F2C(buf, v77, *(&v77 + 1));
          }

          else
          {
            *buf = v77;
            v80 = v78;
          }

          v81 = 0;
          if (ctu::cf::convert_copy())
          {
            v36 = v76;
            v76 = v81;
            *v82 = v36;
            sub_100005978(v82);
          }

          if (SHIBYTE(v80) < 0)
          {
            operator delete(*buf);
          }

          v67 = v76;
          v76 = 0;
          sub_100005978(&v76);
          if (SHIBYTE(v78) < 0)
          {
            operator delete(v77);
          }

          StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@%@", v33, 0, v35, v67);
          v38 = v74;
          v74 = StringWithValidatedFormat;
          *buf = v38;
          sub_100005978(buf);
          sub_100005978(&v67);
          v21 = formata;
          if (SHIBYTE(v62) < 0)
          {
            operator delete(__p[0]);
          }

          sub_100005978(&v72);
          if ((SHIBYTE(v64) & 0x80000000) == 0)
          {
            goto LABEL_110;
          }

          v39 = __dst;
          goto LABEL_109;
        }

        v30 = *a6;
      }

      else
      {
        v30 = a6;
        if (v29 != 4)
        {
          goto LABEL_26;
        }
      }

      if (*v30 != 1769105747)
      {
        goto LABEL_26;
      }

      v43 = v73;
      if (v29 < 0)
      {
        sub_100005F2C(v68, *a6, *(a6 + 1));
      }

      else
      {
        *v68 = *a6;
        v69 = *(a6 + 2);
      }

      if (SHIBYTE(v69) < 0)
      {
        sub_100005F2C(&v77, v68[0], v68[1]);
      }

      else
      {
        v77 = *v68;
        v78 = v69;
      }

      v76 = 0;
      if (SHIBYTE(v78) < 0)
      {
        sub_100005F2C(buf, v77, *(&v77 + 1));
      }

      else
      {
        *buf = v77;
        v80 = v78;
      }

      v81 = 0;
      if (ctu::cf::convert_copy())
      {
        v44 = v76;
        v76 = v81;
        *v82 = v44;
        sub_100005978(v82);
      }

      if (SHIBYTE(v80) < 0)
      {
        operator delete(*buf);
      }

      formatb = v43;
      v72 = v76;
      v76 = 0;
      sub_100005978(&v76);
      if (SHIBYTE(v78) < 0)
      {
        operator delete(v77);
      }

      v45 = v72;
      if (*(a7 + 23) < 0)
      {
        sub_100005F2C(v65, *a7, *(a7 + 1));
      }

      else
      {
        *v65 = *a7;
        v66 = *(a7 + 2);
      }

      if (SHIBYTE(v66) < 0)
      {
        sub_100005F2C(&v77, v65[0], v65[1]);
      }

      else
      {
        v77 = *v65;
        v78 = v66;
      }

      v76 = 0;
      if (SHIBYTE(v78) < 0)
      {
        sub_100005F2C(buf, v77, *(&v77 + 1));
      }

      else
      {
        *buf = v77;
        v80 = v78;
      }

      v81 = 0;
      if (ctu::cf::convert_copy())
      {
        v46 = v76;
        v76 = v81;
        *v82 = v46;
        sub_100005978(v82);
      }

      if (SHIBYTE(v80) < 0)
      {
        operator delete(*buf);
      }

      v67 = v76;
      v76 = 0;
      sub_100005978(&v76);
      if (SHIBYTE(v78) < 0)
      {
        operator delete(v77);
      }

      v47 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@%@", formatb, 0, v45, v67);
      v48 = v74;
      v74 = v47;
      *buf = v48;
      sub_100005978(buf);
      sub_100005978(&v67);
      if (SHIBYTE(v66) < 0)
      {
        operator delete(v65[0]);
      }

      sub_100005978(&v72);
      if ((SHIBYTE(v69) & 0x80000000) == 0)
      {
        goto LABEL_110;
      }

      v39 = v68[0];
    }

    else
    {
      v31 = a4;
      v32 = v73;
      if (*(a6 + 23) < 0)
      {
        sub_100005F2C(&v70, *a6, *(a6 + 1));
      }

      else
      {
        v70 = *a6;
        v71 = *(a6 + 2);
      }

      if (SHIBYTE(v71) < 0)
      {
        sub_100005F2C(&v77, v70, *(&v70 + 1));
      }

      else
      {
        v77 = v70;
        v78 = v71;
      }

      v76 = 0;
      if (SHIBYTE(v78) < 0)
      {
        sub_100005F2C(buf, v77, *(&v77 + 1));
      }

      else
      {
        *buf = v77;
        v80 = v78;
      }

      v81 = 0;
      if (ctu::cf::convert_copy())
      {
        v40 = v76;
        v76 = v81;
        *v82 = v40;
        sub_100005978(v82);
      }

      if (SHIBYTE(v80) < 0)
      {
        operator delete(*buf);
      }

      v72 = v76;
      v76 = 0;
      sub_100005978(&v76);
      if (SHIBYTE(v78) < 0)
      {
        operator delete(v77);
      }

      v41 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v32, 0, v72);
      v42 = v74;
      v74 = v41;
      *buf = v42;
      sub_100005978(buf);
      sub_100005978(&v72);
      a4 = v31;
      if ((SHIBYTE(v71) & 0x80000000) == 0)
      {
        goto LABEL_110;
      }

      v39 = v70;
    }

LABEL_109:
    operator delete(v39);
    goto LABEL_110;
  }

  (*(*v22 + 32))(&v77, v22, v24, v25, a3, 1);
  *buf = v74;
  v74 = v77;
  *&v77 = 0;
  sub_100005978(buf);
  sub_100005978(&v77);
LABEL_110:
  v81 = 0;
  (*(*v22 + 32))(&v81, v22, v24, v25, a4, 1);
  v49 = *(a1 + 56);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    memset(buf, 0, sizeof(buf));
    v80 = 0;
    ctu::cf::assign();
    v77 = *buf;
    v78 = v80;
    v50 = &v77;
    if (v80 < 0)
    {
      v50 = v77;
    }

    *v82 = 136315138;
    *&v82[4] = v50;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I Publishing user notification with title: (%s)", v82, 0xCu);
    if (SHIBYTE(v78) < 0)
    {
      operator delete(v77);
    }
  }

  v51 = objc_alloc_init(CellularPlanUserNotificationDelegate);
  v52 = v75;
  v53 = v74;
  v54 = v81;
  if (*(a5 + 23) >= 0)
  {
    v55 = a5;
  }

  else
  {
    v55 = *a5;
  }

  v56 = [NSString stringWithUTF8String:v55];
  [(CellularPlanUserNotificationDelegate *)v51 publishUserNotificationWithBundleIdentifier:@"com.apple.SIMSetupUIService" requestIdentifier:@"travel education" title:v52 body:v53 subtitle:v54 actionUrl:v56 destinations:7];

  sub_100005978(&v81);
  sub_100005978(&v73);
  sub_100005978(&v74);
  sub_100005978(&v75);
LABEL_119:
  if ((v60 & 1) == 0)
  {
    sub_100004A34(v21);
  }
}

void sub_10137F940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, const void *a48, const void *a49, const void *a50)
{
  sub_100005978((v51 - 184));
  if (*(v51 - 153) < 0)
  {
    operator delete(*(v51 - 176));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a48);
  if (a40 < 0)
  {
    operator delete(a35);
  }

  sub_100005978(&a49);
  sub_100005978(&a50);
  sub_100005978((v51 - 192));
  if ((a13 & 1) == 0)
  {
    sub_100004A34(v50);
  }

  _Unwind_Resume(a1);
}

void sub_10137FBE4(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 56) = 0;
  }
}

void TravelHandler::maybeSendTravelPreOutboundNotification_sync(uint64_t a1)
{
  if (_os_feature_enabled_impl() && sub_10136AC30(a1) && ((*(**(a1 + 96) + 80))(*(a1 + 96)) & 1) == 0)
  {
    if (sub_1013715E0(a1))
    {
      v2 = *(a1 + 56);
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v3 = "#I Device not in home country, skip pre-departure";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, v3, buf, 2u);
      return;
    }

    if (sub_10136F6C8(a1))
    {
      v2 = *(a1 + 56);
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v3 = "#I Roaming is enabled for default data and skip showing pre-departure notification.";
      goto LABEL_18;
    }

    if (sub_10136EE9C(a1, (a1 + 184)))
    {
      v2 = *(a1 + 56);
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v3 = "#I One of the existing cellular plan(s) gets free roaming service in the destination country.";
      goto LABEL_18;
    }

    if ((sub_1013719B0(a1) & 1) == 0)
    {
      v2 = *(a1 + 56);
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v3 = "#I Reduced education, skip pre-departure";
      goto LABEL_18;
    }

    if ((sub_101372268(a1) & 1) == 0)
    {
      sub_101354258(&v4 + 1, (a1 + 24));
      operator new();
    }
  }
}

void sub_10137FE50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

void sub_10137FE80(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 144))
  {
    v4 = *(a1 + 376);
    v5 = (a1 + 384);
    if (v4 != (a1 + 384))
    {
      while (1)
      {
        if (*(v4 + 55) < 0)
        {
          sub_100005F2C(__p, v4[4], v4[5]);
        }

        else
        {
          *__p = *(v4 + 2);
          v42 = v4[6];
        }

        if (SHIBYTE(v42) < 0)
        {
          sub_100005F2C(buf, __p[0], __p[1]);
        }

        else
        {
          *buf = *__p;
          *&v44 = v42;
        }

        v6 = sub_10136BCA0(*(a1 + 1192), *(a1 + 1200), buf);
        if (SBYTE7(v44) < 0)
        {
          operator delete(*buf);
        }

        if (SHIBYTE(v42) < 0)
        {
          operator delete(__p[0]);
        }

        if (v6)
        {
          break;
        }

        v7 = v4[1];
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = v4[2];
            v9 = *v8 == v4;
            v4 = v8;
          }

          while (!v9);
        }

        v4 = v8;
        if (v8 == v5)
        {
          goto LABEL_28;
        }
      }
    }

    if (v4 != v5)
    {
      v10 = *(a1 + 56);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v11 = v4 + 4;
      if (*(v4 + 55) < 0)
      {
        v11 = *v11;
      }

      *buf = 136315138;
      *&buf[4] = v11;
      v12 = "#I ignore bootstrap iccid [%s] for journaling";
      v13 = v10;
      v14 = 12;
      goto LABEL_44;
    }

LABEL_28:
    if (!*(a1 + 392))
    {
      v16 = *(a1 + 56);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v12 = "#I do not add entries for no enabled SIMs case";
      goto LABEL_43;
    }

    if ((*(a1 + 447) & 0x8000000000000000) != 0)
    {
      if (*(a1 + 432))
      {
        goto LABEL_31;
      }
    }

    else if (*(a1 + 447))
    {
LABEL_31:
      if ((*(a1 + 423) & 0x8000000000000000) != 0)
      {
        if (*(a1 + 408))
        {
          goto LABEL_33;
        }
      }

      else if (*(a1 + 423))
      {
LABEL_33:
        v48 = 0;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        *buf = 0u;
        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(__dst, *a2, *(a2 + 8));
        }

        else
        {
          *__dst = *a2;
          v40 = *(a2 + 16);
        }

        sub_101380498(buf, a1, __dst);
        v17 = (a1 + 424);
        v18 = (a1 + 400);
        if (SHIBYTE(v40) < 0)
        {
          operator delete(__dst[0]);
        }

        if (v48 != 1)
        {
          goto LABEL_80;
        }

        if ((SBYTE7(v47) & 0x80u) == 0)
        {
          v19 = BYTE7(v47);
        }

        else
        {
          v19 = *(&v46 + 1);
        }

        v20 = *(a1 + 447);
        v21 = v20;
        if ((v20 & 0x80u) != 0)
        {
          v20 = *(a1 + 432);
        }

        if (v19 != v20)
        {
          goto LABEL_80;
        }

        v22 = (SBYTE7(v47) & 0x80u) == 0 ? &v46 : v46;
        v23 = (v21 >= 0 ? a1 + 424 : *v17);
        if (memcmp(v22, v23, v19))
        {
          goto LABEL_80;
        }

        if (v45 >= 0)
        {
          v24 = HIBYTE(v45);
        }

        else
        {
          v24 = v45;
        }

        v25 = *(a1 + 423);
        v26 = v25;
        if ((v25 & 0x80u) != 0)
        {
          v25 = *(a1 + 408);
        }

        if (v24 == v25 && (v45 >= 0 ? (v27 = &v44 + 8) : (v27 = *(&v44 + 1)), v26 >= 0 ? (v28 = (a1 + 400)) : (v28 = *v18), !memcmp(v27, v28, v24) && v44 == *(a1 + 392) && sub_1001737D4(*buf, &buf[8], *(a1 + 376))))
        {
          v29 = *(a1 + 56);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p[0]) = 0;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I current settings match latest journal entry, do not record", __p, 2u);
          }
        }

        else
        {
LABEL_80:
          *(a1 + 448) = sub_10136D3A8(*(a1 + 64));
          v30 = *(a1 + 144);
          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(v37, *a2, *(a2 + 8));
          }

          else
          {
            *v37 = *a2;
            v38 = *(a2 + 16);
          }

          sub_100074920(v31, (a1 + 376));
          if (*(a1 + 423) < 0)
          {
            sub_100005F2C(v32, *(a1 + 400), *(a1 + 408));
          }

          else
          {
            *v32 = *v18;
            v33 = *(a1 + 416);
          }

          if (*(a1 + 447) < 0)
          {
            sub_100005F2C(v34, *(a1 + 424), *(a1 + 432));
          }

          else
          {
            *v34 = *v17;
            v35 = *(a1 + 440);
          }

          v36 = *(a1 + 448);
          (*(*v30 + 80))(v30, v37, v31);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(v34[0]);
          }

          if (SHIBYTE(v33) < 0)
          {
            operator delete(v32[0]);
          }

          sub_100009970(v31, v31[1]);
          if (SHIBYTE(v38) < 0)
          {
            operator delete(v37[0]);
          }
        }

        if (v48 == 1)
        {
          if (SBYTE7(v47) < 0)
          {
            operator delete(v46);
          }

          if (SHIBYTE(v45) < 0)
          {
            operator delete(*(&v44 + 1));
          }

          sub_100009970(buf, *&buf[8]);
        }

        return;
      }

      v16 = *(a1 + 56);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 0;
      v12 = "#I default voice empty, do not add entry";
LABEL_43:
      v13 = v16;
      v14 = 2;
LABEL_44:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      return;
    }

    v16 = *(a1 + 56);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v12 = "#I default data empty, do not add entry";
    goto LABEL_43;
  }

  v15 = *(a1 + 56);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "missing travel model", buf, 2u);
  }
}

void sub_1013803FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_100009970(&a9, a10);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  sub_101373B64(v41 - 144);
  _Unwind_Resume(a1);
}

void sub_101380498(_BYTE *a1, uint64_t a2, void **a3)
{
  v5 = *(a2 + 144);
  if (!v5)
  {
    v15 = *(a2 + 56);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "missing travel model";
      goto LABEL_26;
    }

LABEL_18:
    *a1 = 0;
    a1[80] = 0;
    return;
  }

  v7 = *(a3 + 23);
  v8 = a3[1];
  if (v7 >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = a3[1];
  }

  v10 = *(a2 + 279);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 264);
  }

  if (v9 != v10 || ((v12 = *a3, v7 >= 0) ? (v13 = a3) : (v13 = *a3), v11 >= 0 ? (v14 = (a2 + 256)) : (v14 = *(a2 + 256)), memcmp(v13, v14, v9)))
  {
    v15 = *(a2 + 56);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v16 = "dont support non-home countries";
LABEL_26:
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (v7 < 0)
  {
    sub_100005F2C(__p, v12, v8);
  }

  else
  {
    *__p = *a3;
    v18 = a3[2];
  }

  (*(*v5 + 40))(v5, __p);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10138061C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101380638(uint64_t a1, uint64_t a2)
{
  sub_100074920(a1, a2);
  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v4 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v4;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v5;
  }

  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = 1;
  return a1;
}

void sub_1013806C4(_Unwind_Exception *a1)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  sub_100009970(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

__n128 sub_1013806F4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v3 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v3;
  a2[2] = 0uLL;
  *(a2 + 3) = 0;
  v4 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v4;
  *(a2 + 56) = 0uLL;
  *(a2 + 6) = 0;
  v5 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v5;
  *(a2 + 72) = 0uLL;
  *(a2 + 11) = 0;
  v6 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v6;
  a2[6] = 0uLL;
  *(a2 + 14) = 0;
  v7 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v7;
  *(a2 + 120) = 0uLL;
  *(a2 + 17) = 0;
  v8 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 144) = v8;
  a2[9] = 0uLL;
  *(a2 + 20) = 0;
  v9 = *(a2 + 168);
  v10 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v10;
  *(a1 + 168) = v9;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 216) = 0;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 29);
  *(a2 + 216) = 0uLL;
  *(a2 + 29) = 0;
  v11 = a2[15];
  *(a1 + 256) = *(a2 + 32);
  *(a1 + 240) = v11;
  *(a2 + 248) = 0uLL;
  *(a2 + 30) = 0;
  *(a1 + 264) = *(a2 + 33);
  v12 = a1 + 272;
  v13 = *(a2 + 34);
  v14 = *(a2 + 35);
  *(a1 + 272) = v13;
  *(a1 + 280) = v14;
  if (v14)
  {
    *(v13 + 16) = v12;
    *(a2 + 264) = (a2 + 17);
    *(a2 + 35) = 0;
  }

  else
  {
    *(a1 + 264) = v12;
  }

  v15 = a2[18];
  *(a1 + 304) = *(a2 + 38);
  *(a1 + 288) = v15;
  *(a2 + 296) = 0uLL;
  *(a2 + 36) = 0;
  v16 = *(a2 + 312);
  *(a1 + 328) = *(a2 + 41);
  *(a1 + 312) = v16;
  a2[20] = 0uLL;
  *(a2 + 39) = 0;
  *(a1 + 336) = *(a2 + 42);
  result = *(a2 + 344);
  *(a1 + 360) = *(a2 + 45);
  *(a1 + 344) = result;
  return result;
}

void sub_1013808A0(void *a1, char a2)
{
  v2 = a1[4];
  if (v2)
  {
    if (std::__shared_weak_count::lock(v2))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013809B8(unint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*(a1 + 1096) != 1)
  {
    goto LABEL_8;
  }

  if (v4 != *(a2 + 8))
  {
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
    *__dst = 0u;
    sub_100FF0F78(__dst, v4);
    if ((*(a1 + 1096) & 1) == 0)
    {
      sub_1000D1644();
    }

    if (*&v19 < *(a1 + 912))
    {
      v5 = *(a1 + 56);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Resetting current trip", buf, 2u);
      }

      sub_10136F078(a1 + 728);
      sub_100FF11AC(__dst);
      v4 = *a2;
LABEL_8:
      v7[0] = a1;
      v7[1] = 0uLL;
      sub_1001E2A18(v7 + 1, v4, *(a2 + 8), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 8) - v4) >> 4));
      v8 = 0;
      operator new();
    }

    sub_100FF11AC(__dst);
  }

  v6 = *(a1 + 56);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *__dst = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I No need to reset current trip.", __dst, 2u);
  }
}

void sub_101380D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  sub_100FF11AC(va);
  _Unwind_Resume(a1);
}

void *sub_101380DE0(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 3);
  *(__dst + 8) = *(a2 + 8);
  __dst[3] = v5;
  sub_100074920(__dst + 5, a2 + 40);
  *(__dst + 32) = *(a2 + 32);
  sub_10006F264(__dst + 72, (a2 + 72));
  __dst[13] = *(a2 + 13);
  return __dst;
}

void sub_101380E68(_Unwind_Exception *a1)
{
  sub_100009970(v1 + 40, *(v1 + 48));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

BOOL sub_101380E98(uint64_t a1, __int128 *a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 1);
  }

  if (!v2)
  {
    return 0;
  }

  __p[0] = 0;
  __p[1] = 0;
  v29 = 0;
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(__p, *a1, *(a1 + 8));
    v3 = *(a2 + 23);
  }

  else
  {
    *__p = *a1;
    v29 = *(a1 + 16);
  }

  v26 = 0uLL;
  v27 = 0;
  if (v3 < 0)
  {
    sub_100005F2C(&v26, *a2, *(a2 + 1));
  }

  else
  {
    v26 = *a2;
    v27 = *(a2 + 2);
  }

  if (v29 >= 0)
  {
    v6 = (__p + HIBYTE(v29));
  }

  else
  {
    v6 = (__p[0] + __p[1]);
  }

  if (v29 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  while (v7 != v6)
  {
    *v7 = __tolower(*v7);
    v7 = (v7 + 1);
  }

  v8 = HIBYTE(v27);
  v9 = HIBYTE(v27);
  v10 = *(&v26 + 1);
  v11 = v26;
  v12 = &v26;
  if (v27 >= 0)
  {
    v13 = &v26 + HIBYTE(v27);
  }

  else
  {
    v13 = (v26 + *(&v26 + 1));
  }

  if (v27 >= 0)
  {
    v14 = &v26;
  }

  else
  {
    v14 = v26;
  }

  if (v14 != v13)
  {
    do
    {
      *v14 = __tolower(*v14);
      ++v14;
    }

    while (v14 != v13);
    v8 = HIBYTE(v27);
    v10 = *(&v26 + 1);
    v11 = v26;
    v9 = HIBYTE(v27);
  }

  v15 = HIBYTE(v29);
  v16 = HIBYTE(v29);
  if (v29 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if (v29 < 0)
  {
    v15 = __p[1];
  }

  if (v9 >= 0)
  {
    v18 = v8;
  }

  else
  {
    v12 = v11;
    v18 = v10;
  }

  if (v18)
  {
    v19 = (v17 + v15);
    if (v15 >= v18)
    {
      v23 = *v12;
      v24 = v17;
      do
      {
        if (v15 - v18 == -1)
        {
          break;
        }

        v25 = memchr(v24, v23, v15 - v18 + 1);
        if (!v25)
        {
          break;
        }

        v20 = v25;
        if (!memcmp(v25, v12, v18))
        {
          goto LABEL_39;
        }

        v24 = (v20 + 1);
        v15 = v19 - (v20 + 1);
      }

      while (v15 >= v18);
    }

    v20 = v19;
LABEL_39:
    v5 = v20 != v19 && v20 == v17;
    if ((v9 & 0x80) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v5 = 1;
  if (v9 < 0)
  {
LABEL_46:
    operator delete(v11);
    v16 = HIBYTE(v29);
  }

LABEL_47:
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_1013810A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013810E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100FF0F78(a1, a2);
  sub_100074920(v4 + 30, (a2 + 240));
  if (*(a2 + 287) < 0)
  {
    sub_100005F2C((a1 + 264), *(a2 + 264), *(a2 + 272));
  }

  else
  {
    v5 = *(a2 + 264);
    *(a1 + 280) = *(a2 + 280);
    *(a1 + 264) = v5;
  }

  if (*(a2 + 311) < 0)
  {
    sub_100005F2C((a1 + 288), *(a2 + 288), *(a2 + 296));
  }

  else
  {
    v6 = *(a2 + 288);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 288) = v6;
  }

  *(a1 + 312) = *(a2 + 312);
  v7 = *(a2 + 320);
  *(a1 + 336) = *(a2 + 336);
  *(a1 + 320) = v7;
  return a1;
}

void sub_101381190(_Unwind_Exception *a1)
{
  if (*(v1 + 287) < 0)
  {
    operator delete(*v2);
  }

  sub_100009970(v1 + 240, *(v1 + 248));
  sub_100FF11AC(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1013811D0(uint64_t a1)
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

uint64_t sub_101381250(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  std::string::operator=((a1 + 48), (a2 + 48));
  std::string::operator=((a1 + 72), (a2 + 72));
  std::string::operator=((a1 + 96), (a2 + 96));
  std::string::operator=((a1 + 120), (a2 + 120));
  v5 = *(a2 + 160);
  v4 = *(a2 + 176);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v5;
  *(a1 + 176) = v4;
  if (a1 != a2)
  {
    sub_100008234((a1 + 192), *(a2 + 192), *(a2 + 200), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 200) - *(a2 + 192)) >> 3));
  }

  std::string::operator=((a1 + 216), (a2 + 216));
  return a1;
}

void *sub_1013812FC(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_1013810E0((__dst + 3), a2 + 24);
  return __dst;
}

void sub_101381358(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101381374(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 80) = 0;
  if (*(a2 + 80) == 1)
  {
    sub_100074920(a1, a2);
    if (*(a2 + 47) < 0)
    {
      sub_100005F2C((a1 + 24), *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v4 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v4;
    }

    if (*(a2 + 71) < 0)
    {
      sub_100005F2C((a1 + 48), *(a2 + 48), *(a2 + 56));
    }

    else
    {
      v5 = *(a2 + 48);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 48) = v5;
    }

    *(a1 + 72) = *(a2 + 72);
    *(a1 + 80) = 1;
  }

  return a1;
}

void sub_101381418(_Unwind_Exception *a1)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  sub_100009970(v1, *(v1 + 8));
  if (*(v1 + 80) == 1)
  {
    sub_101365424(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t ***sub_101381464(uint64_t ***a1, char *a2)
{
  v3 = sub_1013814D0(*a1, a1[1], a2, a2);
  a1[1] = v3;
  v4 = *(v3 + 8);
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = *(v3 + 16);
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

uint64_t sub_1013814D0(uint64_t **a1, uint64_t *a2, char *a3, uint64_t a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *sub_100074A00(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_10138157C(uint64_t a1, char *a2)
{
  v3 = sub_100997900(*a1, *(a1 + 8), a2, a2);
  *(a1 + 8) = v3;
  v4 = v3[1];
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = v3[2];
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  *(a1 + 8) = v5;
  return a1;
}

void sub_1013815EC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101381640(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101381680(uint64_t result)
{
  if (result)
  {
    return (*(*result + 176))();
  }

  return result;
}

void sub_1013816AC(ServiceManager::Service *this)
{
  *this = off_101F31F50;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_101381708(ServiceManager::Service *this)
{
  *this = off_101F31F50;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t *sub_101381788@<X0>(uint64_t *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1013817CC(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_10136A154(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_10136A154(v4, 0);
}

void sub_10138186C(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 32);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10138194C(uint64_t a1, int a2, ServiceStage *this)
{
  if (a2 == 2)
  {
    v3 = *(a1 + 8);
    ServiceStage::holdOffStage(&group[1], this);
    v4 = *(v3 + 32);
    if (v4)
    {
      if (std::__shared_weak_count::lock(v4))
      {
        operator new();
      }
    }

    sub_100013CC4();
  }
}

void sub_101381A68(char *a1)
{
  if (a1)
  {
    sub_101381A68(*a1);
    sub_101381A68(*(a1 + 1));
    if (a1[175] < 0)
    {
      operator delete(*(a1 + 19));
    }

    if (a1[151] < 0)
    {
      operator delete(*(a1 + 16));
    }

    if (a1[127] < 0)
    {
      operator delete(*(a1 + 13));
    }

    if (a1[103] < 0)
    {
      operator delete(*(a1 + 10));
    }

    if (a1[79] < 0)
    {
      operator delete(*(a1 + 7));
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void sub_101381B14(uint64_t a1)
{
  if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  sub_100009970(a1 + 40, *(a1 + 48));
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_101381BA4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F31FD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_101381C20(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  ctu::RestModule::disconnect((*v1 + 1128));
  sub_1000FF844(&v4);
  return sub_1000049E0(&v3);
}

void sub_101381C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101381C84(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 80);
  if (v2)
  {
    sub_100004AA0(&v9, (v1 + 24));
    if (v9)
    {
      v3 = v9 + 16;
    }

    else
    {
      v3 = 0;
    }

    v7 = v3;
    v8 = *(&v9 + 1);
    v9 = 0uLL;
    (*(*v2 + 16))(v2, v1 + 64, &v7);
    if (v8)
    {
      sub_100004A34(v8);
    }

    if (*(&v9 + 1))
    {
      sub_100004A34(*(&v9 + 1));
    }
  }

  Registry::createRestModuleOneTimeUseConnection(&v5, *(v1 + 64));
  ctu::RestModule::connect();
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_10000501C(&__p, "/cc/props/regulatory_domain_country_list");
  operator new();
}

void sub_101382738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, dispatch_object_t object, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30)
{
  v37 = a30;
  a30 = 0;

  if (a29)
  {
    std::__shared_weak_count::__release_weak(a29);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  if ((v35 & 1) == 0)
  {
    sub_100004A34(v30);
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101382874(uint64_t a1)
{
  v1 = *(a1 + 32);
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
        goto LABEL_7;
      }

LABEL_11:
      v34 = 0;
      v13 = xpc_dictionary_create(0, 0, 0);
      v14 = v13;
      if (v13)
      {
        v34 = v13;
      }

      else
      {
        v14 = xpc_null_create();
        v34 = v14;
        if (!v14)
        {
          v15 = xpc_null_create();
          v14 = 0;
          goto LABEL_18;
        }
      }

      if (xpc_get_type(v14) == &_xpc_type_dictionary)
      {
        xpc_retain(v14);
        goto LABEL_19;
      }

      v15 = xpc_null_create();
LABEL_18:
      v34 = v15;
LABEL_19:
      xpc_release(v14);
      v16 = *(v1 + 1104);
      if (v16 == (v1 + 1112))
      {
LABEL_27:
        v33 = xpc_BOOL_create(0);
        if (!v33)
        {
          v33 = xpc_null_create();
        }

        *buf = &v34;
        v28 = "is_travel_sim";
        sub_10000F688(buf, &v33, object);
        xpc_release(*object);
        *object = 0;
        xpc_release(v33);
        v33 = 0;
        v20 = *(v1 + 56);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Sending travel population metric. HasTravelSIM [false]", buf, 2u);
        }

        *buf = v34;
        if (v34)
        {
          xpc_retain(v34);
        }

        else
        {
          *buf = xpc_null_create();
        }

        (*(*v10 + 16))(v10, "travelSimUsage", buf);
        xpc_release(*buf);
        *buf = 0;
LABEL_61:
        xpc_release(v34);
        goto LABEL_62;
      }

      while (!sub_10136FB18(v1, v16 + 4))
      {
        v17 = v16[1];
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
            v18 = v16[2];
            v19 = *v18 == v16;
            v16 = v18;
          }

          while (!v19);
        }

        v16 = v18;
        if (v18 == (v1 + 1112))
        {
          goto LABEL_27;
        }
      }

      v32 = xpc_BOOL_create(1);
      if (!v32)
      {
        v32 = xpc_null_create();
      }

      *buf = &v34;
      v28 = "is_travel_sim";
      sub_10000F688(buf, &v32, &v33);
      xpc_release(v33);
      v33 = 0;
      xpc_release(v32);
      v32 = 0;
      if (*(v16 + 97) == 1)
      {
        v30 = xpc_BOOL_create(*(v16 + 96));
        if (!v30)
        {
          v30 = xpc_null_create();
        }

        *buf = &v34;
        v28 = "is_data_only";
        sub_10000F688(buf, &v30, &v31);
        xpc_release(v31);
        v31 = 0;
        xpc_release(v30);
        v30 = 0;
      }

      *buf = 0;
      v28 = 0;
      v29 = 0;
      sub_10136CFD8(buf, v1, (v16 + 4));
      if (SHIBYTE(v29) < 0)
      {
        if (v28)
        {
          v21 = *buf;
          goto LABEL_46;
        }
      }

      else if (HIBYTE(v29))
      {
        v21 = buf;
LABEL_46:
        v25 = xpc_string_create(v21);
        if (!v25)
        {
          v25 = xpc_null_create();
        }

        *object = &v34;
        *&object[8] = "carrier_name";
        sub_10000F688(object, &v25, &v26);
        xpc_release(v26);
        v26 = 0;
        xpc_release(v25);
        v25 = 0;
      }

      v22 = *(v1 + 56);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v16 + 97) == 1)
        {
          v23 = asString(*(v16 + 96));
        }

        else
        {
          v23 = "n/a";
        }

        v24 = buf;
        if (v29 < 0)
        {
          v24 = *buf;
        }

        *object = 136315394;
        *&object[4] = v23;
        *&object[12] = 2080;
        *&object[14] = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Sending travel population metric. HasTravelSIM [true], IsDataOnly [%s], CarrierName [%s]", object, 0x16u);
      }

      *object = v34;
      if (v34)
      {
        xpc_retain(v34);
      }

      else
      {
        *object = xpc_null_create();
      }

      (*(*v10 + 16))(v10, "travelSimUsage", object);
      xpc_release(*object);
      *object = 0;
      if (SHIBYTE(v29) < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_61;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_7:
  v12 = *(v1 + 56);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Couldn't get analytics handler", buf, 2u);
  }

LABEL_62:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_101382DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, xpc_object_t object, xpc_object_t a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

__n128 sub_101382F08(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F32020;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101382F40(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_10011FEE4(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_100009970(&v9, v10);
}

uint64_t sub_101383018(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013830E0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F320A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101383118(uint64_t a1, xpc_object_t *a2)
{
  sub_10011D868(*(a1 + 8), a2);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = (*(a1 + 16) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_101383194(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10138325C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F32120;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101383294(uint64_t a1, xpc_object_t *a2)
{
  sub_10010A62C(*(a1 + 8), a2);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = (*(a1 + 16) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_101383310(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013833D8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F321A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101383410(void *a1, xpc *this, BOOL a3)
{
  v4 = a1[1];
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v5 = a1[3];
  v6 = a1[4];
  v7 = (a1[2] + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  return v5(v7);
}

uint64_t sub_101383498(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101383560(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F32220;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101383598(void *a1, xpc_object_t *a2)
{
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = 0;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v5);
    v8 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    v8 = xpc::dyn_cast_or_default(a2, 0, v5);
  }

  else
  {
    v8 = 0;
  }

  v9 = a1[2];
  v10 = a1[3];
  v11 = (a1[1] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  return v9(v11, v8);
}

uint64_t sub_10138367C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101383744(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F322A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10138377C(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_1013837C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101383880(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F32320;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_1013838AC(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_string)
  {
    v8 = *v3;
    result = ctu::rest::detail::read_enum_string_value(&v8, a2, v5);
    *v3 = v8;
  }

  else if (result == &_xpc_type_BOOL || result == &_xpc_type_int64 || result == &_xpc_type_uint64)
  {
    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_101383948(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101383A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_101383B2C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F323A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101383B64(void *a1, const xpc::object *a2)
{
  read_rest_value((a1[1] + 8), a2);
  v3 = a1[3];
  v4 = a1[4];
  v5 = (a1[2] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_101383BE4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101383CAC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F32420;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101383CE4(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_101383DDC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101383EA4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F324A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101383EDC(void *a1, xpc *this, BOOL a3)
{
  v4 = a1[1];
  v5 = *v4;
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  return v6(v8, v5);
}

uint64_t sub_101383F74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10138403C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F32520;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101384074(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_10138416C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101384234(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F325A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10138426C(void *a1)
{
  v5 = 255;
  *v6 = 0u;
  v7 = 0u;
  *__p_8 = 0u;
  v9 = 0;
  rest::read_rest_value();
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  v2(v4, &v5);
  if (SHIBYTE(__p_8[1]) < 0)
  {
    operator delete(*(&v7 + 1));
  }

  if (SBYTE7(v7) < 0)
  {
    operator delete(v6[0]);
  }
}

uint64_t sub_101384340(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10138438C(void *a1, uint64_t a2)
{
  v3 = a1[5];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[4])
      {
        sub_100471B24(a1 + 6, a2);
      }

      sub_100004A34(v6);
    }
  }
}

id sub_101384418(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  a1[4] = *(a2 + 32);
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = objc_retainBlock(*(a2 + 48));
  a1[6] = result;
  return result;
}

void sub_10138445C(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1013844B4(uint64_t **a1)
{
  v1 = **a1;
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
  *cf = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, cf);
  if (v8)
  {
    v9 = v8[3];
    v10 = v8[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v69 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v3);
  v10 = 0;
  v69 = 1;
LABEL_9:
  v66 = v10;
  if (!v9)
  {
    v32 = *(v1 + 56);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *cf = 0;
      _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Could not get preferences", cf, 2u);
    }

    v33 = (v1 + 64);
    goto LABEL_66;
  }

  v73 = 0;
  (*(*v9 + 40))(cf, v9, @"TravelNotificationTimestamps", @"com.apple.commcenter.travel");
  sub_10006DD00(&v73, cf);
  sub_10000A1EC(cf);
  v71 = 0;
  v72 = 0;
  object = &v71;
  v11 = v73;
  sub_100009970(&object, v71);
  v71 = 0;
  v72 = 0;
  object = &v71;
  v65 = v11;
  v12 = [NSArray typecast:v11];
  if (v12)
  {
    *buf = 0u;
    memset(v82, 0, 48);
    v64 = v12;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:buf objects:cf count:16];
    if (!v13)
    {
      goto LABEL_28;
    }

    v67 = **&v82[0];
    while (1)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (**&v82[0] != v67)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*&buf[8] + 8 * i);
        *__p = 0u;
        v76 = 0u;
        v16 = [NSDictionary typecast:v15];
        if (!v16 || (sub_1004561CC(__p, @"key", v16) & 1) == 0)
        {
          v18 = v16;
          goto LABEL_52;
        }

        v17 = @"value";
        v18 = v16;
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_50;
        }

        v19 = [v18 objectForKey:@"value"];
        if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_opt_respondsToSelector() & 1) == 0)
        {

LABEL_50:
LABEL_52:

          if (SBYTE7(v76) < 0)
          {
            operator delete(__p[0]);
          }

          v12 = v64;
          goto LABEL_55;
        }

        [v19 doubleValue];
        *(&v76 + 1) = v20;

        v74 = 0;
        if (!*sub_100005C2C(&object, &v74, __p))
        {
          operator new();
        }

        if (SBYTE7(v76) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v13 = [obj countByEnumeratingWithState:buf objects:cf count:16];
      if (!v13)
      {
LABEL_28:

        v21 = [obj count];
        v22 = v21 == v72;

        if (v22 && (v1 + 352) != &object)
        {
          v23 = object;
          if (*(v1 + 368))
          {
            v24 = *(v1 + 352);
            v25 = *(v1 + 360);
            *(v1 + 352) = v1 + 360;
            *(v25 + 16) = 0;
            *(v1 + 360) = 0;
            *(v1 + 368) = 0;
            if (*(v24 + 8))
            {
              v26 = *(v24 + 8);
            }

            else
            {
              v26 = v24;
            }

            *cf = v1 + 352;
            *&cf[8] = v26;
            *&cf[16] = v26;
            if (!v26 || (*&cf[8] = sub_1000685CC(v26), v23 == &v71))
            {
              v30 = v23;
            }

            else
            {
              do
              {
                std::string::operator=((v26 + 32), &v23[4]);
                *(v26 + 56) = v23[7];
                v27 = *&cf[16];
                *buf = 0;
                v28 = sub_1001355F4(v1 + 352, buf, (*&cf[16] + 32));
                sub_1000070DC((v1 + 352), *buf, v28, v27);
                v26 = *&cf[8];
                *&cf[16] = *&cf[8];
                if (*&cf[8])
                {
                  *&cf[8] = sub_1000685CC(*&cf[8]);
                }

                isa = v23[1].isa;
                if (isa)
                {
                  do
                  {
                    v30 = isa;
                    isa = *isa;
                  }

                  while (isa);
                }

                else
                {
                  do
                  {
                    v30 = v23[2].isa;
                    v31 = *v30 == v23;
                    v23 = v30;
                  }

                  while (!v31);
                }

                if (!v26)
                {
                  break;
                }

                v23 = v30;
              }

              while (v30 != &v71);
            }

            sub_100173240(cf);
            v23 = v30;
          }

          if (v23 != &v71)
          {
            operator new();
          }
        }

LABEL_56:
        *cf = 0;
        (*(*v9 + 40))(cf, v9, @"TravelNotificationShowReturnHome", @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        v34 = *cf;
        if (*cf)
        {
          buf[0] = 0;
          v35 = CFGetTypeID(*cf);
          if (v35 == CFBooleanGetTypeID())
          {
            ctu::cf::assign(buf, v34, v36);
          }

          *(v1 + 170) = buf[0];
        }

        *buf = 0;
        (*(*v9 + 40))(__p, v9, @"TravelNotificationRateLimitCount", @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        sub_10010B240(buf, __p);
        sub_10000A1EC(__p);
        if (*buf)
        {
          LODWORD(__p[0]) = 0;
          ctu::cf::assign(__p, *buf, v37);
          v38 = __p[0];
        }

        else
        {
          v38 = 0;
        }

        *(v1 + 172) = v38;
        __p[0] = 0;
        (*(*v9 + 40))(&v74, v9, @"RoamingEducationTimestamps", @"com.apple.commcenter.travel", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
        sub_100432018(__p, &v74);
        v33 = (v1 + 64);
        sub_10000A1EC(&v74);
        if (__p[0])
        {
          *(v1 + 176) = CFDateGetAbsoluteTime(__p[0]);
        }

        sub_1003EC530(__p);
        sub_100029A48(buf);
        sub_10000A1EC(cf);
        sub_100009970(&object, v71);
        sub_100010250(&v73);
LABEL_66:
        if ((v69 & 1) == 0)
        {
          sub_100004A34(v66);
        }

        v39 = *(v1 + 144);
        if (v39)
        {
          (*(*v39 + 56))(cf);
          v40 = v1 + 1112;
          sub_101369268(v1 + 1104, *(v1 + 1112));
          v41 = *&cf[8];
          *(v1 + 1104) = *cf;
          *(v1 + 1112) = v41;
          v42 = *&cf[16];
          *(v1 + 1120) = *&cf[16];
          if (v42)
          {
            *(v41 + 16) = v40;
            *cf = &cf[8];
            *&cf[8] = 0;
            *&cf[16] = 0;
            v41 = 0;
          }

          else
          {
            *(v1 + 1104) = v40;
          }

          sub_101369268(cf, v41);
        }

        else
        {
          v43 = *(v1 + 56);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            *cf = 0;
            _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "missing travel model", cf, 2u);
          }
        }

        v44 = *(v1 + 144);
        if (v44)
        {
          v110 = 0;
          v109 = 0u;
          v108 = 0u;
          v107 = 0u;
          *v106 = 0u;
          *v105 = 0u;
          v104 = 0u;
          v103 = 0u;
          v102 = 0u;
          v101 = 0u;
          v100 = 0u;
          v99 = 0u;
          v98 = 0u;
          v97 = 0u;
          v96 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          *v90 = 0u;
          v91 = 0u;
          *v89 = 0u;
          memset(cf, 0, sizeof(cf));
          (*(*v44 + 24))(cf);
          if (v110)
          {
            (*(**(v1 + 144) + 24))(buf);
            if ((v87 & 1) == 0)
            {
              sub_1000D1644();
            }

            sub_1013806F4(__p, buf);
            sub_101375740(v1, __p, 1);
            if (v80 < 0)
            {
              operator delete(v79);
            }

            if (v78 < 0)
            {
              operator delete(v77[3]);
            }

            sub_100009970(v77, v77[1]);
            sub_100FF11AC(&v76 + 8);
            if (SBYTE7(v76) < 0)
            {
              operator delete(__p[0]);
            }

            if (v87 == 1)
            {
              if (v86 < 0)
              {
                operator delete(v85);
              }

              if (v84 < 0)
              {
                operator delete(v83[3]);
              }

              sub_100009970(v83, v83[1]);
              sub_100FF11AC(v82 + 8);
              if (SBYTE7(v82[0]) < 0)
              {
                operator delete(*buf);
              }
            }
          }

          else
          {
            v46 = *(v1 + 56);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I no persisted trip info", buf, 2u);
            }
          }

          if (v110 == 1)
          {
            if (SHIBYTE(v107) < 0)
            {
              operator delete(v106[1]);
            }

            if (SHIBYTE(v106[0]) < 0)
            {
              operator delete(v105[0]);
            }

            sub_100009970(&v103 + 8, v104);
            sub_100FF11AC(&cf[24]);
            if ((cf[23] & 0x80000000) != 0)
            {
              operator delete(*cf);
            }
          }
        }

        else
        {
          v45 = *(v1 + 56);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            *cf = 0;
            _os_log_error_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "missing travel model", cf, 2u);
          }
        }

        v47 = *(v1 + 144);
        if (v47)
        {
          memset(cf, 0, sizeof(cf));
          (*(*v47 + 16))(cf);
          if (cf[24])
          {
            std::string::operator=((v1 + 232), cf);
          }

          else
          {
            v49 = *(v1 + 56);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I no persisted apm country cache", buf, 2u);
            }
          }

          if (cf[24] == 1 && (cf[23] & 0x80000000) != 0)
          {
            operator delete(*cf);
          }
        }

        else
        {
          v48 = *(v1 + 56);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            *cf = 0;
            _os_log_error_impl(&_mh_execute_header, v48, OS_LOG_TYPE_ERROR, "missing travel model", cf, 2u);
          }
        }

        v50 = *(v1 + 144);
        if (v50)
        {
          (*(*v50 + 48))(cf);
          if (*(v1 + 656) == LOBYTE(v90[1]))
          {
            if (*(v1 + 656))
            {
              *(v1 + 600) = *cf;
              v51 = (v1 + 608);
              if (*(v1 + 631) < 0)
              {
                operator delete(*v51);
              }

              *v51 = *&cf[8];
              *(v1 + 624) = *&cf[24];
              cf[31] = 0;
              cf[8] = 0;
              v52 = (v1 + 632);
              if (*(v1 + 655) < 0)
              {
                operator delete(*v52);
              }

              *v52 = *v89;
              *(v1 + 648) = v90[0];
              HIBYTE(v90[0]) = 0;
              LOBYTE(v89[0]) = 0;
            }
          }

          else if (*(v1 + 656))
          {
            sub_10137FBE4(v1 + 600);
          }

          else
          {
            *(v1 + 600) = *cf;
            *(v1 + 608) = *&cf[8];
            *(v1 + 624) = *&cf[24];
            *&cf[16] = 0;
            *&cf[8] = 0;
            *(v1 + 648) = v90[0];
            *(v1 + 632) = *v89;
            *&cf[24] = 0;
            v89[0] = 0;
            v89[1] = 0;
            v90[0] = 0;
            *(v1 + 656) = 1;
          }

          if (LOBYTE(v90[1]) == 1)
          {
            if (SHIBYTE(v90[0]) < 0)
            {
              operator delete(v89[0]);
            }

            if ((cf[31] & 0x80000000) != 0)
            {
              operator delete(*&cf[8]);
            }
          }

          if (*(v1 + 656) == 1)
          {
            v54 = *(v1 + 600);
            v55 = (v54 - sub_10136D3A8(*v33));
            if (v55 < 0)
            {
              v56 = *(v1 + 56);
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
              {
                *cf = 0;
                _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I timerPeriod is negative", cf, 2u);
              }
            }

            else
            {
              if ((*(v1 + 656) & 1) == 0)
              {
                sub_1000D1644();
              }

              if (*(v1 + 631) < 0)
              {
                sub_100005F2C(cf, *(v1 + 608), *(v1 + 616));
                if ((*(v1 + 656) & 1) == 0)
                {
                  sub_1000D1644();
                }
              }

              else
              {
                *cf = *(v1 + 608);
                *&cf[16] = *(v1 + 624);
              }

              if (*(v1 + 655) < 0)
              {
                sub_100005F2C(buf, *(v1 + 632), *(v1 + 640));
              }

              else
              {
                *buf = *(v1 + 632);
                *&v82[0] = *(v1 + 648);
              }

              TravelHandler::setPostArrivalNotificationTimer_sync(v1, cf, buf, v55);
              if (SBYTE7(v82[0]) < 0)
              {
                operator delete(*buf);
              }

              if ((cf[23] & 0x80000000) != 0)
              {
                operator delete(*cf);
              }
            }
          }
        }

        else
        {
          v53 = *(v1 + 56);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            *cf = 0;
            _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "missing travel model", cf, 2u);
          }
        }

        v57 = [CTLocationController alloc];
        v58 = *(v1 + 160);
        *(v1 + 160) = v57;

        v59 = [*(v1 + 160) initWithBundlePath:@"/System/Library/LocationBundles/eSIMTravelBuddy.bundle/" withQueue:*(v1 + 40) withDelegate:v1 + 8];
        v60 = *(v1 + 160);
        *(v1 + 160) = v59;

        *buf = off_101F32650;
        *(&v82[0] + 1) = buf;
        sub_100004AA0(cf, (v1 + 24));
        v61 = *cf;
        v62 = *&cf[8];
        if (*&cf[8])
        {
          atomic_fetch_add_explicit((*&cf[8] + 16), 1uLL, memory_order_relaxed);
          sub_100004A34(v62);
        }

        v63 = *(v1 + 40);
        object = v63;
        if (v63)
        {
          dispatch_retain(v63);
        }

        *cf = _NSConcreteStackBlock;
        *&cf[8] = 3321888768;
        *&cf[16] = sub_101375428;
        *&cf[24] = &unk_101F31DE8;
        v89[0] = v1;
        v89[1] = v61;
        v90[0] = v62;
        if (v62)
        {
          atomic_fetch_add_explicit(&v62->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        sub_10009CF40(&v90[1], buf);
        sub_100BE49DC();
      }
    }
  }

LABEL_55:

  goto LABEL_56;
}

void sub_101385594(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, std::__shared_weak_count *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, void *arg28, uint64_t a15, uint64_t a16, int a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va1, a22);
  va_start(objecta, a22);
  object = va_arg(va1, dispatch_object_t);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);

  sub_100009970(objecta, v24);
  sub_100010250(va1);
  if ((a18 & 1) == 0)
  {
    sub_100004A34(a13);
  }

  operator delete();
}

uint64_t sub_1013858AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1013858F8(uint64_t **a1, uint64_t ***a2, __int128 **a3)
{
  v5 = 0;
  v3 = *sub_100005C2C(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1013859E0(uint64_t *a1)
{
  v1 = *a1;
  v26 = a1;
  v27 = v1;
  v2 = *v1;
  v3 = _os_feature_enabled_impl();
  if (!v3)
  {
    goto LABEL_34;
  }

  if (capabilities::ct::dataOnlySingleSIMDevice(v3))
  {
    goto LABEL_34;
  }

  v4 = (v1 + 8);
  if (!sub_10136E154(v2, (v1 + 8)))
  {
    goto LABEL_34;
  }

  v5 = !sub_1013715E0(v2);
  v6 = *(v2 + 56);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v1 + 8;
    if (*(v1 + 31) < 0)
    {
      v7 = *v4;
    }

    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = asString(v5);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I caching iccid [%s], installed in home country: [%s]", buf, 0x16u);
  }

  if (v2 + 1112 == sub_100007A6C(v2 + 1104, (v1 + 8)))
  {
    v34 = 0;
    *__p = 0u;
    v33 = 0u;
    v30 = 0;
    v31 = 0u;
    *buf = 0u;
    *&buf[16] = &v30;
    v28 = (v1 + 8);
    v8 = sub_1013858F8((v2 + 1104), (v1 + 8), &v28);
    v10 = v8 + 80;
    v9 = *(v8 + 80);
    *(v8 + 56) = *buf;
    *(v8 + 64) = *&buf[8];
    sub_100009970(v8 + 72, v9);
    v11 = v30;
    *(v8 + 72) = *&buf[16];
    *(v8 + 80) = v11;
    v12 = v31;
    *(v8 + 88) = v31;
    if (v12)
    {
      *(v11 + 2) = v10;
      *&buf[16] = &v30;
      v30 = 0;
      *&v31 = 0;
    }

    else
    {
      *(v8 + 72) = v10;
    }

    *(v8 + 96) = WORD4(v31);
    sub_10016A270(v8 + 104, __p);
    *(v8 + 136) = v34;
    if (BYTE8(v33) == 1 && SBYTE7(v33) < 0)
    {
      operator delete(__p[0]);
    }

    sub_100009970(&buf[16], v30);
  }

  ServiceMap = Registry::getServiceMap(*(v2 + 64));
  v14 = ServiceMap;
  v15 = "28DataOnlyPlanManagerInterface";
  if (("28DataOnlyPlanManagerInterface" & 0x8000000000000000) != 0)
  {
    v16 = ("28DataOnlyPlanManagerInterface" & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v15 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  std::mutex::lock(ServiceMap);
  *buf = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, buf);
  if (v19)
  {
    v21 = v19[3];
    v20 = v19[4];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v14);
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v20);
      v22 = 0;
      if (!v21)
      {
        goto LABEL_31;
      }

LABEL_25:
      if ((**v21)(v21, v1 + 8))
      {
        v23 = *(v2 + 56);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v1 + 8;
          if (*(v1 + 31) < 0)
          {
            v24 = *v4;
          }

          *buf = 136315138;
          *&buf[4] = v24;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I iccid [%s] to be data-only from dataonlyplanmanager", buf, 0xCu);
        }

        *buf = v1 + 8;
        *(sub_1013858F8((v2 + 1104), (v1 + 8), buf) + 96) = 257;
      }

      goto LABEL_31;
    }
  }

  else
  {
    v21 = 0;
  }

  std::mutex::unlock(v14);
  v20 = 0;
  v22 = 1;
  if (v21)
  {
    goto LABEL_25;
  }

LABEL_31:
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  *buf = v1 + 8;
  *(sub_1013858F8((v2 + 1104), (v1 + 8), buf) + 56) = v5;
  sub_10136AD80(v2);
LABEL_34:
  sub_1000EF424(&v27);
  return sub_1000049E0(&v26);
}