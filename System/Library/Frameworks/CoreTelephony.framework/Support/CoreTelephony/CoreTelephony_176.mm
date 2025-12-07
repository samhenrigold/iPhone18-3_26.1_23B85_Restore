void sub_1014EAD54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ImsSmsCommandDriver::handleMessageReceived(void *a1, int a2, __int128 *a3)
{
  sub_10132AF04(&v5, a3);
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

const void **sub_1014EAEEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v17 = CFStringCreateWithCString(kCFAllocatorDefault, "IMSConfig", 0x8000100u);
  v9 = CFStringCreateWithCString(kCFAllocatorDefault, "SMS", 0x8000100u);
  v16 = v9;
  if (*(a4 + 23) >= 0)
  {
    v10 = a4;
  }

  else
  {
    v10 = *a4;
  }

  v14 = 0;
  v15 = CFStringCreateWithCString(kCFAllocatorDefault, v10, 0x8000100u);
  v18[0] = v17;
  v18[1] = v9;
  v18[2] = v15;
  __p = 0;
  v13 = 0;
  sub_10005B328(&__p, v18, &v19, 3uLL);
  (*(**a3 + 104))(*a3, a2, 1, &__p, *a5, 1);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  sub_100005978(&v15);
  sub_100005978(&v16);
  return sub_100005978(&v17);
}

void sub_1014EB064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, const void *a12, const void *a13, const void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_100005978(&a12);
  sub_100005978(&a13);
  sub_100005978(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1014EB0B0(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

uint64_t sub_1014EB134(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

__n128 sub_1014EB220(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F44CC8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1014EB250(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  v4 = v3 + 1;
  v5 = v3[1];
  v17 = *v3;
  v18 = v5;
  v19 = v3[2];
  if (v19)
  {
    *(v5 + 16) = &v18;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v17 = &v18;
  }

  sub_1008E2524(v3, a2);
  v6 = v17;
  v15 = v17;
  v16[0] = v18;
  v16[1] = v19;
  if (v19)
  {
    *(v18 + 2) = v16;
    v17 = &v18;
    v18 = 0;
    v19 = 0;
    v7 = *(a1 + 16);
    v21 = 0;
    v22 = 0;
    v20 = &v21;
    if (v6 != v16)
    {
      while (1)
      {
        v23 = 0;
        v8 = v21;
        if (v20 == &v21)
        {
          break;
        }

        v9 = &v21;
        if (v21)
        {
          do
          {
            v10 = v8;
            v8 = *(v8 + 1);
          }

          while (v8);
        }

        else
        {
          do
          {
            v10 = v9[2];
            v11 = *v10 == v9;
            v9 = v10;
          }

          while (v11);
        }

        if ((sub_1000068BC(v10 + 4, v6 + 32) & 0x80) != 0)
        {
          if (!v21)
          {
LABEL_18:
            v23 = &v21;
LABEL_19:
            operator new();
          }

          goto LABEL_14;
        }

        v12 = sub_100005C2C(&v20, &v23, v6 + 4);
LABEL_15:
        if (!*v12)
        {
          goto LABEL_19;
        }

        v13 = v6[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v6[2];
            v11 = *v14 == v6;
            v6 = v14;
          }

          while (!v11);
        }

        v6 = v14;
        if (v14 == v16)
        {
          goto LABEL_28;
        }
      }

      v10 = &v21;
      if (!v21)
      {
        goto LABEL_18;
      }

LABEL_14:
      v23 = v10;
      v12 = (v10 + 1);
      goto LABEL_15;
    }
  }

  else
  {
    v15 = v16;
    v7 = *(a1 + 16);
    v21 = 0;
    v22 = 0;
    v20 = &v21;
  }

LABEL_28:
  sub_1014E98C0(v7, &v20);
  sub_100009970(&v20, v21);
  sub_100009970(&v15, v16[0]);
  sub_100009970(&v17, v18);
}

void sub_1014EB4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16, char *a17)
{
  sub_100009970(&a16, a17);
  sub_100009970(&a10, a11);
  sub_100009970(&a13, a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1014EB524(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014EB5EC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F44D48;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1014EB624(void *a1, xpc_object_t *a2)
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

  sub_100901888(v3, a2);
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

uint64_t sub_1014EB6FC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014EB814(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1014EB8E8);
  __cxa_rethrow();
}

void sub_1014EB854(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014EB8A8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014EB8E8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void sub_1014EB934(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F44E28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_1014EB9B0(uint64_t *a1)
{
  v1 = *a1;
  v15 = a1;
  v16 = v1;
  v2 = (v1 + 8);
  v3 = *v1;
  v4 = (*(**(*v1 + 88) + 16))(*(*v1 + 88), *(v1 + 8));
  v5 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v1 + 16);
    v7 = CSIBOOLAsString(*(v1 + 21));
    *buf = 67109378;
    v19 = v6;
    *v20 = 2080;
    *&v20[2] = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I SMS Send failure [SIP error: %u, fatal: %s]", buf, 0x12u);
  }

  v8 = *(v3 + 80);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = v9;
      v11 = *(v3 + 72);
      if (v11)
      {
        v12 = *(v1 + 21);
        *buf = *(v1 + 16);
        v19 = 0;
        *&v20[4] = 4;
        *v20 = v12;
        *v17 = v1 + 8;
        if (sub_100E11800((v3 + 144), *(v1 + 8), v17)[5])
        {
          if (sub_1014E9160(v3, *v2))
          {
            v20[0] = 1;
          }

          (*(*v11 + 48))(v11, *v2, buf);
        }

        else
        {
          v13 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            *v17 = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I No pending actions for send failure", v17, 2u);
          }
        }
      }

      sub_100004A34(v10);
    }
  }

  sub_1014EBBCC(&v16);
  return sub_1000049E0(&v15);
}

void sub_1014EBBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100004A34(v9);
  sub_1014EBBCC(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014EBBCC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 79) < 0)
    {
      operator delete(*(v1 + 56));
    }

    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    operator delete();
  }

  return a1;
}

void sub_1014EBC34(uint64_t **a1)
{
  v1 = (*a1 + 1);
  v2 = **a1;
  v3 = (*(**(v2 + 88) + 16))(*(v2 + 88), *v1);
  v4 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I SMS Send success", buf, 2u);
  }

  v5 = *(v2 + 80);
  if (!v5 || (v6 = std::__shared_weak_count::lock(v5)) == 0)
  {
LABEL_15:
    operator delete();
  }

  v7 = v6;
  v8 = *(v2 + 72);
  if (v8)
  {
    *buf = v1;
    if (sub_100E11800((v2 + 144), *v1, buf)[5])
    {
      *buf = v1;
      if (*(sub_100E11800((v2 + 144), *v1, buf)[5] + 48) == 2)
      {
        sub_1014E90A0(v2);
        sub_1014E8FE0(v2);
        (*(*v8 + 40))(v8, *v1);
        goto LABEL_14;
      }

      *buf = v1;
      if (*(sub_100E11800((v2 + 144), *v1, buf)[5] + 48) == 1)
      {
        sub_1014E90A0(v2);
        *buf = v1;
        *(sub_100E11800((v2 + 144), *v1, buf)[5] + 44) = 1;
        goto LABEL_14;
      }

      v13 = *v3;
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v15 = v1;
      sub_100E11800((v2 + 144), *v1, &v15);
      v14 = sms::asString();
      *buf = 136315138;
      *&buf[4] = v14;
      v10 = "Unknown sms type in sms send success: %s";
      v11 = v13;
      v12 = 12;
    }

    else
    {
      v9 = *v3;
      if (!os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v10 = "Failed to get pending messages";
      v11 = v9;
      v12 = 2;
    }

    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
  }

LABEL_14:
  sub_100004A34(v7);
  goto LABEL_15;
}

uint64_t *sub_1014EBF0C(uint64_t *a1)
{
  v1 = *a1;
  v17 = a1;
  v18 = v1;
  v2 = *v1;
  v3 = (*(**(*v1 + 88) + 16))(*(*v1 + 88), *(v1 + 8));
  if (subscriber::isValidSimSlot())
  {
    v4 = *(v1 + 136);
    v5 = *(v1 + 144);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    sub_100034C50(&v21, v4, v5, v5 - v4);
    v6 = (v1 + 88);
    if (!std::string::compare((v1 + 88), "application/vnd.3gpp.sms"))
    {
      if (*(v1 + 39) < 0)
      {
        sub_100005F2C(__dst, *(v1 + 16), *(v1 + 24));
      }

      else
      {
        *__dst = *(v1 + 16);
        v20 = *(v1 + 32);
      }

      v13 = (*(**(v2 + 88) + 16))(*(v2 + 88), *(v1 + 8));
      if (*(v1 + 136) != *(v1 + 144))
      {
        operator new();
      }

      v14 = *v13;
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Empty PDU while parsing 3GPP message", buf, 2u);
      }

      if (SHIBYTE(v20) < 0)
      {
        operator delete(__dst[0]);
      }

      goto LABEL_28;
    }

    if (std::string::compare((v1 + 88), "application/vnd.3gpp2.sms"))
    {
      v7 = *v3;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v1 + 111) < 0)
        {
          v6 = *v6;
        }

        *buf = 136315138;
        *&buf[4] = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I SMS message with unrecognized content type: '%s'! Ignoring message.", buf, 0xCu);
      }

      goto LABEL_28;
    }

    v9 = *(v2 + 80);
    if (v9)
    {
      v10 = *(v1 + 8);
      v11 = std::__shared_weak_count::lock(v9);
      if (v11)
      {
        v12 = *(v2 + 72);
        if (v12)
        {
          v25 = 0u;
          *v26 = 0u;
          *buf = 0u;
          sms::MTSmsDetails::MTSmsDetails();
          *v27 = off_101F44F58;
          *&v27[8] = v2;
          v28 = v10;
          v29 = v27;
          (*(*v12 + 32))(v12, buf, v27);
          sub_10124FD90(v27);
          sms::MTSmsDetails::~MTSmsDetails(buf);
LABEL_25:
          sub_100004A34(v11);
LABEL_28:
          if (v21)
          {
            v22 = v21;
            operator delete(v21);
          }

          goto LABEL_30;
        }
      }
    }

    else
    {
      v11 = 0;
    }

    v15 = *(v2 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to get SMS controller", buf, 2u);
    }

    if (!v11)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v8 = *v3;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to handle Incoming SMS for invalid slot", buf, 2u);
  }

LABEL_30:
  sub_1014ECA6C(&v18);
  return sub_1000049E0(&v17);
}

void sub_1014EC8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  v41 = v37[4];
  if (v41)
  {
    sub_100004A34(v41);
  }

  operator delete(v37);
  sub_1014EB0B0(&a20);
  sms::MTSmsDetails::~MTSmsDetails((v39 - 160));
  sub_100004A34(v38);
  sub_100004A34(v36);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    a18 = a17;
    operator delete(a17);
  }

  sub_1014ECA6C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014ECA6C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 136);
    if (v2)
    {
      *(v1 + 144) = v2;
      operator delete(v2);
    }

    if (*(v1 + 135) < 0)
    {
      operator delete(*(v1 + 112));
    }

    if (*(v1 + 111) < 0)
    {
      operator delete(*(v1 + 88));
    }

    if (*(v1 + 87) < 0)
    {
      operator delete(*(v1 + 64));
    }

    if (*(v1 + 63) < 0)
    {
      operator delete(*(v1 + 40));
    }

    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return a1;
}

void sub_1014ECB34(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F44E78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014ECBB0(uint64_t a1)
{
  *a1 = off_101F44EC8;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1014ECC1C(uint64_t a1)
{
  *a1 = off_101F44EC8;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1014ECD78(_Unwind_Exception *a1)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  v3 = *(v1 + 32);
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_1014ECDB0(char *result, uint64_t a2)
{
  v3 = result;
  *a2 = off_101F44EC8;
  v4 = *(result + 1);
  *(a2 + 16) = *(result + 4);
  *(a2 + 8) = v4;
  v5 = *(result + 4);
  *(a2 + 24) = *(result + 3);
  *(a2 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  if (result[63] < 0)
  {
    result = sub_100005F2C((a2 + 40), *(result + 5), *(result + 6));
  }

  else
  {
    v6 = *(result + 40);
    *(a2 + 56) = *(result + 7);
    *(a2 + 40) = v6;
  }

  if (v3[87] < 0)
  {
    return sub_100005F2C((a2 + 64), *(v3 + 8), *(v3 + 9));
  }

  v7 = *(v3 + 4);
  *(a2 + 80) = *(v3 + 10);
  *(a2 + 64) = v7;
  return result;
}

void sub_1014ECE68(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  v3 = *(v1 + 32);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014ECE98(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 32);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

void sub_1014ECEFC(void **__p)
{
  if (*(__p + 87) < 0)
  {
    operator delete(__p[8]);
  }

  if (*(__p + 63) < 0)
  {
    operator delete(__p[5]);
  }

  v2 = __p[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_1014ECF5C(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v4 = *a2;
  v6 = *a3;
  v5 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v7 = *(a1 + 8);
  v8 = (*(**(v7 + 88) + 16))(*(v7 + 88), *(a1 + 16));
  v9 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    buf.var0 = 136315138;
    *&buf.var1 = sms::asString();
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Message pdu processing status: %s", &buf, 0xCu);
  }

  if (v4 != 5)
  {
    v114 = 0;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    *__p = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v93 = 0u;
    *v91 = 0u;
    memset(v92, 0, sizeof(v92));
    memset(&buf, 0, sizeof(buf));
    SmsPduEncoder::SmsPduEncoder(&buf, 0);
    *&buf.var0 = &off_101F5AA30;
    BYTE8(v113) = 0;
    if (v4 == 1)
    {
      v11 = *v8;
      v12 = &_mh_execute_header;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
LABEL_108:
        v56 = sms::asString();
        *v115 = 136315138;
        *&v115[4] = v56;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Rejecting MT SMS with RP-ERROR: %s", v115, 0xCu);
      }

LABEL_109:
      sub_10163A77C(&buf, *(*(a1 + 24) + 788), v12);
      memset(v115, 0, sizeof(v115));
      *&v116 = 0;
      sub_10163A968(&buf, v115);
      sub_1014EAAE8(v7, *(a1 + 16), 1, v115, a1 + 64, a1 + 40, 0);
      v57 = *v115;
      if (!*v115)
      {
LABEL_112:
        SmsPduEncoder::~SmsPduEncoder(&buf);
        goto LABEL_113;
      }

      *&v115[8] = *v115;
LABEL_111:
      operator delete(v57);
      goto LABEL_112;
    }

    v13 = *(a1 + 16);
    *&v117 = @"SMSSettings";
    *(&v117 + 1) = @"RejectUserSmsWithErrorCode";
    *&v116 = 0;
    memset(v115, 0, sizeof(v115));
    sub_10005B328(v115, &v117, &v118, 2uLL);
    cf[0] = 0;
    ServiceMap = Registry::getServiceMap(*(v7 + 56));
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
    *&v117 = v16;
    v20 = sub_100009510(&v15[1].__m_.__sig, &v117);
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
        goto LABEL_102;
      }
    }

    else
    {
      v22 = 0;
    }

    std::mutex::unlock(v15);
    v21 = 0;
    v23 = 1;
LABEL_102:
    (*(*v22 + 104))(v85, v22, v13, 1, v115, 0, 0);
    sub_10010B240(cf, v85);
    sub_10000A1EC(v85);
    if ((v23 & 1) == 0)
    {
      sub_100004A34(v21);
    }

    LODWORD(v117) = -1;
    ctu::cf::assign(&v117, cf[0], v53);
    v54 = v117;
    sub_100029A48(cf);
    if (*v115)
    {
      *&v115[8] = *v115;
      operator delete(*v115);
    }

    v11 = *v8;
    v55 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v54 < 0)
    {
      if (v55)
      {
        *v115 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Sending RP-ACK", v115, 2u);
      }

      *v115 = 0u;
      v116 = 0u;
      v115[0] = *(*(a1 + 24) + 788);
      v58 = *(a1 + 16);
      v59 = Registry::getServiceMap(*(v7 + 56));
      v60 = v59;
      if (v61 < 0)
      {
        v62 = (v61 & 0x7FFFFFFFFFFFFFFFLL);
        v63 = 5381;
        do
        {
          v61 = v63;
          v64 = *v62++;
          v63 = (33 * v63) ^ v64;
        }

        while (v64);
      }

      std::mutex::lock(v59);
      *&v117 = v61;
      v65 = sub_100009510(&v60[1].__m_.__sig, &v117);
      if (v65)
      {
        v67 = v65[3];
        v66 = v65[4];
        if (v66)
        {
          atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v67 = 0;
        v66 = 0;
      }

      std::mutex::unlock(v60);
      cf[0] = v67;
      cf[1] = v66;
      if (v66)
      {
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v66);
      }

      sub_10000501C(&v117, "EnableExtraRPAckFields");
      v83[0] = kCFBooleanFalse;
      if (kCFBooleanFalse)
      {
        CFRetain(kCFBooleanFalse);
      }

      sub_1014EAEEC(v85, v58, cf, &v117, v83);
      v68 = v85[0];
      LOBYTE(v81[0]) = 0;
      if (v85[0])
      {
        v69 = CFGetTypeID(v85[0]);
        if (v69 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(v81, v68, v70);
          LOBYTE(v68) = v81[0];
        }

        else
        {
          LOBYTE(v68) = 0;
        }
      }

      sub_10000A1EC(v85);
      sub_10000A1EC(v83);
      if (SHIBYTE(v118) < 0)
      {
        operator delete(v117);
      }

      if (v66)
      {
        sub_100004A34(v66);
      }

      sub_10163A494(&buf, v115, v68 & 1);
      v117 = 0uLL;
      v118 = 0;
      sub_10163A968(&buf, &v117);
      sub_1014EAAE8(v7, *(a1 + 16), 1, &v117, a1 + 64, a1 + 40, 0);
      if (v117)
      {
        *(&v117 + 1) = v117;
        operator delete(v117);
      }

      if ((SHIBYTE(v116) & 0x80000000) == 0)
      {
        goto LABEL_112;
      }

      v57 = *&v115[8];
      goto LABEL_111;
    }

    LOBYTE(v12) = v54;
    if (v55)
    {
      goto LABEL_108;
    }

    goto LABEL_109;
  }

  v81[0] = 0;
  v81[1] = 0;
  v82 = 0;
  sub_1000AE428(&buf, *(a1 + 24) + 792);
  CSIPhoneNumber::getFullNumber(v81, &buf);
  if (SBYTE7(v97) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v95) < 0)
  {
    operator delete(*(&v94 + 1));
  }

  if (SBYTE7(v93) < 0)
  {
    operator delete(v92[2]);
  }

  if (SHIBYTE(v92[0]) < 0)
  {
    operator delete(v91[0]);
  }

  if (*(&buf.var2.__rep_.__l + 23) < 0)
  {
    operator delete(buf.var2.__rep_.__l.__data_);
  }

  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(*(a1 + 24) + 788);
  if (SHIBYTE(v82) < 0)
  {
    sub_100005F2C(__dst, v81[0], v81[1]);
  }

  else
  {
    *__dst = *v81;
    v80 = v82;
  }

  if (*(a1 + 87) < 0)
  {
    sub_100005F2C(v77, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    *v77 = *(a1 + 64);
    v78 = *(a1 + 80);
  }

  v24 = *(a1 + 24);
  v75 = 0;
  v76 = 0;
  v74 = 0;
  sub_100034C50(&v74, *(v24 + 760), *(v24 + 768), *(v24 + 768) - *(v24 + 760));
  if (*(a1 + 63) < 0)
  {
    sub_100005F2C(v72, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    *v72 = *(a1 + 40);
    v73 = *(a1 + 56);
  }

  v25 = Registry::getServiceMap(*(v7 + 56));
  v26 = v25;
  if (v27 < 0)
  {
    v28 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
    v29 = 5381;
    do
    {
      v27 = v29;
      v30 = *v28++;
      v29 = (33 * v29) ^ v30;
    }

    while (v30);
  }

  std::mutex::lock(v25);
  *&buf.var0 = v27;
  v31 = sub_100009510(&v26[1].__m_.__sig, &buf);
  if (v31)
  {
    v33 = v31[3];
    v32 = v31[4];
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v26);
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v32);
      v34 = 0;
      if (!v33)
      {
        goto LABEL_86;
      }

LABEL_43:
      v117 = 0uLL;
      v118 = 0;
      sub_1001E0090(&v117, v74, v75, v75 - v74);
      v35 = v10;
      v36 = *(v6 + 8);
      v71 = (*(**(v7 + 88) + 16))(*(v7 + 88), v36);
      v37 = Registry::getServiceMap(*(v7 + 56));
      v38 = v37;
      if (v39 < 0)
      {
        v40 = (v39 & 0x7FFFFFFFFFFFFFFFLL);
        v41 = 5381;
        do
        {
          v39 = v41;
          v42 = *v40++;
          v41 = (33 * v41) ^ v42;
        }

        while (v42);
      }

      std::mutex::lock(v37);
      *&buf.var0 = v39;
      v43 = sub_100009510(&v38[1].__m_.__sig, &buf);
      if (v43)
      {
        v45 = v43[3];
        v44 = v43[4];
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v45 = 0;
        v44 = 0;
      }

      std::mutex::unlock(v38);
      *v115 = v45;
      *&v115[8] = v44;
      if (v44)
      {
        atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v44);
      }

      sub_10000501C(&buf, "UseRpOriginatingAddressAsSender");
      v89 = kCFBooleanTrue;
      if (kCFBooleanTrue)
      {
        CFRetain(kCFBooleanTrue);
      }

      sub_1014EAEEC(cf, v36, v115, &buf, &v89);
      v46 = cf[0];
      LOBYTE(v85[0]) = 0;
      if (cf[0])
      {
        v47 = CFGetTypeID(cf[0]);
        if (v47 == CFBooleanGetTypeID())
        {
          ctu::cf::assign(v85, v46, v48);
        }
      }

      v49 = LOBYTE(v85[0]);
      sub_10000A1EC(cf);
      sub_10000A1EC(&v89);
      if (buf.var2.__rep_.__s.__data_[15] < 0)
      {
        operator delete(*&buf.var0);
      }

      if (v44)
      {
        sub_100004A34(v44);
      }

      cf[0] = 0;
      cf[1] = 0;
      v88 = 0;
      v50 = v77;
      if (v49)
      {
        v51 = __dst;
      }

      else
      {
        v51 = v77;
      }

      v52 = &v80 + 7;
      if (!v49)
      {
        v52 = &v78 + 7;
      }

      if (*v52 < 0)
      {
        if (v49)
        {
          v50 = __dst;
        }

        sub_100005F2C(cf, *v51, v50[1]);
      }

      else
      {
        *cf = *v51;
        v88 = v51[2];
      }

      if (SHIBYTE(v88) < 0)
      {
        sub_100005F2C(v85, cf[0], cf[1]);
      }

      else
      {
        *v85 = *cf;
        v86 = v88;
      }

      if (SHIBYTE(v118) < 0)
      {
        sub_100005F2C(v83, v117, *(&v117 + 1));
      }

      else
      {
        *v83 = v117;
        v84 = v118;
      }

      *&buf.var0 = v7;
      buf.var2.__rep_.__l.__data_ = v6;
      buf.var2.__rep_.__l.__size_ = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      buf.var2.__rep_.__s.__data_[16] = v35;
      if (SHIBYTE(v78) < 0)
      {
        sub_100005F2C(v91, v77[0], v77[1]);
      }

      else
      {
        *v91 = *v77;
        v92[0] = v78;
      }

      if (SHIBYTE(v73) < 0)
      {
        sub_100005F2C(&v92[1], v72[0], v72[1]);
      }

      else
      {
        *&v92[1] = *v72;
        v92[3] = v73;
      }

      *&v93 = v71;
      DWORD2(v93) = v36;
      *(&v116 + 1) = 0;
      operator new();
    }
  }

  else
  {
    v33 = 0;
  }

  std::mutex::unlock(v26);
  v32 = 0;
  v34 = 1;
  if (v33)
  {
    goto LABEL_43;
  }

