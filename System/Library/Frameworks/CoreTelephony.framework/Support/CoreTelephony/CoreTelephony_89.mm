void sub_1005BDD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  sub_100004A34(v22);
  _Unwind_Resume(a1);
}

void sub_1005BDE28(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[12];
  v6 = a1[13];
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v28 = *(a2 + 16);
  }

  v7 = HIBYTE(v28);
  if (v5 != v6)
  {
    if (v28 >= 0)
    {
      v8 = HIBYTE(v28);
    }

    else
    {
      v8 = __p[1];
    }

    if (v28 >= 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    while (1)
    {
      v10 = *(v5 + 23);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v5 + 8);
      }

      if (v8 == v10)
      {
        v12 = v11 >= 0 ? v5 : *v5;
        if (!memcmp(v9, v12, v8))
        {
          break;
        }
      }

      v5 += 96;
      if (v5 == v6)
      {
        v5 = v6;
        break;
      }
    }
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 == a1[13] && os_log_type_enabled(a1[6], OS_LOG_TYPE_FAULT))
  {
    sub_101775214();
  }

  v30 = 0uLL;
  v13 = *(a3 + 8);
  if (v13)
  {
    v30 = **v13;
    v14 = a1[19];
    if (v14)
    {
      v15 = std::__shared_weak_count::lock(v14);
      if (v15)
      {
        v16 = a1[18];
        goto LABEL_31;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = 0;
LABEL_31:
    if ((*(a3 + 52) & 1) == 0)
    {
      goto LABEL_32;
    }

    v22 = *(a3 + 48);
    if (v22)
    {
      if (v22 != 1)
      {
        if (v22 != 2)
        {
          v23 = a1[6];
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            sub_101775254(v22, v23);
          }

          goto LABEL_52;
        }

LABEL_32:
        v17 = *(a3 + 24);
        v18 = *(a3 + 32);
        if (v17 != v18)
        {
          memset(&v26, 0, sizeof(v26));
          do
          {
            v19 = *v17;
            size = v26.__r_.__value_.__l.__size_;
            if (v26.__r_.__value_.__l.__size_ >= v26.__r_.__value_.__r.__words[2])
            {
              v21 = sub_1005C18A0(&v26);
            }

            else
            {
              *(v26.__r_.__value_.__l.__size_ + 304) = 0;
              size[17] = 0u;
              size[18] = 0u;
              size[15] = 0u;
              size[16] = 0u;
              size[13] = 0u;
              size[14] = 0u;
              size[11] = 0u;
              size[12] = 0u;
              size[9] = 0u;
              size[10] = 0u;
              size[7] = 0u;
              size[8] = 0u;
              size[5] = 0u;
              size[6] = 0u;
              size[3] = 0u;
              size[4] = 0u;
              size[1] = 0u;
              size[2] = 0u;
              *size = 0u;
              v21 = size + 312;
            }

            v26.__r_.__value_.__l.__size_ = v21;
            sub_10039F7C0((v21 - 312), v19);
            ++v17;
          }

          while (v17 != v18);
          (*(*v16 + 48))(v16, &v30, &v26);
          v29 = &v26;
          sub_1000DC8D4(&v29);
        }

LABEL_52:
        if (v15)
        {
          sub_100004A34(v15);
        }

        return;
      }

      memset(&v26, 0, sizeof(v26));
      v24 = *(a3 + 16);
      if (v24)
      {
        std::string::operator=(&v26, v24);
      }

      (*(*v16 + 56))(v16, &v30, &v26, 0);
    }

    else
    {
      memset(&v26, 0, sizeof(v26));
      v25 = *(a3 + 16);
      if (v25)
      {
        std::string::operator=(&v26, v25);
      }

      (*(*v16 + 56))(v16, &v30, &v26, 1);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v26.__r_.__value_.__l.__data_);
    }

    goto LABEL_52;
  }
}

void sub_1005BE164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v19)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005BE1B4(uint64_t a1, uint64_t a2)
{
  v7 = 0u;
  memset(&__p, 0, sizeof(__p));
  *v6 = 0u;
  v4 = *(a2 + 8);
  if (v4 && *(a2 + 16))
  {
    std::string::operator=(&v6[1], v4);
    std::string::operator=(&__p, *(a2 + 16));
    v5 = *(a2 + 24);
    LOBYTE(v6[0]) = v5;
  }

  else
  {
    LOBYTE(v5) = 7;
  }

  if (*(a1 + 208))
  {
    sub_1005BFBF8(a1 + 184, v6, v5);
    sub_1005C5F68(a1 + 184);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[1]);
  }
}

void sub_1005BE284(void *a1, uint64_t a2)
{
  v3 = a1[19];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = a1[18];
      if (v6)
      {
        memset(&v27, 0, sizeof(v27));
        v31 = 0uLL;
        v30 = 0uLL;
        memset(&v26, 0, sizeof(v26));
        v7 = *(a2 + 32);
        if (v7)
        {
          std::string::operator=(&v26, v7);
        }

        v8 = *(a2 + 8);
        if (v8)
        {
          if ((*(v8 + 23) & 0x8000000000000000) != 0)
          {
            if (*(v8 + 8))
            {
              goto LABEL_9;
            }
          }

          else if (*(v8 + 23))
          {
LABEL_9:
            std::string::operator=(&v27, v8);
            v9 = *(a2 + 24);
            if (v9 && (v10 = *(a2 + 16)) != 0)
            {
              if (v9[1] == 16)
              {
                v30 = **v9;
                if (*(v10 + 8) == 16)
                {
                  v31 = **v10;
                  if (*(a2 + 44))
                  {
                    v18 = *(a2 + 40);
                    v20 = 257;
                    if (v18 < 3)
                    {
                      v19 = 1;
                    }

                    else
                    {
                      v19 = 4;
                    }

                    (*(*v6 + 16))(v6, &v26, &v27, &v30, &v31, v19, &v20);
                    LOBYTE(v20) = 0;
                  }

                  else
                  {
                    v21 = 3330;
                    (*(*v6 + 16))(v6, &v26, &v27, &v30, &v31, 4, &v21);
                    LOBYTE(v21) = 0;
                  }
                }

                else
                {
                  v16 = a1[6];
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                  {
                    v17 = asString();
                    *buf = 136315138;
                    v29 = v17;
                    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#E %s", buf, 0xCu);
                  }

                  v22 = 3330;
                  (*(*v6 + 16))(v6, &v26, &v27, &v30, &v31, 4, &v22);
                  LOBYTE(v22) = 0;
                }
              }

              else
              {
                v14 = a1[6];
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  v15 = asString();
                  *buf = 136315138;
                  v29 = v15;
                  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#E %s", buf, 0xCu);
                }

                v23 = 3330;
                (*(*v6 + 16))(v6, &v26, &v27, &v30, &v31, 4, &v23);
                LOBYTE(v23) = 0;
              }
            }

            else
            {
              v12 = a1[6];
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#E Bad transfer consent accept response. invalid eid", buf, 2u);
              }

              v24 = 3330;
              (*(*v6 + 16))(v6, &v26, &v27, &v30, &v31, 4, &v24);
              LOBYTE(v24) = 0;
            }

LABEL_27:
            if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v26.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v27.__r_.__value_.__l.__data_);
            }

LABEL_31:
            sub_100004A34(v5);
            return;
          }
        }

        v13 = a1[6];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#E Bad transfer consent accept response. invalid iccid", buf, 2u);
        }

        v25 = 3330;
        (*(*v6 + 16))(v6, &v26, &v27, &v30, &v31, 4, &v25);
        LOBYTE(v25) = 0;
        goto LABEL_27;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v11 = a1[6];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v27.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#E invalid delegate", &v27, 2u);
  }

  if (v5)
  {
    goto LABEL_31;
  }
}

void sub_1005BE704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, char a18, char a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  sub_100004A34(v33);
  _Unwind_Resume(a1);
}

void sub_1005BE788(void *a1, uint64_t a2)
{
  v3 = a1[19];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = a1[18];
      if (v6)
      {
        __dst[0] = 0;
        __dst[1] = 0;
        v34 = 0;
        v7 = *(a2 + 40);
        if (v7)
        {
          if (*(v7 + 23) < 0)
          {
            sub_100005F2C(__dst, *v7, *(v7 + 1));
          }

          else
          {
            v8 = *v7;
            v34 = *(v7 + 2);
            *__dst = v8;
          }
        }

        else
        {
          sub_10000501C(__dst, "");
        }

        v31[0] = 0;
        v31[1] = 0;
        v32 = 0;
        v10 = *(a2 + 8);
        if (v10)
        {
          if (*(v10 + 23) < 0)
          {
            sub_100005F2C(v31, *v10, *(v10 + 1));
          }

          else
          {
            v11 = *v10;
            v32 = *(v10 + 2);
            *v31 = v11;
          }
        }

        else
        {
          sub_10000501C(v31, "");
        }

        __p[0] = 0;
        __p[1] = 0;
        v30 = 0;
        v12 = *(a2 + 32);
        if (v12)
        {
          if (*(v12 + 23) < 0)
          {
            sub_100005F2C(__p, *v12, *(v12 + 1));
          }

          else
          {
            v13 = *v12;
            v30 = *(v12 + 2);
            *__p = v13;
          }
        }

        else
        {
          sub_10000501C(__p, "");
        }

        v14 = *(a2 + 52);
        v15 = *(a2 + 48);
        v16 = a1[6];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = __dst;
          if (v34 < 0)
          {
            v17 = __dst[0];
          }

          v18 = v31;
          if (v32 < 0)
          {
            v18 = v31[0];
          }

          v19 = __p;
          if (v30 < 0)
          {
            v19 = __p[0];
          }

          *buf = 136446722;
          *&buf[4] = v17;
          *&buf[12] = 2080;
          *&buf[14] = v18;
          *&buf[22] = 2082;
          v36 = v19;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I [GenericTransferPayloadInd]. %{public}s, %s, %{public}s", buf, 0x20u);
        }

        v20 = v14 << 31 >> 31;
        v21 = HIBYTE(v32);
        if (v32 < 0)
        {
          v21 = v31[1];
        }

        if (!v21)
        {
          goto LABEL_42;
        }

        v22 = HIBYTE(v34);
        if (v34 < 0)
        {
          v22 = __dst[1];
        }

        if (!v22)
        {
          goto LABEL_42;
        }

        v23 = HIBYTE(v30);
        if (v30 < 0)
        {
          v23 = __p[1];
        }

        if (v23)
        {
          v24 = *(a2 + 16);
          v25 = *v24;
          v26 = *(v24 + 8);
          memset(buf, 0, sizeof(buf));
          sub_1000DCF88(buf, v25, &v25[v26], v26);
          v27 = 257;
          (*(*v6 + 32))(v6, __dst, v31, __p, buf, v20 & v15, &v27);
          LOBYTE(v27) = 0;
        }

        else
        {
LABEL_42:
          memset(buf, 0, sizeof(buf));
          v28 = 3330;
          (*(*v6 + 32))(v6, __dst, v31, __p, buf, v20 & v15, &v28);
          LOBYTE(v28) = 0;
        }

        if (*buf)
        {
          *&buf[8] = *buf;
          operator delete(*buf);
        }

        if (SHIBYTE(v30) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v32) < 0)
        {
          operator delete(v31[0]);
        }

        if (SHIBYTE(v34) < 0)
        {
          operator delete(__dst[0]);
        }

LABEL_51:
        sub_100004A34(v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = a1[6];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E invalid delegate", buf, 2u);
  }

  if (v5)
  {
    goto LABEL_51;
  }
}

void sub_1005BEB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  v36 = *(v34 - 96);
  if (v36)
  {
    *(v34 - 88) = v36;
    operator delete(v36);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  sub_100004A34(v33);
  _Unwind_Resume(a1);
}

void sub_1005BEBB4(void *a1, const std::string *a2)
{
  memset(v28, 0, sizeof(v28));
  sub_1009BD270(v28);
  *cf = 0u;
  *v27 = 0u;
  *&v27[20] = 0;
  memset(v25, 0, sizeof(v25));
  v27[8] = 2;
  *&v27[12] = 0x50000003CLL;
  sub_1009BF038(v4);
  v5 = a1[6];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = a2->__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I [DeviceInfoReq]: %s", buf, 0xCu);
  }

  sub_1005ACC40(v28, &v23);
  *buf = cf[1];
  cf[1] = v23;
  v23 = 0;
  sub_10002D760(buf);
  sub_10002D760(&v23);
  std::string::operator=(v25, a2);
  *&v27[12] = 30;
  v27[8] = 2;
  LOWORD(cf[0]) = (*(*a1 + 240))(a1);
  v23 = 0;
  v24 = 0;
  (*(*a1 + 248))(&v23, a1, v27[8]);
  if (v23)
  {
    sub_100004AA0(buf, a1 + 2);
    v7 = *buf;
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(*(&v7 + 1));
    }

    v8 = v23;
    if (SHIBYTE(v25[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__dst, v25[0].__r_.__value_.__l.__data_, v25[0].__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v25[0];
    }

    if (SHIBYTE(v25[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__p, v25[1].__r_.__value_.__l.__data_, v25[1].__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v25[1];
    }

    v19 = cf[0];
    v20 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v21 = *v27;
    if (*v27)
    {
      CFRetain(*v27);
    }

    v22[0] = *&v27[8];
    *(v22 + 6) = *&v27[14];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1174405120;
    v9[2] = sub_1005BF114;
    v9[3] = &unk_101E66830;
    v9[4] = a1;
    v10 = v7;
    if (*(&v7 + 1))
    {
      atomic_fetch_add_explicit((*(&v7 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v25[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v11, v25[0].__r_.__value_.__l.__data_, v25[0].__r_.__value_.__l.__size_);
    }

    else
    {
      v11 = v25[0];
    }

    if (SHIBYTE(v25[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v12, v25[1].__r_.__value_.__l.__data_, v25[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v12 = v25[1];
    }

    v13 = cf[0];
    v14 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v15 = *v27;
    if (*v27)
    {
      CFRetain(*v27);
    }

    v16[0] = *&v27[8];
    *(v16 + 6) = *&v27[14];
    (*(*v8 + 48))(v8, &__dst, v9);
    sub_1002030AC(&v21);
    sub_10002D760(&v20);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    sub_1002030AC(&v15);
    sub_10002D760(&v14);
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    if (*(&v10 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v10 + 1));
    }

    if (*(&v7 + 1))
    {
      std::__shared_weak_count::__release_weak(*(&v7 + 1));
    }
  }

  else if (os_log_type_enabled(a1[6], OS_LOG_TYPE_ERROR))
  {
    sub_1017750DC();
  }

  if (v24)
  {
    sub_100004A34(v24);
  }

  sub_1002030AC(v27);
  sub_10002D760(&cf[1]);
  if (SHIBYTE(v25[1].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25[1].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25[0].__r_.__value_.__l.__data_);
  }

  sub_1009BD5D4(v28);
}

void sub_1005BF114(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 48);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 79) < 0)
  {
    sub_100005F2C(v6, *(a1 + 56), *(a1 + 64));
  }

  else
  {
    *v6 = *(a1 + 56);
    v6[2] = *(a1 + 72);
  }

  if (*(a1 + 103) < 0)
  {
    sub_100005F2C(__p, *(a1 + 80), *(a1 + 88));
  }

  else
  {
    *__p = *(a1 + 80);
    __p[2] = *(a1 + 96);
  }

  v8 = *(a1 + 104);
  sub_10002D728(&v9, (a1 + 112));
  sub_1002030F8(&v10, (a1 + 120));
  v11[0] = *(a1 + 128);
  *(v11 + 6) = *(a1 + 134);
  sub_1005C0F8C(v12, a2);
  v13[0] = 0;
  v13[1] = 0;
  sub_100004AA0(v13, (v5 + 16));
  operator new();
}

void sub_1005BF3B4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (*(v19 + 47) < 0)
  {
    operator delete(*(v19 + 24));
  }

  v21 = *(v19 + 16);
  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  sub_10004F058(a1);
}

const void **sub_1005BF430(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    sub_100005F2C((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
  }

  if (*(a2 + 103) < 0)
  {
    sub_100005F2C((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v6 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v6;
  }

  *(a1 + 104) = *(a2 + 104);
  sub_10002D728((a1 + 112), (a2 + 112));
  result = sub_1002030F8((a1 + 120), (a2 + 120));
  v8 = *(a2 + 128);
  *(a1 + 134) = *(a2 + 134);
  *(a1 + 128) = v8;
  return result;
}

void sub_1005BF4EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005BF51C(uint64_t a1)
{
  sub_1002030AC((a1 + 120));
  sub_10002D760((a1 + 112));
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

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

uint64_t *sub_1005BF590(uint64_t *result)
{
  v1 = (result + 15);
  v2 = result[15];
  v3 = result + 16;
  if (v2 != result + 16)
  {
    v4 = result;
    do
    {
      v5 = v4[12];
      v6 = v4[13];
      if (v5 == v6)
      {
LABEL_18:
        result = sub_1005C5F24(v1, v2);
      }

      else
      {
        v7 = *(v2 + 71);
        if (v7 >= 0)
        {
          v8 = *(v2 + 71);
        }

        else
        {
          v8 = v2[7];
        }

        while (1)
        {
          v9 = *(v5 + 23);
          v10 = v9;
          if ((v9 & 0x80u) != 0)
          {
            v9 = *(v5 + 8);
          }

          if (v9 == v8)
          {
            v11 = v10 >= 0 ? v5 : *v5;
            v12 = v7 >= 0 ? v2 + 6 : v2[6];
            if (!memcmp(v11, v12, v8))
            {
              break;
            }
          }

          v5 += 96;
          if (v5 == v6)
          {
            goto LABEL_18;
          }
        }

        v13 = v2[1];
        if (v13)
        {
          do
          {
            result = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            result = v2[2];
            v14 = *result == v2;
            v2 = result;
          }

          while (!v14);
        }
      }

      v2 = result;
    }

    while (result != v3);
  }

  return result;
}

void sub_1005BF6A0(char *a1, std::string **a2)
{
  v4 = *(a1 + 6);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5);
    *buf = 134217984;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Number of devices: %lu", buf, 0xCu);
  }

  if (a1 + 96 != a2)
  {
    sub_1005C12F0((a1 + 96), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 5));
  }

  if (*a2 != a2[1])
  {
    v6 = *(a1 + 27);
    if (v6)
    {
      *(a1 + 27) = 0;
      (*(*v6 + 8))(v6);
      for (i = *(a1 + 29); i != a1 + 224; i = *(i + 8))
      {
        v25 = 0;
        memset(buf, 0, sizeof(buf));
        sub_1005C1814(buf, (i + 16));
        memset(&__dst, 0, sizeof(__dst));
        if ((buf[23] & 0x80000000) != 0)
        {
          sub_100005F2C(&__dst, *buf, *&buf[8]);
        }

        else
        {
          __dst = *buf;
        }

        v16 = 0u;
        v17 = 0u;
        memset(v15, 0, sizeof(v15));
        sub_1009BDBEC(v15, &buf[24]);
        v22 = 0u;
        v23 = 0u;
        sub_1001135B0(&v22, &buf[152]);
        __p[1] = 0;
        v14 = 0;
        __p[0] = 0;
        v8 = *(v16 + 40);
        if (*(v8 + 23) < 0)
        {
          sub_100005F2C(__p, *v8, *(v8 + 1));
        }

        else
        {
          v9 = *v8;
          v14 = *(v8 + 2);
          *__p = v9;
        }

        if (sub_1005B99C0(a1, &__dst))
        {
          sub_1001135B0(v19, &v22);
          sub_1005B9F9C(a1, &__dst, v15, v19);
          sub_100113648(v19);
        }

        else
        {
          v10 = *(a1 + 6);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            if (v14 >= 0)
            {
              v11 = __p;
            }

            else
            {
              v11 = __p[0];
            }

            v20 = 136315138;
            v21 = v11;
            _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Destination device %s not found", &v20, 0xCu);
          }

          v12 = 5122;
          if (!*(&v23 + 1))
          {
            sub_100022DB4();
          }

          (*(**(&v23 + 1) + 48))(*(&v23 + 1), &v12);
          LOBYTE(v12) = 0;
        }

        if (SHIBYTE(v14) < 0)
        {
          operator delete(__p[0]);
        }

        sub_100113648(&v22);
        sub_1009BD5D4(v15);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        sub_100113648(&buf[152]);
        sub_1009BD5D4(&buf[24]);
        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      sub_1005C0E30(a1 + 224);
    }
  }
}

void sub_1005BFA14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_100113648(&a51);
  sub_1009BD5D4(&a22);
  if (a43 < 0)
  {
    operator delete(*(v55 + 128));
  }

  sub_1005BFA98(&a55);
  _Unwind_Resume(a1);
}

uint64_t sub_1005BFA98(uint64_t a1)
{
  sub_100113648(a1 + 152);
  sub_1009BD5D4((a1 + 24));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1005BFB68(uint64_t a1)
{
  if (*(a1 + 136) == 1)
  {
    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 96));
    }

    if (*(a1 + 56) == 1)
    {
      if (*(a1 + 87) < 0)
      {
        operator delete(*(a1 + 64));
      }

      *(a1 + 56) = 0;
    }

    if (*(a1 + 24) == 1)
    {
      if (*(a1 + 55) < 0)
      {
        operator delete(*(a1 + 32));
      }

      *(a1 + 24) = 0;
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t sub_1005BFBF8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

void sub_1005BFC4C(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 48);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [TransferProfileRsp]", buf, 2u);
  }

  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  *buf = 0u;
  v41 = 0u;
  sub_100A34C5C(buf);
  v9 = *(a3 + 56);
  if (v9)
  {
    *v37 = 0u;
    v38 = 0u;
    BytePtr = CFDataGetBytePtr(v9);
    Length = CFDataGetLength(*(a3 + 56));
    PB::Reader::Reader(v37, BytePtr, Length);
    if (sub_100A353F0(buf, v37))
    {
      if (*(&v46 + 1))
      {
        if (*(*(&v46 + 1) + 28))
        {
          v26 = *(*(&v46 + 1) + 24);
          v33[0] = 2;
          v33[1] = v26;
          v27 = *(a4 + 24);
          if (!v27)
          {
            sub_100022DB4();
          }

          (*(*v27 + 48))(v27, v33);
          v33[0] = 0;
        }

        else
        {
          v12 = *(*(&v46 + 1) + 8);
          if (v12)
          {
            v13 = *(a2 + 23);
            if (v13 >= 0)
            {
              v14 = *(a2 + 23);
            }

            else
            {
              v14 = a2[1];
            }

            v15 = *(v12 + 23);
            v16 = v15;
            if ((v15 & 0x80u) != 0)
            {
              v15 = *(v12 + 8);
            }

            if (v14 == v15)
            {
              if (v13 >= 0)
              {
                v17 = a2;
              }

              else
              {
                v17 = *a2;
              }

              if (v16 >= 0)
              {
                v18 = *(*(&v46 + 1) + 8);
              }

              else
              {
                v18 = *v12;
              }

              v19 = memcmp(v17, v18, v14) == 0;
            }

            else
            {
              v19 = 0;
            }

            v31[0] = 1;
            v31[1] = v19;
            v30 = *(a4 + 24);
            if (!v30)
            {
              sub_100022DB4();
            }

            (*(*v30 + 48))(v30, v31);
            v31[0] = 0;
          }

          else
          {
            v28 = *(a1 + 48);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *v36 = 0;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#E Missing ICCID", v36, 2u);
            }

            v32 = 3330;
            v29 = *(a4 + 24);
            if (!v29)
            {
              sub_100022DB4();
            }

            (*(*v29 + 48))(v29, &v32);
            LOBYTE(v32) = 0;
          }
        }
      }

      else
      {
        v24 = *(a1 + 48);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *v36 = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#E Bad response", v36, 2u);
        }

        v34 = 3586;
        v25 = *(a4 + 24);
        if (!v25)
        {
          sub_100022DB4();
        }

        (*(*v25 + 48))(v25, &v34);
        LOBYTE(v34) = 0;
      }
    }

    else
    {
      v22 = *(a1 + 48);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#E Invalid Response", v36, 2u);
      }

      v35 = 3330;
      v23 = *(a4 + 24);
      if (!v23)
      {
        sub_100022DB4();
      }

      (*(*v23 + 48))(v23, &v35);
      LOBYTE(v35) = 0;
    }
  }

  else
  {
    v20 = *(a1 + 48);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#E no response data", v37, 2u);
    }

    v39 = 1;
    v21 = *(a4 + 24);
    if (!v21)
    {
      sub_100022DB4();
    }

    (*(*v21 + 48))(v21, &v39);
    LOBYTE(v39) = 0;
  }

  sub_100A34FF0(buf);
}

