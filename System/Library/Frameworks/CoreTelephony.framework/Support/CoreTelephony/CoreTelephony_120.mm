void sub_1007DA91C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (*(v58 - 137) < 0)
  {
    operator delete(*(v58 - 160));
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  if (*(v58 - 105) < 0)
  {
    operator delete(*(v58 - 128));
  }

  if (v57)
  {
    sub_100004A34(v57);
  }

  sub_1000DD0AC(v56, *(v56 + 8));
  _Unwind_Resume(a1);
}

void sub_1007DACD0(Registry **a1@<X0>, void *a2@<X8>)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  __p[0] = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, __p);
  if (!v9)
  {
    v11 = 0;
LABEL_9:
    std::mutex::unlock(v4);
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
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (!v11)
  {
LABEL_7:
    sub_10000501C(a2, "iPhone");
    goto LABEL_16;
  }

LABEL_10:
  __p[0] = 0;
  __p[1] = 0;
  v15 = 0;
  (*(*v11 + 256))(__p, v11);
  v13 = HIBYTE(v15);
  if (v15 < 0)
  {
    v13 = __p[1];
  }

  if (v13)
  {
    *a2 = *__p;
    a2[2] = v15;
  }

  else
  {
    sub_10000501C(a2, "iPhone");
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_16:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_1007DAE4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1007DAE84@<Q0>(std::string *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = a1->__r_.__value_.__r.__words[0];
    size = a1->__r_.__value_.__l.__size_;
    if (!size)
    {
LABEL_3:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v5 = a1;
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if (!*(&a1->__r_.__value_.__s + 23))
    {
      goto LABEL_3;
    }
  }

  do
  {
    if (v5->__r_.__value_.__s.__data_[0] == 43)
    {
      v5->__r_.__value_.__s.__data_[0] = 45;
    }

    v5 = (v5 + 1);
    --size;
  }

  while (size);
  LOBYTE(v4) = *(&a1->__r_.__value_.__s + 23);
  if ((v4 & 0x80) == 0)
  {
LABEL_4:
    v7 = v4;
    v8 = a1;
    if (!v4)
    {
      goto LABEL_5;
    }

    do
    {
LABEL_13:
      if (v8->__r_.__value_.__s.__data_[0] == 47)
      {
        v8->__r_.__value_.__s.__data_[0] = 95;
      }

      v8 = (v8 + 1);
      --v7;
    }

    while (v7);
    LOBYTE(v4) = *(&a1->__r_.__value_.__s + 23);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_12:
  v8 = a1->__r_.__value_.__r.__words[0];
  v7 = a1->__r_.__value_.__l.__size_;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  if ((v4 & 0x80) == 0)
  {
LABEL_6:
    v4 = v4;
    goto LABEL_18;
  }

LABEL_17:
  a1 = a1->__r_.__value_.__r.__words[0];
  v4 = v2->__r_.__value_.__l.__size_;
LABEL_18:
  v14 = 61;
  v9 = sub_1007DF8F4(a1, a1 + v4, &v14);
  v10 = SHIBYTE(v2->__r_.__value_.__r.__words[2]);
  if (v10 < 0)
  {
    v12 = v2->__r_.__value_.__r.__words[0];
    v11 = (v2->__r_.__value_.__r.__words[0] + v2->__r_.__value_.__l.__size_);
  }

  else
  {
    v11 = v2 + v10;
    v12 = v2;
  }

  std::string::erase(v2, &v9[-v12], v11 - v9);
  result = *&v2->__r_.__value_.__l.__data_;
  *a2 = *&v2->__r_.__value_.__l.__data_;
  *(a2 + 16) = *(&v2->__r_.__value_.__l + 2);
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  return result;
}

void LazuliProvisioningWebHelper::retryLastRequest(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = *(a1 + 344);
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        if (*(a1 + 336))
        {
          LazuliProvisioningServerWrapper::resetRetryTimer(*(a1 + 336));
          sub_100004AA0(&buf, (a1 + 8));
          v6 = *&buf_4[4];
          if (*&buf_4[4])
          {
            atomic_fetch_add_explicit((*&buf_4[4] + 16), 1uLL, memory_order_relaxed);
            sub_100004A34(v6);
          }

          v23 = 0;
          operator new();
        }

        sub_100004A34(v5);
      }
    }
  }

  else
  {
    v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if ((*(*a1 + 72))(a1))
      {
        v8 = "C";
      }

      else
      {
        v8 = "NC";
      }

      v9 = sub_100701D5C((a1 + 88));
      v10 = *(a1 + 200);
      buf = 136315650;
      *buf_4 = v8;
      *&buf_4[8] = 2080;
      *&buf_4[10] = v9;
      v27 = 2048;
      v28 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [%s] Retrying last request now: %s, header-size: %zu", &buf, 0x20u);
    }

    if (*(a1 + 200))
    {
      v11 = *(a1 + 184);
      if (v11 != (a1 + 192))
      {
        do
        {
          v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = (*(*a1 + 72))(a1);
            v14 = v11 + 4;
            if (v13)
            {
              v15 = "C";
            }

            else
            {
              v15 = "NC";
            }

            if (*(v11 + 55) < 0)
            {
              v14 = *v14;
            }

            v16 = v11 + 7;
            if (*(v11 + 79) < 0)
            {
              v16 = *v16;
            }

            buf = 136315650;
            *buf_4 = v15;
            *&buf_4[8] = 2080;
            *&buf_4[10] = v14;
            v27 = 2080;
            v28 = v16;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I [%s] fHeaders = %s: %s", &buf, 0x20u);
          }

          v17 = v11[1];
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
              v18 = v11[2];
              v19 = *v18 == v11;
              v11 = v18;
            }

            while (!v19);
          }

          v11 = v18;
        }

        while (v18 != (a1 + 192));
      }
    }

    sub_1007DF9AC(v24, a1 + 224);
    sub_1007DF95C(__p, (a1 + 304));
    LazuliProvisioningWebHelper::runWithTimeout(a1, (a1 + 88), (a1 + 160), a1 + 184, v24, __p);
    if (v22 == 1 && v21 < 0)
    {
      operator delete(__p[0]);
    }

    sub_100416C34(v24);
  }
}

void sub_1007DB358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  sub_10002B644(&a19);
  sub_100004A34(v25);
  _Unwind_Resume(a1);
}

void LazuliProvisioningWebHelper::runWithTimeout(uint64_t a1, _DWORD *a2, std::string *__str, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 88) = *a2;
  std::string::operator=((a1 + 160), __str);
  if (a1 + 184 != a4)
  {
    sub_10078CA48((a1 + 184), *a4, (a4 + 8));
  }

  sub_1007DBE64((a1 + 224), a5);
  sub_10012BF3C((a1 + 304), a6);
  CurrentConfig = LazuliProvisioningWebHelper::getCurrentConfig(a1);
  v55[1] = 0;
  v56 = 0;
  ctu::Http::HttpRequest::create();
  v12 = *(a1 + 216);
  *(a1 + 208) = *buf;
  v13 = (a1 + 208);
  *buf = 0;
  *&buf[8] = 0;
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (v56)
  {
    sub_100004A34(v56);
  }

  if (*v13)
  {
    sub_100A99478(*(a1 + 100), (a1 + 104), (a1 + 208));
    v14 = (a1 + 208);
    (*(**(a1 + 208) + 96))(*(a1 + 208), 120.0);
    (*(**v14 + 208))(*v14, 1);
    (*(**v14 + 8))(*v14, *(a1 + 24));
    (*(**v14 + 232))(*v14, 1);
    if (*(a6 + 24) == 1)
    {
      v15 = *(a6 + 23);
      if (v15 < 0)
      {
        v16 = *a6;
        v15 = *(a6 + 8);
      }

      else
      {
        v16 = a6;
      }

      memset(buf, 0, sizeof(buf));
      sub_1002853E4(buf, v16, &v16[v15], v15);
      (*(**v13 + 56))(*v13, buf);
      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }
    }

    v55[0] = 0;
    sub_100A99D70(a1 + 120, (a1 + 40), v55);
    if (v55[0])
    {
      v20 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = (*(*a1 + 72))(a1);
        Count = CFArrayGetCount(v55[0]);
        v23 = "NC";
        if (v21)
        {
          v23 = "C";
        }

        *buf = 136315394;
        *&buf[4] = v23;
        *&buf[12] = 2048;
        *&buf[14] = Count;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I [%s] Setting trust anchor certificates (%ld) from carrier bundle", buf, 0x16u);
      }

      (*(**v13 + 72))(*v13, v55[0]);
    }

    sub_100010250(v55);
    v25 = CurrentConfig[51];
    v24 = CurrentConfig + 51;
    if (sub_1004CE02C(v25))
    {
      (*(**v13 + 152))(*v13, kCTDataConnectionServiceTypeInternet);
    }

    sub_100004AA0(buf, (a1 + 8));
    v27 = *buf;
    v26 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v26);
    }

    v28 = *(a1 + 208);
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 1174405120;
    v53[2] = sub_1007DBED8;
    v53[3] = &unk_101E80048;
    v53[4] = a1;
    v53[5] = v27;
    v54 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v28 + 16))(v28, v53);
    v29 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = (*(*a1 + 72))(a1);
      v31 = sub_1004CDF60(v24);
      v32 = "NC";
      if (v30)
      {
        v32 = "C";
      }

      *buf = 136315394;
      *&buf[4] = v32;
      *&buf[12] = 2080;
      *&buf[14] = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I [%s] Starting web request on: %s", buf, 0x16u);
    }

    v33 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    v34 = *(a6 + 24);
    if (v34 == 1)
    {
      if (*(a6 + 23) < 0)
      {
        sub_100005F2C(buf, *a6, *(a6 + 8));
      }

      else
      {
        *buf = *a6;
        *&buf[16] = *(a6 + 16);
      }
    }

    else
    {
      memset(buf, 0, sizeof(buf));
    }

    sub_100A95200(v33, (a1 + 184), __str, v34, buf);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    v35 = *v13;
    __p[1] = 0;
    v52 = 0;
    __p[0] = 0;
    (*(*v35 + 40))(v35, __p);
    if (SHIBYTE(v52) < 0)
    {
      operator delete(__p[0]);
    }

    v36 = *(a1 + 80);
    if (v36)
    {
      *(a1 + 80) = 0;
      (*(*v36 + 8))(v36);
    }

    *buf = 0;
    *&buf[8] = 0;
    Registry::getTimerService(buf, *(a1 + 104));
    v37 = *buf;
    if (*buf)
    {
      sub_10000501C(v49, "Operation timeout timer");
      v38 = *(a1 + 24);
      object = v38;
      if (v38)
      {
        dispatch_retain(v38);
      }

      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1174405120;
      aBlock[2] = sub_1007DC2A8;
      aBlock[3] = &unk_101E80078;
      aBlock[4] = a1;
      aBlock[5] = v27;
      v46 = v26;
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v47 = _Block_copy(aBlock);
      sub_100D23364(v37, v49, 0, 120000000, &object, &v47);
      v39 = v55[0];
      v55[0] = 0;
      v40 = *(a1 + 80);
      *(a1 + 80) = v39;
      if (v40)
      {
        (*(*v40 + 8))(v40);
        v41 = v55[0];
        v55[0] = 0;
        if (v41)
        {
          (*(*v41 + 8))(v41);
        }
      }

      if (v47)
      {
        _Block_release(v47);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (v50 < 0)
      {
        operator delete(v49[0]);
      }

      if (v46)
      {
        std::__shared_weak_count::__release_weak(v46);
      }
    }

    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (*(a1 + 80))
    {
      v42 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = (*(*a1 + 72))(a1);
        v44 = "NC";
        if (v43)
        {
          v44 = "C";
        }

        *buf = 136315394;
        *&buf[4] = v44;
        *&buf[12] = 2048;
        *&buf[14] = 120;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I [%s] Operation timeout started for: %lld seconds", buf, 0x16u);
      }
    }

    if (v54)
    {
      std::__shared_weak_count::__release_weak(v54);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_weak(v26);
    }
  }

  else
  {
    v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = (*(*a1 + 72))(a1);
      v19 = "NC";
      if (v18)
      {
        v19 = "C";
      }

      *buf = 136315138;
      *&buf[4] = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I [%s] Invalid web request", buf, 0xCu);
    }
  }
}

void sub_1007DBD3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
{
  if (a37)
  {
    std::__shared_weak_count::__release_weak(a37);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_weak(v37);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1007DBE64(void *a1, uint64_t a2)
{
  sub_1007DF9AC(v4, a2);
  sub_1007DFE54(v4, a1);
  sub_100416C34(v4);
  return a1;
}

void sub_1007DBED8(void *a1, uint64_t *a2)
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
        v8 = *a2;
        if (*a2)
        {
          v9 = *(v5 + 80);
          if (v9)
          {
            *(v5 + 80) = 0;
            (*(*v9 + 8))(v9);
            v8 = *a2;
          }

          *(v5 + 92) = (*(*v8 + 24))(v8);
          LazuliProvisioningWebHelper::handleHttpResponse(v5, a2);
        }

        else
        {
          v10 = *(*(**(v5 + 48) + 16))(*(v5 + 48), *(v5 + 100));
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = (*(*v5 + 72))(v5);
            v12 = "NC";
            if (v11)
            {
              v12 = "C";
            }

            v13 = 136315138;
            v14 = v12;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I [%s] Invalid response received", &v13, 0xCu);
          }
        }
      }

      sub_100004A34(v7);
    }
  }
}

void LazuliProvisioningWebHelper::handleHttpResponse(uint64_t a1, void *a2)
{
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  v5 = a2[1];
  v10 = *a2;
  v11 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100A96920(v4, &v10, a1 + 136);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v6 = (*(**a2 + 24))();
  *(a1 + 92) = v6;
  if (v6 == 503 && *(a1 + 96) == 1)
  {
    v7 = *a2;
    v8 = a2[1];
    v9[0] = v7;
    v9[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LazuliProvisioningWebHelper::response503(a1, v9);
    if (v8)
    {
      sub_100004A34(v8);
    }
  }

  else if (*(a1 + 248))
  {
    v12 = 0u;
    v13 = 0u;
    sub_1007DF9AC(&v12, a1 + 224);
    sub_1007E00C0(a1 + 224);
    if (!*(&v13 + 1))
    {
      sub_100022DB4();
    }

    (*(**(&v13 + 1) + 48))(*(&v13 + 1), a2);
    sub_100416C34(&v12);
  }
}

void sub_1007DC238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v14 = v13;
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007DC27C(uint64_t result, uint64_t a2)
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

void sub_1007DC298(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1007DC2A8(void *a1)
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
        v6 = *(*(**(v3 + 6) + 16))(*(v3 + 6), *(v3 + 25));
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = (*(*v3 + 72))(v3);
          v8 = "NC";
          if (v7)
          {
            v8 = "C";
          }

          v10 = 136315138;
          v11 = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [%s] Operation timed out", &v10, 0xCu);
        }

        LazuliProvisioningWebHelper::handleTimeout(v3);
        v9 = *(v3 + 10);
        *(v3 + 10) = 0;
        if (v9)
        {
          (*(*v9 + 8))(v9);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void LazuliProvisioningWebHelper::handleTimeout(LazuliProvisioningWebHelper *this)
{
  v2 = *(this + 43);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(this + 42);
      if (v4)
      {
        v11 = 13;
        LazuliProvisioningServerWrapper::submitMetricForPhase(v4, this + 22, 0, &v11, 0, 0);
        RetryDelayAndIncrementCount = LazuliProvisioningServerWrapper::getRetryDelayAndIncrementCount(v4);
        v6 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 25));
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = (*(*this + 72))(this);
          v8 = "NC";
          if (v7)
          {
            v8 = "C";
          }

          v11 = 136315394;
          v12 = v8;
          v13 = 2048;
          v14 = RetryDelayAndIncrementCount;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [%s] Retry for timeout scheduled after %llds", &v11, 0x16u);
        }

        LazuliProvisioningWebHelper::retryLastRequest(this, RetryDelayAndIncrementCount, 1);
LABEL_13:
        sub_100004A34(v3);
        return;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v9 = (*(**(this + 6) + 16))(*(this + 6), *(this + 25));
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    v10 = (*(*this + 72))(this);
    sub_10177F3A0(v10, &v11);
  }

  if (v3)
  {
    goto LABEL_13;
  }
}

