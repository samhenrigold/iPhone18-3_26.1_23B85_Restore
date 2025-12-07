void sub_1015A7400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  operator delete(v25);
  v28 = *(v26 - 104);
  if (v28)
  {
    sub_100004A34(v28);
  }

  if (*(v26 - 73) < 0)
  {
    operator delete(*(v26 - 96));
  }

  _Unwind_Resume(a1);
}

void sub_1015A7460(void *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v17 = 0;
  v18 = 0;
  sub_1015A7768(&v17, a2, a3);
  if (!v17)
  {
    v9 = *(*(**(a2 + 48) + 16))(*(a2 + 48), a3);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v10 = "Failed to instantiate chat services";
    v11 = buf;
    goto LABEL_19;
  }

  v16 = 0;
  *buf = 0u;
  v15 = 0u;
  sub_1015A702C(buf, a2, a3);
  v7 = *(a2 + 168);
  if (v7)
  {
    v8 = a2 + 168;
    do
    {
      if (*(v7 + 32) >= a3)
      {
        v8 = v7;
      }

      v7 = *(v7 + 8 * (*(v7 + 32) < a3));
    }

    while (v7);
    if (v8 != a2 + 168 && *(v8 + 32) <= a3)
    {
      v12 = *(a2 + 16);
      if (v12)
      {
        v13 = std::__shared_weak_count::lock(v12);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v13);
          operator new();
        }
      }

      sub_100013CC4();
    }
  }

  v9 = *(*(**(a2 + 48) + 16))(*(a2 + 48), a3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v19) = 0;
    v10 = "Missing provisioning initializer";
    v11 = &v19;
LABEL_19:
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
  }

LABEL_12:
  *a1 = 0;
  a1[1] = 0;
  if (v18)
  {
    sub_100004A34(v18);
  }
}

void sub_1015A7700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (v20)
  {
    sub_100004A34(v20);
  }

  std::__shared_weak_count::__release_weak(v19);
  v23 = *(v21 - 88);
  if (v23)
  {
    sub_100004A34(v23);
  }

  std::__shared_weak_count::~__shared_weak_count(v18);
  operator delete(v24);
  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(a1);
}

void sub_1015A7768(void *a1, uint64_t a2, uint64_t a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v27 = 0;
  PersonalityIdFromSlotId();
  v6 = sub_100007A6C(a2 + 112, __p);
  if (a2 + 120 == v6)
  {
    v18 = *(*(**(a2 + 48) + 16))(*(a2 + 48), a3);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      *a1 = 0;
      a1[1] = 0;
      goto LABEL_30;
    }

    v19 = subscriber::asString();
    *buf = 136315138;
    *&buf[4] = v19;
    v20 = "IMS client not present for: %s";
LABEL_34:
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);
    goto LABEL_15;
  }

  if ((*(v6 + 56) & 1) == 0)
  {
    v18 = *(*(**(a2 + 48) + 16))(*(a2 + 48), a3);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v23 = subscriber::asString();
    *buf = 136315138;
    *&buf[4] = v23;
    v20 = "IMS client not ready for: %s";
    goto LABEL_34;
  }

  ServiceMap = Registry::getServiceMap(*(a2 + 56));
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
  *buf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, buf);
  if (!v13)
  {
    v15 = 0;
LABEL_17:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
      goto LABEL_9;
    }

LABEL_18:
    *buf = 0uLL;
    (*(*v15 + 32))(buf, v15, __p);
    if (*buf)
    {
      *v24 = 0;
      v25 = 0;
      v21 = *(a2 + 64);
      if (v21)
      {
        atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
      }

      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
      }

      sub_1003453C4(v24);
    }

    v22 = *(*(**(a2 + 48) + 16))(*(a2 + 48), a3);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v24 = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to get Lazuli client", v24, 2u);
    }

    *a1 = 0;
    a1[1] = 0;
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    goto LABEL_28;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
    goto LABEL_17;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
  if (v15)
  {
    goto LABEL_18;
  }

LABEL_9:
  v17 = *(*(**(a2 + 48) + 16))(*(a2 + 48), a3);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to get SD interface while discovering capabilities", buf, 2u);
  }

  *a1 = 0;
  a1[1] = 0;
LABEL_28:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

LABEL_30:
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1015A7BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (a25)
  {
    sub_100004A34(a25);
  }

  if ((v26 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015A7DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void *sub_1015A7DE0(uint64_t a1, uint64_t a2, __int128 *a3, _DWORD *a4)
{
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  v8 = *(a1 + 64);
  v54 = *(a1 + 56);
  v55 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100DC26EC(v56, a2, &v54, (a1 + 24), a3);
  if (v55)
  {
    sub_100004A34(v55);
  }

  sub_100DC2C18(v53, v56);
  v10 = *(a1 + 88);
  v9 = *(a1 + 96);
  sub_100DC2C18(buf, v53);
  if (v10 == v9)
  {
LABEL_9:
    v11 = v9;
  }

  else
  {
    v11 = v10;
    while (!sub_100DC2B78(buf, *v11))
    {
      v11 += 2;
      if (v11 == v9)
      {
        goto LABEL_9;
      }
    }

    if (v11 != v9)
    {
      for (i = v11 + 2; i != v9; i += 2)
      {
        v25 = *i;
        if (!sub_100DC2B78(buf, *i))
        {
          v26 = i[1];
          *i = 0;
          i[1] = 0;
          v27 = v11[1];
          *v11 = v25;
          v11[1] = v26;
          if (v27)
          {
            sub_100004A34(v27);
          }

          v11 += 2;
        }
      }
    }
  }

  v12 = *(a1 + 96);
  if (v11 != v12)
  {
    while (v12 != v11)
    {
      v13 = *(v12 - 1);
      if (v13)
      {
        sub_100004A34(v13);
      }

      v12 -= 2;
    }

    *(a1 + 96) = v11;
  }

  sub_1015ADB90(buf);
  v14 = *(a1 + 96) - *(a1 + 88);
  sub_1015ADB90(v53);
  v15 = *(**(a1 + 48) + 16);
  if (v9 - v10 == v14)
  {
    v16 = *v15();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    if (*(a3 + 23) >= 0)
    {
      v17 = a3;
    }

    else
    {
      v17 = *a3;
    }

    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v17;
    v18 = "#I No active model for: [%{private, mask.hash}s]";
  }

  else
  {
    v16 = *v15();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_29;
    }

    if (*(a3 + 23) >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v19;
    v18 = "#I Relinquishing active model for: [%{private, mask.hash}s]";
  }

  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v18, buf, 0x16u);
LABEL_29:
  if (*(a1 + 88) == *(a1 + 96))
  {
    v20 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Discovery timer cleared. No ongoing searches", buf, 2u);
    }

    v21 = *(a1 + 224);
    *(a1 + 224) = 0;
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }
  }

  *v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  *v47 = 0u;
  v48 = 0u;
  *__dst = 0u;
  sub_1006FB24C(__dst, a3);
  if (*a4 == 2)
  {
    v72 = 0u;
    v71 = 0u;
    *v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    *v64 = 0u;
    v63 = 0u;
    *v62 = 0u;
    memset(v61, 0, sizeof(v61));
    v60 = 0u;
    memset(buf, 0, sizeof(buf));
    sub_1015A8744(a1, a2, a3, buf);
    if (BYTE8(v72) == 1)
    {
      v45 = 0;
      *__p = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      *v37 = 0u;
      v38 = 0u;
      *v35 = 0u;
      *v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      *v31 = 0u;
      *v32 = 0u;
      *v30 = 0u;
      sub_1006FB24C(v30, buf);
      LODWORD(v37[0]) = v64[0];
      WORD2(v37[0]) = WORD2(v64[0]);
      sub_10006F264(&v37[1], &v64[1]);
      *(&v39 + 1) = *(&v66 + 1);
      sub_1006FB368(&v40, &v67);
      v42 = v69;
      LOBYTE(__p[0]) = v70[0];
      sub_10006F264(&__p[1], &v70[1]);
      LOBYTE(v49) = BYTE5(v37[0]);
      sub_100220FC4(&v49 + 8, &v40);
      v22 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        if (LOBYTE(v51[0]) == 1)
        {
          v23 = 0xAAAAAAAAAAAAAAABLL * ((v50 - *(&v49 + 1)) >> 3);
        }

        else
        {
          v23 = 0;
        }

        *v58 = 134217984;
        *&v58[4] = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Sending discovery complete with %zu identities", v58, 0xCu);
      }

      if (v45 == 1 && SHIBYTE(v44) < 0)
      {
        operator delete(__p[1]);
      }

      if (BYTE8(v41) == 1)
      {
        *v58 = &v40;
        sub_1000087B4(v58);
      }

      if (v39 == 1 && SHIBYTE(v38) < 0)
      {
        operator delete(v37[1]);
      }

      if (SHIBYTE(v36[1]) < 0)
      {
        operator delete(v35[1]);
      }

      if (LOBYTE(v35[0]) == 1)
      {
        *v58 = &v33 + 8;
        sub_1000087B4(v58);
      }

      if (SHIBYTE(v32[1]) < 0)
      {
        operator delete(v31[1]);
      }

      if (SHIBYTE(v31[0]) < 0)
      {
        operator delete(*v30);
      }
    }

    else
    {
      v28 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Sending discovery complete - no cache found.", v30, 2u);
      }
    }

    *v30 = a2;
    sub_1006FB24C(&v30[8], __dst);
    sub_1015A8918(a1 + 72, v30);
    if (SHIBYTE(v37[0]) < 0)
    {
      operator delete(v36[0]);
    }

    if (LOBYTE(v35[1]) == 1)
    {
      *v58 = &v34;
      sub_1000087B4(v58);
    }

    if (SBYTE7(v33) < 0)
    {
      operator delete(v32[0]);
    }

    if (SHIBYTE(v31[1]) < 0)
    {
      operator delete(*&v30[8]);
    }

    if (BYTE8(v72) == 1)
    {
      if (v72 == 1 && SHIBYTE(v71) < 0)
      {
        operator delete(v70[1]);
      }

      if (BYTE8(v68) == 1)
      {
        *v30 = &v67;
        sub_1000087B4(v30);
      }

      if (v66 == 1 && SHIBYTE(v65) < 0)
      {
        operator delete(v64[1]);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62[1]);
      }

      if (LOBYTE(v62[0]) == 1)
      {
        *v30 = v61 + 8;
        sub_1000087B4(v30);
      }

      if (SHIBYTE(v60) < 0)
      {
        operator delete(*&buf[24]);
      }

      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51[1]);
  }

  if (LOBYTE(v51[0]) == 1)
  {
    *buf = &v49 + 8;
    sub_1000087B4(buf);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47[1]);
  }

  if (SHIBYTE(v47[0]) < 0)
  {
    operator delete(__dst[0]);
  }

  return sub_1015ADB90(v56);
}

void sub_1015A8650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  sub_1006A291C(&a11);
  if (LOBYTE(STACK[0x5D8]) == 1)
  {
    sub_1006A291C(&STACK[0x4E0]);
  }

  sub_10067AA50(&a43);
  sub_1015ADB90(&STACK[0x330]);
  _Unwind_Resume(a1);
}

void sub_1015A8730()
{
  if (STACK[0x328])
  {
    sub_100004A34(STACK[0x328]);
  }

  JUMPOUT(0x1015A8728);
}

void sub_1015A8744(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I === read-cached-capabilities: [%{private, mask.hash}s] ===", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_1015A7460(buf, a1, a2, a3);
  if (*buf)
  {
    sub_100DCB4B0(*buf, a4);
  }

  else
  {
    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Bailing out of read cached capabilities", v11, 2u);
    }

    *a4 = 0;
    a4[248] = 0;
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_1015A88F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015A8918(uint64_t a1, int *a2)
{
  v5 = 0;
  write_rest_value(a2, &v5);
  sub_10000501C(&__p, "/cc/events/lazuli_chatbot_discovery_complete");
  object = v5;
  v5 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_1015A89AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

unint64_t sub_1015A89F0(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4)
{
  v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    *buf = 141558275;
    v20 = 1752392040;
    v21 = 2081;
    v22 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I === discover-capabilities for: [%{private, mask.hash}s] ===", buf, 0x16u);
  }

  __p[0] = 0;
  __p[1] = 0;
  v16 = 0;
  PersonalityIdFromSlotId();
  v9 = sub_100007A6C(a1 + 184, __p);
  if (a1 + 192 == v9)
  {
    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    *buf = 141558275;
    v20 = 1752392040;
    v21 = 2081;
    v22 = v11;
    v12 = "#I IMS not available while searching for: [%{private, mask.hash}s]";
    goto LABEL_19;
  }

  if (*(v9 + 56) == 1)
  {
    *v17 = 0;
    v18 = 0;
    sub_1015A7C94(v17, a1, a2, a3);
  }

  v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v13 = a3;
    }

    else
    {
      v13 = *a3;
    }

    *buf = 141558275;
    v20 = 1752392040;
    v21 = 2081;
    v22 = v13;
    v12 = "#I IMS not registered while searching for: [%{private, mask.hash}s]";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, buf, 0x16u);
  }

LABEL_20:
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1015A9254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *aBlock, dispatch_object_t object, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a32)
  {
    sub_100004A34(a32);
  }

  if (a38 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015A9388(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 56));
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = (*(v2 + 96) - *(v2 + 88)) >> 4;
          v9 = 134217984;
          v10 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Discovery timer expired. Clearing a total of [%zu] models", &v9, 0xCu);
        }

        sub_100021348((v2 + 88));
      }

      sub_100004A34(v5);
    }
  }

  result = *(v2 + 224);
  *(v2 + 224) = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

uint64_t sub_1015A94D8(uint64_t result, uint64_t a2)
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

void sub_1015A94F4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1015A9504(uint64_t a1, uint64_t a2, __int128 *a3, int *a4, uint64_t a5)
{
  if (*a4 == -1)
  {
    return 0x100000004;
  }

  v50 = 0;
  memset(v49, 0, sizeof(v49));
  sub_1015A702C(v49, a1, a2);
  if (!v50)
  {
    v47[0] = 0;
    v47[1] = 0;
    v48 = 0;
    PersonalityIdFromSlotId();
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
        v23 = 0;
        if (!v22)
        {
LABEL_17:
          if ((v23 & 1) == 0)
          {
            sub_100004A34(v21);
          }

          v24 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = *(a3 + 23);
            v26 = *a3;
            v27 = Lazuli::asString();
            if (v25 >= 0)
            {
              v28 = a3;
            }

            else
            {
              v28 = v26;
            }

            *buf = 141558531;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v28;
            *&buf[22] = 2080;
            v52 = v27;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Fetch remote capabilities for: [%{private, mask.hash}s] : %s", buf, 0x20u);
          }

          v29 = *a4;
          if ((*a4 | 2) == 2)
          {
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            *v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            *v62 = 0u;
            *v60 = 0u;
            v58 = 0u;
            memset(v59, 0, sizeof(v59));
            memset(v57, 0, sizeof(v57));
            sub_1015A8744(a1, a2, a3, v57);
            if (BYTE8(v70) == 1)
            {
              v30 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Capabilities found in cache", buf, 2u);
              }

              v31 = *(a5 + 23);
              if ((v31 & 0x80u) != 0)
              {
                v31 = *(a5 + 8);
              }

              if (v31)
              {
                *buf = a2;
                sub_100B42500(&buf[8], v57);
                if (*(a5 + 23) < 0)
                {
                  sub_100005F2C(v55, *a5, *(a5 + 8));
                }

                else
                {
                  *v55 = *a5;
                  v55[2] = *(a5 + 16);
                }

                sub_1006FB24C(v56, a3);
                v56[14] = a1;
                v42 = *(a1 + 16);
                if (v42 && std::__shared_weak_count::lock(v42))
                {
                  operator new();
                }

                sub_100013CC4();
              }

              if (BYTE8(v70) == 1)
              {
                if (v70 == 1 && SHIBYTE(v69) < 0)
                {
                  operator delete(v68[1]);
                }

                if (BYTE8(v66) == 1)
                {
                  *buf = &v65;
                  sub_1000087B4(buf);
                }

                if (v64 == 1 && SHIBYTE(v63) < 0)
                {
                  operator delete(v62[1]);
                }

                if (SHIBYTE(v61) < 0)
                {
                  operator delete(v60[1]);
                }

                if (LOBYTE(v60[0]) == 1)
                {
                  *buf = v59 + 8;
                  sub_1000087B4(buf);
                }

                if (SHIBYTE(v58) < 0)
                {
                  operator delete(*&v57[24]);
                }

                if (v57[23] < 0)
                {
                  operator delete(*v57);
                }
              }

              goto LABEL_89;
            }

            v29 = *a4;
          }

          if ((v29 - 1) < 2)
          {
            memset(buf, 0, sizeof(buf));
            PersonalityIdFromSlotId();
            v32 = sub_100007A6C(a1 + 184, buf);
            if (a1 + 192 == v32)
            {
              v37 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
              if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_61;
              }

              if (*(a3 + 23) >= 0)
              {
                v38 = a3;
              }

              else
              {
                v38 = *a3;
              }

              *v57 = 141558275;
              *&v57[4] = 1752392040;
              *&v57[12] = 2081;
              *&v57[14] = v38;
              v39 = "#I IMS not available while searching for: [%{private, mask.hash}s]";
            }

            else
            {
              if (*(v32 + 56) == 1)
              {
                *v45 = 0;
                v46 = 0;
                sub_1015A7C94(v45, a1, a2, a3);
              }

              v37 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
              if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_61;
              }

              if (*(a3 + 23) >= 0)
              {
                v40 = a3;
              }

              else
              {
                v40 = *a3;
              }

              *v57 = 141558275;
              *&v57[4] = 1752392040;
              *&v57[12] = 2081;
              *&v57[14] = v40;
              v39 = "#I IMS not registered while searching for: [%{private, mask.hash}s]";
            }

            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, v39, v57, 0x16u);
LABEL_61:
            v11 = &_mh_execute_header;
            v12 = 1;
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }

            goto LABEL_90;
          }

          if (v29)
          {
            v35 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = Lazuli::asString();
              *buf = 141558275;
              *&buf[4] = 1752392040;
              *&buf[12] = 2081;
              *&buf[14] = v36;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Unhandled type for discovery: [%{private, mask.hash}s]", buf, 0x16u);
            }

            v11 = &_mh_execute_header;
            v12 = 4;
            goto LABEL_90;
          }

          v33 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a3 + 23) >= 0)
            {
              v34 = a3;
            }

            else
            {
              v34 = *a3;
            }

            *buf = 141558275;
            *&buf[4] = 1752392040;
            *&buf[12] = 2081;
            *&buf[14] = v34;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Nothing found in cache for destination: [%{private, mask.hash}s]", buf, 0x16u);
          }

          if (*(a5 + 23) < 0)
          {
            v43 = *(a5 + 8);
            if (v43)
            {
              *buf = a2;
              sub_100005F2C(&buf[8], *a5, v43);
              goto LABEL_86;
            }
          }

          else if (*(a5 + 23))
          {
            *buf = a2;
            *&buf[8] = *a5;
            v52 = *(a5 + 16);
LABEL_86:
            sub_1006FB24C(v53, a3);
            v54 = a1;
            v44 = *(a1 + 16);
            if (v44 && std::__shared_weak_count::lock(v44))
            {
              operator new();
            }

            sub_100013CC4();
          }

LABEL_89:
          v11 = 0;
          v12 = 0;
LABEL_90:
          if (SHIBYTE(v48) < 0)
          {
            operator delete(v47[0]);
          }

          return v12 | v11;
        }

LABEL_16:
        (*(*v22 + 320))(v22, v47);
        goto LABEL_17;
      }
    }

    else
    {
      v22 = 0;
    }

    std::mutex::unlock(v15);
    v21 = 0;
    v23 = 1;
    if (!v22)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v41 = Lazuli::asString();
    *buf = 136315138;
    *&buf[4] = v41;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Discovery via options not supported: %s", buf, 0xCu);
  }

  v11 = &_mh_execute_header;
  v12 = 7;
  return v12 | v11;
}