void sub_1005C005C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_100A34FF0(va);
  _Unwind_Resume(a1);
}

void sub_1005C00B8(uint64_t a1, size_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 48);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    if (*(a2 + 23) >= 0)
    {
      v12 = a2;
    }

    else
    {
      v12 = *a2;
    }

    *buf = 136446466;
    *&buf[4] = v11;
    *&buf[12] = 2082;
    *&buf[14] = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I response of [GenericTransferPayloadPb] : %{public}s, uuid:%{public}s", buf, 0x16u);
  }

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  memset(buf, 0, sizeof(buf));
  sub_100A34C5C(buf);
  v13 = *(a4 + 56);
  if (v13)
  {
    *v41 = 0u;
    v42 = 0u;
    BytePtr = CFDataGetBytePtr(v13);
    Length = CFDataGetLength(*(a4 + 56));
    PB::Reader::Reader(v41, BytePtr, Length);
    if (sub_100A353F0(buf, v41))
    {
      if (v47)
      {
        if (*(v47 + 32))
        {
          v16 = *(v47 + 40);
          if (v16)
          {
            v17 = *(a2 + 23);
            if (v17 >= 0)
            {
              v18 = *(a2 + 23);
            }

            else
            {
              v18 = a2[1];
            }

            v19 = *(v16 + 23);
            v20 = v19;
            if ((v19 & 0x80u) != 0)
            {
              v19 = *(v16 + 8);
            }

            if (v18 == v19)
            {
              if (v17 >= 0)
              {
                v21 = a2;
              }

              else
              {
                v21 = *a2;
              }

              if (v20 >= 0)
              {
                v22 = *(v47 + 40);
              }

              else
              {
                v22 = *v16;
              }

              v23 = memcmp(v21, v22, v18) == 0;
            }

            else
            {
              v23 = 0;
            }

            v35[0] = 1;
            v35[1] = v23;
            v34 = *(a5 + 24);
            if (!v34)
            {
              sub_100022DB4();
            }

            (*(*v34 + 48))(v34, v35);
            v35[0] = 0;
          }

          else
          {
            v32 = *(a1 + 48);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *v40 = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#E Missing uuid", v40, 2u);
            }

            v36 = 3330;
            v33 = *(a5 + 24);
            if (!v33)
            {
              sub_100022DB4();
            }

            (*(*v33 + 48))(v33, &v36);
            LOBYTE(v36) = 0;
          }
        }

        else
        {
          v30 = *(a1 + 48);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *v40 = 0;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#E Missing type", v40, 2u);
          }

          v37 = 3330;
          v31 = *(a5 + 24);
          if (!v31)
          {
            sub_100022DB4();
          }

          (*(*v31 + 48))(v31, &v37);
          LOBYTE(v37) = 0;
        }
      }

      else
      {
        v28 = *(a1 + 48);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *v40 = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#E Bad response", v40, 2u);
        }

        v38 = 3586;
        v29 = *(a5 + 24);
        if (!v29)
        {
          sub_100022DB4();
        }

        (*(*v29 + 48))(v29, &v38);
        LOBYTE(v38) = 0;
      }
    }

    else
    {
      v26 = *(a1 + 48);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#E Invalid Response", v40, 2u);
      }

      v39 = 3330;
      v27 = *(a5 + 24);
      if (!v27)
      {
        sub_100022DB4();
      }

      (*(*v27 + 48))(v27, &v39);
      LOBYTE(v39) = 0;
    }
  }

  else
  {
    v24 = *(a1 + 48);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#E no response data", v41, 2u);
    }

    v43 = 1;
    v25 = *(a5 + 24);
    if (!v25)
    {
      sub_100022DB4();
    }

    (*(*v25 + 48))(v25, &v43);
    LOBYTE(v43) = 0;
  }

  sub_100A34FF0(buf);
}

void sub_1005C0564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_100A34FF0(va);
  _Unwind_Resume(a1);
}

void sub_1005C05C0(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(a1 + 32);
  v7 = v5;
  v3 = *(a1 + 48);
  v8 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1005C0F8C(v9, a2);
  sub_1001135B0(v10, a1 + 56);
  v4 = *(a1 + 96);
  v10[4] = *(a1 + 88);
  v10[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 127) < 0)
  {
    sub_100005F2C(__p, *(a1 + 104), *(a1 + 112));
  }

  else
  {
    *__p = *(a1 + 104);
    __p[2] = *(a1 + 120);
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (v5 + 16));
  operator new();
}

void sub_1005C0814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  if (a2)
  {
    v38 = *(v35 + 160);
    if (v38)
    {
      sub_100004A34(v38);
    }

    sub_100113648(v36 + 96);
    sub_1005C116C(v36);
    v39 = *(v35 + 16);
    if (v39)
    {
      std::__shared_weak_count::__release_weak(v39);
    }

    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C08B0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1017752CC(a1, v3);
  }

  v5 = 5122;
  v4 = *(a1 + 88);
  if (!v4)
  {
    sub_100022DB4();
  }

  (*(*v4 + 48))(v4, &v5);
  LOBYTE(v5) = 0;
  sub_1005C0E30((v2 + 224));
}

uint64_t sub_1005C0950(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    sub_100005F2C((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  return sub_1001135B0(a1 + 64, a2 + 64);
}

void sub_1005C09A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C09C4(uint64_t a1)
{
  sub_100113648(a1 + 64);
  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

void sub_1005C0A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = 0;
  v32 = 0;
  v6 = *(a1 + 56);
  sub_100004AA0(&v27, (a1 + 16));
  v7 = v27 + 8;
  if (!v27)
  {
    v7 = 0;
  }

  v29 = v7;
  v30 = v28;
  v27 = 0;
  v28 = 0;
  (*(*v6 + 608))(&v31, v6, &v29);
  if (v30)
  {
    sub_100004A34(v30);
  }

  if (v28)
  {
    sub_100004A34(v28);
  }

  if (v31)
  {
    (*(*v31 + 272))(v31, a2, a3);
  }

  if (v32)
  {
    sub_100004A34(v32);
  }

  (***(a1 + 56))(&v31);
  ServiceMap = Registry::getServiceMap(v31);
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
  v27 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v27);
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
      goto LABEL_19;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_19:
  if (v32)
  {
    sub_100004A34(v32);
  }

  if (v16)
  {
    v27 = 0;
    v18 = xpc_dictionary_create(0, 0, 0);
    v19 = v18;
    if (v18)
    {
      v27 = v18;
    }

    else
    {
      v19 = xpc_null_create();
      v27 = v19;
      if (!v19)
      {
        v20 = xpc_null_create();
        v19 = 0;
        goto LABEL_29;
      }
    }

    if (xpc_get_type(v19) == &_xpc_type_dictionary)
    {
      xpc_retain(v19);
LABEL_30:
      xpc_release(v19);
      v25 = xpc_int64_create(a3);
      if (!v25)
      {
        v25 = xpc_null_create();
      }

      v31 = &v27;
      v32 = "ErrorCode";
      sub_10000F688(&v31, &v25, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v25);
      v25 = 0;
      if (*(a2 + 23) >= 0)
      {
        v21 = a2;
      }

      else
      {
        v21 = *a2;
      }

      v23 = xpc_string_create(v21);
      if (!v23)
      {
        v23 = xpc_null_create();
      }

      v31 = &v27;
      v32 = "OperationType";
      sub_10000F688(&v31, &v23, &v24);
      xpc_release(v24);
      v24 = 0;
      xpc_release(v23);
      v22 = v27;
      v23 = 0;
      if (v27)
      {
        xpc_retain(v27);
      }

      else
      {
        v22 = xpc_null_create();
      }

      (*(*v16 + 16))(v16, "commCenterIDSErrors", &v22);
      xpc_release(v22);
      v22 = 0;
      xpc_release(v27);
      goto LABEL_41;
    }

    v20 = xpc_null_create();
LABEL_29:
    v27 = v20;
    goto LABEL_30;
  }

LABEL_41:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }
}

void sub_1005C0DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  xpc_release(object);
  xpc_release(a15);
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(a1);
}