void LazuliProvisioningWebHelper::getCookie(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_10000501C(__p, "Set-Cookie");
  v4 = sub_10038F068(a1, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (a1 + 8 == v4)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else if (*(v4 + 79) < 0)
  {
    sub_100005F2C(a2, *(v4 + 56), *(v4 + 64));
  }

  else
  {
    v5 = *(v4 + 56);
    *(a2 + 16) = *(v4 + 72);
    *a2 = v5;
  }
}

void sub_1007DC710(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LazuliProvisioningWebHelper::response503(uint64_t a1, uint64_t a2)
{
  v60 = 0;
  v61[0] = 0;
  v61[1] = 0;
  (*(**a2 + 56))(&v60);
  sub_10000501C(&__p, "Retry-After");
  v4 = sub_10038F068(&v60, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v61 == v4)
  {
    v7 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v8 = (*(*a1 + 72))(a1);
      sub_10177F3F0(v8, &__dst);
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    memset(&__str, 0, sizeof(__str));
    sub_10000501C(&__p, "Retry-After");
    v5 = sub_100732A58(&v60, &__p);
    if (*(v5 + 23) < 0)
    {
      sub_100005F2C(&__str, *v5, *(v5 + 8));
    }

    else
    {
      v6 = *v5;
      __str.__r_.__value_.__r.__words[2] = *(v5 + 16);
      *&__str.__r_.__value_.__l.__data_ = v6;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = __str.__r_.__value_.__l.__size_;
      if (__str.__r_.__value_.__l.__size_)
      {
        p_str = __str.__r_.__value_.__r.__words[0];
        goto LABEL_17;
      }
    }

    else if (*(&__str.__r_.__value_.__s + 23))
    {
      p_str = &__str;
LABEL_17:
      while (1)
      {
        v14 = p_str->__r_.__value_.__s.__data_[0];
        if (v14 < 0 || (_DefaultRuneLocale.__runetype[v14] & 0x400) == 0)
        {
          break;
        }

        p_str = (p_str + 1);
        if (!--size)
        {
          v15 = std::stoi(&__str, 0, 10);
          v16 = v15 >> 8;
          v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = (*(*a1 + 72))(a1);
            v19 = "NC";
            if (v18)
            {
              v19 = "C";
            }

            LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
            *(__p.__r_.__value_.__r.__words + 4) = v19;
            WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
            __p.__r_.__value_.__s.__data_[14] = v15;
            *(&__p.__r_.__value_.__r.__words[1] + 7) = v15 >> 8;
            *(&__p.__r_.__value_.__r.__words[2] + 1) = (v15 >> 8) >> 16;
            __p.__r_.__value_.__s.__data_[21] = (v15 >> 8) >> 48;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I [%s] Retry-After: %lu", &__p, 0x16u);
          }

          v9 = 1;
          LOBYTE(v20) = v15;
          goto LABEL_44;
        }
      }
    }

    sub_10000501C(&__p, "Date");
    v21 = sub_10038F068(&v60, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v61 == v21)
    {
      v24 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v52 = (*(*a1 + 72))(a1);
        v53 = "NC";
        if (v52)
        {
          v53 = "C";
        }

        v54 = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v54 = __str.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
        *(__p.__r_.__value_.__r.__words + 4) = v53;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2082;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v54;
        _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%s] Retry-After: %{public}s cannot be used as server date is not known.", &__p, 0x16u);
      }

      v9 = 0;
      v16 = 0;
      LOBYTE(v20) = 0;
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
      sub_10000501C(&__p, "Date");
      v22 = sub_100732A58(&v60, &__p);
      if (*(v22 + 23) < 0)
      {
        sub_100005F2C(&__dst, *v22, *(v22 + 8));
      }

      else
      {
        v23 = *v22;
        __dst.__r_.__value_.__r.__words[2] = *(v22 + 16);
        *&__dst.__r_.__value_.__l.__data_ = v23;
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v25 = sub_100A93E5C(&__str);
      v26 = sub_100A93E5C(&__dst);
      v20 = v25 - v26;
      v9 = v25 > v26;
      if (v25 <= v26)
      {
        v30 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v55 = (*(*a1 + 72))(a1);
          v56 = "NC";
          if (v55)
          {
            v56 = "C";
          }

          v57 = &__str;
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v57 = __str.__r_.__value_.__r.__words[0];
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 136315650;
          p_dst = &__dst;
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          *(__p.__r_.__value_.__r.__words + 4) = v56;
          WORD2(__p.__r_.__value_.__r.__words[1]) = 2082;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = v57;
          HIWORD(__p.__r_.__value_.__r.__words[2]) = 2082;
          v64 = p_dst;
          _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "[%s] Retry-After: %{public}s & Date: %{public}s invalid", &__p, 0x20u);
        }

        v16 = 0;
        LOBYTE(v20) = 0;
      }

      else
      {
        v16 = v20 >> 8;
        v27 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = (*(*a1 + 72))(a1);
          v29 = "NC";
          if (v28)
          {
            v29 = "C";
          }

          LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
          *(__p.__r_.__value_.__r.__words + 4) = v29;
          WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
          *(&__p.__r_.__value_.__r.__words[1] + 6) = v20;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I [%s] Retry-After (calculated) : %lu", &__p, 0x16u);
        }
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

LABEL_44:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v10 = v16 << 8;
    v11 = v20;
  }

  memset(&__p, 0, sizeof(__p));
  (*(**a2 + 56))(v59);
  LazuliProvisioningWebHelper::getCookie(v59, &__p);
  sub_1000DD0AC(v59, v59[1]);
  v31 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v31 = __p.__r_.__value_.__l.__size_;
  }

  if (v31)
  {
    sub_10000501C(&__str, "Cookie");
    v32 = sub_10038F068(a1 + 184, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    if (a1 + 192 != v32)
    {
      v33 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v33 = __p.__r_.__value_.__l.__size_;
      }

      if (v33)
      {
        sub_10000501C(&__str, "Cookie");
        v62[0] = &__str;
        v34 = sub_100416DA4((a1 + 184), &__str, &unk_101802C98, v62);
        std::string::operator=((v34 + 56), &__p);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v35 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = (*(*a1 + 72))(a1);
          v37 = "NC";
          if (v36)
          {
            v37 = "C";
          }

          LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
          *(__str.__r_.__value_.__r.__words + 4) = v37;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I [%s] New cookie stored for 503 retry", &__str, 0xCu);
        }
      }
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v9)
    {
      goto LABEL_64;
    }
  }

  else if (v9)
  {
LABEL_64:
    RetryDelayAndIncrementCount = v11 | v10;
    goto LABEL_65;
  }

  v47 = *(a1 + 344);
  if (!v47)
  {
    v44 = 0;
    goto LABEL_81;
  }

  v44 = std::__shared_weak_count::lock(v47);
  if (!v44 || (v48 = *(a1 + 336)) == 0)
  {
LABEL_81:
    v49 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = (*(*a1 + 72))(a1);
      v51 = "NC";
      if (v50)
      {
        v51 = "C";
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = v51;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I [%s] Server wrapper missing", &__p, 0xCu);
    }

    if (v44)
    {
      goto LABEL_86;
    }

    goto LABEL_87;
  }

  RetryDelayAndIncrementCount = LazuliProvisioningServerWrapper::getRetryDelayAndIncrementCount(v48);
  sub_100004A34(v44);
LABEL_65:
  v39 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = (*(*a1 + 72))(a1);
    v41 = "NC";
    if (v40)
    {
      v41 = "C";
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 136315394;
    *(__p.__r_.__value_.__r.__words + 4) = v41;
    WORD2(__p.__r_.__value_.__r.__words[1]) = 2048;
    *(&__p.__r_.__value_.__r.__words[1] + 6) = RetryDelayAndIncrementCount;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I [%s] Retrying operation after: %lu seconds", &__p, 0x16u);
  }

  v42 = *(a1 + 344);
  if (v42)
  {
    v43 = std::__shared_weak_count::lock(v42);
    if (v43)
    {
      v44 = v43;
      v45 = *(a1 + 336);
      if (v45)
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 10;
        LazuliProvisioningServerWrapper::submitMetricForPhase(v45, (a1 + 88), 0x1000001F7, &__p, RetryDelayAndIncrementCount, 1);
        sub_100004AA0(&__p, (a1 + 8));
        v46 = __p.__r_.__value_.__l.__size_;
        if (__p.__r_.__value_.__l.__size_)
        {
          atomic_fetch_add_explicit((__p.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
          sub_100004A34(v46);
        }

        v62[4] = 0;
        operator new();
      }

LABEL_86:
      sub_100004A34(v44);
    }
  }

LABEL_87:
  sub_1000DD0AC(&v60, v61[0]);
}

void sub_1007DD22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  sub_1000DD0AC(&a12, a13);
  _Unwind_Resume(a1);
}

void LazuliProvisioningWebHelper::responseUnknown(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**a2 + 72))(&v23);
  v6 = sub_100A9A264(&v23);
  sub_1003A5A8C(&v23);
  if (v6)
  {
    v7 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      sub_10177F460();
    }

    v8 = *(a1 + 344);
    if (v8)
    {
      v9 = std::__shared_weak_count::lock(v8);
      if (v9)
      {
        v10 = *(a1 + 336);
        if (v10)
        {
          v11 = (*(**a2 + 24))();
          v23 = 15;
          LazuliProvisioningServerWrapper::submitMetricForPhase(v10, (a1 + 88), v11 | &_mh_execute_header, &v23, 0, 0);
          v23 = 3;
          LazuliProvisioningServerWrapper::failedFatally(v10, &v23);
        }
      }
    }

    else
    {
      v9 = 0;
    }

    v19 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
    {
      v20 = (*(*a1 + 72))(a1);
      sub_10177F514(v20, &v23);
    }

    goto LABEL_22;
  }

  sub_1007DBE64((a1 + 224), a3);
  v12 = (*(**a2 + 24))();
  v13 = *(a1 + 344);
  if (!v13)
  {
    v9 = 0;
    goto LABEL_20;
  }

  v9 = std::__shared_weak_count::lock(v13);
  if (!v9 || (v14 = *(a1 + 336)) == 0)
  {
LABEL_20:
    v21 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      v22 = (*(*a1 + 72))(a1);
      sub_10177F3A0(v22, &v23);
    }

LABEL_22:
    if (!v9)
    {
      return;
    }

    goto LABEL_23;
  }

  RetryDelayAndIncrementCount = LazuliProvisioningServerWrapper::getRetryDelayAndIncrementCount(*(a1 + 336));
  v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = (*(*a1 + 72))(a1);
    v18 = "NC";
    v23 = 136315650;
    if (v17)
    {
      v18 = "C";
    }

    v24 = v18;
    v25 = 1024;
    v26 = v12;
    v27 = 2048;
    v28 = RetryDelayAndIncrementCount;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I [%s] Will retry for error code: [%d] after %llds", &v23, 0x1Cu);
  }

  v23 = 10;
  LazuliProvisioningServerWrapper::submitMetricForPhase(v14, (a1 + 88), v12 | &_mh_execute_header, &v23, 0, 0);
  LazuliProvisioningWebHelper::retryLastRequest(a1, RetryDelayAndIncrementCount, 1);
LABEL_23:
  sub_100004A34(v9);
}

void LazuliProvisioningWebHelper::scheduleOtpResponse(LazuliProvisioningWebHelper *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void LazuliProvisioningWebHelper::handleOtp(LazuliProvisioningWebHelper *a1, const std::string *a2)
{
  std::string::operator=((a1 + 280), a2);
  v3 = *(a1 + 279);
  if (v3 < 0)
  {
    v3 = *(a1 + 33);
  }

  v4 = *(*(**(a1 + 6) + 16))(*(a1 + 6), *(a1 + 25));
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = (*(*a1 + 72))(a1);
      v6 = "NC";
      if (v5)
      {
        v6 = "C";
      }

      v7 = 136315138;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [%s] OTP recieved. Attestation completed.", &v7, 0xCu);
    }

    LazuliProvisioningWebHelper::scheduleOtpResponse(a1);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10177F564();
  }
}

void LazuliProvisioningWebHelper::handleDeprovisioningComplete(uint64_t a1, uint64_t a2)
{
  v4 = (*(**a2 + 24))();
  v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
  if (v4 == 511)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10177F614();
    }

    *buf = 0u;
    v20 = 0u;
    (*(**a2 + 56))(v17);
    LazuliProvisioningWebHelper::getFailureReasonsFrom511Response(a1, v17, buf);
    sub_1000DD0AC(v17, v17[1]);
    sub_100416748(__p, buf);
    LazuliProvisioningWebHelper::showAlertIfNeeded(a1, __p);
    if (v16 == 1 && __p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (BYTE8(v20) == 1 && *buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }
  }

  else
  {
    if (v4 == 200)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = (*(*a1 + 72))(a1);
        v7 = "NC";
        if (v6)
        {
          v7 = "C";
        }

        *buf = 136315138;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [%s] Received 200 OK", buf, 0xCu);
      }

      v8 = *(a1 + 344);
      if (v8)
      {
        v9 = std::__shared_weak_count::lock(v8);
        if (v9)
        {
          v10 = v9;
          v11 = *(a1 + 336);
          if (v11)
          {
            v18 = 10;
            *buf = 6;
            LazuliProvisioningServerWrapper::submitMetricForPhase(v11, buf, 0x1000000C8, &v18, 0, 0);
            LazuliProvisioningServerWrapper::handleDeprovisioningComplete(v11, 1);
          }

LABEL_25:
          sub_100004A34(v10);
          return;
        }
      }

      return;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_10177F6C4();
    }
  }

  v12 = *(a1 + 344);
  if (v12)
  {
    v13 = std::__shared_weak_count::lock(v12);
    if (v13)
    {
      v10 = v13;
      v14 = *(a1 + 336);
      if (v14)
      {
        v18 = 10;
        *buf = 6;
        LazuliProvisioningServerWrapper::submitMetricForPhase(v14, buf, v4 | &_mh_execute_header, &v18, 0, 0);
        LazuliProvisioningServerWrapper::handleDeprovisioningComplete(v14, 0);
      }

      goto LABEL_25;
    }
  }
}

void LazuliProvisioningWebHelper::getFailureReasonsFrom511Response(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10000501C(__p, "X-Acs-Token-Request-Failure-Reasons");
  v6 = sub_10038F068(a2, __p);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (a2 + 8 == v6)
  {
    *a3 = 0;
    *(a3 + 24) = 0;
  }

  else
  {
    v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = (*(*a1 + 72))(a1);
      v9 = "C";
      if (!v8)
      {
        v9 = "NC";
      }

      v10 = (v6 + 56);
      if (*(v6 + 79) < 0)
      {
        v10 = *v10;
      }

      *__p = 136315394;
      *&__p[4] = v9;
      *&__p[12] = 2082;
      *&__p[14] = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [%s] Received '%{public}s' as failure reason(s) in 511 response", __p, 0x16u);
    }

    sub_1004CE574(__p, (v6 + 56));
    *a3 = *__p;
    *(a3 + 16) = *&__p[16];
    *(a3 + 24) = 1;
  }
}