LABEL_86:
  if ((v34 & 1) == 0)
  {
    sub_100004A34(v32);
  }

  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72[0]);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  if (SHIBYTE(v78) < 0)
  {
    operator delete(v77[0]);
  }

  if (SHIBYTE(v80) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

  if (SHIBYTE(v82) < 0)
  {
    operator delete(v81[0]);
  }

LABEL_113:
  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_1014EDB6C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1014EDE54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014EDF18(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F44F58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  return result;
}

void sub_1014EDF4C(uint64_t a1, unsigned int *a2, void *a3)
{
  v3 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v4 = *(*(**(*(a1 + 8) + 88) + 16))(*(*(a1 + 8) + 88), *(a1 + 16));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = sms::asString();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I SMS message processing status: %s", &v5, 0xCu);
  }

  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_1014EE03C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014EE054(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014EE0A0(uint64_t a1)
{
  *a1 = off_101F44FD8;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1014EE10C(uint64_t a1)
{
  *a1 = off_101F44FD8;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_1014EE27C(_Unwind_Exception *a1)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_1014EE2B4(char *result, uint64_t a2)
{
  v3 = result;
  *a2 = off_101F44FD8;
  *(a2 + 8) = *(result + 8);
  v4 = *(result + 3);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 32) = result[32];
  if (result[63] < 0)
  {
    result = sub_100005F2C((a2 + 40), *(result + 5), *(result + 6));
  }

  else
  {
    v5 = *(result + 40);
    *(a2 + 56) = *(result + 7);
    *(a2 + 40) = v5;
  }

  if (v3[87] < 0)
  {
    result = sub_100005F2C((a2 + 64), *(v3 + 8), *(v3 + 9));
  }

  else
  {
    v6 = *(v3 + 4);
    *(a2 + 80) = *(v3 + 10);
    *(a2 + 64) = v6;
  }

  v7 = *(v3 + 24);
  *(a2 + 88) = *(v3 + 11);
  *(a2 + 96) = v7;
  return result;
}

void sub_1014EE37C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014EE3AC(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 24);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

void sub_1014EE410(void **__p)
{
  if (*(__p + 87) < 0)
  {
    operator delete(__p[8]);
  }

  if (*(__p + 63) < 0)
  {
    operator delete(__p[5]);
  }

  v2 = __p[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_1014EE470(uint64_t a1, unsigned __int8 *a2, std::string *a3)
{
  v4 = *a2;
  v9 = *a3;
  *&a3->__r_.__value_.__r.__words[1] = 0uLL;
  a3->__r_.__value_.__r.__words[0] = 0;
  v5 = *(a1 + 8);
  v15 = 0;
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  SmsPduEncoder::SmsPduEncoder(v13, 0);
  *&v13[0] = &off_101F5AA30;
  BYTE8(v14) = 0;
  if (v4)
  {
    *__p = 0u;
    v12 = 0u;
    std::string::operator=(&__p[1], &v9);
    LOBYTE(__p[0]) = *(a1 + 32);
    BYTE2(__p[0]) = (*(**(a1 + 16) + 432))(*(a1 + 16));
    BYTE1(__p[0]) = (*(**(a1 + 16) + 344))(*(a1 + 16));
    v6 = **(a1 + 88);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I SMS PP-Data succeeded. Sending RP-ACK", buf, 2u);
    }

    sub_10163A494(v13, __p, 1);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p[1]);
    }
  }

  else
  {
    v7 = **(a1 + 88);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "SMS PP-Data failed. Sending RP-ERROR", __p, 2u);
    }

    sub_10163A77C(v13, *(a1 + 32), 111);
  }

  v8 = *(a1 + 96);
  sub_10163A968(v13, __p);
  sub_1014EAAE8(v5, v8, 1, __p, a1 + 40, a1 + 64, 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  SmsPduEncoder::~SmsPduEncoder(v13);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_1014EE6D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25)
{
  SmsPduEncoder::~SmsPduEncoder(&a25);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1014EE72C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014EE778@<X0>(capabilities::ct *a1@<X0>, void *a4@<X8>)
{
  v5 = capabilities::ct::supportsSIMProvisioningAsSignupSource(a1);
  if ((v5 & 1) != 0 || (result = capabilities::ct::supportsSIMProvisioningAsSignupDestination(v5), result))
  {
    *a4 = 0;
    a4[1] = 0;
    operator new();
  }

  *a4 = 0;
  a4[1] = 0;
  return result;
}

void sub_1014EE884(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  if (v2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014EE8CC(uint64_t a1, uint64_t a2, uint64_t a3, dispatch_object_t *a4)
{
  v7 = (a1 + 8);
  v8 = *a4;
  if (*a4)
  {
    dispatch_retain(*a4);
  }

  ctu::OsLogContext::OsLogContext(&v14, kCtLoggingSystemName, "lasd.ids");
  if (v8)
  {
    dispatch_retain(v8);
  }

  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v10 = dispatch_queue_create_with_target_V2("LASDDatabaseIDSUtility", initially_inactive, v8);
  dispatch_set_qos_class_floor(v10, QOS_CLASS_UTILITY, 0);
  dispatch_activate(v10);
  *v7 = 0;
  v7[1] = 0;
  *(a1 + 24) = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  *(a1 + 32) = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  if (v8)
  {
    dispatch_release(v8);
  }

  ctu::OsLogLogger::OsLogLogger(v15, &v14);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), v15);
  ctu::OsLogLogger::~OsLogLogger(v15);
  ctu::OsLogContext::~OsLogContext(&v14);
  if (v8)
  {
    dispatch_release(v8);
  }

  *a1 = off_101F45080;
  v11 = *a2;
  v12 = *(a2 + 8);
  *(a1 + 48) = *a2;
  *(a1 + 56) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    v11 = *a2;
  }

  Registry::getFileSystemInterface((a1 + 64), v11);
  *(a1 + 104) = 0;
  (*(**a3 + 16))();
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 224) = 0;
  *(a1 + 216) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  *(a1 + 256) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 191) = 0;
  return a1;
}

void sub_1014EEAA4(_Unwind_Exception *a1)
{
  sub_10142A708((v1 + 10));
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
  LASDDatabaseIDSInterface::~LASDDatabaseIDSInterface(v1);
  _Unwind_Resume(a1);
}

void sub_1014EEB2C(void *a1, uint64_t a2)
{
  sub_1012650F4(v4, a2);
  v4[3] = a1;
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

void sub_1014EEC30(void *a1, dispatch_object_t *a2, uint64_t *a3)
{
  v5 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v5);
  }

  v6 = a3[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
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

void sub_1014EED54(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1014EEE34(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      (*(**(a1 + 112) + 56))(*(a1 + 112));
      sub_1014EF0BC(a1);
      return;
    }

    v3 = *(a1 + 32) == 0;
  }

  else
  {
    v3 = 1;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1014F03A4;
  block[3] = &unk_101F45268;
  block[4] = a1 + 8;
  block[5] = &v5;
  v4 = *(a1 + 24);
  if (v3)
  {
    dispatch_sync(v4, block);
  }

  else
  {
    dispatch_async_and_wait(v4, block);
  }
}

void sub_1014EEF24(void *a1, unsigned __int8 *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[5])
      {
        sub_1005C0F8C(v8, a2);
        v7 = *(v5 + 16);
        if (v7)
        {
          if (std::__shared_weak_count::lock(v7))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_1014EF090(uint64_t result, uint64_t a2)
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

void sub_1014EF0AC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014EF0BC(uint64_t a1)
{
  v2 = *(a1 + 167);
  if (v2 < 0)
  {
    if (!*(a1 + 152))
    {
      return;
    }
  }

  else if (!*(a1 + 167))
  {
    return;
  }

  v3 = (a1 + 144);
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 144);
    if ((v2 & 0x80000000) != 0)
    {
      v5 = *v3;
    }

    v10 = 136315138;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Clearing out the directory %s where databases were previously received", &v10, 0xCu);
  }

  v6 = (*(**(a1 + 64) + 112))(*(a1 + 64), a1 + 144);
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 167) < 0)
      {
        v3 = *v3;
      }

      v9 = strerror(v7);
      v10 = 136315394;
      v11 = v3;
      v12 = 2080;
      v13 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N Could not remove %s directory: %s", &v10, 0x16u);
    }
  }

  else if (*(a1 + 167) < 0)
  {
    **(a1 + 144) = 0;
    *(a1 + 152) = 0;
  }

  else
  {
    *(a1 + 144) = 0;
    *(a1 + 167) = 0;
  }
}

void sub_1014EF24C(uint64_t a1)
{
  sub_1014EF284(a1);

  operator delete();
}

void sub_1014EF284(uint64_t a1)
{
  *a1 = off_101F45080;
  if (*(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v2 = *(a1 + 136);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10142A708(a1 + 80);
  v4 = *(a1 + 72);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  LASDDatabaseIDSInterface::~LASDDatabaseIDSInterface(a1);
}

void sub_1014EF428(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1014EF4FC);
  __cxa_rethrow();
}

void sub_1014EF468(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014EF4BC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014EF4FC(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t *sub_1014EF528(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *(v1 + 24);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Database version updated", buf, 2u);
  }

  sub_1014EF0BC(v2);
  (***(v2 + 112))(*(v2 + 112), v1);
  sub_1014EF5FC(&v6);
  return sub_1000049E0(&v5);
}

void sub_1014EF5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1014EF5FC(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014EF5FC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_101264468(v1, *(v1 + 8));
    operator delete();
  }

  return a1;
}

uint64_t *sub_1014EF650(void **a1)
{
  v1 = *a1;
  v12 = a1;
  v13 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bootstapping", buf, 2u);
  }

  v4 = v2[14];
  v5 = v1[1];
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  v6 = v1[3];
  v14 = v1[2];
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = v2[2];
  if (!v7 || (v8 = v2[1], (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    sub_100013CC4();
  }

  v10 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  *buf = off_101F45298;
  v18 = v8;
  v19 = v10;
  v20 = buf;
  (*(*v4 + 40))(v4, &group, &v14, buf);
  sub_1012643E8(buf);
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  sub_1014EF840(&v13);
  return sub_1000049E0(&v12);
}

void sub_1014EF7EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a14, std::__shared_weak_count *a15, dispatch_group_t group, char a17)
{
  sub_1012643E8(&a17);
  if (a15)
  {
    sub_100004A34(a15);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  sub_1014EF840(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014EF840(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete();
  }

  return a1;
}

void sub_1014EF8AC(unint64_t **a1)
{
  v1 = **a1;
  ServiceMap = Registry::getServiceMap(*(v1 + 48));
  v3 = ServiceMap;
  v4 = "38CellularPlanIDSServiceManagerInterface";
  if (("38CellularPlanIDSServiceManagerInterface" & 0x8000000000000000) != 0)
  {
    v5 = ("38CellularPlanIDSServiceManagerInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
  v24[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v24);
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
      (*(*v10 + 16))(v28, v10);
      v12 = *v28;
      memset(v28, 0, sizeof(v28));
      v13 = *(v1 + 136);
      *(v1 + 128) = v12;
      if (v13)
      {
        sub_100004A34(v13);
        if (*&v28[8])
        {
          sub_100004A34(*&v28[8]);
        }
      }

      if ((v11 & 1) == 0)
      {
        sub_100004A34(v9);
      }

      if (*(v1 + 128))
      {
        (*(**(v1 + 112) + 48))(*(v1 + 112));
        v14 = *(v1 + 16);
        if (!v14 || (v15 = *(v1 + 8), (v16 = std::__shared_weak_count::lock(v14)) == 0))
        {
          sub_100013CC4();
        }

        v17 = v16;
        atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v16);
        v18 = 0;
        v19 = 0;
        v20 = *(v1 + 128);
        *v28 = 0xF000E000D000CLL;
        do
        {
          v21 = *&v28[v18];
          if (v21 >= 0x10)
          {
            sub_1000A58E4("bitset set argument out of range");
          }

          v19 |= 1 << v21;
          v18 += 2;
        }

        while (v18 != 8);
        v26[4] = v1;
        *buf = v19;
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 0x40000000;
        v26[2] = sub_1014EFD28;
        v26[3] = &unk_101F451E8;
        *v28 = _NSConcreteStackBlock;
        *&v28[8] = 1174405120;
        v29 = sub_1014EFF0C;
        v30 = &unk_101F45208;
        v31 = v1;
        v32 = v15;
        v33 = v17;
        atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v24[0] = _NSConcreteStackBlock;
        v24[1] = 1174405120;
        v24[2] = sub_1014F00BC;
        v24[3] = &unk_101F45238;
        v24[4] = v1;
        v24[5] = v15;
        v25 = v17;
        atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        if (((*(*v20 + 40))(v20, "LASDDatabaseIDSUtility", buf, v26, v28, v24) & 1) == 0)
        {
          v22 = *(v1 + 40);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#E Failed to register IDS callbacks", buf, 2u);
          }
        }

        if (v25)
        {
          std::__shared_weak_count::__release_weak(v25);
        }

        if (v33)
        {
          std::__shared_weak_count::__release_weak(v33);
        }

        std::__shared_weak_count::__release_weak(v17);
      }

      else
      {
        v23 = *(v1 + 40);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#E Can't start because IDS service not found", v28, 2u);
        }
      }

      operator delete();
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

void sub_1014EFCA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31)
{
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (a31)
  {
    std::__shared_weak_count::__release_weak(a31);
  }

  std::__shared_weak_count::__release_weak(v31);
  operator delete();
}

uint64_t sub_1014EFD28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 56);
  ServiceMap = Registry::getServiceMap(*(v2 + 48));
  v5 = ServiceMap;
  v7 = v6;
  if ((v6 & 0x8000000000000000) != 0)
  {
    v8 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
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
  v27 = v7;
  v11 = sub_100009510(&v5[1].__m_.__sig, &v27);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v5);
  v12 = 0;
  v14 = 1;
LABEL_9:
  isIPhone = GestaltUtilityInterface::isIPhone(v13);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (isIPhone)
  {
    return (v3 & 0xFFF80000) != 0;
  }

  v17 = Registry::getServiceMap(*(v2 + 48));
  v18 = v17;
  if ((v6 & 0x8000000000000000) != 0)
  {
    v19 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v20 = 5381;
    do
    {
      v6 = v20;
      v21 = *v19++;
      v20 = (33 * v20) ^ v21;
    }

    while (v21);
  }

  std::mutex::lock(v17);
  v27 = v6;
  v22 = sub_100009510(&v18[1].__m_.__sig, &v27);
  if (!v22)
  {
    v24 = 0;
    goto LABEL_20;
  }

  v24 = v22[3];
  v23 = v22[4];
  if (!v23)
  {
LABEL_20:
    std::mutex::unlock(v18);
    v23 = 0;
    v25 = 1;
    goto LABEL_21;
  }

  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v18);
  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v23);
  v25 = 0;
LABEL_21:
  isWatch = GestaltUtilityInterface::isWatch(v24);
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  if (HIWORD(v3) > 0xEu)
  {
    return isWatch;
  }

  else
  {
    return 0;
  }
}