void sub_1005C0E30(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = *(v2 + 1);
        sub_100113648((v2 + 168));
        sub_1009BD5D4((v2 + 40));
        if (v2[39] < 0)
        {
          operator delete(*(v2 + 2));
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void sub_1005C0EBC(void ****a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1005C0F10(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1005C0F10(uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      if (*(v4 - 9) < 0)
      {
        operator delete(*(v4 - 4));
      }

      if (*(v4 - 41) < 0)
      {
        operator delete(*(v4 - 8));
      }

      v5 = v4 - 12;
      if (*(v4 - 73) < 0)
      {
        operator delete(*v5);
      }

      v4 -= 12;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

_OWORD *sub_1005C0F8C(_OWORD *a1, unsigned __int8 *a2)
{
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  sub_1005C0FD8(a1, a2);
  return a1;
}

_BYTE *sub_1005C0FD8(_BYTE *a1, unsigned __int8 *a2)
{
  v4 = *a2;
  if (v4 == 2)
  {
    if (*a1 != 2)
    {
      sub_1005C116C(a1);
      *a1 = 2;
    }

    a1[8] = a2[8];
  }

  else if (v4 == 1)
  {
    sub_1005C1048(a1, (a2 + 8));
  }

  return a1;
}

const void **sub_1005C1048(uint64_t a1, std::string *__str)
{
  if (*a1 == 1)
  {
    std::string::operator=((a1 + 8), __str);
    std::string::operator=((a1 + 32), __str + 1);
    *(a1 + 56) = __str[2].__r_.__value_.__l.__data_;
    sub_1005C11CC((a1 + 64), &__str[2].__r_.__value_.__l.__size_);
    result = sub_1005C1224((a1 + 72), &__str[2].__r_.__value_.__r.__words[2]);
  }

  else
  {
    sub_1005C116C(a1);
    *a1 = 1;
    if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C((a1 + 8), __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v5 = *&__str->__r_.__value_.__l.__data_;
      *(a1 + 24) = *(&__str->__r_.__value_.__l + 2);
      *(a1 + 8) = v5;
    }

    if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C((a1 + 32), __str[1].__r_.__value_.__l.__data_, __str[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v6 = *&__str[1].__r_.__value_.__l.__data_;
      *(a1 + 48) = *(&__str[1].__r_.__value_.__l + 2);
      *(a1 + 32) = v6;
    }

    *(a1 + 56) = __str[2].__r_.__value_.__l.__data_;
    sub_10002D728((a1 + 64), &__str[2].__r_.__value_.__l.__size_);
    result = sub_1002030F8((a1 + 72), &__str[2].__r_.__value_.__r.__words[2]);
  }

  data = __str[3].__r_.__value_.__l.__data_;
  *(a1 + 86) = *(__str[3].__r_.__value_.__r.__words + 6);
  *(a1 + 80) = data;
  return result;
}

void sub_1005C1150(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C116C(uint64_t a1)
{
  if (*a1 == 1)
  {
    sub_1002030AC((a1 + 72));
    sub_10002D760((a1 + 64));
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }
  }

  *a1 = 0;
}

const void **sub_1005C11CC(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v5 = 0;
    sub_10002D728(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    sub_10002D760(&v5);
  }

  return a1;
}

const void **sub_1005C1224(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v5 = 0;
    sub_1002030F8(&v5, a2);
    v3 = *a1;
    *a1 = v5;
    v5 = v3;
    sub_1002030AC(&v5);
  }

  return a1;
}

void sub_1005C127C(uint64_t a1)
{
  if (!*(a1 + 80))
  {
    operator new();
  }
}

void sub_1005C12F0(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) < a4)
  {
    sub_1005C143C(a1);
    if (a4 <= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 5) >= 0x155555555555555)
      {
        v10 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_1005C147C(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 5) >= a4)
  {
    sub_1005C1720(&v14, __str, a3, v8);
    sub_1005C0F10(a1, v12);
  }

  else
  {
    sub_1005C1720(&v13, __str, (__str + v11), v8);
    *(a1 + 8) = sub_1005C14C8(a1, (__str + v11), a3, *(a1 + 8));
  }
}

void sub_1005C143C(uint64_t a1)
{
  if (*a1)
  {
    sub_1005C0F10(a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void sub_1005C147C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    sub_1005C17BC(a1, a2);
  }

  sub_1000CE3D4();
}

char *sub_1005C14C8(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v10 = __dst;
  v11 = __dst;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      sub_1005C1568(v4, v6);
      v6 += 6;
      v4 = v11 + 96;
      v11 += 96;
    }

    while (v6 != a3);
  }

  LOBYTE(v9) = 1;
  sub_1005C165C(v8);
  return v4;
}

void *sub_1005C1568(void *__dst, __int128 *a2)
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

  v5 = *(a2 + 12);
  *(__dst + 26) = *(a2 + 26);
  *(__dst + 12) = v5;
  if (*(a2 + 55) < 0)
  {
    sub_100005F2C(__dst + 32, *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v6 = a2[2];
    __dst[6] = *(a2 + 6);
    *(__dst + 2) = v6;
  }

  *(__dst + 14) = *(a2 + 14);
  if (*(a2 + 87) < 0)
  {
    sub_100005F2C(__dst + 64, *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v7 = a2[4];
    __dst[10] = *(a2 + 10);
    *(__dst + 4) = v7;
  }

  *(__dst + 88) = *(a2 + 88);
  return __dst;
}

void sub_1005C1628(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005C165C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1005C16A8(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1005C16A8(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  if (a3 != a5)
  {
    v6 = a3;
    do
    {
      if (*(v6 - 9) < 0)
      {
        operator delete(*(v6 - 4));
      }

      if (*(v6 - 41) < 0)
      {
        operator delete(*(v6 - 8));
      }

      v7 = v6 - 12;
      if (*(v6 - 73) < 0)
      {
        operator delete(*v7);
      }

      v6 -= 12;
    }

    while (v7 != a5);
  }
}

std::string *sub_1005C1720(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    v7 = v5[1].__r_.__value_.__s.__data_[2];
    LOWORD(this[1].__r_.__value_.__l.__data_) = v5[1].__r_.__value_.__l.__data_;
    this[1].__r_.__value_.__s.__data_[2] = v7;
    std::string::operator=((this + 32), (v5 + 32));
    LODWORD(this[2].__r_.__value_.__r.__words[1]) = v5[2].__r_.__value_.__r.__words[1];
    std::string::operator=((this + 64), (v5 + 64));
    this[3].__r_.__value_.__s.__data_[16] = v5[3].__r_.__value_.__s.__data_[16];
    this += 4;
    v5 += 4;
  }

  while (v5 != v6);
  return v6;
}

void sub_1005C17BC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100013D10();
}

char *sub_1005C1814(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  sub_1009BDBEC((__dst + 24), a2 + 3);
  sub_1001135B0((__dst + 152), a2 + 152);
  return __dst;
}

void sub_1005C187C(_Unwind_Exception *a1)
{
  sub_1009BD5D4((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005C18A0(uint64_t *a1)
{
  v1 = 0x6F96F96F96F96F97 * ((a1[1] - *a1) >> 3);
  v2 = v1 + 1;
  if ((v1 + 1) > 0xD20D20D20D20D2)
  {
    sub_1000CE3D4();
  }

  if (0xDF2DF2DF2DF2DF2ELL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xDF2DF2DF2DF2DF2ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6F96F96F96F96F97 * ((a1[2] - *a1) >> 3)) >= 0x69069069069069)
  {
    v4 = 0xD20D20D20D20D2;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    sub_1000DE294(a1, v4);
  }

  v5 = 312 * v1;
  v12 = 0;
  v13 = v5;
  *(&v14 + 1) = 0;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 160) = 0u;
  *(v5 + 176) = 0u;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 0u;
  *(v5 + 256) = 0u;
  *(v5 + 272) = 0u;
  *(v5 + 288) = 0u;
  *(v5 + 304) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *&v14 = 312 * v1 + 312;
  v6 = a1[1];
  v7 = 312 * v1 + *a1 - v6;
  sub_1000DE7C0(a1, *a1, v6, v5 + *a1 - v6);
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  sub_1000DE9D8(&v12);
  return v11;
}

void sub_1005C19E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000DE9D8(va);
  _Unwind_Resume(a1);
}

char *sub_1005C19FC(char *__dst, __int128 *a2, void *a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v7;
  }

  sub_1009BDBEC((__dst + 24), a3);
  sub_1001135B0((__dst + 152), a4);
  return __dst;
}

void sub_1005C1A74(_Unwind_Exception *a1)
{
  sub_1009BD5D4((v1 + 24));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005C1A98(uint64_t a1)
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

uint64_t sub_1005C1B18(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    result = 1;
    while (2)
    {
      v4 = 32;
      v5 = a2;
      while (1)
      {
        v6 = *v5;
        v7 = *(v2 + v4);
        if (v6 != v7)
        {
          break;
        }

        ++v5;
        if (++v4 == 48)
        {
          goto LABEL_8;
        }
      }

      if (v6 < v7)
      {
        goto LABEL_14;
      }

LABEL_8:
      v8 = 0;
      while (1)
      {
        v9 = *(v2 + v8 + 32);
        v10 = a2[v8];
        if (v9 != v10)
        {
          break;
        }

        if (++v8 == 16)
        {
          return result;
        }
      }

      if (v9 >= v10)
      {
        return result;
      }

      ++v2;
LABEL_14:
      v2 = *v2;
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

void *sub_1005C1B94(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = v2;
  do
  {
    v6 = 0;
    while (1)
    {
      v7 = *(v3 + v6 + 32);
      v8 = a2[v6];
      if (v7 != v8)
      {
        break;
      }

      if (++v6 == 16)
      {
        v5 = v3;
        goto LABEL_10;
      }
    }

    if (v7 >= v8)
    {
      v5 = v3;
    }

    v3 += v7 < v8;
LABEL_10:
    v3 = *v3;
  }

  while (v3);
  if (v5 == v2)
  {
    return v2;
  }

  for (i = 32; i != 48; ++i)
  {
    v10 = *a2;
    v11 = *(v5 + i);
    if (v10 != v11)
    {
      break;
    }

    ++a2;
  }

  if (v10 < v11)
  {
    return v2;
  }

  return v5;
}

uint64_t sub_1005C1C34(uint64_t result, uint64_t a2)
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

void sub_1005C1C50(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_1005C1C60(uint64_t a1, uint64_t a2)
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

_BYTE *sub_1005C1CF8(_BYTE *a1, void **a2)
{
  v4 = *a2;
  if (v4 == 2)
  {
    if (*a1 != 2)
    {
      sub_1005C116C(a1);
      *a1 = 2;
    }

    a1[8] = *(a2 + 8);
  }

  else if (v4 == 1)
  {
    sub_1005C1D68(a1, a2 + 1);
  }

  return a1;
}

void sub_1005C1D68(uint64_t a1, void **a2)
{
  if (*a1 == 1)
  {
    v4 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      operator delete(*v4);
    }

    v5 = *a2;
    *(a1 + 24) = a2[2];
    *v4 = v5;
    *(a2 + 23) = 0;
    *a2 = 0;
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    v6 = *(a2 + 3);
    *(a1 + 48) = a2[5];
    *(a1 + 32) = v6;
    *(a2 + 47) = 0;
    *(a2 + 24) = 0;
    *(a1 + 56) = *(a2 + 24);
    if (v4 != a2)
    {
      v7 = *(a1 + 64);
      *(a1 + 64) = 0;
      v12 = v7;
      *(a1 + 64) = a2[7];
      a2[7] = 0;
      sub_10002D760(&v12);
      v8 = *(a1 + 72);
      *(a1 + 72) = 0;
      v12 = v8;
      *(a1 + 72) = a2[8];
      a2[8] = 0;
      sub_1002030AC(&v12);
    }
  }

  else
  {
    sub_1005C116C(a1);
    *a1 = 1;
    v9 = *a2;
    *(a1 + 24) = a2[2];
    *(a1 + 8) = v9;
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    v10 = *(a2 + 3);
    *(a1 + 48) = a2[5];
    *(a1 + 32) = v10;
    a2[4] = 0;
    a2[5] = 0;
    a2[3] = 0;
    *(a1 + 56) = *(a2 + 24);
    *(a1 + 64) = 0;
    *(a1 + 64) = a2[7];
    a2[7] = 0;
    *(a1 + 72) = 0;
    *(a1 + 72) = a2[8];
    a2[8] = 0;
  }

  v11 = a2[9];
  *(a1 + 86) = *(a2 + 78);
  *(a1 + 80) = v11;
}

uint64_t *sub_1005C1EC8(uint64_t *a1)
{
  v1 = *a1;
  v36 = a1;
  v37 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(v1 + 8))
      {
LABEL_58:
        sub_100004A34(v5);
        goto LABEL_59;
      }

      v6 = *(v1 + 24);
      if (v6 == 2)
      {
        v7 = *(v3 + 48);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = sub_100A43314(*(v1 + 32));
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [PendingProfilesReq] IDS Failure [%s]", &buf, 0xCu);
          v9 = *(v1 + 24);
          if (v9 != 2)
          {
            if (v9 == 1)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              v34 = &ctu::ResultIsNotError::~ResultIsNotError;
              ctu::ResultIsNotError::ResultIsNotError(exception);
            }

            else
            {
              exception = __cxa_allocate_exception(0x10uLL);
              v34 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
            }

            __cxa_throw(exception, v35, v34);
          }
        }

        v10 = sub_1005AD768(*(v1 + 32));
        LOBYTE(buf) = 2;
        BYTE8(buf) = v10;
        sub_100111A90(v1 + 120, 0, 0, &buf);
        if (buf == 1)
        {
          __dst[0] = &buf + 8;
          sub_1000DC8D4(__dst);
        }

        LOBYTE(buf) = 0;
        goto LABEL_58;
      }

      v45 = 0u;
      memset(v46, 0, sizeof(v46));
      *__dst = 0u;
      memset(v44, 0, sizeof(v44));
      if (v6 != 1)
      {
        v32 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v32);
      }

      if (*(v1 + 55) < 0)
      {
        sub_100005F2C(__dst, *(v1 + 32), *(v1 + 40));
      }

      else
      {
        *__dst = *(v1 + 32);
        v44[0] = *(v1 + 48);
      }

      if (*(v1 + 79) < 0)
      {
        sub_100005F2C(&v44[1], *(v1 + 56), *(v1 + 64));
      }

      else
      {
        *&v44[1] = *(v1 + 56);
        v44[3] = *(v1 + 72);
      }

      LOWORD(v45) = *(v1 + 80);
      sub_10002D728(&v45 + 1, (v1 + 88));
      sub_1002030F8(v46, (v1 + 96));
      v46[1] = *(v1 + 104);
      *(&v46[1] + 6) = *(v1 + 110);
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      buf = 0u;
      v51 = 0u;
      sub_100A34C5C(&buf);
      memset(v42, 0, sizeof(v42));
      BytePtr = CFDataGetBytePtr(*(&v45 + 1));
      Length = CFDataGetLength(*(&v45 + 1));
      PB::Reader::Reader(v42, BytePtr, Length);
      if (sub_100A353F0(&buf, v42))
      {
        v13 = *(&v54 + 1);
        v14 = *(v3 + 48);
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v15)
          {
            LOWORD(v48) = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I [PendingProfileRsp]", &v48, 2u);
          }

          v16 = *(v1 + 152);
          if (SHIBYTE(v44[3]) < 0)
          {
            sub_100005F2C(__p, v44[1], v44[2]);
          }

          else
          {
            *__p = *&v44[1];
            v41 = v44[3];
          }

          (*(*v16 + 56))(v16, __p);
          if (SHIBYTE(v41) < 0)
          {
            operator delete(__p[0]);
          }

          v19 = *(&v54 + 1);
          if (*(*(&v54 + 1) + 48))
          {
            v20 = *(v3 + 48);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = *(v19 + 40);
              LODWORD(v48) = 67109120;
              DWORD1(v48) = v21;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#E PendingProfileRsp has an error: %d", &v48, 8u);
              v19 = *(&v54 + 1);
            }
          }

          v22 = *(v19 + 16);
          v23 = **(v19 + 8);
          v25 = *v23;
          v24 = v23[1];
          v26 = *(v19 + 24);
          if (v26 == v22)
          {
            v30 = *(v3 + 48);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v48) = 0;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I No pending profiles", &v48, 2u);
            }

            v38 = 0uLL;
            v39 = 0;
            LOBYTE(v48) = 0;
            sub_10052F77C(&v48, &v38);
            sub_100111A90(v1 + 120, v25, v24, &v48);
          }

          else
          {
            v38 = 0uLL;
            v39 = 0;
            do
            {
              v27 = *v22;
              v28 = v38.n128_u64[1];
              if (v38.n128_u64[1] >= v39)
              {
                v29 = sub_1005C18A0(&v38);
              }

              else
              {
                *(v38.n128_u64[1] + 304) = 0;
                v28[17] = 0u;
                v28[18] = 0u;
                v28[15] = 0u;
                v28[16] = 0u;
                v28[13] = 0u;
                v28[14] = 0u;
                v28[11] = 0u;
                v28[12] = 0u;
                v28[9] = 0u;
                v28[10] = 0u;
                v28[7] = 0u;
                v28[8] = 0u;
                v28[5] = 0u;
                v28[6] = 0u;
                v28[3] = 0u;
                v28[4] = 0u;
                v28[1] = 0u;
                v28[2] = 0u;
                *v28 = 0u;
                v29 = v28 + 312;
              }

              v38.n128_u64[1] = v29;
              sub_10039F7C0((v29 - 312), v27);
              ++v22;
            }

            while (v22 != v26);
            LOBYTE(v48) = 0;
            sub_1005C2714(&v48, &v38);
            sub_100111A90(v1 + 120, v25, v24, &v48);
          }

          if (v48 == 1)
          {
            v47 = (&v48 + 8);
            sub_1000DC8D4(&v47);
          }

          LOBYTE(v48) = 0;
          v47 = &v38;
          sub_1000DC8D4(&v47);
LABEL_54:
          sub_100A34FF0(&buf);
          sub_1002030AC(v46);
          sub_10002D760(&v45 + 1);
          if (SHIBYTE(v44[3]) < 0)
          {
            operator delete(v44[1]);
          }

          if (SHIBYTE(v44[0]) < 0)
          {
            operator delete(__dst[0]);
          }

          goto LABEL_58;
        }

        if (v15)
        {
          LOWORD(v48) = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#E [PendingProfilesReq] Unknown response, marked as handled", &v48, 2u);
        }

        v18 = *(v1 + 152);
        if ((SHIBYTE(v44[3]) & 0x80000000) == 0)
        {
          v48 = *&v44[1];
          v49 = v44[3];
          goto LABEL_52;
        }
      }

      else
      {
        v17 = *(v3 + 48);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v48) = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#E [PendingProfilesReq] Malformed Message, marked as handled", &v48, 2u);
        }

        v18 = *(v1 + 152);
        if ((SHIBYTE(v44[3]) & 0x80000000) == 0)
        {
          v48 = *&v44[1];
          v49 = v44[3];
          goto LABEL_52;
        }
      }

      sub_100005F2C(&v48, v44[1], v44[2]);
LABEL_52:
      (*(*v18 + 56))(v18, &v48);
      if (SHIBYTE(v49) < 0)
      {
        operator delete(v48);
      }

      goto LABEL_54;
    }
  }

LABEL_59:
  sub_1005C26A4(&v37);
  return sub_1000049E0(&v36);
}

void sub_1005C2590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __int16 *a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (__p == 1)
  {
    a45 = &a47;
    sub_1000DC8D4(&a45);
  }

  LOBYTE(__p) = 0;
  a45 = &a15;
  sub_1000DC8D4(&a45);
  sub_100A34FF0((v49 - 224));
  sub_1005AD788(&a31);
  sub_100004A34(v48);
  sub_1005C26A4(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005C26A4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 160);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_10052F844(v1 + 120);
    sub_1005C116C(v1 + 24);
    v3 = *(v1 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return a1;
}

void sub_1005C2714(uint64_t a1, std::string **a2)
{
  if (*a1 == 1)
  {
    v2 = a1 + 8;
    if (v2 != a2)
    {
      sub_1000DDD9C(v2, *a2, a2[1], 0x6F96F96F96F96F97 * ((a2[1] - *a2) >> 3));
    }
  }

  else
  {
    *a1 = 1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    sub_1000E2C30((a1 + 8), *a2, a2[1], 0x6F96F96F96F96F97 * ((a2[1] - *a2) >> 3));
  }
}

uint64_t *sub_1005C2790(uint64_t *a1)
{
  v1 = *a1;
  v25 = a1;
  v26 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(v1 + 8))
      {
LABEL_23:
        sub_100004A34(v5);
        goto LABEL_24;
      }

      v6 = *(v1 + 24);
      v7 = *(v3 + 48);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6 == 2)
      {
        if (v8)
        {
          v9 = sub_100A43314(*(v1 + 32));
          *buf = 136315138;
          *&buf[4] = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [UpdateSubscriptionReq] IDS Failure [%s]", buf, 0xCu);
        }

        goto LABEL_23;
      }

      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [UpdateSubscriptionRsp]", buf, 2u);
        v6 = *(v1 + 24);
      }

      if (v6 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        if (v6 == 2)
        {
          v20 = &ctu::ResultIsError::~ResultIsError;
          ctu::ResultIsError::ResultIsError(exception);
        }

        else
        {
          v20 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
          ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
        }

        __cxa_throw(exception, v21, v20);
      }

      v10 = *(v1 + 120);
      if (*(v1 + 79) < 0)
      {
        sub_100005F2C(__p, *(v1 + 56), *(v1 + 64));
      }

      else
      {
        *__p = *(v1 + 56);
        v30 = *(v1 + 72);
      }

      (*(*v10 + 56))(v10, __p);
      if (SHIBYTE(v30) < 0)
      {
        operator delete(__p[0]);
      }

      v39 = 0;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      *buf = 0u;
      v32 = 0u;
      sub_100A34C5C(buf);
      memset(v28, 0, sizeof(v28));
      v11 = *(v1 + 24);
      if (v11 == 1)
      {
        BytePtr = CFDataGetBytePtr(*(v1 + 88));
        v13 = *(v1 + 24);
        if (v13 == 1)
        {
          v14 = BytePtr;
          Length = CFDataGetLength(*(v1 + 88));
          PB::Reader::Reader(v28, v14, Length);
          if (sub_100A353F0(buf, v28))
          {
            memset(&v27, 0, sizeof(v27));
            ctu::hex(**(*(&v38 + 1) + 8), *(*(*(&v38 + 1) + 8) + 8), v16);
            sub_1005BD394(v3, &v27, (*(&v38 + 1) + 16));
            if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v27.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v17 = *(v3 + 48);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v27.__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#E Malformed Message - ignoring", &v27, 2u);
            }
          }

          sub_100A34FF0(buf);
          goto LABEL_23;
        }

        if (v13 == 2)
        {
          goto LABEL_30;
        }
      }

      else if (v11 == 2)
      {
LABEL_30:
        v22 = __cxa_allocate_exception(0x10uLL);
        v23 = &ctu::ResultIsError::~ResultIsError;
        ctu::ResultIsError::ResultIsError(v22);
        goto LABEL_34;
      }

      v22 = __cxa_allocate_exception(0x10uLL);
      v23 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      ctu::ResultIsEmptyError::ResultIsEmptyError(v22);
LABEL_34:
      __cxa_throw(v22, v24, v23);
    }
  }

LABEL_24:
  sub_1005C2BE4(&v26);
  return sub_1000049E0(&v25);
}