void sub_1007DDEEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LazuliProvisioningWebHelper::showAlertIfNeeded(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    __p = 0;
    v31 = 0;
    v32 = 0;
    sub_1004167EC(&__p, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    if ((sub_1004CE578(&__p) & 1) == 0)
    {
LABEL_27:
      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }

      return;
    }

    v3 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (*(*a1 + 72))(a1);
      v5 = "NC";
      if (v4)
      {
        v5 = "C";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v5;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I [%s] Need to show 'Phone Number Added To Device' alert", &buf, 0xCu);
    }

    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v7 = dispatch_queue_create("lazuli.alert", v6);
    ServiceMap = Registry::getServiceMap(*(a1 + 104));
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
    *&buf = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &buf);
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
        if (!v16)
        {
LABEL_13:
          v18 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
          if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
          {
            v19 = (*(*a1 + 72))(a1);
            sub_10177F7D4(v19, &buf);
          }

          if ((v17 & 1) == 0)
          {
            sub_100004A34(v15);
          }

          if (v7)
          {
            dispatch_release(v7);
          }

          goto LABEL_27;
        }

LABEL_17:
        v29 = 0;
        v20 = kCellularLocalizationTable;
        (*(*v16 + 40))(&v29, v16, kCellularLocalizationTable, kCellularLocalizationLazuliPhoneNumberAddedToDeviceTitle, 0);
        v28 = 0;
        (*(*v16 + 40))(&v28, v16, v20, kCellularLocalizationLazuliPhoneNumberAddedToDeviceMessage, 0);
        if (!v29 || !v28)
        {
          v21 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 100));
          if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
          {
            v22 = (*(*a1 + 72))(a1);
            sub_10177F784(v22, v34);
          }

          v23 = CFStringCreateWithCString(kCFAllocatorDefault, "Phone Number Added to Device", 0x8000100u);
          v24 = v29;
          v29 = v23;
          *&buf = v24;
          sub_100005978(&buf);
          v25 = CFStringCreateWithCString(kCFAllocatorDefault, "Your phone number is now being used on another device. If you didn't add your number to another device, contact your carrier immediately for support.", 0x8000100u);
          v26 = v28;
          v28 = v25;
          *&buf = v26;
          sub_100005978(&buf);
        }

        v27 = 0;
        (*(*v16 + 40))(&v27, v16, v20, kCellularLocalizationLazuliPhoneNumberAddedToDeviceAlertOk, @"OK");
        buf = 0uLL;
        UserAlertGenerationInterface::create();
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    if (!v16)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }
}

void sub_1007DE518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, const void *a14, const void *a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100005978(&a14);
  sub_100005978(&a15);
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  if (v23)
  {
    dispatch_release(v23);
  }

  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void LazuliProvisioningWebHelper::resetTimers(LazuliProvisioningWebHelper *this)
{
  v2 = *(this + 43);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 42);
      if (v5)
      {
        LazuliProvisioningServerWrapper::resetRetryTimer(v5);
      }

      sub_100004A34(v4);
    }
  }
}

void LazuliProvisioningWebHelper::handleOtpReceptionTimeout(LazuliProvisioningWebHelper *this)
{
  v2 = *(this + 43);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3 && *(this + 42))
    {
      RetryDelayAndIncrementCount = LazuliProvisioningServerWrapper::getRetryDelayAndIncrementCount(*(this + 42));
      v5 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 25));
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = (*(*this + 72))(this);
        v7 = "NC";
        if (v6)
        {
          v7 = "C";
        }

        buf = 136315394;
        *buf_4 = v7;
        *&buf_4[8] = 2048;
        *&buf_4[10] = RetryDelayAndIncrementCount;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [%s] OTP reception timeout, next retry after: %llds", &buf, 0x16u);
      }

      sub_100004AA0(&buf, this + 1);
      v8 = *&buf_4[4];
      if (*&buf_4[4])
      {
        atomic_fetch_add_explicit((*&buf_4[4] + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(v8);
      }

      operator new();
    }
  }

  else
  {
    v3 = 0;
  }

  v9 = (*(**(this + 6) + 16))(*(this + 6), *(this + 25));
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    v10 = (*(*this + 72))(this);
    sub_10177F3A0(v10, &buf);
  }

  if (v3)
  {
    sub_100004A34(v3);
  }
}

void LazuliProvisioningWebHelper::startOtpReceptionTimer(LazuliProvisioningWebHelper *this)
{
  v2 = *(this + 43);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (*(this + 42))
      {
        sub_100004AA0(&v6, this + 1);
        v4 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v4);
        }

        sub_100004AA0(&v6, this + 1);
        v5 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v5);
        }

        v8 = 0;
        operator new();
      }

      sub_100004A34(v3);
    }
  }
}

void sub_1007DEA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10002B644(va);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  sub_100004A34(v7);
  _Unwind_Resume(a1);
}

void LazuliProvisioningWebHelper::restartProvisioning(LazuliProvisioningServerWrapper **this, int a2)
{
  LazuliProvisioningWebHelper::resetTimers(this);
  v4 = this[43];
  if (a2)
  {
    if (v4)
    {
      v5 = std::__shared_weak_count::lock(v4);
      if (v5)
      {
        v6 = v5;
        v7 = this[42];
        if (v7)
        {
          v8 = *(*(*this[6] + 16))(this[6], *(this + 25));
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = (*(*this + 9))(this);
            v10 = "NC";
            if (v9)
            {
              v10 = "C";
            }

            buf = 136315138;
            *buf_4 = v10;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [%s] Restarting provisioning (one-time instantaneous retry)", &buf, 0xCu);
          }

          LazuliProvisioningServerWrapper::restartProvisioning(v7);
        }

LABEL_26:
        sub_100004A34(v6);
      }
    }
  }

  else
  {
    if (v4)
    {
      v6 = std::__shared_weak_count::lock(v4);
      if (v6 && this[42])
      {
        RetryDelayAndIncrementCount = LazuliProvisioningServerWrapper::getRetryDelayAndIncrementCount(this[42]);
        v12 = *(*(*this[6] + 16))(this[6], *(this + 25));
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = (*(*this + 9))(this);
          v14 = "NC";
          if (v13)
          {
            v14 = "C";
          }

          buf = 136315394;
          *buf_4 = v14;
          *&buf_4[8] = 2048;
          *&buf_4[10] = RetryDelayAndIncrementCount;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I [%s] Restarting provisioning, next retry after: %llds", &buf, 0x16u);
        }

        sub_100004AA0(&buf, this + 1);
        v15 = *&buf_4[4];
        if (*&buf_4[4])
        {
          atomic_fetch_add_explicit((*&buf_4[4] + 16), 1uLL, memory_order_relaxed);
          sub_100004A34(v15);
        }

        sub_100004AA0(&buf, this + 1);
        v16 = *&buf_4[4];
        if (*&buf_4[4])
        {
          atomic_fetch_add_explicit((*&buf_4[4] + 16), 1uLL, memory_order_relaxed);
          sub_100004A34(v16);
        }

        operator new();
      }
    }

    else
    {
      v6 = 0;
    }

    v17 = (*(*this[6] + 16))(this[6], *(this + 25));
    if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      v18 = (*(*this + 9))(this);
      sub_10177F3A0(v18, &buf);
    }

    if (v6)
    {
      goto LABEL_26;
    }
  }
}

void LazuliProvisioningWebHelper::runLastAccess(LazuliProvisioningWebHelper *this, int a2)
{
  if (a2)
  {
    v3 = 15166;
  }

  else
  {
    v3 = 15358;
  }

  v16 = v3;
  if (((*(*this + 72))(this) & 1) == 0)
  {
    v16 = v3 | 0x30000;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  LazuliProvisioningWebHelper::getHeaders(&v13, this, &v16);
  sub_10000501C(&__p, "rcs_state");
  p_p = &__p;
  v4 = sub_100416DA4(&v13, &__p, &unk_101802C98, &p_p);
  if (*(v4 + 79) < 0)
  {
    *(v4 + 64) = 2;
    v5 = *(v4 + 56);
  }

  else
  {
    v5 = (v4 + 56);
    *(v4 + 79) = 2;
  }

  strcpy(v5, "-4");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_100A9C1EC(this + 136, &v13, &__p);
  v11[0] = 0;
  v11[1] = 0;
  aBlock[4] = this;
  p_p = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_1007DF168;
  aBlock[3] = &unk_101E800A8;
  v18 = 0;
  v17[0] = off_101E4BC98;
  v17[1] = _Block_copy(aBlock);
  v18 = v17;
  LOBYTE(v6) = 0;
  v8 = 0;
  LazuliProvisioningWebHelper::runWithTimeout(this, this + 22, &__p, &p_p, v17, &v6);
  if (v8 == 1 && v7 < 0)
  {
    operator delete(v6);
  }

  sub_100416C34(v17);
  sub_1000DD0AC(&p_p, v11[0]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  sub_1000DD0AC(&v13, v14);
}

void sub_1007DF0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  sub_100416C34(v30 - 56);
  sub_1000DD0AC(&a22, a23);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  sub_1000DD0AC(v30 - 96, *(v30 - 88));
  _Unwind_Resume(a1);
}

BOOL LazuliProvisioningWebHelper::requiresPSAccess(uint64_t a1, uint64_t a2)
{
  sub_10000501C(__p, "X-Failed-Reason");
  v3 = sub_10038F068(a2, __p);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  if (a2 + 8 != v3)
  {
    v4 = *(v3 + 79);
    if (v4 < 0)
    {
      v5 = *(v3 + 56);
      v4 = *(v3 + 64);
    }

    else
    {
      v5 = (v3 + 56);
    }

    if (v4 >= 12)
    {
      v6 = &v5[v4];
      v7 = v5;
      do
      {
        v8 = memchr(v7, 78, v4 - 11);
        if (!v8)
        {
          break;
        }

        if (*v8 == 0x634153506465654ELL && *(v8 + 2) == 1936942435)
        {
          return v8 != v6 && v8 - v5 != -1;
        }

        v7 = v8 + 1;
        v4 = v6 - v7;
      }

      while (v6 - v7 >= 12);
    }
  }

  return 0;
}

void sub_1007DF270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LazuliProvisioningWebHelper::describe(LazuliProvisioningWebHelper *this)
{
  v2 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 25));
  v3 = "NC";
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(*this + 72))(this))
    {
      v4 = "C";
    }

    else
    {
      v4 = "NC";
    }

    *buf = 136315394;
    v27 = v4;
    v28 = 2080;
    v29 = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [%s] slot: %s", buf, 0x16u);
  }

  v5 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 25));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(*this + 72))(this))
    {
      v6 = "C";
    }

    else
    {
      v6 = "NC";
    }

    v7 = (this + 136);
    if (*(this + 159) < 0)
    {
      v7 = *v7;
    }

    *buf = 136315394;
    v27 = v6;
    v28 = 2080;
    v29 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [%s] url: %s", buf, 0x16u);
  }

  v8 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 25));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(*this + 72))(this))
    {
      v9 = "C";
    }

    else
    {
      v9 = "NC";
    }

    v10 = (this + 160);
    if (*(this + 183) < 0)
    {
      v10 = *v10;
    }

    *buf = 136315394;
    v27 = v9;
    v28 = 2080;
    v29 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [%s] last used url: %s", buf, 0x16u);
  }

  v11 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 25));
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(*this + 72))(this))
    {
      v12 = "C";
    }

    else
    {
      v12 = "NC";
    }

    v13 = "YES";
    v14 = *(this + 31);
    if (*(this + 26))
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    *buf = 136315650;
    v27 = v12;
    v28 = 2080;
    if (!v14)
    {
      v13 = "NO";
    }

    v29 = v15;
    v30 = 2080;
    v31 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [%s] web-request: %s, callback: %s", buf, 0x20u);
  }

  v16 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 25));
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(*this + 72))(this))
    {
      v17 = "C";
    }

    else
    {
      v17 = "NC";
    }

    v18 = (this + 256);
    if (*(this + 279) < 0)
    {
      v18 = *v18;
    }

    *buf = 136315394;
    v27 = v17;
    v28 = 2080;
    v29 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I [%s] last-cookie: %s", buf, 0x16u);
  }

  v19 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 25));
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(*this + 72))(this))
    {
      v20 = "C";
    }

    else
    {
      v20 = "NC";
    }

    v21 = *(this + 23);
    *buf = 136315394;
    v27 = v20;
    v28 = 1024;
    LODWORD(v29) = v21;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I [%s] last-response-code: %d", buf, 0x12u);
  }

  v22 = *(*(**(this + 6) + 16))(*(this + 6), *(this + 25));
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    if ((*(*this + 72))(this))
    {
      v3 = "C";
    }

    v23 = "(none)";
    if (*(this + 376) == 1)
    {
      v23 = this + 352;
      if (*(this + 375) < 0)
      {
        v23 = *v23;
      }
    }

    if (*(this + 388) == 1)
    {
      std::to_string(&v25, *(this + 96));
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v25;
      }

      else
      {
        v24 = v25.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v27 = v3;
      v28 = 2080;
      v29 = v23;
      v30 = 2080;
      v31 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I [%s] token: %s, Version: %s", buf, 0x20u);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *buf = 136315650;
      v27 = v3;
      v28 = 2080;
      v29 = v23;
      v30 = 2080;
      v31 = "(none)";
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I [%s] token: %s, Version: %s", buf, 0x20u);
    }
  }
}