void sub_1015AA540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *aBlock, dispatch_object_t object, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (STACK[0x298])
  {
    sub_100004A34(STACK[0x298]);
  }

  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1015AA754(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 56));
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = (*(v2 + 96) - *(v2 + 88)) >> 4;
          v9 = 134217984;
          v10 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Discovery timer expired. Clearing total searches: %zu", &v9, 0xCu);
        }

        sub_100021348((v2 + 88));
      }

      sub_100004A34(v5);
    }
  }

  result = *(v2 + 224);
  *(v2 + 224) = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_1015AA8A4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I === chatbot-found: [%{private, mask.hash}s] ===", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = 0;
  sub_1015A7460(buf, a1, a2, a3);
  if (*buf)
  {
    sub_100DCA3D4(*buf, 1);
  }

  else
  {
    v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Bailing out of chatbot found", v9, 2u);
    }
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_1015AAA40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015AAA64(uint64_t a1, uint64_t a2, void **a3, void **a4)
{
  v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    if (*(a4 + 23) >= 0)
    {
      v10 = a4;
    }

    else
    {
      v10 = *a4;
    }

    *buf = 141558787;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v9;
    *&buf[22] = 2160;
    v18 = 1752392040;
    LOWORD(v19) = 2081;
    *(&v19 + 2) = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I === chatbot-identity-updated: [%{private, mask.hash}s] ==> [%{private, mask.hash}s] ===", buf, 0x2Au);
  }

  v14 = 0;
  v15 = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(buf, *a3, a3[1]);
  }

  else
  {
    *buf = *a3;
    *&buf[16] = a3[2];
  }

  v21 = 0;
  v22 = 0;
  v24 = 0;
  v25 = 0;
  __p = 0;
  v19 = 0uLL;
  v18 = 0;
  v20 = 0;
  sub_1015A7460(&v14, a1, a2, buf);
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  if (v22 == 1)
  {
    v16 = &v21;
    sub_1000087B4(&v16);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v11 = v14;
  if (v14)
  {
    sub_100DCAC2C(v14, a4);
    sub_100DCA3D4(v11, 1);
    v12 = *(a1 + 208);
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(buf, *a3, a3[1]);
    }

    else
    {
      *buf = *a3;
      *&buf[16] = a3[2];
    }

    v21 = 0;
    v22 = 0;
    v24 = 0;
    v25 = 0;
    __p = 0;
    v19 = 0uLL;
    v18 = 0;
    v20 = 0;
    if (*(a4 + 23) < 0)
    {
      sub_100005F2C(&v26, *a4, a4[1]);
    }

    else
    {
      v26 = *a4;
      v27 = a4[2];
    }

    v32 = 0;
    v33 = 0;
    v35 = 0;
    v36 = 0;
    v34 = 0;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    v31 = 0;
    v37 = 1;
    (*(*v12 + 392))(v12, a2, buf);
    sub_100B42620(buf);
  }

  else
  {
    v13 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Bailing out of chatbot identity updated", buf, 2u);
    }
  }

  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_1015AADB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, uint64_t a7, std::__shared_weak_count *a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10067AA50(va);
  if (a8)
  {
    sub_100004A34(a8);
  }

  _Unwind_Resume(a1);
}

void sub_1015AAE0C(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char *a4@<X8>)
{
  v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    *buf = 141558275;
    v18 = 1752392040;
    v19 = 2081;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I === get-normalized-destination for: [%{private, mask.hash}s] ===", buf, 0x16u);
  }

  v15 = 0;
  v16 = 0;
  sub_1015A7460(&v15, a1, a2, a3);
  v10 = v15;
  v11 = *(**(a1 + 48) + 16);
  if (v15)
  {
    v12 = *v11();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v13 = a3;
      }

      else
      {
        v13 = *a3;
      }

      *buf = 141558275;
      v18 = 1752392040;
      v19 = 2081;
      v20 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Handling destination with updated capabilities: [%{private, mask.hash}s]", buf, 0x16u);
    }

    a3 = (v10 + 184);
  }

  else
  {
    v14 = *v11();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Bailing out of read normalizing destination", buf, 2u);
    }
  }

  sub_1006FB24C(a4, a3);
  if (v16)
  {
    sub_100004A34(v16);
  }
}

void sub_1015AB038(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015AB060(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    if (*(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    if (*(a1 + 80) == 1)
    {
      v3 = (a1 + 56);
      sub_1000087B4(&v3);
    }

    if (*(a1 + 47) < 0)
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

void sub_1015AB0E4(uint64_t a1, uint64_t a2, void **a3)
{
  v52 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  sub_1015A702C(v59, a1, a2);
  if (v60)
  {
    v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = Lazuli::asString();
      *buf = 136315138;
      *&buf[4] = v6;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Ignoring capabilities response. Discovery not supported: %s", buf, 0xCu);
    }

    return;
  }

  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  memset(v55, 0, sizeof(v55));
  v7 = *a3;
  v54 = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    v54 = xpc_null_create();
  }

  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  memset(&__str, 0, sizeof(__str));
  __dst[0] = &v54;
  v51 = ims::lazuli::kRemoteUri;
  __dst[1] = ims::lazuli::kRemoteUri;
  sub_100006354(__dst, &object);
  memset(__p, 0, 24);
  xpc::dyn_cast_or_default();
  sub_100C17E6C(&__str, buf);
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  xpc_release(object);
  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  memset(v93, 0, sizeof(v93));
  v92 = 0u;
  memset(buf, 0, sizeof(buf));
  sub_1009CC9A8(&__str, __dst);
  sub_100C17E6C(__p, __dst);
  sub_1015A7140(buf, a1, a2, __p);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  if ((v96 & 1) == 0)
  {
    LOBYTE(v55[0]) = 0;
    LOBYTE(v58) = 0;
    goto LABEL_157;
  }

  object = 0uLL;
  v73 = 0;
  if (buf[23] < 0)
  {
    sub_100005F2C(&object, *buf, *&buf[8]);
  }

  else
  {
    object = *buf;
    v73 = *&buf[16];
  }

  v9 = HIBYTE(v73);
  if (v73 < 0)
  {
    v9 = *(&object + 1);
  }

  if (!v9)
  {
    v13 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(__dst, &v54);
      v14 = SHIBYTE(__dst[2]) >= 0 ? __dst : __dst[0];
      *__p = 141558787;
      *&__p[4] = 1752392040;
      *&__p[12] = 2081;
      *&__p[14] = v51;
      *&__p[22] = 2160;
      *&__p[24] = 1752392040;
      *&__p[32] = 2081;
      *&__p[34] = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Unable to extract URI: Invalid key [%{private, mask.hash}s] from [%{private, mask.hash}s]", __p, 0x2Au);
      if (SHIBYTE(__dst[2]) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    goto LABEL_33;
  }

  sub_100C17E6C(__p, &object);
  v10 = sub_100C176C8(__p);
  v11 = v10;
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if (v11)
    {
LABEL_25:
      v12 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 136315138;
        *&__p[4] = v51;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Anonymous options received: Invalid key [%s]", __p, 0xCu);
      }

LABEL_33:
      LOBYTE(v55[0]) = 0;
      LOBYTE(v58) = 0;
      goto LABEL_146;
    }
  }

  else if (v10)
  {
    goto LABEL_25;
  }

  *__p = &v54;
  *&__p[8] = ims::lazuli::kRemoteIdentityList;
  sub_100006354(__p, __dst);
  v15 = xpc_null_create();
  v16 = __dst[0];
  if (__dst[0] && xpc_get_type(__dst[0]) == &_xpc_type_array)
  {
    xpc_retain(v16);
  }

  else
  {
    v16 = xpc_null_create();
  }

  if (xpc_get_type(v16) != &_xpc_type_array)
  {
    if (v15)
    {
      xpc_retain(v15);
      v17 = v15;
    }

    else
    {
      v17 = xpc_null_create();
    }

    xpc_release(v16);
    v16 = v17;
  }

  xpc_release(v15);
  xpc_release(__dst[0]);
  v70 = 0;
  __src = 0;
  v71 = 0;
  *__p = v16;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    *__p = xpc_null_create();
  }

  sub_100008EA4(&v67, __p, 0);
  xpc_release(*__p);
  *__p = v16;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    *__p = xpc_null_create();
  }

  if (xpc_get_type(v16) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v16);
  }

  else
  {
    count = 0;
  }

  sub_100008EA4(v66, __p, count);
  xpc_release(*__p);
  v19 = v68;
  v50 = v8;
  while (v19 != v66[1] || v67 != v66[0])
  {
    v65 = 0;
    *__p = &v67;
    *&__p[8] = v19;
    sub_100008EF0(__p, &v65);
    v89 = 0uLL;
    v90 = 0;
    memset(__p, 0, 24);
    xpc::dyn_cast_or_default();
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v90) < 0)
    {
      if (!*(&v89 + 1))
      {
        goto LABEL_129;
      }

      v64 = 0;
      v63 = 0;
      sub_100005F2C(__p, v89, *(&v89 + 1));
    }

    else
    {
      if (!HIBYTE(v90))
      {
        goto LABEL_130;
      }

      v64 = 0;
      v63 = 0;
      *__p = v89;
      *&__p[16] = v90;
    }

    __p[56] = 0;
    LOBYTE(v87) = 0;
    v88 = 0uLL;
    *(&v87 + 1) = 0;
    memset(&__p[24], 0, 25);
    sub_1015A7460(&v63, a1, a2, __p);
    if (SHIBYTE(v88) < 0)
    {
      operator delete(*(&v87 + 1));
    }

    if (v87 == 1)
    {
      __dst[0] = &__p[56];
      sub_1000087B4(__dst);
    }

    if ((__p[47] & 0x80000000) != 0)
    {
      operator delete(*&__p[24]);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    __s[1] = 0;
    __s[0] = 0;
    v62 = 0;
    v20 = v63;
    if (SHIBYTE(v90) < 0)
    {
      sub_100005F2C(__dst, v89, *(&v89 + 1));
    }

    else
    {
      *__dst = v89;
      __dst[2] = v90;
    }

    LOBYTE(v81) = 0;
    v82 = 0;
    v84 = 0;
    v85 = 0;
    v83 = 0;
    v78 = 0;
    v79 = 0;
    v77 = 0;
    v80 = 0;
    sub_100DC1EBC(v20, __dst, __p);
    sub_100C17E6C(__s, __p);
    if (SHIBYTE(v88) < 0)
    {
      operator delete(*(&v87 + 1));
    }

    if (v87 == 1)
    {
      v74 = &__p[56];
      sub_1000087B4(&v74);
    }

    if ((__p[47] & 0x80000000) != 0)
    {
      operator delete(*&__p[24]);
    }

    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v85) < 0)
    {
      operator delete(v83);
    }

    if (v82 == 1)
    {
      v74 = &v81;
      sub_1000087B4(&v74);
    }

    if (SHIBYTE(v79) < 0)
    {
      operator delete(v77);
    }

    if (SHIBYTE(__dst[2]) < 0)
    {
      operator delete(__dst[0]);
    }

    if (sub_100C176C8(__s))
    {
      v21 = *v8;
      if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_124;
      }

      *__p = 0;
      v22 = v21;
      v23 = "#I Ignoring anonymous identity for alternate reference";
LABEL_109:
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v23, __p, 2u);
      goto LABEL_124;
    }

    sub_1009CC9A8(__s, __p);
    v24 = __p[23];
    if (__p[23] >= 0)
    {
      v25 = __p[23];
    }

    else
    {
      v25 = *&__p[8];
    }

    v26 = HIBYTE(v73);
    if (v73 < 0)
    {
      v26 = *(&object + 1);
    }

    if (v25 == v26)
    {
      if (__p[23] >= 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = *__p;
      }

      if (v73 >= 0)
      {
        p_object = &object;
      }

      else
      {
        p_object = object;
      }

      v29 = memcmp(v27, p_object, v25) == 0;
      if ((v24 & 0x80000000) == 0)
      {
LABEL_106:
        if (v29)
        {
          goto LABEL_107;
        }

        goto LABEL_112;
      }
    }

    else
    {
      v29 = 0;
      if ((__p[23] & 0x80000000) == 0)
      {
        goto LABEL_106;
      }
    }

    operator delete(*__p);
    if (v29)
    {
LABEL_107:
      v30 = *v8;
      if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_124;
      }

      *__p = 0;
      v22 = v30;
      v23 = "#I Ignoring own identity for alternate reference";
      goto LABEL_109;
    }

LABEL_112:
    sub_1009CC9A8(__s, __dst);
    v31 = v70;
    if (v70 >= v71)
    {
      v33 = 0xAAAAAAAAAAAAAAABLL * ((v70 - __src) >> 3);
      v34 = v33 + 1;
      if (v33 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1000CE3D4();
      }

      if (0x5555555555555556 * ((v71 - __src) >> 3) > v34)
      {
        v34 = 0x5555555555555556 * ((v71 - __src) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v71 - __src) >> 3) >= 0x555555555555555)
      {
        v35 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v35 = v34;
      }

      *&__p[32] = &__src;
      if (v35)
      {
        sub_100005348(&__src, v35);
      }

      v36 = 8 * ((v70 - __src) >> 3);
      v37 = *__dst;
      *(v36 + 16) = __dst[2];
      *v36 = v37;
      memset(__dst, 0, sizeof(__dst));
      v38 = (24 * v33 + 24);
      v39 = (24 * v33 - (v70 - __src));
      memcpy((v36 - (v70 - __src)), __src, v70 - __src);
      v40 = __src;
      v41 = v71;
      __src = v39;
      v70 = v38;
      v71 = 0;
      *&__p[16] = v40;
      *&__p[24] = v41;
      *&__p[8] = v40;
      *__p = v40;
      sub_1000054E0(__p);
      v70 = v38;
      v8 = v50;
      if (SHIBYTE(__dst[2]) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    else
    {
      v32 = *__dst;
      *(v70 + 2) = __dst[2];
      *v31 = v32;
      v70 = v31 + 24;
    }

LABEL_124:
    if (SHIBYTE(v62) < 0)
    {
      operator delete(__s[0]);
    }

    if (v64)
    {
      sub_100004A34(v64);
    }

    if (SHIBYTE(v90) < 0)
    {
LABEL_129:
      operator delete(v89);
    }

LABEL_130:
    xpc_release(v65);
    v19 = ++v68;
  }

  xpc_release(v66[0]);
  xpc_release(v67);
  v42 = v70;
  v43 = __src;
  if (v70 != __src)
  {
    v44 = *v8;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000D1184(__p, v43, v42, ", ", 2uLL);
      v45 = __p[23] >= 0 ? __p : *__p;
      LODWORD(__dst[0]) = 141558275;
      *(__dst + 4) = 1752392040;
      WORD2(__dst[1]) = 2081;
      *(&__dst[1] + 6) = v45;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I Additional identities: [%{private, mask.hash}s]", __dst, 0x16u);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }
  }

  if (SHIBYTE(v73) < 0)
  {
    sub_100005F2C(__p, object, *(&object + 1));
  }

  else
  {
    *__p = object;
    *&__p[16] = v73;
  }

  memset(&__p[56], 0, 24);
  memset(&__p[24], 0, 25);
  sub_10004EFD0(&__p[56], __src, v70, 0xAAAAAAAAAAAAAAABLL * ((v70 - __src) >> 3));
  LOBYTE(v87) = 1;
  v55[0] = *__p;
  v46 = *&__p[16];
  memset(__p, 0, 48);
  *(&v55[1] + 8) = *&__p[24];
  *&v55[1] = v46;
  *(&v55[2] + 1) = *&__p[40];
  LOBYTE(v55[3]) = __p[48];
  *(&v55[3] + 8) = *&__p[56];
  *(&v55[4] + 1) = *&__p[72];
  memset(&__p[56], 0, 24);
  LOBYTE(v56) = 1;
  *(&v56 + 1) = 0;
  v57 = 0uLL;
  v88 = 0uLL;
  *(&v87 + 1) = 0;
  LOBYTE(v58) = 1;
  __dst[0] = &__p[56];
  sub_1000087B4(__dst);
  if ((__p[47] & 0x80000000) != 0)
  {
    operator delete(*&__p[24]);
  }

  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  *__p = &__src;
  sub_1000087B4(__p);
  xpc_release(v16);
LABEL_146:
  if (SHIBYTE(v73) < 0)
  {
    operator delete(object);
  }

  if (v96)
  {
    if (SHIBYTE(v95) < 0)
    {
      operator delete(*(&v94 + 1));
    }

    if (v94 == 1)
    {
      *__p = v93 + 8;
      sub_1000087B4(__p);
    }

    if (SHIBYTE(v92) < 0)
    {
      operator delete(*&buf[24]);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

LABEL_157:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  xpc_release(v54);
  v54 = 0;
  if (v58)
  {
    v87 = 0u;
    v88 = 0u;
    memset(__p, 0, sizeof(__p));
    sub_1006FB24C(__p, v55);
    v47 = *v52;
    if (os_log_type_enabled(*v52, OS_LOG_TYPE_DEFAULT))
    {
      v48 = __p;
      if (__p[23] < 0)
      {
        v48 = *__p;
      }

      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I Capabilities response from: [%{private, mask.hash}s]", buf, 0x16u);
    }

    *&__str.__r_.__value_.__l.__data_ = 0uLL;
    sub_1015A7C94(&__str, a1, a2, __p);
  }

  v49 = *v52;
  if (os_log_type_enabled(*v52, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Unhandled capabilities response", buf, 2u);
  }

  if (v58 == 1)
  {
    if (SHIBYTE(v57) < 0)
    {
      operator delete(*(&v56 + 1));
    }

    if (v56 == 1)
    {
      *buf = &v55[3] + 8;
      sub_1000087B4(buf);
    }

    if (SHIBYTE(v55[2]) < 0)
    {
      operator delete(*(&v55[1] + 1));
    }

    if (SBYTE7(v55[1]) < 0)
    {
      operator delete(*&v55[0]);
    }
  }
}

void sub_1015ACB58(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1015AD10C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v47 = 0;
  v48 = 0;
  sub_1015A7768(&v47, a1, a2);
  v7 = v47;
  if (v47)
  {
    v46 = 0;
    memset(v45, 0, sizeof(v45));
    sub_1015A702C(v45, a1, a2);
    v8 = *(a1 + 168);
    if (!v8)
    {
      goto LABEL_9;
    }

    v9 = a1 + 168;
    do
    {
      if (*(v8 + 32) >= a2)
      {
        v9 = v8;
      }

      v8 = *(v8 + 8 * (*(v8 + 32) < a2));
    }

    while (v8);
    if (v9 == a1 + 168 || *(v9 + 32) > a2)
    {
LABEL_9:
      v10 = *v6;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Missing provisioning initializer", buf, 2u);
      }

      v9 = a1 + 168;
    }

    v44 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
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
    *buf = 0u;
    v11 = *(a1 + 64);
    v18[0] = *(a1 + 56);
    v18[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 8);
      v14 = std::__shared_weak_count::lock(v12);
      if (v14)
      {
        v17[0] = v13;
        v17[1] = v14;
        atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v14);
        v16[0] = v7;
        v16[1] = v48;
        if (v48)
        {
          atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        sub_100DC18F4(buf, a2, v18, (a1 + 24), a3, v17, v16, v45, v9 + 40);
      }
    }

    sub_100013CC4();
  }

  v15 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to instantiate chat services during delete chat", buf, 2u);
  }

  if (v48)
  {
    sub_100004A34(v48);
  }
}

void sub_1015AD384(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_1015ADB90(va);
  v18 = *(v16 - 72);
  if (v18)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(a1);
}

void sub_1015AD3E0(void *a1, int a2, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 1));
  }

  else
  {
    *__p = *a3;
    __p[2] = *(a3 + 2);
  }

  __p[3] = a1;
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

void sub_1015AD53C(void *a1, int a2, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 1));
  }

  else
  {
    *__p = *a3;
    __p[2] = *(a3 + 2);
  }

  __p[3] = a1;
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

void sub_1015AD698(uint64_t a1, int a2, uint64_t a3)
{
  v7[2] = 0;
  v7[3] = 0;
  v5 = *(a1 + 64);
  v7[0] = *(a1 + 56);
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(__p, "Capabilities");
  sub_100B2FB1C(a2, v7, a3, __p, 0, 0);
}

void sub_1015AD740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  v19 = *(v17 - 24);
  if (v19)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015AD780(void *a1, int a2, __int128 *a3)
{
  sub_1006FB24C(v5, a3);
  v5[14] = a1;
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

void sub_1015AD8E4(uint64_t a1, uint64_t a2, __int128 *a3, _DWORD *a4)
{
  v4 = a2;
  v7[0] = 0;
  v7[1] = 0;
  sub_1006FB24C(&v6, a3);
  sub_1015A7C94(v7, a1, v4, &v6);
}

void sub_1015ADA1C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 48);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015ADA44(void *a1, int a2, __int128 *a3)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&__p, *a3, *(a3 + 1));
  }

  else
  {
    __p = *a3;
    v6 = *(a3 + 2);
  }

  v7 = a1;
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

void *sub_1015ADB90(uint64_t a1)
{
  v2 = *(a1 + 392);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 376);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v9 = (a1 + 328);
  sub_10005AAF8(&v9);
  v4 = *(a1 + 320);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 304);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 264) == 1)
  {
    v9 = (a1 + 240);
    sub_1000087B4(&v9);
  }

  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 152) == 1)
  {
    v9 = (a1 + 128);
    sub_1000087B4(&v9);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 32));
  return sub_1000C0544(a1);
}