void sub_1005C2B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100A34FF0(&a29);
  sub_100004A34(v29);
  sub_1005C2BE4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005C2BE4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 128);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_1005C116C(v1 + 24);
    v3 = *(v1 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1005C2C4C(uint64_t *a1)
{
  v1 = *a1;
  v48 = a1;
  v49 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(v1 + 8))
      {
LABEL_82:
        sub_100004A34(v5);
        goto LABEL_83;
      }

      v6 = *(v1 + 48);
      v7 = *(v3 + 48);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6 == 2)
      {
        if (v8)
        {
          v9 = sub_100A43314(*(v1 + 56));
          *buf = 136315138;
          v74 = v9;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [FetchSubscriptionInfoReq] IDS Failure [%s]", buf, 0xCu);
          v10 = *(v1 + 48);
          if (v10 != 2)
          {
            if (v10 == 1)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              v46 = &ctu::ResultIsNotError::~ResultIsNotError;
              ctu::ResultIsNotError::ResultIsNotError(exception);
            }

            else
            {
              exception = __cxa_allocate_exception(0x10uLL);
              v46 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
            }

            __cxa_throw(exception, v47, v46);
          }
        }

        v11 = sub_1005AD768(*(v1 + 56));
        buf[0] = 2;
        BYTE4(v74) = v11;
        v12 = *(v1 + 184);
        if (!v12)
        {
          sub_100022DB4();
        }

        (*(*v12 + 48))(v12, buf);
        if (buf[0] == 1)
        {
          if (v89 < 0)
          {
            operator delete(__p);
          }

          if (v87 < 0)
          {
            operator delete(v86);
          }

          if (v85 < 0)
          {
            operator delete(v84);
          }

          if (v83 < 0)
          {
            operator delete(v82);
          }

          if (v81 < 0)
          {
            operator delete(v80);
          }

          if (v79 < 0)
          {
            operator delete(v78);
          }

          if (v77 < 0)
          {
            operator delete(*&v76[2]);
          }
        }

        buf[0] = 0;
        goto LABEL_82;
      }

      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [FetchSubscriptionInfoRsp]", buf, 2u);
        v6 = *(v1 + 48);
      }

      if (v6 != 1)
      {
        v39 = __cxa_allocate_exception(0x10uLL);
        if (v6 == 2)
        {
          v40 = &ctu::ResultIsError::~ResultIsError;
          ctu::ResultIsError::ResultIsError(v39);
        }

        else
        {
          v40 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
          ctu::ResultIsEmptyError::ResultIsEmptyError(v39);
        }

        __cxa_throw(v39, v41, v40);
      }

      v13 = *(v1 + 144);
      if (*(v1 + 103) < 0)
      {
        sub_100005F2C(__dst, *(v1 + 80), *(v1 + 88));
      }

      else
      {
        *__dst = *(v1 + 80);
        v72 = *(v1 + 96);
      }

      (*(*v13 + 56))(v13, __dst);
      if (SHIBYTE(v72) < 0)
      {
        operator delete(__dst[0]);
      }

      v70 = 0;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v65 = 0u;
      memset(v64, 0, sizeof(v64));
      sub_100A34C5C(v64);
      memset(v63, 0, sizeof(v63));
      v14 = *(v1 + 48);
      if (v14 == 1)
      {
        BytePtr = CFDataGetBytePtr(*(v1 + 112));
        v16 = *(v1 + 48);
        if (v16 == 1)
        {
          v17 = BytePtr;
          Length = CFDataGetLength(*(v1 + 112));
          PB::Reader::Reader(v63, v17, Length);
          if (sub_100A353F0(v64, v63))
          {
            v19 = *(&v65 + 1);
            if ((*(*(&v65 + 1) + 32) & 1) == 0)
            {
              v20 = *(*(&v65 + 1) + 16);
              v21 = (v1 + 24);
              v22 = *(v20 + 31);
              if (v22 >= 0)
              {
                v23 = *(v20 + 31);
              }

              else
              {
                v23 = *(v20 + 16);
              }

              v24 = *(v1 + 47);
              v25 = v24;
              if ((v24 & 0x80u) != 0)
              {
                v24 = *(v1 + 32);
              }

              if (v23 == v24)
              {
                v26 = v22 >= 0 ? (v20 + 8) : *(v20 + 8);
                v27 = (v25 >= 0 ? v1 + 24 : *v21);
                if (!memcmp(v26, v27, v23))
                {
                  memset(&__str, 0, sizeof(__str));
                  ctu::hex(**(v19 + 8), *(*(v19 + 8) + 8), v28);
                  *v60 = 0u;
                  v61 = 0u;
                  *v58 = 0u;
                  v59 = 0u;
                  v56 = 0u;
                  *v57 = 0u;
                  *v54 = 0u;
                  *v55 = 0u;
                  *v52 = 0u;
                  v53 = 0u;
                  *v50 = 0u;
                  v51 = 0u;
                  BYTE9(v61) = 1;
                  sub_10039FA34(*(*(&v65 + 1) + 16), v50);
                  std::string::operator=(&v50[1], &__str);
                  buf[0] = 0;
                  sub_100330430(buf, v50);
                  v38 = *(v1 + 184);
                  if (!v38)
                  {
                    sub_100022DB4();
                  }

                  (*(*v38 + 48))(v38, buf);
                  if (buf[0] == 1)
                  {
                    sub_10011289C(&v74 + 4);
                  }

                  buf[0] = 0;
                  if (SBYTE7(v61) < 0)
                  {
                    operator delete(v60[0]);
                  }

                  if (SHIBYTE(v59) < 0)
                  {
                    operator delete(v58[1]);
                  }

                  if (SHIBYTE(v58[0]) < 0)
                  {
                    operator delete(v57[0]);
                  }

                  if (SHIBYTE(v56) < 0)
                  {
                    operator delete(v55[1]);
                  }

                  if (SHIBYTE(v55[0]) < 0)
                  {
                    operator delete(v54[0]);
                  }

                  if (SBYTE7(v53) < 0)
                  {
                    operator delete(v52[0]);
                  }

                  if (SHIBYTE(v51) < 0)
                  {
                    operator delete(v50[1]);
                  }

                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__str.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_81;
                }
              }

              v29 = *(v3 + 48);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v30 = (v20 + 8);
                if (v22 < 0)
                {
                  v30 = *v30;
                }

                if (v25 < 0)
                {
                  v21 = *v21;
                }

                *buf = 136315394;
                v74 = v30;
                v75 = 2080;
                *v76 = v21;
                _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#E ICCID mismatch, received (%s), expected (%s) - ignoring", buf, 0x16u);
              }

              buf[0] = 2;
              BYTE4(v74) = 14;
              v31 = *(v1 + 184);
              if (!v31)
              {
                sub_100022DB4();
              }

              (*(*v31 + 48))(v31, buf);
              if (buf[0] == 1)
              {
                sub_10011289C(&v74 + 4);
              }

LABEL_80:
              buf[0] = 0;
LABEL_81:
              sub_100A34FF0(v64);
              goto LABEL_82;
            }

            v34 = *(*(&v65 + 1) + 24);
            v35 = *(v3 + 48);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = asString();
              *buf = 136315138;
              v74 = v36;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#E Response with error (%s) - ignoring", buf, 0xCu);
            }

            buf[0] = 2;
            BYTE4(v74) = v34;
            v33 = *(v1 + 184);
            if (!v33)
            {
              sub_100022DB4();
            }
          }

          else
          {
            v32 = *(v3 + 48);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#E Malformed Message - ignoring", buf, 2u);
            }

            buf[0] = 2;
            BYTE4(v74) = 13;
            v33 = *(v1 + 184);
            if (!v33)
            {
              sub_100022DB4();
            }
          }

          (*(*v33 + 48))(v33, buf);
          if (buf[0] == 1)
          {
            if (v89 < 0)
            {
              operator delete(__p);
            }

            if (v87 < 0)
            {
              operator delete(v86);
            }

            if (v85 < 0)
            {
              operator delete(v84);
            }

            if (v83 < 0)
            {
              operator delete(v82);
            }

            if (v81 < 0)
            {
              operator delete(v80);
            }

            if (v79 < 0)
            {
              operator delete(v78);
            }

            if (v77 < 0)
            {
              operator delete(*&v76[2]);
            }
          }

          goto LABEL_80;
        }

        if (v16 == 2)
        {
          goto LABEL_108;
        }
      }

      else if (v14 == 2)
      {
LABEL_108:
        v42 = __cxa_allocate_exception(0x10uLL);
        v43 = &ctu::ResultIsError::~ResultIsError;
        ctu::ResultIsError::ResultIsError(v42);
        goto LABEL_115;
      }

      v42 = __cxa_allocate_exception(0x10uLL);
      v43 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      ctu::ResultIsEmptyError::ResultIsEmptyError(v42);
LABEL_115:
      __cxa_throw(v42, v44, v43);
    }
  }

LABEL_83:
  sub_1005C3620(&v49);
  return sub_1000049E0(&v48);
}

void sub_1005C34FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63, uint64_t _198)
{
  if (a65 == 1)
  {
    sub_10011289C(&a66);
  }

  a65 = 0;
  sub_10011289C(&a12);
  if (a42 < 0)
  {
    operator delete(__p);
  }

  sub_100A34FF0(&a47);
  sub_100004A34(v66);
  sub_1005C3620(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005C3620(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10032B980(v1 + 160);
    v2 = *(v1 + 152);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_1005C116C(v1 + 48);
    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    v3 = *(v1 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return a1;
}

void sub_1005C36A0(_BYTE *a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    sub_1005C3714((a1 + 8), a2);
  }

  else
  {
    sub_10011282C(a1);
    *a1 = 1;

    sub_1005C38B8((a1 + 8), a2);
  }
}

void sub_1005C3714(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 88) == *(a2 + 88))
  {
    if (*(a1 + 88))
    {

      sub_100F11730(a1, a2);
    }
  }

  else if (*(a1 + 88))
  {
    if (*(a1 + 80) == 1)
    {
      v5 = (a1 + 56);
      sub_100112120(&v5);
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 88) = 0;
  }

  else
  {
    v3 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v3;
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 80) = 0;
    if (*(a2 + 80) == 1)
    {
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      *(a1 + 80) = 1;
    }

    *(a1 + 88) = 1;
  }
}

__n128 sub_1005C3814(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == a2[1].n128_u8[8])
  {
    if (*(a1 + 24))
    {
      sub_100114B30(a1);
      result = *a2;
      *a1 = *a2;
      *(a1 + 16) = a2[1].n128_u64[0];
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      a2[1].n128_u64[0] = 0;
    }
  }

  else if (*(a1 + 24))
  {
    v5 = a1;
    sub_100112120(&v5);
    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    result = *a2;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a2 = 0uLL;
    a2[1].n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t sub_1005C38B8(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    v2 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v2;
    v3 = *(a2 + 32);
    *(result + 48) = *(a2 + 48);
    *(result + 32) = v3;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    *(result + 56) = 0;
    *(result + 80) = 0;
    if (*(a2 + 80) == 1)
    {
      *(result + 56) = 0;
      *(result + 64) = 0;
      *(result + 72) = 0;
      *(result + 56) = *(a2 + 56);
      *(result + 72) = *(a2 + 72);
      *(a2 + 56) = 0;
      *(a2 + 64) = 0;
      *(a2 + 72) = 0;
      *(result + 80) = 1;
    }

    *(result + 88) = 1;
  }

  return result;
}

uint64_t *sub_1005C3938(uint64_t *a1)
{
  v1 = *a1;
  v29 = a1;
  v30 = v1;
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
        v6 = *(v1 + 24);
        v7 = *(v3 + 48);
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        if (v6 == 2)
        {
          if (v8)
          {
            v9 = sub_100A43314(*(v1 + 32));
            *buf = 136315138;
            *&buf[4] = v9;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [CancelTransferProfileReq] IDS Failure [%s]", buf, 0xCu);
            v10 = *(v1 + 24);
            if (v10 != 2)
            {
              if (v10 == 1)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v27 = &ctu::ResultIsNotError::~ResultIsNotError;
                ctu::ResultIsNotError::ResultIsNotError(exception);
              }

              else
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v27 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
                ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
              }

              __cxa_throw(exception, v28, v27);
            }
          }

          v11 = sub_1005AD768(*(v1 + 32));
          LOBYTE(__dst[0]) = 2;
          BYTE1(__dst[0]) = v11;
          v12 = *(v1 + 144);
          if (!v12)
          {
            sub_100022DB4();
          }

          (*(*v12 + 48))(v12, __dst);
          LOBYTE(__dst[0]) = 0;
          sub_10000501C(buf, "TransferCancel");
          v13 = *(v1 + 24);
          if (v13 != 2)
          {
            if (v13 == 1)
            {
              v23 = __cxa_allocate_exception(0x10uLL);
              v24 = &ctu::ResultIsNotError::~ResultIsNotError;
              ctu::ResultIsNotError::ResultIsNotError(v23);
            }

            else
            {
              v23 = __cxa_allocate_exception(0x10uLL);
              v24 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v23);
            }

            __cxa_throw(v23, v25, v24);
          }

          sub_1005C0A14(v3, buf, *(v1 + 32));
        }

        else
        {
          if (v8)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [CancelTransferProfileRsp]", buf, 2u);
            v6 = *(v1 + 24);
          }

          v44 = 0u;
          memset(v45, 0, sizeof(v45));
          memset(v43, 0, sizeof(v43));
          *buf = 0u;
          if (v6 != 1)
          {
            v17 = __cxa_allocate_exception(0x10uLL);
            if (v6 == 2)
            {
              v18 = &ctu::ResultIsError::~ResultIsError;
              ctu::ResultIsError::ResultIsError(v17);
            }

            else
            {
              v18 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v17);
            }

            __cxa_throw(v17, v19, v18);
          }

          if (*(v1 + 55) < 0)
          {
            sub_100005F2C(buf, *(v1 + 32), *(v1 + 40));
          }

          else
          {
            *buf = *(v1 + 32);
            *&v43[0] = *(v1 + 48);
          }

          if (*(v1 + 79) < 0)
          {
            sub_100005F2C(v43 + 8, *(v1 + 56), *(v1 + 64));
          }

          else
          {
            *(v43 + 8) = *(v1 + 56);
            *(&v43[1] + 1) = *(v1 + 72);
          }

          LOWORD(v44) = *(v1 + 80);
          sub_10002D728(&v44 + 1, (v1 + 88));
          sub_1002030F8(v45, (v1 + 96));
          *&v45[14] = *(v1 + 110);
          *&v45[8] = *(v1 + 104);
          v14 = *(v1 + 24);
          if (v14 != 1)
          {
            if (v14 == 2)
            {
              v20 = __cxa_allocate_exception(0x10uLL);
              v21 = &ctu::ResultIsError::~ResultIsError;
              ctu::ResultIsError::ResultIsError(v20);
            }

            else
            {
              v20 = __cxa_allocate_exception(0x10uLL);
              v21 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v20);
            }

            __cxa_throw(v20, v22, v21);
          }

          v15 = *(v1 + 152);
          if (*(v1 + 79) < 0)
          {
            sub_100005F2C(__p, *(v1 + 56), *(v1 + 64));
          }

          else
          {
            *__p = *(v1 + 56);
            v40 = *(v1 + 72);
          }

          (*(*v15 + 56))(v15, __p);
          if (SHIBYTE(v40) < 0)
          {
            operator delete(__p[0]);
          }

          if (SBYTE7(v43[0]) < 0)
          {
            sub_100005F2C(__dst, *buf, *&buf[8]);
          }

          else
          {
            *__dst = *buf;
            v32 = *&v43[0];
          }

          if (SHIBYTE(v43[1]) < 0)
          {
            sub_100005F2C(&v33, *(&v43[0] + 1), *&v43[1]);
          }

          else
          {
            v33 = *(v43 + 8);
            v34 = *(&v43[1] + 1);
          }

          v35 = v44;
          v36 = *(&v44 + 1);
          if (*(&v44 + 1))
          {
            CFRetain(*(&v44 + 1));
          }

          v37 = *v45;
          if (*v45)
          {
            CFRetain(*v45);
          }

          v38[0] = *&v45[8];
          *(v38 + 6) = *&v45[14];
          sub_1001135B0(v41, v1 + 120);
          sub_1005BFC4C(v3, (v1 + 168), __dst, v41);
          sub_100113648(v41);
          sub_1002030AC(&v37);
          sub_10002D760(&v36);
          if (SHIBYTE(v34) < 0)
          {
            operator delete(v33);
          }

          if (SHIBYTE(v32) < 0)
          {
            operator delete(__dst[0]);
          }

          sub_1002030AC(v45);
          sub_10002D760(&v44 + 1);
          if (SHIBYTE(v43[1]) < 0)
          {
            operator delete(*(&v43[0] + 1));
          }
        }

        if (SBYTE7(v43[0]) < 0)
        {
          operator delete(*buf);
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_1005C3FD8(&v30);
  return sub_1000049E0(&v29);
}

void sub_1005C3ECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  __cxa_free_exception(v34);
  sub_100004A34(v33);
  sub_1005C3FD8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005C3FD8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 191) < 0)
    {
      operator delete(*(v1 + 168));
    }

    v2 = *(v1 + 160);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_100113648(v1 + 120);
    sub_1005C116C(v1 + 24);
    v3 = *(v1 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1005C4058(uint64_t *a1)
{
  v1 = *a1;
  v26 = a1;
  v27 = v1;
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
        v6 = *(v1 + 24);
        if (v6 == 2)
        {
          v7 = *(v3 + 48);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = sub_100A43314(*(v1 + 32));
            *buf = 136315138;
            *&buf[4] = v8;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [GenericTransferPayloadRsp] IDS Failure [%s]", buf, 0xCu);
            v9 = *(v1 + 24);
            if (v9 != 2)
            {
              if (v9 == 1)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v24 = &ctu::ResultIsNotError::~ResultIsNotError;
                ctu::ResultIsNotError::ResultIsNotError(exception);
              }

              else
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v24 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
                ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
              }

              __cxa_throw(exception, v25, v24);
            }
          }

          v10 = sub_1005AD768(*(v1 + 32));
          LOBYTE(__dst[0]) = 2;
          BYTE1(__dst[0]) = v10;
          v11 = *(v1 + 144);
          if (!v11)
          {
            sub_100022DB4();
          }

          (*(*v11 + 48))(v11, __dst);
          LOBYTE(__dst[0]) = 0;
          sub_10000501C(buf, "TransferCancel");
          v12 = *(v1 + 24);
          if (v12 != 2)
          {
            if (v12 == 1)
            {
              v19 = __cxa_allocate_exception(0x10uLL);
              v20 = &ctu::ResultIsNotError::~ResultIsNotError;
              ctu::ResultIsNotError::ResultIsNotError(v19);
            }

            else
            {
              v19 = __cxa_allocate_exception(0x10uLL);
              v20 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v19);
            }

            __cxa_throw(v19, v21, v20);
          }

          sub_1005C0A14(v3, buf, *(v1 + 32));
        }

        else
        {
          v41 = 0u;
          memset(v42, 0, sizeof(v42));
          memset(v40, 0, sizeof(v40));
          *buf = 0u;
          if (v6 != 1)
          {
            v22 = __cxa_allocate_exception(0x10uLL);
            ctu::ResultIsEmptyError::ResultIsEmptyError(v22);
          }

          if (*(v1 + 55) < 0)
          {
            sub_100005F2C(buf, *(v1 + 32), *(v1 + 40));
          }

          else
          {
            *buf = *(v1 + 32);
            *&v40[0] = *(v1 + 48);
          }

          if (*(v1 + 79) < 0)
          {
            sub_100005F2C(v40 + 8, *(v1 + 56), *(v1 + 64));
          }

          else
          {
            *(v40 + 8) = *(v1 + 56);
            *(&v40[1] + 1) = *(v1 + 72);
          }

          LOWORD(v41) = *(v1 + 80);
          sub_10002D728(&v41 + 1, (v1 + 88));
          sub_1002030F8(v42, (v1 + 96));
          *&v42[14] = *(v1 + 110);
          *&v42[8] = *(v1 + 104);
          v13 = *(v1 + 24);
          if (v13 != 1)
          {
            if (v13 == 2)
            {
              v16 = __cxa_allocate_exception(0x10uLL);
              v17 = &ctu::ResultIsError::~ResultIsError;
              ctu::ResultIsError::ResultIsError(v16);
            }

            else
            {
              v16 = __cxa_allocate_exception(0x10uLL);
              v17 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v16);
            }

            __cxa_throw(v16, v18, v17);
          }

          v14 = *(v1 + 152);
          if (*(v1 + 79) < 0)
          {
            sub_100005F2C(__p, *(v1 + 56), *(v1 + 64));
          }

          else
          {
            *__p = *(v1 + 56);
            v37 = *(v1 + 72);
          }

          (*(*v14 + 56))(v14, __p);
          if (SHIBYTE(v37) < 0)
          {
            operator delete(__p[0]);
          }

          if (SBYTE7(v40[0]) < 0)
          {
            sub_100005F2C(__dst, *buf, *&buf[8]);
          }

          else
          {
            *__dst = *buf;
            v29 = *&v40[0];
          }

          if (SHIBYTE(v40[1]) < 0)
          {
            sub_100005F2C(&v30, *(&v40[0] + 1), *&v40[1]);
          }

          else
          {
            v30 = *(v40 + 8);
            v31 = *(&v40[1] + 1);
          }

          v32 = v41;
          v33 = *(&v41 + 1);
          if (*(&v41 + 1))
          {
            CFRetain(*(&v41 + 1));
          }

          v34 = *v42;
          if (*v42)
          {
            CFRetain(*v42);
          }

          v35[0] = *&v42[8];
          *(v35 + 6) = *&v42[14];
          sub_1001135B0(v38, v1 + 120);
          sub_1005C00B8(v3, (v1 + 168), (v1 + 192), __dst, v38);
          sub_100113648(v38);
          sub_1002030AC(&v34);
          sub_10002D760(&v33);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(v30);
          }

          if (SHIBYTE(v29) < 0)
          {
            operator delete(__dst[0]);
          }

          sub_1002030AC(v42);
          sub_10002D760(&v41 + 1);
          if (SHIBYTE(v40[1]) < 0)
          {
            operator delete(*(&v40[0] + 1));
          }
        }

        if (SBYTE7(v40[0]) < 0)
        {
          operator delete(*buf);
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_1005C4694(&v27);
  return sub_1000049E0(&v26);
}