unsigned __int8 *sub_1007DF8F4(void *a1, unsigned __int8 *a2, char *a3)
{
  result = memchr(a1, *a3, a2 - a1);
  if (!result)
  {
    result = a2;
  }

  v6 = result + 1;
  if (result != a2 && v6 != a2)
  {
    do
    {
      v8 = *v6;
      if (v8 != *a3)
      {
        *result++ = v8;
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return result;
}

uint64_t sub_1007DF95C(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_10006F35C(a1, a2);
  return a1;
}

void sub_1007DF98C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    sub_1017633D8(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007DF9AC(uint64_t a1, uint64_t a2)
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

void *sub_1007DFA44(void *a1)
{
  *a1 = off_101E801D0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1007DFA90(void *a1)
{
  *a1 = off_101E801D0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_1007DFB70(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101E801D0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_1007DFBB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1007DFBC0(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1007DFC00(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(v3 + 100));
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = (*(*v3 + 72))(v3);
          v8 = sub_100701D5C((v3 + 88));
          v9 = "NC";
          v10 = *(v3 + 200);
          *buf = 136315650;
          if (v7)
          {
            v9 = "C";
          }

          v15 = v9;
          v16 = 2080;
          v17 = v8;
          v18 = 2048;
          v19 = v10;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [%s] Retrying last request: %s, header-size: %zu", buf, 0x20u);
        }

        sub_1007DF9AC(buf, v3 + 224);
        sub_1007DF95C(__p, (v3 + 304));
        LazuliProvisioningWebHelper::runWithTimeout(v3, (v3 + 88), (v3 + 160), v3 + 184, buf, __p);
        if (v13 == 1 && v12 < 0)
        {
          operator delete(__p[0]);
        }

        sub_100416C34(buf);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1007DFDB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, __int16 a17, char a18, char a19)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  sub_100416C34(&a17);
  sub_100004A34(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1007DFE08(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1007DFE54(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1007E00B4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_1007E00C0(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

void *sub_1007E0144(void *a1)
{
  *a1 = off_101E80250;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1007E0190(void *a1)
{
  *a1 = off_101E80250;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_1007E0270(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101E80250;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_1007E02B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1007E02C0(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1007E0300(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(v3 + 100));
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = (*(*v3 + 72))(v3);
          v8 = "NC";
          if (v7)
          {
            v8 = "C";
          }

          v9 = 136315138;
          v10 = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [%s] Retrying on 503 retry-after", &v9, 0xCu);
        }

        LazuliProvisioningWebHelper::retryLastRequest(v3, 0, 0);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1007E0464(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1007E04B0(uint64_t **a1)
{
  v2 = a1;
  v1 = **a1;
  memset(&__str, 0, sizeof(__str));
  sub_100A9C400(v1 + 280, &__str);
  __dst[0] = 0;
  __dst[1] = 0;
  v9 = 0;
  if (*(v1 + 279) < 0)
  {
    sub_100005F2C(__dst, *(v1 + 256), *(v1 + 264));
  }

  else
  {
    *__dst = *(v1 + 256);
    v9 = *(v1 + 272);
  }

  LazuliProvisioningWebHelper::resetTimers(v1);
  *(v1 + 96) = 1;
  sub_1007E079C(v13, &off_101E802C0, __dst);
  sub_1000DF684(v7, v13, 1);
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_1007E0774;
  aBlock[3] = &unk_101E802C8;
  aBlock[4] = v1;
  v12 = 0;
  v11[0] = off_101E4BC98;
  v11[1] = _Block_copy(aBlock);
  v12 = v11;
  LOBYTE(__p) = 0;
  v5 = 0;
  LazuliProvisioningWebHelper::runWithTimeout(v1, (v1 + 88), &__str, v7, v11, &__p);
  if (v5 == 1 && v4 < 0)
  {
    operator delete(__p);
  }

  sub_100416C34(v11);
  sub_1000DD0AC(v7, v7[1]);
  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  operator delete();
}

void sub_1007E06C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_1007E079C(uint64_t a1, char **a2, __int128 *a3)
{
  sub_10000501C(a1, *a2);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v5;
  }

  return a1;
}

void sub_1007E07F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1007E0810(void *a1)
{
  *a1 = off_101E802F8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1007E085C(void *a1)
{
  *a1 = off_101E802F8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_1007E093C(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101E802F8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_1007E097C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1007E098C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1007E09CC(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        LazuliProvisioningWebHelper::resetTimers(v3);
        (*(*v3 + 32))(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1007E0A7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1007E0AC8(void *a1)
{
  *a1 = off_101E80378;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1007E0B14(void *a1)
{
  *a1 = off_101E80378;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_1007E0BF4(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101E80378;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_1007E0C34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1007E0C44(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1007E0C84(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        LazuliProvisioningWebHelper::handleOtpReceptionTimeout(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1007E0D0C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1007E0D58(void *a1)
{
  *a1 = off_101E803F8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1007E0DA4(void *a1)
{
  *a1 = off_101E803F8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_1007E0E84(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101E803F8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_1007E0EC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1007E0ED4(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1007E0F14(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = *(v3 + 344);
        if (v6)
        {
          v7 = std::__shared_weak_count::lock(v6);
          if (v7)
          {
            v8 = v7;
            v9 = *(v3 + 336);
            if (v9)
            {
              v10 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(v3 + 100));
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                v11 = (*(*v3 + 72))(v3);
                v12 = "NC";
                if (v11)
                {
                  v12 = "C";
                }

                v13 = 136315138;
                v14 = v12;
                _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I [%s] Restarting provisioning", &v13, 0xCu);
              }

              LazuliProvisioningServerWrapper::restartProvisioning(v9);
            }

            sub_100004A34(v8);
          }
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1007E1080(_Unwind_Exception *a1)
{
  sub_100004A34(v2);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1007E10A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1007E10F0(void *a1)
{
  v2 = a1;
  (*(**a1 + 16))(*a1);
  return sub_10024BAAC(&v2);
}

void sub_1007E1148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10024BAAC(va);
  _Unwind_Resume(a1);
}

void sub_1007E122C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E1254(uint64_t a1)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  sub_1015662DC(v5, *(a1 + 16), *(a1 + 24) - *(a1 + 16), *(a1 + 8));
  v3 = 0;
  v4 = 0;
  sub_1015689C4(v5, 1, 0);
}

void sub_1007E1400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, ...)
{
  va_start(va, a20);
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  ctu::OsLogLogger::~OsLogLogger(va);
  _Unwind_Resume(a1);
}

size_t sub_1007E14C4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    v3 = *v3;
  }

  result = strlen(v3);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = result;
  if (result)
  {
    result = memmove(a2, v3, result);
  }

  *(a2 + v5) = 0;
  return result;
}

uint64_t sub_1007E1578(uint64_t *a1, uint64_t a2)
{
  v3 = a1[4];
  if (v3 >= a1[5])
  {
    result = sub_1001FA964(a1 + 3, a2);
  }

  else
  {
    sub_1001C787C(a1[4], a2);
    result = v3 + 128;
    a1[4] = v3 + 128;
  }

  a1[4] = result;
  return result;
}

void sub_1007E15D8(uint64_t *a1, __int128 *a2, __int128 *a3)
{
  sub_1007E1950(__dst, a2, a3);
  v4 = a1[11];
  v5 = a1[12];
  if (v4 >= v5)
  {
    v8 = a1[10];
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v8) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_1000CE3D4();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v8) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    v22[4] = a1 + 10;
    if (v12)
    {
      sub_1001904B4((a1 + 10), v12);
    }

    v13 = 48 * v9;
    v22[0] = 0;
    v22[1] = v13;
    v22[3] = 0;
    v14 = *__dst;
    *(v13 + 16) = v19;
    *v13 = v14;
    __dst[1] = 0;
    v19 = 0;
    __dst[0] = 0;
    v15 = *__p;
    *(v13 + 40) = v21;
    *(v13 + 24) = v15;
    __p[1] = 0;
    v21 = 0;
    __p[0] = 0;
    v22[2] = 48 * v9 + 48;
    sub_1006FAE88(a1 + 10, v22);
    v16 = a1[11];
    sub_1001C7794(v22);
    v17 = SHIBYTE(v21);
    a1[11] = v16;
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = *__dst;
    *(v4 + 16) = v19;
    *v4 = v6;
    __dst[0] = 0;
    __dst[1] = 0;
    v7 = v21;
    *(v4 + 24) = *__p;
    *(v4 + 40) = v7;
    v19 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v21 = 0;
    a1[11] = v4 + 48;
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1007E1754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  sub_1001C7794(va1);
  sub_1000D6F38(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007E1778(uint64_t a1)
{
  *a1 = off_101E80488;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1007E17E8(uint64_t a1)
{
  *a1 = off_101E80488;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  operator delete();
}

void *sub_1007E1878(void *a1)
{
  *a1 = off_101E804D8;
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_1007E18D4(void *a1)
{
  *a1 = off_101E804D8;
  v2 = a1[7];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  operator delete();
}

char *sub_1007E1950(char *__dst, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v6;
  }

  return __dst;
}

void sub_1007E19CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1007E1AAC(void *a1, void *a2, __int128 *a3, unsigned int *a4, __int128 *a5, int *a6, __int128 *a7, uint64_t *a8, char *a9)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E80528;
  sub_100462D68((a1 + 3), a2, a3, *a4, a5, *a6, a7, *a8, *a9);
  return a1;
}

void sub_1007E1B48(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E80528;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1007E1BC4(uint64_t result)
{
  *result = off_101E805B8;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void sub_1007E1BEC(void **a1)
{
  *a1 = off_101E805B8;
  v2 = a1 + 1;
  sub_100140868(&v2);
  PB::Base::~Base(a1);
}

void sub_1007E1C48(void **a1)
{
  *a1 = off_101E805B8;
  v2 = a1 + 1;
  sub_100140868(&v2);
  PB::Base::~Base(a1);
  operator delete();
}

uint64_t sub_1007E1E0C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if (v5)
  {
    PB::TextFormatter::format(this, "error", *(a1 + 32));
    v5 = *(a1 + 40);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "pendingInstallStatus", *(a1 + 36));
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, this, "slotInfo");
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007E1EDC(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_70;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 4)
      {
        *(a1 + 40) |= 2u;
        v33 = *(this + 1);
        v32 = *(this + 2);
        v34 = *this;
        if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
        {
          v47 = 0;
          v48 = 0;
          v37 = 0;
          v17 = v32 >= v33;
          v49 = v32 - v33;
          if (!v17)
          {
            v49 = 0;
          }

          v50 = (v34 + v33);
          v51 = v33 + 1;
          while (1)
          {
            if (!v49)
            {
              LODWORD(v37) = 0;
              *(this + 24) = 1;
              goto LABEL_65;
            }

            v52 = *v50;
            *(this + 1) = v51;
            v37 |= (v52 & 0x7F) << v47;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v47 += 7;
            --v49;
            ++v50;
            ++v51;
            v14 = v48++ > 8;
            if (v14)
            {
LABEL_57:
              LODWORD(v37) = 0;
              goto LABEL_65;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v37) = 0;
          }
        }

        else
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = (v34 + v33);
          v39 = v33 + 1;
          while (1)
          {
            *(this + 1) = v39;
            v40 = *v38++;
            v37 |= (v40 & 0x7F) << v35;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            ++v39;
            v14 = v36++ > 8;
            if (v14)
            {
              goto LABEL_57;
            }
          }
        }

LABEL_65:
        *(a1 + 36) = v37;
      }

      else if (v22 == 3)
      {
        *(a1 + 40) |= 1u;
        v24 = *(this + 1);
        v23 = *(this + 2);
        v25 = *this;
        if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
        {
          v41 = 0;
          v42 = 0;
          v28 = 0;
          v17 = v23 >= v24;
          v43 = v23 - v24;
          if (!v17)
          {
            v43 = 0;
          }

          v44 = (v25 + v24);
          v45 = v24 + 1;
          while (1)
          {
            if (!v43)
            {
              LODWORD(v28) = 0;
              *(this + 24) = 1;
              goto LABEL_62;
            }

            v46 = *v44;
            *(this + 1) = v45;
            v28 |= (v46 & 0x7F) << v41;
            if ((v46 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            --v43;
            ++v44;
            ++v45;
            v14 = v42++ > 8;
            if (v14)
            {
LABEL_49:
              LODWORD(v28) = 0;
              goto LABEL_62;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v28) = 0;
          }
        }

        else
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = (v25 + v24);
          v30 = v24 + 1;
          while (1)
          {
            *(this + 1) = v30;
            v31 = *v29++;
            v28 |= (v31 & 0x7F) << v26;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            ++v30;
            v14 = v27++ > 8;
            if (v14)
            {
              goto LABEL_49;
            }
          }
        }

LABEL_62:
        *(a1 + 32) = v28;
      }

      else
      {
        if (v22 == 1)
        {
          sub_1007E22A8((a1 + 8));
        }

        if ((PB::Reader::skip(this, v22, v10 & 7, 0) & 1) == 0)
        {
          v54 = 0;
          return v54 & 1;
        }
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_70:
  v54 = v4 ^ 1;
  return v54 & 1;
}

uint64_t sub_1007E23F4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  while (v4 != v5)
  {
    v6 = *v4++;
    result = PB::Writer::writeSubmessage(this, v6, 1u);
  }

  v7 = *(v3 + 40);
  if (v7)
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 32), 3u);
    v7 = *(v3 + 40);
  }

  if ((v7 & 2) != 0)
  {
    v8 = *(v3 + 36);

    return PB::Writer::writeVarInt(this, v8, 4u);
  }

  return result;
}

void sub_1007E248C(Registry **a1@<X0>, os_log_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      if (!v15)
      {
        goto LABEL_7;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
  if (!v15)
  {
LABEL_7:
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_10177F960();
    }

    *a4 = 0;
    *(a4 + 688) = 0;
    if (v16)
    {
      return;
    }

LABEL_49:
    sub_100004A34(v14);
    return;
  }

LABEL_13:
  v17 = *(a3 + 23);
  if (v17 >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  if (v17 >= 0)
  {
    v19 = *(a3 + 23);
  }

  else
  {
    v19 = a3[1];
  }

  v20 = [NSData nonOwningDataWithBytes:v18 length:v19];
  v21 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Decoding chatbot render information JSON document using BlastDoor", buf, 2u);
  }

  v48 = 0;
  v49 = 0;
  v47 = 0;
  (*(*v15 + 16))(&v47, v15);
  bzero(buf, 0x2B0uLL);
  v25[0] = 0;
  v25[1] = &v49;
  (*(*v47 + 128))(buf);
  sub_1003A5C24(v25);
  v22 = v49;
  if (v49)
  {
    v23 = *a2;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10177F8B4(v22, v23);
    }

LABEL_34:
    *a4 = 0;
    *(a4 + 688) = 0;
    goto LABEL_35;
  }

  if ((v46 & 1) == 0)
  {
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_10177F92C();
    }

    goto LABEL_34;
  }

  sub_1007D41A0(buf, v25);
  sub_100734EA0(a4, v25);
  *(a4 + 568) = 0;
  *(a4 + 592) = 0;
  v24 = v28;
  if (v28 == 1)
  {
    *(a4 + 568) = v26;
    *(a4 + 576) = v27;
    v27 = 0uLL;
    v26 = 0;
    *(a4 + 592) = 1;
  }

  *(a4 + 600) = v29;
  *(a4 + 608) = v30;
  *(a4 + 624) = v31;
  v30 = 0uLL;
  v31 = 0;
  *(a4 + 648) = v33;
  *(a4 + 632) = v32;
  v33 = 0;
  v32 = 0uLL;
  *(a4 + 656) = 0;
  *(a4 + 680) = 0;
  if (v36 == 1)
  {
    *(a4 + 656) = v34;
    *(a4 + 672) = v35;
    v34 = 0uLL;
    v35 = 0;
    *(a4 + 680) = 1;
  }

  *(a4 + 688) = 1;
  if (v24)
  {
    v50 = &v26;
    sub_100191E28(&v50);
  }

  sub_1006FA044(v25);
LABEL_35:
  if (v46 == 1)
  {
    if (v45 == 1 && v44 < 0)
    {
      operator delete(__p);
    }

    if (v42 < 0)
    {
      operator delete(v41);
    }

    if (v40 < 0)
    {
      operator delete(v39);
    }

    if (v38[24] == 1)
    {
      v25[0] = v38;
      sub_1007E2E10(v25);
    }

    sub_1007E3070(buf);
  }

  if (v48)
  {
    sub_100004A34(v48);
  }

  sub_1003A5A8C(&v49);

  if ((v16 & 1) == 0)
  {
    goto LABEL_49;
  }
}

void sub_1007E2888(_Unwind_Exception *a1)
{
  sub_1007E2D78(&STACK[0x2B0]);
  v6 = *(v4 - 104);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_1003A5A8C((v4 - 96));

  if ((v3 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(a1);
}

void sub_1007E28D8()
{
  if (v0)
  {
    JUMPOUT(0x1007E28D0);
  }

  JUMPOUT(0x1007E28C8);
}

void sub_1007E28E8(os_log_t *a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>, Registry **a4@<X0>)
{
  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5)
  {

    sub_1007E296C(a4, a1, a2, a3);
  }

  else
  {
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      sub_10177F994();
    }

    *a3 = 0;
    a3[24] = 0;
  }
}

void sub_1007E296C(Registry **a1@<X0>, os_log_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
LABEL_11:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
  if (!v15)
  {
LABEL_7:
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_10177FAA8();
    }

    *a4 = 0;
    *(a4 + 24) = 0;
    goto LABEL_36;
  }

LABEL_12:
  v17 = *(a3 + 23);
  if (v17 >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  if (v17 >= 0)
  {
    v19 = *(a3 + 23);
  }

  else
  {
    v19 = a3[1];
  }

  v20 = [NSData nonOwningDataWithBytes:v18 length:v19];
  v21 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Decoding suggestions JSON document using BlastDoor, with options: ", buf, 2u);
  }

  v27 = 0;
  v28 = 0;
  v26 = 0;
  (*(*v15 + 16))(&v26, v15);
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
  *buf = 0u;
  v31 = 0u;
  *&v24 = 0;
  *(&v24 + 1) = &v28;
  (*(*v26 + 136))(buf);
  sub_1003A5C24(&v24);
  v22 = v28;
  if (v28)
  {
    v23 = *a2;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      sub_10177F9C8(v22, v23);
    }
  }

  else if (BYTE8(v51) == 1 && (v51 & 1) != 0)
  {
    if (DWORD2(v50) == 2)
    {
      sub_1007D43C0();
      *a4 = v24;
      *(a4 + 16) = v25;
      v25 = 0;
      v24 = 0uLL;
      *(a4 + 24) = 1;
      v29 = &v24;
      sub_10019029C(&v29);
      goto LABEL_30;
    }

    if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
    {
      sub_10177FA74();
    }
  }

  else if (os_log_type_enabled(*a2, OS_LOG_TYPE_ERROR))
  {
    sub_10177FA40();
  }

  *a4 = 0;
  *(a4 + 24) = 0;
LABEL_30:
  if (BYTE8(v51) == 1 && v51 == 1)
  {
    sub_1006A1BA0(buf);
  }

  if (v27)
  {
    sub_100004A34(v27);
  }

  sub_1003A5A8C(&v28);

LABEL_36:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_1007E2CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, const void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, int a60, char a61)
{
  if ((a61 & 1) != 0 && a59 == 1)
  {
    sub_1006A1BA0(&a17);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_1003A5A8C(&a15);

  if ((v63 & 1) == 0)
  {
    sub_100004A34(v61);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007E2D78(uint64_t a1)
{
  if (*(a1 + 680) == 1)
  {
    if (*(a1 + 672) == 1 && *(a1 + 671) < 0)
    {
      operator delete(*(a1 + 648));
    }

    if (*(a1 + 647) < 0)
    {
      operator delete(*(a1 + 624));
    }

    if (*(a1 + 623) < 0)
    {
      operator delete(*(a1 + 600));
    }

    if (*(a1 + 584) == 1)
    {
      v3 = (a1 + 560);
      sub_1007E2E10(&v3);
    }

    sub_1007E3070(a1);
  }

  return a1;
}

void sub_1007E2E10(void ***a1)
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
        v6 = v4 - 248;
        sub_1007E2E98((v4 - 240));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1007E2E98(uint64_t result)
{
  v1 = result;
  v2 = *(result + 232);
  if (v2 != -1)
  {
    result = (off_101E805F8[v2])(&v3, result);
  }

  *(v1 + 232) = -1;
  return result;
}

void sub_1007E2EF8(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  sub_1007E2F40(&v3);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_1007E2F40(void ***a1)
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
        v6 = v4 - 248;
        sub_1007E2FC8((v4 - 240));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_1007E2FC8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 232);
  if (v2 != -1)
  {
    result = (off_101E80608[v2])(&v3, result);
  }

  *(v1 + 232) = -1;
  return result;
}

void sub_1007E3028(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  sub_1006A1D8C(&v3);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

uint64_t sub_1007E3070(uint64_t a1)
{
  if (*(a1 + 552) == 1)
  {
    v3 = (a1 + 528);
    sub_1001C6984(&v3);
  }

  if (*(a1 + 520) == 1 && *(a1 + 519) < 0)
  {
    operator delete(*(a1 + 496));
  }

  if (*(a1 + 488) == 1 && *(a1 + 487) < 0)
  {
    operator delete(*(a1 + 464));
  }

  if (*(a1 + 456) == 1 && *(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  if (*(a1 + 424) == 1 && *(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  if (*(a1 + 392) == 1 && *(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  if (*(a1 + 360) == 1 && *(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  if (*(a1 + 328) == 1 && *(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 296) == 1 && *(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 264) == 1)
  {
    sub_1007E31AC(a1);
  }

  return a1;
}

uint64_t sub_1007E31AC(uint64_t a1)
{
  if (*(a1 + 256) == 1)
  {
    v3 = (a1 + 232);
    sub_1001C6984(&v3);
  }

  if (*(a1 + 224) == 1)
  {
    v3 = (a1 + 200);
    sub_1000087B4(&v3);
  }

  if (*(a1 + 192) == 1 && *(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 160) == 1)
  {
    v3 = (a1 + 136);
    sub_10003CA58(&v3);
  }

  if (*(a1 + 128) == 1)
  {
    v3 = (a1 + 104);
    sub_1007E32B0(&v3);
  }

  if (*(a1 + 96) == 1)
  {
    v3 = (a1 + 72);
    sub_1006FA290(&v3);
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
  }

  return a1;
}

void sub_1007E32B0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1007E3304(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1007E3304(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 72)
  {
    if (*(i - 16) == 1 && *(i - 17) < 0)
    {
      operator delete(*(i - 40));
    }

    if (*(i - 41) < 0)
    {
      operator delete(*(i - 64));
    }
  }

  a1[1] = v2;
}

double sub_1007E3370(uint64_t a1)
{
  *a1 = off_101E80628;
  *(a1 + 48) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

void sub_1007E33A0(void **a1)
{
  *a1 = off_101E80628;
  v2 = (a1 + 1);
  v3 = a1 + 2;
  sub_100140868(&v3);
  sub_100140928(v2, 0);
  PB::Base::~Base(a1);
}

void sub_1007E3410(void **a1)
{
  sub_1007E33A0(a1);

  operator delete();
}

uint64_t sub_1007E359C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    PB::TextFormatter::format(this, "error", *(a1 + 40));
    v6 = *(a1 + 48);
  }

  if ((v6 & 2) != 0)
  {
    PB::TextFormatter::format(this, "result", *(a1 + 44));
  }

  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  while (v7 != v8)
  {
    v9 = *v7++;
    (*(*v9 + 32))(v9, this, "updatedSubscription");
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007E3684(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_58;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        if (v22 == 3)
        {
          *(a1 + 48) |= 2u;
          v32 = *(this + 1);
          if (v32 >= *(this + 2))
          {
            v35 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v33 = v32 + 1;
            v34 = *(*this + v32);
            *(this + 1) = v33;
            v35 = v34 != 0;
          }

          *(a1 + 44) = v35;
          goto LABEL_54;
        }

        if (v22 == 4)
        {
          *(a1 + 48) |= 1u;
          v24 = *(this + 1);
          v23 = *(this + 2);
          v25 = *this;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v36 = 0;
            v37 = 0;
            v28 = 0;
            v17 = v23 >= v24;
            v38 = v23 - v24;
            if (!v17)
            {
              v38 = 0;
            }

            v39 = (v25 + v24);
            v40 = v24 + 1;
            while (1)
            {
              if (!v38)
              {
                LODWORD(v28) = 0;
                *(this + 24) = 1;
                goto LABEL_53;
              }

              v41 = *v39;
              *(this + 1) = v40;
              v28 |= (v41 & 0x7F) << v36;
              if ((v41 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              --v38;
              ++v39;
              ++v40;
              v14 = v37++ > 8;
              if (v14)
              {
LABEL_47:
                LODWORD(v28) = 0;
                goto LABEL_53;
              }
            }

            if (*(this + 24))
            {
              LODWORD(v28) = 0;
            }
          }

          else
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            while (1)
            {
              *(this + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
              if (v14)
              {
                goto LABEL_47;
              }
            }
          }

LABEL_53:
          *(a1 + 40) = v28;
          goto LABEL_54;
        }
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (v22 == 2)
        {
          sub_1007E3A08((a1 + 16));
        }
      }

      if ((PB::Reader::skip(this, v22, v10 & 7, 0) & 1) == 0)
      {
        v43 = 0;
        return v43 & 1;
      }

LABEL_54:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_58:
  v43 = v4 ^ 1;
  return v43 & 1;
}

uint64_t sub_1007E3B54(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::writeSubmessage(this, v7, 2u);
  }

  v8 = *(v3 + 48);
  if ((v8 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 44), 3u);
    v8 = *(v3 + 48);
  }

  if (v8)
  {
    v9 = *(v3 + 40);

    return PB::Writer::writeVarInt(this, v9, 4u);
  }

  return result;
}

double sub_1007E3C00(uint64_t a1)
{
  *a1 = off_101E80678;
  *(a1 + 76) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 52) = 0u;
  return result;
}

void sub_1007E3C38(uint64_t a1)
{
  *a1 = off_101E80678;
  v4 = *(a1 + 56);
  v2 = (a1 + 56);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  v5 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v5)
  {
    sub_100140988(a1 + 48, v5);
  }

  sub_100140928((a1 + 40), 0);
  v6 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v6)
  {
    sub_100140988(a1 + 32, v6);
  }

  v7 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v7)
  {
    sub_100140988(a1 + 24, v7);
  }

  v8 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  sub_100140928((a1 + 8), 0);

  PB::Base::~Base(a1);
}

void sub_1007E3D20(uint64_t a1)
{
  sub_1007E3C38(a1);

  operator delete();
}

uint64_t sub_1007E3D58(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 76))
  {
    PB::TextFormatter::format(this, "consentState", *(a1 + 64));
  }

  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "details");
  }

  if ((*(a1 + 76) & 2) != 0)
  {
    PB::TextFormatter::format(this, "error", *(a1 + 68));
  }

  if (*(a1 + 24))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 32))
  {
    PB::TextFormatter::format();
  }

  if ((*(a1 + 76) & 4) != 0)
  {
    PB::TextFormatter::format(this, "result", *(a1 + 72));
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    PB::TextFormatter::format(this, "targetCsn", v7);
  }

  if (*(a1 + 48))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 56))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007E3EB8(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_90;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 5)
      {
        if (v22 <= 7)
        {
          if (v22 == 6)
          {
            *(a1 + 76) |= 1u;
            v28 = *(this + 1);
            v27 = *(this + 2);
            v29 = *this;
            if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
            {
              v45 = 0;
              v46 = 0;
              v32 = 0;
              v17 = v27 >= v28;
              v47 = v27 - v28;
              if (!v17)
              {
                v47 = 0;
              }

              v48 = (v29 + v28);
              v49 = v28 + 1;
              while (1)
              {
                if (!v47)
                {
                  LODWORD(v32) = 0;
                  *(this + 24) = 1;
                  goto LABEL_85;
                }

                v50 = *v48;
                *(this + 1) = v49;
                v32 |= (v50 & 0x7F) << v45;
                if ((v50 & 0x80) == 0)
                {
                  break;
                }

                v45 += 7;
                --v47;
                ++v48;
                ++v49;
                v14 = v46++ > 8;
                if (v14)
                {
LABEL_70:
                  LODWORD(v32) = 0;
                  goto LABEL_85;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v32) = 0;
              }
            }

            else
            {
              v30 = 0;
              v31 = 0;
              v32 = 0;
              v33 = (v29 + v28);
              v34 = v28 + 1;
              while (1)
              {
                *(this + 1) = v34;
                v35 = *v33++;
                v32 |= (v35 & 0x7F) << v30;
                if ((v35 & 0x80) == 0)
                {
                  break;
                }

                v30 += 7;
                ++v34;
                v14 = v31++ > 8;
                if (v14)
                {
                  goto LABEL_70;
                }
              }
            }

LABEL_85:
            *(a1 + 64) = v32;
            goto LABEL_58;
          }

          if (v22 == 7)
          {
            operator new();
          }
        }

        else
        {
          switch(v22)
          {
            case 8:
              operator new();
            case 9:
              operator new();
            case 0xA:
              operator new();
          }
        }
      }

      else if (v22 <= 2)
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (v22 == 2)
        {
          *(a1 + 76) |= 4u;
          v23 = *(this + 1);
          if (v23 >= *(this + 2))
          {
            v26 = 0;
            *(this + 24) = 1;
          }

          else
          {
            v24 = v23 + 1;
            v25 = *(*this + v23);
            *(this + 1) = v24;
            v26 = v25 != 0;
          }

          *(a1 + 72) = v26;
          goto LABEL_58;
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            *(a1 + 76) |= 2u;
            v37 = *(this + 1);
            v36 = *(this + 2);
            v38 = *this;
            if (v37 > 0xFFFFFFFFFFFFFFF5 || v37 + 10 > v36)
            {
              v51 = 0;
              v52 = 0;
              v41 = 0;
              v17 = v36 >= v37;
              v53 = v36 - v37;
              if (!v17)
              {
                v53 = 0;
              }

              v54 = (v38 + v37);
              v55 = v37 + 1;
              while (1)
              {
                if (!v53)
                {
                  LODWORD(v41) = 0;
                  *(this + 24) = 1;
                  goto LABEL_88;
                }

                v56 = *v54;
                *(this + 1) = v55;
                v41 |= (v56 & 0x7F) << v51;
                if ((v56 & 0x80) == 0)
                {
                  break;
                }

                v51 += 7;
                --v53;
                ++v54;
                ++v55;
                v14 = v52++ > 8;
                if (v14)
                {
LABEL_80:
                  LODWORD(v41) = 0;
                  goto LABEL_88;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v41) = 0;
              }
            }

            else
            {
              v39 = 0;
              v40 = 0;
              v41 = 0;
              v42 = (v38 + v37);
              v43 = v37 + 1;
              while (1)
              {
                *(this + 1) = v43;
                v44 = *v42++;
                v41 |= (v44 & 0x7F) << v39;
                if ((v44 & 0x80) == 0)
                {
                  break;
                }

                v39 += 7;
                ++v43;
                v14 = v40++ > 8;
                if (v14)
                {
                  goto LABEL_80;
                }
              }
            }

LABEL_88:
            *(a1 + 68) = v41;
            goto LABEL_58;
          case 4:
            operator new();
          case 5:
            operator new();
        }
      }

      if ((PB::Reader::skip(this, v22, v10 & 7, 0) & 1) == 0)
      {
        v58 = 0;
        return v58 & 1;
      }

LABEL_58:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_90:
  v58 = v4 ^ 1;
  return v58 & 1;
}

uint64_t sub_1007E4528(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  v5 = *(v3 + 76);
  if ((v5 & 4) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 72), 2u);
    v5 = *(v3 + 76);
  }

  if ((v5 & 2) != 0)
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 68), 3u);
  }

  if (*(v3 + 32))
  {
    result = PB::Writer::write();
  }

  v6 = *(v3 + 40);
  if (v6)
  {
    result = PB::Writer::write(this, v6, 5u);
  }

  if (*(v3 + 76))
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 64), 6u);
  }

  v7 = *(v3 + 16);
  if (v7)
  {
    result = PB::Writer::writeSubmessage(this, v7, 7u);
  }

  if (*(v3 + 56))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 24))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 48))
  {

    return PB::Writer::write();
  }

  return result;
}

void *sub_1007E4638(void *result)
{
  if (!result[2])
  {
    operator new();
  }

  return result;
}

void sub_1007E46FC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1007E4710(uint64_t a1, uint64_t a2, char a3)
{
  LazuliProvisioningServerWrapper::stopTimers(a1);
  v6 = sub_10098ED28(*(a1 + 360));
  if (v7)
  {

    LazuliProvisioningServerWrapper::startUnauthorizedXmlTimer(a1, v6);
  }

  v8 = sub_10098E620(*(a1 + 360));
  if (v9)
  {
    v10 = v8;
    if ((a3 & 1) == 0)
    {
      goto LABEL_21;
    }

    v11 = v8 - a2;
    if (v8 - a2 < 0)
    {
      v11 = a2 - v8;
    }

    if (v11 > 0x258)
    {
LABEL_21:

      LazuliProvisioningServerWrapper::startFullXmlTimer(a1, v8);
    }

    v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134218240;
      v19 = v10;
      v20 = 2048;
      v21 = a2;
      v13 = "#I Not starting FULL XML timer for %zu as its vicinity-banned : %zu";
LABEL_19:
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v13, &v18, 0x16u);
    }
  }

  else
  {
    v14 = sub_10098E9A4(*(a1 + 360));
    if (v15)
    {
      v16 = v14;
      if ((a3 & 1) == 0)
      {
        goto LABEL_24;
      }

      v17 = v14 - a2;
      if (v14 - a2 < 0)
      {
        v17 = a2 - v14;
      }

      if (v17 > 0x258)
      {
LABEL_24:

        LazuliProvisioningServerWrapper::startRefreshXmlTimer(a1, v14);
      }

      v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 56));
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 134218240;
        v19 = v16;
        v20 = 2048;
        v21 = a2;
        v13 = "#I Not starting REFRESH XML timer for %zu as its vicinity-banned : %zu";
        goto LABEL_19;
      }
    }
  }
}