void *sub_1015ADD8C(void *a1, NSObject **a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F51630;
  sub_1015ADE84((a1 + 3), a2, a3);
  return a1;
}

void sub_1015ADE08(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F51630;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1015ADE84(uint64_t a1, NSObject **a2, uint64_t *a3)
{
  v4 = a3[1];
  v6 = *a3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1015A6084(a1, a2, &v6);
  if (v7)
  {
    sub_100004A34(v7);
  }

  return a1;
}

void sub_1015ADEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1015ADF68(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F51680;
  a2[1] = v2;
  return result;
}

uint64_t sub_1015ADF9C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015AE064(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F51700;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1015AE09C(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v5 = (v3 + 1);
  v4 = v3[1];
  v19 = *v3;
  v20 = v4;
  if (v3[2])
  {
    v4[2] = &v20;
    *v3 = v5;
    *v5 = 0;
    v3[2] = 0;
  }

  else
  {
    v19 = &v20;
  }

  v6 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v6);
  }

  else
  {
    v6 = xpc_null_create();
  }

  sub_10006DCAC(v3, v3[1]);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = v5;
  if (xpc_get_type(v6) == &_xpc_type_array)
  {
    object[0] = v6;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v27, object, 0);
    xpc_release(object[0]);
    object[0] = v6;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (xpc_get_type(v6) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v6);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v26, object, count);
    xpc_release(object[0]);
    for (i = v28; ; i = ++v28)
    {
      if (i == v26[1] && v27 == v26[0])
      {
        xpc_release(v26[0]);
        xpc_release(v27);
        goto LABEL_47;
      }

      v25 = 0;
      object[0] = &v27;
      object[1] = i;
      sub_10003EAD4(object, &v25);
      if (xpc_get_type(v25) == &_xpc_type_dictionary)
      {
        break;
      }

LABEL_45:
      xpc_release(v25);
    }

    v23 = 0u;
    v24 = 0u;
    *object = 0u;
    DWORD2(v24) = -1;
    v9 = v25;
    if (v25)
    {
      xpc_retain(v25);
      v32 = v9;
    }

    else
    {
      v9 = xpc_null_create();
      v32 = v9;
      if (!v9)
      {
        v10 = xpc_null_create();
        v9 = 0;
        goto LABEL_29;
      }
    }

    if (xpc_get_type(v9) == &_xpc_type_dictionary)
    {
      xpc_retain(v9);
      v10 = v9;
LABEL_30:
      if (xpc_get_type(v10) == &_xpc_type_dictionary)
      {
        v29 = &v32;
        v30 = "first";
        sub_100006354(&v29, v31);
        type = xpc_get_type(*v31);
        if (type == &_xpc_type_string)
        {
          v33[0] = object[0];
          ctu::rest::detail::read_enum_string_value(v33, v31, v12);
          LODWORD(object[0]) = v33[0];
        }

        else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
        {
          LODWORD(object[0]) = xpc::dyn_cast_or_default(v31, 0, v12);
        }

        xpc_release(*v31);
        v29 = &v32;
        v30 = "second";
        sub_100006354(&v29, v31);
        read_rest_value(&object[1], v31);
        xpc_release(*v31);
        v10 = v32;
      }

      xpc_release(v10);
      xpc_release(v9);
      v13 = *v5;
      if (!*v5)
      {
LABEL_44:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v14 = v13;
          v15 = *(v13 + 32);
          if (v15 <= SLODWORD(object[0]))
          {
            break;
          }

          v13 = *v14;
          if (!*v14)
          {
            goto LABEL_44;
          }
        }

        if (v15 >= SLODWORD(object[0]))
        {
          goto LABEL_45;
        }

        v13 = v14[1];
        if (!v13)
        {
          goto LABEL_44;
        }
      }
    }

    v10 = xpc_null_create();
LABEL_29:
    v32 = v10;
    goto LABEL_30;
  }

LABEL_47:
  xpc_release(v6);
  v16 = a1[3];
  v17 = a1[4];
  v18 = (a1[2] + (v17 >> 1));
  if (v17)
  {
    v16 = *(*v18 + v16);
  }

  v16(v18, &v19);
  sub_10006DCAC(&v19, v20);
}

void sub_1015AE4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t a20, xpc_object_t a21, uint64_t a22, xpc_object_t a23)
{
  xpc_release(object);
  object = 0;
  xpc_release(a23);
  xpc_release(v23);
  sub_10006DCAC(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t sub_1015AE5EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015AE658(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F51780;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1015AE6B8(void *a1, std::mutex *this)
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
  v11 = v4;
  v8 = sub_100009510(&this[1].__m_.__sig, &v11);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  std::mutex::unlock(this);
  *a1 = v10;
  a1[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }
}

uint64_t *sub_1015AE77C(unsigned int **a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  if ((v1[64] & 1) == 0)
  {
    sub_1000D1644();
  }

  v2 = *(*(v1 + 50) + 208);
  v3 = *v1;
  sub_1006FB24C(__dst, (v1 + 2));
  v21 = v1[30];
  v22 = *(v1 + 62);
  sub_10006F264(&v23, v1 + 8);
  v26 = *(v1 + 20);
  sub_1006FB368(v27, (v1 + 42));
  v4 = *(v1 + 50);
  v29 = *(v1 + 216);
  v28 = v4;
  sub_10006F264(&v30, v1 + 14);
  v33 = 1;
  LOBYTE(v8) = 1;
  BYTE4(v8) = 0;
  v9 = 0;
  if (*(v1 + 287) < 0)
  {
    sub_100005F2C(&__p, *(v1 + 33), *(v1 + 34));
  }

  else
  {
    __p = *(v1 + 66);
    v11 = *(v1 + 35);
  }

  v12 = 0;
  v13 = 0;
  (*(*v2 + 376))(v2, v3, v1 + 72, __dst, &v8);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  if (v33 == 1)
  {
    if (v32 == 1 && v31 < 0)
    {
      operator delete(v30);
    }

    if (v27[24] == 1)
    {
      v8 = v27;
      sub_1000087B4(&v8);
    }

    if (v25 == 1 && v24 < 0)
    {
      operator delete(v23);
    }

    if (v20 < 0)
    {
      operator delete(v19);
    }

    if (v18[24] == 1)
    {
      v8 = v18;
      sub_1000087B4(&v8);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }

    if (v15 < 0)
    {
      operator delete(__dst[0]);
    }
  }

  sub_1015AEA34(&v7);
  return sub_1000049E0(&v6);
}

void sub_1015AE990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  if (a54 == 1)
  {
    sub_1006A291C(&a20);
  }

  sub_1015AEA34(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015AEA34(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 399) < 0)
    {
      operator delete(*(v1 + 376));
    }

    if (*(v1 + 368) == 1)
    {
      v2 = (v1 + 344);
      sub_1000087B4(&v2);
    }

    if (*(v1 + 335) < 0)
    {
      operator delete(*(v1 + 312));
    }

    if (*(v1 + 311) < 0)
    {
      operator delete(*(v1 + 288));
    }

    if (*(v1 + 287) < 0)
    {
      operator delete(*(v1 + 264));
    }

    if (*(v1 + 256) == 1)
    {
      sub_1006A291C(v1 + 8);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1015AEAF4(unsigned int **a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *(*(v1 + 18) + 208);
  v3 = *v1;
  LOBYTE(v14) = 0;
  v28 = 0;
  LOBYTE(v8) = 1;
  BYTE4(v8) = 0;
  v9 = 0;
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(&__p, *(v1 + 1), *(v1 + 2));
  }

  else
  {
    v4 = *(v1 + 2);
    v11 = *(v1 + 3);
    __p = v4;
  }

  v12 = 0;
  v13 = 0;
  (*(*v2 + 376))(v2, v3, v1 + 8, &v14, &v8);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  if (v28 == 1)
  {
    if (v27 == 1 && v26 < 0)
    {
      operator delete(v25);
    }

    if (v24[24] == 1)
    {
      v8 = v24;
      sub_1000087B4(&v8);
    }

    if (v23 == 1 && v22 < 0)
    {
      operator delete(v21);
    }

    if (v20 < 0)
    {
      operator delete(v19);
    }

    if (v18[24] == 1)
    {
      v8 = v18;
      sub_1000087B4(&v8);
    }

    if (v17 < 0)
    {
      operator delete(v16);
    }

    if (v15 < 0)
    {
      operator delete(v14);
    }
  }

  sub_1015AECDC(&v7);
  return sub_1000049E0(&v6);
}

void sub_1015AEC94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a51 == 1)
  {
    sub_1006A291C(&a20);
  }

  sub_1015AECDC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015AECDC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 143) < 0)
    {
      operator delete(*(v1 + 120));
    }

    if (*(v1 + 112) == 1)
    {
      v2 = (v1 + 88);
      sub_1000087B4(&v2);
    }

    if (*(v1 + 79) < 0)
    {
      operator delete(*(v1 + 56));
    }

    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1015AED88(unsigned int **a1)
{
  v1 = *a1;
  v11 = a1;
  v12 = v1;
  v2 = *(v1 + 4);
  v3 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *v1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1 + 2;
    if (*(v1 + 31) < 0)
    {
      v4 = *v4;
    }

    *buf = 141558275;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I === discover-on-404 for: [%{private, mask.hash}s] ===", buf, 0x16u);
  }

  v18 = 0u;
  v19 = 0u;
  memset(v17, 0, sizeof(v17));
  v16 = 0u;
  memset(buf, 0, sizeof(buf));
  v5 = (v1 + 2);
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(buf, *(v1 + 1), *(v1 + 2));
  }

  else
  {
    v6 = *v5;
    *&buf[16] = *(v1 + 3);
    *buf = v6;
  }

  BYTE8(v17[0]) = 0;
  LOBYTE(v18) = 0;
  v19 = 0uLL;
  *(&v18 + 1) = 0;
  v16 = 0uLL;
  *&buf[24] = 0;
  LOBYTE(v17[0]) = 0;
  sub_1015AD10C(v2, *v1, buf);
  v7 = *v1;
  v13 = 1;
  memset(__p, 0, 24);
  v8 = sub_1015A9504(v2, v7, buf, &v13, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (HIDWORD(v8))
  {
    v9 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *v1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v1 + 31) < 0)
      {
        v5 = *v5;
      }

      LODWORD(__p[0]) = 141558275;
      *(__p + 4) = 1752392040;
      WORD2(__p[1]) = 2081;
      *(&__p[1] + 6) = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Discovery failure for: [%{private, mask.hash}s]", __p, 0x16u);
    }
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(*(&v18 + 1));
  }

  if (v18 == 1)
  {
    __p[0] = v17 + 8;
    sub_1000087B4(__p);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(*&buf[24]);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  sub_1015AF07C(&v12);
  return sub_1000049E0(&v11);
}

void sub_1015AF034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  sub_10067AA50(&a22);
  sub_1015AF07C(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015AF07C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1015AF0D4(unsigned int **a1)
{
  v1 = *a1;
  v18 = a1;
  v19 = v1;
  v2 = *(v1 + 4);
  (*(**(v2 + 48) + 16))(*(v2 + 48), *v1);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  *v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  *v29 = 0u;
  *v27 = 0u;
  v25 = 0u;
  memset(v26, 0, sizeof(v26));
  *v23 = 0u;
  *v24 = 0u;
  v3 = *v1;
  v4 = (v1 + 2);
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(buf, *(v1 + 1), *(v1 + 2));
  }

  else
  {
    v5 = *v4;
    *&buf[16] = *(v1 + 3);
    *buf = v5;
  }

  BYTE8(v41[0]) = 0;
  LOBYTE(v42) = 0;
  v43 = 0uLL;
  *(&v42 + 1) = 0;
  v40 = 0uLL;
  *&buf[24] = 0;
  LOBYTE(v41[0]) = 0;
  sub_1015A8744(v2, v3, buf, v23);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(*(&v42 + 1));
  }

  if (v42 == 1)
  {
    __p = v41 + 8;
    sub_1000087B4(&__p);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(*&buf[24]);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  if (BYTE8(v37) == 1 && BYTE8(v31) == 1)
  {
    v6 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *v1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v1 + 2;
      if (*(v1 + 31) < 0)
      {
        v7 = *v4;
      }

      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Cache alredy present for: [%{private, mask.hash}s]. Skipping discovery", buf, 0x16u);
    }

    __p = 0;
    v21 = 0;
    v8 = *v1;
    if (*(v1 + 31) < 0)
    {
      sub_100005F2C(buf, *(v1 + 1), *(v1 + 2));
    }

    else
    {
      v9 = *v4;
      *&buf[16] = *(v1 + 3);
      *buf = v9;
    }

    BYTE8(v41[0]) = 0;
    LOBYTE(v42) = 0;
    v43 = 0uLL;
    *(&v42 + 1) = 0;
    v40 = 0uLL;
    *&buf[24] = 0;
    LOBYTE(v41[0]) = 0;
    sub_1015A7460(&__p, v2, v8, buf);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(*(&v42 + 1));
    }

    if (v42 == 1)
    {
      v38 = v41 + 1;
      sub_1000087B4(&v38);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(*&buf[24]);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    if (__p)
    {
      *buf = 0;
      sub_100DCA984(__p, buf);
    }

    else
    {
      v16 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *v1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Bailing out of discovery on message reception", buf, 2u);
      }
    }

    if (v21)
    {
      sub_100004A34(v21);
    }
  }

  else
  {
    v10 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *v1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v1 + 2;
      if (*(v1 + 31) < 0)
      {
        v11 = *v4;
      }

      *buf = 141558275;
      *&buf[4] = 1752392040;
      *&buf[12] = 2081;
      *&buf[14] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Starting discovery upon message received for: [%{private, mask.hash}s]", buf, 0x16u);
    }

    v42 = 0u;
    v43 = 0u;
    memset(v41, 0, sizeof(v41));
    v40 = 0u;
    memset(buf, 0, sizeof(buf));
    if (*(v1 + 31) < 0)
    {
      sub_100005F2C(buf, *(v1 + 1), *(v1 + 2));
    }

    else
    {
      v12 = *v4;
      *&buf[16] = *(v1 + 3);
      *buf = v12;
    }

    BYTE8(v41[0]) = 0;
    LOBYTE(v42) = 0;
    v43 = 0uLL;
    *(&v42 + 1) = 0;
    v40 = 0uLL;
    *&buf[24] = 0;
    LOBYTE(v41[0]) = 0;
    v13 = *v1;
    LODWORD(v38) = 1;
    __p = 0;
    v21 = 0;
    v22 = 0;
    v14 = sub_1015A9504(v2, v13, buf, &v38, &__p);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p);
    }

    if (HIDWORD(v14))
    {
      v15 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *v1);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Fetch failed", &__p, 2u);
      }
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(*(&v42 + 1));
    }

    if (v42 == 1)
    {
      __p = v41 + 8;
      sub_1000087B4(&__p);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(*&buf[24]);
    }

    if (buf[23] < 0)
    {
      operator delete(*buf);
    }
  }

  if (BYTE8(v37) == 1)
  {
    if (v37 == 1 && SHIBYTE(v36) < 0)
    {
      operator delete(v35[1]);
    }

    if (BYTE8(v33) == 1)
    {
      *buf = &v32;
      sub_1000087B4(buf);
    }

    if (v31 == 1 && SHIBYTE(v30) < 0)
    {
      operator delete(v29[1]);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27[1]);
    }

    if (LOBYTE(v27[0]) == 1)
    {
      *buf = v26 + 8;
      sub_1000087B4(buf);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[1]);
    }

    if (SHIBYTE(v24[0]) < 0)
    {
      operator delete(v23[0]);
    }
  }

  sub_1015AF07C(&v19);
  return sub_1000049E0(&v18);
}

void sub_1015AF6E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a49 == 1)
  {
    sub_1006A291C(&a18);
  }

  sub_1015AF07C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015AF77C(unsigned int **a1)
{
  v1 = *a1;
  v9 = a1;
  v10 = v1;
  v2 = *(v1 + 15);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  v34 = 0u;
  v35 = 0u;
  sub_1015A8744(v2, *v1, (v1 + 2), &v34);
  if (BYTE8(v48) != 1)
  {
    v6 = *v1;
    *buf = 1;
    __dst = 0uLL;
    *&v20 = 0;
    sub_1015A9504(v2, v6, (v1 + 2), buf, &__dst);
    if (SBYTE7(v20) < 0)
    {
      operator delete(__dst);
    }

    v7 = *v1;
    LODWORD(__dst) = 2;
    sub_1015AD8E4(v2, v7, (v1 + 2), &__dst);
  }

  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  memset(v22, 0, sizeof(v22));
  v20 = 0u;
  v21 = 0u;
  __dst = 0u;
  sub_1006FB24C(&__dst, &v34);
  LODWORD(v25) = v40;
  WORD2(v25) = WORD2(v40);
  sub_10006F264(&v25 + 8, (&v40 + 8));
  *(&v27 + 1) = *(&v42 + 1);
  sub_1006FB368(&v28, &v43);
  v30 = v45;
  LOBYTE(v31) = v46;
  sub_10006F264(&v31 + 8, (&v46 + 8));
  v18 = 0u;
  v16 = 0u;
  *__p = 0u;
  v14 = 0u;
  v15 = 0u;
  *v12 = 0u;
  *v13 = 0u;
  sub_1006FB24C(v12, (v1 + 2));
  LOBYTE(v15) = BYTE5(v25);
  sub_100220FC4(&v15 + 8, &v28);
  memset(&v11, 0, sizeof(v11));
  sub_10000501C(&v11, "(nil)");
  if (LOBYTE(__p[0]) == 1 && v16 != *(&v15 + 1))
  {
    std::string::operator=(&v11, *(&v15 + 1));
  }

  v3 = *(*(**(v2 + 48) + 16))(*(v2 + 48), *v1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v12;
    if (SHIBYTE(v13[0]) < 0)
    {
      v4 = v12[0];
    }

    v5 = &v11;
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v5 = v11.__r_.__value_.__r.__words[0];
    }

    *buf = 141558787;
    *&buf[4] = 1752392040;
    *&buf[12] = 2081;
    *&buf[14] = v4;
    v51 = 2160;
    v52 = 1752392040;
    LOWORD(v53[0]) = 2081;
    *(v53 + 2) = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Sending discovery complete from cache: [%{private, mask.hash}s] => [%{private, mask.hash}s]", buf, 0x2Au);
  }

  *buf = *v1;
  sub_1006FB24C(&buf[8], v12);
  sub_1015A8918(v2 + 72, buf);
  if (v57 < 0)
  {
    operator delete(v56);
  }

  if (v55[24] == 1)
  {
    v49 = v55;
    sub_1000087B4(&v49);
  }

  if (v54 < 0)
  {
    operator delete(v53[0]);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(*&buf[8]);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[1]);
  }

  if (LOBYTE(__p[0]) == 1)
  {
    *buf = &v15 + 8;
    sub_1000087B4(buf);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[1]);
  }

  if (SHIBYTE(v13[0]) < 0)
  {
    operator delete(v12[0]);
  }

  if (v33 == 1 && SHIBYTE(v32) < 0)
  {
    operator delete(*(&v31 + 1));
  }

  if (BYTE8(v29) == 1)
  {
    *buf = &v28;
    sub_1000087B4(buf);
  }

  if (v27 == 1 && SHIBYTE(v26) < 0)
  {
    operator delete(*(&v25 + 1));
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(*(&v23 + 1));
  }

  if (v23 == 1)
  {
    *buf = &v22[8];
    sub_1000087B4(buf);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(*(&v20 + 1));
  }

  if (SBYTE7(v20) < 0)
  {
    operator delete(__dst);
  }

  if (BYTE8(v48) == 1)
  {
    if (v48 == 1 && SHIBYTE(v47) < 0)
    {
      operator delete(*(&v46 + 1));
    }

    if (BYTE8(v44) == 1)
    {
      *&__dst = &v43;
      sub_1000087B4(&__dst);
    }

    if (v42 == 1 && SHIBYTE(v41) < 0)
    {
      operator delete(*(&v40 + 1));
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(*(&v38 + 1));
    }

    if (v38 == 1)
    {
      *&__dst = &v37[8];
      sub_1000087B4(&__dst);
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(*(&v35 + 1));
    }

    if (SBYTE7(v35) < 0)
    {
      operator delete(v34);
    }
  }

  sub_1015AFD8C(&v10);
  return sub_1000049E0(&v9);
}