void sub_1005C458C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  __cxa_free_exception(v34);
  sub_100004A34(v33);
  sub_1005C4694(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005C4694(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 215) < 0)
    {
      operator delete(*(v1 + 192));
    }

    if (*(v1 + 191) < 0)
    {
      operator delete(*(v1 + 168));
    }

    v2 = *(v1 + 160);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_100113648(v1 + 120);
    sub_1005C116C(v1 + 24);
    v3 = *(v1 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_1005C4724(uint64_t a1, uint64_t a2)
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

uint64_t sub_1005C47BC(uint64_t a1)
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

uint64_t *sub_1005C483C(uint64_t *a1)
{
  v1 = *a1;
  v21 = a1;
  v22 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(v1 + 8))
      {
LABEL_49:
        sub_100004A34(v5);
        goto LABEL_50;
      }

      v6 = *(v1 + 24);
      if (v6 == 2)
      {
        v7 = *(v3 + 48);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(v1 + 32);
          *buf = 67109120;
          *&buf[4] = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E IDS Error received [%d]", buf, 8u);
        }

        buf[0] = 0;
        BYTE8(v40) = 0;
        sub_100111820(v1 + 136, buf, 5);
        if (BYTE8(v40) != 1)
        {
          goto LABEL_49;
        }

        if (SBYTE7(v40) < 0)
        {
          operator delete(v39);
        }

        if ((SHIBYTE(v38) & 0x80000000) == 0)
        {
          goto LABEL_49;
        }

        v9 = *&buf[8];
        goto LABEL_48;
      }

      *theData = 0u;
      memset(v29, 0, 24);
      memset(v27, 0, sizeof(v27));
      *__dst = 0u;
      if (v6 != 1)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
      }

      if (*(v1 + 55) < 0)
      {
        sub_100005F2C(__dst, *(v1 + 32), *(v1 + 40));
      }

      else
      {
        *__dst = *(v1 + 32);
        v27[0] = *(v1 + 48);
      }

      if (*(v1 + 79) < 0)
      {
        sub_100005F2C(&v27[1], *(v1 + 56), *(v1 + 64));
      }

      else
      {
        *&v27[1] = *(v1 + 56);
        v27[3] = *(v1 + 72);
      }

      LOWORD(theData[0]) = *(v1 + 80);
      sub_10002D728(&theData[1], (v1 + 88));
      sub_1002030F8(v29, (v1 + 96));
      *(&v29[0] + 1) = *(v1 + 104);
      *(v29 + 14) = *(v1 + 110);
      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      *buf = 0u;
      v38 = 0u;
      sub_100A34C5C(buf);
      memset(v25, 0, sizeof(v25));
      BytePtr = CFDataGetBytePtr(theData[1]);
      Length = CFDataGetLength(theData[1]);
      PB::Reader::Reader(v25, BytePtr, Length);
      v12 = *(v1 + 120);
      if (SHIBYTE(v27[3]) < 0)
      {
        sub_100005F2C(__p, v27[1], v27[2]);
      }

      else
      {
        *__p = *&v27[1];
        v24 = v27[3];
      }

      (*(*v12 + 56))(v12, __p);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }

      if (sub_100A353F0(buf, v25))
      {
        v13 = v42;
        v14 = *(v3 + 48);
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v15)
          {
            *v30 = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I [PurchasePlanRsp]", v30, 2u);
            v13 = v42;
          }

          if ((*(v13 + 12) & 1) == 0)
          {
            sub_1005C4E00((v3 + 184), v1 + 136);
LABEL_44:
            sub_100A34FF0(buf);
            sub_1002030AC(v29);
            sub_10002D760(&theData[1]);
            if (SHIBYTE(v27[3]) < 0)
            {
              operator delete(v27[1]);
            }

            if ((SHIBYTE(v27[0]) & 0x80000000) == 0)
            {
              goto LABEL_49;
            }

            v9 = __dst[0];
LABEL_48:
            operator delete(v9);
            goto LABEL_49;
          }

          v17 = *(v3 + 48);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v19 = *(v13 + 8);
            *v30 = 67109120;
            v31 = v19;
            _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Get add on plan response returned with error: %d", v30, 8u);
            v13 = v42;
          }

          v30[0] = 0;
          v36 = 0;
          sub_100111820(v1 + 136, v30, *(v13 + 8));
LABEL_39:
          if (v36 == 1)
          {
            if (v35 < 0)
            {
              operator delete(v34);
            }

            if (v33 < 0)
            {
              operator delete(v32);
            }
          }

          goto LABEL_44;
        }

        if (v15)
        {
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#E Unknown response, marked as handled", v30, 2u);
        }
      }

      else
      {
        v16 = *(v3 + 48);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v30 = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#E Malformed Message, marked as handled", v30, 2u);
        }
      }

      v30[0] = 0;
      v36 = 0;
      sub_100111820(v1 + 136, v30, 7);
      goto LABEL_39;
    }
  }

LABEL_50:
  sub_1005C4D90(&v22);
  return sub_1000049E0(&v21);
}

void sub_1005C4CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  sub_100112930(&a37);
  sub_100A34FF0((v38 - 208));
  sub_1005AD788(&__p);
  sub_100004A34(v37);
  sub_1005C4D90(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005C4D90(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1005C47BC(v1 + 136);
    v2 = *(v1 + 128);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_1005C116C(v1 + 24);
    v3 = *(v1 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return a1;
}

void *sub_1005C4E00(void *a1, uint64_t a2)
{
  sub_1005C4724(v4, a2);
  sub_1005C4EA8(v5, v4);
  sub_1005C5294(v5, a1);
  sub_1005C1A98(v5);
  sub_1005C47BC(v4);
  return a1;
}

void sub_1005C4E8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1005C47BC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C4EA8(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  if (*(a2 + 24))
  {
    operator new();
  }

  return a1;
}

void *sub_1005C4F28(void *a1)
{
  *a1 = off_101E669C0;
  sub_1005C47BC((a1 + 1));
  return a1;
}

void sub_1005C4F6C(void *a1)
{
  *a1 = off_101E669C0;
  sub_1005C47BC((a1 + 1));

  operator delete();
}

void sub_1005C507C(void *a1)
{
  sub_1005C47BC(a1 + 8);

  operator delete(a1);
}

uint64_t sub_1005C50C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005C510C(uint64_t a1, uint64_t a2)
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

void sub_1005C518C(uint64_t a1, uint64_t a2, char *a3)
{
  v6[0] = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C(v7, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    *v7 = *(a2 + 8);
    v8 = *(a2 + 24);
  }

  if (*(a2 + 55) < 0)
  {
    sub_100005F2C(__p, *(a2 + 32), *(a2 + 40));
  }

  else
  {
    *__p = *(a2 + 32);
    v10 = *(a2 + 48);
  }

  v11 = 1;
  sub_100111820(a1, v6, *a3);
  if (v11 == 1)
  {
    if (SHIBYTE(v10) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }
  }
}

void sub_1005C5268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1005C5294(void *result, void *a2)
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

void sub_1005C54F4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t *sub_1005C5500(uint64_t *a1)
{
  v1 = *a1;
  v48 = a1;
  v49 = v1;
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *v1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!*(v1 + 8))
      {
LABEL_110:
        sub_100004A34(v5);
        goto LABEL_111;
      }

      v6 = *(v1 + 112);
      if (v6 == 2)
      {
        v7 = *(v3 + 48);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = sub_100A43314(*(v1 + 120));
          *buf = 136315138;
          *&buf[4] = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [DeviceInfoReq] IDS Failure [%s]", buf, 0xCu);
          v9 = *(v1 + 112);
          if (v9 != 2)
          {
            if (v9 == 1)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              v44 = &ctu::ResultIsNotError::~ResultIsNotError;
              ctu::ResultIsNotError::ResultIsNotError(exception);
            }

            else
            {
              exception = __cxa_allocate_exception(0x10uLL);
              v44 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
            }

            __cxa_throw(exception, v45, v44);
          }
        }

        sub_1005BFADC(v3);
        goto LABEL_110;
      }

      *theData = 0u;
      memset(v72, 0, sizeof(v72));
      memset(__str, 0, sizeof(__str));
      if (v6 != 1)
      {
        v42 = __cxa_allocate_exception(0x10uLL);
        ctu::ResultIsEmptyError::ResultIsEmptyError(v42);
      }

      if (*(v1 + 143) < 0)
      {
        sub_100005F2C(__str, *(v1 + 120), *(v1 + 128));
      }

      else
      {
        __str[0] = *(v1 + 120);
      }

      if (*(v1 + 167) < 0)
      {
        sub_100005F2C(&__str[1], *(v1 + 144), *(v1 + 152));
      }

      else
      {
        __str[1] = *(v1 + 144);
      }

      LOWORD(theData[0]) = *(v1 + 168);
      sub_10002D728(&theData[1], (v1 + 176));
      sub_1002030F8(v72, (v1 + 184));
      *&v72[8] = *(v1 + 192);
      *&v72[14] = *(v1 + 198);
      v69 = 0;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      *v62 = 0u;
      sub_100A34C5C(&v61);
      v10 = *(v3 + 48);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I [DeviceInfoRsp]", buf, 2u);
      }

      v11 = (v1 + 24);
      v12 = *(v1 + 47);
      if (v12 >= 0)
      {
        v13 = *(v1 + 47);
      }

      else
      {
        v13 = *(v1 + 32);
      }

      size = HIBYTE(__str[0].__r_.__value_.__r.__words[2]);
      v15 = SHIBYTE(__str[0].__r_.__value_.__r.__words[2]);
      if ((__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str[0].__r_.__value_.__l.__size_;
      }

      if (v13 != size || (v12 >= 0 ? (v16 = (v1 + 24)) : (v16 = *v11), (__str[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v17 = __str) : (v17 = __str[0].__r_.__value_.__r.__words[0]), memcmp(v16, v17, v13)))
      {
        v18 = *(v3 + 48);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          if (v12 < 0)
          {
            v11 = *v11;
          }

          v19 = __str[0].__r_.__value_.__r.__words[0];
          if (v15 >= 0)
          {
            v19 = __str;
          }

          *buf = 136315394;
          *&buf[4] = v11;
          *&buf[12] = 2080;
          *&buf[14] = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#E Warning! Mismatching device ids [%s] vs. [%s] - continuing", buf, 0x16u);
        }
      }

      (*(*v3 + 248))(buf, v3, *(v1 + 96));
      v20 = *buf;
      if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&__p, __str[1].__r_.__value_.__l.__data_, __str[1].__r_.__value_.__l.__size_);
      }

      else
      {
        __p = __str[1];
      }

      (*(*v20 + 56))(v20, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      memset(v59, 0, sizeof(v59));
      BytePtr = CFDataGetBytePtr(theData[1]);
      Length = CFDataGetLength(theData[1]);
      PB::Reader::Reader(v59, BytePtr, Length);
      if (sub_100A353F0(&v61, v59))
      {
        v23 = *&v62[2];
        if (!*&v62[2])
        {
          if (os_log_type_enabled(*(v3 + 48), OS_LOG_TYPE_ERROR))
          {
            sub_101775354();
          }

          goto LABEL_106;
        }

        if ((*(*&v62[2] + 68) & 1) == 0)
        {
          v56 = 0;
          v57 = 0;
          v58 = 0;
          v89 = 0;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          memset(v82, 0, sizeof(v82));
          if ((*(*&v62[2] + 68) & 4) != 0)
          {
            v24 = sub_100468668(*(*&v62[2] + 56));
            v23 = *&v62[2];
            v46 = 256;
          }

          else
          {
            v24 = 0;
            v46 = 0;
          }

          v47 = v24;
          sub_10039F4E8(__str, v23, v82);
          v33 = *(*&v62[2] + 24);
          for (i = *(*&v62[2] + 32); v33 != i; ++v33)
          {
            v34 = *v33;
            v78 = 0;
            v76 = 0u;
            *v77 = 0u;
            *v75 = 0u;
            memset(buf, 0, sizeof(buf));
            v53 = 0;
            v55 = 0u;
            v51 = 0u;
            *v52 = 0u;
            *v50 = 0u;
            v54 = &v55;
            v35 = sub_10039F070(v34, buf, v50);
            if (*buf)
            {
              v36 = 0;
            }

            else
            {
              v36 = v35;
            }

            if (v36)
            {
              v37 = *(v3 + 48);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *v73 = 0;
                _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#E Skip adding non-Vinyl cards", v73, 2u);
              }
            }

            else
            {
              v38 = v57;
              if (v57 >= v58)
              {
                v39 = sub_10031B4C8(&v56, buf);
              }

              else
              {
                sub_100F11B6C(v57, buf);
                v39 = v38 + 88;
              }

              v57 = v39;
              *v73 = &buf[16];
              v40 = sub_100289074((v3 + 120), &buf[16], &unk_101802C98, v73);
              std::string::operator=(v40 + 2, __str);
            }

            sub_100111E24(&v54, v55);
            if (SHIBYTE(v53) < 0)
            {
              operator delete(v52[0]);
            }

            if (SHIBYTE(v51) < 0)
            {
              operator delete(v50[1]);
            }

            if (v78 == 1)
            {
              v50[0] = &v76 + 8;
              sub_100112120(v50);
            }

            if (SBYTE7(v76) < 0)
            {
              operator delete(v75[0]);
            }
          }

          sub_10027E51C(buf, v82);
          v81 = 1;
          (*(*v3 + 264))(v3, __str, buf, v46 | v47, &v56);
          if (v81 == 1)
          {
            if (v80 < 0)
            {
              operator delete(v79);
            }

            if (BYTE8(v76) == 1)
            {
              if (SHIBYTE(v78) < 0)
              {
                operator delete(v77[0]);
              }

              BYTE8(v76) = 0;
            }

            if (buf[24] == 1)
            {
              if (SBYTE7(v76) < 0)
              {
                operator delete(v75[0]);
              }

              buf[24] = 0;
            }

            if (buf[23] < 0)
            {
              operator delete(*buf);
            }
          }

          if (SBYTE7(v88) < 0)
          {
            operator delete(v87);
          }

          if (BYTE8(v84) == 1)
          {
            if (SBYTE7(v86) < 0)
            {
              operator delete(v85);
            }

            BYTE8(v84) = 0;
          }

          if (v82[24] == 1)
          {
            if (SBYTE7(v84) < 0)
            {
              operator delete(v83);
            }

            v82[24] = 0;
          }

          if ((v82[23] & 0x80000000) != 0)
          {
            operator delete(*v82);
          }

          *v82 = &v56;
          sub_100112048(v82);
          goto LABEL_106;
        }

        v29 = *(*&v62[2] + 48);
        v25 = *(v3 + 48);
        v30 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (v29 <= 0x19)
        {
          if (!v30)
          {
            goto LABEL_106;
          }

          v31 = asString();
          *buf = 136315138;
          *&buf[4] = v31;
          v26 = "#E [DeviceInfoRsp] Error %s";
          v27 = v25;
          v28 = 12;
          goto LABEL_51;
        }

        if (!v30)
        {
          goto LABEL_106;
        }

        *buf = 0;
        v26 = "#E [DeviceInfoRsp] Out of range Vinyl error";
      }

      else
      {
        v25 = *(v3 + 48);
        if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
LABEL_106:
          sub_100A34FF0(&v61);
          sub_1002030AC(v72);
          sub_10002D760(&theData[1]);
          if (SHIBYTE(__str[1].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str[1].__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__str[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str[0].__r_.__value_.__l.__data_);
          }

          goto LABEL_110;
        }

        *buf = 0;
        v26 = "#E Malformed Message - ignoring";
      }

      v27 = v25;
      v28 = 2;
LABEL_51:
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
      goto LABEL_106;
    }
  }

LABEL_111:
  sub_1005C5E98(&v49);
  return sub_1000049E0(&v48);
}