void sub_1007E4990(LazuliProvisioningServerWrapper *a1)
{
  LazuliProvisioningServerWrapper::~LazuliProvisioningServerWrapper(a1);

  operator delete();
}

void MaxDataRateManager::submit5GSDMStatusToCA_sync(Registry **this)
{
  v2 = this + 7;
  ServiceMap = Registry::getServiceMap(this[7]);
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
LABEL_9:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_66;
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
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (!v11)
  {
    goto LABEL_66;
  }

LABEL_10:
  v13 = Registry::getServiceMap(*v2);
  v14 = v13;
  if (v15 < 0)
  {
    v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v15 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  std::mutex::lock(v13);
  *buf = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, buf);
  if (v19 && (v20 = v19[4]) != 0)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v14);
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v20);
    v21 = 0;
  }

  else
  {
    std::mutex::unlock(v14);
    v20 = 0;
    v21 = 1;
  }

  v22 = Registry::getServiceMap(*v2);
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
  v28 = this;
  *buf = v24;
  v29 = sub_100009510(&v23[1].__m_.__sig, buf);
  v53 = v21;
  if (v29)
  {
    v30 = v10;
    v32 = v29[3];
    v31 = v29[4];
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v23);
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      v33 = v31;
      sub_100004A34(v31);
      v34 = 0;
      v10 = v30;
      goto LABEL_26;
    }

    v10 = v30;
  }

  else
  {
    v32 = 0;
  }

  std::mutex::unlock(v23);
  v33 = 0;
  v34 = 1;