void sub_1015AFC90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_10067AA50(&a18);
  sub_1006A291C(&a32);
  if (LOBYTE(STACK[0x298]) == 1)
  {
    sub_1006A291C(&a64);
  }

  sub_1015AFD8C(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015AFD8C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 119) < 0)
    {
      operator delete(*(v1 + 96));
    }

    if (*(v1 + 88) == 1)
    {
      v2 = (v1 + 64);
      sub_1000087B4(&v2);
    }

    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1015AFE28(unsigned int **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *(v1 + 4);
  v3 = (*(**(v2 + 48) + 16))(*(v2 + 48), *v1);
  memset(&__p, 0, sizeof(__p));
  __s[0] = 0;
  __s[1] = 0;
  v4 = v1 + 2;
  v18 = 0;
  sub_100C17E6C(__s, (v1 + 2));
  if (!sub_100C17440(__s))
  {
    sub_100C17B6C(__s);
  }

  v5 = *v1;
  v6 = *(v2 + 64);
  v15 = *(v2 + 56);
  v16 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = sub_100C17774(__s, v5, &v15);
  if (v16)
  {
    sub_100004A34(v16);
  }

  if (!v7)
  {
    if (sub_100C17440(__s))
    {
      sub_100C1704C(&buf, __s);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = buf;
    }

    else
    {
      std::string::operator=(&__p, (v1 + 2));
    }

    v14 = 0;
    sub_100A9A72C((v2 + 56), v3, &__p, &v14, &v12);
    sub_100C17E6C(&v13, &v12);
    sub_100C171EC();
  }

  v8 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v1 + 31) < 0)
    {
      v4 = *v4;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 141558275;
    *(buf.__r_.__value_.__r.__words + 4) = 1752392040;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2081;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Not running discovery for potential short code: %{private, mask.hash}s", &buf, 0x16u);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__s[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_1015AF07C(&v11);
  return sub_1000049E0(&v10);
}

void sub_1015B04AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, std::__shared_weak_count *a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, char a41)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  sub_1015AF07C(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void sub_1015B05A0(std::__shared_weak_count **a1@<X8>)
{
  if (qword_101FCADD8 != -1)
  {
    dispatch_once(&qword_101FCADD8, &stru_101F518A0);
  }

  if (byte_101FCADD0)
  {
    operator new();
  }

  *a1 = 0;
  a1[1] = 0;
}

id sub_1015B07EC(uint64_t a1, uint64_t a2)
{
  v3 = **(a1 + 32);
  if (a2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v13 = 0;
  v5 = [v3 canEvaluatePolicy:v4 error:&v13];
  v6 = v13;
  if (v6)
  {
    v7 = *(a1 + 24);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = asString();
      v9 = [v6 description];
      v10 = v9;
      v11 = [v9 UTF8String];
      *buf = 136315394;
      v15 = v8;
      v16 = 2080;
      v17 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#N Cannot evaluate policy %s: error %s", buf, 0x16u);
    }
  }

  return v5;
}

void sub_1015B0934(uint64_t a1, uint64_t *a2)
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = v4;
  v6 = a2[5];
  if (v6)
  {
    [v4 setObject:v6 forKey:&off_101F912D8];
  }

  v7 = a2[6];
  if (v7)
  {
    [v5 setObject:v7 forKey:&off_101F912F0];
  }

  if (*(a2 + 56) == 1)
  {
    [v5 setObject:&off_101F91308 forKey:&off_101F91320];
  }

  v8 = a2[8];
  if (v8)
  {
    [v5 setObject:v8 forKey:&off_101F91338];
  }

  v9 = a2[9];
  if (v9)
  {
    [v5 setObject:v9 forKey:&off_101F91350];
  }

  v10 = *(a2 + 8);
  v11 = *a2;
  if (*a2 && *(v11 + 8) && *(v11 + 40))
  {
    operator new();
  }

  v12 = **(a1 + 32);
  if (*(a2 + 8))
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3321888768;
  v14[2] = sub_1015B0B9C;
  v14[3] = &unk_101F51808;
  v16 = v10;
  v14[4] = a1;
  v14[5] = 0;
  v15 = 0;
  [v12 evaluatePolicy:v13 options:v5 reply:v14];
  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_1015B0B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  JUMPOUT(0x1015B0B70);
}

void sub_1015B0B9C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(a1 + 32) + 24);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = asString();
      v11 = [v6 description];
      v12 = 136315394;
      v13 = v10;
      v14 = 2080;
      v15 = [v11 UTF8String];
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Policy %s evaluation failed: %s", &v12, 0x16u);
    }

    v8 = [v6 code];
    if (v8 <= 0xFFFFFFFFFFFFFFF5)
    {
      v9 = 1;
    }

    else
    {
      v9 = 1 - v8;
    }
  }

  else
  {
    v9 = 0;
  }

  **(a1 + 40) = v9;
}

uint64_t sub_1015B0D08(uint64_t result, uint64_t a2)
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

void sub_1015B0D24(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1015B0D34(void *a1)
{
  *a1 = off_101F517E8;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {

    operator delete();
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 3));
  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  LocalAuthenticationInterface::~LocalAuthenticationInterface(a1);
}

void sub_1015B0DC4(void *a1)
{
  *a1 = off_101F517E8;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {

    operator delete();
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 3));
  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  LocalAuthenticationInterface::~LocalAuthenticationInterface(a1);

  operator delete();
}

void sub_1015B0E68(id a1)
{
  v1 = NSClassFromString(@"LAContext");
  byte_101FCADD0 = v1 != 0;
}

void sub_1015B0ECC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F518D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1015B0F48(void *a1)
{
  *a1 = off_101F517E8;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {

    operator delete();
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 3));
  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  LocalAuthenticationInterface::~LocalAuthenticationInterface(a1);
}

void sub_1015B0FD8(void *a1)
{
  *a1 = off_101F517E8;
  v2 = a1[4];
  a1[4] = 0;
  if (v2)
  {

    operator delete();
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 3));
  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  LocalAuthenticationInterface::~LocalAuthenticationInterface(a1);

  operator delete();
}

void sub_1015B109C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F51968;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1015B10FC(void *a1, void *a2)
{
  v4 = a1 + 1;
  ctu::OsLogContext::OsLogContext(&v7, kCtLoggingSystemName, "sbs");
  sub_1015B1224(v4, "SBServices", QOS_CLASS_UTILITY, &v7);
  ctu::OsLogContext::~OsLogContext(&v7);
  *a1 = off_101F519C8;
  v5 = a2[1];
  a1[6] = *a2;
  a1[7] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  a1[8] = 0;
  a1[9] = 0;
  sub_1015B12E8(a1);
  return a1;
}

void sub_1015B11D0(_Unwind_Exception *a1)
{
  v4 = v1[9];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = v1[7];
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((v1 + 5));
  sub_1000C0544(v2);
  SBServicesInterface::~SBServicesInterface(v1);
  _Unwind_Resume(a1);
}

void *sub_1015B1224(void *a1, const char *a2, dispatch_qos_class_t qos_class, const OsLogContext *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v8 = dispatch_queue_create(a2, v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[3] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger(v11, a4);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v11);
  ctu::OsLogLogger::~OsLogLogger(v11);
  return a1;
}

void sub_1015B12C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

void sub_1015B12E8(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    v2 = *(a1 + 48);
    v3 = *(a1 + 56);
    v6 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v2)
    {
      sub_100FC1608();
    }

    v4 = *(a1 + 72);
    *(a1 + 64) = 0u;
    if (v4)
    {
      sub_100004A34(v4);
    }

    if (v6)
    {
      sub_100004A34(v6);
    }

    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(DistributedCenter, *(a1 + 64), sub_1015B4150, @"com.apple.LaunchServices.applicationRegistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    CFNotificationCenterAddObserver(DistributedCenter, *(a1 + 64), sub_1015B4150, @"com.apple.LaunchServices.applicationUnregistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

void sub_1015B13C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015B13E0(uint64_t a1, NSObject **a2, uint64_t *a3)
{
  v5 = objc_autoreleasePoolPush();
  if (*(a3 + 23) >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  v7 = [NSString stringWithUTF8String:v6];
  v8 = [NSURL URLWithString:v7];

  v9 = *a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1015B14EC;
  block[3] = &unk_101E2E110;
  v12 = v8;
  v10 = v8;
  dispatch_async(v9, block);

  objc_autoreleasePoolPop(v5);
}

void sub_1015B14EC(uint64_t a1)
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  [v2 openSensitiveURL:*(a1 + 32) withOptions:0];
}

void sub_1015B155C(uint64_t a1, uint64_t *a2, uint64_t a3, NSObject **a4, uint64_t a5)
{
  v7 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [NSString stringWithUTF8String:v8];
  [NSURL URLWithString:v9];
  objc_claimAutoreleasedReturnValue();

  v10 = &__kCFBooleanTrue;
  if (!*a3)
  {
    v10 = &__kCFBooleanFalse;
  }

  v15[0] = v10;
  v14[0] = FBSOpenApplicationOptionKeyActivateSuspended;
  v14[1] = FBSOpenApplicationOptionKeyLaunchIntent;
  v11 = (*(a3 + 4) - 1);
  if (v11 < 4)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = [NSNumber numberWithInteger:v12];
  v15[1] = v13;
  [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  objc_claimAutoreleasedReturnValue();

  operator new();
}

uint64_t sub_1015B17E4(void *a1)
{
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [v2 openSensitiveURL:a1[4] withOptions:a1[5]];

  v4 = a1[6];

  return sub_10000FFD0(v4, v3);
}

uint64_t sub_1015B1858(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1015B1874(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

const void **sub_1015B1884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 40))(&v4);
  v5 = 0uLL;
  v6 = 0;
  ctu::cf::assign();
  *a2 = v5;
  *(a2 + 16) = v6;
  return sub_100005978(&v4);
}

void sub_1015B1900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a9);
  _Unwind_Resume(a1);
}

void sub_1015B1924(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  v8 = [NSString stringWithUTF8String:v7];
  v9 = [LSBundleRecord bundleRecordWithBundleIdentifier:v8 allowPlaceholder:1 error:0];
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v11 = ServiceMap;
  if (v12 < 0)
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
  __p[0] = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, __p);
  if (!v16)
  {
    std::mutex::unlock(v11);
    goto LABEL_12;
  }

  v18 = v16[3];
  v17 = v16[4];
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v11);
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v17);
    if (!v18)
    {
      v19 = 0;
LABEL_22:
      sub_100004A34(v17);
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  std::mutex::unlock(v11);
  if (!v18)
  {
LABEL_12:
    v19 = 0;
    goto LABEL_23;
  }

LABEL_14:
  __p[0] = 0;
  __p[1] = 0;
  v25 = 0;
  (*(*v18 + 64))(__p, v18);
  if (v25 >= 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  v21 = [NSString stringWithUTF8String:v20];
  v26 = v21;
  v22 = [NSArray arrayWithObjects:&v26 count:1];
  v19 = [v9 localizedNameWithPreferredLocalizations:v22];

  if (!v19)
  {
    v23 = +[NSLocale preferredLanguages];
    v19 = [v9 localizedNameWithPreferredLocalizations:v23];
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  if (v17)
  {
    goto LABEL_22;
  }

LABEL_23:
  *a3 = v19;

  objc_autoreleasePoolPop(v6);
}

void sub_1015B1B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1015B1C08(uint64_t a1, uint64_t *a2, const char *a3)
{
  context = objc_autoreleasePoolPush();
  v5 = [NSString alloc];
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  v26 = [v5 initWithBytesNoCopy:v7 length:v8 encoding:4 freeWhenDone:0];
  v9 = [[NSString alloc] initWithBytesNoCopy:a3 length:strlen(a3) encoding:4 freeWhenDone:0];
  v10 = [LSBundleRecord bundleRecordWithBundleIdentifier:v26 allowPlaceholder:1 error:0];
  v11 = v9;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v10 extensionPointRecord];
    v13 = [v12 name];

    v14 = [v11 isEqualToString:v13];
    if (v14)
    {
      v15 = 1;
      goto LABEL_25;
    }
  }

  else
  {
  }

  v16 = v10;
  v17 = v11;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v18 = [v16 applicationExtensionRecords];
    v19 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v19)
    {
      v20 = *v28;
      while (2)
      {
        v21 = 0;
        do
        {
          if (*v28 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = [*(*(&v27 + 1) + 8 * v21) extensionPointRecord];
          v23 = [v22 name];

          LOBYTE(v22) = [v23 isEqualToString:v17];
          if (v22)
          {
            v15 = 1;
            goto LABEL_23;
          }

          v21 = v21 + 1;
        }

        while (v19 != v21);
        v19 = [v18 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
LABEL_23:
  }

  else
  {
    v15 = 0;
  }

LABEL_25:
  objc_autoreleasePoolPop(context);
  return v15;
}

void sub_1015B1F64(uint64_t *a1@<X1>, void *a2@<X8>)
{
  v4 = [NSUUID alloc];
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = [NSString stringWithUTF8String:v5];
  v7 = [v4 initWithUUIDString:v6];

  v10[0] = 0;
  v10[1] = 0;
  [v7 getUUIDBytes:v10];
  v8 = NEHelperCacheCopySigningIdentifierMapping();
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  if (xpc_get_type(v8) != &_xpc_type_null && xpc_get_type(v8) == &_xpc_type_string && (string_ptr = xpc_string_get_string_ptr(v8)) != 0)
  {
    sub_10000501C(a2, string_ptr);
  }

  else
  {
    sub_10000501C(a2, "unknown");
  }

  xpc_release(v8);
}

void sub_1015B209C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **sub_1015B20F0(void **a1)
{
  v3 = a1;
  sub_100B27AE4(&v3);
  return a1;
}

id sub_1015B2128(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = [NSString stringWithUTF8String:v4];
  v6 = [LSBundleRecord bundleRecordWithBundleIdentifier:v5 allowPlaceholder:0 error:0];
  v7 = [v6 UIBackgroundModes];
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    v16 = 136315394;
    v17 = v9;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I UIBackgroundModes: %s: %@", &v16, 0x16u);
  }

  if (!v7 || (v10 = qword_101FCADE8, qword_101FCADE0 == qword_101FCADE8))
  {
    v13 = 0;
  }

  else
  {
    v11 = qword_101FCADE0 + 8;
    do
    {
      v12 = [v7 containsObject:*(v11 - 8)];
      v13 = v12;
      if (v11 == v10)
      {
        v14 = 1;
      }

      else
      {
        v14 = v12;
      }

      v11 += 8;
    }

    while (v14 != 1);
  }

  return v13;
}

void sub_1015B22CC(uint64_t **a2@<X8>)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x4812000000;
  v9 = sub_1015B24A8;
  v10 = sub_1015B24E4;
  v11 = &unk_101CF8E15;
  v13[0] = 0;
  v13[1] = 0;
  v12 = v13;
  v3 = NEHelperCacheCopyAppUUIDMapping();
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  if (xpc_get_type(v4) == &_xpc_type_array)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1015B24F0;
    v5[3] = &unk_101F51AC8;
    v5[4] = &v6;
    xpc_array_apply(v4, v5);
  }

  sub_100074920(a2, v7 + 48);
  xpc_release(v4);
  _Block_object_dispose(&v6, 8);
  sub_100009970(&v12, v13[0]);
}

void sub_1015B246C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21)
{
  _Block_object_dispose(&a14, 8);
  sub_100009970(v21 + 48, a21);
  _Unwind_Resume(a1);
}

void *sub_1015B24A8(void *result, void *a2)
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

uint64_t sub_1015B24F0(uint64_t a1, int a2, xpc_object_t object)
{
  if (object && xpc_get_type(object) == &_xpc_type_uuid)
  {
    v11 = *xpc_uuid_get_bytes(object);
    v8 = CFUUIDCreateFromUUIDBytes(kCFAllocatorDefault, v11);
    v7 = CFUUIDCreateString(kCFAllocatorDefault, v8);
    v9 = 0uLL;
    v10 = 0;
    ctu::cf::assign();
    v6 = 0;
    *__p = 0uLL;
    sub_100005978(&v7);
    sub_1000475BC(&v8);
  }

  return 1;
}

void sub_1015B25E4(_Unwind_Exception *a1, void *a2, uint64_t a3, int a4, __int16 a5, char a6, char a7, void *a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, const void *);
  if (a13 < 0)
  {
    operator delete(a8);
  }

  sub_100005978(va);
  sub_1000475BC(va1);
  _Unwind_Resume(a1);
}

void sub_1015B2630(void *a1@<X8>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = +[FBSApplicationDataStore applicationsWithAvailableStores];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v14 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      v5 = 0;
      do
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        __p[0] = 0;
        __p[1] = 0;
        v7 = 0;
        v12 = 0uLL;
        v13 = 0;
        ctu::cf::assign();
        *__p = v12;
        v7 = v13;
        sub_100005BA0(a1, __p, __p);
        if (SHIBYTE(v7) < 0)
        {
          operator delete(__p[0]);
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v2 countByEnumeratingWithState:&v8 objects:v14 count:16];
    }

    while (v3);
  }
}

void sub_1015B27E0(uint64_t a1@<X0>, _OWORD *a2@<X1>, void *a3@<X8>)
{
  v5 = a2[1];
  *buf = *a2;
  v17 = v5;
  v15 = 0;
  v6 = [LSBundleRecord bundleRecordForAuditToken:buf error:&v15];
  v7 = v15;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9 || ([v6 bundleIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v11 = v10 == 0, v10, v11))
  {
    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v8;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to get name %@", buf, 0xCu);
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v12 = [v6 bundleIdentifier];
    v13 = v12;
    sub_10000501C(a3, [v12 UTF8String]);
  }
}

void sub_1015B2954(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  __src = 0;
  v85 = 0;
  v86 = 0;
  v5 = [LSApplicationRecord alloc];
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = [NSString stringWithUTF8String:v6];
  v8 = [v5 initWithBundleIdentifier:v7 allowPlaceholder:0 error:0];

  v9 = *(a1 + 40);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    v69 = v8;
    if (v10)
    {
      if (*(a2 + 23) >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      v12 = [v8 iTunesMetadata];
      v13 = [v8 infoDictionary];
      *buf = 136315906;
      v91 = v11;
      v92 = 2112;
      v93 = v8;
      v94 = 2112;
      v95 = v12;
      v96 = 2112;
      v97 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I bundleId %s: appRecord: %@, metadata: %@, infodict: %@", buf, 0x2Au);
    }

    v64 = [v8 infoDictionary];
    [v64 objectForKey:@"UIBackgroundModes" ofClass:objc_opt_class()];
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    obj = v81 = 0u;
    v14 = [obj countByEnumeratingWithState:&v80 objects:v89 count:16];
    if (v14)
    {
      v15 = *v81;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v81 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(a1 + 40);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(*(&v80 + 1) + 8 * i);
            if (*(a2 + 23) >= 0)
            {
              v19 = a2;
            }

            else
            {
              v19 = *a2;
            }

            *buf = 136315394;
            v91 = v19;
            v92 = 2112;
            v93 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I UIBackgroundModes: bundleId %s: appRecord: key=%@", buf, 0x16u);
          }
        }

        v14 = [obj countByEnumeratingWithState:&v80 objects:v89 count:16];
      }

      while (v14);
    }

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v20 = [v8 appTags];
    v21 = [v20 countByEnumeratingWithState:&v76 objects:v88 count:16];
    if (v21)
    {
      v22 = *v77;
      do
      {
        for (j = 0; j != v21; j = j + 1)
        {
          if (*v77 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(a1 + 40);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = *(*(&v76 + 1) + 8 * j);
            if (*(a2 + 23) >= 0)
            {
              v26 = a2;
            }

            else
            {
              v26 = *a2;
            }

            *buf = 136315394;
            v91 = v26;
            v92 = 2112;
            v93 = v25;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I appTags: bundleId %s: appRecord: value=%@", buf, 0x16u);
          }
        }

        v21 = [v20 countByEnumeratingWithState:&v76 objects:v88 count:16];
      }

      while (v21);
    }

    v27 = [v69 iTunesMetadata];
    v66 = [v27 sourceApp];

    if (v66)
    {
      v28 = *(a1 + 40);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v29 = a2;
        }

        else
        {
          v29 = *a2;
        }

        *buf = 136315394;
        v91 = v29;
        v92 = 2112;
        v93 = v66;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I sourceApp: bundleId %s: appRecord: value=%@", buf, 0x16u);
      }
    }

    v30 = [v69 iTunesMetadata];
    v67 = [v30 itemName];

    if (v67)
    {
      v31 = *(a1 + 40);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v32 = a2;
        }

        else
        {
          v32 = *a2;
        }

        *buf = 136315394;
        v91 = v32;
        v92 = 2112;
        v93 = v67;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I itemName: bundleId %s: appRecord: value=%@", buf, 0x16u);
      }
    }

    v33 = [v69 iTunesMetadata];
    v68 = [v33 storeCohort];

    if (v68)
    {
      v34 = *(a1 + 40);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) >= 0)
        {
          v35 = a2;
        }

        else
        {
          v35 = *a2;
        }

        *buf = 136315394;
        v91 = v35;
        v92 = 2112;
        v93 = v68;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I storeCohort: bundleId %s: appRecord: value=%@", buf, 0x16u);
      }
    }

    v36 = [v69 iTunesMetadata];
    v63 = [v36 genre];

    v37 = [v69 iTunesMetadata];
    v61 = [v37 genreIdentifier];

    v38 = *(a1 + 40);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v39 = a2;
      }

      else
      {
        v39 = *a2;
      }

      v40 = [v69 iTunesMetadata];
      v41 = [v40 subgenres];
      *buf = 136315906;
      v91 = v39;
      v92 = 2112;
      v93 = v63;
      v94 = 2048;
      v95 = v61;
      v96 = 2112;
      v97 = v41;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I genre: bundleId %s: appRecord: genre=%@, genreId=%llu, subgenres: %@", buf, 0x2Au);
    }

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v42 = [v69 iTunesMetadata];
    v43 = [v42 subgenres];

    v44 = [v43 countByEnumeratingWithState:&v72 objects:v87 count:16];
    if (v44)
    {
      v45 = *v73;
      v70 = v43;
      do
      {
        for (k = 0; k != v44; k = k + 1)
        {
          if (*v73 != v45)
          {
            objc_enumerationMutation(v43);
          }

          v47 = [*(*(&v72 + 1) + 8 * k) objectForKeyedSubscript:@"genreId"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v48 = [v47 intValue];
            if (v48)
            {
              v49 = v85;
              if (v85 >= v86)
              {
                v51 = __src;
                v52 = v85 - __src;
                v53 = (v85 - __src) >> 3;
                v54 = v53 + 1;
                if ((v53 + 1) >> 61)
                {
                  sub_1000CE3D4();
                }

                v55 = v86 - __src;
                if ((v86 - __src) >> 2 > v54)
                {
                  v54 = v55 >> 2;
                }

                v56 = v55 >= 0x7FFFFFFFFFFFFFF8;
                v57 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v56)
                {
                  v57 = v54;
                }

                if (v57)
                {
                  sub_10006A8B4(&__src, v57);
                }

                *(8 * v53) = v48;
                v50 = (8 * v53 + 8);
                memcpy(0, v51, v52);
                v58 = __src;
                __src = 0;
                v85 = v50;
                v86 = 0;
                if (v58)
                {
                  operator delete(v58);
                }

                v43 = v70;
              }

              else
              {
                *v85 = v48;
                v50 = v49 + 1;
              }

              v85 = v50;
            }
          }
        }

        v44 = [v43 countByEnumeratingWithState:&v72 objects:v87 count:16];
      }

      while (v44);
    }

    v8 = v69;
    v59 = v62;
  }

  else
  {
    if (v10)
    {
      if (*(a2 + 23) >= 0)
      {
        v60 = a2;
      }

      else
      {
        v60 = *a2;
      }

      *buf = 136315138;
      v91 = v60;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I bundleId %s: appRecord: NULL", buf, 0xCu);
    }

    v59 = 0;
  }

  *a3 = v59;
  a3[2] = 0;
  a3[3] = 0;
  a3[1] = 0;
  sub_1001B9EC4(a3 + 1, __src, v85, (v85 - __src) >> 3);

  if (__src)
  {
    v85 = __src;
    operator delete(__src);
  }
}