void sub_1014EFEE0(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014EFF0C(void *a1, uint64_t *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[5])
      {
        v7 = *a2;
        v8 = a2[1];
        memset(v10, 0, sizeof(v10));
        sub_1005F1008(v10, v7, v8, 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 5));
        v9 = *(v5 + 16);
        if (v9)
        {
          if (std::__shared_weak_count::lock(v9))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1014F00BC(void *a1, uint64_t a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a1[5])
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

        if (*(a2 + 47) < 0)
        {
          sub_100005F2C(__p, *(a2 + 24), *(a2 + 32));
        }

        else
        {
          *__p = *(a2 + 24);
          v11 = *(a2 + 40);
        }

        v12 = *(a2 + 48);
        sub_10002D728(&v13, (a2 + 56));
        sub_1002030F8(&v14, (a2 + 64));
        *&v15[6] = *(a2 + 78);
        *v15 = *(a2 + 72);
        v7 = *(v5 + 16);
        if (v7)
        {
          if (std::__shared_weak_count::lock(v7))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1014F0350(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 31) < 0)
  {
    operator delete(*v16);
  }

  sub_10004F058(a1);
}

void sub_1014F03A4(uint64_t a1)
{
  v1 = **(a1 + 40);
  (*(**(v1 + 112) + 56))(*(v1 + 112));

  sub_1014EF0BC(v1);
}

uint64_t *sub_1014F0404(void **a1)
{
  v1 = *a1;
  v24 = a1;
  v25 = v1;
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  if (v2 != v4)
  {
    while ((*(v2 + 24) & 1) == 0)
    {
      v2 += 96;
      if (v2 == v4)
      {
        goto LABEL_20;
      }
    }
  }

  if (v2 == v4)
  {
LABEL_20:
    v17 = *(v3 + 192);
    v18 = *(v3 + 40);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v17 == 1)
    {
      v20 = (v3 + 168);
      if (v19)
      {
        v21 = (v3 + 168);
        if (*(v3 + 191) < 0)
        {
          v21 = *v20;
        }

        LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315138;
        *(buf[0].__r_.__value_.__r.__words + 4) = v21;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Device with ID %s is in no longer in proximity", buf, 0xCu);
      }

      if (*(v3 + 191) < 0)
      {
        operator delete(*v20);
      }

      *v20 = 0;
      *(v3 + 176) = 0;
      *(v3 + 191) = 0;
      *(v3 + 184) = 0;
      if (*(v3 + 223) < 0)
      {
        operator delete(*(v3 + 200));
      }

      *(v3 + 200) = 0;
      *(v3 + 208) = 0;
      *(v3 + 224) = 0;
      *(v3 + 216) = 0;
      if (*(v3 + 255) < 0)
      {
        operator delete(*(v3 + 232));
      }

      *(v3 + 232) = 0;
      *(v3 + 240) = 0;
      *(v3 + 256) = 0;
      *(v3 + 248) = 0;
      goto LABEL_55;
    }

    if (!v19)
    {
      goto LABEL_55;
    }

    LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
    v22 = "#N No device in proximity";
    goto LABEL_36;
  }

  std::string::operator=((v3 + 168), v2);
  v5 = *(v2 + 26);
  *(v3 + 192) = *(v2 + 24);
  *(v3 + 194) = v5;
  std::string::operator=((v3 + 200), (v2 + 32));
  *(v3 + 224) = *(v2 + 56);
  std::string::operator=((v3 + 232), (v2 + 64));
  *(v3 + 256) = *(v2 + 88);
  v6 = *(v3 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v3 + 168;
    if (*(v3 + 191) < 0)
    {
      v7 = *(v3 + 168);
    }

    LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315138;
    *(buf[0].__r_.__value_.__r.__words + 4) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Device with ID %s is in proximity", buf, 0xCu);
  }

  if ((*(**(v3 + 112) + 24))(*(v3 + 112), v2))
  {
    if (*(v3 + 192))
    {
      v35 = 0u;
      *v36 = 0u;
      *&v36[20] = 0;
      memset(buf, 0, sizeof(buf));
      v36[8] = 2;
      *&v36[12] = 0x50000003CLL;
      std::string::operator=(buf, (v3 + 168));
      *&v36[12] = 30;
      v36[8] = 2;
      v8 = *(v3 + 256);
      (*(**(v3 + 112) + 8))(&__dst);
      sub_1016316A4(buf, v8, &__dst.__r_.__value_.__l.__data_);
      sub_100077CD4(&__dst, __dst.__r_.__value_.__l.__size_);
      v9 = *(v3 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = sub_100A432F0(v35);
        v11 = buf;
        if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v11 = buf[0].__r_.__value_.__r.__words[0];
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
        *(__dst.__r_.__value_.__r.__words + 4) = v10;
        WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
        *(&__dst.__r_.__value_.__r.__words[1] + 6) = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Sending the request message %s to device %s", &__dst, 0x16u);
      }

      v12 = *(v3 + 16);
      if (!v12 || (v13 = *(v3 + 8), (v14 = std::__shared_weak_count::lock(v12)) == 0))
      {
        sub_100013CC4();
      }

      v15 = v14;
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = *(v3 + 128);
      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&__dst, buf[0].__r_.__value_.__l.__data_, buf[0].__r_.__value_.__l.__size_);
      }

      else
      {
        __dst = buf[0];
      }

      if (SHIBYTE(buf[1].__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&__p, buf[1].__r_.__value_.__l.__data_, buf[1].__r_.__value_.__l.__size_);
      }

      else
      {
        __p = buf[1];
      }

      v30 = v35;
      v31 = *(&v35 + 1);
      if (*(&v35 + 1))
      {
        CFRetain(*(&v35 + 1));
      }

      v32 = *v36;
      if (*v36)
      {
        CFRetain(*v36);
      }

      v33[0] = *&v36[8];
      *(v33 + 6) = *&v36[14];
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 1174405120;
      v26[2] = sub_1014EEF24;
      v26[3] = &unk_101F450B0;
      v26[4] = v3;
      v26[5] = v13;
      v27 = v15;
      atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      (*(*v16 + 48))(v16, &__dst, v26);
      sub_1002030AC(&v32);
      sub_10002D760(&v31);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (v27)
      {
        std::__shared_weak_count::__release_weak(v27);
      }

      std::__shared_weak_count::__release_weak(v15);
      sub_1002030AC(v36);
      sub_10002D760(&v35 + 1);
      if (SHIBYTE(buf[1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[1].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }

      goto LABEL_55;
    }

    v18 = *(v3 + 40);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
    v22 = "#I Can't exchange version info as there is no device in proximity";
LABEL_36:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
  }

LABEL_55:
  sub_100DB2BE0(&v25);
  return sub_1000049E0(&v24);
}

void sub_1014F0978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v24);
  sub_1005AD788(v25 - 160);
  sub_100DB2BE0(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014F0A1C(uint64_t *a1)
{
  v1 = *a1;
  v59 = a1;
  v60 = v1;
  v2 = v1 + 8;
  v3 = *v1;
  v4 = sub_101632548(v1 + 8);
  if (v4 > 2)
  {
    if ((v4 - 3) >= 2)
    {
      goto LABEL_173;
    }

    v6 = *(v3 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_100A432F0(*(v1 + 56));
      v10 = *(v1 + 32);
      v9 = v1 + 32;
      v8 = v10;
      if (*(v9 - 1) >= 0)
      {
        v11 = v2;
      }

      else
      {
        v11 = *(v9 - 24);
      }

      if (*(v9 + 23) >= 0)
      {
        v8 = v9;
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315650;
      *(buf[0].__r_.__value_.__r.__words + 4) = v7;
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2080;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v11;
      HIWORD(buf[0].__r_.__value_.__r.__words[2]) = 2080;
      buf[1].__r_.__value_.__r.__words[0] = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Received database file message %s from device %s, tx-id %s", buf, 0x20u);
    }

    v64 = 0;
    v65[0] = 0;
    v65[1] = 0;
    sub_1016320F0(v2, &v64);
    v62 = 0;
    v63 = 0;
    v61 = &v62;
    v12 = v64;
    if (v64 == v65)
    {
LABEL_133:
      sub_1001A8E08(&v61, v62);
      sub_1001A8E08(&v64, v65[0]);
      goto LABEL_173;
    }

    v13 = (v3 + 144);
    while (1)
    {
      if ((*(v12 + 87) & 0x8000000000000000) != 0)
      {
        if (v12[9])
        {
LABEL_18:
          memset(&__p, 0, sizeof(__p));
          v14 = *(v3 + 167);
          if (v14 < 0)
          {
            if (!*(v3 + 152))
            {
              goto LABEL_34;
            }

LABEL_20:
            v15 = *(v3 + 40);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = v3 + 144;
              if ((v14 & 0x80000000) != 0)
              {
                v16 = *v13;
              }

              LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315138;
              *(buf[0].__r_.__value_.__r.__words + 4) = v16;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Already have a directory created at %s", buf, 0xCu);
              LOBYTE(v14) = *(v3 + 167);
            }

            if ((v14 & 0x80) != 0)
            {
              goto LABEL_25;
            }

LABEL_37:
            *&__dst.__r_.__value_.__l.__data_ = *v13;
            __dst.__r_.__value_.__r.__words[2] = *(v3 + 160);
          }

          else
          {
            if (*(v3 + 167))
            {
              goto LABEL_20;
            }

LABEL_34:
            strcpy(buf, "/tmp/LASDTemp.XXXXXX");
            v20 = mkdtemp(buf);
            sub_100016890((v3 + 144), v20);
            v21 = v3 + 144;
            if (*(v3 + 167) < 0)
            {
              v21 = *v13;
            }

            (*(**(v3 + 64) + 56))(*(v3 + 64), v21, 511, 1);
            if ((*(v3 + 167) & 0x80000000) == 0)
            {
              goto LABEL_37;
            }

LABEL_25:
            sub_100005F2C(&__dst, *(v3 + 144), *(v3 + 152));
          }

          v22 = *(v12 + 8);
          v23 = std::string::append(&__dst, "/", 1uLL);
          v24 = std::string::append(v23, "lasd", 4uLL);
          if (v22 > 7)
          {
            switch(v22)
            {
              case 8:
                v25 = "gsm";
                break;
              case 16:
                v25 = "scdma";
                break;
              case 32:
                v25 = "nr";
                break;
              default:
                goto LABEL_49;
            }
          }

          else
          {
            switch(v22)
            {
              case 1:
                v25 = "umts";
                break;
              case 2:
                v25 = "cdma";
                break;
              case 4:
                v25 = "lte";
                break;
              default:
LABEL_49:
                v25 = "unknown";
                break;
            }
          }

          v26 = strlen(v25);
          v27 = std::string::append(v24, v25, v26);
          v28 = std::string::append(v27, ".db", 3uLL);
          if (SHIBYTE(v28->__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&__p, v28->__r_.__value_.__l.__data_, v28->__r_.__value_.__l.__size_);
          }

          else
          {
            v29 = *&v28->__r_.__value_.__l.__data_;
            __p.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
            *&__p.__r_.__value_.__l.__data_ = v29;
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v30 = v12 + 8;
          v31 = v12 + 8;
          if (*(v12 + 87) < 0)
          {
            v31 = *v30;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          v33 = (*(**(v3 + 64) + 16))(*(v3 + 64), v31, p_p);
          if (v33)
          {
            v34 = *(v3 + 40);
            if (!os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_64;
            }

            v42 = *(v12 + 8);
            if (v42 > 7)
            {
              switch(v42)
              {
                case 8:
                  v43 = "gsm";
                  goto LABEL_110;
                case 16:
                  v43 = "scdma";
                  goto LABEL_110;
                case 32:
                  v43 = "nr";
                  goto LABEL_110;
              }
            }

            else
            {
              switch(v42)
              {
                case 1:
                  v43 = "umts";
                  goto LABEL_110;
                case 2:
                  v43 = "cdma";
                  goto LABEL_110;
                case 4:
                  v43 = "lte";
LABEL_110:
                  if (*(v12 + 87) < 0)
                  {
                    v30 = *v30;
                  }

                  v44 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
                  v45 = __p.__r_.__value_.__r.__words[0];
                  v46 = strerror(v33);
                  LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315906;
                  v47 = &__p;
                  if (v44 < 0)
                  {
                    v47 = v45;
                  }

                  *(buf[0].__r_.__value_.__r.__words + 4) = v43;
                  WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2080;
                  *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v30;
                  HIWORD(buf[0].__r_.__value_.__r.__words[2]) = 2080;
                  buf[1].__r_.__value_.__r.__words[0] = v47;
                  LOWORD(buf[1].__r_.__value_.__r.__words[1]) = 2080;
                  *(&buf[1].__r_.__value_.__r.__words[1] + 2) = v46;
                  _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "Moving %s database file from %s to %s failed with err: (%s)", buf, 0x2Au);
                  goto LABEL_64;
              }
            }

            v43 = "unknown";
            goto LABEL_110;
          }

          if (*(v12 + 63) < 0)
          {
            v38 = v12[6];
            if (v38)
            {
              memset(buf, 0, sizeof(buf));
              sub_100005F2C(buf, v12[5], v38);
              goto LABEL_79;
            }
          }

          else if (*(v12 + 63))
          {
            memset(&buf[1], 0, sizeof(std::string));
            buf[0] = *(v12 + 5);
LABEL_79:
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100005F2C(&buf[1], __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
            }

            else
            {
              buf[1] = __p;
            }

            sub_101264AB4(&v61, v12 + 8, (v12 + 4), buf);
            if (SHIBYTE(buf[1].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf[1].__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf[0].__r_.__value_.__l.__data_);
            }

            goto LABEL_64;
          }

          v39 = *(v3 + 40);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v40 = *(v12 + 8);
            if (v40 > 7)
            {
              switch(v40)
              {
                case 8:
                  v41 = "gsm";
                  break;
                case 16:
                  v41 = "scdma";
                  break;
                case 32:
                  v41 = "nr";
                  break;
                default:
                  goto LABEL_127;
              }
            }

            else
            {
              switch(v40)
              {
                case 1:
                  v41 = "umts";
                  break;
                case 2:
                  v41 = "cdma";
                  break;
                case 4:
                  v41 = "lte";
                  break;
                default:
LABEL_127:
                  v41 = "unknown";
                  break;
              }
            }

            LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315138;
            *(buf[0].__r_.__value_.__r.__words + 4) = v41;
            _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Incoming %s database has version info missing so it can't be used for updating", buf, 0xCu);
          }

LABEL_64:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_66;
        }
      }

      else if (*(v12 + 87))
      {
        goto LABEL_18;
      }

      v17 = *(v3 + 40);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        break;
      }

LABEL_66:
      v35 = v12[1];
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = v12[2];
          v37 = *v36 == v12;
          v12 = v36;
        }

        while (!v37);
      }

      v12 = v36;
      if (v36 == v65)
      {
        if (v63)
        {
          (*(**(v3 + 112) + 32))(*(v3 + 112), &v61);
        }

        goto LABEL_133;
      }
    }

    v18 = *(v12 + 8);
    if (v18 > 7)
    {
      switch(v18)
      {
        case 8:
          v19 = "gsm";
          goto LABEL_120;
        case 16:
          v19 = "scdma";
          goto LABEL_120;
        case 32:
          v19 = "nr";
          goto LABEL_120;
      }
    }

    else
    {
      switch(v18)
      {
        case 1:
          v19 = "umts";
          goto LABEL_120;
        case 2:
          v19 = "cdma";
          goto LABEL_120;
        case 4:
          v19 = "lte";
LABEL_120:
          LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315138;
          *(buf[0].__r_.__value_.__r.__words + 4) = v19;
          _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Incoming %s database has file resource missing", buf, 0xCu);
          goto LABEL_66;
      }
    }

    v19 = "unknown";
    goto LABEL_120;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      v5 = 2;
    }

    else
    {
      if (v4 != 2)
      {
        goto LABEL_173;
      }

      v5 = 1;
    }

    v49 = *(v3 + 40);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = v1 + 32;
      if (*(v1 + 31) >= 0)
      {
        v51 = v1 + 8;
      }

      else
      {
        v51 = *(v1 + 8);
      }

      if (*(v1 + 55) < 0)
      {
        v50 = *(v1 + 32);
      }

      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315394;
      *(buf[0].__r_.__value_.__r.__words + 4) = v51;
      WORD2(buf[0].__r_.__value_.__r.__words[1]) = 2080;
      *(&buf[0].__r_.__value_.__r.__words[1] + 6) = v50;
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I Received version info request from device %s, tx-id %s", buf, 0x16u);
    }

    memset(&__dst, 0, sizeof(__dst));
    sub_101631A78(v1 + 8, &__dst);
    if (__dst.__r_.__value_.__r.__words[2])
    {
      (*(**(v3 + 112) + 16))(*(v3 + 112), v1 + 8, &__dst);
      v74 = 0u;
      *v75 = 0u;
      *&v75[20] = 0;
      memset(buf, 0, sizeof(buf));
      v75[8] = 2;
      *&v75[12] = 0x50000003CLL;
      std::string::operator=(buf, (v1 + 8));
      std::string::operator=(&buf[1], (v1 + 32));
      *&v75[12] = 30;
      v75[8] = 2;
      (*(**(v3 + 112) + 8))(&__p);
      sub_1016316A4(buf, v5, &__p.__r_.__value_.__l.__data_);
      sub_100077CD4(&__p, __p.__r_.__value_.__l.__size_);
      v52 = *(v3 + 40);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = sub_100A432F0(v74);
        v54 = buf;
        if ((buf[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v54 = buf[0].__r_.__value_.__r.__words[0];
        }

        if (*(v1 + 55) >= 0)
        {
          v55 = v1 + 32;
        }

        else
        {
          v55 = *(v1 + 32);
        }

        LODWORD(__p.__r_.__value_.__l.__data_) = 136315650;
        *(__p.__r_.__value_.__r.__words + 4) = v53;
        WORD2(__p.__r_.__value_.__r.__words[1]) = 2080;
        *(&__p.__r_.__value_.__r.__words[1] + 6) = v54;
        HIWORD(__p.__r_.__value_.__r.__words[2]) = 2080;
        v68.__r_.__value_.__r.__words[0] = v55;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I Sending the response message %s to device %s, tx-id %s", &__p, 0x20u);
      }

      v56 = *(v3 + 128);
      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&__p, buf[0].__r_.__value_.__l.__data_, buf[0].__r_.__value_.__l.__size_);
      }

      else
      {
        __p = buf[0];
      }

      if (SHIBYTE(buf[1].__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&v68, buf[1].__r_.__value_.__l.__data_, buf[1].__r_.__value_.__l.__size_);
      }

      else
      {
        v68 = buf[1];
      }

      v69 = v74;
      v70 = *(&v74 + 1);
      if (*(&v74 + 1))
      {
        CFRetain(*(&v74 + 1));
      }

      v71 = *v75;
      if (*v75)
      {
        CFRetain(*v75);
      }

      v72[0] = *&v75[8];
      *(v72 + 6) = *&v75[14];
      (*(*v56 + 48))(v56, &__p, 0);
      sub_1002030AC(&v71);
      sub_10002D760(&v70);
      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_1002030AC(v75);
      sub_10002D760(&v74 + 1);
      if (SHIBYTE(buf[1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[1].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v57 = *(v3 + 40);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#E Received invalid version info dictionary", buf, 2u);
      }
    }

    sub_100077CD4(&__dst, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    v48 = *(v3 + 40);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 136315138;
      *(buf[0].__r_.__value_.__r.__words + 4) = "kUnknown";
      _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#E Unhandled or Unknown message type %s", buf, 0xCu);
    }
  }

LABEL_173:
  sub_100EA5664(&v60);
  return sub_1000049E0(&v59);
}

void sub_1014F1624(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_1005AD788(v35 - 192);
  sub_100077CD4(&a23, a24);
  sub_100EA5664(&a14);
  sub_1000049E0(&a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014F173C(uint64_t *a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 == 2)
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = sub_100A43314(*(v1 + 16));
      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#E Received an IDS error : %s while exchanging version info", buf, 0xCu);
    }
  }

  else
  {
    v19 = 0u;
    memset(v20, 0, 24);
    memset(__p, 0, sizeof(__p));
    *buf = 0u;
    if (v3 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    if (*(v1 + 39) < 0)
    {
      sub_100005F2C(buf, *(v1 + 16), *(v1 + 24));
    }

    else
    {
      *buf = *(v1 + 16);
      __p[0] = *(v1 + 32);
    }

    if (*(v1 + 63) < 0)
    {
      sub_100005F2C(&__p[1], *(v1 + 40), *(v1 + 48));
    }

    else
    {
      *&__p[1] = *(v1 + 40);
      __p[3] = *(v1 + 56);
    }

    LOWORD(v19) = *(v1 + 64);
    sub_10002D728(&v19 + 1, (v1 + 72));
    sub_1002030F8(v20, (v1 + 80));
    *(&v20[0] + 1) = *(v1 + 88);
    *(v20 + 14) = *(v1 + 94);
    v6 = *(v2 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_100A432F0(v19);
      v8 = buf;
      if (SHIBYTE(__p[0]) < 0)
      {
        v8 = *buf;
      }

      if (SHIBYTE(__p[3]) >= 0)
      {
        v9 = &__p[1];
      }

      else
      {
        v9 = __p[1];
      }

      *__dst = 136315650;
      *&__dst[4] = v7;
      *&__dst[12] = 2080;
      *&__dst[14] = v8;
      *&__dst[22] = 2080;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Received version info response %s from device %s, tx-id %s", __dst, 0x20u);
    }

    memset(__dst, 0, sizeof(__dst));
    sub_101631A78(buf, __dst);
    if (*&__dst[16])
    {
      (*(**(v2 + 112) + 16))(*(v2 + 112), buf, __dst);
    }

    else
    {
      v10 = *(v2 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#E Version info is invalid", v16, 2u);
      }
    }

    sub_100077CD4(__dst, *&__dst[8]);
    v11 = *(v2 + 128);
    if (SHIBYTE(__p[3]) < 0)
    {
      sub_100005F2C(__dst, __p[1], __p[2]);
    }

    else
    {
      *__dst = *&__p[1];
      *&__dst[16] = __p[3];
    }

    (*(*v11 + 56))(v11, __dst);
    if (__dst[23] < 0)
    {
      operator delete(*__dst);
    }

    sub_1002030AC(v20);
    sub_10002D760(&v19 + 1);
    if (SHIBYTE(__p[3]) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(__p[0]) < 0)
    {
      operator delete(*buf);
    }
  }

  sub_100EA7994(&v15);
  return sub_1000049E0(&v14);
}