LABEL_26:
  if (v32)
  {
    v51 = v34;
    v52 = v12;
    v49 = v33;
    v50 = v20;
    subscriber::makeSimSlotRange();
    v36 = *buf;
    v35 = v59;
    if (*buf != v59)
    {
      v37 = v60;
      do
      {
        if (v37(*v36))
        {
          break;
        }

        ++v36;
      }

      while (v36 != v35);
      v38 = v59;
      if (v36 != v59)
      {
        v39 = this + 21;
        v48 = this + 28;
        do
        {
          v40 = *v36;
          v56 = 0;
          v57 = 0;
          MaxDataRateManager::getModel_sync(this, v40, &v56);
          if (v56)
          {
            v54 = 0;
            v55 = 0;
            (*(*v32 + 8))(&v54, v32, v40);
            if (v54)
            {
              if (*(v54 + 48))
              {
                v41 = *v39;
                if (*v39)
                {
                  v42 = this + 21;
                  do
                  {
                    if (*(v41 + 8) >= v40)
                    {
                      v42 = v41;
                    }

                    v41 = *(v41 + (*(v41 + 8) < v40));
                  }

                  while (v41);
                  if (v42 != v39 && v40 >= *(v42 + 8))
                  {
                    v43 = this + 28;
                    v44 = *v48;
                    if (*v48)
                    {
                      do
                      {
                        if (*(v44 + 7) >= v40)
                        {
                          v43 = v44;
                        }

                        v44 = *(v44 + (*(v44 + 7) < v40));
                      }

                      while (v44);
                      if (v43 != v48 && v40 >= *(v43 + 7))
                      {
                        v45 = *(v43 + 33);
                        if (*(v56 + 496) == 2 || (v45 & 1) == 0 && *(v56 + 616) == 2)
                        {
                          operator new();
                        }
                      }
                    }
                  }
                }
              }
            }

            if (v55)
            {
              sub_100004A34(v55);
            }
          }

          if (v57)
          {
            sub_100004A34(v57);
          }

          do
          {
            ++v36;
          }

          while (v36 != v35 && (v37(*v36) & 1) == 0);
        }

        while (v36 != v38);
      }
    }

    v12 = v52;
    v46 = v53;
    v33 = v49;
    v20 = v50;
    if (v51)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v47 = this[5];
    if (os_log_type_enabled(v28[5], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#N PersonalityShop is not ready", buf, 2u);
    }

    v46 = v53;
    if (v34)
    {
      goto LABEL_64;
    }
  }

  sub_100004A34(v33);
LABEL_64:
  if ((v46 & 1) == 0)
  {
    sub_100004A34(v20);
  }

LABEL_66:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_1007E4F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, std::__shared_weak_count *a14, int a15, char a16, char a17, char a18, void *__p, void *a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, std::__shared_weak_count *a32, std::__shared_weak_count *a33, std::__shared_weak_count *a34, std::__shared_weak_count *a35)
{
  if (SHIBYTE(a25) < 0)
  {
    operator delete(a20);
  }

  (*(*a11 + 8))(a11, a2, a3, a4, a5, a6, a7, a8);
  if (a33)
  {
    sub_100004A34(a33);
  }

  if (a35)
  {
    sub_100004A34(a35);
  }

  if ((a16 & 1) == 0)
  {
    sub_100004A34(a13);
  }

  if ((BYTE4(__p) & 1) == 0)
  {
    sub_100004A34(a14);
  }

  if ((__p & 1) == 0)
  {
    sub_100004A34(v35);
  }

  _Unwind_Resume(a1);
}

void MaxDataRateManager::submitSwitchStateToCA_sync(uint64_t a1, char *a2, uint64_t a3)
{
  if (a2 && *(a3 + 24))
  {
    v4 = (a1 + 56);
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
    *buf = v7;
    v11 = sub_100009510(&v6[1].__m_.__sig, buf);
    if (v11)
    {
      v12 = v11[3];
      v13 = v11[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v6);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
        v14 = 0;
        if (!v12)
        {
LABEL_56:
          if ((v14 & 1) == 0)
          {
            sub_100004A34(v13);
          }

          return;
        }

LABEL_12:
        v50 = v13;
        v15 = Registry::getServiceMap(*v4);
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
        if (v21 && (v22 = v21[4]) != 0)
        {
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v16);
          atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          v48 = v22;
          sub_100004A34(v22);
          v49 = 0;
        }

        else
        {
          std::mutex::unlock(v16);
          v48 = 0;
          v49 = 1;
        }

        v23 = Registry::getServiceMap(*v4);
        v24 = v23;
        if (v25 < 0)
        {
          v26 = (v25 & 0x7FFFFFFFFFFFFFFFLL);
          v27 = 5381;
          do
          {
            v25 = v27;
            v28 = *v26++;
            v27 = (33 * v27) ^ v28;
          }

          while (v28);
        }

        std::mutex::lock(v23);
        *buf = v25;
        v29 = sub_100009510(&v24[1].__m_.__sig, buf);
        if (v29)
        {
          v31 = v29[3];
          v30 = v29[4];
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v24);
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
            v32 = v30;
            sub_100004A34(v30);
            v33 = 0;
            goto LABEL_27;
          }
        }

        else
        {
          v31 = 0;
        }

        std::mutex::unlock(v24);
        v32 = 0;
        v33 = 1;
LABEL_27:
        if (v31)
        {
          v45 = v33;
          v46 = v14;
          v44 = v32;
          subscriber::makeSimSlotRange();
          v34 = *buf;
          v35 = v56;
          if (*buf != v56)
          {
            v36 = v57;
            do
            {
              if (v36(*v34))
              {
                break;
              }

              ++v34;
            }

            while (v34 != v35);
            v37 = v56;
            if (v34 != v56)
            {
              v47 = (a1 + 168);
              do
              {
                v38 = *v34;
                v53 = 0;
                v54 = 0;
                MaxDataRateManager::getModel_sync(a1, v38, &v53);
                if (v53)
                {
                  v51 = 0;
                  v52 = 0;
                  (*(*v31 + 8))(&v51, v31, v38);
                  if (v51)
                  {
                    if (*(v51 + 48))
                    {
                      v39 = a1 + 168;
                      v40 = *v47;
                      if (*v47)
                      {
                        do
                        {
                          if (*(v40 + 32) >= v38)
                          {
                            v39 = v40;
                          }

                          v40 = *(v40 + 8 * (*(v40 + 32) < v38));
                        }

                        while (v40);
                        if (v39 != v47 && v38 >= *(v39 + 32))
                        {
                          operator new();
                        }
                      }
                    }
                  }

                  if (v52)
                  {
                    sub_100004A34(v52);
                  }
                }

                if (v54)
                {
                  sub_100004A34(v54);
                }

                do
                {
                  ++v34;
                }

                while (v34 != v35 && (v36(*v34) & 1) == 0);
              }

              while (v34 != v37);
            }
          }

          v13 = v50;
          v14 = v46;
          v41 = v48;
          v42 = v49;
          v32 = v44;
          if (v45)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v43 = *(a1 + 40);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#N PersonalityShop is not ready", buf, 2u);
          }

          v41 = v48;
          v42 = v49;
          if (v33)
          {
            goto LABEL_54;
          }
        }

        sub_100004A34(v32);
LABEL_54:
        if ((v42 & 1) == 0)
        {
          sub_100004A34(v41);
        }

        goto LABEL_56;
      }
    }

    else
    {
      v12 = 0;
    }

    std::mutex::unlock(v6);
    v13 = 0;
    v14 = 1;
    if (!v12)
    {
      goto LABEL_56;
    }

    goto LABEL_12;
  }
}

void sub_1007E5584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, char a13, __int16 arg18_2, char arg1C, uint64_t a14, std::__shared_weak_count *a15, int a16, char a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, std::__shared_weak_count *a34)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  (*(*a10 + 8))(a10, a2, a3, a4, a5, a6, a7, a8);
  if (a34)
  {
    sub_100004A34(a34);
  }

  v38 = *(v36 - 120);
  if (v38)
  {
    sub_100004A34(v38);
  }

  if ((a12 & 1) == 0)
  {
    sub_100004A34(a11);
  }

  if ((a17 & 1) == 0)
  {
    sub_100004A34(a15);
  }

  if ((arg1C & 1) == 0)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t MaxDataRateManager::submit5GSwitchStateToCA_sync(MaxDataRateManager *this)
{
  v2[0] = off_101E80738;
  v2[3] = v2;
  MaxDataRateManager::submitSwitchStateToCA_sync(this, "CommCenterNrSwitch", v2);
  return sub_1007E5C14(v2);
}

void sub_1007E573C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007E5C14(va);
  _Unwind_Resume(a1);
}

uint64_t MaxDataRateManager::submit4GSwitchStateToCA_sync(MaxDataRateManager *this)
{
  v2[0] = off_101E807C8;
  v2[3] = v2;
  MaxDataRateManager::submitSwitchStateToCA_sync(this, "CommCenter4GSwitch", v2);
  return sub_1007E5C14(v2);
}

void sub_1007E57DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007E5C14(va);
  _Unwind_Resume(a1);
}

uint64_t MaxDataRateManager::submit3GSwitchStateToCA_sync(MaxDataRateManager *this)
{
  v2[0] = off_101E80848;
  v2[3] = v2;
  MaxDataRateManager::submitSwitchStateToCA_sync(this, "CommCenter3GSwitch", v2);
  return sub_1007E5C14(v2);
}

void sub_1007E587C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1007E5C14(va);
  _Unwind_Resume(a1);
}

void MaxDataRateManager::submitLegacyRatsSwitchStateToCA_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
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
  v12 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v12);
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
      if (!v11)
      {
        sub_100004A34(v10);
        return;
      }

LABEL_10:
      operator new();
    }

    std::mutex::unlock(v4);
    if (v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
    std::mutex::unlock(v4);
  }
}

void sub_1007E5A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  (*(*v22 + 8))(v22, a2, a3, a4, a5, a6, a7, a8);
  if (v21)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007E5B5C(uint64_t a1, uint64_t *a2, BOOL a3)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  SwitchStatus = analytics::getSwitchStatus((*(v3 + 16) == 2), *(v3 + 496) == 2, a3);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return SwitchStatus;
}

void sub_1007E5BB0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007E5BC8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007E5C14(uint64_t a1)
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

uint64_t sub_1007E5D1C(uint64_t a1, uint64_t *a2, BOOL a3)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  SwitchStatus = analytics::getSwitchStatus((*(v3 + 136) == 2), *(v3 + 616) == 2, a3);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return SwitchStatus;
}