void sub_1015B3210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1015B3388(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = objc_autoreleasePoolPush();
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = [NSString stringWithUTF8String:v5];
  v7 = [LSBundleRecord bundleRecordWithBundleIdentifier:v6 allowPlaceholder:1 error:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 containingBundleRecord];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 bundleIdentifier];
      v11 = v10;
      if (v10 && (v12 = [v10 UTF8String]) != 0)
      {
        sub_10000501C(&v13, v12);
        *a2 = v13;
        *(a2 + 16) = v14;
        *(a2 + 24) = 1;
      }

      else
      {
        *a2 = 0;
        *(a2 + 24) = 0;
      }
    }

    else
    {
      *a2 = 0;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  objc_autoreleasePoolPop(v4);
}

uint64_t sub_1015B3500(uint64_t a1, uint64_t *a2)
{
  v5 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  v7 = [NSString stringWithUTF8String:v6];
  v16 = 0;
  v8 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v7 allowPlaceholder:1 error:&v16];
  v9 = v16;
  v10 = v9;
  if (v8)
  {
    v11 = [v8 applicationState];
    v12 = [v11 isValid];
    if (v12 && ([v8 applicationState], v2 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v2, "isInstalled") & 1) != 0))
    {
      v13 = 1;
    }

    else
    {
      v13 = [v8 isPlaceholder];
      if (!v12)
      {
LABEL_10:

        goto LABEL_15;
      }
    }

    goto LABEL_10;
  }

  if ([v9 code] != -10814)
  {
    v14 = *(a1 + 40);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = v7;
      v19 = 2112;
      v20 = v10;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "isInstalledApp (%@) returned error %@", buf, 0x16u);
    }
  }

  v13 = 0;
LABEL_15:

  objc_autoreleasePoolPop(v5);
  return v13;
}

void sub_1015B36FC(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = objc_autoreleasePoolPush();
  v7 = +[LSDatabaseContext sharedDatabaseContext];
  v23 = 0;
  v8 = [v7 startAccessingWithOptions:1 error:&v23];
  v9 = v23;
  if (v8)
  {
    v10 = +[LSApplicationWorkspace defaultWorkspace];
    v11 = v10;
    v12 = 10;
    if (a2 != 1)
    {
      v12 = 0;
    }

    if (a2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 3;
    }

    v22 = 0;
    v14 = [v10 defaultApplicationForCategory:v13 error:&v22];
    v15 = v22;
    v16 = v15;
    if (v14)
    {
      v17 = [v14 bundleIdentifier];
      v18 = v17;
      v19 = [v17 UTF8String];

      [v7 stopAccessing];
      if (v19)
      {
        sub_10000501C(a3, v19);
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      if (v15)
      {
        v21 = *(a1 + 40);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v25 = v16;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "defaultApplicationForCategory: returned error %@", buf, 0xCu);
        }
      }

      [v7 stopAccessing];
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    goto LABEL_18;
  }

  v20 = *(a1 + 40);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v25 = v9;
    _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Error accessing Launch Services: %@", buf, 0xCu);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
LABEL_19:

  objc_autoreleasePoolPop(v6);
}

void sub_1015B3970(void *a1, char a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  sub_10001C168(&v7, a3);
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

void sub_1015B3AB4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1015B3ACC(uint64_t a1, uint64_t *a2)
{
  v5 = objc_autoreleasePoolPush();
  v6 = +[LSDatabaseContext sharedDatabaseContext];
  v20 = 0;
  v7 = [v6 startAccessingWithOptions:1 error:&v20];
  v8 = v20;
  if (v7)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    v10 = [NSString stringWithUTF8String:v9];
    v19 = 0;
    v11 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v10 allowPlaceholder:1 error:&v19];
    v12 = v19;
    if (!v11)
    {
      if ([v8 code] != -10814)
      {
        v17 = *(a1 + 40);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v22 = v10;
          v23 = 2112;
          v24 = v12;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "LSApplicationRecord for (%@) returned error %@", buf, 0x16u);
        }
      }

      [v6 stopAccessing];
      v15 = 0;
      goto LABEL_19;
    }

    v13 = [v11 applicationState];
    v14 = [v13 isValid];
    if (v14 && ([v11 applicationState], v2 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v2, "isInstalled") & 1) != 0))
    {
      v15 = 1;
    }

    else
    {
      v15 = [v11 isPlaceholder];
      if (!v14)
      {
LABEL_14:

        [v6 stopAccessing];
LABEL_19:

        goto LABEL_20;
      }
    }

    goto LABEL_14;
  }

  v16 = *(a1 + 40);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v22 = v8;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Error accessing Launch Services: %@", buf, 0xCu);
  }

  v15 = 0;
LABEL_20:

  objc_autoreleasePoolPop(v5);
  return v15;
}

void sub_1015B3D94(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  context = objc_autoreleasePoolPush();
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  *a2 = a2 + 8;
  v4 = [NSString alloc];
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = a1[1];
  }

  v8 = [v4 initWithBytesNoCopy:v6 length:v7 encoding:4 freeWhenDone:{0, context}];
  v9 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v8 allowPlaceholder:0 error:0];
  v10 = v9;
  if (v9)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = [v9 applicationExtensionRecords];
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v12)
    {
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          v16 = [v15 extensionPointRecord];
          v17 = [v16 name];
          v18 = v17 == 0;

          if (!v18)
          {
            v19 = [v15 extensionPointRecord];
            v20 = [v19 name];
            v21 = v20;
            sub_10000501C(__p, [v20 UTF8String]);
            sub_10017695C(a2, __p, __p);
            if (v25 < 0)
            {
              operator delete(__p[0]);
            }
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v12);
    }
  }

  objc_autoreleasePoolPop(contexta);
}

uint64_t sub_1015B402C(uint64_t a1, uint64_t *a2)
{
  v3 = objc_autoreleasePoolPush();
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  v5 = [NSString stringWithUTF8String:v4];
  v6 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v5 allowPlaceholder:1 error:0];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 applicationState];
    if ([v8 isValid])
    {
      v9 = [v7 applicationState];
      if ([v9 isAlwaysAvailable])
      {
        v10 = 1;
      }

      else
      {
        v10 = [v7 isDeletable] ^ 1;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v3);
  return v10;
}

void sub_1015B4150(int a1, unint64_t a2, CFTypeRef cf1, uint64_t a4, const __CFDictionary *a5)
{
  if (cf1 && a2 && a5 && (CFEqual(cf1, @"com.apple.LaunchServices.applicationRegistered") || CFEqual(cf1, @"com.apple.LaunchServices.applicationUnregistered")))
  {
    sub_100FC155C(a2, &v24);
    if (v25)
    {
      v8 = std::__shared_weak_count::lock(v25);
      if (v8)
      {
        v9 = v24;
      }

      else
      {
        v9 = 0;
      }

      if (v25)
      {
        std::__shared_weak_count::__release_weak(v25);
      }

      if (!v9)
      {
        goto LABEL_33;
      }

      ServiceMap = Registry::getServiceMap(v9);
      v11 = ServiceMap;
      if (v12 < 0)
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
      v24 = v12;
      v16 = sub_100009510(&v11[1].__m_.__sig, &v24);
      if (!v16)
      {
        std::mutex::unlock(v11);
        goto LABEL_33;
      }

      v18 = v16[3];
      v17 = v16[4];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v11);
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v17);
        if (!v18)
        {
LABEL_32:
          sub_100004A34(v17);
LABEL_33:
          if (v8)
          {
            sub_100004A34(v8);
          }

          return;
        }
      }

      else
      {
        std::mutex::unlock(v11);
        if (!v18)
        {
          goto LABEL_33;
        }
      }

      v30 = 0;
      Value = CFDictionaryGetValue(a5, @"bundleIDs");
      v20 = Value;
      if (Value)
      {
        v21 = CFGetTypeID(Value);
        if (v21 == CFArrayGetTypeID())
        {
          v30 = v20;
          CFRetain(v20);
          v22 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
          v23 = dispatch_queue_create("SBServicesAppRegCb", v22);
          v24 = v9;
          v25 = v8;
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v26 = v18;
          v27 = v17;
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v28 = v20;
          CFRetain(v20);
          v29 = v23;
          if (v23)
          {
            dispatch_retain(v23);
          }

          operator new();
        }
      }

      v30 = 0;
      sub_100010250(&v30);
      if (!v17)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }
}

void sub_1015B4454(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015B4484(void *a1)
{
  *a1 = off_101F519C8;
  v2 = a1[9];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);

  SBServicesInterface::~SBServicesInterface(a1);
}

void sub_1015B44FC(void *a1)
{
  *a1 = off_101F519C8;
  v2 = a1[9];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);
  SBServicesInterface::~SBServicesInterface(a1);

  operator delete();
}

uint64_t *sub_1015B4588(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      dispatch_release(v2);
    }

    sub_100010250((v1 + 32));
    v3 = *(v1 + 24);
    if (v3)
    {
      sub_100004A34(v3);
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      sub_100004A34(v4);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1015B45FC(uint64_t a1)
{
  v20 = a1;
  Count = CFArrayGetCount(*(a1 + 32));
  v30 = 0;
  v31 = 0;
  v29 = &v30;
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      __p[0] = 0;
      __p[1] = 0;
      v28 = 0;
      CFArrayGetValueAtIndex(*(a1 + 32), i);
      v32[0] = 0;
      v32[1] = 0;
      v33 = 0;
      ctu::cf::assign();
      *__p = *v32;
      v28 = v33;
      v4 = (*(**(a1 + 16) + 128))(*(a1 + 16), __p);
      v32[0] = __p;
      *(sub_100170224(&v29, __p, &unk_101802C98, v32, &v25) + 56) = v4;
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (v31)
    {
      v25 = 0;
      v26 = 0;
      sub_10000501C(__p, "SBServicesAppRegCb");
      v5 = *(a1 + 40);
      v24 = v5;
      if (v5)
      {
        dispatch_retain(v5);
      }

      object = 0;
      ctu::RestModule::RestModule();
      if (v24)
      {
        dispatch_release(v24);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[0]);
      }

      Registry::createRestModuleOneTimeUseConnection(&v21, *a1);
      ctu::RestModule::connect();
      if (v22)
      {
        sub_100004A34(v22);
      }

      v6 = xpc_array_create(0, 0);
      if (v6 || (v6 = xpc_null_create()) != 0)
      {
        if (xpc_get_type(v6) == &_xpc_type_array)
        {
          xpc_retain(v6);
          v7 = v6;
        }

        else
        {
          v7 = xpc_null_create();
        }
      }

      else
      {
        v7 = xpc_null_create();
        v6 = 0;
      }

      xpc_release(v6);
      v8 = v29;
      if (v29 != &v30)
      {
        do
        {
          v9 = xpc_dictionary_create(0, 0, 0);
          v10 = v9;
          if (v9)
          {
            v38 = v9;
          }

          else
          {
            v10 = xpc_null_create();
            v38 = v10;
            if (!v10)
            {
              v11 = xpc_null_create();
              v10 = 0;
              goto LABEL_29;
            }
          }

          if (xpc_get_type(v10) != &_xpc_type_dictionary)
          {
            v11 = xpc_null_create();
LABEL_29:
            v38 = v11;
            goto LABEL_30;
          }

          xpc_retain(v10);
LABEL_30:
          xpc_release(v10);
          if (*(v8 + 55) >= 0)
          {
            v12 = (v8 + 4);
          }

          else
          {
            v12 = v8[4];
          }

          v36 = xpc_string_create(v12);
          if (!v36)
          {
            v36 = xpc_null_create();
          }

          v32[0] = &v38;
          v32[1] = "first";
          sub_10000F688(v32, &v36, &v37);
          xpc_release(v37);
          v37 = 0;
          xpc_release(v36);
          v36 = 0;
          v34 = xpc_BOOL_create(*(v8 + 56));
          if (!v34)
          {
            v34 = xpc_null_create();
          }

          v32[0] = &v38;
          v32[1] = "second";
          sub_10000F688(v32, &v34, &v35);
          xpc_release(v35);
          v35 = 0;
          xpc_release(v34);
          v34 = 0;
          v13 = v38;
          if (v38)
          {
            xpc_retain(v38);
          }

          else
          {
            v13 = xpc_null_create();
          }

          xpc_release(v38);
          xpc_array_append_value(v7, v13);
          xpc_release(v13);
          v14 = v8[1];
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
              v15 = v8[2];
              v16 = *v15 == v8;
              v8 = v15;
            }

            while (!v16);
          }

          v8 = v15;
        }

        while (v15 != &v30);
      }

      if (v7)
      {
        xpc_retain(v7);
        v17 = v7;
      }

      else
      {
        v17 = xpc_null_create();
      }

      xpc_release(v7);
      sub_10000501C(v32, "/cc/events/installed_apps_changed");
      v38 = v17;
      v18 = xpc_null_create();
      ctu::RestModule::sendEvent();
      xpc_release(v38);
      v38 = 0;
      if (SHIBYTE(v33) < 0)
      {
        operator delete(v32[0]);
      }

      xpc_release(v18);
      if (v26)
      {
        sub_100004A34(v26);
      }
    }
  }

  sub_100009970(&v29, v30);
  return sub_1015B4588(&v20);
}

void sub_1015B4A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, dispatch_object_t object, dispatch_object_t a14, uint64_t a15, std::__shared_weak_count *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char *a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  xpc_release(*(v32 - 88));
  *(v32 - 88) = 0;
  if (a31 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v31);
  if (a16)
  {
    sub_100004A34(a16);
  }

  sub_100009970(&a23, a24);
  sub_1015B4588(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015B4BA0(void **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  (*(**v1 + 160))(__p);
  v2 = v1[5];
  if (!v2)
  {
    sub_100022DB4();
  }

  (*(*v2 + 48))(v2, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1015B4C88(&v5);
  return sub_1000049E0(&v4);
}

void sub_1015B4C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_1015B4C88(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1015B4C88(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10001C200(v1 + 16);
    operator delete();
  }

  return a1;
}

void sub_1015B4CD8()
{
  v0 = objc_autoreleasePoolPush();
  qword_101FCADE8 = 0;
  qword_101FCADF0 = 0;
  qword_101FCADE0 = 0;
  operator new();
}

void sub_1015B4E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, char a12)
{
  a11 = 0;
  sub_100B27AE4(&a10);
  for (i = 24; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

void stewie::ConnectionAssistantTargetDataSource::create(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, os_log_t *a5@<X4>, uint64_t *a6@<X8>)
{
  if (!*a1)
  {
    v7 = *a5;
    if (!os_log_type_enabled(*a5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v12 = 0;
    v8 = "targetInstantAtLocationCacheFactory is required";
    v9 = &v12;
LABEL_11:
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
    goto LABEL_12;
  }

  if (!*a2)
  {
    v7 = *a5;
    if (!os_log_type_enabled(*a5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v11 = 0;
    v8 = "serviceAtLocationFactory is required";
    v9 = &v11;
    goto LABEL_11;
  }

  if (*(a3 + 16))
  {
    operator new();
  }

  v7 = *a5;
  if (os_log_type_enabled(*a5, OS_LOG_TYPE_ERROR))
  {
    v10 = 0;
    v8 = "anchorStorage is required";
    v9 = &v10;
    goto LABEL_11;
  }

LABEL_12:
  *a6 = 0;
}

void stewie::ConnectionAssistantTargetDataSource::~ConnectionAssistantTargetDataSource(stewie::ConnectionAssistantTargetDataSource *this)
{
  if (*(this + 304) == 1)
  {
    v2 = *(this + 35);
    if (v2)
    {
      *(this + 36) = v2;
      operator delete(v2);
    }
  }

  v3 = *(this + 17);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 12);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 10);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(this + 8);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(this + 4);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(this + 2);
  if (v9)
  {
    sub_100004A34(v9);
  }

  ctu::OsLogLogger::~OsLogLogger(this);
}

void sub_1015B50BC(void *a1, uint64_t a2, __int128 *a3, int a4)
{
  v42 = 0;
  v39 = *a3;
  v40 = *(a3 + 2);
  v41 = *(a2 + 40);
  LODWORD(v42) = a4;
  v38 = 0;
  v35 = *a3;
  v36 = *(a3 + 2);
  v7 = (a2 + 112);
  v6 = *(a2 + 112);
  v37 = *(a2 + 48);
  LODWORD(v38) = a4;
  if (v6)
  {
    if ((*(*v6 + 16))(v6, &v35))
    {
      v8 = *(a2 + 128);
      if (v8)
      {
        if ((*(*v8 + 16))(v8, &v39))
        {
          v9 = *(a2 + 136);
          *a1 = *(a2 + 128);
          a1[1] = v9;
          if (v9)
          {
            atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
          }

          return;
        }
      }
    }
  }

  v10 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Resetting ServiceAtLocation", buf, 2u);
  }

  sub_1015B54F4(v7);
  v11 = *(a2 + 56);
  v12 = *(a2 + 16);
  v32 = *(a2 + 8);
  v33 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(a2 + 96);
  v30 = *(a2 + 88);
  v31 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v11 + 16))(buf);
  v14 = *buf;
  memset(buf, 0, sizeof(buf));
  v15 = *(a2 + 120);
  *(a2 + 112) = v14;
  if (v15)
  {
    sub_100004A34(v15);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  if (v31)
  {
    sub_100004A34(v31);
  }

  if (v33)
  {
    sub_100004A34(v33);
  }

  if (*v7)
  {
    memset(buf, 0, sizeof(buf));
    (*(**(a2 + 8) + 16))(buf);
    if (*buf)
    {
      v16 = *(a2 + 24);
      v28 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
      }

      v17 = *(a2 + 120);
      v27 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = *(a2 + 80);
      v26 = v18;
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v16 + 16))(v29);
      v19 = *v29;
      memset(v29, 0, sizeof(v29));
      v20 = *(a2 + 136);
      *(a2 + 128) = v19;
      if (v20)
      {
        sub_100004A34(v20);
        if (*&v29[8])
        {
          sub_100004A34(*&v29[8]);
        }
      }

      if (v26)
      {
        sub_100004A34(v26);
      }

      if (v27)
      {
        sub_100004A34(v27);
      }

      if (v28)
      {
        sub_100004A34(v28);
      }

      v21 = *(a2 + 128);
      if (v21)
      {
        v22 = *(a2 + 136);
        *a1 = v21;
        a1[1] = v22;
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        }

        goto LABEL_47;
      }

      v24 = *a2;
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
LABEL_46:
        *a1 = 0;
        a1[1] = 0;
LABEL_47:
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }

        return;
      }

      *v29 = 0;
      v25 = "Failed to create ServiceAtLocation";
    }

    else
    {
      v24 = *a2;
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_46;
      }

      *v29 = 0;
      v25 = "Failed to create targetInstantAtLocationCache";
    }

    _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, v25, v29, 2u);
    goto LABEL_46;
  }

  v23 = *a2;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to create anchorage for location", buf, 2u);
  }

  *a1 = 0;
  a1[1] = 0;
}