void sub_1014F1AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100EA7994(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014F1B28(uint64_t *a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  if (*(*v1 + 192))
  {
    *cf = 0u;
    *v16 = 0u;
    *&v16[20] = 0;
    memset(v14, 0, sizeof(v14));
    v16[8] = 2;
    *&v16[12] = 0x50000003CLL;
    std::string::operator=(v14, v2 + 7);
    *&v16[12] = 300;
    v16[8] = 2;
    v3 = v2[10].__r_.__value_.__s.__data_[16];
    if (*(v1 + 55) < 0)
    {
      sub_100005F2C(__p, *(v1 + 32), *(v1 + 40));
    }

    else
    {
      *__p = *(v1 + 32);
      v13 = *(v1 + 48);
    }

    sub_101631EC4(v14, v3, (v1 + 8), __p);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    v5 = v2[1].__r_.__value_.__r.__words[2];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_100A432F0(LOWORD(cf[0]));
      v7 = v14;
      if ((v14[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v7 = v14[0].__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = v6;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Sending the message %s to device %s", &buf, 0x16u);
    }

    size = v2[5].__r_.__value_.__l.__size_;
    if (SHIBYTE(v14[0].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&buf, v14[0].__r_.__value_.__l.__data_, v14[0].__r_.__value_.__l.__size_);
    }

    else
    {
      buf = v14[0];
    }

    if (SHIBYTE(v14[1].__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v18, v14[1].__r_.__value_.__l.__data_, v14[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v18 = v14[1];
    }

    v19 = cf[0];
    v20 = cf[1];
    if (cf[1])
    {
      CFRetain(cf[1]);
    }

    v21 = *v16;
    if (*v16)
    {
      CFRetain(*v16);
    }

    v22[0] = *&v16[8];
    *(v22 + 6) = *&v16[14];
    (*(*size + 48))(size, &buf, 0);
    sub_1002030AC(&v21);
    sub_10002D760(&v20);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    sub_1002030AC(v16);
    sub_10002D760(&cf[1]);
    if (SHIBYTE(v14[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14[1].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14[0].__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v4 = v2[1].__r_.__value_.__r.__words[2];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Can't send database as there is no device in proximity", v14, 2u);
    }
  }

  sub_1014F1E9C(&v11);
  return sub_1000049E0(&v10);
}

void sub_1014F1E24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_1005AD788(&a18);
  sub_1014F1E9C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014F1E9C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    sub_100077CD4(v1 + 8, *(v1 + 16));
    operator delete();
  }

  return a1;
}

void *sub_1014F1F00(void *a1)
{
  *a1 = off_101F45298;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1014F1F4C(void *a1)
{
  *a1 = off_101F45298;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1014F2024(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F45298;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1014F205C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1014F206C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1014F20AC(uint64_t a1, void *a2)
{
  v3 = a2 + 1;
  v4 = a2[1];
  v9 = *a2;
  v10 = v4;
  if (a2[2])
  {
    v4[2] = &v10;
    *a2 = v3;
    *v3 = 0;
    a2[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = *(a1 + 8);
      if (v7)
      {
        v12 = *(a1 + 8);
        v13 = v6;
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_101264C6C(&v14, &v9);
        v8 = *(v7 + 16);
        if (v8)
        {
          if (std::__shared_weak_count::lock(v8))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v6);
    }
  }

  sub_1001A8E08(&v9, v10);
}

void sub_1014F2280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_100004A34(v13);
  sub_1001A8E08(&a9, a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1014F22B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1014F22FC(void **a1)
{
  v1 = *a1;
  v19 = a1;
  v20 = v1;
  v2 = v1[2];
  v3 = v1 + 3;
  if (v2 != v1 + 3)
  {
    v4 = *v1;
    do
    {
      if ((*(v2 + 87) & 0x8000000000000000) != 0)
      {
        if (!v2[9])
        {
LABEL_8:
          v7 = *(v4 + 40);
          goto LABEL_17;
        }
      }

      else if (!*(v2 + 87))
      {
        goto LABEL_8;
      }

      v5 = *(v2 + 63);
      if (v5 < 0)
      {
        v6 = v2[6];
      }

      else
      {
        v6 = *(v2 + 63);
      }

      v7 = *(v4 + 40);
      if (v6)
      {
        v8 = v2 + 5;
        if (os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(v2 + 8);
          if (v9 > 7)
          {
            switch(v9)
            {
              case 8:
                v10 = "gsm";
                break;
              case 16:
                v10 = "scdma";
                break;
              case 32:
                v10 = "nr";
                break;
              default:
                goto LABEL_29;
            }
          }

          else
          {
            switch(v9)
            {
              case 1:
                v10 = "umts";
                break;
              case 2:
                v10 = "cdma";
                break;
              case 4:
                v10 = "lte";
                break;
              default:
LABEL_29:
                v10 = "unknown";
                break;
            }
          }

          v13 = v2 + 5;
          if ((v5 & 0x80000000) != 0)
          {
            v13 = *v8;
          }

          *buf = 136315394;
          *&buf[4] = v10;
          v27 = 2080;
          v28[0] = v13;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Attempting to send %s database version %s", buf, 0x16u);
          LOBYTE(v5) = *(v2 + 63);
        }

        v23 = *(v2 + 8);
        if ((v5 & 0x80) != 0)
        {
          sub_100005F2C(&v24, v2[5], v2[6]);
        }

        else
        {
          v24 = *v8;
          v25 = v2[7];
        }

        v22[0] = 0;
        v22[1] = 0;
        v21 = v22;
        sub_101264FAC(&v21, v22, &v23, &v23);
        *buf = v4;
        sub_101264ECC(&buf[8], &v21);
        if (*(v2 + 87) < 0)
        {
          sub_100005F2C(__p, v2[8], v2[9]);
        }

        else
        {
          *__p = *(v2 + 4);
          __p[2] = *(v2 + 10);
        }

        v14 = *(v4 + 16);
        if (v14)
        {
          if (std::__shared_weak_count::lock(v14))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

LABEL_17:
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v11 = *(v2 + 8);
        if (v11 > 7)
        {
          switch(v11)
          {
            case 8:
              v12 = "gsm";
              goto LABEL_60;
            case 16:
              v12 = "scdma";
              goto LABEL_60;
            case 32:
              v12 = "nr";
              goto LABEL_60;
          }
        }

        else
        {
          switch(v11)
          {
            case 1:
              v12 = "umts";
              goto LABEL_60;
            case 2:
              v12 = "cdma";
              goto LABEL_60;
            case 4:
              v12 = "lte";
LABEL_60:
              *buf = 136315138;
              *&buf[4] = v12;
              _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Not sending %s database because there is no associated file/version", buf, 0xCu);
              goto LABEL_44;
          }
        }

        v12 = "unknown";
        goto LABEL_60;
      }

LABEL_44:
      v15 = v2[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v2[2];
          v17 = *v16 == v2;
          v2 = v16;
        }

        while (!v17);
      }

      v2 = v16;
    }

    while (v16 != v3);
  }

  sub_1014F2818(&v20);
  return sub_1000049E0(&v19);
}

void sub_1014F278C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a19, char a20, char a21, char *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, char *a35)
{
  sub_100077CD4(v32 + 8, a35);
  sub_100077CD4(&a19, a22);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  sub_1014F2818(&a15);
  sub_1000049E0(&a14);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014F2818(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_1001A8E08(v1 + 16, *(v1 + 24));
    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return a1;
}

void IMSCallModelInterface::~IMSCallModelInterface(IMSCallModelInterface *this)
{
  *(this + 1) = off_101F45390;
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

uint64_t sub_1014F2908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = emergency::CallAgent::CallAgent();
  *v5 = off_101F45428;
  *(v5 + 120) = a3;
  *(v5 + 128) = 0;
  if (!a3)
  {
    __assert_rtn("ActivationAgent", "EmergencyActivationAgent.cpp", 19, "activator && Need valid data session activator");
  }

  return a1;
}

uint64_t sub_1014F2994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10009CF40(v16, a2);
  sub_1000224C8(v15, a3);
  sub_10009CF40(v14, a4);
  emergency::CallAgent::dial();
  sub_10002B644(v14);
  sub_10000FF50(v15);
  sub_10002B644(v16);
  if (*(a1 + 128) == 1)
  {
    return (*(*a1 + 96))(a1);
  }

  v8 = *(a1 + 120);
  v9 = *(a1 + 8);
  v13[0] = off_101F454C8;
  v13[1] = a1;
  v13[3] = v13;
  v12[0] = off_101F45558;
  v12[1] = a1;
  v12[3] = v12;
  v11[0] = off_101F455D8;
  v11[1] = a1;
  v11[3] = v11;
  v10 = (*(*a1 + 88))(a1);
  (*(*v8 + 32))(v8, v9, v13, v12, v11, v10);
  sub_10002B644(v11);
  sub_10000FF50(v12);
  return sub_1014F2D5C(v13);
}

void sub_1014F2B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  sub_10002B644(va);
  sub_10000FF50(va1);
  sub_1014F2D5C(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_1014F2BC8(uint64_t a1)
{
  if (*(a1 + 40))
  {
    *(a1 + 128) = 0;
    (*(**(a1 + 120) + 40))(*(a1 + 120));
  }

  return emergency::CallAgent::endDialing(a1);
}

uint64_t sub_1014F2CB4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F454C8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1014F2CE0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v1[128] = 1;
  return (*(*v1 + 96))();
}

uint64_t sub_1014F2D10(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014F2D5C(uint64_t a1)
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

uint64_t sub_1014F2E4C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F45558;
  a2[1] = v2;
  return result;
}

uint64_t sub_1014F2E78(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v3[128] = 0;
  return (*(*v3 + 104))(v3, v2);
}

uint64_t sub_1014F2EA8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014F2F64(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F455D8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1014F2F90(uint64_t a1)
{
  v1 = *(a1 + 8);
  v1[128] = 0;
  return (*(*v1 + 112))();
}

uint64_t sub_1014F2FBC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void RegistrationController::handleScanCompletionStatus(uint64_t a1, int a2, char a3)
{
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 8));
  operator new();
}

void RegistrationController::operatorName(uint64_t a1, int a2, __int128 *a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1174405120;
  v5[2] = sub_1014F3288;
  v5[3] = &unk_101F45698;
  v5[4] = a1;
  v20 = a2;
  sub_100EBBD10(&v6, a3);
  v23 = 0;
  v24 = 0;
  sub_100004AA0(&v23, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C8C;
  block[3] = &unk_101F45848;
  block[5] = v23;
  v22 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v4, block);
  if (v22)
  {
    sub_100004A34(v22);
  }

  if (v24)
  {
    sub_100004A34(v24);
  }

  if (v19 < 0)
  {
    operator delete(__p);
  }

  if (v17 == 1 && v16 < 0)
  {
    operator delete(v15);
  }

  if (v14 == 1 && v13 < 0)
  {
    operator delete(v12);
  }

  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }
}

void sub_1014F3288(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(a1 + 224));
  v131 = 0;
  v130 = 0;
  RegistrationController::getModel_sync(v2, *(a1 + 224), &v130);
  v4 = v130;
  if (v130)
  {
    v5 = *(a1 + 116);
    if (v5 == 11)
    {
      v5 = (*(*v130 + 472))(v130);
    }

    __dst = 0uLL;
    v129 = 0;
    if (*(a1 + 87) < 0)
    {
      sub_100005F2C(&__dst, *(a1 + 64), *(a1 + 72));
    }

    else
    {
      __dst = *(a1 + 64);
      v129 = *(a1 + 80);
    }

    __src = 0uLL;
    v127 = 0;
    if (*(a1 + 63) < 0)
    {
      sub_100005F2C(&__src, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      __src = *(a1 + 40);
      v127 = *(a1 + 56);
    }

    v8 = v5 + 1;
    if ((v5 + 1) > 0xC)
    {
      goto LABEL_119;
    }

    if (((1 << v8) & 0xD0A) == 0)
    {
      if (((1 << v8) & 0x1071) != 0)
      {
        v9 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
        {
          v10 = SHIBYTE(v129);
          v11 = __dst;
          v12 = SHIBYTE(v127);
          v13 = __src;
          v14 = asString();
          p_src = &__src;
          if (v12 < 0)
          {
            p_src = v13;
          }

          *buf = 136315650;
          p_dst = &__dst;
          if (v10 < 0)
          {
            p_dst = v11;
          }

          *&buf[4] = p_dst;
          *&buf[12] = 2080;
          *&buf[14] = p_src;
          *&buf[22] = 2080;
          *&buf[24] = v14;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N Ignoring short operator name (%s) and long (%s) for RAT %s", buf, 0x20u);
        }

        goto LABEL_119;
      }

      if (v5 != 8 || ((*(**(v2 + 104) + 128))(*(v2 + 104)) & 1) == 0)
      {
        goto LABEL_119;
      }
    }

    v17 = HIBYTE(v127);
    v18 = HIBYTE(v127);
    if (v127 < 0)
    {
      v17 = *(&__src + 1);
    }

    if (v17)
    {
      goto LABEL_30;
    }

    v19 = HIBYTE(v129);
    if (v129 < 0)
    {
      v19 = *(&__dst + 1);
    }

    if (v19)
    {
LABEL_30:
      if (*(a1 + 152) == 1 && *(a1 + 192) == 1)
      {
        v20 = *v3;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          IntValue = MCC::getIntValue((a1 + 120));
          IntegerWidth = MNC::getIntegerWidth((a1 + 160));
          v23 = MCC::getIntValue((a1 + 160));
          *buf = 67109632;
          *&buf[4] = IntValue;
          *&buf[8] = 1024;
          *&buf[10] = IntegerWidth;
          *&buf[14] = 1024;
          *&buf[16] = v23;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Using PLMN (%03d-%0.*d) from baseband", buf, 0x14u);
          v18 = HIBYTE(v127);
        }

        if (v18 < 0)
        {
          sub_100005F2C(&v107, __src, *(&__src + 1));
        }

        else
        {
          v107 = __src;
          v108 = v127;
        }

        if (SHIBYTE(v129) < 0)
        {
          sub_100005F2C(&v109, __dst, *(&__dst + 1));
        }

        else
        {
          v109 = __dst;
          v110 = v129;
        }

        if (*(a1 + 111) < 0)
        {
          sub_100005F2C(&v111, *(a1 + 88), *(a1 + 96));
        }

        else
        {
          v111 = *(a1 + 88);
          v112 = *(a1 + 104);
        }

        v113 = *(a1 + 112);
        v114 = v5;
        sub_10002E588(&v115, (a1 + 120));
        sub_10002DEF4(&v119, (a1 + 160));
        v124 = 0;
        v123 = 0;
        v125 = 0;
        (*(*v4 + 344))(v4, &v107);
        if (SHIBYTE(v125) < 0)
        {
          operator delete(v123);
        }

        if (v122 == 1 && v121 < 0)
        {
          operator delete(v120);
        }

        if (v118 == 1 && v117 < 0)
        {
          operator delete(v116);
        }

        if (SHIBYTE(v112) < 0)
        {
          operator delete(v111);
        }

        if (SHIBYTE(v110) < 0)
        {
          operator delete(v109);
        }

        if (SHIBYTE(v108) < 0)
        {
          v28 = v107;
          goto LABEL_118;
        }
      }

      else
      {
        v24 = *v3;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          (*(*v4 + 432))(buf, v4);
          v25 = MCC::getIntValue(buf);
          (*(*v4 + 440))(&v104, v4);
          v26 = MNC::getIntegerWidth(&v104);
          (*(*v4 + 440))(&v101, v4);
          v27 = MCC::getIntValue(&v101);
          LODWORD(v142) = 67109632;
          DWORD1(v142) = v25;
          WORD4(v142) = 1024;
          *(&v142 + 10) = v26;
          HIWORD(v142) = 1024;
          LODWORD(v143) = v27;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Using PLMN (%03d-%0.*d) from model", &v142, 0x14u);
          if (v103 < 0)
          {
            operator delete(*(&v101 + 1));
          }

          if (v106 < 0)
          {
            operator delete(*(&v104 + 1));
          }

          if ((buf[31] & 0x80000000) != 0)
          {
            operator delete(*&buf[8]);
          }

          v18 = HIBYTE(v127);
        }

        if (v18 < 0)
        {
          sub_100005F2C(&v82, __src, *(&__src + 1));
        }

        else
        {
          v82 = __src;
          v83 = v127;
        }

        if (SHIBYTE(v129) < 0)
        {
          sub_100005F2C(&v84, __dst, *(&__dst + 1));
        }

        else
        {
          v84 = __dst;
          v85 = v129;
        }

        if (*(a1 + 111) < 0)
        {
          sub_100005F2C(&v86, *(a1 + 88), *(a1 + 96));
        }

        else
        {
          v86 = *(a1 + 88);
          v87 = *(a1 + 104);
        }

        v88 = *(a1 + 112);
        v89 = v5;
        (*(*v4 + 432))(buf, v4);
        MCC::MCC(&v90, buf);
        v93 = 1;
        (*(*v4 + 440))(&v104, v4);
        MCC::MCC(&v94, &v104);
        v97 = 1;
        v100 = 0;
        v98 = 0;
        v99 = 0;
        (*(*v4 + 344))(v4, &v82);
        if (SHIBYTE(v100) < 0)
        {
          operator delete(v98);
        }

        if (v97 == 1 && v96 < 0)
        {
          operator delete(v95);
        }

        if (v93 == 1 && v92 < 0)
        {
          operator delete(v91);
        }

        if (SHIBYTE(v87) < 0)
        {
          operator delete(v86);
        }

        if (SHIBYTE(v85) < 0)
        {
          operator delete(v84);
        }

        if (SHIBYTE(v83) < 0)
        {
          operator delete(v82);
        }

        if (v106 < 0)
        {
          operator delete(*(&v104 + 1));
        }

        if ((buf[31] & 0x80000000) != 0)
        {
          v28 = *&buf[8];
LABEL_118:
          operator delete(v28);
        }
      }

LABEL_119:
      v37 = *(a1 + 224);
      sub_100EBBD10(&v54, (a1 + 40));
      if ((atomic_load_explicit(&qword_101FCACB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCACB0))
      {
        *buf = *off_101F456C8;
        *&buf[16] = @"Type2";
        qword_101FCACC0 = 0;
        unk_101FCACC8 = 0;
        qword_101FCACB8 = 0;
        sub_10005B328(&qword_101FCACB8, buf, &buf[24], 3uLL);
        __cxa_atexit(sub_10041F938, &qword_101FCACB8, &_mh_execute_header);
        __cxa_guard_release(&qword_101FCACB0);
      }

      *&v142 = v2;
      *(&v142 + 1) = v37;
      v38 = HIBYTE(v67);
      if (v67 < 0)
      {
        v38 = *(&v66 + 1);
      }

      if (v38)
      {
        ServiceMap = Registry::getServiceMap(*(v2 + 136));
        v40 = ServiceMap;
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

        std::mutex::lock(ServiceMap);
        *buf = v41;
        v45 = sub_100009510(&v40[1].__m_.__sig, buf);
        if (v45)
        {
          v47 = v45[3];
          v46 = v45[4];
          if (v46)
          {
            atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v40);
            atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v46);
            if (!v47)
            {
LABEL_167:
              sub_100004A34(v46);
              goto LABEL_168;
            }

LABEL_133:
            v134 = 0;
            (*(*v47 + 80))(&v133, v47, v37, 1, @"TypesOfEvo", 0, 0);
            *&v104 = v133;
            if (v133)
            {
              CFRetain(v133);
            }

            *&v101 = 0;
            *buf = 0;
            sub_100010180(buf, &v104);
            if (*buf)
            {
              sub_1000676D4(&v101, buf);
            }

            sub_10001021C(buf);
            v134 = v101;
            *&v101 = 0;
            sub_10001021C(&v101);
            sub_10000A1EC(&v104);
            sub_10000A1EC(&v133);
            if (v134)
            {
              if (SHIBYTE(v67) < 0)
              {
                sub_100005F2C(&v101, v66, *(&v66 + 1));
              }

              else
              {
                v101 = v66;
                v102 = v67;
              }

              if (SHIBYTE(v102) < 0)
              {
                sub_100005F2C(&v104, v101, *(&v101 + 1));
              }

              else
              {
                v104 = v101;
                v105 = v102;
              }

              v135 = 0;
              if (SHIBYTE(v105) < 0)
              {
                sub_100005F2C(buf, v104, *(&v104 + 1));
              }

              else
              {
                *buf = v104;
                *&buf[16] = v105;
              }

              v136 = 0;
              if (ctu::cf::convert_copy())
              {
                v48 = v135;
                v135 = v136;
                *v137 = v48;
                sub_100005978(v137);
              }

              if ((buf[23] & 0x80000000) != 0)
              {
                operator delete(*buf);
              }

              v132 = v135;
              v135 = 0;
              sub_100005978(&v135);
              if (SHIBYTE(v105) < 0)
              {
                operator delete(v104);
              }

              if (SHIBYTE(v102) < 0)
              {
                operator delete(v101);
              }

              if (qword_101FCACC0 == qword_101FCACB8)
              {
LABEL_164:
                LOBYTE(v49) = 0;
              }

              else
              {
                v49 = 0;
                if (((qword_101FCACC0 - qword_101FCACB8) >> 3) <= 1)
                {
                  v50 = 1;
                }

                else
                {
                  v50 = (qword_101FCACC0 - qword_101FCACB8) >> 3;
                }

                while (1)
                {
                  if (v49 >= (qword_101FCACC0 - qword_101FCACB8) >> 3)
                  {
                    sub_1002030E0();
                  }

                  Value = CFDictionaryGetValue(v134, *(qword_101FCACB8 + 8 * v49));
                  v52 = Value;
                  if (Value)
                  {
                    v53 = CFGetTypeID(Value);
                    if (v53 == CFStringGetTypeID())
                    {
                      if (CFEqual(v132, v52))
                      {
                        break;
                      }
                    }
                  }

                  if (v50 == ++v49)
                  {
                    goto LABEL_164;
                  }
                }
              }

              LOBYTE(v104) = v49;
              *buf = 1;
              *&buf[16] = 0u;
              v145 = 0;
              *&buf[8] = v142 + 824;
              sub_100B77900(&buf[16], v142 + 856);
              sub_1014F5A7C(&buf[16], &v142 + 2, &v104);
              sub_1014F5B64(buf);
              sub_100005978(&v132);
            }

            sub_10001021C(&v134);
            if (!v46)
            {
              goto LABEL_168;
            }

            goto LABEL_167;
          }

          std::mutex::unlock(v40);
          if (v47)
          {
            goto LABEL_133;
          }
        }

        else
        {
          std::mutex::unlock(v40);
        }
      }

      else
      {
        LOBYTE(v104) = 0;
        *buf = 1;
        *&buf[16] = 0u;
        v145 = 0;
        *&buf[8] = v2 + 824;
        sub_100B77900(&buf[16], v2 + 856);
        sub_1014F5A7C(&buf[16], &v142 + 2, &v104);
        sub_1014F5B64(buf);
      }

LABEL_168:
      if (SHIBYTE(v67) < 0)
      {
        operator delete(v66);
      }

      if (v65 == 1 && v64 < 0)
      {
        operator delete(v63);
      }

      if (v62 == 1 && v61 < 0)
      {
        operator delete(v60);
      }

      if (v59 < 0)
      {
        operator delete(v58);
      }

      if (v57 < 0)
      {
        operator delete(v56);
      }

      if (v55 < 0)
      {
        operator delete(v54);
      }

      if (SHIBYTE(v127) < 0)
      {
        operator delete(__src);
      }

      if (SHIBYTE(v129) < 0)
      {
        operator delete(__dst);
      }

      goto LABEL_186;
    }

    if (*(a1 + 152) == 1 && *(a1 + 192) == 1)
    {
      v29 = *v3;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = MCC::getIntValue((a1 + 120));
        v31 = MNC::getIntegerWidth((a1 + 160));
        v32 = MCC::getIntValue((a1 + 160));
        *buf = 67109632;
        *&buf[4] = v30;
        *&buf[8] = 1024;
        *&buf[10] = v31;
        *&buf[14] = 1024;
        *&buf[16] = v32;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Using PLMN (%03d-%0.*d) from baseband", buf, 0x14u);
        v18 = HIBYTE(v127);
      }

      if (v18 < 0)
      {
        sub_100005F2C(&v72, __src, *(&__src + 1));
      }

      else
      {
        v72 = __src;
        v73 = v127;
      }

      if (SHIBYTE(v129) < 0)
      {
        sub_100005F2C(&v74, __dst, *(&__dst + 1));
      }

      else
      {
        v74 = __dst;
        v75 = v129;
      }

      if (*(a1 + 111) < 0)
      {
        sub_100005F2C(&v76, *(a1 + 88), *(a1 + 96));
      }

      else
      {
        v76 = *(a1 + 88);
        v77 = *(a1 + 104);
      }

      v78 = *(a1 + 112);
      v79 = v5;
      sub_10002E588(&v80, (a1 + 120));
      sub_10002DEF4(v81, (a1 + 160));
      memset(&v81[40], 0, 24);
      (*(*v4 + 344))(v4, &v72);
      sub_100EBBE8C(&v72);
      goto LABEL_119;
    }

    v142 = 0uLL;
    v143 = 0;
    (*(*v4 + 432))(buf, v4);
    (*(*v4 + 440))(&v104, v4);
    formPLMN(buf, &v104);
    if (v106 < 0)
    {
      operator delete(*(&v104 + 1));
    }

    if ((buf[31] & 0x80000000) != 0)
    {
      operator delete(*&buf[8]);
    }

    v33 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      (*(*v4 + 432))(buf, v4);
      v34 = MCC::getIntValue(buf);
      (*(*v4 + 440))(&v104, v4);
      v35 = MNC::getIntegerWidth(&v104);
      (*(*v4 + 440))(&v101, v4);
      v36 = MCC::getIntValue(&v101);
      *v137 = 67109632;
      *&v137[4] = v34;
      v138 = 1024;
      v139 = v35;
      v140 = 1024;
      v141 = v36;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Using PLMN (%03d-%0.*d) from model", v137, 0x14u);
      if (v103 < 0)
      {
        operator delete(*(&v101 + 1));
      }

      if (v106 < 0)
      {
        operator delete(*(&v104 + 1));
      }

      if ((buf[31] & 0x80000000) != 0)
      {
        operator delete(*&buf[8]);
      }
    }

    if (SHIBYTE(v143) < 0)
    {
      sub_100005F2C(&v70, v142, *(&v142 + 1));
      if (SHIBYTE(v143) < 0)
      {
        sub_100005F2C(&v68, v142, *(&v142 + 1));
LABEL_112:
        (*(*v4 + 352))(v4, &v70, &v68, 5);
        if (SHIBYTE(v69) < 0)
        {
          operator delete(v68);
        }

        if (SHIBYTE(v71) < 0)
        {
          operator delete(v70);
        }

        if (SHIBYTE(v143) < 0)
        {
          v28 = v142;
          goto LABEL_118;
        }

        goto LABEL_119;
      }
    }

    else
    {
      v70 = v142;
      v71 = v143;
    }

    v68 = v142;
    v69 = v143;
    goto LABEL_112;
  }

  v6 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
  {
    v7 = subscriber::asString();
    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not find model %s for operator name", buf, 0xCu);
  }

LABEL_186:
  if (v131)
  {
    sub_100004A34(v131);
  }
}

void sub_1014F43E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_guard_abort(&qword_101FCACB0);
  sub_100EBBE8C(va);
  if (SLOBYTE(STACK[0x397]) < 0)
  {
    operator delete(STACK[0x380]);
  }

  if (SLOBYTE(STACK[0x3B7]) < 0)
  {
    operator delete(STACK[0x3A0]);
  }

  if (STACK[0x3C0])
  {
    sub_100004A34(STACK[0x3C0]);
  }

  _Unwind_Resume(a1);
}

void sub_1014F4804(uint64_t a1)
{
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  if (*(a1 + 192) == 1 && *(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    v2 = *(a1 + 40);

    operator delete(v2);
  }
}

void RegistrationController::handleNetworkReject(uint64_t a1, int a2, int a3, char a4, int a5)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1014F49CC;
  v7[3] = &unk_101F456E0;
  v7[4] = a1;
  v8 = a2;
  v9 = a3;
  v11 = a4;
  v10 = a5;
  v14 = 0;
  v15 = 0;
  sub_100004AA0(&v14, (a1 + 8));
  v6 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C8C;
  block[3] = &unk_101F45848;
  block[5] = v14;
  v13 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v7;
  dispatch_async(v6, block);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_1014F49CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 44);
  v3 = *(a1 + 52);
  v4 = *(a1 + 48);
  v20 = *(a1 + 40);
  v5 = sub_100007DEC((v1 + 8), &v20);
  v7 = *v5;
  v6 = v5[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = (*(*v1[6] + 16))(v1[6], v20);
  (*(*v7 + 312))(v7, v3);
  v9 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = asString();
    *buf = 136315394;
    *&buf[4] = v10;
    *&buf[12] = 1024;
    *&buf[14] = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Registration for domain %s failed with cause %d", buf, 0x12u);
  }

  (*(*v7 + 432))(buf, v7);
  v11 = MCC::valid(buf);
  if (SBYTE7(v23) < 0)
  {
    operator delete(*&buf[8]);
  }

  v18[0] = 0;
  v18[1] = 0;
  v19 = 0;
  (*(*v7 + 432))(buf, v7);
  MCC::getStringValue(v18, buf);
  v12 = v11 ^ 1;
  if (SBYTE7(v23) < 0)
  {
    operator delete(*&buf[8]);
  }

  switch(v2)
  {
    case 3:
      *&buf[8] = 0u;
      v24 = 0u;
      v23 = 0u;
      *buf = v1;
      *&buf[8] = v20;
      buf[12] = v3;
      *&buf[16] = v4;
      if (SHIBYTE(v19) < 0)
      {
        sub_100005F2C(&v23, v18[0], v18[1]);
      }

      else
      {
        v23 = *v18;
        *&v24 = v19;
      }

      BYTE8(v24) = v11 ^ 1;
      if (SBYTE7(v24) < 0)
      {
        sub_100005F2C(__p, v23, *(&v23 + 1));
        v12 = BYTE8(v24);
      }

      else
      {
        *__p = v23;
        v16 = v24;
      }

      v17 = v12;
      v21 = 0;
      operator new();
    case 2:
      *&buf[8] = 0u;
      v24 = 0u;
      v23 = 0u;
      *buf = v1;
      *&buf[8] = v20;
      buf[12] = v3;
      *&buf[16] = v4;
      if (SHIBYTE(v19) < 0)
      {
        sub_100005F2C(&v23, v18[0], v18[1]);
      }

      else
      {
        v23 = *v18;
        *&v24 = v19;
      }

      BYTE8(v24) = v11 ^ 1;
      if (SBYTE7(v24) < 0)
      {
        sub_100005F2C(__p, v23, *(&v23 + 1));
        v12 = BYTE8(v24);
      }

      else
      {
        *__p = v23;
        v16 = v24;
      }

      v17 = v12;
      v21 = 0;
      operator new();
    case 1:
      (*(*v1[43] + 168))(v1[43], v20, v3, v4);
      break;
    default:
      v13 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = asString();
        *buf = 136315394;
        *&buf[4] = v14;
        *&buf[12] = 1024;
        *&buf[14] = v3;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#N Unhandled network reject service domain %s for reject cause code %d", buf, 0x12u);
      }

      break;
  }

  (*(*v1[39] + 112))(v1[39], v20, v3);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_1014F4F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (v39)
  {
    sub_100004A34(v39);
  }

  _Unwind_Resume(exception_object);
}