void sub_1007E5D70(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007E5D88(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007E5E5C(uint64_t a1, uint64_t *a2, BOOL a3)
{
  v3 = *a2;
  v4 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  SwitchStatus = analytics::getSwitchStatus((*(v3 + 256) == 2), *(v3 + 736) == 2, a3);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return SwitchStatus;
}

void sub_1007E5EB0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007E5EC8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

atomic_uint **sub_1007E5F14(atomic_uint **a1)
{
  *a1 = off_101E80A78;
  sub_10004A724(a1 + 2);
  return a1;
}

void sub_1007E5F58()
{
  LODWORD(v1[0]) = 2;
  v1[1] = event::radio::reset;
  sub_1007E8A48(v2, v1);
  v0 = sub_100080734(&unk_101FB34A0);
  sub_1007E7EE4(v0, v2, 0);
}

void **sub_1007E6318(void **a1)
{
  sub_1007E6398(a1 + 3);
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

uint64_t sub_1007E6358(uint64_t a1)
{
  sub_100082A40((a1 + 24));
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

void (***sub_1007E6398(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
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

uint64_t sub_1007E66AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1007E6834(a1, a2);
  sub_1007E68A0((v4 + 3), a2 + 24);
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

uint64_t *sub_1007E6834(uint64_t *a1, uint64_t a2)
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

uint64_t sub_1007E68A0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1007E6908(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1007E6974(&v2, a2);
}

void sub_1007E69E4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_1007E6A24(uint64_t result)
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

void sub_1007E6AA4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1007E6B10(&v2, a2);
}

void sub_1007E6B80(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    operator delete();
  }

  __cxa_rethrow();
}

uint64_t sub_1007E6BD0(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    operator delete();
  }

  return result;
}

void sub_1007E6C04(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1007E6C70(&v2, a2);
}

void sub_1007E6CE0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_1007E6D20(uint64_t result)
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

pthread_mutex_t *sub_1007E6D9C(pthread_mutex_t *a1)
{
  if (pthread_mutex_init(a1, 0))
  {
    sub_10177FADC();
  }

  return a1;
}

void sub_1007E6DD0(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1007E6E3C(&v2, a2);
}

void sub_1007E6EAC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1007E6ED4(v1);
  __cxa_rethrow();
}

pthread_mutex_t *sub_1007E6ED4(pthread_mutex_t *result)
{
  if (result)
  {
    sub_1007E6F88(result);

    operator delete();
  }

  return result;
}

pthread_mutex_t *sub_1007E6F2C(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    sub_1007E6F88(result);

    operator delete();
  }

  return result;
}

pthread_mutex_t *sub_1007E6F88(pthread_mutex_t *a1)
{
  if (pthread_mutex_destroy(a1))
  {
    __assert_rtn("~mutex", "lwm_pthreads.hpp", 55, "pthread_mutex_destroy(&m_) == 0");
  }

  return a1;
}

void sub_1007E6FDC(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1007E7048(&v2, a2);
}

void sub_1007E70B8(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1007E70F8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

void sub_1007E721C(atomic_uint **a1)
{
  *a1 = off_101E80A78;
  sub_10004A724(a1 + 2);

  operator delete();
}

uint64_t sub_1007E7280@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1007E7408(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_1007E74FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100243024(a1, a2);
  sub_100243090((v4 + 3), a2 + 24);
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

void sub_1007E7684(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1007E76F0(&v2, a2);
}

void sub_1007E7760(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_1007E77A0(uint64_t result)
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

void sub_1007E7820(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1007E788C(&v2, a2);
}

void sub_1007E78FC(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_1007E793C(uint64_t result)
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

uint64_t sub_1007E79B8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1007E79FC(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1007E7A68(&v2, a2);
}

void sub_1007E7AD8(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1004F3DB8(v1);
  __cxa_rethrow();
}

uint64_t sub_1007E7B18(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 32));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t *sub_1007E7B94(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_1000814B8(result);
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

void sub_1007E7C00(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_100080854(a1);
  if (sub_100080810(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_100080854(a1);
    v8 = *(sub_100080810(v7) + 8);
    sub_100080898(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

void sub_1007E7DA0(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_1007E6C04(&v2, a2);
}

uint64_t sub_1007E7E00(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1007E7EE4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  memset(v5, 0, sizeof(v5));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v5, v4);
  sub_1007E7FDC(a1, v5);
}

void sub_1007E7FAC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E7FDC(uint64_t *a1, void *x1_0)
{
  v4 = 0;
  v5 = 0;
  sub_1007E80D8(a1, x1_0);
}

void sub_1007E80C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

atomic_uint **sub_1007E8170(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_100080778(a1, a2, 1, 2);
}

void sub_1007E8294(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E80BD8;
  operator new();
}

void sub_1007E83A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001018AC(va);
  operator delete();
}

void sub_1007E840C(uint64_t a1)
{
  sub_1007E8760(a1);

  operator delete();
}

uint64_t sub_1007E8444(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_1007E87D8(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_1007E84F0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **sub_1007E8520@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

void sub_1007E8578(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1007E85E4(&v2, a2);
}

void sub_1007E8654(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1007E867C(v1);
  __cxa_rethrow();
}

uint64_t sub_1007E867C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1007E6398((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1007E86F0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_1007E6398((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1007E8760(uint64_t a1)
{
  *a1 = off_101E80BD8;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_1007E87D8(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_1000814B8(result + 4); ; i += 6)
    {
      result = sub_1000814B8(v2);
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

void sub_1007E88C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_1007E88E0(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1007E894C(&v2, a2);
}

void sub_1007E89BC(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1007E8A00(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

_OWORD *sub_1007E8A48(_OWORD *a1, int *a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  v4 = *a2;
  v5 = *(a2 + 1);
  sub_1007E8AB8(a1 + 3, &v4);
  return a1;
}

void sub_1007E8A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  sub_1007E6398((v12 + 24));
  a12 = v12;
  sub_1001018AC(&a12);
  _Unwind_Resume(a1);
}

void (***sub_1007E8AB8(void (***a1)(void, void, uint64_t), int *a2))(void, void, uint64_t)
{
  v3 = *(a2 + 1);
  v6 = *a2;
  v7 = v3;
  v5 = off_101E80CE0;
  sub_1007E8B28(&v5, a1);
  sub_1007E6398(&v5);
  return a1;
}

void (***sub_1007E8B28(void (***result)(void, void, uint64_t), void (***a2)(void, void, uint64_t)))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_1007E8C44(v4, result);
    sub_1007E8C44(v3, a2);
    sub_1007E8C44(a2, v4);
    return sub_1007E6398(v4);
  }

  return result;
}

uint64_t sub_1007E8BA4(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  v4 = result;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
LABEL_2:
        a2[4] = 0;
        return result;
      }

      result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
      if (result == ("N5event7adapter23CSINotificationToSignalINS0_5bind0INS_11EventLoggerIFvvENS_14CSIEventLoggerEEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5event7adapter23CSINotificationToSignalINS0_5bind0INS_11EventLoggerIFvvENS_14CSIEventLoggerEEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
      {
        *a2 = v4;
      }

      else
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    *a2 = *result;
    *(a2 + 1) = *(result + 8);
  }

  return result;
}

uint64_t sub_1007E8C44(uint64_t result, uint64_t a2)
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

void sub_1007E8CD8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void sub_1007E8CFC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  memset(v5, 0, sizeof(v5));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v5, v4);
  sub_1007E8DF4(a1, v5);
}

void sub_1007E8DC4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007E8DF4(uint64_t *a1, void *x1_0)
{
  v4 = 0;
  v5 = 0;
  sub_1007E8EF0(a1, x1_0);
}

void sub_1007E8ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

atomic_uint **sub_1007E8F88(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_100081D4C(a1, a2, 1, 2);
}

void sub_1007E90AC(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E80D10;
  operator new();
}

void sub_1007E91BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1001018AC(va);
  operator delete();
}

void sub_1007E9224(uint64_t a1)
{
  sub_1007E9578(a1);

  operator delete();
}

uint64_t sub_1007E925C(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_1007E95F0(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_1007E9308(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint **sub_1007E9338@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

void sub_1007E9390(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1007E93FC(&v2, a2);
}

void sub_1007E946C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1007E9494(v1);
  __cxa_rethrow();
}

uint64_t sub_1007E9494(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_100082A40((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1007E9508(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_100082A40((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1007E9578(uint64_t a1)
{
  *a1 = off_101E80D10;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_1007E95F0(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_100082118(result + 4); ; i += 6)
    {
      result = sub_100082118(v2);
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

void sub_1007E96D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_1007E96F8(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1007E9764(&v2, a2);
}

void sub_1007E97D4(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_1007E9818(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

_OWORD *sub_1007E9860(_OWORD *a1, unsigned int *a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  sub_1007E98C0(a1 + 3, *a2);
  return a1;
}

void sub_1007E98A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_100082A40((v10 + 24));
  a10 = v10;
  sub_1001018AC(&a10);
  _Unwind_Resume(a1);
}

void (***sub_1007E98C0(void (***a1)(void, void, uint64_t), int a2))(void, void, uint64_t)
{
  v5 = a2;
  v4 = (off_101E80DD0 + 1);
  sub_1007E9928(&v4, a1);
  sub_100082A40(&v4);
  return a1;
}

void (***sub_1007E9928(void (***result)(void, void, uint64_t), void (***a2)(void, void, uint64_t)))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_1007E9A3C(v4, result);
    sub_1007E9A3C(v3, a2);
    sub_1007E9A3C(a2, v4);
    return sub_100082A40(v4);
  }

  return result;
}

uint64_t sub_1007E99A4(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  v4 = result;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
LABEL_2:
        a2[4] = 0;
        return result;
      }

      result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
      if (result == ("N5event7adapter23SignalToCSINotificationE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5event7adapter23SignalToCSINotificationE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
      {
        *a2 = v4;
      }

      else
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

uint64_t sub_1007E9A3C(uint64_t result, uint64_t a2)
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

void sub_1007E9AD0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

_OWORD *sub_1007E9AF4(_OWORD *a1, int *a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  v4 = *a2;
  v5 = *(a2 + 1);
  sub_1007E9B64(a1 + 3, &v4);
  return a1;
}

void sub_1007E9B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  sub_1007E6398((v12 + 24));
  a12 = v12;
  sub_1001018AC(&a12);
  _Unwind_Resume(a1);
}

void (***sub_1007E9B64(void (***a1)(void, void, uint64_t), int *a2))(void, void, uint64_t)
{
  v3 = *(a2 + 1);
  v6 = *a2;
  v7 = v3;
  v5 = off_101E80DF0;
  sub_1007E8B28(&v5, a1);
  sub_1007E6398(&v5);
  return a1;
}

uint64_t sub_1007E9BD4(uint64_t result, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  v4 = result;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
LABEL_2:
        a2[4] = 0;
        return result;
      }

      result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
      if (result == ("N5event7adapter23CSINotificationToSignalINS0_5bind0IN5boost8signals26signalIFvvENS4_19optional_last_valueIvEEiNSt3__14lessIiEENS3_8functionIS6_EENSC_IFvRKNS4_10connectionEEEENS4_5mutexEEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N5event7adapter23CSINotificationToSignalINS0_5bind0IN5boost8signals26signalIFvvENS4_19optional_last_valueIvEEiNSt3__14lessIiEENS3_8functionIS6_EENSC_IFvRKNS4_10connectionEEEENS4_5mutexEEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
      {
        *a2 = v4;
      }

      else
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    *a2 = *result;
    *(a2 + 1) = *(result + 8);
  }

  return result;
}

void sub_1007E9C74()
{
  if ((byte_101FB3490 & 1) == 0)
  {
    byte_101FB3490 = 1;
    sub_1007E63E8(&qword_101FB3478, &v1, &v0);
  }

  if ((byte_101FB34B0 & 1) == 0)
  {
    byte_101FB34B0 = 1;
    sub_1007E63E8(&qword_101FB3498, &v3, &v2);
  }

  sub_1007E7174(&qword_101FCB968, &v5, &v4);
}

uint64_t sub_1007E9D68(uint64_t result)
{
  *result = off_101E80E20;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void sub_1007E9D90(void **a1)
{
  *a1 = off_101E80E20;
  v2 = a1 + 1;
  sub_100140868(&v2);
  PB::Base::~Base(a1);
}

void sub_1007E9DEC(void **a1)
{
  *a1 = off_101E80E20;
  v2 = a1 + 1;
  sub_100140868(&v2);
  PB::Base::~Base(a1);
  operator delete();
}

uint64_t sub_1007E9E5C(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 40);
  if (v5)
  {
    PB::TextFormatter::format(this, "error", *(a1 + 32));
    v5 = *(a1 + 40);
  }

  if ((v5 & 2) != 0)
  {
    PB::TextFormatter::format(this, "result", *(a1 + 36));
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 32))(v8, this, "slotInfo");
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007E9F2C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_55;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) == 3)
      {
        sub_1007E22A8((a1 + 8));
      }

      if (v22 == 2)
      {
        *(a1 + 40) |= 1u;
        v28 = *(this + 1);
        v27 = *(this + 2);
        v29 = *this;
        if (v28 > 0xFFFFFFFFFFFFFFF5 || v28 + 10 > v27)
        {
          v36 = 0;
          v37 = 0;
          v32 = 0;
          v17 = v27 >= v28;
          v38 = v27 - v28;
          if (!v17)
          {
            v38 = 0;
          }

          v39 = (v29 + v28);
          v40 = v28 + 1;
          while (1)
          {
            if (!v38)
            {
              LODWORD(v32) = 0;
              *(this + 24) = 1;
              goto LABEL_50;
            }

            v41 = *v39;
            *(this + 1) = v40;
            v32 |= (v41 & 0x7F) << v36;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            --v38;
            ++v39;
            ++v40;
            v14 = v37++ > 8;
            if (v14)
            {
LABEL_44:
              LODWORD(v32) = 0;
              goto LABEL_50;
            }
          }

          if (*(this + 24))
          {
            LODWORD(v32) = 0;
          }
        }

        else
        {
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = (v29 + v28);
          v34 = v28 + 1;
          while (1)
          {
            *(this + 1) = v34;
            v35 = *v33++;
            v32 |= (v35 & 0x7F) << v30;
            if ((v35 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            ++v34;
            v14 = v31++ > 8;
            if (v14)
            {
              goto LABEL_44;
            }
          }
        }

LABEL_50:
        *(a1 + 32) = v32;
      }

      else if (v22 == 1)
      {
        *(a1 + 40) |= 2u;
        v23 = *(this + 1);
        if (v23 >= *(this + 2))
        {
          v26 = 0;
          *(this + 24) = 1;
        }

        else
        {
          v24 = v23 + 1;
          v25 = *(*this + v23);
          *(this + 1) = v24;
          v26 = v25 != 0;
        }

        *(a1 + 36) = v26;
      }

      else if ((PB::Reader::skip(this, v22, v10 & 7, 0) & 1) == 0)
      {
        v43 = 0;
        return v43 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_55:
  v43 = v4 ^ 1;
  return v43 & 1;
}

uint64_t sub_1007EA24C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 40);
  if ((v4 & 2) != 0)
  {
    result = PB::Writer::write(this, *(result + 36), 1u);
    v4 = *(v3 + 40);
  }

  if (v4)
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 32), 2u);
  }

  v6 = *(v3 + 8);
  v5 = *(v3 + 16);
  while (v6 != v5)
  {
    v7 = *v6++;
    result = PB::Writer::writeSubmessage(this, v7, 3u);
  }

  return result;
}

double sub_1007EA2C8(uint64_t a1)
{
  *a1 = off_101E80E70;
  *(a1 + 52) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

void sub_1007EA2FC(uint64_t a1)
{
  *a1 = off_101E80E70;
  v4 = *(a1 + 40);
  v2 = (a1 + 40);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  v5 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v5)
  {
    sub_100140988(a1 + 32, v5);
  }

  sub_100140928((a1 + 24), 0);
  sub_100140928((a1 + 16), 0);
  v6 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v6)
  {
    sub_100140988(a1 + 8, v6);
  }

  PB::Base::~Base(a1);
}

void sub_1007EA3A0(uint64_t a1)
{
  sub_1007EA2FC(a1);

  operator delete();
}

uint64_t sub_1007EA3D8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *a1 = off_101E80E70;
  *(a1 + 40) = 0;
  *(a1 + 52) = 0;
  if (*(a2 + 40))
  {
    operator new();
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    operator new();
  }

  if (*(a2 + 32))
  {
    operator new();
  }

  if (*(a2 + 16))
  {
    operator new();
  }

  if (*(a2 + 52))
  {
    v2 = *(a2 + 48);
    *(a1 + 52) |= 1u;
    *(a1 + 48) = v2;
  }

  return a1;
}

uint64_t sub_1007EA634(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (*(a1 + 52))
  {
    PB::TextFormatter::format(this, "error", *(a1 + 48));
  }

  if (*(a1 + 8))
  {
    PB::TextFormatter::format();
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    PB::TextFormatter::format(this, "payload", v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    PB::TextFormatter::format(this, "senderEID", v6);
  }

  if (*(a1 + 32))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 40))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1007EA70C(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_59;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 3)
      {
        switch(v22)
        {
          case 4:
            operator new();
          case 5:
            operator new();
          case 6:
            *(a1 + 52) |= 1u;
            v24 = *(this + 1);
            v23 = *(this + 2);
            v25 = *this;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v32 = 0;
              v33 = 0;
              v28 = 0;
              v17 = v23 >= v24;
              v34 = v23 - v24;
              if (!v17)
              {
                v34 = 0;
              }

              v35 = (v25 + v24);
              v36 = v24 + 1;
              while (1)
              {
                if (!v34)
                {
                  LODWORD(v28) = 0;
                  *(this + 24) = 1;
                  goto LABEL_54;
                }

                v37 = *v35;
                *(this + 1) = v36;
                v28 |= (v37 & 0x7F) << v32;
                if ((v37 & 0x80) == 0)
                {
                  break;
                }

                v32 += 7;
                --v34;
                ++v35;
                ++v36;
                v14 = v33++ > 8;
                if (v14)
                {
LABEL_50:
                  LODWORD(v28) = 0;
                  goto LABEL_54;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v28) = 0;
              }
            }

            else
            {
              v26 = 0;
              v27 = 0;
              v28 = 0;
              v29 = (v25 + v24);
              v30 = v24 + 1;
              while (1)
              {
                *(this + 1) = v30;
                v31 = *v29++;
                v28 |= (v31 & 0x7F) << v26;
                if ((v31 & 0x80) == 0)
                {
                  break;
                }

                v26 += 7;
                ++v30;
                v14 = v27++ > 8;
                if (v14)
                {
                  goto LABEL_50;
                }
              }
            }

LABEL_54:
            *(a1 + 48) = v28;
            goto LABEL_55;
        }
      }

      else
      {
        switch(v22)
        {
          case 1:
            operator new();
          case 2:
            operator new();
          case 3:
            operator new();
        }
      }

      if (!PB::Reader::skip(this, v22, v10 & 7, 0))
      {
        v39 = 0;
        return v39 & 1;
      }

LABEL_55:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_59:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t sub_1007EAB1C(uint64_t result, PB::Writer *this)
{
  v3 = result;
  if (*(result + 40))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 8))
  {
    result = PB::Writer::write();
  }

  v4 = *(v3 + 24);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 3u);
  }

  if (*(v3 + 32))
  {
    result = PB::Writer::write();
  }

  v5 = *(v3 + 16);
  if (v5)
  {
    result = PB::Writer::write(this, v5, 5u);
  }

  if (*(v3 + 52))
  {
    v6 = *(v3 + 48);

    return PB::Writer::writeVarInt(this, v6, 6u);
  }

  return result;
}

void sub_1007EAC48(void *a1)
{
  *a1 = off_101E80EC0;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  TMKXPCServer.shutdown()();
}

void sub_1007EACA8(void *a1)
{
  sub_1007EAC48(a1);

  operator delete();
}

uint64_t sub_1007EACE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100293290(v4, a2);
    sub_1007EADB0(v2, v4);
    return sub_10028ED7C(v4);
  }

  else
  {

    return sub_100186828(a2, 4);
  }
}

void sub_1007EAD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10028ED7C(va);
  _Unwind_Resume(a1);
}

void sub_1007EADB0(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(CellularPlanCrossPlatformTransportUtility);
  v5 = *(a1 + 192);
  *(a1 + 192) = v4;

  v6 = +[D2DConnectionFactory sharedInstance];
  (***(a1 + 56))(v27);
  v28 = *v27;
  v27[0] = 0;
  v27[1] = 0;
  v7 = *(a1 + 24);
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = [v6 createConnectionWithRegistry:&v28 queue:&object];
  v9 = *(a1 + 144);
  *(a1 + 144) = v8;

  if (object)
  {
    dispatch_release(object);
  }

  if (*(&v28 + 1))
  {
    sub_100004A34(*(&v28 + 1));
  }

  if (v27[1])
  {
    sub_100004A34(v27[1]);
  }

  (***(a1 + 56))(v27);
  ServiceMap = Registry::getServiceMap(v27[0]);
  v11 = ServiceMap;
  v12 = "22CellularPlanController";
  if (("22CellularPlanController" & 0x8000000000000000) != 0)
  {
    v13 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
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
  v22 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v22);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      goto LABEL_17;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
LABEL_17:
  v19 = *(a1 + 176);
  *(a1 + 168) = v18;
  *(a1 + 176) = v17;
  if (v19)
  {
    sub_100004A34(v19);
  }

  if (v27[1])
  {
    sub_100004A34(v27[1]);
  }

  v20 = *(a1 + 144);
  sub_100004AA0(&v22, (a1 + 8));
  sub_1007EBC40(&v22, v27);
  if (v27[0])
  {
    v21 = v27[0] + 136;
  }

  else
  {
    v21 = 0;
  }

  v24 = v21;
  v25 = v27[1];
  v27[0] = 0;
  v27[1] = 0;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3321888768;
  v29[2] = sub_1007EBCC4;
  v29[3] = &unk_101E47410;
  v29[4] = a1;
  sub_100293290(v30, a2);
  [v20 setDelegate:&v24 forTarget:1 completion:v29];
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v27[1])
  {
    sub_100004A34(v27[1]);
  }

  if (v23)
  {
    sub_100004A34(v23);
  }

  sub_10028ED7C(v30);
}

void sub_1007EB07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, dispatch_object_t object, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18)
{
  sub_10028ED7C(v19 + 40);
  if (a13)
  {
    sub_100004A34(a13);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1007EB11C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    sub_1007EB130(v1);
  }
}

void sub_1007EB130(uint64_t a1)
{
  sub_100A843E8(a1);
  [*(a1 + 144) stop:sub_1007D1B8C(a1)];
  v2 = *(a1 + 144);
  *(a1 + 144) = 0;
}

uint64_t sub_1007EB184@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 32))();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_1007EB1C8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    sub_1007EB1D8(v1);
  }
}