void sub_1015B549C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  if (a22)
  {
    sub_100004A34(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015B54F4(uint64_t a1)
{
  v2 = *(a1 + 8);
  *a1 = 0;
  *(a1 + 8) = 0;
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (v3)
  {
    sub_100004A34(v3);
  }

  *(a1 + 32) = 0;
  if (*(a1 + 72) == 1)
  {
    *(a1 + 72) = 0;
  }

  *(a1 + 80) = 0;
  if (*(a1 + 128) == 1)
  {
    *(a1 + 128) = 0;
  }

  *(a1 + 136) = 0;
  if (*(a1 + 192) == 1)
  {
    v4 = *(a1 + 168);
    if (v4)
    {
      *(a1 + 176) = v4;
      operator delete(v4);
    }

    *(a1 + 192) = 0;
  }
}

void stewie::ConnectionAssistantTargetDataSource::updateGPSData(uint64_t a1, __int128 *a2, int a3, unint64_t *a4)
{
  v59 = 0;
  v60 = 0;
  sub_1015B50BC(&v59, a1, a2, a3);
  v6 = v59;
  if (v59)
  {
    v7 = *(a1 + 144);
    v8 = *a4;
    if (v7 <= *a4 && v8 < v7 + 1000000000)
    {
LABEL_51:
      v40 = *(a1 + 192);
      if (v40 <= v8 + 100000000 && v40 + 600000000000 > v8)
      {
        if (*(a1 + 240) != 1)
        {
          goto LABEL_76;
        }

        if (!*(a1 + 200))
        {
          goto LABEL_76;
        }

        if (!*(a1 + 208))
        {
          goto LABEL_76;
        }

        v42 = *(a1 + 224);
        if (!v42)
        {
          goto LABEL_76;
        }

        v43 = *(a1 + 232);
        if (v43 >= v8 || v42 >= v8 || !v43)
        {
          goto LABEL_76;
        }

        v44 = *a1;
        if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I Service window: forcing update", buf, 2u);
          v8 = *a4;
        }
      }

      *(a1 + 192) = v8;
      v61 = *a4 + 7200000000000;
      if (*(a1 + 240) == 1)
      {
        *v67 = *(a1 + 200);
        v67[16] = *(a1 + 216);
        v68 = *(a1 + 224);
      }

      else
      {
        memset(v67, 0, 17);
        v68 = 0uLL;
      }

      (*(*v6 + 40))(buf, v6, a4, &v61, v67);
      v46 = *buf;
      v45 = *&buf[8];
      *(a1 + 200) = *buf;
      *(a1 + 208) = v45;
      v47 = buf[16];
      *(a1 + 216) = buf[16];
      v48 = v63;
      v49 = *v64;
      *(a1 + 224) = v63;
      *(a1 + 232) = v49;
      *(a1 + 240) = 1;
      v50 = *a1;
      v51 = os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT);
      if (v46 && v45)
      {
        if (v51)
        {
          v52 = "out";
          if (v47)
          {
            v52 = "in";
          }

          *buf = 134219010;
          *&buf[4] = v46 / 0x3B9ACA00;
          *&buf[12] = 2048;
          *&buf[14] = v45 / 0x3B9ACA00;
          *&buf[22] = 2080;
          v63 = v52;
          *v64 = 2048;
          *&v64[2] = v49 / 0x3B9ACA00;
          v65 = 2048;
          v66 = v48 / 0x3B9ACA00;
          v53 = "#I Service window: [%llu, %llu] starts %s, aos: %llu, los: %llu";
          v54 = v50;
          v55 = 52;
          goto LABEL_75;
        }
      }

      else if (v51)
      {
        *buf = 0;
        v53 = "#I Service window: invalid";
        v54 = v50;
        v55 = 2;
LABEL_75:
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, v53, buf, v55);
      }

LABEL_76:
      if (*(a1 + 304) == 1)
      {
        if (*(a1 + 256))
        {
          if (*(a1 + 264))
          {
            v56 = *(a1 + 272);
            if (v56)
            {
              if (v56 < *a4)
              {
                v57 = *a1;
                if (!os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT) || (*buf = 0, _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#I Service plot expired, resetting", buf, 2u), (*(a1 + 304) & 1) != 0))
                {
                  v58 = *(a1 + 280);
                  if (v58)
                  {
                    *(a1 + 288) = v58;
                    operator delete(v58);
                  }

                  *(a1 + 304) = 0;
                }
              }
            }
          }
        }
      }

      goto LABEL_86;
    }

    *(a1 + 144) = v8;
    memset(buf, 0, sizeof(buf));
    if (*(a1 + 108) != 1)
    {
      goto LABEL_33;
    }

    if (!*(a1 + 104))
    {
      v15 = *a1;
      if (!os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_33;
      }

      *v67 = 67109120;
      *&v67[4] = 0;
      v16 = "#I Current LLC target is %d, optimal target is null";
      v17 = v15;
      goto LABEL_19;
    }

    v10 = (*(*v6 + 32))(v6, a4, *(a1 + 104), buf);
    LODWORD(v11) = v10;
    v12 = *(a1 + 108);
    if (v12 == BYTE4(v10) && (v10 & 0x100000000) != 0)
    {
      if (*(a1 + 104) == v10)
      {
        goto LABEL_45;
      }
    }

    else if (v12 == BYTE4(v10))
    {
      if ((v10 & 0x100000000) != 0)
      {
        goto LABEL_45;
      }

      goto LABEL_33;
    }

    v18 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      if (!v12)
      {
        goto LABEL_92;
      }

      v19 = *(a1 + 104);
      *v67 = 67109120;
      *&v67[4] = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Current LLC target %d is not in service", v67, 8u);
    }

    v11 = *(a1 + 104);
    if (((v11 | (*(a1 + 108) << 32)) & 0x100000000) == 0)
    {
LABEL_92:
      sub_1000D1644();
    }

    v20 = (*(*v6 + 24))(v67, v6, a4, *(a1 + 104));
    *buf = *v67;
    *&buf[16] = *&v67[16];
    v21 = stewie::TargetInstant::invalidInstance(v20);
    if (*buf == *v21 && *&buf[8] == v21[1])
    {
      v22 = *&buf[16];
      v23 = v21[2];
      v24 = *a1;
      v25 = os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT);
      if (v22 == v23)
      {
        if (v25)
        {
          if (*(a1 + 108) == 1)
          {
            v26 = *(a1 + 104);
            *v67 = 67109120;
            *&v67[4] = v26;
            v16 = "#I Failed to get instant for LLC target %d, resetting optimal target";
            v17 = v24;
LABEL_19:
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, v67, 8u);
            goto LABEL_33;
          }

          goto LABEL_92;
        }

LABEL_33:
        if (*(a1 + 184) == 1)
        {
          v27 = *a1;
          if (!os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT) || (v28 = *a4 / 0x3B9ACA00, *v67 = 134217984, *&v67[4] = v28, _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Optimal target id: null at %llu", v67, 0xCu), (*(a1 + 184) & 1) != 0))
          {
            *(a1 + 184) = 0;
          }
        }

        if (*(a1 + 108) != 1)
        {
          goto LABEL_50;
        }

        v29 = *(a1 + 104);
        if (!v29)
        {
          goto LABEL_50;
        }

        v30 = *a1;
        if (!os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }

        *v67 = 67109120;
        *&v67[4] = v29;
        v31 = "LLC target: %d does not match optimal target: null";
        v32 = v30;
        v33 = 8;
        goto LABEL_41;
      }

      if (!v25)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v24 = *a1;
      if (!os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_45;
      }
    }

    if ((*(a1 + 108) & 1) == 0)
    {
      goto LABEL_92;
    }

    v34 = *(a1 + 104);
    *v67 = 67109376;
    *&v67[4] = v34;
    *&v67[8] = 2048;
    *&v67[10] = *&buf[8] * 180.0 / 3.14159265;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Tracking current LLC target %d, service: %.2f", v67, 0x12u);
LABEL_45:
    v35 = *&buf[16];
    *(a1 + 152) = v11;
    *(a1 + 160) = *buf;
    *(a1 + 176) = v35;
    *(a1 + 184) = 1;
    v36 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      v37 = *a4 / 0x3B9ACA00;
      *v67 = 67109376;
      *&v67[4] = v11;
      *&v67[8] = 2048;
      *&v67[10] = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I Optimal target id: %d at %llu", v67, 0x12u);
    }

    if (*(a1 + 108) != 1)
    {
      goto LABEL_50;
    }

    v38 = *(a1 + 104);
    if (v38 == v11)
    {
      goto LABEL_50;
    }

    v39 = *a1;
    if (!os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_50;
    }

    *v67 = 67109376;
    *&v67[4] = v38;
    *&v67[8] = 1024;
    *&v67[10] = v11;
    v31 = "LLC target: %d does not match optimal target: %d";
    v32 = v39;
    v33 = 14;
LABEL_41:
    _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, v31, v67, v33);
LABEL_50:
    v8 = *a4;
    goto LABEL_51;
  }

  v13 = a1 + 112;
  if (*(a1 + 112))
  {
    v14 = *a1;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I updateGPSData: service not available, resetting cache", buf, 2u);
    }
  }

  sub_1015B54F4(v13);
LABEL_86:
  if (v60)
  {
    sub_100004A34(v60);
  }
}

void sub_1015B5DE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void stewie::ConnectionAssistantTargetDataSource::updateProvisioningData(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *a2;
    v6 = a2[1];
    v11 = 134218240;
    v12 = v5;
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Updating target data source with threshold: %f, anchor threshold: %f", &v11, 0x16u);
  }

  if (a2[2])
  {
    *(a1 + 40) = *a2;
    v7 = *(a2 + 1);
    a2[2] = 0;
    a2[3] = 0;
    v8 = *(a1 + 64);
    *(a1 + 56) = v7;
    if (v8)
    {
      sub_100004A34(v8);
    }

    v9 = *(a1 + 120);
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
    if (v9)
    {
      sub_100004A34(v9);
    }
  }

  else
  {
    v10 = *a1;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11) = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "anchorStorage is required", &v11, 2u);
    }
  }
}

void stewie::ConnectionAssistantTargetDataSource::updateServiceSchedules(uint64_t a1, __int128 *a2)
{
  v4 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Updating service schedules", v12, 2u);
  }

  v5 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v6 = *(a1 + 80);
  *(a1 + 72) = v5;
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = a2[1];
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v8 = *(a1 + 96);
  *(a1 + 88) = v7;
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(a1 + 136);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = *(a1 + 120);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (*(a1 + 304) == 1)
  {
    v11 = *(a1 + 280);
    if (v11)
    {
      *(a1 + 288) = v11;
      operator delete(v11);
    }

    *(a1 + 304) = 0;
  }
}

BOOL stewie::ConnectionAssistantTargetDataSource::updateLLCTarget(uint64_t a1, uint64_t a2, __int128 *a3, int a4, void *a5)
{
  v10 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *a5 / 0x3B9ACA00uLL;
    *buf = 67109376;
    *&buf[4] = a2;
    *&buf[8] = 2048;
    *&buf[10] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I LLC target id: %d at %llu", buf, 0x12u);
  }

  v12 = 1;
  if (*(a1 + 108) == 1)
  {
    v12 = *(a1 + 104) != a2;
  }

  *(a1 + 104) = a2;
  *(a1 + 108) = 1;
  if (a2)
  {
    v30 = 0;
    v31 = 0;
    sub_1015B50BC(&v30, a1, a3, a4);
    v13 = v30;
    if (!v30)
    {
      v25 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Optimal target id: null, service not available", buf, 2u);
      }

      if (*(a1 + 184) == 1)
      {
        *(a1 + 184) = 0;
      }

      goto LABEL_42;
    }

    memset(buf, 0, sizeof(buf));
    v14 = (*(*v30 + 32))(v30, a5, a2 | &_mh_execute_header, buf);
    if (v14 == a2 && (v14 & &_mh_execute_header) != 0)
    {
      goto LABEL_32;
    }

    v16 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 67109120;
      *&v32[4] = a2;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I LLC target %d is not in service", v32, 8u);
    }

    v17 = (*(*v13 + 24))(v32, v13, a5, a2);
    *buf = *v32;
    *&buf[16] = *&v32[16];
    v18 = stewie::TargetInstant::invalidInstance(v17);
    if (*buf == *v18 && (v19 = *&buf[8], *&buf[8] == v18[1]))
    {
      v20 = *&buf[16];
      v21 = v18[2];
      v22 = *a1;
      v23 = os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT);
      if (v20 == v21)
      {
        if (v23)
        {
          *v32 = 67109120;
          *&v32[4] = a2;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Failed to get instant for LLC target %d, ignoring the update, resetting the target", v32, 8u);
        }

        if (*(a1 + 108))
        {
          *(a1 + 108) = 0;
          v12 = 1;
        }

        goto LABEL_42;
      }

      if (!v23)
      {
LABEL_32:
        v26 = *(a1 + 184);
        if (!v12 && (*(a1 + 184) & 1) != 0)
        {
          if (*(a1 + 152) == a2)
          {
            *&v27 = *buf;
            if (*(a1 + 160) == *buf && *(a1 + 168) == *&buf[8])
            {
              v28 = *&buf[16];
              v12 = *(a1 + 176) != *&buf[16];
              *(&v27 + 1) = *&buf[8];
              goto LABEL_40;
            }
          }

          v26 = 1;
        }

        v27 = *buf;
        v12 = 1;
        v28 = *&buf[16];
        if ((v26 & 1) == 0)
        {
LABEL_41:
          *(a1 + 152) = a2;
          *(a1 + 160) = v27;
          *(a1 + 176) = v28;
          *(a1 + 184) = 1;
LABEL_42:
          if (v31)
          {
            sub_100004A34(v31);
          }

          return v12;
        }

LABEL_40:
        *(a1 + 184) = 0;
        goto LABEL_41;
      }
    }

    else
    {
      v22 = *a1;
      if (!os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      v19 = *&buf[8];
    }

    *v32 = 67109376;
    *&v32[4] = a2;
    *&v32[8] = 2048;
    *&v32[10] = v19 * 180.0 / 3.14159265;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Tracking LLC target %d, service: %.2f", v32, 0x12u);
    goto LABEL_32;
  }

  v24 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Optimal target id: null, LLC target %d", buf, 8u);
  }

  if (*(a1 + 184) == 1)
  {
    *(a1 + 184) = 0;
  }

  return v12;
}

void sub_1015B6478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void stewie::ConnectionAssistantTargetDataSource::updateCachedServicePlot(uint64_t a1, __int128 *a2, int a3, unint64_t *a4)
{
  v23 = 0;
  v24 = 0;
  sub_1015B50BC(&v23, a1, a2, a3);
  v6 = v23;
  if (v23)
  {
    v7 = *a4;
    v8 = *(a1 + 248);
    if (v8 > *a4 + 100000000 || v8 + 600000000000 <= v7)
    {
      *(a1 + 248) = v7;
      v28 = *a4 + 3600000000000;
      if (*(a1 + 304) == 1)
      {
        v25 = *(a1 + 256);
        v10 = *(a1 + 280);
        v26[0] = *(a1 + 272);
        v26[1] = 0;
        v27 = 0uLL;
        sub_10173844C(&v26[1], v10, *(a1 + 288), 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 288) - v10) >> 3));
      }

      else
      {
        *v26 = 0u;
        v27 = 0u;
        v25 = 0u;
      }

      (*(*v6 + 48))(buf, v6, a4, &v28, &v25);
      if (*(a1 + 304) == 1)
      {
        v13 = *(a1 + 280);
        if (v13)
        {
          *(a1 + 288) = v13;
          operator delete(v13);
        }

        *(a1 + 304) = 0;
      }

      *(a1 + 256) = *buf;
      v14 = __p;
      *(a1 + 272) = *&buf[16];
      *(a1 + 280) = 0;
      *(a1 + 288) = 0;
      *(a1 + 296) = 0;
      sub_10173844C((a1 + 280), v14, v31, 0xCCCCCCCCCCCCCCCDLL * ((v31 - v14) >> 3));
      *(a1 + 304) = 1;
      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }

      if (v26[1])
      {
        *&v27 = v26[1];
        operator delete(v26[1]);
      }

      if (!*(a1 + 256) || (v15 = *(a1 + 264)) == 0 || (v16 = *(a1 + 272)) == 0)
      {
        v22 = *a1;
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_32;
        }

        *buf = 0;
        v19 = "#I Service plot: invalid";
        v20 = v22;
        v21 = 2;
        goto LABEL_31;
      }

      if ((*(a1 + 304) & 1) == 0)
      {
        sub_1000D1644();
      }

      v17 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        v18 = (*(a1 + 288) - *(a1 + 280)) >> 3;
        *buf = 134218496;
        *&buf[4] = v15 / 0x3B9ACA00;
        *&buf[12] = 2048;
        *&buf[14] = v16 / 0x3B9ACA00;
        *&buf[22] = 2048;
        __p = (0xCCCCCCCCCCCCCCCDLL * v18);
        v19 = "#I Service plot: [%llu, %llu] %zu readings";
        v20 = v17;
        v21 = 32;
LABEL_31:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
      }
    }
  }

  else
  {
    v11 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Service plot: null, service not available", buf, 2u);
    }

    if (*(a1 + 304) == 1)
    {
      v12 = *(a1 + 280);
      if (v12)
      {
        *(a1 + 288) = v12;
        operator delete(v12);
      }

      *(a1 + 304) = 0;
    }
  }

LABEL_32:
  if (v24)
  {
    sub_100004A34(v24);
  }
}

void sub_1015B67DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void stewie::ConnectionAssistantTargetDataSource::handleDumpState(stewie::ConnectionAssistantTargetDataSource *this)
{
  v2 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] *********************************************", &buf, 2u);
    v2 = *this;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] * ConnectionAssistantTargetDataSource state *", &buf, 2u);
    v2 = *this;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] *********************************************", &buf, 2u);
    v2 = *this;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 5) * 180.0 / 3.14159265;
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] Service threshold: %.2f", &buf, 0xCu);
    v2 = *this;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(this + 6) * 180.0 / 3.14159265;
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] Anchor service threshold: %.2f", &buf, 0xCu);
  }

  v5 = *(this + 7);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  else
  {
    v6 = *this;
    if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [d] AnchorStorage not set", &buf, 2u);
    }
  }

  v7 = *(this + 11);
  v8 = *this;
  v9 = os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (!v9)
    {
      goto LABEL_23;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v10 = "#I [d] (AnchorServiceSchedule) anchorServiceSchedule not set";
    goto LABEL_22;
  }

  if (v9)
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [d] (AnchorServiceSchedule) anchorServiceSchedule {", &buf, 2u);
    v7 = *(this + 11);
  }

  (*(*v7 + 24))(v7, this);
  v8 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v10 = "#I [d] (AnchorServiceSchedule) }";
LABEL_22:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, &buf, 2u);
  }

LABEL_23:
  v11 = *(this + 9);
  v12 = *this;
  v13 = os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT);
  if (!v11)
  {
    if (!v13)
    {
      goto LABEL_31;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v14 = "#I [d] (TargetServiceSchedule) targetServiceSchedule not set";
    goto LABEL_30;
  }

  if (v13)
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I [d] (TargetServiceSchedule) targetServiceSchedule {", &buf, 2u);
    v11 = *(this + 9);
  }

  (*(*v11 + 24))(v11, this);
  v12 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v14 = "#I [d] (TargetServiceSchedule) }";
LABEL_30:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v14, &buf, 2u);
  }