void RegistrationController::networkTimeUpdate(uint64_t a1, int a2, __int128 *a3)
{
  sub_10002E588(&v5, (a3 + 72));
  sub_10002DEF4(&v6, (a3 + 7));
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 8));
  operator new();
}

void sub_1014F5210(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (*(v28 + 160) == 1 && *(v28 + 159) < 0)
  {
    operator delete(*(v28 + 136));
  }

  if (*(v28 + 120) == 1 && *(v28 + 119) < 0)
  {
    operator delete(*(v28 + 96));
  }

  sub_10004F058(a1);
}

void RegistrationController::ratSelectionComplete(uint64_t a1, int a2, char a3, char a4)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_1014F53A8;
  v6[3] = &unk_101F45700;
  v6[4] = a1;
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = 0;
  v13 = 0;
  sub_100004AA0(&v12, (a1 + 8));
  v5 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C8C;
  block[3] = &unk_101F45848;
  block[5] = v12;
  v11 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v6;
  dispatch_async(v5, block);
  if (v11)
  {
    sub_100004A34(v11);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }
}

void sub_1014F53A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v15 = 0;
  v16 = 0;
  RegistrationController::getModel_sync(v2, *(a1 + 40), &v15);
  v3 = v15;
  if (v15)
  {
    *buf = 0;
    RatSelectionType::RatSelectionType();
    v4 = (*(*v3 + 608))(v3, *buf);
    (*(*v3 + 568))(v3, 0);
    v5 = v2[43];
    v6 = (*(*v3 + 664))(v3);
    v7 = *(a1 + 44);
    v8 = (*(*v3 + 592))(v3);
    (*(*v5 + 112))(v5, v6, v7, v8);
    if (v4)
    {
      v9 = v2[41];
      v10 = *(a1 + 40);
      Selection = RatSelectionType::getSelection(buf);
      PreferredSelection = RatSelectionType::getPreferredSelection(buf);
      (*(*v9 + 136))(v9, v10, Selection, PreferredSelection);
    }
  }

  else
  {
    v13 = v2[5];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = subscriber::asString();
      *buf = 136315138;
      *&buf[4] = v14;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not find model %s for RAT selection complete", buf, 0xCu);
    }
  }

  if (v16)
  {
    sub_100004A34(v16);
  }
}

void sub_1014F5610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void RegistrationController::setSystemSelectionAndOrderPreferenceFailed(uint64_t a1, int a2, char a3)
{
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 0x40000000;
  v15[2] = sub_1014F58B8;
  v15[3] = &unk_101F45720;
  v15[4] = a1;
  v16 = a2;
  v19 = 0;
  v20 = 0;
  sub_100004AA0(&v19, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100013C8C;
  block[3] = &unk_101F45848;
  block[5] = v19;
  v18 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v15;
  dispatch_async(v4, block);
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 136));
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
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
  block[0] = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, block);
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
      goto LABEL_15;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_15:
  if ((*(*v13 + 16))(v13))
  {
    dispatch_get_global_queue(0, 0);
    if ((v14 & 1) == 0)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_1014F5898(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014F58B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v7 = 0;
  RegistrationController::getModel_sync(v2, *(a1 + 40), &v6);
  v3 = v6;
  v4 = *(v2 + 40);
  if (v6)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N Serving System Selection failed", buf, 2u);
    }

    (*(*v3 + 568))(v3, 0);
    (*(*v3 + 584))(v3, 0);
    (*(**(v2 + 344) + 120))(*(v2 + 344), *(a1 + 40));
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = subscriber::asString();
    *buf = 136315138;
    v9 = v5;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Could not find model %s for system selection preference failure", buf, 0xCu);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1014F5A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1014F5A7C(uint64_t *result, int *a2, _BYTE *a3)
{
  v4 = result + 1;
  v5 = result[1];
  if (v5)
  {
    v6 = *a2;
    v7 = result + 1;
    do
    {
      if (*(v5 + 28) >= v6)
      {
        v7 = v5;
      }

      v5 = *(v5 + 8 * (*(v5 + 28) < v6));
    }

    while (v5);
    if (v7 != v4 && v6 >= *(v7 + 7))
    {
      *(v7 + 32) = *a3;
      return result;
    }

    v4 = v7;
  }

  v8 = 0;
  v9 = 0;
  result = sub_1000504CC(result, v4, &v9, &v8, a2);
  if (!*result)
  {
    operator new();
  }

  return result;
}

uint64_t sub_1014F5B64(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2[6] == *(a1 + 32))
    {
      v3 = v2[4];
      if (v3 == v2 + 5)
      {
        goto LABEL_27;
      }

      v4 = *(a1 + 16);
      while (1)
      {
        v5 = *(v3 + 7) == *(v4 + 7) && *(v3 + 32) == *(v4 + 32);
        if (!v5)
        {
          break;
        }

        v6 = v3[1];
        v7 = v3;
        if (v6)
        {
          do
          {
            v3 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v3 = v7[2];
            v5 = *v3 == v7;
            v7 = v3;
          }

          while (!v5);
        }

        v8 = v4[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v4[2];
            v5 = *v9 == v4;
            v4 = v9;
          }

          while (!v5);
        }

        v4 = v9;
        if (v3 == v2 + 5)
        {
          goto LABEL_27;
        }
      }
    }

    v10 = v2 + 5;
    sub_10006DCAC((v2 + 4), v2[5]);
    v2[4] = *(a1 + 16);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v11 = (a1 + 24);
    v2[5] = v12;
    v2[6] = v13;
    if (v13)
    {
      *(v12 + 16) = v10;
      *(a1 + 16) = v11;
      *v11 = 0;
      *(a1 + 32) = 0;
    }

    else
    {
      v2[4] = v10;
    }

    v14 = v2[3];
    if (v14)
    {
      (*(*v14 + 48))(v14, v2 + 4);
    }
  }

LABEL_27:
  sub_10006DCAC(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_1014F5D58(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014F5E30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014F5E7C(uint64_t **a1)
{
  v5 = 0;
  v1 = *a1;
  v2 = **a1;
  v6 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 2), &v5);
  if (v5)
  {
    (*(**(v2 + 344) + 224))(*(v2 + 344), *(v1 + 2), *(v1 + 12));
  }

  else
  {
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = subscriber::asString();
      *buf = 136315138;
      v8 = v4;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Could not find model %s for OOS scan completion status", buf, 0xCu);
    }
  }

  if (v6)
  {
    sub_100004A34(v6);
  }

  operator delete();
}

void sub_1014F5FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