void sub_1007EB1D8(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_10177FB08();
  }
}

void sub_1007EB214(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_1007EB224(v3, a2, a3);
  }
}

void sub_1007EB224(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v6 = [NSString stringWithUTF8String:v5];
  v7 = [*(a1 + 208) objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = objc_alloc_init(CellularPlanCrossPlatformTransferMessageCodec);
    v9 = objc_alloc_init(ObjcSimTransferStatus);
    [(ObjcSimTransferStatus *)v9 setIccid:v6];
    -[ObjcSimTransferStatus setStatus:](v9, "setStatus:", [*(a1 + 192) convertPendingStateToTransferStatus:a3]);
    [*(a1 + 208) setObject:v9 forKeyedSubscript:v6];
    v10 = objc_alloc_init(ObjcSimTransferProfileNotification);
    [(ObjcSimTransferProfileNotification *)v10 setSessionID:*(a1 + 200)];
    v11 = [*(a1 + 208) allValues];
    [(ObjcSimTransferProfileNotification *)v10 setStatus:v11];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v12 = [(ObjcSimTransferProfileNotification *)v10 status];
    v13 = [v12 countByEnumeratingWithState:&v23 objects:v30 count:16];
    if (v13)
    {
      v14 = *v24;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v23 + 1) + 8 * i);
          *(a1 + 128) = [v16 status];
          v17 = [v16 status];
          if ((v17 - 6) >= 6 && v17 != 1)
          {
            goto LABEL_20;
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v23 objects:v30 count:16];
      }

      while (v13);
    }

LABEL_20:

    v20 = *(a1 + 40);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [(ObjcSimTransferProfileNotification *)v10 status];
      *buf = 138412290;
      v29 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I send ProfileNotification %@", buf, 0xCu);
    }

    [(CellularPlanCrossPlatformTransferMessageCodec *)v8 encodeProfileNotification:v10];
    objc_claimAutoreleasedReturnValue();
    v22 = v8;
    v27 = 0;
    operator new();
  }

  v19 = *(a1 + 40);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_10177FB3C(v6, v19);
  }
}

void *sub_1007EB5CC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[1];
  if (v3)
  {
    if (*(v3 + 239) < 0)
    {
      result = sub_100005F2C(a2, *(v3 + 216), *(v3 + 224));
    }

    else
    {
      v4 = *(v3 + 216);
      *(a2 + 16) = *(v3 + 232);
      *a2 = v4;
    }

    LOBYTE(v3) = 1;
  }

  else
  {
    *a2 = 0;
  }

  *(a2 + 24) = v3;
  return result;
}

char *sub_1007EB62C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[239] < 0)
  {
    result = sub_100005F2C(a2, *(result + 27), *(result + 28));
  }

  else
  {
    *a2 = *(result + 216);
    *(a2 + 16) = *(result + 29);
  }

  *(a2 + 24) = 1;
  return result;
}

void sub_1007EB67C(uint64_t a1, uint64_t a2, NSObject **a3, uint64_t *a4)
{
  v7 = *a3;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = a4[1];
  v12 = *a4;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10000501C(__p, "t.xtp");
  sub_1007D0FF4(a1, a2, &object, &v12, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = off_101E80F18;
  *(a1 + 136) = off_101E80FB8;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  v9 = objc_opt_new();
  v10 = *(a1 + 208);
  *(a1 + 208) = v9;

  (***(a1 + 56))(v11);
  v11[3] = a1 + 40;
  sub_10039C900();
}

void sub_1007EB9AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, dispatch_object_t object, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_10039CE5C(&a17);
  sub_100009970(&a9, a10);
  if (*(v26 + 239) < 0)
  {
    operator delete(*(v26 + 216));
  }

  v28 = *(v26 + 176);
  if (v28)
  {
    sub_100004A34(v28);
  }

  v29 = *(v26 + 160);
  if (v29)
  {
    sub_100004A34(v29);
  }

  TMKXPCServer.shutdown()();
  sub_1007D10DC(v26);
  _Unwind_Resume(a1);
}

uint64_t sub_1007EBAF4(uint64_t a1)
{
  *a1 = off_101E80F18;
  *(a1 + 136) = off_101E80FB8;
  sub_1007EB130(a1);
  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  v2 = *(a1 + 176);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    sub_100004A34(v3);
  }

  TMKXPCServer.shutdown()();

  return sub_1007D10DC(a1);
}

void sub_1007EBBCC(uint64_t a1)
{
  sub_1007EBAF4(a1);

  operator delete();
}

void sub_1007EBC04(uint64_t a1)
{
  sub_1007EBAF4(a1 - 136);

  operator delete();
}

void *sub_1007EBC40@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = a1;
  result = *a1;
  {
    v5 = v2[1];
    *a2 = result;
    a2[1] = v5;
  }

  else
  {
    v2 = a2;
  }

  *v2 = 0;
  v2[1] = 0;
  return result;
}

void sub_1007EBCC4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (*(a1 + 64))
  {
    if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I start connection", v4, 2u);
    }

    [*(v1 + 144) start];
    sub_100186828(a1 + 40, 0);
  }

  else if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_FAULT))
  {
    sub_10176E298();
  }
}

void sub_1007EBD70(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = *(a1 + 152);
  sub_10000501C(__p, [v8 UTF8String]);
  (*(*v9 + 24))(v9, __p);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  v10 = v8;
  sub_10000501C(__p, [v8 UTF8String]);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  *(a1 + 96) = *__p;
  *(a1 + 112) = v16;
  sub_100004AA0(__p, (a1 + 8));
  v12 = __p[0];
  v11 = __p[1];
  if (__p[1])
  {
    atomic_fetch_add_explicit(__p[1] + 2, 1uLL, memory_order_relaxed);
    sub_100004A34(v11);
  }

  v13 = *(a1 + 144);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3321888768;
  v17[2] = sub_1007EC798;
  v17[3] = &unk_101E81000;
  v19 = a1;
  v20 = v12;
  v21 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = v8;
  v18 = v14;
  sub_10009CF40(v22, a4);
  [v13 send:v7 completion:v17];
  sub_10002B644(v22);

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }
}

void sub_1007EBF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  sub_10002B644(v25 + 64);

  if (a22)
  {
    std::__shared_weak_count::__release_weak(a22);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  _Unwind_Resume(a1);
}

void sub_1007EBFD8(uint64_t a1)
{
  (*(**(a1 + 152) + 32))(*(a1 + 152));
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (a1 + 8));
  operator new();
}

void sub_1007EC0DC(uint64_t a1, int a2)
{
  if (*(a1 + 48) != 2)
  {
    sub_10177FBB4();
  }

  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I connection state changed to %d", buf, 8u);
  }

  v20 = 0;
  v21 = 0;
  (*(*a1 + 32))(&v20, a1);
  v18 = 0;
  v19 = 0;
  (***(a1 + 56))(&v16);
  Registry::getNotificationSenderFactory(buf, v16);
  v5 = *buf;
  (***(a1 + 56))(&v12);
  Registry::getTimerService(&v14, v12);
  (*(*v5 + 168))(&v18, v5, &v14, a1 + 24);
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v23)
  {
    sub_100004A34(v23);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v18)
  {
    v6 = objc_opt_new();
    v7 = [NSString stringWithUTF8String:sub_100649BE0(*(a1 + 48))];
    [v6 setObject:v7 forKey:@"kCrossTransferEndpoint"];

    v8 = [NSNumber numberWithBool:a2 == 1];
    [v6 setObject:v8 forKey:@"kCrossTransferConnected"];

    v9 = v18;
    v11 = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    (*(*v9 + 40))(v9, &v11);
    sub_10001021C(&v11);
  }

  if (a2 == 1)
  {
    v10 = *(a1 + 152);
    sub_10000501C(buf, "kConnected");
    (*(*v10 + 24))(v10, buf);
    if (v24 < 0)
    {
      operator delete(*buf);
    }
  }

  else if (!a2)
  {
    sub_1007EBFD8(a1);
  }

  if (v19)
  {
    sub_100004A34(v19);
  }

  if (v21)
  {
    sub_100004A34(v21);
  }
}

void sub_1007EC400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (*(v20 - 41) < 0)
  {
    operator delete(*(v20 - 64));
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007EC4EC(uint64_t a1, uint64_t *a2)
{
  v19[0] = 0;
  v19[1] = 0;
  (***(a1 + 56))(&v15);
  Registry::getNotificationSenderFactory(&v17, v15);
  v4 = v17;
  (***(a1 + 56))(&v11);
  Registry::getTimerService(&v13, v11);
  (*(*v4 + 168))(v19, v4, &v13, a1 + 24);
  if (v14)
  {
    sub_100004A34(v14);
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  if (v19[0])
  {
    v5 = objc_opt_new();
    v6 = [NSString stringWithUTF8String:sub_100649BE0(*(a1 + 48))];
    [v5 setObject:v6 forKey:@"kCrossTransferEndpoint"];

    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    v8 = [NSString stringWithUTF8String:v7];
    [v5 setObject:v8 forKey:@"kCrossTransferTimeout"];

    v9 = v19[0];
    v10 = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    (*(*v9 + 40))(v9, &v10);
    sub_10001021C(&v10);
  }

  sub_1007EBFD8(a1);
}

void sub_1007EC6FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);

  v6 = *(v4 - 56);
  if (v6)
  {
    sub_100004A34(v6);
  }

  _Unwind_Resume(a1);
}

void sub_1007EC798(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[7];
  if (v4)
  {
    v5 = a1[5];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      if (a1[6])
      {
        v8 = *(v5 + 40);
        if (v3)
        {
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v9 = a1[4];
            v10 = [v3 localizedDescription];
            sub_10177FBE0(v9, v10, &v13, v8);
          }
        }

        else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v11 = a1[4];
          v13 = 138412290;
          v14 = v11;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Send %@ Success", &v13, 0xCu);
        }

        v12 = a1[11];
        if (!v12)
        {
          sub_100022DB4();
        }

        (*(*v12 + 48))(v12);
      }

      sub_100004A34(v7);
    }
  }
}

void sub_1007EC8E8(_Unwind_Exception *a1)
{
  sub_100004A34(v2);

  _Unwind_Resume(a1);
}

uint64_t sub_1007EC90C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_10009CF40(a1 + 64, a2 + 64);
}

void sub_1007EC950(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007EC968(uint64_t a1)
{
  sub_10002B644(a1 + 64);
  v2 = *(a1 + 56);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1007EC9B4(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_1007D114C(a1, 0, 1);
  v4[0] = off_101E81280;
  v4[1] = a1;
  v4[3] = v4;
  sub_1007EBD70(a1, v3, @"ObjcSimTransferEndSessionRequest", v4);
  sub_10002B644(v4);
}