void sub_1005C5D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p)
{
  sub_100A34FF0(&a35);
  sub_1005AD788(&__p);
  sub_100004A34(v53);
  sub_1005C5E98(&a12);
  sub_1000049E0(&a11);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005C5E98(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1005C116C(v1 + 112);
    sub_1002030AC((v1 + 88));
    sub_10002D760((v1 + 80));
    if (*(v1 + 71) < 0)
    {
      operator delete(*(v1 + 48));
    }

    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1005C5F24(uint64_t **a1, uint64_t a2)
{
  v3 = sub_1000194D8(a1, a2);
  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  operator delete(a2);
  return v3;
}

uint64_t sub_1005C5F68(uint64_t a1)
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

uint64_t *sub_1005C5FEC(uint64_t *a1)
{
  v1 = *a1;
  v29 = a1;
  v30 = v1;
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
        v6 = *(v1 + 24);
        v7 = *(v3 + 48);
        v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        if (v6 == 2)
        {
          if (v8)
          {
            v9 = sub_100A43314(*(v1 + 32));
            *buf = 136315138;
            *&buf[4] = v9;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E [StartTransferProfileReq] IDS Failure [%s]", buf, 0xCu);
            v10 = *(v1 + 24);
            if (v10 != 2)
            {
              if (v10 == 1)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v27 = &ctu::ResultIsNotError::~ResultIsNotError;
                ctu::ResultIsNotError::ResultIsNotError(exception);
              }

              else
              {
                exception = __cxa_allocate_exception(0x10uLL);
                v27 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
                ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
              }

              __cxa_throw(exception, v28, v27);
            }
          }

          v11 = sub_1005AD768(*(v1 + 32));
          LOBYTE(__dst[0]) = 2;
          BYTE1(__dst[0]) = v11;
          v12 = *(v1 + 144);
          if (!v12)
          {
            sub_100022DB4();
          }

          (*(*v12 + 48))(v12, __dst);
          LOBYTE(__dst[0]) = 0;
          sub_10000501C(buf, "TransferStart");
          v13 = *(v1 + 24);
          if (v13 != 2)
          {
            if (v13 == 1)
            {
              v23 = __cxa_allocate_exception(0x10uLL);
              v24 = &ctu::ResultIsNotError::~ResultIsNotError;
              ctu::ResultIsNotError::ResultIsNotError(v23);
            }

            else
            {
              v23 = __cxa_allocate_exception(0x10uLL);
              v24 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v23);
            }

            __cxa_throw(v23, v25, v24);
          }

          sub_1005C0A14(v3, buf, *(v1 + 32));
        }

        else
        {
          if (v8)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I [StartTransferProfileRsp]", buf, 2u);
            v6 = *(v1 + 24);
          }

          v44 = 0u;
          memset(v45, 0, sizeof(v45));
          memset(v43, 0, sizeof(v43));
          *buf = 0u;
          if (v6 != 1)
          {
            v17 = __cxa_allocate_exception(0x10uLL);
            if (v6 == 2)
            {
              v18 = &ctu::ResultIsError::~ResultIsError;
              ctu::ResultIsError::ResultIsError(v17);
            }

            else
            {
              v18 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v17);
            }

            __cxa_throw(v17, v19, v18);
          }

          if (*(v1 + 55) < 0)
          {
            sub_100005F2C(buf, *(v1 + 32), *(v1 + 40));
          }

          else
          {
            *buf = *(v1 + 32);
            *&v43[0] = *(v1 + 48);
          }

          if (*(v1 + 79) < 0)
          {
            sub_100005F2C(v43 + 8, *(v1 + 56), *(v1 + 64));
          }

          else
          {
            *(v43 + 8) = *(v1 + 56);
            *(&v43[1] + 1) = *(v1 + 72);
          }

          LOWORD(v44) = *(v1 + 80);
          sub_10002D728(&v44 + 1, (v1 + 88));
          sub_1002030F8(v45, (v1 + 96));
          *&v45[14] = *(v1 + 110);
          *&v45[8] = *(v1 + 104);
          v14 = *(v1 + 24);
          if (v14 != 1)
          {
            if (v14 == 2)
            {
              v20 = __cxa_allocate_exception(0x10uLL);
              v21 = &ctu::ResultIsError::~ResultIsError;
              ctu::ResultIsError::ResultIsError(v20);
            }

            else
            {
              v20 = __cxa_allocate_exception(0x10uLL);
              v21 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
              ctu::ResultIsEmptyError::ResultIsEmptyError(v20);
            }

            __cxa_throw(v20, v22, v21);
          }

          v15 = *(v1 + 152);
          if (*(v1 + 79) < 0)
          {
            sub_100005F2C(__p, *(v1 + 56), *(v1 + 64));
          }

          else
          {
            *__p = *(v1 + 56);
            v40 = *(v1 + 72);
          }

          (*(*v15 + 56))(v15, __p);
          if (SHIBYTE(v40) < 0)
          {
            operator delete(__p[0]);
          }

          if (SBYTE7(v43[0]) < 0)
          {
            sub_100005F2C(__dst, *buf, *&buf[8]);
          }

          else
          {
            *__dst = *buf;
            v32 = *&v43[0];
          }

          if (SHIBYTE(v43[1]) < 0)
          {
            sub_100005F2C(&v33, *(&v43[0] + 1), *&v43[1]);
          }

          else
          {
            v33 = *(v43 + 8);
            v34 = *(&v43[1] + 1);
          }

          v35 = v44;
          v36 = *(&v44 + 1);
          if (*(&v44 + 1))
          {
            CFRetain(*(&v44 + 1));
          }

          v37 = *v45;
          if (*v45)
          {
            CFRetain(*v45);
          }

          v38[0] = *&v45[8];
          *(v38 + 6) = *&v45[14];
          sub_1001135B0(v41, v1 + 120);
          sub_1005BFC4C(v3, (v1 + 168), __dst, v41);
          sub_100113648(v41);
          sub_1002030AC(&v37);
          sub_10002D760(&v36);
          if (SHIBYTE(v34) < 0)
          {
            operator delete(v33);
          }

          if (SHIBYTE(v32) < 0)
          {
            operator delete(__dst[0]);
          }

          sub_1002030AC(v45);
          sub_10002D760(&v44 + 1);
          if (SHIBYTE(v43[1]) < 0)
          {
            operator delete(*(&v43[0] + 1));
          }
        }

        if (SBYTE7(v43[0]) < 0)
        {
          operator delete(*buf);
        }
      }

      sub_100004A34(v5);
    }
  }

  sub_1005C3FD8(&v30);
  return sub_1000049E0(&v29);
}