uint64_t sub_1014F5FE4(uint64_t a1)
{
  *a1 = off_101F45888;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_1014F6034(uint64_t a1)
{
  *a1 = off_101F45888;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  operator delete();
}

char *sub_1014F615C(char *result, uint64_t a2)
{
  v3 = result;
  *a2 = off_101F45888;
  v4 = *(result + 8);
  *(a2 + 24) = *(result + 6);
  *(a2 + 8) = v4;
  if (result[55] < 0)
  {
    result = sub_100005F2C((a2 + 32), *(result + 4), *(result + 5));
  }

  else
  {
    v5 = *(result + 2);
    *(a2 + 48) = *(result + 6);
    *(a2 + 32) = v5;
  }

  *(a2 + 56) = v3[56];
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

void sub_1014F61E4(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void sub_1014F61F8(void **__p)
{
  if (*(__p + 55) < 0)
  {
    operator delete(__p[4]);
  }

  operator delete(__p);
}

void sub_1014F623C(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  *v7 = *(a2 + 16);
  *&v7[3] = *(a2 + 19);
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6 = *(a1 + 8);
  if (v5 < 0)
  {
    sub_100005F2C(v8, v4, v3);
  }

  else
  {
    v8[0] = v4;
    v8[1] = v3;
    *v9 = *v7;
    *&v9[3] = *&v7[3];
    v10 = v5;
  }

  if (*(a1 + 55) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    __p = *(a1 + 32);
    v12 = *(a1 + 48);
  }

  v13 = *(a1 + 56);
  v14[0] = 0;
  v14[1] = 0;
  sub_100004AA0(v14, (v6 + 8));
  operator new();
}

void sub_1014F6434(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014F646C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1014F64B8(uint64_t *a1)
{
  v1 = *a1;
  v47 = a1;
  v48 = v1;
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *(v1 + 8);
  v5 = *(v1 + 12);
  v6 = *(v1 + 16);
  v7 = *(v1 + 47);
  if (v7 >= 0)
  {
    v8 = *(v1 + 47);
  }

  else
  {
    v8 = *(v1 + 32);
  }

  v9 = *(v1 + 71);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(v1 + 56);
  }

  if (v8 == v9)
  {
    if (v7 >= 0)
    {
      v11 = (v1 + 24);
    }

    else
    {
      v11 = *(v1 + 24);
    }

    if (v10 >= 0)
    {
      v12 = (v1 + 48);
    }

    else
    {
      v12 = *(v1 + 48);
    }

    v13 = memcmp(v11, v12, v8) == 0;
  }

  else
  {
    v13 = 0;
  }

  (*(*v3 + 160))(v3, v4, v5, v6, v13, *(v1 + 72));
  v14 = &qword_101FCA000;
  if ((byte_101FCACA8 & 1) == 0)
  {
    v15 = *(v1 + 8);
    v16 = *(v1 + 16);
    v17 = *(v1 + 12);
    ServiceMap = Registry::getServiceMap(*(v2 + 136));
    v19 = ServiceMap;
    if (v20 < 0)
    {
      v21 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
      v22 = 5381;
      do
      {
        v20 = v22;
        v23 = *v21++;
        v22 = (33 * v22) ^ v23;
      }

      while (v23);
    }

    std::mutex::lock(ServiceMap);
    *buf = v20;
    v24 = sub_100009510(&v19[1].__m_.__sig, buf);
    if (v24)
    {
      v26 = v24[3];
      v25 = v24[4];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v19);
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v25);
        v27 = 0;
        if (v16)
        {
          goto LABEL_31;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v26 = 0;
    }

    std::mutex::unlock(v19);
    v25 = 0;
    v27 = 1;
    if (v16)
    {
      goto LABEL_31;
    }

LABEL_25:
    if (v17 == 133)
    {
      goto LABEL_26;
    }

LABEL_31:
    if (v16 == 7)
    {
      theArray = 0;
      (*(**(v2 + 248) + 96))(buf);
      sub_10006DD00(&theArray, buf);
      sub_10000A1EC(buf);
      if (theArray)
      {
        v45 = v15;
        v46 = v27;
        Count = CFArrayGetCount(theArray);
        if (Count)
        {
          for (i = 0; Count != i; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
            v33 = ValueAtIndex;
            if (ValueAtIndex && (v34 = CFGetTypeID(ValueAtIndex), v34 == CFNumberGetTypeID()))
            {
              *buf = 0;
              ctu::cf::assign(buf, v33, v35);
              v36 = *buf;
              if (*buf > 0xFEu)
              {
                v38 = *(v2 + 40);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109378;
                  *&buf[4] = v36;
                  *&buf[8] = 2112;
                  *&buf[10] = v33;
                  v39 = v38;
                  v40 = "IgnoreRejectCodesForPNROnLTE key carry incorrect value %d (%@), suppose to be of uint8_t size";
                  v41 = 18;
LABEL_46:
                  _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, v40, buf, v41);
                }
              }

              else if (*buf == v17)
              {
                sub_100010250(&theArray);
                v27 = v46;
                v14 = &qword_101FCA000;
                v15 = v45;
                goto LABEL_26;
              }
            }

            else
            {
              v37 = *(v2 + 40);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                *&buf[4] = i;
                v39 = v37;
                v40 = "IgnoreRejectCodesForPNROnLTE array has incorrect element at index %zu";
                v41 = 12;
                goto LABEL_46;
              }
            }
          }
        }

        sub_100010250(&theArray);
        v27 = v46;
      }

      else
      {
        sub_100010250(&theArray);
        if (v17 == 7 || v17 == 10)
        {
LABEL_26:
          v28 = *(v2 + 40);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = asString();
            *buf = 136315394;
            *&buf[4] = v29;
            *&buf[12] = 1024;
            *&buf[14] = v17;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s: Sending notification for iMessage registration failure, reject code %d", buf, 0x12u);
          }

          if (v26)
          {
            (*(*v26 + 32))(v26, v15, 0);
          }

          *(v14 + 3240) = 1;
LABEL_50:
          if ((v27 & 1) == 0)
          {
            sub_100004A34(v25);
          }

          goto LABEL_52;
        }
      }
    }

    v42 = *(v2 + 40);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = asString();
      *buf = 136315394;
      *&buf[4] = v43;
      *&buf[12] = 1024;
      *&buf[14] = v17;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#N RAT %s not sending phone number registration state notification for cause code %d", buf, 0x12u);
    }

    goto LABEL_50;
  }

LABEL_52:
  sub_1014F6A10(&v48);
  return sub_1000049E0(&v47);
}

void sub_1014F6994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, char a16, ...)
{
  va_start(va2, a16);
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  va_copy(va2, va1);
  v20 = va_arg(va2, void);
  sub_100010250(va2);
  if ((a16 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  sub_1014F6A10(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014F6A10(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 71) < 0)
    {
      operator delete(*(v1 + 48));
    }

    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_1014F6A78(uint64_t a1)
{
  *a1 = off_101F45908;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_1014F6AC8(uint64_t a1)
{
  *a1 = off_101F45908;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  operator delete();
}

char *sub_1014F6BF0(char *result, uint64_t a2)
{
  v3 = result;
  *a2 = off_101F45908;
  v4 = *(result + 8);
  *(a2 + 24) = *(result + 6);
  *(a2 + 8) = v4;
  if (result[55] < 0)
  {
    result = sub_100005F2C((a2 + 32), *(result + 4), *(result + 5));
  }

  else
  {
    v5 = *(result + 2);
    *(a2 + 48) = *(result + 6);
    *(a2 + 32) = v5;
  }

  *(a2 + 56) = v3[56];
  *(a2 + 57) = 0;
  *(a2 + 60) = 0;
  return result;
}

void sub_1014F6C78(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void sub_1014F6C8C(void **__p)
{
  if (*(__p + 55) < 0)
  {
    operator delete(__p[4]);
  }

  operator delete(__p);
}

void sub_1014F6CD0(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  *v7 = *(a2 + 16);
  *&v7[3] = *(a2 + 19);
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6 = *(a1 + 8);
  if (v5 < 0)
  {
    sub_100005F2C(v8, v4, v3);
  }

  else
  {
    v8[0] = v4;
    v8[1] = v3;
    *v9 = *v7;
    *&v9[3] = *&v7[3];
    v10 = v5;
  }

  if (*(a1 + 55) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    __p = *(a1 + 32);
    v12 = *(a1 + 48);
  }

  v13 = *(a1 + 56);
  v14[0] = 0;
  v14[1] = 0;
  sub_100004AA0(v14, (v6 + 8));
  operator new();
}

void sub_1014F6EC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (v20 < 0)
  {
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014F6F00(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1014F6F4C(uint64_t *a1)
{
  v1 = *a1;
  v15 = a1;
  v16 = v1;
  v2 = *v1;
  (*(**(*v1 + 344) + 168))(*(*v1 + 344), *(v1 + 8), *(v1 + 12), *(v1 + 16));
  v3 = *(v2 + 344);
  v4 = *(v1 + 8);
  v5 = *(v1 + 12);
  v6 = *(v1 + 16);
  v7 = *(v1 + 47);
  if (v7 >= 0)
  {
    v8 = *(v1 + 47);
  }

  else
  {
    v8 = *(v1 + 32);
  }

  v9 = *(v1 + 71);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(v1 + 56);
  }

  if (v8 == v9)
  {
    if (v7 >= 0)
    {
      v11 = (v1 + 24);
    }

    else
    {
      v11 = *(v1 + 24);
    }

    if (v10 >= 0)
    {
      v12 = (v1 + 48);
    }

    else
    {
      v12 = *(v1 + 48);
    }

    v13 = memcmp(v11, v12, v8) == 0;
  }

  else
  {
    v13 = 0;
  }

  (*(*v3 + 160))(v3, v4, v5, v6, v13, *(v1 + 72));
  sub_1014F6A10(&v16);
  return sub_1000049E0(&v15);
}

void sub_1014F707C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1014F6A10(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014F7098(uint64_t *a1)
{
  v1 = *a1;
  v56 = a1;
  v57 = v1;
  v2 = *v1;
  v72 = 0;
  v73 = 0;
  RegistrationController::getModel_sync(v2, *(v1 + 8), &v72);
  v3 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
  v4 = v3;
  if (v72)
  {
    if ((capabilities::ct::supportsEmptyNITZIndication(v3) & 1) == 0 && *(v1 + 80) == 1)
    {
      v5 = *v4;
      if (!os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_78;
      }

      *buf = 0;
      v6 = "#N Ignoring empty NITZ indication";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
      goto LABEL_78;
    }

    ServiceMap = Registry::getServiceMap(*(v2 + 136));
    v8 = ServiceMap;
    v10 = v9;
    if (v9 < 0)
    {
      v11 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
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
    *buf = v10;
    v14 = sub_100009510(&v8[1].__m_.__sig, buf);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v8);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v8);
    v15 = 0;
    v17 = 1;
LABEL_16:
    *(v1 + 16) = (*(*v16 + 88))(v16);
    if ((v17 & 1) == 0)
    {
      sub_100004A34(v15);
    }

    v19 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(v1 + 16);
      *buf = 67109120;
      *&buf[4] = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Processing Network Time update, timestamped with %d", buf, 8u);
    }

    if (*(v1 + 84) == 4)
    {
      v5 = *v4;
      if (!os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_78;
      }

      *buf = 0;
      v6 = "#N RAT is set to EVDO, cannot process Time from EVDO source";
      goto LABEL_23;
    }

    (*(**(v2 + 120) + 32))(*(v2 + 120), *(v1 + 48));
    (*(**(v2 + 120) + 40))(*(v2 + 120), *(v1 + 72));
    *v70 = 0u;
    v71 = 0u;
    if (*(v1 + 120) == 1)
    {
      MCC::MCC(v70, (v1 + 88));
    }

    else
    {
      (*(*v72 + 640))(v70);
    }

    *v68 = 0u;
    v69 = 0u;
    if (*(v1 + 160) == 1)
    {
      MCC::MCC(v68, (v1 + 128));
    }

    else
    {
      (*(*v72 + 648))(v68);
    }

    if (*(v1 + 44))
    {
      v21 = *(v2 + 120);
      v22 = *(v1 + 24);
      v23 = *(v1 + 40);
      v77 = *(v1 + 72);
      v24 = *(v1 + 56);
      v75 = v23;
      v76 = v24;
      *buf = v22;
      (*(*v21 + 24))(v21, buf);
      v25 = Registry::getServiceMap(*(v2 + 136));
      v26 = v25;
      if (v9 < 0)
      {
        v27 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
        v28 = 5381;
        do
        {
          v9 = v28;
          v29 = *v27++;
          v28 = (33 * v28) ^ v29;
        }

        while (v29);
      }

      std::mutex::lock(v25);
      *buf = v9;
      v30 = sub_100009510(&v26[1].__m_.__sig, buf);
      if (v30)
      {
        v32 = v30[3];
        v31 = v30[4];
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v26);
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v31);
          v33 = 0;
          goto LABEL_46;
        }
      }

      else
      {
        v32 = 0;
      }

      std::mutex::unlock(v26);
      v31 = 0;
      v33 = 1;
LABEL_46:
      v43 = *v4;
      if (v32)
      {
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I Received a valid network time, sending it to time handler", buf, 2u);
        }

        v44 = *(v1 + 8);
        v45 = *(v1 + 24);
        v46 = *(v1 + 56);
        v75 = *(v1 + 40);
        v76 = v46;
        v77 = *(v1 + 72);
        *buf = v45;
        v47 = *(v1 + 16);
        MCC::MCC(v61, v70);
        MCC::MCC(v65, v68);
        (*(*v32 + 48))(v32, v44, buf, v47, v61, v65, *(v1 + 84), 1, v56, v57);
        if (v67 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v62) < 0)
        {
          operator delete(*&v61[8]);
          if (v33)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        }
      }

      else if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Could not get TimeHandler for sending network time update", buf, 2u);
        if (v33)
        {
          goto LABEL_57;
        }

        goto LABEL_56;
      }

      if (v33)
      {
LABEL_57:
        v48 = *(v2 + 312);
        v49 = *(v1 + 40);
        *buf = *(v1 + 24);
        v75 = v49;
        v76 = *(v1 + 56);
        v77 = *(v1 + 72);
        (*(*v48 + 120))(v48, buf);
LABEL_74:
        if (SHIBYTE(v69) < 0)
        {
          operator delete(v68[1]);
        }

        if (SHIBYTE(v71) < 0)
        {
          operator delete(v70[1]);
        }

        goto LABEL_78;
      }

LABEL_56:
      sub_100004A34(v31);
      goto LABEL_57;
    }

    v77 = 0xFFFFFFFFLL;
    v75 = 0u;
    v76 = 0u;
    *buf = 0u;
    if (!(*(**(v2 + 120) + 48))(*(v2 + 120), buf))
    {
      v50 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I Time value is not cached, not sending the time value", v61, 2u);
      }

      goto LABEL_74;
    }

    v34 = Registry::getServiceMap(*(v2 + 136));
    v35 = v34;
    if (v9 < 0)
    {
      v36 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
      v37 = 5381;
      do
      {
        v9 = v37;
        v38 = *v36++;
        v37 = (33 * v37) ^ v38;
      }

      while (v38);
    }

    std::mutex::lock(v34);
    *v61 = v9;
    v39 = sub_100009510(&v35[1].__m_.__sig, v61);
    if (v39)
    {
      v41 = v39[3];
      v40 = v39[4];
      if (v40)
      {
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v35);
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v40);
        v42 = 0;
LABEL_62:
        v51 = *v4;
        v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
        if (v41)
        {
          if (v52)
          {
            *v61 = 0;
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I Retrieving the time saved time value and sending the update", v61, 2u);
          }

          v53 = *(v1 + 8);
          v62 = v75;
          v63 = v76;
          v64 = v77;
          *v61 = *buf;
          v54 = *(v1 + 16);
          MCC::MCC(v65, v70);
          MCC::MCC(v58, v68);
          (*(*v41 + 56))(v41, v53, v61, v54, v65, v58, *(v1 + 84), 1, v56, v57);
          if (v60 < 0)
          {
            operator delete(v59);
          }

          if (v67 < 0)
          {
            operator delete(__p);
          }
        }

        else if (v52)
        {
          *v61 = 0;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#N Could not get TimeHandler to send network time zone update", v61, 2u);
        }

        if ((v42 & 1) == 0)
        {
          sub_100004A34(v40);
        }

        (*(**(v2 + 312) + 128))(*(v2 + 312), DWORD2(v75), v77 != 0);
        goto LABEL_74;
      }
    }

    else
    {
      v41 = 0;
    }

    std::mutex::unlock(v35);
    v40 = 0;
    v42 = 1;
    goto LABEL_62;
  }

  v18 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not find model for network time update", buf, 2u);
  }

LABEL_78:
  if (v73)
  {
    sub_100004A34(v73);
  }

  sub_1014F7A58(&v57);
  return sub_1000049E0(&v56);
}

void sub_1014F794C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if ((v50 & 1) == 0)
  {
    sub_100004A34(v49);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  v53 = *(v51 - 152);
  if (v53)
  {
    sub_100004A34(v53);
  }

  sub_1014F7A58(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014F7A58(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    if (*(v1 + 160) == 1 && *(v1 + 159) < 0)
    {
      operator delete(*(v1 + 136));
    }

    if (*(v1 + 120) == 1 && *(v1 + 119) < 0)
    {
      operator delete(*(v1 + 96));
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1014F7AD8(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return a1;
}

uint64_t *sub_1014F7B2C(unsigned __int8 *a1)
{
  v11 = a1;
  BYTE5(v18[2]) = 0;
  HIWORD(v18[2]) = 5120;
  strcpy(v18, "RAT selection failed");
  ratSelectionAsStr(a1[16]);
  v2 = std::string::insert(&v12, 0, "Changing the RAT to ", 0x14uLL);
  v3 = *&v2->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v3;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  v4 = std::string::append(&v13, " failed\n\n", 9uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v14, "Please file a radar against Telephony | iOS\n", 0x2CuLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v15, "This is shown on internal and carrier installations only", 0x38uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v17 = v8->__r_.__value_.__r.__words[2];
  v16 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  (*(**a1 + 24))(*a1, v18, &v16);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16);
  }

  if (SHIBYTE(v18[2]) < 0)
  {
    operator delete(v18[0]);
  }

  return sub_1014F7AD8(&v11);
}

void sub_1014F7CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 57) < 0)
  {
    operator delete(*(v35 - 80));
  }

  if (*(v35 - 25) < 0)
  {
    operator delete(*(v35 - 48));
  }

  sub_1014F7AD8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1014F7D6C(uint64_t a1, uint64_t a2, const char *a3)
{
  *(a1 + 16) = 0;
  *a1 = off_101F45988;
  *(a1 + 8) = a2;
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = "";
  }

  v5 = strlen(v4);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    operator new();
  }

  v7 = (a1 + 24);
  *(a1 + 47) = v5;
  if (v5)
  {
    memmove(v7, v4, v5);
  }

  *(v7 + v6) = 0;
  return a1;
}

uint64_t sub_1014F7E50(std::string *a1, char *a2)
{
  if (a2)
  {
    sub_100016890(a1 + 1, a2);
  }

  return 1;
}

BOOL sub_1014F7EA0(uint64_t a1, std::string *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = sub_101541040(a3);
  if (v6 == -1)
  {
    return 0;
  }

  v7 = v6;
  v8 = sub_101541040(v4);
  if (v8 == -1)
  {
    return 0;
  }

  v9 = v8;
  v10 = *(a1 + 23);
  v11 = v10 >= 0 ? a1 : *a1;
  v12 = v10 >= 0 ? *(a1 + 23) : *(a1 + 8);
  v13 = CFStringCreateWithBytes(0, v11, v12, v7, 0);
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  Length = CFStringGetLength(v13);
  maxBufLen = 0;
  v19.location = 0;
  v19.length = Length;
  CFStringGetBytes(v14, v19, v9, 0x3Fu, 0, 0, 0, &maxBufLen);
  v16 = maxBufLen != 0;
  if (maxBufLen)
  {
    operator new[]();
  }

  CFRelease(v14);
  return v16;
}

void *sub_1014F8004(uint64_t a1, uint64_t a2, const char *a3)
{
  result = sub_1014F7D6C(a1, a2, a3);
  *result = off_101F45A00;
  return result;
}

uint64_t sub_1014F81A0(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 24);
  if (*(a1 + 47) < 0)
  {
    v3 = *v3;
  }

  sub_101135E6C(a2, v3);
  return 1;
}

uint64_t sub_1014F8338(std::string *a1, uint64_t a2)
{
  v2 = *(a2 + 20);
  if (v2 < *(a2 + 16))
  {
    *(a2 + 20) = v2 + 1;
  }

  return sub_1015664B4(a2, a1 + 1, 0xFFFFFFFF);
}

uint64_t sub_1014F8360(uint64_t a1, uint64_t a2)
{
  std::string::push_back((a2 + 8), 34);
  v4 = (a1 + 24);
  if (*(a1 + 47) < 0)
  {
    v4 = *v4;
  }

  sub_101135C3C(a2, v4);
  return 1;
}