LABEL_31:
  v15 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 108))
    {
      std::to_string(&buf, *(this + 26));
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }
    }

    else
    {
      *(&buf.__r_.__value_.__s + 23) = 6;
      strcpy(&buf, "<none>");
      p_buf = &buf;
    }

    LODWORD(v63.__r_.__value_.__l.__data_) = 136446210;
    *(v63.__r_.__value_.__r.__words + 4) = p_buf;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I [d] LLC targetID: %{public}s", &v63, 0xCu);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v15 = *this;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(this + 18);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I [d] Optimal target updated at GPS time: %llu", &buf, 0xCu);
    v15 = *this;
  }

  v18 = *(this + 184);
  v19 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  if (v18 != 1)
  {
    if (!v19)
    {
      goto LABEL_57;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v23 = "#I [d] (OptimalTarget) OptimalTarget not set";
    v24 = v15;
    v25 = 2;
    goto LABEL_56;
  }

  if (v19)
  {
    std::to_string(&buf, *(this + 38));
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &buf;
    }

    else
    {
      v20 = buf.__r_.__value_.__r.__words[0];
    }

    LODWORD(v63.__r_.__value_.__l.__data_) = 136446210;
    *(v63.__r_.__value_.__r.__words + 4) = v20;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I [d] (OptimalTarget) targetID: %{public}s", &v63, 0xCu);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v15 = *this;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(this + 20) * 180.0 / 3.14159265;
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I [d] (OptimalTarget) heading: %.2f", &buf, 0xCu);
    v15 = *this;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(this + 21) * 180.0 / 3.14159265;
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v22;
    v23 = "#I [d] (OptimalTarget) service: %.2f";
    v24 = v15;
    v25 = 12;
LABEL_56:
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, &buf, v25);
  }

LABEL_57:
  v26 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(this + 24);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v27;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I [d] Service window updated at GPS time: %llu", &buf, 0xCu);
  }

  if (*(this + 240) != 1)
  {
    v29 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_86;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v35 = "#I [d] (ServiceWindow) ServiceWindow not set";
    goto LABEL_84;
  }

  if (!*(this + 25))
  {
    v29 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_86;
    }

    goto LABEL_83;
  }

  v28 = *(this + 26);
  v29 = *this;
  v30 = os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT);
  if (!v28)
  {
    if (!v30)
    {
      goto LABEL_86;
    }

LABEL_83:
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v35 = "#I [d] (ServiceWindow) ServiceWindow is not valid";
LABEL_84:
    v36 = v29;
    v37 = 2;
LABEL_85:
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, v35, &buf, v37);
    goto LABEL_86;
  }

  if (v30)
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I [d] (ServiceWindow) ServiceWindow is valid, all times are GPS times", &buf, 2u);
    v29 = *this;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(this + 25);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v31;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I [d] (ServiceWindow) startTime: %llu", &buf, 0xCu);
    v29 = *this;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(this + 26);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v32;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I [d] (ServiceWindow) endTime: %llu", &buf, 0xCu);
    v29 = *this;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v33 = "false";
    if (*(this + 216))
    {
      v33 = "true";
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v33;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I [d] (ServiceWindow) inServiceAtStart: %s", &buf, 0xCu);
    v29 = *this;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 216) == 1)
    {
      v34 = "false";
      if (!*(this + 28) && !*(this + 29))
      {
        v34 = "true";
      }
    }

    else
    {
      v34 = "false";
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v34;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I [d] (ServiceWindow) alwaysInService: %s", &buf, 0xCu);
    v29 = *this;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    if (*(this + 216))
    {
      v60 = "false";
    }

    else
    {
      v60 = "false";
      if (!*(this + 28) && !*(this + 29))
      {
        v60 = "true";
      }
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v60;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I [d] (ServiceWindow) alwaysNotInService: %s", &buf, 0xCu);
    v29 = *this;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v61 = *(this + 29);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v61;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I [d] (ServiceWindow) AOS: %llu", &buf, 0xCu);
    v29 = *this;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v62 = *(this + 28);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v62;
    v35 = "#I [d] (ServiceWindow) LOS: %llu";
    v36 = v29;
    v37 = 12;
    goto LABEL_85;
  }

LABEL_86:
  v38 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    v39 = *(this + 31);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v39;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I [d] Service plot updated at GPS time: %llu", &buf, 0xCu);
  }

  if (*(this + 304) != 1)
  {
    v40 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_119;
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v55 = "#I [d] (ServicePlot) ServicePlot not set";
    goto LABEL_117;
  }

  if (!*(this + 32))
  {
    v40 = *this;
LABEL_115:
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_119;
    }

LABEL_116:
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v55 = "#I [d] (ServicePlot) ServicePlot is not valid";
LABEL_117:
    v56 = v40;
    v57 = 2;
    goto LABEL_118;
  }

  v40 = *this;
  if (!*(this + 33))
  {
    goto LABEL_115;
  }

  v41 = *(this + 34);
  v42 = os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT);
  if (!v41)
  {
    if (!v42)
    {
      goto LABEL_119;
    }

    goto LABEL_116;
  }

  if (v42)
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I [d] (ServicePlot) ServicePlot is valid, all times are GPS times", &buf, 2u);
    v40 = *this;
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v43 = *(this + 32);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v43;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I [d] (ServicePlot) version: %llu", &buf, 0xCu);
    v40 = *this;
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v44 = *(this + 33);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v44;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I [d] (ServicePlot) startTime: %llu", &buf, 0xCu);
    v40 = *this;
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v45 = *(this + 34);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v45;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I [d] (ServicePlot) endTime: %llu", &buf, 0xCu);
    v40 = *this;
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I [d] (ServicePlot) readings [", &buf, 2u);
  }

  v46 = *(this + 35);
  for (i = *(this + 36); v46 != i; v46 += 40)
  {
    v48 = *this;
    if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
      v49 = *v46;
      std::to_string(&v63, *(v46 + 8));
      v50 = (v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v63 : v63.__r_.__value_.__r.__words[0];
      v51 = *(v46 + 16) * 180.0 / 3.14159265;
      v52 = *(v46 + 24) * 180.0;
      LODWORD(buf.__r_.__value_.__l.__data_) = 134218755;
      *(buf.__r_.__value_.__r.__words + 4) = v49;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2082;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v50;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2049;
      v65 = v51;
      v66 = 2049;
      v67 = v52 / 3.14159265;
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I [d] (ServicePlot) readings - at: %llu, targetID: %{public}s, heading: %{private}.2f, service: %{private}.2f", &buf, 0x2Au);
      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }
    }
  }

  v53 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    v54 = 0xCCCCCCCCCCCCCCCDLL * ((*(this + 36) - *(this + 35)) >> 3);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v54;
    v55 = "#I [d] (ServicePlot) readings ] %zu readings";
    v56 = v53;
    v57 = 12;
LABEL_118:
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, v55, &buf, v57);
  }

LABEL_119:
  v58 = *(this + 16);
  if (v58)
  {
    (*(*v58 + 56))(v58);
  }

  else
  {
    v59 = *this;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I [d] (ServiceAtLocation) ServiceAtLocation not set", &buf, 2u);
    }
  }
}

void sub_1015B7630(void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  operator new();
}

void sub_1015B7744(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    dispatch_release(v2);
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

  (*(*v1 + 8))(v1);
  if (v3)
  {
LABEL_4:
    operator delete();
  }

LABEL_5:
  _Unwind_Resume(exception_object);
}

void *sub_1015B77A4(void *a1, void *a2, uint64_t *a3, NSObject **a4)
{
  v8 = (a1 + 1);
  ctu::OsLogContext::OsLogContext(&v23, kCtLoggingSystemName, "set.mmi");
  ctu::OsLogLogger::OsLogLogger(v26, &v23);
  ctu::OsLogLogger::OsLogLogger(v8, v26);
  ctu::OsLogLogger::~OsLogLogger(v26);
  ctu::OsLogContext::~OsLogContext(&v23);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = off_101F51BB0;
  a1[4] = *a2;
  v9 = a2[1];
  a1[5] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  a1[7] = 0;
  v10 = a1 + 7;
  a1[6] = a1 + 7;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  v11 = *a3;
  v12 = *a4;
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  (*(*v11 + 16))(v11, &object);
  v22 = a1;
  if (object)
  {
    dispatch_release(object);
  }

  subscriber::makeSimSlotRange();
  var0 = v23.var0;
  fRef = v23.var1.fRef;
  if (v23.var0 != v23.var1.fRef)
  {
    v15 = v24;
    do
    {
      if (v15(*var0))
      {
        break;
      }

      var0 += 4;
    }

    while (var0 != fRef);
    v16 = v23.var1.fRef;
    while (var0 != v16)
    {
      v17 = *var0;
      v18 = *v10;
      if (!*v10)
      {
LABEL_18:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v19 = v18;
          v20 = *(v18 + 28);
          if (v20 <= v17)
          {
            break;
          }

          v18 = *v19;
          if (!*v19)
          {
            goto LABEL_18;
          }
        }

        if (v20 >= v17)
        {
          break;
        }

        v18 = v19[1];
        if (!v18)
        {
          goto LABEL_18;
        }
      }

      do
      {
        var0 += 4;
      }

      while (var0 != fRef && (v15(*var0) & 1) == 0);
    }
  }

  return v22;
}

void sub_1015B79F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ctu::OsLogLogger *a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, dispatch_object_t object, char a16)
{
  v18 = *(a11 + 96);
  if (v18)
  {
    sub_100004A34(v18);
  }

  v19 = *(a11 + 80);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  sub_10006DCAC(v16, *(a11 + 56));
  v20 = *(a11 + 40);
  if (v20)
  {
    sub_100004A34(v20);
  }

  v21 = *(a11 + 24);
  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  ctu::OsLogLogger::~OsLogLogger(a10);
  MMIInterface::~MMIInterface(a11);
  _Unwind_Resume(a1);
}

void sub_1015B7A98(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 80);
  *(a1 + 72) = v3;
  *(a1 + 80) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t sub_1015B7AC4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = a1[10];
  if (v6)
  {
    v11 = std::__shared_weak_count::lock(v6);
    if (v11)
    {
      v12 = v11;
      v13 = a1[9];
      if (!v13)
      {
        goto LABEL_114;
      }

      v14 = a1[1];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
        *buf = 134218240;
        *&buf[4] = v15;
        *&buf[12] = 1024;
        *&buf[14] = a5;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I MMI Arguments list size %ld, MMI Procedure %d", buf, 0x12u);
      }

      v16 = *a4;
      v17 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
      v18 = 1;
      if (v17 <= 1)
      {
        if (v17)
        {
          if (v17 != 1)
          {
            goto LABEL_129;
          }

          if (a5 > 2)
          {
            if (a5 != 3)
            {
              if (a5 == 5)
              {
                v53 = a1[1];
                if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "#I Erase of Call Forwarding", buf, 2u);
                }

                CSIPhoneNumber::CSIPhoneNumber(&v66);
                (*(*v13 + 232))(v13, a2, 0, &v66, 0, a3, 0, 5);
                v28 = &v66;
                goto LABEL_105;
              }

              if (a5 != 4)
              {
LABEL_106:
                v57 = a1[1];
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  v46 = v57;
                  goto LABEL_108;
                }

                goto LABEL_129;
              }

              goto LABEL_61;
            }

            v51 = a1[1];
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v50 = v51;
              goto LABEL_88;
            }

            goto LABEL_89;
          }

          if (a5 == 1)
          {
LABEL_61:
            v36 = *(v16 + 23);
            if (v36 < 0)
            {
              v36 = *(v16 + 8);
            }

            v37 = a1[1];
            v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
            if (v36)
            {
              if (v38)
              {
                *buf = 67109120;
                *&buf[4] = a5;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I Registering Call Forwarding with MMI Procedure %d", buf, 8u);
              }

              v76 = 0u;
              v77 = 0u;
              v74 = 0u;
              v75 = 0u;
              v72 = 0u;
              v73 = 0u;
              v70 = 0u;
              v71 = 0u;
              memset(buf, 0, sizeof(buf));
              CSIPhoneNumber::CSIPhoneNumber();
              sub_1000AE428(v67, buf);
              (*(*v13 + 232))(v13, a2, 1, v67, 0, a3, 0, a5);
              v39 = v67;
LABEL_79:
              sub_10034F8E8(v39);
              v28 = buf;
LABEL_105:
              sub_10034F8E8(v28);
              goto LABEL_128;
            }

            if (!v38)
            {
              goto LABEL_118;
            }

            *buf = 67109120;
            *&buf[4] = a5;
            v47 = "#I Activation Call Forwarding with MMI Procedure %d";
            v48 = v37;
            v49 = 8;
            goto LABEL_117;
          }

          if (a5 != 2)
          {
            goto LABEL_106;
          }

          v24 = a1[1];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            goto LABEL_51;
          }

          goto LABEL_52;
        }

        v24 = a1[1];
        v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
        if (a5 > 2)
        {
          if (a5 == 3)
          {
            if (v25)
            {
              *buf = 0;
              v50 = v24;
LABEL_88:
              _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I Interrogation of Call Forwarding", buf, 2u);
            }

LABEL_89:
            (*(*v13 + 216))(v13, a2, a3, 0, 0);
LABEL_128:
            v18 = 0;
            goto LABEL_129;
          }

          if (a5 == 5)
          {
            if (v25)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Erase of Call Forwarding", buf, 2u);
            }

            CSIPhoneNumber::CSIPhoneNumber(&v68);
            (*(*v13 + 232))(v13, a2, 0, &v68, 0, a3, 0, 5);
            v28 = &v68;
            goto LABEL_105;
          }
        }

        else
        {
          if (a5 == 1)
          {
            if (!v25)
            {
LABEL_118:
              v29 = 1;
              goto LABEL_119;
            }

            *buf = 0;
            v47 = "#I Activation Call Forwarding";
            v48 = v24;
            v49 = 2;
LABEL_117:
            _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, v47, buf, v49);
            goto LABEL_118;
          }

          if (a5 == 2)
          {
            if (v25)
            {
              *buf = 0;
LABEL_51:
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Deactivation Call Forwarding", buf, 2u);
            }

LABEL_52:
            v29 = 0;
LABEL_119:
            (*(*v13 + 224))(v13, a2, v29, a3, 0, a5);
            goto LABEL_128;
          }
        }

        if (v25)
        {
          *buf = 0;
          v46 = v24;
LABEL_108:
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#N Unsupported MMI Procedure", buf, 2u);
        }

LABEL_129:
        sub_100004A34(v12);
        return v18;
      }

      if (v17 != 2)
      {
        if (v17 != 3)
        {
          goto LABEL_129;
        }

        v19 = sub_1015B886C(v16 + 24);
        if (!v19)
        {
          v20 = a1[1];
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#N Unknown Service Class Code", buf, 2u);
          }
        }

        v63 = 0;
        v21 = (*a4 + 48);
        if (*(*a4 + 71) < 0)
        {
          v21 = *v21;
        }

        sscanf(v21, "%u", &v63);
        v22 = v63;
        v23 = a1[1];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Timer provided is of value %u", buf, 8u);
        }

        if (a5 <= 2)
        {
          if (a5 != 1)
          {
            if (a5 != 2)
            {
              goto LABEL_109;
            }

            v30 = a1[1];
            v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
            v32 = 0;
            if (v31)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Deactivation Call Forwarding", buf, 2u);
              v32 = 0;
            }

LABEL_123:
            (*(*v13 + 224))(v13, a2, v32, a3, v19, a5);
            goto LABEL_128;
          }
        }

        else
        {
          if (a5 == 3)
          {
            v52 = a1[1];
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I Interrogation of Call Forwarding", buf, 2u);
            }

            (*(*v13 + 216))(v13, a2, a3, v19, 0);
            goto LABEL_128;
          }

          if (a5 == 5)
          {
            v54 = a1[1];
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I Erase of Call Forwarding", buf, 2u);
            }

            CSIPhoneNumber::CSIPhoneNumber(&v61);
            (*(*v13 + 232))(v13, a2, 0, &v61, v22, a3, v19, 5);
            v28 = &v61;
            goto LABEL_105;
          }

          if (a5 != 4)
          {
LABEL_109:
            v58 = a1[1];
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
LABEL_113:
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#N Unsupported MMI Procedure", buf, 2u);
              goto LABEL_114;
            }

            goto LABEL_114;
          }
        }

        v60 = v19;
        v40 = *(*a4 + 23);
        if (v40 < 0)
        {
          v40 = *(*a4 + 8);
        }

        v41 = a1[1];
        v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
        if (v40)
        {
          if (v42)
          {
            *buf = 67109120;
            *&buf[4] = a5;
            _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I Registering Call Forwarding with MMI Procedure %d", buf, 8u);
          }

          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          memset(buf, 0, sizeof(buf));
          CSIPhoneNumber::CSIPhoneNumber();
          sub_1000AE428(v62, buf);
          (*(*v13 + 232))(v13, a2, 1, v62, v22, a3, v60, a5);
          v39 = v62;
          goto LABEL_79;
        }

        if (v42)
        {
          *buf = 67109120;
          *&buf[4] = a5;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I Activation Call Forwarding with MMI Procedure %d", buf, 8u);
        }

        v32 = 1;
        v19 = v60;
        goto LABEL_123;
      }

      v26 = sub_1015B886C(v16 + 24);
      if (!v26)
      {
        v27 = a1[1];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#N Unknown Service Class Code", buf, 2u);
        }
      }

      if (a5 <= 2)
      {
        if (a5 != 1)
        {
          if (a5 != 2)
          {
            goto LABEL_111;
          }

          v33 = a1[1];
          v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
          v35 = 0;
          if (v34)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Deactivation Call Forwarding", buf, 2u);
            v35 = 0;
          }

LABEL_127:
          (*(*v13 + 224))(v13, a2, v35, a3, v26, a5);
          goto LABEL_128;
        }
      }

      else
      {
        if (a5 == 3)
        {
          v55 = a1[1];
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I Interrogation of Call Forwarding", buf, 2u);
          }

          (*(*v13 + 216))(v13, a2, a3, v26, 0);
          goto LABEL_128;
        }

        if (a5 == 5)
        {
          v56 = a1[1];
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I Erase of Call Forwarding", buf, 2u);
          }

          CSIPhoneNumber::CSIPhoneNumber(&v64);
          (*(*v13 + 232))(v13, a2, 0, &v64, 0, a3, v26, 5);
          v28 = &v64;
          goto LABEL_105;
        }

        if (a5 != 4)
        {
LABEL_111:
          v58 = a1[1];
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            goto LABEL_113;
          }

LABEL_114:
          v18 = 1;
          goto LABEL_129;
        }
      }

      v43 = *(*a4 + 23);
      if (v43 < 0)
      {
        v43 = *(*a4 + 8);
      }

      v44 = a1[1];
      v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
      if (v43)
      {
        if (v45)
        {
          *buf = 67109120;
          *&buf[4] = a5;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I Registering Call Forwarding with MMI Procedure %d", buf, 8u);
        }

        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        memset(buf, 0, sizeof(buf));
        CSIPhoneNumber::CSIPhoneNumber();
        sub_1000AE428(v65, buf);
        (*(*v13 + 232))(v13, a2, 1, v65, 0, a3, v26, a5);
        v39 = v65;
        goto LABEL_79;
      }

      if (v45)
      {
        *buf = 67109120;
        *&buf[4] = a5;
        _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I Activation Call Forwarding with MMI Procedure %d", buf, 8u);
      }

      v35 = 1;
      goto LABEL_127;
    }
  }

  return 1;
}

void sub_1015B87D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  sub_10034F8E8(&a53);
  sub_100004A34(v53);
  _Unwind_Resume(a1);
}