void sub_1005C6580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, char a33)
{
  __cxa_free_exception(v34);
  sub_100004A34(v33);
  sub_1005C3FD8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C6710(uint64_t a1, uint64_t a2)
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

char *sub_1005C6790(unsigned int a1)
{
  if (a1 >= 7)
  {
    __TUAssertTrigger("static_cast<unsigned>( type) <= sizeof( kTraceNames) / sizeof( kTraceNames[0])");
  }

  return off_101E66AA8[a1];
}

void sub_1005C67D0(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  *&v5 = *a2;
  *(&v5 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000FED0(v6, a3);
  sub_10000501C(&__p, "/helper/requests/is_icloud_signed_in_with_encryption");
  xpc_null_create();
  v6[2] = v5;
  v5 = 0uLL;
  sub_10000FED0(v7, v6);
  v7[8] = 0;
  operator new();
}

void sub_1005C6940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005C69A8(uint64_t a1)
{
  sub_10000FF50(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C69E0(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  *&v5 = *a2;
  *(&v5 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000FED0(v6, a3);
  sub_10000501C(&__p, "/helper/requests/is_zone_existing");
  xpc_null_create();
  v6[2] = v5;
  v5 = 0uLL;
  sub_10000FED0(v7, v6);
  v7[8] = 0;
  operator new();
}

void sub_1005C6B50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C6BB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2[1];
  *&v11 = *a2;
  *(&v11 + 1) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000FED0(v12, a4);
  v10 = 0;
  v6 = rest::asString();
  ctu::rest::detail::write_enum_string_value(v4, v6, v7);
  sub_10000501C(&__p, "/helper/requests/subscribe_record_change");
  v8 = xpc_null_create();
  v12[2] = v11;
  v10 = v8;
  v11 = 0uLL;
  sub_10000FED0(v13, v12);
  v13[8] = 0;
  operator new();
}

void sub_1005C6D58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C6DD8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  *&v5 = *a2;
  *(&v5 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10045A7EC(v6, a3);
  sub_10000501C(&__p, "/helper/requests/fetch_remote_device_info");
  xpc_null_create();
  v6[2] = v5;
  v5 = 0uLL;
  sub_10045A7EC(v7, v6);
  v7[8] = 0;
  operator new();
}

void sub_1005C6F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005C6FB0(uint64_t a1)
{
  sub_10028B224(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C6FE8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[1];
  *&v8 = *a2;
  *(&v8 + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100456CB8(v9, a4);
  v7 = 0;
  rest::write_rest_value();
  sub_10000501C(&__p, "/helper/requests/update_remote_device_info");
  v5 = xpc_null_create();
  v9[2] = v8;
  v7 = v5;
  v8 = 0uLL;
  sub_100456CB8(v10, v9);
  v10[8] = 0;
  operator new();
}

void sub_1005C717C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005C71FC(uint64_t a1)
{
  sub_100297224(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C7234(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[1];
  *&v8 = *a2;
  *(&v8 + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000FED0(v9, a4);
  v7 = 0;
  rest::write_rest_value();
  sub_10000501C(&__p, "/helper/requests/delete_remote_device_info_for_record");
  v5 = xpc_null_create();
  v9[2] = v8;
  v7 = v5;
  v8 = 0uLL;
  sub_10000FED0(v10, v9);
  v10[8] = 0;
  operator new();
}

void sub_1005C73C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C7448(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[1];
  *&v8 = *a2;
  *(&v8 + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000FED0(v9, a4);
  v7 = 0;
  rest::write_rest_value();
  sub_10000501C(&__p, "/helper/requests/delete_remote_device_info_for_zone");
  v5 = xpc_null_create();
  v9[2] = v8;
  v7 = v5;
  v8 = 0uLL;
  sub_10000FED0(v10, v9);
  v10[8] = 0;
  operator new();
}

void sub_1005C75DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C765C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  *&v5 = *a2;
  *(&v5 + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1005C9100(v6, a3);
  sub_10000501C(&__p, "/helper/requests/cellular_plan_fetch_remote_blacklist_info");
  xpc_null_create();
  v6[2] = v5;
  v5 = 0uLL;
  sub_1005C9100(v7, v6);
  v7[8] = 0;
  operator new();
}

void sub_1005C77CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005C7834(uint64_t a1)
{
  sub_10028AF18(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C786C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2[1];
  *&v8 = *a2;
  *(&v8 + 1) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100456CB8(v9, a4);
  v7 = 0;
  rest::write_rest_value();
  sub_10000501C(&__p, "/helper/requests/cellular_plan_update_blacklist_info");
  v5 = xpc_null_create();
  v9[2] = v8;
  v7 = v5;
  v8 = 0uLL;
  sub_100456CB8(v10, v9);
  v10[8] = 0;
  operator new();
}

void sub_1005C7A00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C7A84()
{
  TMKXPCServer.shutdown()();

  operator delete();
}

void *sub_1005C7ABC(void *a1)
{
  *a1 = off_101E66B68;
  sub_10000FF50((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C7B0C(void *a1)
{
  *a1 = off_101E66B68;
  sub_10000FF50((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1005C7BFC(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C7C1C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E66B68;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1000224C8((a2 + 3), a1 + 24);
}

void sub_1005C7C80(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C7CA0(char *a1)
{
  sub_1005C7DA4((a1 + 8));

  operator delete(a1);
}

void sub_1005C7CDC(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v4 = xpc::dyn_cast_or_default(&object, 0, v3);
  sub_10000FFD0(a1 + 24, v4);
  xpc_release(object);
}

uint64_t sub_1005C7D58(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005C7DA4(uint64_t a1)
{
  sub_10000FF50(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

void *sub_1005C7DF0(void *a1)
{
  *a1 = off_101E66BE8;
  sub_10000FF50((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C7E40(void *a1)
{
  *a1 = off_101E66BE8;
  sub_10000FF50((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1005C7F30(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C7F50(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E66BE8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1000224C8((a2 + 3), a1 + 24);
}

void sub_1005C7FB4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C7FD4(void *a1)
{
  sub_1005C7DA4(a1 + 8);

  operator delete(a1);
}

void sub_1005C8010(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v4 = xpc::dyn_cast_or_default(&object, 0, v3);
  sub_10000FFD0(a1 + 24, v4);
  xpc_release(object);
}

uint64_t sub_1005C808C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1005C80D8(void *a1)
{
  *a1 = off_101E66C68;
  sub_10000FF50((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C8128(void *a1)
{
  *a1 = off_101E66C68;
  sub_10000FF50((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1005C8218(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C8238(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E66C68;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1000224C8((a2 + 3), a1 + 24);
}

void sub_1005C829C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C82BC(void *a1)
{
  sub_1005C7DA4(a1 + 8);

  operator delete(a1);
}

void sub_1005C82F8(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v4 = xpc::dyn_cast_or_default(&object, 0, v3);
  sub_10000FFD0(a1 + 24, v4);
  xpc_release(object);
}

uint64_t sub_1005C8374(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1005C83C0(void *a1)
{
  *a1 = off_101E66CE8;
  sub_10028B224((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C8410(void *a1)
{
  *a1 = off_101E66CE8;
  sub_10028B224((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1005C8500(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C8520(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E66CE8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_10045A754((a2 + 3), a1 + 24);
}

void sub_1005C8584(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C85A4(char *a1)
{
  sub_1005C87A4((a1 + 8));

  operator delete(a1);
}

void sub_1005C85E0(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v7 = 0x1388000000000;
  rest::read_rest_value();
  v5 = 0;
  v6 = 0uLL;
  v9 = 0uLL;
  v8 = 0;
  v10 = 0x1388000000000;
  memset(v11, 0, sizeof(v11));
  sub_10045B0C8(v11, 0, 0, 0);
  v3 = *(a1 + 48);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, &v10);
  v12 = v11;
  sub_10027B3D0(&v12);
  v10 = &v5;
  sub_10027B3D0(&v10);
  v10 = &v8;
  sub_10027B3D0(&v10);
  xpc_release(object);
}

void sub_1005C8708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  *(v11 - 40) = v10;
  sub_10027B3D0((v11 - 40));
  *(v11 - 40) = v9;
  sub_10027B3D0((v11 - 40));
  xpc_release(object);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C8758(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005C87A4(uint64_t a1)
{
  sub_10028B224(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

void *sub_1005C87F0(void *a1)
{
  *a1 = off_101E66D68;
  sub_100297224((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C8840(void *a1)
{
  *a1 = off_101E66D68;
  sub_100297224((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1005C8930(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C8950(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E66D68;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_100456684((a2 + 3), a1 + 24);
}

void sub_1005C89B4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C89D4(char *a1)
{
  sub_1005C8AE4((a1 + 8));

  operator delete(a1);
}

void sub_1005C8A10(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  rest::read_rest_value();
  sub_100456F04(a1 + 24, 0x1388000000000);
  xpc_release(object);
}

uint64_t sub_1005C8A98(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005C8AE4(uint64_t a1)
{
  sub_100297224(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

void *sub_1005C8B30(void *a1)
{
  *a1 = off_101E66DE8;
  sub_10000FF50((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C8B80(void *a1)
{
  *a1 = off_101E66DE8;
  sub_10000FF50((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1005C8C70(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C8C90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E66DE8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1000224C8((a2 + 3), a1 + 24);
}

void sub_1005C8CF4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C8D14(void *a1)
{
  sub_1005C7DA4(a1 + 8);

  operator delete(a1);
}

void sub_1005C8D50(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v4 = xpc::dyn_cast_or_default(&object, 0, v3);
  sub_10000FFD0(a1 + 24, v4);
  xpc_release(object);
}

uint64_t sub_1005C8DCC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1005C8E18(void *a1)
{
  *a1 = off_101E66E68;
  sub_10000FF50((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C8E68(void *a1)
{
  *a1 = off_101E66E68;
  sub_10000FF50((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1005C8F58(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C8F78(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E66E68;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1000224C8((a2 + 3), a1 + 24);
}

void sub_1005C8FDC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C8FFC(void *a1)
{
  sub_1005C7DA4(a1 + 8);

  operator delete(a1);
}

void sub_1005C9038(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v4 = xpc::dyn_cast_or_default(&object, 0, v3);
  sub_10000FFD0(a1 + 24, v4);
  xpc_release(object);
}

uint64_t sub_1005C90B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005C9100(uint64_t a1, uint64_t a2)
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

void *sub_1005C9180(void *a1)
{
  *a1 = off_101E66EE8;
  sub_10028AF18((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C91D0(void *a1)
{
  *a1 = off_101E66EE8;
  sub_10028AF18((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1005C92C0(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C92E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E66EE8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1005C9564((a2 + 3), a1 + 24);
}

void sub_1005C9344(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C9364(char *a1)
{
  sub_1005C95FC((a1 + 8));

  operator delete(a1);
}

void sub_1005C93A0(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v7 = 0x1388000000000;
  rest::read_rest_value();
  v5 = 0;
  v6 = 0uLL;
  v9 = 0uLL;
  v8 = 0;
  v10 = 0x1388000000000;
  memset(v11, 0, sizeof(v11));
  sub_1005C9648(v11, 0, 0, 0);
  v3 = *(a1 + 48);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, &v10);
  v12 = v11;
  sub_10027B2AC(&v12);
  v10 = &v5;
  sub_10027B2AC(&v10);
  v10 = &v8;
  sub_10027B2AC(&v10);
  xpc_release(object);
}

void sub_1005C94C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  *(v11 - 40) = v10;
  sub_10027B2AC((v11 - 40));
  *(v11 - 40) = v9;
  sub_10027B2AC((v11 - 40));
  xpc_release(object);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C9518(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005C9564(uint64_t a1, uint64_t a2)
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

void sub_1005C95FC(uint64_t a1)
{
  sub_10028AF18(a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

uint64_t *sub_1005C9648(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10028AB1C(result, a4);
  }

  return result;
}

void sub_1005C96B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10027B2AC(&a9);
  _Unwind_Resume(a1);
}

void *sub_1005C96D0(void *a1)
{
  *a1 = off_101E66F68;
  sub_100297224((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1005C9720(void *a1)
{
  *a1 = off_101E66F68;
  sub_100297224((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1005C9810(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005C9830(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101E66F68;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_100456684((a2 + 3), a1 + 24);
}

void sub_1005C9894(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005C98B4(void *a1)
{
  sub_1005C8AE4(a1 + 8);

  operator delete(a1);
}

void sub_1005C98F0(uint64_t a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  rest::read_rest_value();
  sub_100456F04(a1 + 24, 0x1388000000000);
  xpc_release(object);
}

uint64_t sub_1005C9978(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005C99CC(uint64_t result)
{
  *result = off_101E67098;
  *(result + 8) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_1005C99F0(void ***a1)
{
  *a1 = off_101E67098;
  sub_100140928(a1 + 1, 0);

  PB::Base::~Base(a1);
}

void sub_1005C9A48(void ***a1)
{
  *a1 = off_101E67098;
  sub_100140928(a1 + 1, 0);
  PB::Base::~Base(a1);

  operator delete();
}

uint64_t sub_1005C9AB4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 8);
  if (v5)
  {
    PB::TextFormatter::format(this, "csn", v5);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    PB::TextFormatter::format(this, "error", *(a1 + 16));
    v6 = *(a1 + 24);
  }

  if ((v6 & 2) != 0)
  {
    PB::TextFormatter::format(this, "result", *(a1 + 20));
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_1005C9B48(uint64_t a1, PB::Reader *this)
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
        *(a1 + 24) |= 1u;
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
LABEL_46:
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
              goto LABEL_46;
            }
          }
        }

LABEL_50:
        *(a1 + 16) = v32;
      }

      else if (v22 == 2)
      {
        *(a1 + 24) |= 2u;
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

        *(a1 + 20) = v26;
      }

      else
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (!PB::Reader::skip(this, v22, v10 & 7, 0))
        {
          v43 = 0;
          return v43 & 1;
        }
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

uint64_t sub_1005C9E50(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4)
  {
    result = PB::Writer::write(this, v4, 1u);
  }

  v5 = *(v3 + 24);
  if ((v5 & 2) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 20), 2u);
    v5 = *(v3 + 24);
  }

  if (v5)
  {
    v6 = *(v3 + 16);

    return PB::Writer::writeVarInt(this, v6, 3u);
  }

  return result;
}

void *sub_1005C9ED0(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, NSObject **a5, int a6)
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

  v12 = "DATA.Connection.VVM.X";
  v13 = *(*a3 + 52);
  if (v13 == 2)
  {
    v12 = "DATA.Connection.VVM.2";
  }

  v14 = "VVM.X";
  if (v13 == 2)
  {
    v14 = "VVM.2";
  }

  if (v13 == 1)
  {
    v15 = "DATA.Connection.VVM.1";
  }

  else
  {
    v15 = v12;
  }

  if (v13 == 1)
  {
    v16 = "VVM.1";
  }

  else
  {
    v16 = v14;
  }

  sub_1009679C4(a1, &off_101E67B70, &v19, a3, a4, &object, v15, v16, a6);
  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  *a1 = off_101E67110;
  a1[8] = off_101E67670;
  a1[9] = off_101E67910;
  a1[10] = off_101E67AF8;
  return a1;
}

void sub_1005CA05C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_1005CA088(uint64_t a1)
{
  sub_10096807C(a1, &off_101E67B70);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1005CA0B8(uint64_t a1)
{
  sub_10096807C(a1 - 64, &off_101E67B70);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1005CA0EC(uint64_t a1)
{
  sub_10096807C(a1 - 72, &off_101E67B70);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1005CA120(uint64_t a1)
{
  sub_10096807C(a1 - 80, &off_101E67B70);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1005CA154(uint64_t a1)
{
  sub_10096807C(a1, &off_101E67B70);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

void sub_1005CA214(uint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  operator new();
}

void sub_1005CA320(_Unwind_Exception *exception_object)
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

  dispatch_release(v1);
  if (v3)
  {
LABEL_4:
    operator delete();
  }

LABEL_5:
  _Unwind_Resume(exception_object);
}

void sub_1005CA360(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

uint64_t sub_1005CA43C(uint64_t a1, dispatch_object_t *a2, void *a3, uint64_t *a4, uint64_t a5, int a6)
{
  v22 = *a2;
  if (v22)
  {
    dispatch_retain(v22);
  }

  v12 = a4[1];
  v20 = *a4;
  v21 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v19 = *(a5 + 16);
  }

  sub_10031435C(a1, &v22, a3, &v20, "ol.recovery", __p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }

  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v22)
  {
    dispatch_release(v22);
  }

  *a1 = off_101E689A0;
  v13 = a4[1];
  *(a1 + 160) = *a4;
  *(a1 + 168) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 176) = 1;
  *(a1 + 180) = a6;
  sub_10000501C(&v16, "ol.recovery");
  v15 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  ctu::RestModule::RestModule();
  if (v15)
  {
    dispatch_release(v15);
  }

  if (v17 < 0)
  {
    operator delete(v16);
  }

  *(a1 + 216) = 0;
  *(a1 + 208) = 0;
  *(a1 + 200) = a1 + 208;
  return a1;
}

void sub_1005CA5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, std::__shared_weak_count *a25)
{
  if (a25)
  {
    sub_100004A34(a25);
  }

  v27 = *(v25 - 56);
  if (v27)
  {
    dispatch_release(v27);
  }

  _Unwind_Resume(exception_object);
}

CellularPlanProvisioningMonitorModeInterface *sub_1005CA65C(uint64_t a1)
{
  *a1 = off_101E689A0;
  v2 = (a1 + 184);
  sub_1005CA6EC(a1 + 200, a1 + 184);
  ctu::RestModule::disconnect(v2);
  sub_100009970(a1 + 200, *(a1 + 208));
  v3 = *(a1 + 192);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 168);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return sub_10031452C(a1);
}

void sub_1005CA6EC(uint64_t a1, uint64_t a2)
{
  sub_10000501C(&__p, "/cc/props/carrier_entitlements_reachability");
  ctu::RestModule::unobserveProperty();
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1005CA740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005CA760(uint64_t a1)
{
  sub_1005CA65C(a1);

  operator delete();
}

void sub_1005CA79C(uint64_t a1)
{
  if (*(a1 + 176) != 1)
  {
    v2 = *(a1 + 168);
    if (v2)
    {
      v3 = std::__shared_weak_count::lock(v2);
      if (v3)
      {
        v4 = *(a1 + 160);
        if (v4)
        {
          if (sub_1005CA8D8(a1))
          {
            if ((*(a1 + 177) & 1) == 0)
            {
              (*(*v4 + 24))(v4, a1 + 64);
              sub_100314A14(a1, 0x100u);
            }
          }

          else
          {
            v13 = *(a1 + 40);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              sub_101775388(a1, v13);
            }
          }

LABEL_14:
          sub_100004A34(v3);
          return;
        }
      }
    }

    else
    {
      v3 = 0;
    }

    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_101775410(v5, v6, v7, v8, v9, v10, v11, v12);
      if (!v3)
      {
        return;
      }
    }

    else if (!v3)
    {
      return;
    }

    goto LABEL_14;
  }

  *(a1 + 176) = 0;

  sub_100314A14(a1, 0x100u);
}

uint64_t sub_1005CA8D8(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v6 = 0;
  if (*(a1 + 87) < 0)
  {
    sub_100005F2C(__p, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    *__p = *(a1 + 64);
    v6 = *(a1 + 80);
  }

  if (sub_10016FA58(a1 + 200, __p))
  {
    v2 = sub_1000E20F0(a1 + 200, __p);
    v3 = sub_1001E8808(v2, *(a1 + 180));
  }

  else
  {
    v3 = 0;
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_1005CA974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005CA9C4(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_101775448(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void sub_1005CAA00(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_101775480(v1, v2, v3, v4, v5, v6, v7, v8);
  }
}

void sub_1005CAAC0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1005CAB94);
  __cxa_rethrow();
}

void sub_1005CAB00(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005CAB54(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005CAB94(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1005CABC0(uint64_t **a1)
{
  v1 = **a1;
  Registry::createRestModuleOneTimeUseConnection(&v3, *(v1 + 48));
  ctu::RestModule::connect();
  if (v4)
  {
    sub_100004A34(v4);
  }

  v2[0] = sub_1005CA798;
  v2[1] = 0;
  sub_1005CAC9C(v1 + 200, v1 + 184, v1, v2);
}

void sub_1005CAC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  operator delete();
}

void sub_1005CAD88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1005CAE38(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E68AE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1005CAE78(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005CAEC4(uint64_t *a1, xpc_object_t *a2)
{
  sub_1005CAF40(*a1, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_1005CAF40(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_100009970(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    sub_100008EA4(&v12, object, 0);
    xpc_release(object[0]);
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v11, object, count);
    xpc_release(object[0]);
    for (i = v13; i != v11[1] || v12 != v11[0]; i = ++v13)
    {
      v10 = 0;
      object[0] = &v12;
      object[1] = i;
      sub_10003EAD4(object, &v10);
      if (xpc_get_type(v10) == &_xpc_type_dictionary)
      {
        v9 = 0;
        *object = 0u;
        v8 = 0u;
        v6 = v10;
        if (v10)
        {
          xpc_retain(v10);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_1005CB1EC(object, &v6);
        xpc_release(v6);
        sub_1005CB334(a1, object, object);
        if (SBYTE7(v8) < 0)
        {
          operator delete(object[0]);
        }
      }

      xpc_release(v10);
    }

    xpc_release(v11[0]);
    xpc_release(v12);
  }

  xpc_release(v3);
}

void sub_1005CB148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, xpc_object_t a19, xpc_object_t a20)
{
  xpc_release(object);
  xpc_release(*(v21 - 48));
  xpc_release(v20);
  _Unwind_Resume(a1);
}

void sub_1005CB1EC(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  v7 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v7 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v4 = &v7;
    v5 = "first";
    sub_100006354(&v4, &object);
    read_rest_value();
    xpc_release(object);
    v4 = &v7;
    v5 = "second";
    sub_100006354(&v4, &object);
    sub_1001E8CC8((a1 + 24), &object);
    xpc_release(object);
    v3 = v7;
  }

  xpc_release(v3);
}

void sub_1005CB2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void *sub_1005CB334(uint64_t **a1, uint64_t ***a2, uint64_t a3)
{
  v4 = 0;
  result = *sub_100005C2C(a1, &v4, a2);
  if (!result)
  {
    sub_1005CB3C0();
  }

  return result;
}

void sub_1005CB45C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1005CB478(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v34[0] = off_101E2A828;
  v34[1] = sub_1000A7BC0;
  v34[3] = v34;
  sub_1005CB8AC((a1 + 216), a3, v34);
  sub_1000A8744(v34);
  v10 = a3[1];
  v28 = *a3;
  v29 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a4[1];
  v26 = *a4;
  v27 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a5[1];
  v24 = *a5;
  v25 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1004D102C(a1, a2, &v28, &v26, &v24);
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (v27)
  {
    sub_100004A34(v27);
  }

  if (v29)
  {
    sub_100004A34(v29);
  }

  *a1 = &off_101E68B60;
  *(a1 + 8) = off_101E68CE8;
  sub_10000501C(&__p, "MO MMS");
  v30 = 0;
  log = 0;
  ctu::OsLogContext::OsLogContext(&v30, kCtLoggingSystemName, "mms.send");
  v13 = log;
  v14 = os_signpost_id_generate(log);
  if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15 = log;
    if (os_signpost_enabled(log))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_BEGIN, v14, "MobileOriginatedMMS", "", buf, 2u);
    }
  }

  *buf = off_101E68D68;
  v36 = buf;
  v32[0] = v14;
  v32[1] = os_retain(v13);
  sub_1000148FC(&v33, buf);
  sub_10001499C(buf);
  ctu::OsLogContext::~OsLogContext(&v30);
  Registry::createXpcJetsamAssertion();
  sub_100014DA8(v32);
  if (v23 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  v16 = *(a1 + 192);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  if (v16)
  {
    sub_100004A34(v16);
  }

  sub_100123054(*a4, 128);
  v17 = *a5;
  if (*a5)
  {
    v18 = a4[1];
    v20 = *a4;
    v21 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v17 + 24))(v17, &v20, 0);
    if (v21)
    {
      sub_100004A34(v21);
    }
  }

  *(a1 + 44) = 1;
  *(a1 + 64) = 1;
  *(a1 + 224) = 0;
  return a1;
}

void sub_1005CB7B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, char a26)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (*(v26 + 271) < 0)
  {
    operator delete(*v27);
  }

  v29 = *(v26 + 240);
  if (v29)
  {
    sub_100004A34(v29);
  }

  sub_1004D1284(v26);
  v30 = *(v26 + 216);
  *(v26 + 216) = 0;
  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  _Unwind_Resume(a1);
}

capabilities::ct *sub_1005CB8AC(capabilities::ct *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  if ((capabilities::ct::supportsGemini(a1) & 1) == 0)
  {
    operator new();
  }

  if (!*a1)
  {
    operator new();
  }

  return a1;
}

void sub_1005CBA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000A8744(va);
  operator delete();
}

MMSOperationInterface *sub_1005CBA74(MMSOperationInterface *this)
{
  *this = &off_101E68B60;
  *(this + 1) = off_101E68CE8;
  if (*(this + 271) < 0)
  {
    operator delete(*(this + 31));
  }

  v2 = *(this + 30);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1004D1284(this);
  v3 = *(this + 27);
  *(this + 27) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return this;
}

void sub_1005CBB34(MMSOperationInterface *a1)
{
  sub_1005CBA74(a1);

  operator delete();
}

void sub_1005CBB6C(uint64_t a1)
{
  sub_1005CBA74((a1 - 8));

  operator delete();
}

const void *sub_1005CBBA8(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  sub_1004D2664(a1, &v4);
  if (sub_1004D1694(a1) && v4)
  {
    v2 = sub_100121BFC(v4);
  }

  else
  {
    v2 = 0;
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

  return v2;
}

void sub_1005CBC10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005CBC28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    v5 = 100 * a2 / v2;
    v6 = v5 == 100 || v5 < 10;
    if (v6 || v5 - *(a1 + 228) >= 10)
    {
      v7 = sub_1004D15AC(a1);
      v8 = *(*(**(a1 + 216) + 16))(*(a1 + 216), v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 224);
        v22 = __PAIR64__(a2, 67109888);
        v23 = 1024;
        v24 = v9;
        v25 = 1024;
        v26 = v5;
        v27 = 1024;
        v28 = sub_1004D149C(a1);
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Sent %d of %d (%d%%): MsgId %u", &v22, 0x1Au);
      }

      ServiceMap = Registry::getServiceMap(*(a1 + 120));
      v11 = ServiceMap;
      v12 = "27MessageCenterModelInterface";
      if (("27MessageCenterModelInterface" & 0x8000000000000000) != 0)
      {
        v13 = ("27MessageCenterModelInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
          v19 = 0;
          if (!v18)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v18 = 0;
      }

      std::mutex::unlock(v11);
      v17 = 0;
      v19 = 1;
      if (!v18)
      {
LABEL_19:
        if ((v19 & 1) == 0)
        {
          sub_100004A34(v17);
        }

        *(a1 + 228) = v5;
        return;
      }

LABEL_18:
      v20 = sub_1004D15AC(a1);
      v21 = sub_1004D149C(a1);
      (*(*v18 + 264))(v18, v20, v21, a2, *(a1 + 224));
      goto LABEL_19;
    }
  }
}

void sub_1005CBE6C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005CC108(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1004D15AC(a1);
  ServiceMap = Registry::getServiceMap(*(a1 + 120));
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
  *&v97 = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, &v97);
  v52 = a4;
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
      if (!v17)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
  if (!v17)
  {
LABEL_7:
    v19 = *(*(**(a1 + 216) + 16))(*(a1 + 216), v8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      sub_1017754B8(v19);
      if (v18)
      {
        return;
      }

      goto LABEL_121;
    }

LABEL_120:
    if (v18)
    {
      return;
    }

    goto LABEL_121;
  }

LABEL_12:
  v97 = 0uLL;
  v98 = 0;
  MessageCenterModel::getBundleIdForDefaultCarrierMessagingApp((a1 + 120), &v97);
  object.__r_.__value_.__r.__words[0] = 0;
  v20 = xpc_dictionary_create(0, 0, 0);
  v21 = v20;
  if (v20)
  {
    object.__r_.__value_.__r.__words[0] = v20;
  }

  else
  {
    v21 = xpc_null_create();
    object.__r_.__value_.__r.__words[0] = v21;
    if (!v21)
    {
      v22 = xpc_null_create();
      v21 = 0;
      goto LABEL_19;
    }
  }

  if (xpc_get_type(v21) == &_xpc_type_dictionary)
  {
    xpc_retain(v21);
    goto LABEL_20;
  }

  v22 = xpc_null_create();
LABEL_19:
  object.__r_.__value_.__r.__words[0] = v22;
LABEL_20:
  xpc_release(v21);
  v23 = subscriber::simSlotAsInstance();
  v95 = xpc_int64_create(v23);
  if (!v95)
  {
    v95 = xpc_null_create();
  }

  *&__p = &object;
  *(&__p + 1) = "subs_id";
  sub_10000F688(&__p, &v95, &v96);
  xpc_release(v96);
  v96 = 0;
  xpc_release(v95);
  v95 = 0;
  v93 = xpc_int64_create(a3);
  if (!v93)
  {
    v93 = xpc_null_create();
  }

  *&__p = &object;
  *(&__p + 1) = "dwErrCode";
  sub_10000F688(&__p, &v93, &v94);
  xpc_release(v94);
  v94 = 0;
  xpc_release(v93);
  v93 = 0;
  v24 = sub_1004D16D8(a1);
  v91 = xpc_int64_create(v24);
  if (!v91)
  {
    v91 = xpc_null_create();
  }

  *&__p = &object;
  *(&__p + 1) = "rat";
  sub_10000F688(&__p, &v91, &v92);
  xpc_release(v92);
  v92 = 0;
  xpc_release(v91);
  v91 = 0;
  if (*(a1 + 271) < 0)
  {
    v25 = *(a1 + 248);
  }

  else
  {
    v25 = (a1 + 248);
  }

  v89 = xpc_string_create(v25);
  if (!v89)
  {
    v89 = xpc_null_create();
  }

  *&__p = &object;
  *(&__p + 1) = "wMmsVersion";
  sub_10000F688(&__p, &v89, &v90);
  xpc_release(v90);
  v90 = 0;
  xpc_release(v89);
  v89 = 0;
  v87 = xpc_int64_create(a2);
  if (!v87)
  {
    v87 = xpc_null_create();
  }

  *&__p = &object;
  *(&__p + 1) = "wResultCode";
  sub_10000F688(&__p, &v87, &v88);
  xpc_release(v88);
  v88 = 0;
  xpc_release(v87);
  v87 = 0;
  if (v98 >= 0)
  {
    v26 = &v97;
  }

  else
  {
    v26 = v97;
  }

  v85 = xpc_string_create(v26);
  if (!v85)
  {
    v85 = xpc_null_create();
  }

  *&__p = &object;
  *(&__p + 1) = "bundleId";
  sub_10000F688(&__p, &v85, &v86);
  xpc_release(v86);
  v86 = 0;
  xpc_release(v85);
  v85 = 0;
  if (SHIBYTE(v98) < 0)
  {
    sub_100005F2C(&__dst, v97, *(&v97 + 1));
  }

  else
  {
    __dst = v97;
    v82 = v98;
  }

  isThirdPartyMessagingApp = MessageCenterModel::isThirdPartyMessagingApp(&__dst);
  v83 = xpc_BOOL_create(isThirdPartyMessagingApp);
  if (!v83)
  {
    v83 = xpc_null_create();
  }

  *&__p = &object;
  *(&__p + 1) = "isThirdParty";
  sub_10000F688(&__p, &v83, &v84);
  xpc_release(v84);
  v84 = 0;
  xpc_release(v83);
  v83 = 0;
  if (SHIBYTE(v82) < 0)
  {
    operator delete(__dst);
  }

  v80 = object.__r_.__value_.__r.__words[0];
  if (object.__r_.__value_.__r.__words[0])
  {
    xpc_retain(object.__r_.__value_.__l.__data_);
  }

  else
  {
    v80 = xpc_null_create();
  }

  (*(*v17 + 16))(v17, "metricCCMMSSendEnd", &v80);
  xpc_release(v80);
  v80 = 0;
  xpc_release(object.__r_.__value_.__l.__data_);
  v79 = 0;
  v28 = xpc_dictionary_create(0, 0, 0);
  v29 = v28;
  if (v28)
  {
    v79 = v28;
  }

  else
  {
    v29 = xpc_null_create();
    v79 = v29;
    if (!v29)
    {
      v30 = xpc_null_create();
      v29 = 0;
      goto LABEL_55;
    }
  }

  if (xpc_get_type(v29) == &_xpc_type_dictionary)
  {
    xpc_retain(v29);
    goto LABEL_56;
  }

  v30 = xpc_null_create();
LABEL_55:
  v79 = v30;
LABEL_56:
  xpc_release(v29);
  v32 = a2 == 128 && a3 == 0;
  v77 = xpc_BOOL_create(v32);
  if (!v77)
  {
    v77 = xpc_null_create();
  }

  *&__p = &v79;
  *(&__p + 1) = "IsSuccess";
  sub_10000F688(&__p, &v77, &v78);
  xpc_release(v78);
  v78 = 0;
  xpc_release(v77);
  v77 = 0;
  v75 = xpc_string_create("MMS");
  if (!v75)
  {
    v75 = xpc_null_create();
  }

  *&__p = &v79;
  *(&__p + 1) = "MessageType";
  sub_10000F688(&__p, &v75, &v76);
  xpc_release(v76);
  v76 = 0;
  xpc_release(v75);
  v75 = 0;
  sub_10000501C(&object, "MMS_");
  v33 = *(a1 + 271);
  if (v33 >= 0)
  {
    v34 = (a1 + 248);
  }

  else
  {
    v34 = *(a1 + 248);
  }

  if (v33 >= 0)
  {
    v35 = *(a1 + 271);
  }

  else
  {
    v35 = *(a1 + 256);
  }

  v36 = std::string::append(&object, v34, v35);
  v37 = *&v36->__r_.__value_.__l.__data_;
  v72 = v36->__r_.__value_.__r.__words[2];
  __p = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  if (v72 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v73 = xpc_string_create(p_p);
  if (!v73)
  {
    v73 = xpc_null_create();
  }

  v65.__r_.__value_.__r.__words[0] = &v79;
  v65.__r_.__value_.__l.__size_ = "MessageSubtype";
  sub_10000F688(&v65, &v73, &v74);
  xpc_release(v74);
  v74 = 0;
  xpc_release(v73);
  v73 = 0;
  if (SHIBYTE(v72) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(object.__r_.__value_.__l.__data_);
  }

  v68 = xpc_BOOL_create(1);
  if (!v68)
  {
    v68 = xpc_null_create();
  }

  *&__p = &v79;
  *(&__p + 1) = "IsOutgoingMessage";
  sub_10000F688(&__p, &v68, &v69);
  xpc_release(v69);
  v69 = 0;
  xpc_release(v68);
  v68 = 0;
  sub_10000501C(&v65, "_");
  v39 = asString(a3);
  v40 = strlen(v39);
  v41 = std::string::insert(&v65, 0, v39, v40);
  v42 = *&v41->__r_.__value_.__l.__data_;
  object.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
  *&object.__r_.__value_.__l.__data_ = v42;
  v41->__r_.__value_.__l.__size_ = 0;
  v41->__r_.__value_.__r.__words[2] = 0;
  v41->__r_.__value_.__r.__words[0] = 0;
  v43 = asString(a2);
  v44 = strlen(v43);
  v45 = std::string::append(&object, v43, v44);
  v46 = *&v45->__r_.__value_.__l.__data_;
  v72 = v45->__r_.__value_.__r.__words[2];
  __p = v46;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  if (v72 >= 0)
  {
    v47 = &__p;
  }

  else
  {
    v47 = __p;
  }

  v66 = xpc_string_create(v47);
  if (!v66)
  {
    v66 = xpc_null_create();
  }

  v64[0] = &v79;
  v64[1] = "ErrorReason";
  sub_10000F688(v64, &v66, &v67);
  xpc_release(v67);
  v67 = 0;
  xpc_release(v66);
  v66 = 0;
  if (SHIBYTE(v72) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(object.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v65.__r_.__value_.__l.__data_);
  }

  sub_1004D2664(a1, &__p);
  v48 = sub_1013D8840(__p, "X-Mms-Message-Size");
  v62 = xpc_int64_create(v48);
  if (!v62)
  {
    v62 = xpc_null_create();
  }

  object.__r_.__value_.__r.__words[0] = &v79;
  object.__r_.__value_.__l.__size_ = "MessagePayloadSize";
  sub_10000F688(&object, &v62, &v63);
  xpc_release(v63);
  v63 = 0;
  xpc_release(v62);
  v62 = 0;
  if (*(&__p + 1))
  {
    sub_100004A34(*(&__p + 1));
  }

  if (v98 >= 0)
  {
    v49 = &v97;
  }

  else
  {
    v49 = v97;
  }

  v60 = xpc_string_create(v49);
  if (!v60)
  {
    v60 = xpc_null_create();
  }

  *&__p = &v79;
  *(&__p + 1) = "bundleId";
  sub_10000F688(&__p, &v60, &v61);
  xpc_release(v61);
  v61 = 0;
  xpc_release(v60);
  v60 = 0;
  if (SHIBYTE(v98) < 0)
  {
    sub_100005F2C(v56, v97, *(&v97 + 1));
  }

  else
  {
    *v56 = v97;
    v57 = v98;
  }

  v50 = MessageCenterModel::isThirdPartyMessagingApp(v56);
  v58 = xpc_BOOL_create(v50);
  if (!v58)
  {
    v58 = xpc_null_create();
  }

  *&__p = &v79;
  *(&__p + 1) = "isThirdParty";
  sub_10000F688(&__p, &v58, &v59);
  xpc_release(v59);
  v59 = 0;
  xpc_release(v58);
  v58 = 0;
  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56[0]);
  }

  Registry::getTimerService(&__p, *(a1 + 120));
  v51 = (**__p)(__p);
  if (*(&__p + 1))
  {
    sub_100004A34(*(&__p + 1));
  }

  if (v51 >= v52)
  {
    v54 = xpc_double_create(((v51 - v52) / 1000000) / 1000.0);
    if (!v54)
    {
      v54 = xpc_null_create();
    }

    *&__p = &v79;
    *(&__p + 1) = "SendDuration";
    sub_10000F688(&__p, &v54, &v55);
    xpc_release(v55);
    v55 = 0;
    xpc_release(v54);
    v54 = 0;
  }

  v53 = v79;
  if (v79)
  {
    xpc_retain(v79);
  }

  else
  {
    v53 = xpc_null_create();
  }

  (*(*v17 + 16))(v17, "UnifiedCTMessage", &v53);
  xpc_release(v53);
  v53 = 0;
  xpc_release(v79);
  if ((SHIBYTE(v98) & 0x80000000) == 0)
  {
    goto LABEL_120;
  }

  operator delete(v97);
  if (v18)
  {
    return;
  }

LABEL_121:
  sub_100004A34(v16);
}

void sub_1005CCBFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11, uint64_t a12, xpc_object_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, xpc_object_t a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, xpc_object_t object, xpc_object_t a58)
{
  xpc_release(object);
  if (*(v59 - 97) < 0)
  {
    operator delete(*(v59 - 120));
  }

  if ((a11 & 1) == 0)
  {
    sub_100004A34(v58);
  }

  _Unwind_Resume(a1);
}

void sub_1005CCE58(uint64_t a1)
{
  *(a1 + 228) = 0;
  v74 = 0;
  v75 = 0;
  sub_1004D2664(a1, &v74);
  v2 = sub_1004D15AC(a1);
  v3 = (*(**(a1 + 216) + 16))(*(a1 + 216), v2);
  v4 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_1004D149C(a1);
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Begin MMSSendOperation::run: MsgId %u", &buf, 8u);
  }

  v6 = (a1 + 248);
  if (sub_1013D8788(v74, "X-Mms-MMS-Version"))
  {
    if (*(a1 + 271) < 0)
    {
      sub_100005F2C(&buf, *(a1 + 248), *(a1 + 256));
    }

    else
    {
      buf = *v6;
      *&v77 = *(a1 + 264);
    }
  }

  else
  {
    sub_10000501C(&buf, "");
  }

  if (*(a1 + 271) < 0)
  {
    operator delete(*v6);
  }

  *v6 = buf;
  *(a1 + 264) = v77;
  v7 = v74;
  v8 = sub_100121BC8(v74);
  v9 = sub_100121BD8(v7, v8 - 1);
  if (v9)
  {
    v10 = sub_1013D85EC(v9);
    v11 = v10;
    if (v10)
    {
      buf = 0uLL;
      *&v77 = 0;
      v12 = (*(*v10 + 16))(v10);
      v13 = sub_10000501C(&buf, v12);
      v14 = BYTE7(v77);
      if (SBYTE7(v77) < 0)
      {
        v14 = *(&buf + 1);
      }

      if (!v14)
      {
        goto LABEL_67;
      }

      std::string::append(v13, "/", 1uLL);
      v15 = (*(*v11 + 24))(v11);
      v16 = strlen(v15);
      std::string::append(&buf, v15, v16);
      if ((SBYTE7(v77) & 0x80u) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf;
      }

      v18 = sub_100E5E5C4(p_buf);
      ServiceMap = Registry::getServiceMap(*(a1 + 120));
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
      v25 = v3;
      *&v81 = v21;
      v26 = sub_100009510(&v20[1].__m_.__sig, &v81);
      if (v26)
      {
        v27 = v18;
        v29 = v26[3];
        v28 = v26[4];
        if (v28)
        {
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v20);
          atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          v30 = v28;
          sub_100004A34(v28);
          v31 = 0;
          v18 = v27;
          goto LABEL_27;
        }

        v18 = v27;
      }

      else
      {
        v29 = 0;
      }

      std::mutex::unlock(v20);
      v30 = 0;
      v31 = 1;
LABEL_27:
      v3 = v25;
      if (!v29)
      {
        v34 = *v25;
        if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
        {
          sub_1017754FC(v34);
        }

        goto LABEL_65;
      }

      v81 = 0uLL;
      v82 = 0;
      MessageCenterModel::getBundleIdForDefaultCarrierMessagingApp((a1 + 120), &v81);
      v73 = 0;
      v32 = xpc_dictionary_create(0, 0, 0);
      v33 = v32;
      if (v32)
      {
        v73 = v32;
      }

      else
      {
        v33 = xpc_null_create();
        v73 = v33;
        if (!v33)
        {
          v35 = xpc_null_create();
          v33 = 0;
          goto LABEL_37;
        }
      }

      if (xpc_get_type(v33) == &_xpc_type_dictionary)
      {
        xpc_retain(v33);
LABEL_38:
        xpc_release(v33);
        v36 = subscriber::simSlotAsInstance();
        v71 = xpc_int64_create(v36);
        if (!v71)
        {
          v71 = xpc_null_create();
        }

        *v79 = &v73;
        v80 = "subs_id";
        sub_10000F688(v79, &v71, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v71);
        v71 = 0;
        v69 = xpc_int64_create(v18);
        if (!v69)
        {
          v69 = xpc_null_create();
        }

        *v79 = &v73;
        v80 = "dwContentType";
        sub_10000F688(v79, &v69, &v70);
        xpc_release(v70);
        v70 = 0;
        xpc_release(v69);
        v69 = 0;
        v37 = sub_1013D8840(v74, "X-Mms-Message-Size");
        v67 = xpc_int64_create(v37);
        if (!v67)
        {
          v67 = xpc_null_create();
        }

        *v79 = &v73;
        v80 = "dwSize";
        sub_10000F688(v79, &v67, &v68);
        xpc_release(v68);
        v68 = 0;
        xpc_release(v67);
        v67 = 0;
        if (*(a1 + 271) < 0)
        {
          v6 = *v6;
        }

        v65 = xpc_string_create(v6);
        if (!v65)
        {
          v65 = xpc_null_create();
        }

        *v79 = &v73;
        v80 = "wMmsVersion";
        sub_10000F688(v79, &v65, &v66);
        xpc_release(v66);
        v66 = 0;
        xpc_release(v65);
        v65 = 0;
        if (v82 >= 0)
        {
          v38 = &v81;
        }

        else
        {
          v38 = v81;
        }

        v63 = xpc_string_create(v38);
        if (!v63)
        {
          v63 = xpc_null_create();
        }

        *v79 = &v73;
        v80 = "bundleId";
        sub_10000F688(v79, &v63, &v64);
        xpc_release(v64);
        v64 = 0;
        xpc_release(v63);
        v63 = 0;
        if (SHIBYTE(v82) < 0)
        {
          sub_100005F2C(__p, v81, *(&v81 + 1));
        }

        else
        {
          *__p = v81;
          v60 = v82;
        }

        isThirdPartyMessagingApp = MessageCenterModel::isThirdPartyMessagingApp(__p);
        v61 = xpc_BOOL_create(isThirdPartyMessagingApp);
        if (!v61)
        {
          v61 = xpc_null_create();
        }

        *v79 = &v73;
        v80 = "isThirdParty";
        sub_10000F688(v79, &v61, &v62);
        xpc_release(v62);
        v62 = 0;
        xpc_release(v61);
        v61 = 0;
        if (SHIBYTE(v60) < 0)
        {
          operator delete(__p[0]);
        }

        v58 = v73;
        if (v73)
        {
          xpc_retain(v73);
        }

        else
        {
          v58 = xpc_null_create();
        }

        (*(*v29 + 16))(v29, "metricCCMMSSendStart", &v58);
        xpc_release(v58);
        v58 = 0;
        xpc_release(v73);
        if (SHIBYTE(v82) < 0)
        {
          operator delete(v81);
        }

LABEL_65:
        if ((v31 & 1) == 0)
        {
          sub_100004A34(v30);
        }

LABEL_67:
        if (SBYTE7(v77) < 0)
        {
          operator delete(buf);
        }

        goto LABEL_69;
      }

      v35 = xpc_null_create();
LABEL_37:
      v73 = v35;
      goto LABEL_38;
    }
  }

LABEL_69:
  v78 = 0;
  buf = 0u;
  v77 = 0u;
  sub_101135C24(&buf);
  v40 = Registry::getServiceMap(*(a1 + 120));
  v41 = v40;
  if (v42 < 0)
  {
    v43 = (v42 & 0x7FFFFFFFFFFFFFFFLL);
    v44 = 5381;
    do
    {
      v42 = v44;
      v45 = *v43++;
      v44 = (33 * v44) ^ v45;
    }

    while (v45);
  }

  std::mutex::lock(v40);
  *&v81 = v42;
  v46 = sub_100009510(&v41[1].__m_.__sig, &v81);
  if (!v46)
  {
    v48 = 0;
LABEL_77:
    std::mutex::unlock(v41);
    v47 = 0;
    v49 = 1;
    if (!v48)
    {
      goto LABEL_79;
    }

    goto LABEL_78;
  }

  v48 = v46[3];
  v47 = v46[4];
  if (!v47)
  {
    goto LABEL_77;
  }

  atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v41);
  atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v47);
  v49 = 0;
  if (v48)
  {
LABEL_78:
    LODWORD(v78) = (*(*v48 + 224))(v48, v2);
  }

LABEL_79:
  if ((v49 & 1) == 0)
  {
    sub_100004A34(v47);
  }

  sub_1004D1140(a1, v2, &v56);
  sub_1004D17E0(a1, &v56);
  if (v57)
  {
    sub_100004A34(v57);
  }

  if (*(a1 + 184))
  {
    sub_1004D1B44(a1);
    sub_1004D19AC(a1);
  }

  v50 = *v3;
  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
  {
    v51 = sub_1004D149C(a1);
    sub_10177557C(&v81, v51, v50);
  }

  v52 = sub_1004D16E8(a1);
  sub_1005CC108(a1, 0xE0u, 0xCu, v52);
  v53 = *(a1 + 136);
  sub_100004AA0(&v54, (a1 + 16));
  (*(*v53 + 16))(v53, 1, &v54);
  if (v55)
  {
    sub_100004A34(v55);
  }

  if (SHIBYTE(v77) < 0)
  {
    operator delete(*(&buf + 1));
  }

  if (v75)
  {
    sub_100004A34(v75);
  }
}

void sub_1005CD8C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, xpc_object_t a37, uint64_t a38, uint64_t a39)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005CDA8C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1004D15AC(a1);
  v5 = (*(**(a1 + 216) + 16))(*(a1 + 216), v4);
  v6 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = sub_1004D149C(a1);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I MMSSendOperation: HTTP Response callback, begin processing response: MsgId %u", buf, 8u);
  }

  v7 = a2[1];
  v41 = *a2;
  v42 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = sub_1005CDF48(a1, &v41);
  if (v42)
  {
    sub_100004A34(v42);
  }

  if (v8)
  {
    if (v8 != 1)
    {
      if (v8 != 2)
      {
        goto LABEL_34;
      }

      if ((*(*a1 + 96))(a1))
      {
        v8 = 2;
        goto LABEL_34;
      }

      v20 = *v5;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = sub_1004D14B4(a1);
        v22 = sub_1004D149C(a1);
        *buf = 67109376;
        *&buf[4] = v21;
        v44 = 1024;
        v45 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Message can no longer be retried due to retry count: %u, Failing send operation: MsgId %u", buf, 0xEu);
      }

      v23 = sub_1004D16E8(a1);
      sub_1005CC108(a1, 0xE0u, 3u, v23);
    }

    v24 = sub_1004D16E8(a1);
    sub_1005CC108(a1, 0xE0u, 0xFu, v24);
    ServiceMap = Registry::getServiceMap(*(a1 + 120));
    v26 = ServiceMap;
    v27 = "27MessageCenterModelInterface";
    if (("27MessageCenterModelInterface" & 0x8000000000000000) != 0)
    {
      v28 = ("27MessageCenterModelInterface" & 0x7FFFFFFFFFFFFFFFLL);
      v29 = 5381;
      do
      {
        v27 = v29;
        v30 = *v28++;
        v29 = (33 * v29) ^ v30;
      }

      while (v30);
    }

    std::mutex::lock(ServiceMap);
    *buf = v27;
    v31 = sub_100009510(&v26[1].__m_.__sig, buf);
    if (v31)
    {
      v32 = v31[3];
      v17 = v31[4];
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v26);
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v17);
        v33 = 0;
        if (!v32)
        {
LABEL_32:
          v8 = 1;
          if (v33)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

LABEL_31:
        v34 = sub_1004D15AC(a1);
        v35 = sub_1004D149C(a1);
        (*(*v32 + 208))(v32, v34, 1, v35);
        goto LABEL_32;
      }
    }

    else
    {
      v32 = 0;
    }

    std::mutex::unlock(v26);
    v17 = 0;
    v33 = 1;
    if (!v32)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v9 = sub_1004D16E8(a1);
  sub_1005CC108(a1, 0x80u, 0, v9);
  v10 = Registry::getServiceMap(*(a1 + 120));
  v11 = v10;
  v12 = "27MessageCenterModelInterface";
  if (("27MessageCenterModelInterface" & 0x8000000000000000) != 0)
  {
    v13 = ("27MessageCenterModelInterface" & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(v10);
  *buf = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, buf);
  if (!v16)
  {
    v18 = 0;
LABEL_38:
    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    if (!v18)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v18 = v16[3];
  v17 = v16[4];
  if (!v17)
  {
    goto LABEL_38;
  }

  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v11);
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v17);
  v19 = 0;
  if (v18)
  {
LABEL_39:
    v37 = sub_1004D15AC(a1);
    v38 = sub_1004D149C(a1);
    (*(*v18 + 272))(v18, v37, 1, v38);
  }

LABEL_40:
  v8 = 0;
  if ((v19 & 1) == 0)
  {
LABEL_33:
    sub_100004A34(v17);
  }

LABEL_34:
  v36 = *(a1 + 136);
  sub_100004AA0(&v39, (a1 + 16));
  (*(*v36 + 16))(v36, v8, &v39);
  if (v40)
  {
    sub_100004A34(v40);
  }
}