uint64_t sub_1014F83B8(uint64_t a1, uint64_t a2, const char *a3)
{
  result = sub_1014F7D6C(a1, a2, a3);
  *result = off_101F45AF0;
  *(result + 48) = 3;
  if (a3)
  {
    LOBYTE(v5) = *a3;
    if (*a3)
    {
      v6 = 1;
      while ((v5 & 0x80) == 0)
      {
        v5 = a3[v6++];
        if (!v5)
        {
          return result;
        }
      }

      *(result + 48) = 106;
    }
  }

  return result;
}

uint64_t sub_1014F85FC(uint64_t a1, char *a2)
{
  *(a1 + 48) = 3;
  LOBYTE(v2) = *a2;
  if (*a2)
  {
    v3 = 1;
    while ((v2 & 0x80) == 0)
    {
      v2 = a2[v3++];
      if (!v2)
      {
        goto LABEL_7;
      }
    }

    *(a1 + 48) = 106;
  }

LABEL_7:
  sub_100016890((a1 + 24), a2);
  return 1;
}

void *sub_1014F8658(uint64_t a1, uint64_t a2, const char *a3)
{
  result = sub_1014F83B8(a1, a2, a3);
  *result = off_101F45B68;
  return result;
}

void *sub_1014F87FC(uint64_t a1, uint64_t a2, const char *a3)
{
  result = sub_1014F83B8(a1, a2, a3);
  *result = off_101F45BE0;
  return result;
}

uint64_t sub_1014F8830(std::string *a1, uint64_t a2)
{
  *buf = 0;
  v4 = sub_10156676C(a2, a1 + 1, &a1[2], buf);
  if (qword_101FCBD58 != -1)
  {
    dispatch_once(&qword_101FCBD58, &stru_101F54370);
  }

  v5 = qword_101FCBD50;
  v6 = os_log_type_enabled(qword_101FCBD50, OS_LOG_TYPE_ERROR);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "About to decode the subject private -> public", buf, 2u);
    }

    v7 = *(a2 + 36);
    Registry::get(v6);
    *buf = v9;
    sub_100839978(v7, buf, a1 + 1, 1);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Could not decode subject header value!", buf, 2u);
  }

  return v4;
}

void sub_1014F896C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014F8990(uint64_t a1, unsigned int *a2)
{
  memset(&__p, 0, sizeof(__p));
  if (*(a1 + 47) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    __p = *(a1 + 24);
  }

  if (qword_101FCBD58 != -1)
  {
    dispatch_once(&qword_101FCBD58, &stru_101F54370);
  }

  v4 = qword_101FCBD50;
  v5 = os_log_type_enabled(qword_101FCBD50, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "About to encode the subject public -> private", buf, 2u);
  }

  v6 = *a2;
  Registry::get(v5);
  *buf = v8;
  sub_100839978(v6, buf, &__p, 0);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  sub_101135EC0(a2, &__p, *(a1 + 48));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_1014F8AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014F8C70(uint64_t a1, uint64_t a2, int a3, const char *a4)
{
  result = sub_1014F83B8(a1, a2, a4);
  *result = off_101F45C58;
  *(result + 52) = a3;
  return result;
}

uint64_t sub_1014F8E24(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = sub_101566604(a2, &v5);
  if (result)
  {
    result = sub_101566724(a2, (a1 + 52));
    if (result)
    {
      v6 = 0;
      return sub_10156676C(a2, (a1 + 24), (a1 + 48), &v6);
    }
  }

  return result;
}

uint64_t sub_1014F8E8C(uint64_t a1, uint64_t a2)
{
  *__p = 0u;
  v9 = 0u;
  LODWORD(__p[0]) = *a2;
  v10 = 0;
  __p[1] = 0;
  v9 = 0uLL;
  sub_101135D4C(__p, *(a1 + 52));
  sub_101135EC0(__p, (a1 + 24), *(a1 + 48));
  if (v9 >= 0)
  {
    v4 = HIBYTE(v9);
  }

  else
  {
    v4 = v9;
  }

  sub_101135DF8(a2, v4);
  if (v9 >= 0)
  {
    v5 = &__p[1];
  }

  else
  {
    v5 = __p[1];
  }

  if (v9 >= 0)
  {
    v6 = HIBYTE(v9);
  }

  else
  {
    v6 = v9;
  }

  std::string::append((a2 + 8), v5, v6);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[1]);
  }

  return 1;
}

void sub_1014F8F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014F8F84(uint64_t a1)
{
  *a1 = off_101F45988;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_1014F8FD4(uint64_t a1)
{
  *a1 = off_101F45988;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

uint64_t sub_1014F9044(uint64_t a1)
{
  *a1 = off_101F45988;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_1014F9094(uint64_t a1)
{
  *a1 = off_101F45988;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

uint64_t sub_1014F9104(uint64_t a1)
{
  *a1 = off_101F45988;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_1014F9154(uint64_t a1)
{
  *a1 = off_101F45988;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

uint64_t sub_1014F91C4(uint64_t a1)
{
  *a1 = off_101F45988;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_1014F9214(uint64_t a1)
{
  *a1 = off_101F45988;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

uint64_t sub_1014F9284(uint64_t a1)
{
  *a1 = off_101F45988;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_1014F92D4(uint64_t a1)
{
  *a1 = off_101F45988;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

uint64_t sub_1014F9344(uint64_t a1)
{
  *a1 = off_101F45988;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_1014F9394(uint64_t a1)
{
  *a1 = off_101F45988;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

void sub_1014F9404(uint64_t a1)
{
  sub_1008C6464(v1, a1);
  v2 = 0;
  operator new();
}

void sub_1014F94C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_100D68D94(va1);
  sub_1008A155C(va);
  _Unwind_Resume(a1);
}

void *sub_1014F94E4(void *a1)
{
  *a1 = off_101F45D78;
  sub_1008A155C((a1 + 1));
  return a1;
}

void sub_1014F9528(void *a1)
{
  *a1 = off_101F45D78;
  sub_1008A155C((a1 + 1));

  operator delete();
}

void sub_1014F9638(void *a1)
{
  sub_1008A155C(a1 + 8);

  operator delete(a1);
}

void sub_1014F9674(uint64_t a1, id *a2)
{
  v3 = *a2;
  v4 = v3;
  *__p = 0u;
  v15 = 0u;
  if (v3)
  {
    v5 = [v3 localizedDescription];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 UTF8String];
    }

    else
    {
      v7 = "Unspecified error";
    }

    v8 = strlen(v7);
    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v12) = v8;
    if (v8)
    {
      memmove(v11, v7, v8);
    }

    *(v11 + v9) = 0;
    if (BYTE8(v15) == 1)
    {
      if (SBYTE7(v15) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = *v11;
      *&v15 = v12;
    }

    else
    {
      *__p = *v11;
      *&v15 = v12;
      BYTE8(v15) = 1;
    }
  }

  sub_10006F264(v11, __p);
  v10 = *(a1 + 32);
  if (!v10)
  {
    sub_100022DB4();
  }

  (*(*v10 + 48))(v10, v11);
  if (v13 == 1 && SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  if (BYTE8(v15) == 1 && SBYTE7(v15) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1014F984C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1014F98AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const __CFString *sub_1014F9C70(int a1)
{
  if ((a1 - 1) > 7)
  {
    return &stru_101F6AFB8;
  }

  else
  {
    return off_101F45F50[a1 - 1];
  }
}

void sub_1014FA5EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v9 = v8;
  if ((v9 & 1) == 0)
  {
    sub_100004A34(v7);
  }

  sub_100005978(va);

  _Unwind_Resume(a1);
}

void sub_1014FC498(Registry **a1@<X0>, std::__shared_weak_count_vtbl **a2@<X8>)
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
  v13.var0 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v13);
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
      if (!v11)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
  if (!v11)
  {
    goto LABEL_13;
  }

LABEL_10:
  if ((GestaltUtilityInterface::isIPad(v11) & 1) != 0 || GestaltUtilityInterface::isIPhone(v11))
  {
    operator new();
  }

LABEL_13:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_1014FC6F0(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1014FC7AC(uint64_t a1)
{
  FollowUpControllerInterface::~FollowUpControllerInterface(a1);
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));
  return a1;
}

void sub_1014FC7F8(uint64_t a1)
{
  sub_1014FC7AC(a1);

  operator delete();
}

uint64_t sub_1014FC830(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v4 = a4;
  if (!a4)
  {
    v9[0] = 0;
    v9[1] = 0;
    sub_1014FC8BC(a1, a2, v9, &v10);
    v4 = v10;
    sub_100005978(&v10);
  }

  result = sub_1014FCA28(a1, a2, v4);
  if ((result & 1) == 0)
  {
    return [*(a1 + 32) showFollowUp:a2 userInfo:a3 withUniqueIdentifier:v4];
  }

  return result;
}

void sub_1014FC8BC(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, void *a4@<X8>)
{
  if (a2 == 7)
  {
    v5 = [NSString stringWithFormat:@"%@.%@", @"com.apple.coretelephony.cellularplan-default.setup-required", @"no.sim"];

    sub_100060E4C(a4, v5);
  }

  else if (*a3)
  {
    v8 = sub_1014F9C70(a2);
    v6 = [NSString stringWithFormat:@"%@.%u", v8, subscriber::simSlotAsInstance()];
    sub_100060E4C(a4, v6);
  }

  else
  {
    v7 = sub_100032AC8((a1 + 8));
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I No unique identifier defined", buf, 2u);
    }

    *a4 = 0;
  }
}

uint64_t sub_1014FCA28(uint64_t a1, int a2, uint64_t a3)
{
  context = objc_autoreleasePoolPush();
  v4 = [*(a1 + 32) getPendingFollowUpItems];
  v24 = v4;
  if (v4)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v6)
    {
      v7 = *v27;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v27 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v26 + 1) + 8 * i);
          if (v9)
          {
            v10 = [*(*(&v26 + 1) + 8 * i) extensionIdentifier];
            v11 = [v10 isEqualToString:@"com.apple.CoreTelephony.CTFollowUpExtension"];

            if (v11)
            {
              v12 = [v9 categoryIdentifier];
              v13 = sub_1014F9C70(a2);
              v14 = [v12 isEqualToString:v13];

              if (v14)
              {
                v15 = [v9 uniqueIdentifier];
                v16 = v15 == 0;

                if (!v16)
                {
                  v17 = [v9 uniqueIdentifier];
                  v18 = [v17 isEqualToString:a3];

                  if (v18)
                  {
                    v20 = sub_100032AC8((a1 + 8));
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v31 = v9;
                      v32 = 2112;
                      v33 = a3;
                      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Same followup item exists: %@ with uniqueIdentifier: %@", buf, 0x16u);
                    }

                    v19 = 1;
                    goto LABEL_19;
                  }
                }
              }
            }
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v26 objects:v34 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v19 = 0;
LABEL_19:
  }

  else
  {
    v19 = 0;
  }

  objc_autoreleasePoolPop(context);
  return v19;
}

void sub_1014FCCEC(uint64_t a1, int a2, uint64_t a3)
{
  v5 = sub_1014F9C70(a2);
  v6 = [NSString stringWithFormat:@"%@.%@", v5, a3];

  [*(a1 + 32) clearFollowUpWithUID:v6];
}

const void **sub_1014FCD94@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  *v25 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v5 = *v25;
    *v25 = Mutable;
    *&v29 = v5;
    sub_1000296E0(&v29);
  }

  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v23 = *(a1 + 16);
  }

  if (SHIBYTE(v23) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v28 = v23;
  }

  v26 = 0;
  if (SHIBYTE(v28) < 0)
  {
    sub_100005F2C(&v29, __dst, *(&__dst + 1));
  }

  else
  {
    v29 = __dst;
    v30 = v28;
  }

  v31 = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = v26;
    v26 = v31;
    v32 = v6;
    sub_100005978(&v32);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  v24 = v26;
  v26 = 0;
  sub_100005978(&v26);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst);
  }

  sub_1001768B8(*v25, @"ServerURL", v24);
  sub_100005978(&v24);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a1 + 47) < 0)
  {
    v7 = *(a1 + 32);
    if (!v7)
    {
      goto LABEL_39;
    }

    sub_100005F2C(v20, *(a1 + 24), v7);
  }

  else
  {
    if (!*(a1 + 47))
    {
      goto LABEL_39;
    }

    *v20 = *(a1 + 24);
    v21 = *(a1 + 40);
  }

  if (SHIBYTE(v21) < 0)
  {
    sub_100005F2C(&__dst, v20[0], v20[1]);
  }

  else
  {
    __dst = *v20;
    v28 = v21;
  }

  v26 = 0;
  if (SHIBYTE(v28) < 0)
  {
    sub_100005F2C(&v29, __dst, *(&__dst + 1));
  }

  else
  {
    v29 = __dst;
    v30 = v28;
  }

  v31 = 0;
  if (ctu::cf::convert_copy())
  {
    v8 = v26;
    v26 = v31;
    v32 = v8;
    sub_100005978(&v32);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  v24 = v26;
  v26 = 0;
  sub_100005978(&v26);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst);
  }

  sub_1001768B8(*v25, @"MatchingID", v24);
  sub_100005978(&v24);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }

LABEL_39:
  if (*(a1 + 71) < 0)
  {
    v9 = *(a1 + 56);
    if (!v9)
    {
      goto LABEL_58;
    }

    sub_100005F2C(v18, *(a1 + 48), v9);
  }

  else
  {
    if (!*(a1 + 71))
    {
      goto LABEL_58;
    }

    *v18 = *(a1 + 48);
    v19 = *(a1 + 64);
  }

  if (SHIBYTE(v19) < 0)
  {
    sub_100005F2C(&__dst, v18[0], v18[1]);
  }

  else
  {
    __dst = *v18;
    v28 = v19;
  }

  v26 = 0;
  if (SHIBYTE(v28) < 0)
  {
    sub_100005F2C(&v29, __dst, *(&__dst + 1));
  }

  else
  {
    v29 = __dst;
    v30 = v28;
  }

  v31 = 0;
  if (ctu::cf::convert_copy())
  {
    v10 = v26;
    v26 = v31;
    v32 = v10;
    sub_100005978(&v32);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  v24 = v26;
  v26 = 0;
  sub_100005978(&v26);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst);
  }

  sub_1001768B8(*v25, @"CarrierName", v24);
  sub_100005978(&v24);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

LABEL_58:
  if (*(a1 + 95) < 0)
  {
    v11 = *(a1 + 80);
    if (!v11)
    {
      goto LABEL_77;
    }

    sub_100005F2C(v16, *(a1 + 72), v11);
  }

  else
  {
    if (!*(a1 + 95))
    {
      goto LABEL_77;
    }

    *v16 = *(a1 + 72);
    v17 = *(a1 + 88);
  }

  if (SHIBYTE(v17) < 0)
  {
    sub_100005F2C(&__dst, v16[0], v16[1]);
  }

  else
  {
    __dst = *v16;
    v28 = v17;
  }

  v26 = 0;
  if (SHIBYTE(v28) < 0)
  {
    sub_100005F2C(&v29, __dst, *(&__dst + 1));
  }

  else
  {
    v29 = __dst;
    v30 = v28;
  }

  v31 = 0;
  if (ctu::cf::convert_copy())
  {
    v12 = v26;
    v26 = v31;
    v32 = v12;
    sub_100005978(&v32);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  v13 = v26;
  v24 = v26;
  v26 = 0;
  sub_100005978(&v26);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(__dst);
  }

  sub_1001768B8(*v25, @"IccidHash", v13);
  sub_100005978(&v24);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[0]);
  }

LABEL_77:
  v14 = *(a1 + 119);
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a1 + 104);
  }

  if (v14)
  {
    sub_1002E0298(*v25, @"Cancel", kCFBooleanFalse);
  }

  sub_100010180(a2, v25);
  return sub_1000296E0(v25);
}

void sub_1014FD2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, int a37, const void *a38, const void *a39)
{
  sub_100005978(&a39);
  if (*(v39 - 105) < 0)
  {
    operator delete(*(v39 - 128));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0(&a38);
  _Unwind_Resume(a1);
}

const void **sub_1014FD474@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  *v20 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v9 = *v20;
    *v20 = Mutable;
    *&v24 = v9;
    sub_1000296E0(&v24);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v18 = *(a2 + 16);
  }

  if (SHIBYTE(v18) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v23 = v18;
  }

  v21 = 0;
  if (SHIBYTE(v23) < 0)
  {
    sub_100005F2C(&v24, __p[0], __p[1]);
  }

  else
  {
    v24 = *__p;
    v25 = v23;
  }

  v26 = 0;
  if (ctu::cf::convert_copy())
  {
    v10 = v21;
    v21 = v26;
    v27 = v10;
    sub_100005978(&v27);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24);
  }

  v19 = v21;
  v21 = 0;
  sub_100005978(&v21);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1001768B8(*v20, @"ServerURL", v19);
  sub_100005978(&v19);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst[0]);
  }

  if (*(a1 + 23) < 0)
  {
    v11 = *(a1 + 8);
    if (!v11)
    {
      goto LABEL_39;
    }

    sub_100005F2C(v15, *a1, v11);
  }

  else
  {
    if (!*(a1 + 23))
    {
      goto LABEL_39;
    }

    *v15 = *a1;
    v16 = *(a1 + 16);
  }

  if (SHIBYTE(v16) < 0)
  {
    sub_100005F2C(__p, v15[0], v15[1]);
  }

  else
  {
    *__p = *v15;
    v23 = v16;
  }

  v21 = 0;
  if (SHIBYTE(v23) < 0)
  {
    sub_100005F2C(&v24, __p[0], __p[1]);
  }

  else
  {
    v24 = *__p;
    v25 = v23;
  }

  v26 = 0;
  if (ctu::cf::convert_copy())
  {
    v12 = v21;
    v21 = v26;
    v27 = v12;
    sub_100005978(&v27);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24);
  }

  v13 = v21;
  v19 = v21;
  v21 = 0;
  sub_100005978(&v21);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1001768B8(*v20, @"CarrierName", v13);
  sub_100005978(&v19);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }

LABEL_39:
  if (*a3)
  {
    sub_1002972A4(*v20, @"PostData", *a3);
  }

  sub_100010180(a4, v20);
  return sub_1000296E0(v20);
}

void sub_1014FD764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, int a23, const void *a24, const void *a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100005978(&a25);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_1000296E0(&a24);
  _Unwind_Resume(a1);
}

void sub_1014FD840(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  context = objc_autoreleasePoolPush();
  v6 = [*(a1 + 32) getPendingFollowUpItems];
  v24 = v6;
  if (v6)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = *v27;
      while (2)
      {
        v10 = 0;
        do
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v26 + 1) + 8 * v10);
          if (v11)
          {
            v12 = [*(*(&v26 + 1) + 8 * v10) extensionIdentifier];
            v13 = [v12 isEqualToString:@"com.apple.CoreTelephony.CTFollowUpExtension"];

            if (v13)
            {
              v14 = [v11 categoryIdentifier];
              v15 = sub_1014F9C70(a2);
              v16 = [v14 isEqualToString:v15];

              if (v16)
              {
                v17 = [v11 uniqueIdentifier];
                v18 = v17 == 0;

                if (!v18)
                {
                  v19 = [v11 uniqueIdentifier];
                  v20 = [v19 isEqualToString:a3];

                  if (v20)
                  {
                    v21 = [v11 userInfo];
                    sub_1000101E4(a4, v21);

                    goto LABEL_17;
                  }
                }
              }
            }
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }
  }

  *a4 = 0;
LABEL_17:

  objc_autoreleasePoolPop(context);
}