uint64_t sub_1015B886C(uint64_t a1)
{
  v2 = *(a1 + 23);
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (v2 != 2)
    {
      goto LABEL_39;
    }

    if (*a1 != 12337)
    {
      if (*a1 != 12593)
      {
        if (*a1 != 12849)
        {
          if (*a1 != 13105)
          {
            if (*a1 != 13873)
            {
              if (*a1 != 14641)
              {
                if (*a1 != 12338)
                {
                  if (*a1 != 12594)
                  {
                    if (*a1 != 12850)
                    {
                      v3 = a1;
                      if (*a1 == 13362)
                      {
                        return 16;
                      }

                      goto LABEL_38;
                    }

                    return 80;
                  }

                  return 160;
                }

                return 48;
              }

              return 5;
            }

            return 8;
          }

          return 4;
        }

        return 12;
      }

      return 1;
    }

    return 13;
  }

  if (*(a1 + 8) == 2)
  {
    v4 = *a1;
    if (**a1 == 12337)
    {
      return 13;
    }

    switch(*v4)
    {
      case 0x3131:
        return 1;
      case 0x3231:
        return 12;
      case 0x3331:
        return 4;
      case 0x3631:
        return 8;
      case 0x3931:
        return 5;
    }
  }

  if (*(a1 + 8) == 2 && **a1 == 12338)
  {
    return 48;
  }

  if (*(a1 + 8) == 2)
  {
    if (**a1 == 12594)
    {
      return 160;
    }

    if ((v2 & 0x80) == 0)
    {
      goto LABEL_39;
    }
  }

  if (*(a1 + 8) == 2 && **a1 == 12850)
  {
    return 80;
  }

  if (*(a1 + 8) != 2)
  {
    goto LABEL_36;
  }

  if (**a1 == 13362)
  {
    return 16;
  }

  if ((v2 & 0x80) != 0)
  {
LABEL_36:
    if (*(a1 + 8) != 2)
    {
      goto LABEL_39;
    }

    v3 = *a1;
  }

  else
  {
    v3 = a1;
    if (v2 != 2)
    {
      goto LABEL_39;
    }
  }

LABEL_38:
  if (*v3 == 13618)
  {
    return 32;
  }

LABEL_39:
  if (sub_100318068(a1, "26"))
  {
    return 17;
  }

  if (sub_100318068(a1, "99"))
  {
    return 64;
  }

  return 0;
}

uint64_t sub_1015B8B0C(void *a1, uint64_t a2, uint64_t a3, char **a4, uint64_t a5)
{
  v6 = a1[10];
  if (v6)
  {
    v11 = std::__shared_weak_count::lock(v6);
    if (v11)
    {
      v12 = v11;
      v13 = a1[9];
      if (!v13)
      {
        goto LABEL_22;
      }

      v14 = a1[1];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
        *buf = 134218240;
        *&buf[4] = v15;
        *&buf[12] = 1024;
        *&buf[14] = a5;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I MMI Arguments list size %ld, MMI Procedure %d", buf, 0x12u);
      }

      v16 = *a4;
      v17 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
      if (v17 != 2)
      {
        if (v17 != 1)
        {
          if (!v17)
          {
            v18 = a1[1];
            v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
            if (a5 == 3)
            {
              if (v19)
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Interrogation of Call Barring", buf, 2u);
              }

              sub_10000501C(buf, "");
              (*(*v13 + 120))(v13, a2, buf, a3, 0, 0);
              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

              v20 = 0;
              goto LABEL_71;
            }

            if (v19)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Unsupported MMI Procedure", buf, 2u);
            }
          }

LABEL_22:
          v20 = 1;
LABEL_71:
          sub_100004A34(v12);
          return v20;
        }

        memset(buf, 0, sizeof(buf));
        if (v16[23] < 0)
        {
          sub_100005F2C(buf, *v16, *(v16 + 1));
        }

        else
        {
          v21 = *v16;
          *&buf[16] = *(v16 + 2);
          *buf = v21;
        }

        if (a5 <= 2)
        {
          if (a5 == 1)
          {
LABEL_46:
            v31 = a1[1];
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(__p[0]) = 0;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I Activation/Registration of Call Barring", __p, 2u);
            }

            v25 = 1;
LABEL_49:
            (*(*v13 + 136))(v13, a2, v25, buf, a3, 0, a5);
            v20 = 0;
            goto LABEL_69;
          }

          if (a5 != 2)
          {
            goto LABEL_63;
          }

LABEL_31:
          v23 = a1[1];
          v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
          v25 = 0;
          if (v24)
          {
            LOWORD(__p[0]) = 0;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Deactivation/Erase of Call Barring", __p, 2u);
            v25 = 0;
          }

          goto LABEL_49;
        }

        if (a5 != 3)
        {
          if (a5 != 5)
          {
            if (a5 != 4)
            {
LABEL_63:
              v35 = a1[1];
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(__p[0]) = 0;
LABEL_67:
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#N Unsupported MMI Procedure", __p, 2u);
                goto LABEL_68;
              }

              goto LABEL_68;
            }

            goto LABEL_46;
          }

          goto LABEL_31;
        }

        v33 = a1[1];
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Interrogation of Call Barring", __p, 2u);
        }

        sub_10000501C(__p, "");
        (*(*v13 + 120))(v13, a2, __p, a3, 0, 0);
        goto LABEL_60;
      }

      memset(buf, 0, sizeof(buf));
      if (v16[23] < 0)
      {
        sub_100005F2C(buf, *v16, *(v16 + 1));
        v16 = *a4;
      }

      else
      {
        v22 = *v16;
        *&buf[16] = *(v16 + 2);
        *buf = v22;
      }

      v26 = sub_1015B886C((v16 + 24));
      if (!v26)
      {
        v27 = a1[1];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Unknown Service Class Code", __p, 2u);
        }
      }

      if (a5 <= 2)
      {
        if (a5 == 1)
        {
LABEL_50:
          v32 = a1[1];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p[0]) = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Activation/Registration of Call Barring", __p, 2u);
          }

          v30 = 1;
LABEL_53:
          (*(*v13 + 136))(v13, a2, v30, buf, a3, v26, a5);
LABEL_62:
          v20 = 0;
          goto LABEL_69;
        }

        if (a5 != 2)
        {
          goto LABEL_65;
        }
      }

      else
      {
        if (a5 == 3)
        {
          v34 = a1[1];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p[0]) = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Interrogation of Call Barring", __p, 2u);
          }

          sub_10000501C(__p, "");
          (*(*v13 + 120))(v13, a2, __p, a3, v26, 0);
LABEL_60:
          if (v38 < 0)
          {
            operator delete(__p[0]);
          }

          goto LABEL_62;
        }

        if (a5 != 5)
        {
          if (a5 != 4)
          {
LABEL_65:
            v35 = a1[1];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(__p[0]) = 0;
              goto LABEL_67;
            }

LABEL_68:
            v20 = 1;
LABEL_69:
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }

            goto LABEL_71;
          }

          goto LABEL_50;
        }
      }

      v28 = a1[1];
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      v30 = 0;
      if (v29)
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Deactivation/Erase of Call Barring", __p, 2u);
        v30 = 0;
      }

      goto LABEL_53;
    }
  }

  return 1;
}

void sub_1015B9180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_100004A34(v21);
  _Unwind_Resume(a1);
}

BOOL sub_1015B91E0(os_log_t *a1, unsigned __int8 *a2)
{
  v2 = a2[23];
  if (v2 < 0)
  {
    if ((*(a2 + 1) - 9) >= 0xFFFFFFFFFFFFFFFBLL)
    {
      a2 = *a2;
      goto LABEL_8;
    }

LABEL_5:
    v3 = *a1;
    result = os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    v12 = 0;
    v5 = &v12;
    goto LABEL_17;
  }

  if ((v2 - 9) <= 0xFFFFFFFFFFFFFFFALL)
  {
    goto LABEL_5;
  }

LABEL_8:
  v6 = *a2;
  if (*a2)
  {
    v7 = a2 + 1;
    while ((v6 - 58) > 0xFFFFFFF5)
    {
      v8 = *v7++;
      v6 = v8;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    v3 = *a1;
    result = os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT);
    if (result)
    {
      *buf = 0;
      v5 = buf;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#N Not a valid PIN", v5, 2u);
      return 0;
    }
  }

  else
  {
LABEL_12:
    v9 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I A Valid PIN", v10, 2u);
    }

    return 1;
  }

  return result;
}

uint64_t sub_1015B9304(void *a1, unsigned int a2, std::string::value_type *a3)
{
  v5 = a1[1];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (a3[23] >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = *a3;
    }

    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Processing MMI String %s", buf, 0xCu);
  }

  v75 = 0;
  v76 = 0;
  v77 = 0;
  sub_10016FCA8(&v75, 4uLL);
  v48 = a3;
  if (a3[23] >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  v8 = *v7;
  if (!*v7)
  {
    v49 = 0;
    v10 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_68;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  LODWORD(v13) = 0;
  do
  {
    if (v12 > 2)
    {
      if (v12 <= 4)
      {
        if (v12 == 3)
        {
          if (v8 < 0 || (_DefaultRuneLocale.__runetype[v8] & 0x400) == 0)
          {
            goto LABEL_116;
          }

          --v7;
          goto LABEL_52;
        }

        if (v8 == 35)
        {
          goto LABEL_40;
        }

        if (v8 != 42)
        {
          if (v8 < 0)
          {
            goto LABEL_116;
          }

          if ((_DefaultRuneLocale.__runetype[v8] & 0x400) == 0)
          {
            goto LABEL_116;
          }

          if (++v10 == 4)
          {
            goto LABEL_116;
          }

          v9 = v8 + 10 * v9 - 48;
LABEL_52:
          v12 = 4;
          goto LABEL_65;
        }

        v14 = v75;
        goto LABEL_60;
      }

      if (v12 != 5)
      {
        goto LABEL_116;
      }

      if (v8 == 35)
      {
LABEL_40:
        v12 = 6;
        goto LABEL_65;
      }

      if (v8 != 42)
      {
        if (v8 < 0 || v8 != 43 && (_DefaultRuneLocale.__runetype[v8] & 0x400) == 0)
        {
          goto LABEL_116;
        }

        std::string::push_back((v75 + 24 * v13), v8);
        goto LABEL_64;
      }

      v15 = (v75 + 24 * v13);
      if (*(v15 + 23) < 0)
      {
        if (!v15[1])
        {
          v15[1] = 12;
          v15 = *v15;
          goto LABEL_57;
        }
      }

      else if (!*(v15 + 23))
      {
        *(v15 + 23) = 12;
LABEL_57:
        strcpy(v15, "Place Holder");
      }

      v13 = v13 + 1;
      if (v13 == 4)
      {
        goto LABEL_116;
      }

      v14 = v75 + 24 * v13;
LABEL_60:
      if (*(v14 + 23) < 0)
      {
        *(v14 + 8) = 0;
        v14 = *v14;
      }

      else
      {
        *(v14 + 23) = 0;
      }

      *v14 = 0;
LABEL_64:
      v12 = 5;
      goto LABEL_65;
    }

    if (v12)
    {
      if (v12 == 1)
      {
        if ((v8 & 0x80000000) == 0 && (_DefaultRuneLocale.__runetype[v8] & 0x400) != 0)
        {
          --v7;
          v12 = 4;
          v11 = 1;
        }

        else if (v8 == 35)
        {
          v11 = 3;
          v12 = 3;
        }

        else
        {
          if (v8 != 42)
          {
            goto LABEL_116;
          }

          v12 = 3;
          v11 = 4;
        }
      }

      else
      {
        if (v8 < 0)
        {
          goto LABEL_116;
        }

        if ((_DefaultRuneLocale.__runetype[v8] & 0x400) != 0)
        {
          --v7;
          v12 = 4;
          v11 = 2;
        }

        else
        {
          if (v8 != 35)
          {
            goto LABEL_116;
          }

          v12 = 3;
          v11 = 5;
        }
      }
    }

    else if (v8 == 42)
    {
      v12 = 1;
    }

    else
    {
      if (v8 != 35)
      {
        goto LABEL_116;
      }

      v12 = 2;
    }

LABEL_65:
    v16 = *++v7;
    v8 = v16;
  }

  while (v16);
  v49 = v9;
  v17 = v11;
  v18 = v12 == 6;
LABEL_68:
  v19 = 3;
  while (1)
  {
    v20 = v19;
    v21 = v75;
    v22 = v75 + 24 * v19;
    v23 = *(v22 + 23);
    if (v23 < 0)
    {
      v23 = *(v22 + 8);
    }

    if (v23)
    {
      break;
    }

    sub_10080520C(buf, (v75 + 24 * v20 + 24), v76, v75 + 24 * v20);
    v25 = v24;
    v26 = v76;
    while (v26 != v25)
    {
      v27 = *(v26 - 1);
      v26 -= 3;
      if (v27 < 0)
      {
        operator delete(*v26);
      }
    }

    v76 = v25;
    v19 = v20 - 1;
    if (!v20)
    {
      v21 = v75;
      goto LABEL_79;
    }
  }

  v25 = v76;
LABEL_79:
  sub_10000501C(buf, "Place Holder");
  sub_10000501C(&__str, "");
  for (; v21 != v25; v21 += 24)
  {
    v28 = *(v21 + 23);
    if (v28 >= 0)
    {
      v29 = *(v21 + 23);
    }

    else
    {
      v29 = *(v21 + 8);
    }

    v30 = HIBYTE(v80);
    if (v80 < 0)
    {
      v30 = *&buf[8];
    }

    if (v29 == v30)
    {
      v31 = v28 >= 0 ? v21 : *v21;
      v32 = v80 >= 0 ? buf : *buf;
      if (!memcmp(v31, v32, v29))
      {
        std::string::operator=(v21, &__str);
      }
    }
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v80) < 0)
  {
    operator delete(*buf);
  }

  v34 = v75;
  for (i = v76; v34 != i; v34 += 24)
  {
    v35 = a1[1];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = v34;
      if (*(v34 + 23) < 0)
      {
        v36 = *v34;
      }

      *buf = 136315138;
      *&buf[4] = v36;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I MMI Argument: %s", buf, 0xCu);
    }
  }

  if (!v18)
  {
LABEL_116:
    v42 = a1[1];
    v38 = 0;
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#N MMI String parsing has failed", buf, 2u);
      v38 = 0;
    }

    goto LABEL_177;
  }

  if (v10 == 3)
  {
    v38 = 0;
    if (v49 <= 329)
    {
      if (v49 <= 41)
      {
        if (v49 == 2)
        {
          v39 = v61;
          v61[0] = _NSConcreteStackBlock;
          v61[1] = 0x40000000;
          v40 = &unk_101F51D88;
          v41 = sub_1015BB68C;
        }

        else
        {
          if (v49 != 4)
          {
            goto LABEL_170;
          }

          v39 = v60;
          v60[0] = _NSConcreteStackBlock;
          v60[1] = 0x40000000;
          v40 = &unk_101F51DA8;
          v41 = sub_1015BB6CC;
        }
      }

      else
      {
        switch(v49)
        {
          case 42:
            v39 = v59;
            v59[0] = _NSConcreteStackBlock;
            v59[1] = 0x40000000;
            v40 = &unk_101F51DC8;
            v41 = sub_1015BB70C;
            break;
          case 52:
            v39 = v58;
            v58[0] = _NSConcreteStackBlock;
            v58[1] = 0x40000000;
            v40 = &unk_101F51DE8;
            v41 = sub_1015BB848;
            break;
          case 300:
            v39 = v57;
            v57[0] = _NSConcreteStackBlock;
            v57[1] = 0x40000000;
            v40 = &unk_101F51E08;
            v41 = sub_1015BB9A4;
            break;
          default:
            goto LABEL_170;
        }
      }
    }

    else if (v49 > 332)
    {
      switch(v49)
      {
        case 333:
          v39 = v52;
          v52[0] = _NSConcreteStackBlock;
          v52[1] = 0x40000000;
          v40 = &unk_101F51EA8;
          v41 = sub_1015BBBB4;
          break;
        case 351:
          v39 = v54;
          v54[0] = _NSConcreteStackBlock;
          v54[1] = 0x40000000;
          v40 = &unk_101F51E68;
          v41 = sub_1015BBB34;
          break;
        case 353:
          v39 = v51;
          v51[0] = _NSConcreteStackBlock;
          v51[1] = 0x40000000;
          v40 = &unk_101F51EC8;
          v41 = sub_1015BBBF4;
          break;
        default:
          goto LABEL_170;
      }
    }

    else if (v49 == 330)
    {
      v39 = v53;
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 0x40000000;
      v40 = &unk_101F51E88;
      v41 = sub_1015BBB74;
    }

    else if (v49 == 331)
    {
      v39 = v56;
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 0x40000000;
      v40 = &unk_101F51E28;
      v41 = sub_1015BBAB4;
    }

    else
    {
      v39 = v55;
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 0x40000000;
      v40 = &unk_101F51E48;
      v41 = sub_1015BBAF4;
    }

    goto LABEL_167;
  }

  if (v10 != 2)
  {
    v38 = 0;
    goto LABEL_170;
  }

  v37 = a1[1];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v49;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I MMI code is of length 2 with service code %d", buf, 8u);
  }

  v38 = 0;
  if (v49 <= 32)
  {
    if (v49 > 20)
    {
      switch(v49)
      {
        case 21:
          v39 = v65;
          v65[0] = _NSConcreteStackBlock;
          v65[1] = 0x40000000;
          v40 = &unk_101F51D08;
          v41 = sub_1015BB58C;
          break;
        case 30:
          v39 = v71;
          v71[0] = _NSConcreteStackBlock;
          v71[1] = 0x40000000;
          v40 = &unk_101F51C48;
          v41 = sub_1015BAB5C;
          break;
        case 31:
          v39 = v70;
          v70[0] = _NSConcreteStackBlock;
          v70[1] = 0x40000000;
          v40 = &unk_101F51C68;
          v41 = sub_1015BAD44;
          break;
        default:
          goto LABEL_170;
      }
    }

    else
    {
      switch(v49)
      {
        case 3:
          v39 = v74;
          v74[0] = _NSConcreteStackBlock;
          v74[1] = 0x40000000;
          v40 = &unk_101F51BE8;
          v41 = sub_1015BA2CC;
          break;
        case 4:
          v39 = v73;
          v73[0] = _NSConcreteStackBlock;
          v73[1] = 0x40000000;
          v40 = &unk_101F51C08;
          v41 = sub_1015BA604;
          break;
        case 5:
          v39 = v72;
          v72[0] = _NSConcreteStackBlock;
          v72[1] = 0x40000000;
          v40 = &unk_101F51C28;
          v41 = sub_1015BA8A0;
          break;
        default:
          goto LABEL_170;
      }
    }

    goto LABEL_167;
  }

  if (v49 <= 60)
  {
    switch(v49)
    {
      case '!':
        v39 = v69;
        v69[0] = _NSConcreteStackBlock;
        v69[1] = 0x40000000;
        v40 = &unk_101F51C88;
        v41 = sub_1015BAF28;
        break;
      case '#':
        v39 = v68;
        v68[0] = _NSConcreteStackBlock;
        v68[1] = 0x40000000;
        v40 = &unk_101F51CA8;
        v41 = sub_1015BAF68;
        break;
      case '+':
        v39 = v67;
        v67[0] = _NSConcreteStackBlock;
        v67[1] = 0x40000000;
        v40 = &unk_101F51CC8;
        v41 = sub_1015BAFA8;
        break;
      default:
        goto LABEL_170;
    }

    goto LABEL_167;
  }

  if (v49 > 66)
  {
    if (v49 == 67)
    {
      v39 = v64;
      v64[0] = _NSConcreteStackBlock;
      v64[1] = 0x40000000;
      v40 = &unk_101F51D28;
      v41 = sub_1015BB5CC;
    }

    else
    {
      if (v49 != 77)
      {
        goto LABEL_170;
      }

      v39 = v66;
      v66[0] = _NSConcreteStackBlock;
      v66[1] = 0x40000000;
      v40 = &unk_101F51CE8;
      v41 = sub_1015BB488;
    }

    goto LABEL_167;
  }

  if (v49 == 61)
  {
    v39 = v63;
    v63[0] = _NSConcreteStackBlock;
    v63[1] = 0x40000000;
    v40 = &unk_101F51D48;
    v41 = sub_1015BB60C;
LABEL_167:
    v39[2] = v41;
    v39[3] = v40;
    v39[4] = a1;
    *(v39 + 10) = a2;
    (*(*a1 + 32))(a1);
    *buf = 0;
    (v39[2])(v39, &v75, v17, buf);
    if (*buf)
    {
      (*(*a1 + 40))(a1, a2);
    }

    v38 = 1;
    goto LABEL_170;
  }

  if (v49 == 62)
  {
    v39 = v62;
    v62[0] = _NSConcreteStackBlock;
    v62[1] = 0x40000000;
    v40 = &unk_101F51D68;
    v41 = sub_1015BB64C;
    goto LABEL_167;
  }

LABEL_170:
  v43 = a1[1];
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = subscriber::asString();
    if (v48[23] >= 0)
    {
      v45 = v48;
    }

    else
    {
      v45 = *v48;
    }

    v46 = "was not";
    *buf = 136315650;
    if (v38)
    {
      v46 = "was";
    }

    *&buf[4] = v44;
    *&buf[12] = 2080;
    *&buf[14] = v45;
    v80 = 2080;
    v81 = v46;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I on %s: %s %s handled as MMI", buf, 0x20u);
  }

LABEL_177:
  *buf = &v75;
  sub_1000087B4(buf);
  return v38;
}