void sub_1014FDAA0(uint64_t a1@<X0>, int a2@<W1>, uint64_t **a3@<X8>)
{
  context = objc_autoreleasePoolPush();
  v38 = a3;
  a3[2] = 0;
  a3[1] = 0;
  *a3 = (a3 + 1);
  v5 = [*(a1 + 32) getPendingFollowUpItems];
  if (v5)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v36 = v5;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v6)
    {
      v7 = *v49;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v49 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v48 + 1) + 8 * i);
          if (v9)
          {
            v10 = [*(*(&v48 + 1) + 8 * i) extensionIdentifier];
            v11 = [v10 isEqualToString:@"com.apple.CoreTelephony.CTFollowUpExtension"];

            if (v11)
            {
              v12 = [v9 categoryIdentifier];
              v13 = sub_1014F9C70(a2);
              v14 = [v12 isEqualToString:v13];

              if (v14)
              {
                v15 = [v9 uniqueIdentifier];
                v16 = v15 == 0;

                if (v16)
                {
                  v22 = sub_100032AC8((a1 + 8));
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    LOWORD(__dst[0]) = 0;
                    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "No UID exists", __dst, 2u);
                  }
                }

                else
                {
                  __dst[0] = 0;
                  __dst[1] = 0;
                  v47 = 0;
                  v17 = [v9 uniqueIdentifier];
                  v18 = v17;
                  v19 = [v17 UTF8String];
                  v20 = strlen(v19);
                  if (v20 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    sub_1000A2378();
                  }

                  v21 = v20;
                  if (v20 >= 0x17)
                  {
                    operator new();
                  }

                  HIBYTE(v47) = v20;
                  if (v20)
                  {
                    memmove(__dst, v19, v20);
                  }

                  *(__dst + v21) = 0;

                  v23 = [v9 actions];
                  v24 = v23 == 0;

                  if (v24)
                  {
                    v25 = sub_100032AC8((a1 + 8));
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 0;
                      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "No user actions available", buf, 2u);
                    }
                  }

                  else
                  {
                    v44 = 0u;
                    v45 = 0u;
                    v42 = 0u;
                    v43 = 0u;
                    v25 = [v9 actions];
                    v26 = [v25 countByEnumeratingWithState:&v42 objects:v54 count:16];
                    if (v26)
                    {
                      v27 = *v43;
                      while (2)
                      {
                        for (j = 0; j != v26; j = j + 1)
                        {
                          if (*v43 != v27)
                          {
                            objc_enumerationMutation(v25);
                          }

                          v29 = *(*(&v42 + 1) + 8 * j);
                          v30 = [v29 userInfo];
                          v31 = v30 == 0;

                          if (!v31)
                          {
                            v41 = 0;
                            v33 = [v29 userInfo];
                            v34 = v33;
                            v41 = v33;
                            if (v33)
                            {
                              CFRetain(v33);
                            }

                            *buf = __dst;
                            v35 = sub_1002965F8(v38, __dst, &unk_101802C98, buf, &v52);
                            sub_1000676D4(v35 + 7, &v41);
                            sub_10001021C(&v41);
                            goto LABEL_37;
                          }

                          v32 = sub_100032AC8((a1 + 8));
                          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 0;
                            _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "No user info available", buf, 2u);
                          }
                        }

                        v26 = [v25 countByEnumeratingWithState:&v42 objects:v54 count:16];
                        if (v26)
                        {
                          continue;
                        }

                        break;
                      }
                    }
                  }

LABEL_37:

                  if (SHIBYTE(v47) < 0)
                  {
                    operator delete(__dst[0]);
                  }
                }
              }
            }
          }
        }

        v6 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
      }

      while (v6);
    }

    v5 = v36;
  }

  objc_autoreleasePoolPop(context);
}

void sub_1014FE00C(int a1@<W1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = sub_1014F9C70(a1);
  sub_100060E4C(a3, [NSString stringWithFormat:@"%@.%@", v5, a2]);
}

void sub_1014FE0A0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v10 = *(a1 + 32);
  if (*(a2 + 23) >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  v19 = [NSString stringWithUTF8String:v11];
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  if (*(a6 + 23) >= 0)
  {
    v15 = a6;
  }

  else
  {
    v15 = *a6;
  }

  v16 = [NSString stringWithUTF8String:v15];
  v17 = [NSURL URLWithString:v16];
  LOBYTE(v18) = 0;
  [v10 publishNotificationWithIdentifier:v19 header:v12 title:v13 body:v14 userInfo:0 url:v17 shouldBackgroundDefaultAction:v18];
}

void sub_1014FE1C8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 32);
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [NSString stringWithUTF8String:v3];
  [v2 hideNotificationWithIdentifier:?];
}

id **sub_1014FE248(id *a1)
{
  v4 = a1;
  v2 = *a1;
  if (v2)
  {
    [v2 removeAllPendingNotificationRequests];
    [*a1 removeAllDeliveredNotifications];
  }

  return sub_100333804(&v4);
}

void sub_1014FE290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100333804(va);
  _Unwind_Resume(a1);
}

id **sub_1014FE2A4(id **a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {

    operator delete();
  }

  return a1;
}

id **sub_1014FE2FC(uint64_t a1)
{
  v4 = a1;
  v2 = *a1;
  if (v2)
  {
    [v2 addNotificationRequest:*(a1 + 8) withCompletionHandler:0];
  }

  return sub_1014FE2A4(&v4);
}

void sub_1014FE344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1014FE2A4(va);
  _Unwind_Resume(a1);
}

id **sub_1014FE358(uint64_t a1)
{
  v7 = a1;
  v1 = *a1;
  if (*a1)
  {
    v9 = *(a1 + 8);
    v3 = [NSArray arrayWithObjects:&v9 count:1, v7];
    [v1 removePendingNotificationRequestsWithIdentifiers:v3];

    v4 = *a1;
    v8 = *(a1 + 8);
    v5 = [NSArray arrayWithObjects:&v8 count:1];
    [v4 removeDeliveredNotificationsWithIdentifiers:v5];
  }

  return sub_1014FE2A4(&v7);
}

void sub_1014FE45C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014FE494(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1014FE4C4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1014FE504()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1014FE52C(uint64_t a1)
{
  v2 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v4, kCtLoggingSystemName, "call.branded");
  ctu::OsLogLogger::OsLogLogger(v5, &v4);
  ctu::OsLogLogger::OsLogLogger(v2, v5);
  ctu::OsLogLogger::~OsLogLogger(v5);
  ctu::OsLogContext::~OsLogContext(&v4);
  *a1 = off_101F45FA0;
  *(a1 + 16) = 0;
  return a1;
}

void sub_1014FE5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  BrandedCallingHelperInterface::~BrandedCallingHelperInterface(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1014FE610(uint64_t a1, uint64_t a2, const void **a3, std::string *a4, void **a5, uint64_t a6)
{
  memset(&__str, 0, sizeof(__str));
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__str, *a2, *(a2 + 8));
  }

  else
  {
    __str = *a2;
  }

  v9 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  p_str = &__str;
  size = __str.__r_.__value_.__l.__size_;
  v11 = __str.__r_.__value_.__r.__words[0];
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &__str;
  }

  else
  {
    v13 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = __str.__r_.__value_.__l.__size_;
  }

  if (v14 < 4)
  {
    goto LABEL_37;
  }

  v88 = __str.__r_.__value_.__r.__words[0];
  v95 = a3;
  v15 = v13;
  v16 = v13 + v14;
  v17 = v14;
  v18 = v13;
  do
  {
    v19 = memchr(v18, 46, v17 - 3);
    if (!v19)
    {
      break;
    }

    v20 = v19;
    if (*v19 == 1735420462)
    {
      goto LABEL_16;
    }

    v18 = (v19 + 1);
    v17 = v16 - (v20 + 1);
  }

  while (v17 > 3);
  v20 = v13 + v14;
LABEL_16:
  __p = a5;
  if (v14 == 4)
  {
LABEL_24:
    v24 = v13 + v14;
    goto LABEL_25;
  }

  v21 = v14;
  v22 = v13;
  while (1)
  {
    v23 = memchr(v22, 46, v21 - 4);
    if (!v23)
    {
      goto LABEL_24;
    }

    v24 = v23;
    if (*v23 == 1701866030 && v23[4] == 103)
    {
      break;
    }

    v22 = (v23 + 1);
    v21 = v16 - (v24 + 1);
    if (v21 <= 4)
    {
      goto LABEL_24;
    }
  }

  do
  {
LABEL_25:
    v26 = memchr(v15, 46, v14 - 3);
    if (!v26)
    {
      break;
    }

    if (*v26 == 1735290926)
    {
      goto LABEL_29;
    }

    v15 = (v26 + 1);
    v14 = v16 - (v26 + 1);
  }

  while (v14 > 3);
  v26 = v16;
LABEL_29:
  v27 = v20 - v13;
  if (v20 != v16 && v20 - v13 != -1)
  {
    v28 = 4;
    a3 = v95;
LABEL_35:
    a5 = __p;
    p_str = &__str;
LABEL_36:
    std::string::replace(&__str, v27, v28, ".bmp", 4uLL);
    v9 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
    size = __str.__r_.__value_.__l.__size_;
    v11 = __str.__r_.__value_.__r.__words[0];
    goto LABEL_37;
  }

  a3 = v95;
  if (v24 != v16 && v24 - v13 != -1)
  {
    v28 = 5;
    v27 = v24 - v13;
    goto LABEL_35;
  }

  a5 = __p;
  if (v26 == v16)
  {
    p_str = &__str;
    v11 = v88;
  }

  else
  {
    v27 = v26 - v13;
    p_str = &__str;
    v11 = v88;
    if (v26 - v13 != -1)
    {
      v28 = 4;
      goto LABEL_36;
    }
  }

LABEL_37:
  if ((v9 & 0x80u) == 0)
  {
    v29 = v9;
  }

  else
  {
    p_str = v11;
    v29 = size;
  }

  v30 = a4;
  if (v29 >= 1)
  {
    v31 = p_str + v29;
    v32 = p_str;
    do
    {
      v33 = memchr(v32, 63, v29);
      if (!v33)
      {
        break;
      }

      if (*v33 == 63)
      {
        if (v33 == v31)
        {
          break;
        }

        v34 = v33 - p_str;
        if (v34 == -1)
        {
          break;
        }

        v35 = *(a1 + 8);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#E HTTP GET parameters not allowed", &buf, 2u);
        }

        std::string::basic_string(&buf, &__str, 0, v34, &values);
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        goto LABEL_53;
      }

      v32 = (v33 + 1);
      v29 = v31 - v32;
    }

    while (v31 - v32 >= 1);
  }

  buf = __str;
LABEL_53:
  if (SHIBYTE(a4->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(a4->__r_.__value_.__l.__data_);
  }

  *a4 = buf;
  v36 = SHIBYTE(a4->__r_.__value_.__r.__words[2]);
  if ((v36 & 0x8000000000000000) != 0)
  {
    v36 = a4->__r_.__value_.__l.__size_;
    if (v36)
    {
      v37 = a4->__r_.__value_.__r.__words[0];
      goto LABEL_60;
    }

    return 1;
  }

  if (!*(&a4->__r_.__value_.__s + 23))
  {
    return 1;
  }

  v37 = a4;
LABEL_60:
  v38 = v37 + v36;
  v39 = v37;
  v40 = v38;
  do
  {
    v41 = v39;
    v42 = v39;
    while (1)
    {
      v43 = *v42++;
      if (v43 == 47)
      {
        break;
      }

      v41 = v42;
      if (v42 == v38)
      {
        v41 = v40;
        goto LABEL_66;
      }
    }

    v39 = (&v41->__r_.__value_.__l.__data_ + 1);
    v40 = v41;
  }

  while (v42 != v38);
LABEL_66:
  if (v41 == v38 || (v44 = v41 - v37, v44 == -1))
  {
    v79 = *(a1 + 8);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__str.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "#E Cannot fetch malformed URL", &__str, 2u);
    }

    return 1;
  }

  std::string::basic_string(&__str, a4, v44 + 1, 0xFFFFFFFFFFFFFFFFLL, &buf);
  if (*(a5 + 23) < 0)
  {
    operator delete(*a5);
  }

  *a5 = __str;
  sub_10006F22C(&theArray, a3);
  if (!theArray)
  {
    v81 = *(a1 + 8);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__str.__r_.__value_.__l.__data_) = 0;
      v82 = "#E Allowed Asset Server list is not found";
      goto LABEL_172;
    }

    goto LABEL_173;
  }

  Count = CFArrayGetCount(theArray);
  v46 = Count;
  if (!Count)
  {
    v81 = *(a1 + 8);
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__str.__r_.__value_.__l.__data_) = 0;
      v82 = "#E BrandedCallingAssetServersAllowList is empty";
LABEL_172:
      _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, v82, &__str, 2u);
    }

LABEL_173:
    v78 = 0;
    v65 = 0;
    *(v105 + 7) = 0;
    v105[0] = 0;
    goto LABEL_174;
  }

  if (Count < 1)
  {
    goto LABEL_168;
  }

  v47 = 0;
  v87 = Count;
LABEL_74:
  theDict = 0;
  __str.__r_.__value_.__r.__words[0] = CFArrayGetValueAtIndex(theArray, v47);
  sub_100010180(&theDict, &__str.__r_.__value_.__l.__data_);
  if (!theDict)
  {
    goto LABEL_144;
  }

  v48 = CFDictionaryGetCount(theDict);
  memset(&buf, 0, sizeof(buf));
  sub_10007D780(&buf, v48);
  values = 0;
  v100 = 0;
  v101 = 0;
  sub_10007D780(&values, v48);
  CFDictionaryGetKeysAndValues(theDict, buf.__r_.__value_.__l.__data_, values);
  if (v48 == 2)
  {
    v90 = v47;
    v49 = 0;
    v50 = 0;
    __pa = 0;
    v97 = 0;
    v98 = 0uLL;
    v105[0] = 0;
    v51 = 1;
    *(v105 + 7) = 0;
    while (1)
    {
      v52 = v51;
      memset(&__str, 0, sizeof(__str));
      ctu::cf::assign();
      v108 = __str;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v108.__r_.__value_.__l.__size_ == 6)
        {
          v55 = *v108.__r_.__value_.__l.__data_ != 1987208531 || *(v108.__r_.__value_.__r.__words[0] + 4) != 29285;
          operator delete(v108.__r_.__value_.__l.__data_);
          if (!v55)
          {
LABEL_93:
            memset(&__str, 0, sizeof(__str));
            ctu::cf::assign();
            v108.__r_.__value_.__r.__words[0] = __str.__r_.__value_.__l.__size_;
            v56 = __str.__r_.__value_.__r.__words[0];
            *(v108.__r_.__value_.__r.__words + 7) = *(&__str.__r_.__value_.__r.__words[1] + 7);
            v57 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if (SHIBYTE(v98) < 0)
            {
              operator delete(__pa);
            }

            *&v98 = v108.__r_.__value_.__r.__words[0];
            *(&v98 + 7) = *(v108.__r_.__value_.__r.__words + 7);
            HIBYTE(v98) = v57;
            __pa = v56;
            goto LABEL_122;
          }
        }

        else
        {
          operator delete(v108.__r_.__value_.__l.__data_);
        }
      }

      else if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) == 6 && LODWORD(v108.__r_.__value_.__l.__data_) == 1987208531 && WORD2(v108.__r_.__value_.__r.__words[0]) == 29285)
      {
        goto LABEL_93;
      }

      memset(&__str, 0, sizeof(__str));
      ctu::cf::assign();
      v108 = __str;
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v108.__r_.__value_.__l.__size_ == 11)
        {
          v60 = *v108.__r_.__value_.__l.__data_ != 0x6369666974726543 || *(v108.__r_.__value_.__r.__words[0] + 3) != 0x6574616369666974;
          operator delete(v108.__r_.__value_.__l.__data_);
          if (!v60)
          {
LABEL_113:
            memset(&__str, 0, sizeof(__str));
            ctu::cf::assign();
            v108.__r_.__value_.__r.__words[0] = __str.__r_.__value_.__l.__size_;
            v61 = __str.__r_.__value_.__r.__words[0];
            *(v108.__r_.__value_.__r.__words + 7) = *(&__str.__r_.__value_.__r.__words[1] + 7);
            v62 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
            if (v49 < 0)
            {
              operator delete(v50);
            }

            v105[0] = v108.__r_.__value_.__r.__words[0];
            *(v105 + 7) = *(v108.__r_.__value_.__r.__words + 7);
            v49 = v62;
            v50 = v61;
            goto LABEL_122;
          }
        }

        else
        {
          operator delete(v108.__r_.__value_.__l.__data_);
        }
      }

      else if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) == 11 && v108.__r_.__value_.__r.__words[0] == 0x6369666974726543 && *(v108.__r_.__value_.__r.__words + 3) == 0x6574616369666974)
      {
        goto LABEL_113;
      }

      v63 = *(a1 + 8);
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        memset(&__str, 0, sizeof(__str));
        ctu::cf::assign();
        v108 = __str;
        v64 = __str.__r_.__value_.__r.__words[0];
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v64 = &v108;
        }

        *v106 = 136315138;
        v107 = v64;
        _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#E Unrecognized key %s", v106, 0xCu);
        if (SHIBYTE(v108.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v108.__r_.__value_.__l.__data_);
        }
      }

LABEL_122:
      v51 = 0;
      if ((v52 & 1) == 0)
      {
        v65 = v49;
        v89 = v50;
        v66 = a1;
        v97 = __pa;
        v67 = HIBYTE(v30->__r_.__value_.__r.__words[2]);
        if ((v67 & 0x80u) == 0)
        {
          v68 = v30;
        }

        else
        {
          v68 = v30->__r_.__value_.__r.__words[0];
        }

        if ((v67 & 0x80u) != 0)
        {
          v67 = v30->__r_.__value_.__l.__size_;
        }

        v69 = SHIBYTE(v98);
        if (v98 >= 0)
        {
          v70 = &v97;
        }

        else
        {
          v70 = __pa;
        }

        if (v98 >= 0)
        {
          v71 = HIBYTE(v98);
        }

        else
        {
          v71 = v98;
        }

        if (!v71)
        {
LABEL_154:
          if (v69 < 0)
          {
            operator delete(__pa);
          }

          if (values)
          {
            v100 = values;
            operator delete(values);
          }

          v78 = v89;
          if (buf.__r_.__value_.__r.__words[0])
          {
            buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          goto LABEL_185;
        }

        if (v67 >= v71)
        {
          v72 = v68 + v67;
          v73 = *v70;
          v74 = v68;
          do
          {
            v75 = v67 - v71;
            if (v75 == -1)
            {
              break;
            }

            v76 = memchr(v74, v73, v75 + 1);
            if (!v76)
            {
              break;
            }

            v77 = v76;
            if (!memcmp(v76, v70, v71))
            {
              if (v77 == v72 || v77 - v68 == -1)
              {
                break;
              }

              goto LABEL_154;
            }

            v74 = (v77 + 1);
            v67 = v72 - (v77 + 1);
          }

          while (v67 >= v71);
        }

        if (v65 < 0)
        {
          operator delete(v89);
        }

        a1 = v66;
        v47 = v90;
        if (v69 < 0)
        {
          operator delete(__pa);
        }

        v46 = v87;
        if (values)
        {
          v100 = values;
          operator delete(values);
        }

        v30 = a4;
        if (buf.__r_.__value_.__r.__words[0])
        {
          buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
          operator delete(buf.__r_.__value_.__l.__data_);
        }

LABEL_144:
        sub_10001021C(&theDict);
        if (++v47 == v46)
        {
LABEL_168:
          v81 = *(a1 + 8);
          if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__str.__r_.__value_.__l.__data_) = 0;
            v82 = "#E URL does not belong to any allowed asset server";
            goto LABEL_172;
          }

          goto LABEL_173;
        }

        goto LABEL_74;
      }
    }
  }

  *(v105 + 7) = 0;
  v105[0] = 0;
  if (values)
  {
    v100 = values;
    operator delete(values);
  }

  if (buf.__r_.__value_.__r.__words[0])
  {
    buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v78 = 0;
  v65 = 0;
LABEL_185:
  sub_10001021C(&theDict);
LABEL_174:
  v83 = a6;
  if (*(a6 + 23) < 0)
  {
    operator delete(*a6);
    v83 = a6;
  }

  v84 = v105[0];
  *v83 = v78;
  *(v83 + 8) = v84;
  *(v83 + 15) = *(v105 + 7);
  *(v83 + 23) = v65;
  v85 = v83;
  sub_100010250(&theArray);
  v86 = *(v85 + 23);
  if ((v86 & 0x80u) != 0)
  {
    v86 = *(v85 + 8);
  }

  return 2 * (v86 == 0);
}