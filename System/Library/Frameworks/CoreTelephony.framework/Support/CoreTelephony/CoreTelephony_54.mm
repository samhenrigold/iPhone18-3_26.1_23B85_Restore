void sub_1003674D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_10000FF50(v14 + 48);

  _Unwind_Resume(a1);
}

void sub_10036751C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v7 = a1 + 40;
  v8 = sub_100032AC8((a1 + 40));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "signNonce";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
  }

  v9 = *(a1 + 48);
  if (*(a2 + 23) >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  v11 = [NSString stringWithUTF8String:v10];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3321888768;
  v14[2] = sub_10036807C;
  v14[3] = &unk_101E45830;
  v12 = v6;
  v15 = v12;
  v16 = v7;
  sub_1003684A4(v17, a3);
  [v9 signNonceWithNonce:v11 completionHandler:v14];

  sub_10010DF14(v17);
  v13 = v15;
  v15 = 0;
}

void sub_1003676B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_10010DF14(v15 + 48);

  _Unwind_Resume(a1);
}

void sub_10036770C(uint64_t a1)
{
  sub_10036853C(a1);

  operator delete();
}

void sub_100367744(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100032AC8((a1 + 32));
  v6 = *(a1 + 40);
  sub_1000224C8(v7, a1 + 48);
  v7[4] = v3;
  v5 = v4;
  operator new();
}

void sub_10036786C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1003678E8(uint64_t a1)
{
  sub_10000FF50(a1 + 48);
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

uint64_t *sub_100367930(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {

    sub_10000FF50(v1 + 8);
    operator delete();
  }

  return a1;
}

uint64_t *sub_100367988(uint64_t a1)
{
  v6 = a1;
  v2 = *(a1 + 40);
  v3 = sub_100032AC8(*a1);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10176C218();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Start succeeded", buf, 2u);
  }

  sub_10000FFD0(a1 + 8, *(a1 + 40) == 0);
  return sub_100367930(&v6);
}

void sub_100367A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100367930(va);
  _Unwind_Resume(a1);
}

void sub_100367A5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100032AC8((a1 + 32));
  v6 = *(a1 + 40);
  sub_1000224C8(v7, a1 + 48);
  v7[4] = v3;
  v5 = v4;
  operator new();
}

void sub_100367B84(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100367BB0(uint64_t a1)
{
  v6 = a1;
  v2 = *(a1 + 40);
  v3 = sub_100032AC8(*a1);
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10176C288();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I CTKDSClientManager Stop succeeded", buf, 2u);
  }

  sub_10000FFD0(a1 + 8, *(a1 + 40) == 0);
  return sub_100367930(&v6);
}

void sub_100367C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100367930(va);
  _Unwind_Resume(a1);
}

void sub_100367C84(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100032AC8((a1 + 32));
  v6 = *(a1 + 40);
  sub_1000224C8(v7, a1 + 48);
  v7[4] = v3;
  v5 = v4;
  operator new();
}

void sub_100367DAC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100367DD8(uint64_t a1)
{
  v6 = a1;
  v2 = (a1 + 40);
  if (*(a1 + 40))
  {
    v3 = sub_100032AC8(*a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10176C2F8();
    }

    v4 = *v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  sub_10000FFD0(a1 + 8, v4);
  return sub_100367930(&v6);
}

void sub_100367E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100367930(va);
  _Unwind_Resume(a1);
}

void sub_100367E80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100032AC8((a1 + 32));
  v6 = *(a1 + 40);
  sub_1000224C8(v7, a1 + 48);
  v7[4] = v3;
  v5 = v4;
  operator new();
}

void sub_100367FA8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_100367FD4(uint64_t a1)
{
  v6 = a1;
  v2 = (a1 + 40);
  if (*(a1 + 40))
  {
    v3 = sub_100032AC8(*a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10176C368();
    }

    v4 = *v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  sub_10000FFD0(a1 + 8, v4);
  return sub_100367930(&v6);
}

void sub_100368068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100367930(va);
  _Unwind_Resume(a1);
}

void sub_10036807C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100032AC8((a1 + 32));
  v6 = *(a1 + 40);
  sub_1003684A4(v7, a1 + 48);
  v7[4] = v3;
  v5 = v4;
  operator new();
}

void sub_1003681A4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100368220(uint64_t a1)
{
  sub_10010DF14(a1 + 48);
  v2 = *(a1 + 32);
  *(a1 + 32) = 0;

  v3 = *(a1 + 32);
}

uint64_t *sub_100368268(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {

    sub_10010DF14(v1 + 8);
    operator delete();
  }

  return a1;
}

uint64_t sub_1003682C0(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100368340(uint64_t a1)
{
  v8 = a1;
  v2 = *(a1 + 40);
  v3 = sub_100032AC8(*a1);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (v2)
  {
    if (v4)
    {
      sub_10176C3D8(v3, v5, v6);
    }

    sub_10000501C(v9, [*(a1 + 40) UTF8String]);
    sub_100368450(a1 + 8, 1);
  }

  else
  {
    if (v4)
    {
      sub_10176C418(v3, v5, v6);
    }

    v9[0] = 0;
    v9[1] = 0;
    v10 = 0;
    sub_100368450(a1 + 8, 0);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }

  return sub_100368268(&v8);
}

void sub_10036841C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  sub_100368268(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100368450(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_1003684A4(uint64_t a1, uint64_t a2)
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

void sub_10036853C(uint64_t a1)
{
  *a1 = off_101E45720;
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_100320D6C(a1 + 8);

  TMKXPCServer.shutdown()();
}

void sub_1003685B0(unint64_t *result, _BYTE *a2)
{
  v4 = result[2];
  v5 = result[1];
  v6 = ((v4 - v5) << 9) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = result[5] + result[4];
  if (v6 == v7)
  {
    sub_10036AA20(result);
    v5 = result[1];
    v7 = result[5] + result[4];
  }

  *(*(v5 + ((v7 >> 9) & 0x7FFFFFFFFFFFF8)) + (v7 & 0xFFF)) = *a2;
  ++result[5];
}

void sub_10036863C(uint64_t a1)
{
  if (*(a1 + 80))
  {
    memset(&__str, 0, sizeof(__str));
    v2 = *(a1 + 48);
    v3 = (v2 + 8 * (*(a1 + 72) >> 12));
    v4 = *v3;
    v5 = (*v3 + (*(a1 + 72) & 0xFFFLL));
    v6 = *v5;
    if (v6 != 33)
    {
      if (v6 != 44)
      {
        if (v6 == 59)
        {
          do
          {
            if (++v5 - v4 == 4096)
            {
              v7 = v3[1];
              ++v3;
              v4 = v7;
              v5 = v7;
            }

            v8 = *v5;
          }

          while (v8 == 59);
          while (v8 != 33 && v8 != 59)
          {
            if (&(++v5)[-*v3] == 4096)
            {
              v9 = v3[1];
              ++v3;
              v5 = v9;
            }

            std::string::push_back(&__str, v8);
            LOBYTE(v8) = *v5;
          }

LABEL_14:
          std::string::operator=((a1 + 128), &__str);
        }

        goto LABEL_40;
      }

      if (*(a1 + 56) == v2)
      {
        v5 = 0;
      }

LABEL_21:
      v12 = v4 - v5 + 4096;
      while (1)
      {
        v13 = *v5;
        if (v13 == 33)
        {
          break;
        }

        if (v13 == 59)
        {
          do
          {
            if (++v5 - v4 == 4096)
            {
              v15 = v3[1];
              ++v3;
              v4 = v15;
              v5 = v15;
            }

            v16 = *v5;
          }

          while (v16 == 59);
          while (v16 != 33 && v16 != 59)
          {
            if (&(++v5)[-*v3] == 4096)
            {
              v17 = v3[1];
              ++v3;
              v5 = v17;
            }

            std::string::push_back(&__str, v16);
            LOBYTE(v16) = *v5;
          }

          goto LABEL_14;
        }

        ++v5;
        if (!--v12)
        {
          v14 = v3[1];
          ++v3;
          v4 = v14;
          v5 = v14;
          goto LABEL_21;
        }
      }
    }

    if (*(a1 + 151) < 0)
    {
      *(a1 + 136) = 0;
      v18 = *(a1 + 128);
    }

    else
    {
      v18 = (a1 + 128);
      *(a1 + 151) = 0;
    }

    *v18 = 0;
LABEL_40:
    v19 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      v20 = (a1 + 128);
      if (*(a1 + 151) < 0)
      {
        v20 = *v20;
      }

      v21 = 136315138;
      v22 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I fUpcomingHardPauseDigits = %s", &v21, 0xCu);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    return;
  }

  v10 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v11 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v11 = *v11;
    }

    LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
    *(__str.__r_.__value_.__r.__words + 4) = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I fUpcomingHardPauseDigits = %s", &__str, 0xCu);
  }
}

void sub_1003688EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100368914(os_log_t *a1, uint64_t a2)
{
  v4 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Setting New DTMF Digits Callback", v6, 2u);
  }

  return sub_100368990(a1 + 19, a2);
}

void *sub_100368990(void *a1, uint64_t a2)
{
  sub_10036ABF4(v4, a2);
  sub_10036AC8C(v4, a1);
  sub_1000C022C(v4);
  return a1;
}

__n128 sub_100368A04(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Setting New Call for DTMF Digits Callback", v13, 2u);
  }

  sub_1000BA4A0((a1 + 200), a2);
  *(a1 + 208) = *(a2 + 8);
  std::string::operator=((a1 + 224), (a2 + 24));
  v5 = *(a2 + 60);
  *(a1 + 248) = *(a2 + 48);
  *(a1 + 260) = v5;
  std::string::operator=((a1 + 280), (a2 + 80));
  *(a1 + 304) = *(a2 + 104);
  std::string::operator=((a1 + 312), (a2 + 112));
  *(a1 + 336) = *(a2 + 136);
  std::string::operator=((a1 + 344), (a2 + 144));
  v6 = *(a2 + 176);
  *(a1 + 368) = *(a2 + 168);
  *(a1 + 376) = v6;
  sub_1000FAA0C(a1 + 384, a2 + 184);
  *(a1 + 416) = *(a2 + 216);
  std::string::operator=((a1 + 432), (a2 + 232));
  *(a1 + 456) = *(a2 + 256);
  std::string::operator=((a1 + 464), (a2 + 264));
  std::string::operator=((a1 + 488), (a2 + 288));
  v7 = *(a2 + 360);
  v9 = *(a2 + 312);
  v8 = *(a2 + 328);
  *(a1 + 544) = *(a2 + 344);
  *(a1 + 560) = v7;
  *(a1 + 512) = v9;
  *(a1 + 528) = v8;
  v11 = *(a2 + 392);
  result = *(a2 + 408);
  v12 = *(a2 + 376);
  *(a1 + 621) = *(a2 + 421);
  *(a1 + 592) = v11;
  *(a1 + 608) = result;
  *(a1 + 576) = v12;
  return result;
}

void sub_100368B5C(uint64_t result)
{
  if (*(result + 88) == 1)
  {
    *(result + 88) = 0;
    sub_100368B74(result);
  }
}

void sub_100368B74(uint64_t a1)
{
  if (*(a1 + 89) == 1 && *(a1 + 80))
  {
    v2 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(*(a1 + 48) + ((*(a1 + 72) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(a1 + 72) & 0xFFFLL));
      *buf = 67109120;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %c", buf, 8u);
    }

    v4 = *(*(*(a1 + 48) + ((*(a1 + 72) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(a1 + 72) & 0xFFFLL));
    if (v4 > 0x3B || ((1 << v4) & 0x800100200000000) == 0)
    {
      v6 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v14 = v4;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I doKey: Pushing back %hhd digit for dtmf tones", buf, 8u);
      }

      operator new();
    }

    v12 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Queing up burst of DTMF, count = %d", buf, 8u);
    }

    sub_10036914C(a1);
  }

  else
  {
    *(a1 + 89) = 0;
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    *(a1 + 80) = 0;
    v9 = (v8 - v7) >> 3;
    if (v9 >= 3)
    {
      do
      {
        operator delete(*v7);
        v10 = *(a1 + 56);
        v7 = (*(a1 + 48) + 8);
        *(a1 + 48) = v7;
        v9 = (v10 - v7) >> 3;
      }

      while (v9 > 2);
    }

    if (v9 == 1)
    {
      v11 = 2048;
    }

    else
    {
      if (v9 != 2)
      {
        return;
      }

      v11 = 4096;
    }

    *(a1 + 72) = v11;
  }
}

void sub_100368F74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  v16 = *(v14 - 136);
  if (v16)
  {
    *(v14 - 128) = v16;
    operator delete(v16);
  }

  if (v13)
  {
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100368FC0(os_log_t *a1)
{
  v2 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Going to start DTMF tones after a hard pause", v3, 2u);
  }

  sub_100368B74(a1);
}

char *sub_10036903C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[127] < 0)
  {
    return sub_100005F2C(a2, *(result + 13), *(result + 14));
  }

  *a2 = *(result + 104);
  *(a2 + 16) = *(result + 15);
  return result;
}

void sub_100369064(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v5 = *v5;
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I fUpcomingHardPauseDigits = %s", &v6, 0xCu);
  }

  if (*(a1 + 151) < 0)
  {
    sub_100005F2C(a2, *(a1 + 128), *(a1 + 136));
  }

  else
  {
    *a2 = *(a1 + 128);
    *(a2 + 16) = *(a1 + 144);
  }
}

void sub_10036914C(uint64_t a1)
{
  v2 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I processDtmf", &buf, 2u);
  }

  memset(&buf, 0, sizeof(buf));
  v3 = *(a1 + 80);
  if (v3)
  {
    v4 = *(a1 + 72);
    v5 = *(*(*(a1 + 48) + ((v4 >> 9) & 0x7FFFFFFFFFFFF8)) + (v4 & 0xFFF));
    switch(v5)
    {
      case '!':
        *(a1 + 89) = 0;
        *(a1 + 72) = v4 + 1;
        *(a1 + 80) = v3 - 1;
        sub_10036AEF8(a1 + 40, 1);
        break;
      case ',':
        *(a1 + 72) = v4 + 1;
        *(a1 + 80) = v3 - 1;
        sub_10036AEF8(a1 + 40, 1);
        if (*(a1 + 192))
        {
          Registry::getTimerService(v27, *(a1 + 24));
          v11 = *v27;
          sub_10000501C(__p, "DTMFSoftPauseTimer");
          v12 = *(a1 + 192);
          object = v12;
          if (v12)
          {
            dispatch_retain(v12);
          }

          v22[0] = _NSConcreteStackBlock;
          v22[1] = 0x40000000;
          v22[2] = sub_100369504;
          v22[3] = &unk_101E458E0;
          v22[4] = a1;
          aBlock = _Block_copy(v22);
          sub_100D23364(v11, __p, 1, 3000000, &object, &aBlock);
          v13 = v29;
          v29 = 0;
          v14 = *(a1 + 96);
          *(a1 + 96) = v13;
          if (v14)
          {
            (*(*v14 + 8))(v14);
            v15 = v29;
            v29 = 0;
            if (v15)
            {
              (*(*v15 + 8))(v15);
            }
          }

          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (object)
          {
            dispatch_release(object);
          }

          if (v26 < 0)
          {
            operator delete(__p[0]);
          }

          if (v28)
          {
            sub_100004A34(v28);
          }
        }

        else
        {
          v21 = *a1;
          if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
          {
            *v27 = 0;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#N Parent queue is null!", v27, 2u);
          }

          sub_100368B74(a1);
        }

        break;
      case ';':
        while (1)
        {
          v6 = *(a1 + 48);
          v7 = *(a1 + 72);
          v8 = *(v6 + 8 * (v7 >> 12));
          v9 = *(v8 + (v7 & 0xFFF));
          if (v9 != 59)
          {
            break;
          }

          v10 = *(a1 + 80) - 1;
          *(a1 + 72) = v7 + 1;
          *(a1 + 80) = v10;
          sub_10036AEF8(a1 + 40, 1);
        }

        if (v9 != 33)
        {
          v16 = (v6 + 8 * (v7 >> 12));
          v17 = v8 + (*(a1 + 72) & 0xFFFLL);
          *(a1 + 90) = 1;
          v18 = *(a1 + 56) == v6 ? 0 : v17;
          while (1)
          {
            v19 = *v18;
            if (v19 == 33 || v19 == 59)
            {
              break;
            }

            if (&(++v18)[-*v16] == 4096)
            {
              v20 = v16[1];
              ++v16;
              v18 = v20;
            }

            std::string::push_back(&buf, v19);
          }

          std::string::operator=((a1 + 104), &buf);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        break;
    }
  }
}

void sub_10036948C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, dispatch_object_t object, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23)
{
  if (*(v23 - 41) < 0)
  {
    operator delete(*(v23 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10036950C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = a1;
  v3 = *(a1 + 23);
  if (v3 < 0)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return sub_1002853E4(a2, v2, &v2[v3], v3);
}

uint64_t sub_100369530@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  *__p = 0u;
  v45 = 0u;
  v42 = 0u;
  *__src = 0u;
  v40 = 0u;
  v41 = 0u;
  v39 = 0u;
  sub_10000C320(&v39);
  v4 = sub_10000C030(&v40, "DTMF Info: ", 11);
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v5 = std::locale::use_facet(&v57, &std::ctype<char>::id);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(&v57);
  std::ostream::put();
  std::ostream::flush();
  sub_10000C030(v4, "\t fWaitingForConnect =  ", 24);
  v6 = std::ostream::operator<<();
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v57, &std::ctype<char>::id);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v57);
  std::ostream::put();
  std::ostream::flush();
  sub_10000C030(v6, "\t fPauseString = ", 17);
  v8 = std::ostream::operator<<();
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(&v57, &std::ctype<char>::id);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v57);
  std::ostream::put();
  std::ostream::flush();
  sub_10000C030(v8, "\t fHardPausePresent = ", 22);
  v10 = std::ostream::operator<<();
  std::ios_base::getloc((v10 + *(*v10 - 24)));
  v11 = std::locale::use_facet(&v57, &std::ctype<char>::id);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v57);
  std::ostream::put();
  std::ostream::flush();
  v12 = sub_10000C030(v10, "\t fNextHardPauseDigits = ", 25);
  v13 = *(a1 + 127);
  if (v13 >= 0)
  {
    v14 = a1 + 104;
  }

  else
  {
    v14 = *(a1 + 104);
  }

  if (v13 >= 0)
  {
    v15 = *(a1 + 127);
  }

  else
  {
    v15 = *(a1 + 112);
  }

  v16 = sub_10000C030(v12, v14, v15);
  std::ios_base::getloc((v16 + *(*v16 - 24)));
  v17 = std::locale::use_facet(&v57, &std::ctype<char>::id);
  (v17->__vftable[2].~facet_0)(v17, 10);
  std::locale::~locale(&v57);
  std::ostream::put();
  std::ostream::flush();
  v18 = sub_10000C030(v16, "\t fUpcomingHardPauseDigits = ", 29);
  v19 = *(a1 + 151);
  if (v19 >= 0)
  {
    v20 = a1 + 128;
  }

  else
  {
    v20 = *(a1 + 128);
  }

  if (v19 >= 0)
  {
    v21 = *(a1 + 151);
  }

  else
  {
    v21 = *(a1 + 136);
  }

  v22 = sub_10000C030(v18, v20, v21);
  std::ios_base::getloc((v22 + *(*v22 - 24)));
  v23 = std::locale::use_facet(&v57, &std::ctype<char>::id);
  (v23->__vftable[2].~facet_0)(v23, 10);
  std::locale::~locale(&v57);
  std::ostream::put();
  std::ostream::flush();
  sub_10000C030(v22, "\t fQueue.size() = ", 18);
  v24 = std::ostream::operator<<();
  std::ios_base::getloc((v24 + *(*v24 - 24)));
  v25 = std::locale::use_facet(&v57, &std::ctype<char>::id);
  (v25->__vftable[2].~facet_0)(v25, 10);
  std::locale::~locale(&v57);
  std::ostream::put();
  std::ostream::flush();
  sub_10000C030(v24, "\t Digits = ", 11);
  v26 = *(a1 + 48);
  if (*(a1 + 56) != v26)
  {
    v27 = *(a1 + 72);
    v28 = (v26 + 8 * (v27 >> 12));
    v29 = (*v28 + (v27 & 0xFFF));
    v30 = *(v26 + (((*(a1 + 80) + v27) >> 9) & 0x7FFFFFFFFFFFF8)) + ((*(a1 + 80) + v27) & 0xFFF);
    while (v29 != v30)
    {
      LOBYTE(v57.__locale_) = *v29;
      v31 = sub_10000C030(&v40, &v57, 1);
      sub_10000C030(v31, ", ", 2);
      if (&(++v29)[-*v28] == 4096)
      {
        v32 = v28[1];
        ++v28;
        v29 = v32;
      }
    }
  }

  std::ios_base::getloc((&v40 + *(v40 - 24)));
  v33 = std::locale::use_facet(&v57, &std::ctype<char>::id);
  (v33->__vftable[2].~facet_0)(v33, 10);
  std::locale::~locale(&v57);
  std::ostream::put();
  std::ostream::flush();
  if ((BYTE8(v46) & 0x10) != 0)
  {
    v35 = v46;
    if (v46 < __src[1])
    {
      *&v46 = __src[1];
      v35 = __src[1];
    }

    v36 = __src[0];
  }

  else
  {
    if ((BYTE8(v46) & 8) == 0)
    {
      v34 = 0;
      a2[23] = 0;
      goto LABEL_31;
    }

    v36 = *(&v41 + 1);
    v35 = *(&v42 + 1);
  }

  v34 = v35 - v36;
  if ((v35 - v36) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v34 >= 0x17)
  {
    operator new();
  }

  a2[23] = v34;
  if (v34)
  {
    memmove(a2, v36, v34);
  }

LABEL_31:
  a2[v34] = 0;
  *&v40 = v37;
  if (SHIBYTE(v45) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(&v41);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100369D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::locale::~locale((v25 - 72));
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_100369D68(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *(a1 + 192);
  *(a1 + 192) = v3;
  if (v4)
  {
    dispatch_release(v4);
  }
}

void sub_100369D8C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100369DC4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_100369E00(unint64_t *a1, char *__src, unint64_t a3)
{
  v4 = __src;
  v6 = a1[5];
  if (v6 < a3)
  {
    v7 = &__src[v6];
    v8 = a1[4] >> 12;
    v9 = a1[1];
    if (a1[2] == v9)
    {
      v10 = 0;
      if (!v6)
      {
LABEL_18:

        return sub_100369FAC(a1, v7, a3 - v6);
      }
    }

    else
    {
      v10 = (*(v9 + 8 * v8) + (a1[4] & 0xFFF));
      if (!v6)
      {
        goto LABEL_18;
      }
    }

    v14 = (v9 + 8 * v8);
    v17 = *v14;
    v16 = (v14 + 1);
    v15 = v17;
    while (1)
    {
      v18 = v15 - v10 + 4096;
      if (v7 - v4 >= v18)
      {
        v19 = v18;
      }

      else
      {
        v19 = v7 - v4;
      }

      if (v19)
      {
        memmove(v10, v4, v19);
      }

      v4 += v19;
      if (v4 == v7)
      {
        break;
      }

      v20 = *v16++;
      v15 = v20;
      v10 = v20;
    }

    v6 = a1[5];
    goto LABEL_18;
  }

  v11 = a1[1];
  v12 = (v11 + 8 * (a1[4] >> 12));
  if (a1[2] != v11)
  {
    v13 = (*v12 + (a1[4] & 0xFFF));
    if (!a3)
    {
      goto LABEL_33;
    }

LABEL_22:
    v22 = &__src[a3];
    v24 = *v12;
    v12 += 8;
    v23 = v24;
    while (1)
    {
      v25 = v23 - v13 + 4096;
      if (v22 - v4 >= v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = v22 - v4;
      }

      if (v26)
      {
        memmove(v13, v4, v26);
      }

      v4 += v26;
      if (v4 == v22)
      {
        break;
      }

      v27 = *v12;
      v12 += 8;
      v23 = v27;
      v13 = v27;
    }

    v13 += v26;
    if ((*(v12 - 1) + 4096) == v13)
    {
      v13 = *v12;
    }

    else
    {
      v12 -= 8;
    }

    goto LABEL_33;
  }

  v13 = 0;
  if (a3)
  {
    goto LABEL_22;
  }

LABEL_33:

  return sub_10036A0CC(a1, v12, v13);
}

void *sub_100369FAC(unint64_t *a1, char *a2, unint64_t a3)
{
  v6 = a1[1];
  v7 = a1[2];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) << 9) - 1;
  }

  v9 = a1[5] + a1[4];
  v10 = v8 - v9;
  if (a3 > v10)
  {
    sub_10036A1C4(a1, a3 - v10);
    v6 = a1[1];
    v7 = a1[2];
    v9 = a1[4] + a1[5];
  }

  v11 = (v6 + 8 * (v9 >> 12));
  if (v7 == v6)
  {
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = (*v11 + (v9 & 0xFFF));
    v13 = v12;
  }

  v20[0] = v11;
  v20[1] = v13;
  result = sub_10036A4DC(v20, a3);
  while (v12 != v15)
  {
    v16 = (v11 == result ? v15 : *v11 + 4096);
    if (v12 == v16)
    {
      v16 = v12;
    }

    else
    {
      v17 = v12;
      do
      {
        v18 = *a2++;
        *v17++ = v18;
      }

      while (v17 != v16);
    }

    a1[5] += v16 - v12;
    if (v11 == result)
    {
      break;
    }

    v19 = v11[1];
    ++v11;
    v12 = v19;
  }

  return result;
}

uint64_t sub_10036A0CC(uint64_t result, char *a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = v4 + *(result + 40);
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = (v6 + 8 * (v5 >> 12));
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8 + (v5 & 0xFFF);
  }

  if (v9 != a3)
  {
    v10 = v8 - a2;
    v11 = *v8;
    v12 = *a2;
    v13 = v9 + (v10 << 9) - a3 - v11 + *a2;
    if (v13 >= 1)
    {
      v14 = (v6 + 8 * (v4 >> 12));
      if (v7 == v6)
      {
        v15 = 0;
      }

      else
      {
        v15 = *v14 + (*(result + 32) & 0xFFFLL);
      }

      v17[0] = v14;
      v17[1] = v15;
      if (a3 == v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = a3 - v15 - v12 + *v14 + ((a2 - v14) << 9);
      }

      sub_10036A4DC(v17, v16);
      v3[5] -= v13;
      do
      {
        result = sub_10036A9B0(v3, 1);
      }

      while ((result & 1) != 0);
    }
  }

  return result;
}

void sub_10036A1C4(unint64_t *a1, unint64_t a2)
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

  if ((v4 & 0xFFF) != 0)
  {
    v5 = (v4 >> 12) + 1;
  }

  else
  {
    v5 = v4 >> 12;
  }

  v6 = a1[4];
  if (v5 >= v6 >> 12)
  {
    v7 = v6 >> 12;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 12)
  {
    for (a1[4] = v6 - (v7 << 12); v7; --v7)
    {
      v14 = a1[1];
      v16[0] = *v14;
      a1[1] = (v14 + 1);
      sub_10036A540(a1, v16);
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
        sub_10036A968(a1, v12);
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

    for (a1[4] -= v7 << 12; v7; --v7)
    {
      v15 = a1[1];
      v16[0] = *v15;
      a1[1] = (v15 + 1);
      sub_10036A540(a1, v16);
    }
  }
}

void sub_10036A468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10036A4DC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  if (a2)
  {
    v4 = *(a1 + 8) - *result + a2;
    if (v4 < 1)
    {
      result -= (4095 - v4) >> 12;
    }

    else
    {
      result += v4 >> 12;
    }
  }

  return result;
}

void sub_10036A540(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_10036A968(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_10036A648(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_10036A968(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_10036A754(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_10036A968(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_10036A85C(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      sub_10036A968(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

void sub_10036A968(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10036A9B0(void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v3) << 9) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x1000)
  {
    a2 = 1;
  }

  if (v5 < 0x2000)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void sub_10036AA20(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x1000;
  v3 = v1 - 4096;
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
    sub_10036A968(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  sub_10036A540(a1, &v9);
}

void sub_10036ABA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10036ABF4(uint64_t a1, uint64_t a2)
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

void *sub_10036AC8C(void *result, void *a2)
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

void sub_10036AEEC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_10036AEF8(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x1000)
  {
    a2 = 1;
  }

  if (v2 < 0x2000)
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
    *(a1 + 32) -= 4096;
  }

  return v4 ^ 1u;
}

uint64_t sub_10036B0C0(uint64_t a1, uint64_t a2, NSObject **a3)
{
  *a1 = &off_101E45A78;
  *(a1 + 8) = off_101E4D210;
  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "ddb.mgr");
  sub_10036B478((a1 + 16), a3, buf);
  ctu::OsLogContext::~OsLogContext(buf);
  *a1 = off_101E45988;
  *(a1 + 8) = off_101E45A28;
  *(a1 + 56) = *a2;
  v6 = *(a2 + 8);
  *(a1 + 64) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "DedicatedBearer");
  v7 = *(a1 + 32);
  v12 = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *(a1 + 40);
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (v14 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 88) = 1;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0;
  *(a1 + 120) = a1 + 128;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 168) = a1 + 176;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 208) = 0;
  *(a1 + 232) = 0;
  *(a1 + 224) = 0;
  *(a1 + 216) = a1 + 224;
  Registry::getNotificationSenderFactory(buf, *a2);
  (*(**buf + 136))(*buf);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v9 = *(a1 + 48);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%sDedicatedBearerImpl created", buf, 0x16u);
  }

  return a1;
}

void sub_10036B38C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_100004A34(a19);
  }

  sub_1000DCFFC(v24, *(v19 + 224));
  sub_1000DCFFC(v23, *(v19 + 200));
  sub_10036F160(v22, *(v19 + 176));
  if (*(v19 + 167) < 0)
  {
    operator delete(*v25);
  }

  sub_1002472DC(v21, *(v19 + 128));
  sub_10013DF64(v20, *(v19 + 104));
  v27 = *(v19 + 80);
  if (v27)
  {
    sub_100004A34(v27);
  }

  v28 = *(v19 + 64);
  if (v28)
  {
    sub_100004A34(v28);
  }

  ctu::OsLogLogger::~OsLogLogger((v19 + 48));
  sub_1000C0544((v19 + 16));
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void *sub_10036B478(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_10036B4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  _Unwind_Resume(a1);
}

void sub_10036B50C(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v3, *(a1 + 56));
  ctu::RestModule::connect();
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_100004AA0(&v6, (a1 + 16));
  v2 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
  }

  sub_10000501C(&__p, "/cc/props/current_data_slot");
  operator new();
}

void sub_10036B770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  sub_1000062D4(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10036B7F0(uint64_t a1)
{
  v18 = 0;
  v19 = 0;
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
  (*(*v10 + 8))(&v18, v10, *(a1 + 88));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (v18)
  {
    std::string::operator=((a1 + 144), v18 + 1);
  }

  v12 = *(a1 + 48);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 144);
    v14 = a1 + 144;
    v13 = v15;
    v16 = *(v14 + 23);
    v17 = (v16 & 0x80u) != 0;
    if ((v16 & 0x80u) != 0)
    {
      v16 = *(v14 + 8);
    }

    if (!v17)
    {
      v13 = v14;
    }

    *buf = 136315650;
    *&buf[4] = "";
    if (!v16)
    {
      v13 = "<invalid>";
    }

    v21 = 2080;
    v22 = "";
    v23 = 2080;
    v24 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sstarting. Active personality %s", buf, 0x20u);
  }

  if (v19)
  {
    sub_100004A34(v19);
  }
}

void sub_10036B9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10036BA18(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = *(a1 + 48);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    asString();
    v9 = v88 >= 0 ? __p : __p[0];
    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    v90 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%spersonality event: %s", buf, 0x20u);
    if (SHIBYTE(v88) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if ((*(a3 + 24) & 0xFE) == 6)
  {
    v10 = sub_100007A6C(a1 + 120, a3);
    if ((a1 + 128) != v10)
    {
      v11 = *(a1 + 48);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a3 + 23);
        v13 = (v12 & 0x80u) != 0;
        v14 = *a3;
        if ((v12 & 0x80u) != 0)
        {
          v12 = *(a3 + 8);
        }

        if (!v13)
        {
          v14 = a3;
        }

        if (v12)
        {
          v15 = v14;
        }

        else
        {
          v15 = "<invalid>";
        }

        *buf = 136315650;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        v90 = v15;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sRemoving controller for %s", buf, 0x20u);
      }

      sub_1000194D8((a1 + 120), v10);
      sub_1000D57F4((v10 + 4));
      operator delete(v10);
    }

    v16 = sub_100007A6C(a1 + 192, a3);
    v17 = v16;
    if (a1 + 200 != v16)
    {
      v18 = *(v16 + 56);
      v19 = (v16 + 64);
      if (v18 != (v16 + 64))
      {
        do
        {
          v20 = *(a1 + 240);
          if (*(v18 + 55) < 0)
          {
            sub_100005F2C(__dst, v18[4], v18[5]);
          }

          else
          {
            *__dst = *(v18 + 2);
            v85 = v18[6];
          }

          if (SHIBYTE(v85) < 0)
          {
            sub_100005F2C(__p, __dst[0], __dst[1]);
          }

          else
          {
            *__p = *__dst;
            v88 = v85;
          }

          v75 = 0;
          if (SHIBYTE(v88) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
          }

          else
          {
            *buf = *__p;
            *&buf[16] = v88;
          }

          *&v77 = 0;
          if (ctu::cf::convert_copy())
          {
            v21 = v75;
            v75 = v77;
            v78 = v21;
            sub_100005978(&v78);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v86 = v75;
          v75 = 0;
          sub_100005978(&v75);
          if (SHIBYTE(v88) < 0)
          {
            operator delete(__p[0]);
          }

          (*(*v20 + 40))(v20, v86);
          sub_100005978(&v86);
          if (SHIBYTE(v85) < 0)
          {
            operator delete(__dst[0]);
          }

          v22 = v18[1];
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
              v23 = v18[2];
              v24 = *v23 == v18;
              v18 = v23;
            }

            while (!v24);
          }

          v18 = v23;
        }

        while (v23 != v19);
      }

      sub_1000194D8((a1 + 192), v17);
      sub_1000DD058((v17 + 4));
      operator delete(v17);
    }

    v25 = sub_100007A6C(a1 + 168, a3);
    v26 = v25;
    if (a1 + 176 != v25)
    {
      v27 = *(v25 + 56);
      v28 = (v25 + 64);
      if (v27 != (v25 + 64))
      {
        do
        {
          v29 = *(a1 + 240);
          if (*(v27 + 55) < 0)
          {
            sub_100005F2C(v82, v27[4], v27[5]);
          }

          else
          {
            *v82 = *(v27 + 2);
            v83 = v27[6];
          }

          if (SHIBYTE(v83) < 0)
          {
            sub_100005F2C(__p, v82[0], v82[1]);
          }

          else
          {
            *__p = *v82;
            v88 = v83;
          }

          v75 = 0;
          if (SHIBYTE(v88) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
          }

          else
          {
            *buf = *__p;
            *&buf[16] = v88;
          }

          *&v77 = 0;
          if (ctu::cf::convert_copy())
          {
            v30 = v75;
            v75 = v77;
            v78 = v30;
            sub_100005978(&v78);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v86 = v75;
          v75 = 0;
          sub_100005978(&v75);
          if (SHIBYTE(v88) < 0)
          {
            operator delete(__p[0]);
          }

          (*(*v29 + 40))(v29, v86);
          sub_100005978(&v86);
          if (SHIBYTE(v83) < 0)
          {
            operator delete(v82[0]);
          }

          v31 = v27[1];
          if (v31)
          {
            do
            {
              v32 = v31;
              v31 = *v31;
            }

            while (v31);
          }

          else
          {
            do
            {
              v32 = v27[2];
              v24 = *v32 == v27;
              v27 = v32;
            }

            while (!v24);
          }

          v27 = v32;
        }

        while (v32 != v28);
      }

      sub_1000194D8((a1 + 168), v26);
      sub_1002CB3DC((v26 + 4));
      operator delete(v26);
    }

    v33 = sub_100007A6C(a1 + 216, a3);
    v34 = v33;
    if (a1 + 224 != v33)
    {
      v35 = *(v33 + 56);
      v36 = (v33 + 64);
      if (v35 != (v33 + 64))
      {
        do
        {
          v37 = *(a1 + 240);
          if (*(v35 + 55) < 0)
          {
            sub_100005F2C(v80, v35[4], v35[5]);
          }

          else
          {
            *v80 = *(v35 + 2);
            v81 = v35[6];
          }

          if (SHIBYTE(v81) < 0)
          {
            sub_100005F2C(__p, v80[0], v80[1]);
          }

          else
          {
            *__p = *v80;
            v88 = v81;
          }

          v75 = 0;
          if (SHIBYTE(v88) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
          }

          else
          {
            *buf = *__p;
            *&buf[16] = v88;
          }

          *&v77 = 0;
          if (ctu::cf::convert_copy())
          {
            v38 = v75;
            v75 = v77;
            v78 = v38;
            sub_100005978(&v78);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v86 = v75;
          v75 = 0;
          sub_100005978(&v75);
          if (SHIBYTE(v88) < 0)
          {
            operator delete(__p[0]);
          }

          (*(*v37 + 40))(v37, v86);
          sub_100005978(&v86);
          if (SHIBYTE(v81) < 0)
          {
            operator delete(v80[0]);
          }

          v39 = v35[1];
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
              v40 = v35[2];
              v24 = *v40 == v35;
              v35 = v40;
            }

            while (!v24);
          }

          v35 = v40;
        }

        while (v40 != v36);
      }

      sub_1000194D8((a1 + 216), v34);
      sub_1000DD058((v34 + 4));
      operator delete(v34);
    }

    return;
  }

  __p[0] = 0;
  __p[1] = 0;
  v41 = sub_100007A6C(a1 + 120, a3);
  v42 = v41;
  if (a1 + 128 != v41)
  {
    v43 = *(v41 + 56);
    v44 = *(v42 + 64);
    if (v44)
    {
      atomic_fetch_add_explicit(v44 + 1, 1uLL, memory_order_relaxed);
    }

    v45 = __p[1];
    __p[0] = v43;
    __p[1] = v44;
    if (!v45)
    {
      goto LABEL_103;
    }

    sub_100004A34(v45);
  }

  v43 = __p[0];
LABEL_103:
  if (!v43)
  {
    if (isReal())
    {
      v78 = 0;
      v79 = 0;
      v50 = (*a4)[65];
      v51 = (*a4)[66];
      while (1)
      {
        if (v50 == v51)
        {
          v61 = v78;
          goto LABEL_141;
        }

        if (sub_1001E4088(*v50, 5u))
        {
          break;
        }

        v50 += 2;
      }

      v61 = *v50;
      v62 = v50[1];
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v78 = v61;
      v79 = v62;
LABEL_141:
      if (v61 && !*(***a4 + 49))
      {
        v63 = *(a1 + 48);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v64 = *(a3 + 23);
          v65 = (v64 & 0x80u) != 0;
          v66 = *a3;
          if ((v64 & 0x80u) != 0)
          {
            v64 = *(a3 + 8);
          }

          if (!v65)
          {
            v66 = a3;
          }

          if (v64)
          {
            v67 = v66;
          }

          else
          {
            v67 = "<invalid>";
          }

          *buf = 136315650;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          v90 = v67;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I %s%sCreating controller for %s", buf, 0x20u);
        }

        sub_100004AA0(buf, (a1 + 16));
        v68 = *&buf[8];
        if (*&buf[8])
        {
          v69 = *buf;
          atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
          sub_100004A34(v68);
          v75 = 0;
          v76 = 0;
          v70 = std::__shared_weak_count::lock(v68);
          v71 = v70;
          if (v70)
          {
            v72 = (v69 + 8);
            if (!v69)
            {
              v72 = 0;
            }

            atomic_fetch_add_explicit(&v70->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          else
          {
            v72 = 0;
          }

          v75 = v72;
          v76 = v70;
          std::__shared_weak_count::__release_weak(v68);
          if (v71)
          {
            sub_100004A34(v71);
          }
        }

        else
        {
          v75 = 0;
          v76 = 0;
        }

        DDBControlImpl::create(&v77, a1 + 56, a1 + 32, a4, &v78);
        v73 = v77;
        v77 = 0uLL;
        v74 = __p[1];
        *__p = v73;
        if (v74)
        {
          sub_100004A34(v74);
          if (*(&v77 + 1))
          {
            sub_100004A34(*(&v77 + 1));
          }
        }

        if (v76)
        {
          std::__shared_weak_count::__release_weak(v76);
        }

        sub_1000D51C0(buf, a3, __p);
        sub_10036F9E4((a1 + 120), buf, buf);
        if (v91)
        {
          sub_100004A34(v91);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }
      }

      if (v79)
      {
        sub_100004A34(v79);
      }
    }

    if (!__p[0])
    {
      goto LABEL_174;
    }

    (*(*__p[0] + 16))(__p[0]);
    (*(*__p[0] + 24))(__p[0]);
    v43 = __p[0];
    if (!__p[0])
    {
      goto LABEL_174;
    }
  }

  v46 = (*(*v43 + 80))(v43);
  v47 = *(a3 + 24);
  if (v47 <= 2)
  {
    if (v47 == 1)
    {
      v52 = 1;
    }

    else
    {
      if (v47 != 2)
      {
        goto LABEL_122;
      }

      v52 = 0;
    }

    (*(*__p[0] + 40))(__p[0], v52, **a4, a2);
    goto LABEL_122;
  }

  switch(v47)
  {
    case 3u:
      v48 = __p[0];
      v49 = (*__p[0] + 48);
      goto LABEL_119;
    case 4u:
      v48 = __p[0];
      v49 = (*__p[0] + 56);
      goto LABEL_119;
    case 5u:
      v48 = __p[0];
      v49 = (*__p[0] + 64);
LABEL_119:
      (*v49)(v48);
      break;
  }

LABEL_122:
  v53 = (*(*__p[0] + 80))(__p[0]);
  v54 = *(a3 + 23);
  if (v54 >= 0)
  {
    v55 = *(a3 + 23);
  }

  else
  {
    v55 = *(a3 + 8);
  }

  v56 = *(a1 + 167);
  v57 = v56;
  if ((v56 & 0x80u) != 0)
  {
    v56 = *(a1 + 152);
  }

  if (v55 == v56)
  {
    v58 = v53;
    v59 = v54 >= 0 ? a3 : *a3;
    v60 = v57 >= 0 ? (a1 + 144) : *(a1 + 144);
    if (!memcmp(v59, v60, v55) && v46 != v58)
    {
      (*(**(a1 + 240) + 24))(*(a1 + 240), v58);
    }
  }

LABEL_174:
  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }
}

void sub_10036C62C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, void *__p, std::__shared_weak_count *a37, int a38, __int16 a39, char a40, char a41)
{
  sub_1000D522C(v41 - 112);
  if (a14)
  {
    sub_100004A34(a14);
  }

  if (a37)
  {
    sub_100004A34(a37);
  }

  _Unwind_Resume(a1);
}

void sub_10036C7B0(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 48);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = "";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sdetected change in current_data_slot", &buf, 0x16u);
  }

  v52 = 0;
  v53 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
  v6 = ServiceMap;
  v8 = v7;
  if ((v7 & 0x8000000000000000) != 0)
  {
    v9 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
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
  buf.__r_.__value_.__r.__words[0] = v8;
  v12 = sub_100009510(&v6[1].__m_.__sig, &buf);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v6);
  v13 = 0;
  v15 = 1;
LABEL_11:
  (*(*v14 + 8))(&v52, v14, *(a1 + 88));
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  v16 = v52;
  v17 = *(a1 + 48);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (!v16)
  {
    if (v18)
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = "";
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sno active personality!", &buf, 0x16u);
    }

    memset(&buf, 0, sizeof(buf));
    std::string::operator=((a1 + 144), &buf);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    goto LABEL_30;
  }

  if (v18)
  {
    data = v16[1].__r_.__value_.__l.__data_;
    v20 = v16 + 1;
    v19 = data;
    size = HIBYTE(v20->__r_.__value_.__r.__words[2]);
    v23 = (size & 0x80u) != 0;
    if ((size & 0x80u) != 0)
    {
      size = v20->__r_.__value_.__l.__size_;
    }

    if (!v23)
    {
      v19 = v20;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
    *(buf.__r_.__value_.__r.__words + 4) = "";
    if (!size)
    {
      v19 = "<invalid>";
    }

    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    v55 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sactive personality: %s", &buf, 0x20u);
    v16 = v52;
  }

  std::string::operator=((a1 + 144), v16 + 1);
  v24 = sub_100007A6C(a1 + 120, (a1 + 144));
  if (a1 + 128 != v24)
  {
    v25 = (*(**(v24 + 56) + 80))(*(v24 + 56));
    goto LABEL_31;
  }

  v26 = *(a1 + 48);
  v25 = 0;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = "";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%sno DDB controller for active personality!!", &buf, 0x16u);
LABEL_30:
    v25 = 0;
  }

LABEL_31:
  v50 = 0;
  v51 = 0;
  v27 = Registry::getServiceMap(*(a1 + 56));
  v28 = v27;
  if ((v7 & 0x8000000000000000) != 0)
  {
    v29 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v30 = 5381;
    do
    {
      v7 = v30;
      v31 = *v29++;
      v30 = (33 * v30) ^ v31;
    }

    while (v31);
  }

  std::mutex::lock(v27);
  buf.__r_.__value_.__r.__words[0] = v7;
  v32 = sub_100009510(&v28[1].__m_.__sig, &buf);
  if (v32)
  {
    v34 = v32[3];
    v33 = v32[4];
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v28);
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v33);
      v35 = 0;
      goto LABEL_39;
    }
  }

  else
  {
    v34 = 0;
  }

  std::mutex::unlock(v28);
  v33 = 0;
  v35 = 1;
LABEL_39:
  (*(*v34 + 8))(&v50, v34, *a2);
  if ((v35 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  if (!v50 || (v36 = sub_100007A6C(a1 + 120, (v50 + 24)), a1 + 128 == v36))
  {
    if ((v25 & 1) == 0)
    {
      goto LABEL_50;
    }

    v38 = 0;
  }

  else
  {
    v37 = (*(**(v36 + 56) + 80))(*(v36 + 56));
    v38 = v37;
    if (v25 == v37)
    {
LABEL_50:
      v42 = *(a1 + 48);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = asStringBool(v25);
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
        *(buf.__r_.__value_.__r.__words + 4) = "";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
        v55 = v43;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I %s%sDedicated bearer management support IS NOT changed: %s", &buf, 0x20u);
      }

      goto LABEL_52;
    }
  }

  v39 = *(a1 + 48);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = asStringBool(v38);
    v41 = asStringBool(v25);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315906;
    *(buf.__r_.__value_.__r.__words + 4) = "";
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = "";
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
    v55 = v40;
    v56 = 2080;
    v57 = v41;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%sDedicated bearer management support changed %s -> %s", &buf, 0x2Au);
  }

  (*(**(a1 + 240) + 24))(*(a1 + 240), v25);
LABEL_52:
  if (*a2 != *(a1 + 88))
  {
    if (!v50 || (v44 = sub_100007A6C(a1 + 120, (v50 + 24)), a1 + 128 == v44))
    {
      v47 = 0;
      v46 = 0;
    }

    else
    {
      v45 = *(v44 + 56);
      sub_10000501C(&buf, "custom-qos");
      (*(*v45 + 88))(&v48, v45, &buf);
      v47 = v48;
      v46 = v49;
      v48 = 0;
      v49 = 0;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }

    (*(**(a1 + 240) + 48))(*(a1 + 240), v47);
    if (v46)
    {
      sub_100004A34(v46);
    }
  }

  if (v51)
  {
    sub_100004A34(v51);
  }

  if (v53)
  {
    sub_100004A34(v53);
  }
}

void sub_10036CE50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10036CF18(uint64_t a1, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v5, *a2, *(a2 + 1));
  }

  else
  {
    *v5 = *a2;
    v5[2] = *(a2 + 2);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&__p, *a3, *(a3 + 1));
  }

  else
  {
    __p = *a3;
    v7 = *(a3 + 2);
  }

  v8[0] = 0;
  v8[1] = 0;
  sub_100004AA0(v8, (a1 + 16));
  operator new();
}

void sub_10036D0B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10036D0DC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 16));
  operator new();
}

void sub_10036D230(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, char a5)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v9, *a2, *(a2 + 1));
  }

  else
  {
    *v9 = *a2;
    v9[2] = *(a2 + 2);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&v10, *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    v11 = *(a3 + 2);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(&__p, *a4, *(a4 + 1));
  }

  else
  {
    __p = *a4;
    v13 = *(a4 + 2);
  }

  v14 = a5;
  v15[0] = 0;
  v15[1] = 0;
  sub_100004AA0(v15, (a1 + 16));
  operator new();
}

void sub_10036D438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10036D47C(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, char a5)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v9, *a2, *(a2 + 1));
  }

  else
  {
    *v9 = *a2;
    v9[2] = *(a2 + 2);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&v10, *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    v11 = *(a3 + 2);
  }

  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(&__p, *a4, *(a4 + 1));
  }

  else
  {
    __p = *a4;
    v13 = *(a4 + 2);
  }

  v14 = a5;
  v15[0] = 0;
  v15[1] = 0;
  sub_100004AA0(v15, (a1 + 16));
  operator new();
}

void sub_10036D684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10036D6C8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v57 = "";
    v58 = 2080;
    v59 = "";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s |--- Dedicated Bearer Manager:", buf, 0x16u);
    v2 = *(a1 + 48);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = subscriber::asString();
    v4 = (a1 + 144);
    v5 = *(a1 + 167);
    v6 = (v5 & 0x80u) != 0;
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a1 + 152);
    }

    if (v6)
    {
      v4 = *(a1 + 144);
    }

    *buf = 136315906;
    v57 = "";
    v58 = 2080;
    if (!v5)
    {
      v4 = "<invalid>";
    }

    v59 = "";
    v60 = 2080;
    v61 = v3;
    v62 = 2080;
    v63 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | Active slot:%s, personality:%s", buf, 0x2Au);
  }

  if (!*(a1 + 208))
  {
    v7 = *(a1 + 48);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v57 = "";
      v58 = 2080;
      v59 = "";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s | No active sessions", buf, 0x16u);
    }
  }

  v8 = *(a1 + 192);
  if (v8 != (a1 + 200))
  {
    do
    {
      v9 = *(a1 + 48);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = v8[4];
        v11 = *(v8 + 55);
        v12 = v11;
        if ((v11 & 0x80u) != 0)
        {
          v11 = v8[5];
        }

        if (v12 >= 0)
        {
          v10 = (v8 + 4);
        }

        v13 = v8[9];
        if (!v11)
        {
          v10 = "<invalid>";
        }

        *buf = 136315906;
        v57 = "";
        v58 = 2080;
        v59 = "";
        v60 = 2080;
        v61 = v10;
        v62 = 2048;
        v63 = v13;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s%s | for persona %s -> %zu session(s)", buf, 0x2Au);
      }

      v14 = v8[7];
      if (v14 != v8 + 8)
      {
        do
        {
          v15 = *(a1 + 48);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = v14 + 4;
            if (*(v14 + 55) < 0)
            {
              v16 = *v16;
            }

            v17 = (v14 + 7);
            if (*(v14 + 79) < 0)
            {
              v17 = *v17;
            }

            *buf = 136315906;
            v57 = "";
            v58 = 2080;
            v59 = "";
            v60 = 2080;
            v61 = v16;
            v62 = 2080;
            v63 = v17;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%s |   %s : %s", buf, 0x2Au);
          }

          v18 = v14[1];
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
              v19 = v14[2];
              v20 = *v19 == v14;
              v14 = v19;
            }

            while (!v20);
          }

          v14 = v19;
        }

        while (v19 != v8 + 8);
      }

      v21 = v8[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v8[2];
          v20 = *v22 == v8;
          v8 = v22;
        }

        while (!v20);
      }

      v8 = v22;
    }

    while (v22 != (a1 + 200));
  }

  if (!*(a1 + 184))
  {
    v23 = *(a1 + 48);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v57 = "";
      v58 = 2080;
      v59 = "";
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%s | No current attempts to establish session", buf, 0x16u);
    }
  }

  v24 = *(a1 + 168);
  if (v24 != (a1 + 176))
  {
    do
    {
      v25 = *(a1 + 48);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v24[4];
        v27 = *(v24 + 55);
        v28 = v27;
        if ((v27 & 0x80u) != 0)
        {
          v27 = v24[5];
        }

        if (v28 >= 0)
        {
          v26 = (v24 + 4);
        }

        v29 = v24[9];
        if (!v27)
        {
          v26 = "<invalid>";
        }

        *buf = 136315906;
        v57 = "";
        v58 = 2080;
        v59 = "";
        v60 = 2080;
        v61 = v26;
        v62 = 2048;
        v63 = v29;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I %s%s | for persona %s -> %zu attempt(s) to add", buf, 0x2Au);
      }

      v30 = v24[7];
      if (v30 != v24 + 8)
      {
        do
        {
          v31 = *(a1 + 48);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = v30 + 4;
            if (*(v30 + 55) < 0)
            {
              v32 = *v32;
            }

            *buf = 136315650;
            v57 = "";
            v58 = 2080;
            v59 = "";
            v60 = 2080;
            v61 = v32;
            _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I %s%s |   %s", buf, 0x20u);
          }

          v33 = v30[1];
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
              v34 = v30[2];
              v20 = *v34 == v30;
              v30 = v34;
            }

            while (!v20);
          }

          v30 = v34;
        }

        while (v34 != v24 + 8);
      }

      v35 = v24[1];
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
          v36 = v24[2];
          v20 = *v36 == v24;
          v24 = v36;
        }

        while (!v20);
      }

      v24 = v36;
    }

    while (v36 != (a1 + 176));
  }

  if (!*(a1 + 232))
  {
    v37 = *(a1 + 48);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v57 = "";
      v58 = 2080;
      v59 = "";
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I %s%s | No current attempts to remove session", buf, 0x16u);
    }
  }

  v38 = *(a1 + 216);
  if (v38 != (a1 + 224))
  {
    do
    {
      v39 = *(a1 + 48);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = v38[4];
        v41 = *(v38 + 55);
        v42 = v41;
        if ((v41 & 0x80u) != 0)
        {
          v41 = v38[5];
        }

        if (v42 >= 0)
        {
          v40 = (v38 + 4);
        }

        v43 = v38[9];
        if (!v41)
        {
          v40 = "<invalid>";
        }

        *buf = 136315906;
        v57 = "";
        v58 = 2080;
        v59 = "";
        v60 = 2080;
        v61 = v40;
        v62 = 2048;
        v63 = v43;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%s | for persona %s -> %zu attempt(s) to remove", buf, 0x2Au);
      }

      v44 = v38[7];
      if (v44 != v38 + 8)
      {
        do
        {
          v45 = *(a1 + 48);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v46 = v44 + 4;
            if (*(v44 + 55) < 0)
            {
              v46 = *v46;
            }

            v47 = (v44 + 7);
            if (*(v44 + 79) < 0)
            {
              v47 = *v47;
            }

            *buf = 136315906;
            v57 = "";
            v58 = 2080;
            v59 = "";
            v60 = 2080;
            v61 = v46;
            v62 = 2080;
            v63 = v47;
            _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I %s%s |   %s : %s", buf, 0x2Au);
          }

          v48 = v44[1];
          if (v48)
          {
            do
            {
              v49 = v48;
              v48 = *v48;
            }

            while (v48);
          }

          else
          {
            do
            {
              v49 = v44[2];
              v20 = *v49 == v44;
              v44 = v49;
            }

            while (!v20);
          }

          v44 = v49;
        }

        while (v49 != v38 + 8);
      }

      v50 = v38[1];
      if (v50)
      {
        do
        {
          v51 = v50;
          v50 = *v50;
        }

        while (v50);
      }

      else
      {
        do
        {
          v51 = v38[2];
          v20 = *v51 == v38;
          v38 = v51;
        }

        while (!v20);
      }

      v38 = v51;
    }

    while (v51 != (a1 + 224));
  }

  v52 = *(a1 + 120);
  v53 = (a1 + 128);
  if (v52 != v53)
  {
    do
    {
      (*(*v52[7] + 32))(v52[7]);
      v54 = v52[1];
      if (v54)
      {
        do
        {
          v55 = v54;
          v54 = *v54;
        }

        while (v54);
      }

      else
      {
        do
        {
          v55 = v52[2];
          v20 = *v55 == v52;
          v52 = v55;
        }

        while (!v20);
      }

      v52 = v55;
    }

    while (v55 != v53);
  }
}

void sub_10036DF00(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_10000FED0(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 16));
  operator new();
}

void sub_10036E02C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10036E03C(unint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = 0uLL;
  sub_10036EAD4(v6 + 1, *a2, a2[1], (a2[1] - *a2) >> 4);
  sub_100370E34(&v7, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 16));
  operator new();
}

void sub_10036E1A4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10036E1BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ctu::cf::assign();
  v5[4] = a1;
  memset(&v5[5], 0, 24);
  memset(&v6[32], 0, 15);
  sub_1003713A4(v6, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 16));
  operator new();
}

void sub_10036E35C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10036E390(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_1003713A4(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 16));
  operator new();
}

void sub_10036E4BC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10036E4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ctu::cf::assign();
  v5[4] = a1;
  memset(&v5[5], 0, 24);
  memset(&v6[32], 0, 15);
  sub_10037236C(v6, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 16));
  operator new();
}

void sub_10036E66C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10036E6A0(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_1003725F4(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 16));
  operator new();
}

void sub_10036E7CC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10036E7DC(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_100372C90(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 16));
  operator new();
}

void sub_10036E908(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10036E918(uint64_t a1, uint64_t a2)
{
  v3[4] = a1;
  sub_1003713A4(&v4, a2);
  v3[0] = 0;
  v3[1] = 0;
  sub_100004AA0(v3, (a1 + 16));
  operator new();
}

void sub_10036EA44(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10036EA58(uint64_t a1)
{
  sub_10036EE9C(a1);

  operator delete();
}

void sub_10036EA98(uint64_t a1)
{
  sub_10036EE9C(a1 - 8);

  operator delete();
}

uint64_t *sub_10036EAD4(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10009A404(result, a4);
  }

  return result;
}

void sub_10036EB3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1000212F4(&a9);
  _Unwind_Resume(a1);
}

void *sub_10036EB5C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v8 = 0;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  LOBYTE(v8) = 1;
  sub_10036EBE4(v7);
  return v4;
}

uint64_t sub_10036EBE4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000FA378(a1);
  }

  return a1;
}

uint64_t sub_10036EC1C(uint64_t a1)
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

uint64_t sub_10036EC9C(uint64_t a1)
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

uint64_t sub_10036ED1C(uint64_t a1)
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

uint64_t sub_10036ED9C(uint64_t a1)
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

uint64_t sub_10036EE1C(uint64_t a1)
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

uint64_t sub_10036EE9C(uint64_t a1)
{
  *a1 = off_101E45988;
  *(a1 + 8) = off_101E45A28;
  v2 = *(a1 + 248);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1000DCFFC(a1 + 216, *(a1 + 224));
  sub_1000DCFFC(a1 + 192, *(a1 + 200));
  sub_10036F160(a1 + 168, *(a1 + 176));
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  sub_1002472DC(a1 + 120, *(a1 + 128));
  sub_10013DF64(a1 + 96, *(a1 + 104));
  v3 = *(a1 + 80);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 48));
  sub_1000C0544((a1 + 16));
  TMKXPCServer.shutdown()();
  return a1;
}

void sub_10036F004(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[4], v1, sub_10036F0D8);
  __cxa_rethrow();
}

void sub_10036F044(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10036F098(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10036F0D8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 72))();
  }

  return result;
}

uint64_t *sub_10036F104(void *a1)
{
  v3 = a1;
  if (*a1)
  {
    v1 = *(*a1 + 8);
    if (v1)
    {
      sub_100004A34(v1);
    }

    operator delete();
  }

  return sub_1000049E0(&v3);
}

void sub_10036F160(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10036F160(a1, *a2);
    sub_10036F160(a1, a2[1]);
    sub_1002CB3DC((a2 + 4));

    operator delete(a2);
  }
}

void *sub_10036F1BC(void *a1)
{
  *a1 = off_101E45C28;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10036F208(void *a1)
{
  *a1 = off_101E45C28;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10036F2E8(uint64_t result, uint64_t a2)
{
  *a2 = off_101E45C28;
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

void sub_10036F328(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10036F338(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10036F378(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v13 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v6);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v6);
  }

  v9 = a1[4];
  if (v9)
  {
    v10 = a1[2];
    v11 = std::__shared_weak_count::lock(v9);
    if (v11)
    {
      v12 = v11;
      if (a1[3])
      {
        sub_10036C7B0(v10, &v13);
      }

      sub_100004A34(v12);
    }
  }
}

uint64_t sub_10036F470(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10036F4BC(void *a1)
{
  *a1 = off_101E45CA8;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10036F508(void *a1)
{
  *a1 = off_101E45CA8;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10036F5E8(uint64_t result, uint64_t a2)
{
  *a2 = off_101E45CA8;
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

void sub_10036F628(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10036F638(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10036F678(uint64_t *a1, xpc_object_t *a2)
{
  sub_10013E998(a1[1], a2);
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
        sub_1000687A4(v4);
      }

      sub_100004A34(v6);
    }
  }
}

uint64_t sub_10036F708(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10036F754(void *a1)
{
  *a1 = off_101E45D28;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10036F7A0(void *a1)
{
  *a1 = off_101E45D28;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10036F880(uint64_t result, uint64_t a2)
{
  *a2 = off_101E45D28;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10036F8C0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10036F8D0(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10036F910(void *a1)
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
        sub_10036D6C8(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10036F998(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

char *sub_10036F9E4(uint64_t **a1, uint64_t ***a2, uint64_t a3)
{
  v8 = 0;
  v3 = *sub_100005C2C(a1, &v8, a2);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_10036FA80();
  }

  return v3;
}

uint64_t *sub_10036FAF8(char **a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v3 = sub_100007A6C(*v1 + 120, (v1 + 8));
  if (v2 + 128 != v3)
  {
    v4 = *(v2 + 240);
    (*(**(v3 + 56) + 88))(&v8);
    (*(*v4 + 48))(v4, v8);
    if (v9)
    {
      sub_100004A34(v9);
    }
  }

  sub_10036FBEC(&v7);
  return sub_1000049E0(&v6);
}

void sub_10036FBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_10036FBEC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10036FBEC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
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

uint64_t *sub_10036FC54(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = sub_100007A6C(*v1 + 120, (v1 + 8));
  if (v2 + 128 != v3)
  {
    v4 = *(v2 + 240);
    v5 = (*(**(v3 + 56) + 80))(*(v3 + 56));
    (*(*v4 + 24))(v4, v5);
  }

  sub_1000EF424(&v8);
  return sub_1000049E0(&v7);
}

void sub_10036FD00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000EF424(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10036FD1C(uint64_t *a1)
{
  v1 = *a1;
  v38 = a1;
  v39 = v1;
  v2 = *v1;
  v3 = sub_100007A6C(*v1 + 120, (v1 + 8));
  if (v2 + 128 == v3)
  {
    goto LABEL_66;
  }

  *buf = v1 + 8;
  v4 = sub_100370384((v2 + 168), (v1 + 8), &unk_101802C98, buf, __p);
  v5 = (v1 + 32);
  v6 = sub_100007A6C((v4 + 7), (v1 + 32));
  *buf = v1 + 8;
  if (sub_100370384((v2 + 168), (v1 + 8), &unk_101802C98, buf, __p) + 8 != v6)
  {
    *buf = v1 + 8;
    v7 = sub_100370384((v2 + 168), (v1 + 8), &unk_101802C98, buf, __p);
    sub_100075658(v7 + 7, v6);
    *buf = v1 + 8;
    if (!sub_100370384((v2 + 168), (v1 + 8), &unk_101802C98, buf, __p)[9])
    {
      sub_100370528((v2 + 168), (v1 + 8));
    }

    if (*(v1 + 80) == 1)
    {
      *buf = v1 + 8;
      v8 = sub_100370584((v2 + 192), (v1 + 8), &unk_101802C98, buf, __p);
      *buf = v1 + 32;
      v9 = sub_100173F08(v8 + 7, (v1 + 32), &unk_101802C98, buf, __p);
      v10 = (v1 + 56);
      std::string::operator=((v9 + 7), (v1 + 56));
      v11 = *(v2 + 48);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      v12 = *(v1 + 31);
      v13 = (v12 & 0x80u) != 0;
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v1 + 16);
      }

      if (v13)
      {
        v14 = *(v1 + 8);
      }

      else
      {
        v14 = (v1 + 8);
      }

      if (v12)
      {
        v15 = v14;
      }

      else
      {
        v15 = "<invalid>";
      }

      v16 = v1 + 32;
      if (*(v1 + 55) < 0)
      {
        v16 = *v5;
      }

      if (*(v1 + 79) < 0)
      {
        v10 = *v10;
      }

      *buf = 136316162;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      v49 = v15;
      v50 = 2080;
      v51 = v16;
      v52 = 2080;
      v53 = v10;
      v17 = "#I %s%sadded new session for %s: internal:%s = network:%s";
      v18 = v11;
      v19 = 52;
    }

    else
    {
      v28 = *(v2 + 48);
      if (!os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_48;
      }

      v29 = *(v1 + 31);
      v30 = (v29 & 0x80u) != 0;
      if ((v29 & 0x80u) != 0)
      {
        v29 = *(v1 + 16);
      }

      if (v30)
      {
        v31 = *(v1 + 8);
      }

      else
      {
        v31 = (v1 + 8);
      }

      if (v29)
      {
        v32 = v31;
      }

      else
      {
        v32 = "<invalid>";
      }

      v33 = v1 + 32;
      if (*(v1 + 55) < 0)
      {
        v33 = *v5;
      }

      *buf = 136315906;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      v49 = v32;
      v50 = 2080;
      v51 = v33;
      v17 = "#I %s%sfailed attempted to add new session for %s: internal:%s";
      v18 = v28;
      v19 = 42;
    }

    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
LABEL_48:
    v34 = *(v2 + 240);
    if (*(v1 + 55) < 0)
    {
      sub_100005F2C(__dst, *(v1 + 32), *(v1 + 40));
    }

    else
    {
      *__dst = *v5;
      v41 = *(v1 + 48);
    }

    if (SHIBYTE(v41) < 0)
    {
      sub_100005F2C(__p, __dst[0], __dst[1]);
    }

    else
    {
      *__p = *__dst;
      v45 = v41;
    }

    v43 = 0;
    if (SHIBYTE(v45) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      *&buf[16] = v45;
    }

    v46 = 0;
    if (ctu::cf::convert_copy())
    {
      v35 = v43;
      v43 = v46;
      v47 = v35;
      sub_100005978(&v47);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v36 = v43;
    v42 = v43;
    v43 = 0;
    sub_100005978(&v43);
    if (SHIBYTE(v45) < 0)
    {
      operator delete(__p[0]);
    }

    (*(*v34 + 32))(v34, v36, *(v1 + 80));
    sub_100005978(&v42);
    if (SHIBYTE(v41) < 0)
    {
      v27 = __dst[0];
      goto LABEL_65;
    }

    goto LABEL_66;
  }

  if (*(v1 + 80) == 1)
  {
    v20 = *(v2 + 48);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v1 + 32;
      if (*(v1 + 55) < 0)
      {
        v21 = *v5;
      }

      v22 = *(v1 + 31);
      v23 = (v22 & 0x80u) != 0;
      if ((v22 & 0x80u) != 0)
      {
        v22 = *(v1 + 16);
      }

      if (v23)
      {
        v24 = *(v1 + 8);
      }

      else
      {
        v24 = (v1 + 8);
      }

      if (v22)
      {
        v25 = v24;
      }

      else
      {
        v25 = "<invalid>";
      }

      *buf = 136315906;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      *&buf[22] = 2080;
      v49 = v21;
      v50 = 2080;
      v51 = v25;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sattempt %s is not found in %s pool. Removing it", buf, 0x2Au);
    }

    v26 = *(v3 + 56);
    sub_10000501C(buf, "custom-qos");
    (*(*v26 + 112))(v26, buf, v1 + 32, v1 + 56);
    if ((buf[23] & 0x80000000) != 0)
    {
      v27 = *buf;
LABEL_65:
      operator delete(v27);
    }
  }

LABEL_66:
  sub_10037030C(&v39);
  return sub_1000049E0(&v38);
}

void sub_10037027C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  sub_10037030C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10037030C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
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

void *sub_100370384(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v5 = *sub_100005C2C(a1, &v10, a2);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_100370438();
  }

  return v5;
}

uint64_t sub_1003704DC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1002CB3DC(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_100370528(uint64_t **a1, char *a2)
{
  v3 = sub_100007A6C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1000194D8(a1, v3);
  sub_1002CB3DC((v4 + 4));
  operator delete(v4);
  return 1;
}

void *sub_100370584(uint64_t **a1, uint64_t ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v5 = *sub_100005C2C(a1, &v10, a2);
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_100370638();
  }

  return v5;
}

uint64_t *sub_1003706DC(uint64_t *a1)
{
  v1 = *a1;
  v29 = a1;
  v30 = v1;
  v2 = *v1;
  if (v2 + 128 != sub_100007A6C(*v1 + 120, (v1 + 8)))
  {
    *buf = v1 + 8;
    v3 = sub_100370584((v2 + 216), (v1 + 8), &unk_101802C98, buf, __p);
    v4 = (v1 + 32);
    v5 = sub_100007A6C((v3 + 7), (v1 + 32));
    *buf = v1 + 8;
    if (sub_100370584((v2 + 216), (v1 + 8), &unk_101802C98, buf, __p) + 8 != v5)
    {
      v6 = *(v1 + 80);
      v7 = *(v2 + 48);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6 == 1)
      {
        if (v8)
        {
          v9 = *(v1 + 31);
          v10 = (v9 & 0x80u) != 0;
          if ((v9 & 0x80u) != 0)
          {
            v9 = *(v1 + 16);
          }

          if (v10)
          {
            v11 = *(v1 + 8);
          }

          else
          {
            v11 = (v1 + 8);
          }

          if (v9)
          {
            v12 = v11;
          }

          else
          {
            v12 = "<invalid>";
          }

          v13 = v1 + 32;
          if (*(v1 + 55) < 0)
          {
            v13 = *v4;
          }

          v14 = (v1 + 56);
          if (*(v1 + 79) < 0)
          {
            v14 = *v14;
          }

          *buf = 136316162;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          v40 = v12;
          v41 = 2080;
          v42 = v13;
          v43 = 2080;
          v44 = v14;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%ssession removed for %s: internal:%s = network:%s", buf, 0x34u);
        }

        *buf = v1 + 8;
        v15 = sub_100370584((v2 + 216), (v1 + 8), &unk_101802C98, buf, __p);
        sub_1000194D8(v15 + 7, v5);
        sub_1000DD108((v5 + 4));
        operator delete(v5);
        *buf = v1 + 8;
        if (!sub_100370584((v2 + 216), (v1 + 8), &unk_101802C98, buf, __p)[9])
        {
          sub_100370C34((v2 + 216), (v1 + 8));
        }

        v16 = *(v2 + 240);
        if (*(v1 + 55) < 0)
        {
          sub_100005F2C(__dst, *(v1 + 32), *(v1 + 40));
        }

        else
        {
          *__dst = *v4;
          v32 = *(v1 + 48);
        }

        if (SHIBYTE(v32) < 0)
        {
          sub_100005F2C(__p, __dst[0], __dst[1]);
        }

        else
        {
          *__p = *__dst;
          v36 = v32;
        }

        v34 = 0;
        if (SHIBYTE(v36) < 0)
        {
          sub_100005F2C(buf, __p[0], __p[1]);
        }

        else
        {
          *buf = *__p;
          *&buf[16] = v36;
        }

        v37 = 0;
        if (ctu::cf::convert_copy())
        {
          v26 = v34;
          v34 = v37;
          v38 = v26;
          sub_100005978(&v38);
        }

        if ((buf[23] & 0x80000000) != 0)
        {
          operator delete(*buf);
        }

        v27 = v34;
        v33 = v34;
        v34 = 0;
        sub_100005978(&v34);
        if (SHIBYTE(v36) < 0)
        {
          operator delete(__p[0]);
        }

        (*(*v16 + 40))(v16, v27);
        sub_100005978(&v33);
        if (SHIBYTE(v32) < 0)
        {
          operator delete(__dst[0]);
        }
      }

      else
      {
        if (v8)
        {
          v17 = *(v1 + 31);
          v18 = (v17 & 0x80u) != 0;
          if ((v17 & 0x80u) != 0)
          {
            v17 = *(v1 + 16);
          }

          if (v18)
          {
            v19 = *(v1 + 8);
          }

          else
          {
            v19 = (v1 + 8);
          }

          if (v17)
          {
            v20 = v19;
          }

          else
          {
            v20 = "<invalid>";
          }

          v21 = v1 + 32;
          if (*(v1 + 55) < 0)
          {
            v21 = *v4;
          }

          v22 = (v1 + 56);
          if (*(v1 + 79) < 0)
          {
            v22 = *v22;
          }

          *buf = 136316162;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          v40 = v20;
          v41 = 2080;
          v42 = v21;
          v43 = 2080;
          v44 = v22;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sfailed to remove session for %s: internal:%s = network:%s - restoring", buf, 0x34u);
        }

        *buf = v1 + 8;
        v23 = sub_100370584((v2 + 216), (v1 + 8), &unk_101802C98, buf, __p);
        sub_1000194D8(v23 + 7, v5);
        sub_1000DD108((v5 + 4));
        operator delete(v5);
        *buf = v1 + 8;
        if (!sub_100370584((v2 + 216), (v1 + 8), &unk_101802C98, buf, __p)[9])
        {
          sub_100370C34((v2 + 216), (v1 + 8));
        }

        *buf = v1 + 8;
        v24 = sub_100370584((v2 + 192), (v1 + 8), &unk_101802C98, buf, __p);
        *buf = v1 + 32;
        v25 = sub_100173F08(v24 + 7, (v1 + 32), &unk_101802C98, buf, __p);
        std::string::operator=((v25 + 7), (v1 + 56));
      }
    }
  }

  sub_10037030C(&v30);
  return sub_1000049E0(&v29);
}

void sub_100370BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, const void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_100005978(&a20);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_10037030C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100370C34(uint64_t **a1, char *a2)
{
  v3 = sub_100007A6C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_1000194D8(a1, v3);
  sub_1000DD058((v4 + 4));
  operator delete(v4);
  return 1;
}

uint64_t *sub_100370C90(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = sub_100007A6C(*v1 + 120, (*v1 + 144));
  if (v2 + 128 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = (*(**(v3 + 56) + 80))(*(v3 + 56));
  }

  v5 = *(v2 + 48);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v10 = "";
    v11 = 2080;
    v12 = "";
    v13 = 2080;
    v14 = asStringBool(v4);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%shasDedicatedBearerSupport is %s", buf, 0x20u);
  }

  sub_10000FFD0(v1 + 8, v4);
  sub_100370DE4(&v8);
  return sub_1000049E0(&v7);
}

void sub_100370DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100370DE4(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100370DE4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 8);
    operator delete();
  }

  return a1;
}

uint64_t sub_100370E34(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100370EB4(void **a1)
{
  v1 = *a1;
  v27 = a1;
  v28 = v1;
  v2 = *v1;
  v3 = (*v1 + 144);
  v4 = sub_100007A6C(*v1 + 120, v3);
  if (v2 + 128 == v4)
  {
    v15 = *(v2 + 48);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(v2 + 167);
      v17 = (v16 & 0x80u) != 0;
      if ((v16 & 0x80u) != 0)
      {
        v16 = *(v2 + 152);
      }

      if (v17)
      {
        v18 = *(v2 + 144);
      }

      else
      {
        v18 = v3;
      }

      if (v16)
      {
        v19 = v18;
      }

      else
      {
        v19 = "<invalid>";
      }

      LODWORD(__p[0]) = 136315650;
      *(__p + 4) = "";
      WORD2(__p[1]) = 2080;
      *(&__p[1] + 6) = "";
      HIWORD(__p[2]) = 2080;
      v35 = v19;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sno controller for active personality '%s'", __p, 0x20u);
    }

    v20 = CFErrorCreate(0, kCFErrorDomainPOSIX, 2, 0);
    sub_10037134C((v1 + 4), 0, v20);
  }

  else
  {
    v32 = CFUUIDCreate(0);
    v31 = CFUUIDCreateString(0, v32);
    memset(__p, 0, sizeof(__p));
    ctu::cf::assign();
    *v29 = 0u;
    v30 = 0;
    v5 = *(v4 + 56);
    sub_10000501C(__p, "custom-qos");
    v6 = (*(*v5 + 104))(v5, __p, v29, v1 + 1);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v7 = *(v2 + 48);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        v9 = *(v2 + 167);
        v10 = (v9 & 0x80u) != 0;
        if ((v9 & 0x80u) != 0)
        {
          v9 = *(v2 + 152);
        }

        if (v10)
        {
          v11 = *(v2 + 144);
        }

        else
        {
          v11 = v3;
        }

        if (v9)
        {
          v12 = v11;
        }

        else
        {
          v12 = "<invalid>";
        }

        v13 = v29;
        if (v30 < 0)
        {
          v13 = v29[0];
        }

        LODWORD(__p[0]) = 136315906;
        *(__p + 4) = "";
        WORD2(__p[1]) = 2080;
        *(&__p[1] + 6) = "";
        HIWORD(__p[2]) = 2080;
        v35 = v12;
        v36 = 2080;
        v37 = v13;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sattempting new session for %s: internal:%s", __p, 0x2Au);
      }

      __p[0] = v3;
      v14 = sub_100370384((v2 + 168), v3, &unk_101802C98, __p, &v33);
      sub_100005BA0((v14 + 7), v29, v29);
      sub_10037134C((v1 + 4), v31, 0);
    }

    else
    {
      if (v8)
      {
        v21 = *(v2 + 167);
        v22 = (v21 & 0x80u) != 0;
        if ((v21 & 0x80u) != 0)
        {
          v21 = *(v2 + 152);
        }

        if (v22)
        {
          v23 = *(v2 + 144);
        }

        else
        {
          v23 = v3;
        }

        if (v21)
        {
          v24 = v23;
        }

        else
        {
          v24 = "<invalid>";
        }

        LODWORD(__p[0]) = 136315650;
        *(__p + 4) = "";
        WORD2(__p[1]) = 2080;
        *(&__p[1] + 6) = "";
        HIWORD(__p[2]) = 2080;
        v35 = v24;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sunable to initate <addSession> for %s", __p, 0x20u);
      }

      v25 = CFErrorCreate(0, kCFErrorDomainPOSIX, 45, 0);
      sub_10037134C((v1 + 4), 0, v25);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29[0]);
    }

    sub_100005978(&v31);
    sub_1000475BC(&v32);
  }

  sub_1003712E4(&v28);
  return sub_1000049E0(&v27);
}

void sub_100371260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, const void *a18, const void *a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  sub_100005978(&a18);
  sub_1000475BC(&a19);
  sub_1003712E4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003712E4(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10036EC1C(v1 + 32);
    v2 = (v1 + 8);
    sub_1000212F4(&v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_10037134C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_1003713A4(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100371424(const char **a1)
{
  v1 = *a1;
  v51 = a1;
  v52 = v1;
  v2 = *v1;
  v3 = (*v1 + 168);
  v4 = *v3;
  v5 = *v1 + 176;
  if (*v3 == v5)
  {
LABEL_9:
    v10 = *(v2 + 192);
    if (v10 == (v2 + 200))
    {
LABEL_18:
      v15 = *(v2 + 48);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v1 + 8;
        if (v1[31] < 0)
        {
          v16 = *v16;
        }

        *buf = 136315650;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        v55 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sunknown beared id: %s", buf, 0x20u);
      }

      v17 = CFErrorCreate(0, kCFErrorDomainPOSIX, 2, 0);
      sub_100371B4C((v1 + 32), v17);
      goto LABEL_88;
    }

    v11 = (v1 + 8);
    while (1)
    {
      v12 = sub_100007A6C((v10 + 7), v1 + 8);
      if (v10 + 8 != v12)
      {
        break;
      }

      v13 = v10[1];
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
          v14 = v10[2];
          v9 = *v14 == v10;
          v10 = v14;
        }

        while (!v9);
      }

      v10 = v14;
      if (v14 == (v2 + 200))
      {
        goto LABEL_18;
      }
    }

    sub_100371B4C((v1 + 32), 0);
    v24 = sub_100007A6C(v2 + 120, v10 + 32);
    v25 = (v12 + 56);
    if (v2 + 128 == v24)
    {
      v28 = *(v2 + 48);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v38 = (v2 + 144);
        v39 = *(v2 + 167);
        v40 = v39;
        if ((v39 & 0x80u) != 0)
        {
          v39 = *(v2 + 152);
        }

        if (v40 < 0)
        {
          v38 = *(v2 + 144);
        }

        if (!v39)
        {
          v38 = "<invalid>";
        }

        v41 = v1 + 8;
        if (v1[31] < 0)
        {
          v41 = *v11;
        }

        v42 = v12 + 56;
        if (*(v12 + 79) < 0)
        {
          v42 = *v25;
        }

        *buf = 136316162;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        v55 = v38;
        v56 = 2080;
        v57 = v41;
        v58 = 2080;
        v59 = v42;
        v43 = "#I %s%sno controller for active personality '%s' - just dropping internal:%s network:%s";
        goto LABEL_84;
      }
    }

    else
    {
      v26 = *(v24 + 56);
      sub_10000501C(buf, "custom-qos");
      v27 = (*(*v26 + 112))(v26, buf, v1 + 8, v12 + 56);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }

      v28 = *(v2 + 48);
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      if (v27)
      {
        if (v29)
        {
          v30 = *(v10 + 55);
          v31 = (v30 & 0x80u) != 0;
          if ((v30 & 0x80u) != 0)
          {
            v30 = v10[5];
          }

          if (v31)
          {
            v32 = v10[4];
          }

          else
          {
            v32 = (v10 + 4);
          }

          if (v30)
          {
            v33 = v32;
          }

          else
          {
            v33 = "<invalid>";
          }

          v34 = v1 + 8;
          if (v1[31] < 0)
          {
            v34 = *v11;
          }

          v35 = v12 + 56;
          if (*(v12 + 79) < 0)
          {
            v35 = *v25;
          }

          *buf = 136316162;
          *&buf[4] = "";
          *&buf[12] = 2080;
          *&buf[14] = "";
          *&buf[22] = 2080;
          v55 = v33;
          v56 = 2080;
          v57 = v34;
          v58 = 2080;
          v59 = v35;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%sremoving session for %s: internal:%s = network:%s", buf, 0x34u);
        }

        *buf = v10 + 4;
        v36 = sub_100370584((v2 + 216), v10 + 4, &unk_101802C98, buf, &v53);
        *buf = v1 + 8;
        v37 = sub_100173F08(v36 + 7, v1 + 1, &unk_101802C98, buf, &v53);
        std::string::operator=((v37 + 7), (v12 + 56));
        goto LABEL_86;
      }

      if (v29)
      {
        v44 = *(v10 + 55);
        v45 = (v44 & 0x80u) != 0;
        if ((v44 & 0x80u) != 0)
        {
          v44 = v10[5];
        }

        if (v45)
        {
          v46 = v10[4];
        }

        else
        {
          v46 = (v10 + 4);
        }

        if (v44)
        {
          v47 = v46;
        }

        else
        {
          v47 = "<invalid>";
        }

        v48 = v1 + 8;
        if (v1[31] < 0)
        {
          v48 = *v11;
        }

        v49 = v12 + 56;
        if (*(v12 + 79) < 0)
        {
          v49 = *v25;
        }

        *buf = 136316162;
        *&buf[4] = "";
        *&buf[12] = 2080;
        *&buf[14] = "";
        *&buf[22] = 2080;
        v55 = v47;
        v56 = 2080;
        v57 = v48;
        v58 = 2080;
        v59 = v49;
        v43 = "#I %s%sunable to proceed with removing for %s: internal:%s = network:%s -  just droping";
LABEL_84:
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v43, buf, 0x34u);
      }
    }

    (*(*v2 + 136))(v2, v10 + 4, v1 + 8, v12 + 56, 1);
LABEL_86:
    sub_1000194D8(v10 + 7, v12);
    sub_1000DD108(v12 + 32);
    operator delete(v12);
    if (!v10[9])
    {
      sub_100370C34((v2 + 192), v10 + 32);
    }

    goto LABEL_88;
  }

  while (1)
  {
    v6 = sub_100007A6C((v4 + 7), v1 + 8);
    if (v4 + 8 != v6)
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
      goto LABEL_9;
    }
  }

  sub_100075658(v4 + 7, v6);
  if (!v4[9])
  {
    sub_100370528(v3, v4 + 32);
  }

  v18 = *(v2 + 48);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v1 + 8;
    if (v1[31] < 0)
    {
      v19 = *(v1 + 1);
    }

    v20 = *(v4 + 55);
    v21 = (v20 & 0x80u) != 0;
    if ((v20 & 0x80u) != 0)
    {
      v20 = v4[5];
    }

    if (v21)
    {
      v22 = v4[4];
    }

    else
    {
      v22 = (v4 + 4);
    }

    if (v20)
    {
      v23 = v22;
    }

    else
    {
      v23 = "<invalid>";
    }

    *buf = 136315906;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 2080;
    v55 = v19;
    v56 = 2080;
    v57 = v23;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s%sincomplete attempt %s erased for %s", buf, 0x2Au);
  }

  sub_100371B4C((v1 + 32), 0);
  memset(buf, 0, sizeof(buf));
  (*(*v2 + 136))(v2, v4 + 4, v1 + 8, buf, 1);
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

LABEL_88:
  sub_100371AEC(&v52);
  return sub_1000049E0(&v51);
}

void sub_100371AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_100371AEC(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100371AEC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10036EC9C(v1 + 32);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_100371B4C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t *sub_100371BA0(uint64_t *a1)
{
  v1 = *a1;
  v20 = a1;
  v21 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sremoveAllDedicatedBearers", buf, 0x16u);
  }

  v4 = v2[24];
  if (v4 != v2 + 25)
  {
    do
    {
      v5 = v4[7];
      if (v5 != v4 + 8)
      {
        do
        {
          if (*(v5 + 55) < 0)
          {
            sub_100005F2C(__dst, v5[4], v5[5]);
          }

          else
          {
            *__dst = *(v5 + 2);
            v26 = v5[6];
          }

          if (SHIBYTE(v26) < 0)
          {
            sub_100005F2C(__p, __dst[0], __dst[1]);
          }

          else
          {
            *__p = *__dst;
            v29 = v26;
          }

          v30 = 0;
          if (SHIBYTE(v29) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
          }

          else
          {
            *buf = *__p;
            *&buf[16] = v29;
          }

          v31 = 0;
          if (ctu::cf::convert_copy())
          {
            v6 = v30;
            v30 = v31;
            v22[0] = v6;
            sub_100005978(v22);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v27 = v30;
          v30 = 0;
          sub_100005978(&v30);
          if (SHIBYTE(v29) < 0)
          {
            operator delete(__p[0]);
          }

          *buf = off_101E45DA8;
          v33 = buf;
          (*(*v2 + 16))(v2, v27, buf);
          sub_10036EC9C(buf);
          sub_100005978(&v27);
          if (SHIBYTE(v26) < 0)
          {
            operator delete(__dst[0]);
          }

          v7 = v5[1];
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
              v8 = v5[2];
              v9 = *v8 == v5;
              v5 = v8;
            }

            while (!v9);
          }

          v5 = v8;
        }

        while (v8 != v4 + 8);
      }

      v10 = v4[1];
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
          v11 = v4[2];
          v9 = *v11 == v4;
          v4 = v11;
        }

        while (!v9);
      }

      v4 = v11;
    }

    while (v11 != v2 + 25);
  }

  v12 = v2[21];
  if (v12 != v2 + 22)
  {
    do
    {
      v13 = v12[7];
      if (v13 != v12 + 8)
      {
        do
        {
          if (*(v13 + 55) < 0)
          {
            sub_100005F2C(v22, v13[4], v13[5]);
          }

          else
          {
            *v22 = *(v13 + 2);
            v23 = v13[6];
          }

          if (SHIBYTE(v23) < 0)
          {
            sub_100005F2C(__p, v22[0], v22[1]);
          }

          else
          {
            *__p = *v22;
            v29 = v23;
          }

          v27 = 0;
          if (SHIBYTE(v29) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
          }

          else
          {
            *buf = *__p;
            *&buf[16] = v29;
          }

          v30 = 0;
          if (ctu::cf::convert_copy())
          {
            v14 = v27;
            v27 = v30;
            v31 = v14;
            sub_100005978(&v31);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v24 = v27;
          v27 = 0;
          sub_100005978(&v27);
          if (SHIBYTE(v29) < 0)
          {
            operator delete(__p[0]);
          }

          *buf = off_101E45E38;
          v33 = buf;
          (*(*v2 + 16))(v2, v24, buf);
          sub_10036EC9C(buf);
          sub_100005978(&v24);
          if (SHIBYTE(v23) < 0)
          {
            operator delete(v22[0]);
          }

          v15 = v13[1];
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
              v16 = v13[2];
              v9 = *v16 == v13;
              v13 = v16;
            }

            while (!v9);
          }

          v13 = v16;
        }

        while (v16 != v12 + 8);
      }

      v17 = v12[1];
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
          v18 = v12[2];
          v9 = *v18 == v12;
          v12 = v18;
        }

        while (!v9);
      }

      v12 = v18;
    }

    while (v18 != v2 + 22);
  }

  sub_100371B4C(v1 + 8, 0);
  sub_10037216C(&v21);
  return sub_1000049E0(&v20);
}

void sub_10037207C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  sub_10037216C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10037216C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10036EC9C(v1 + 8);
    operator delete();
  }

  return a1;
}

uint64_t sub_100372248(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100372320(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10037236C(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1003723EC(char **a1)
{
  v1 = *a1;
  v15 = a1;
  v16 = v1;
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1 + 200;
  if (v3 == v4)
  {
LABEL_9:
    v8 = *(v2 + 168);
    v9 = (v2 + 176);
    if (v8 == v9)
    {
      v11 = 0;
    }

    else
    {
      do
      {
        v10 = sub_100007A6C((v8 + 7), v1 + 8);
        v11 = v8 + 8 != v10;
        if (v8 + 8 != v10)
        {
          break;
        }

        v12 = v8[1];
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
            v13 = v8[2];
            v7 = *v13 == v8;
            v8 = v13;
          }

          while (!v7);
        }

        v8 = v13;
      }

      while (v13 != v9);
    }
  }

  else
  {
    while (v3 + 8 == sub_100007A6C((v3 + 7), v1 + 8))
    {
      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
      if (v6 == v4)
      {
        goto LABEL_9;
      }
    }

    v11 = 1;
  }

  sub_100372598((v1 + 32), v11, 0);
  sub_100372538(&v16);
  return sub_1000049E0(&v15);
}

void sub_100372514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100372538(va);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100372538(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10036ED1C(v1 + 32);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

uint64_t sub_100372598(uint64_t a1, char a2, uint64_t a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_1003725F4(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100372674(void **a1)
{
  v1 = *a1;
  v25 = a1;
  v26 = v1;
  v2 = *v1;
  theArray = 0;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Mutable)
  {
    v4 = theArray;
    theArray = Mutable;
    *buf = v4;
    sub_1000279DC(buf);
  }

  v5 = v2[24];
  if (v5 != v2 + 25)
  {
    do
    {
      v6 = v5[7];
      if (v6 != v5 + 8)
      {
        do
        {
          v7 = theArray;
          if (*(v6 + 55) < 0)
          {
            sub_100005F2C(__dst, v6[4], v6[5]);
          }

          else
          {
            *__dst = *(v6 + 2);
            v31 = v6[6];
          }

          if (SHIBYTE(v31) < 0)
          {
            sub_100005F2C(__p, __dst[0], __dst[1]);
          }

          else
          {
            *__p = *__dst;
            v35 = v31;
          }

          v36 = 0;
          if (SHIBYTE(v35) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
          }

          else
          {
            *buf = *__p;
            *&buf[16] = v35;
          }

          v37 = 0;
          if (ctu::cf::convert_copy())
          {
            v8 = v36;
            v36 = v37;
            v27[0] = v8;
            sub_100005978(v27);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          value = v36;
          v36 = 0;
          sub_100005978(&v36);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(__p[0]);
          }

          CFArrayAppendValue(v7, value);
          sub_100005978(&value);
          if (SHIBYTE(v31) < 0)
          {
            operator delete(__dst[0]);
          }

          v9 = v6[1];
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
              v10 = v6[2];
              v11 = *v10 == v6;
              v6 = v10;
            }

            while (!v11);
          }

          v6 = v10;
        }

        while (v10 != v5 + 8);
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
          v11 = *v13 == v5;
          v5 = v13;
        }

        while (!v11);
      }

      v5 = v13;
    }

    while (v13 != v2 + 25);
  }

  v14 = v2[21];
  if (v14 != v2 + 22)
  {
    do
    {
      v15 = v14[7];
      if (v15 != v14 + 8)
      {
        do
        {
          v16 = theArray;
          if (*(v15 + 55) < 0)
          {
            sub_100005F2C(v27, v15[4], v15[5]);
          }

          else
          {
            *v27 = *(v15 + 2);
            v28 = v15[6];
          }

          if (SHIBYTE(v28) < 0)
          {
            sub_100005F2C(__p, v27[0], v27[1]);
          }

          else
          {
            *__p = *v27;
            v35 = v28;
          }

          value = 0;
          if (SHIBYTE(v35) < 0)
          {
            sub_100005F2C(buf, __p[0], __p[1]);
          }

          else
          {
            *buf = *__p;
            *&buf[16] = v35;
          }

          v36 = 0;
          if (ctu::cf::convert_copy())
          {
            v17 = value;
            value = v36;
            v37 = v17;
            sub_100005978(&v37);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          v29 = value;
          value = 0;
          sub_100005978(&value);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(__p[0]);
          }

          CFArrayAppendValue(v16, v29);
          sub_100005978(&v29);
          if (SHIBYTE(v28) < 0)
          {
            operator delete(v27[0]);
          }

          v18 = v15[1];
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
              v19 = v15[2];
              v11 = *v19 == v15;
              v15 = v19;
            }

            while (!v11);
          }

          v15 = v19;
        }

        while (v19 != v14 + 8);
      }

      v20 = v14[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v14[2];
          v11 = *v21 == v14;
          v14 = v21;
        }

        while (!v11);
      }

      v14 = v21;
    }

    while (v21 != v2 + 22);
  }

  v22 = v2[6];
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    Count = CFArrayGetCount(theArray);
    *buf = 136315650;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    *&buf[22] = 1024;
    v39 = Count;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s%sgetListOfPresentDedicatedBearers reports %d elements", buf, 0x1Cu);
  }

  sub_100372C3C((v1 + 1), theArray);
  sub_1000279DC(&theArray);
  sub_100372BEC(&v26);
  return sub_1000049E0(&v25);
}

void sub_100372B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, const void *a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, char a36)
{
  sub_1000279DC(&a25);
  sub_100372BEC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100372BEC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10036ED9C(v1 + 8);
    operator delete();
  }

  return a1;
}

uint64_t sub_100372C3C(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_100372C90(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100372D10(uint64_t *a1)
{
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sgetQoSLinkCharacteristics", buf, 0x16u);
  }

  v4 = sub_100007A6C(v2 + 120, (v2 + 144));
  if (v2 + 128 == v4)
  {
    v6 = *(v2 + 48);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(v2 + 167);
      v8 = (v7 & 0x80u) != 0;
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v2 + 152);
      }

      if (v8)
      {
        v9 = *(v2 + 144);
      }

      else
      {
        v9 = (v2 + 144);
      }

      if (v7)
      {
        v10 = v9;
      }

      else
      {
        v10 = "<invalid>";
      }

      *buf = 136315650;
      *&buf[4] = "";
      *&buf[12] = 2080;
      *&buf[14] = "";
      v18 = 2080;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sno controller for active personality '%s'", buf, 0x20u);
    }

    *buf = 0;
    *&buf[8] = 0;
    v11 = CFErrorCreate(0, kCFErrorDomainPOSIX, 2, 0);
    sub_100372FE4(v1 + 8, buf, v11);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  else
  {
    v5 = *(v4 + 56);
    sub_10000501C(buf, "custom-qos");
    (*(*v5 + 88))(&v15, v5, buf);
    sub_100372FE4(v1 + 8, &v15, 0);
    if (v16)
    {
      sub_100004A34(v16);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(*buf);
    }
  }

  sub_100372F94(&v14);
  return sub_1000049E0(&v13);
}

void sub_100372F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100372F94(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100372F94(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10036EE1C(v1 + 8);
    operator delete();
  }

  return a1;
}

uint64_t sub_100372FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t *sub_100373038(uint64_t *a1)
{
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "";
    v16 = 2080;
    v17 = "";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%srequestQoSLinkCharacteristics", buf, 0x16u);
  }

  v4 = sub_100007A6C(v2 + 120, (v2 + 144));
  if (v2 + 128 == v4)
  {
    v7 = *(v2 + 48);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v2 + 167);
      v9 = (v8 & 0x80u) != 0;
      if ((v8 & 0x80u) != 0)
      {
        v8 = *(v2 + 152);
      }

      if (v9)
      {
        v10 = *(v2 + 144);
      }

      else
      {
        v10 = (v2 + 144);
      }

      if (v8)
      {
        v11 = v10;
      }

      else
      {
        v11 = "<invalid>";
      }

      *buf = 136315650;
      *&buf[4] = "";
      v16 = 2080;
      v17 = "";
      v18 = 2080;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sno controller for active personality '%s'", buf, 0x20u);
    }

    v6 = CFErrorCreate(0, kCFErrorDomainPOSIX, 2, 0);
  }

  else
  {
    v5 = *(v4 + 56);
    sub_10000501C(buf, "custom-qos");
    (*(*v5 + 96))(v5, buf);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*buf);
    }

    v6 = 0;
  }

  sub_100371B4C(v1 + 8, v6);
  sub_10037216C(&v14);
  return sub_1000049E0(&v13);
}

void sub_100373230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10037216C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_100373264(uint64_t a1, uint64_t a2, NSObject **a3)
{
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  sub_100A33A10();
}

void sub_1003732BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1003732DC@<X0>(capabilities::ct *a1@<X1>, void *a2@<X8>)
{
  sub_100A32B20(a1, &v5);
  v3 = v5;
  *a2 = v5;
  if (v3)
  {
    operator new();
  }

  result = 0;
  a2[1] = 0;
  return result;
}

void sub_100373364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_10176C458(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_100373384()
{
  TMKXPCServer.shutdown()();

  operator delete();
}

void sub_1003733C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1003733F8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100373428(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_100373468()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

const void **sub_100373498@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
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
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v98 = 0;
  v7 = CFUUIDCreateString(kCFAllocatorDefault, *a1);
  v97 = 0;
  v98 = v7;
  v96[0] = 0;
  v96[1] = 0;
  ctu::cf::assign();
  v94 = xpc_string_create(v96);
  if (!v94)
  {
    v94 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kUuid";
  sub_10000F688(&v101, &v94, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v94);
  v94 = 0;
  StartTime = CallInfo::getStartTime(a1);
  v92 = xpc_int64_create(StartTime);
  if (!v92)
  {
    v92 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kCallStartTime";
  sub_10000F688(&v101, &v92, &v93);
  xpc_release(v93);
  v93 = 0;
  xpc_release(v92);
  v92 = 0;
  Duration = CallInfo::getDuration(a1);
  v90 = xpc_int64_create(Duration);
  if (!v90)
  {
    v90 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kCallDuration";
  sub_10000F688(&v101, &v90, &v91);
  xpc_release(v91);
  v91 = 0;
  xpc_release(v90);
  v90 = 0;
  LegacyFlags = CallInfo::getLegacyFlags(a1);
  v88 = xpc_int64_create(LegacyFlags);
  if (!v88)
  {
    v88 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kCallFlags";
  sub_10000F688(&v101, &v88, &v89);
  xpc_release(v89);
  v89 = 0;
  xpc_release(v88);
  v88 = 0;
  SessionStartTime = CallInfo::getSessionStartTime(a1);
  v86 = xpc_int64_create(SessionStartTime);
  if (!v86)
  {
    v86 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kCallSessionStart";
  sub_10000F688(&v101, &v86, &v87);
  xpc_release(v87);
  v87 = 0;
  xpc_release(v86);
  v86 = 0;
  v84 = xpc_int64_create(*(a1 + 352));
  if (!v84)
  {
    v84 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kBBCallDisconnectCause";
  sub_10000F688(&v101, &v84, &v85);
  xpc_release(v85);
  v85 = 0;
  xpc_release(v84);
  v84 = 0;
  if (*(a1 + 47) >= 0)
  {
    v12 = (a1 + 24);
  }

  else
  {
    v12 = *(a1 + 24);
  }

  v82 = xpc_string_create(v12);
  if (!v82)
  {
    v82 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kPhoneNumber";
  sub_10000F688(&v101, &v82, &v83);
  xpc_release(v83);
  v83 = 0;
  xpc_release(v82);
  v82 = 0;
  if (*(a1 + 255) >= 0)
  {
    v13 = (a1 + 232);
  }

  else
  {
    v13 = *(a1 + 232);
  }

  v80 = xpc_string_create(v13);
  if (!v80)
  {
    v80 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kCallName";
  sub_10000F688(&v101, &v80, &v81);
  xpc_release(v81);
  v81 = 0;
  xpc_release(v80);
  v80 = 0;
  if (*(a1 + 167) >= 0)
  {
    v14 = (a1 + 144);
  }

  else
  {
    v14 = *(a1 + 144);
  }

  v78 = xpc_string_create(v14);
  if (!v78)
  {
    v78 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kSource";
  sub_10000F688(&v101, &v78, &v79);
  xpc_release(v79);
  v79 = 0;
  xpc_release(v78);
  v78 = 0;
  v76 = xpc_int64_create(*(a1 + 64));
  if (!v76)
  {
    v76 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kCallSourceMode";
  sub_10000F688(&v101, &v76, &v77);
  xpc_release(v77);
  v77 = 0;
  xpc_release(v76);
  v76 = 0;
  v74 = xpc_int64_create(*(a1 + 72));
  if (!v74)
  {
    v74 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kMobileCountryCode";
  sub_10000F688(&v101, &v74, &v75);
  xpc_release(v75);
  v75 = 0;
  xpc_release(v74);
  v74 = 0;
  if (*(a1 + 103) >= 0)
  {
    v15 = (a1 + 80);
  }

  else
  {
    v15 = *(a1 + 80);
  }

  v72 = xpc_string_create(v15);
  if (!v72)
  {
    v72 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kISOCountryCode";
  sub_10000F688(&v101, &v72, &v73);
  xpc_release(v73);
  v73 = 0;
  xpc_release(v72);
  v72 = 0;
  v70 = xpc_BOOL_create(*(a1 + 168) == 1);
  if (!v70)
  {
    v70 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kAudioToneRelayFlag";
  sub_10000F688(&v101, &v70, &v71);
  xpc_release(v71);
  v71 = 0;
  xpc_release(v70);
  v70 = 0;
  v68 = xpc_int64_create(*(a1 + 172));
  if (!v68)
  {
    v68 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kAudioToneStandard";
  sub_10000F688(&v101, &v68, &v69);
  xpc_release(v69);
  v69 = 0;
  xpc_release(v68);
  v68 = 0;
  v66 = xpc_BOOL_create(*(a1 + 350));
  if (!v66)
  {
    v66 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kMobileOriginatedCallEndFlag";
  sub_10000F688(&v101, &v66, &v67);
  xpc_release(v67);
  v67 = 0;
  xpc_release(v66);
  v66 = 0;
  v64 = xpc_BOOL_create(*(a1 + 176));
  if (!v64)
  {
    v64 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kClientNeedsToSetupAudioInterruptions";
  sub_10000F688(&v101, &v64, &v65);
  xpc_release(v65);
  v65 = 0;
  xpc_release(v64);
  v64 = 0;
  v16 = CallInfo::isProbablyOnlyCall(a1);
  v62 = xpc_BOOL_create(v16);
  if (!v62)
  {
    v62 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kIsTheOnlyCall";
  sub_10000F688(&v101, &v62, &v63);
  xpc_release(v63);
  v63 = 0;
  xpc_release(v62);
  v62 = 0;
  v60 = xpc_int64_create(*(a1 + 320));
  if (!v60)
  {
    v60 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kIsTTY";
  sub_10000F688(&v101, &v60, &v61);
  xpc_release(v61);
  v61 = 0;
  xpc_release(v60);
  v60 = 0;
  v58 = xpc_BOOL_create(*(a1 + 324));
  if (!v58)
  {
    v58 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kIsTTYWithVoiceSupported";
  sub_10000F688(&v101, &v58, &v59);
  xpc_release(v59);
  v59 = 0;
  xpc_release(v58);
  v58 = 0;
  v56 = xpc_BOOL_create(*(a1 + 68));
  if (!v56)
  {
    v56 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kIsThumperCall";
  sub_10000F688(&v101, &v56, &v57);
  xpc_release(v57);
  v57 = 0;
  xpc_release(v56);
  v56 = 0;
  if (*(a1 + 20) == 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(a1 + 340);
  }

  v54 = xpc_BOOL_create(v17);
  if (!v54)
  {
    v54 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kIsSplitAllowed";
  sub_10000F688(&v101, &v54, &v55);
  xpc_release(v55);
  v55 = 0;
  xpc_release(v54);
  v54 = 0;
  if (*(a1 + 208) == 1)
  {
    v100[0] = 0;
    v18 = xpc_array_create(0, 0);
    v19 = v18;
    if (v18)
    {
      v100[0] = v18;
    }

    else
    {
      v19 = xpc_null_create();
      v100[0] = v19;
      if (!v19)
      {
        v20 = xpc_null_create();
        v19 = 0;
        goto LABEL_74;
      }
    }

    if (xpc_get_type(v19) == &_xpc_type_array)
    {
      xpc_retain(v19);
LABEL_75:
      xpc_release(v19);
      sub_1003759B0(&v101, *(a1 + 184), *(a1 + 192), v100);
      v52 = v100[0];
      if (v100[0])
      {
        xpc_retain(v100[0]);
      }

      else
      {
        v52 = xpc_null_create();
      }

      v101 = a2;
      v102 = "kAudioStreamTokens";
      sub_1000609CC(&v101, &v52, &v53);
      xpc_release(v53);
      v53 = 0;
      xpc_release(v52);
      v52 = 0;
      xpc_release(v100[0]);
      goto LABEL_79;
    }

    v20 = xpc_null_create();
LABEL_74:
    v100[0] = v20;
    goto LABEL_75;
  }

LABEL_79:
  if (*(a1 + 332) == 1)
  {
    v50 = xpc_int64_create(*(a1 + 328));
    if (!v50)
    {
      v50 = xpc_null_create();
    }

    v101 = a2;
    v102 = "kTextStreamToken";
    sub_10000F688(&v101, &v50, &v51);
    xpc_release(v51);
    v51 = 0;
    xpc_release(v50);
    v50 = 0;
    v48 = xpc_BOOL_create(0);
    if (!v48)
    {
      v48 = xpc_null_create();
    }

    v101 = a2;
    v102 = "kIsTextHeldForRTTCall";
    sub_10000F688(&v101, &v48, &v49);
    xpc_release(v49);
    v49 = 0;
    xpc_release(v48);
    v48 = 0;
  }

  if (*(a1 + 337) == 1)
  {
    v46 = xpc_BOOL_create(*(a1 + 336));
    if (!v46)
    {
      v46 = xpc_null_create();
    }

    v101 = a2;
    v102 = "kIsTextHeldForRTTCall";
    sub_10000F688(&v101, &v46, &v47);
    xpc_release(v47);
    v47 = 0;
    xpc_release(v46);
    v46 = 0;
  }

  v44 = xpc_BOOL_create(*(a1 + 256));
  if (!v44)
  {
    v44 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kVerstatEnabled";
  sub_10000F688(&v101, &v44, &v45);
  xpc_release(v45);
  v45 = 0;
  xpc_release(v44);
  v44 = 0;
  v42 = xpc_int64_create(*(a1 + 260));
  if (!v42)
  {
    v42 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kVerstatLevel";
  sub_10000F688(&v101, &v42, &v43);
  xpc_release(v43);
  v43 = 0;
  xpc_release(v42);
  v42 = 0;
  if (*(a1 + 311) >= 0)
  {
    v21 = (a1 + 288);
  }

  else
  {
    v21 = *(a1 + 288);
  }

  v40 = xpc_string_create(v21);
  if (!v40)
  {
    v40 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kImagePath";
  sub_10000F688(&v101, &v40, &v41);
  xpc_release(v41);
  v41 = 0;
  xpc_release(v40);
  v40 = 0;
  v38 = xpc_BOOL_create(*(a1 + 137));
  if (!v38)
  {
    v38 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kPendingInfoInitialization";
  sub_10000F688(&v101, &v38, &v39);
  xpc_release(v39);
  v39 = 0;
  xpc_release(v38);
  v38 = 0;
  v36 = xpc_int64_create(*(a1 + 312));
  if (!v36)
  {
    v36 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kSpamRisk";
  sub_10000F688(&v101, &v36, &v37);
  xpc_release(v37);
  v37 = 0;
  xpc_release(v36);
  v36 = 0;
  v34 = xpc_int64_create(*(a1 + 316));
  if (!v34)
  {
    v34 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kSpamCategory";
  sub_10000F688(&v101, &v34, &v35);
  xpc_release(v35);
  v35 = 0;
  xpc_release(v34);
  v34 = 0;
  v32 = xpc_BOOL_create(*(a1 + 104));
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  v101 = a2;
  v102 = "CallLikelyToFail";
  sub_10000F688(&v101, &v32, &v33);
  xpc_release(v33);
  v33 = 0;
  xpc_release(v32);
  v32 = 0;
  v30 = xpc_BOOL_create(*(a1 + 105));
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kSupportsEmergencyFallback";
  sub_10000F688(&v101, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  xpc_release(v30);
  v30 = 0;
  v28 = xpc_int64_create(*(a1 + 16));
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kCallSimSlot";
  sub_10000F688(&v101, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  xpc_release(v28);
  v28 = 0;
  v118 = xpc_BOOL_create(*(a1 + 12) != 2);
  if (!v118)
  {
    v118 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kCallDirectionMobileOriginated";
  sub_10000F688(&v101, &v118, &v119);
  xpc_release(v119);
  v119 = 0;
  xpc_release(v118);
  v118 = 0;
  v116 = xpc_int64_create(*(a1 + 20));
  if (!v116)
  {
    v116 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kCallStatus";
  sub_10000F688(&v101, &v116, &v117);
  xpc_release(v117);
  v117 = 0;
  xpc_release(v116);
  v116 = 0;
  v114 = xpc_int64_create(*(a1 + 60));
  if (!v114)
  {
    v114 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kCallerIdAvailability";
  sub_10000F688(&v101, &v114, &v115);
  xpc_release(v115);
  v115 = 0;
  xpc_release(v114);
  v114 = 0;
  v112 = xpc_BOOL_create(*(a1 + 340));
  if (!v112)
  {
    v112 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kIsInMultiParty";
  sub_10000F688(&v101, &v112, &v113);
  xpc_release(v113);
  v113 = 0;
  xpc_release(v112);
  v112 = 0;
  v110 = xpc_int64_create(*(a1 + 48));
  if (!v110)
  {
    v110 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kCallType";
  sub_10000F688(&v101, &v110, &v111);
  xpc_release(v111);
  v111 = 0;
  xpc_release(v110);
  v110 = 0;
  isSuspicious380Redirect = CallInfo::isSuspicious380Redirect(a1);
  v108 = xpc_BOOL_create(isSuspicious380Redirect);
  if (!v108)
  {
    v108 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kSuspicious380Redirect";
  sub_10000F688(&v101, &v108, &v109);
  xpc_release(v109);
  v109 = 0;
  xpc_release(v108);
  v108 = 0;
  CCDisconnectErrorCode = CallInfo::getCCDisconnectErrorCode(a1);
  v106 = xpc_int64_create(CCDisconnectErrorCode);
  if (!v106)
  {
    v106 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kDisconnectCauseCode";
  sub_10000F688(&v101, &v106, &v107);
  xpc_release(v107);
  v107 = 0;
  xpc_release(v106);
  v106 = 0;
  asExternalCSIErrorString();
  if (v103 >= 0)
  {
    v24 = &v101;
  }

  else
  {
    v24 = v101;
  }

  v104 = xpc_string_create(v24);
  if (!v104)
  {
    v104 = xpc_null_create();
  }

  v100[0] = a2;
  v100[1] = "kDisconnectCauseCodeString";
  sub_10000F688(v100, &v104, &v105);
  xpc_release(v105);
  v105 = 0;
  xpc_release(v104);
  v104 = 0;
  if (v103 < 0)
  {
    operator delete(v101);
  }

  v99 = xpc_int64_create(*(a1 + 52));
  if (!v99)
  {
    v99 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kCallSubType";
  sub_10000F688(&v101, &v99, v100);
  xpc_release(v100[0]);
  v100[0] = 0;
  xpc_release(v99);
  v26 = xpc_BOOL_create(*(a1 + 136));
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  v101 = a2;
  v102 = "kEmSubSwitchAudioOverride";
  sub_10000F688(&v101, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  if (SHIBYTE(v97) < 0)
  {
    operator delete(v96[0]);
  }

  return sub_100005978(&v98);
}

void sub_1003745B0(_Unwind_Exception *a1)
{
  xpc_release(*(v2 - 216));
  if (*(v2 - 233) < 0)
  {
    operator delete(*(v2 - 256));
  }

  sub_100005978((v2 - 232));
  sub_10134A104(v1);
  _Unwind_Resume(a1);
}

void sub_1003747F4(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
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
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v30 = xpc_string_create(v7);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  v28 = a2;
  v29 = "kUuid";
  sub_10000F688(&v28, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  xpc_release(v30);
  v30 = 0;
  v26 = xpc_BOOL_create(1);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  v28 = a2;
  v29 = "kCallDirectionMobileOriginated";
  sub_10000F688(&v28, &v26, &v27);
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  v24 = xpc_int64_create(9);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  v28 = a2;
  v29 = "kCallStatus";
  sub_10000F688(&v28, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  if (*(a1 + 47) >= 0)
  {
    v8 = (a1 + 24);
  }

  else
  {
    v8 = *(a1 + 24);
  }

  v22 = xpc_string_create(v8);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  v28 = a2;
  v29 = "kPhoneNumber";
  sub_10000F688(&v28, &v22, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v22);
  v22 = 0;
  if (*(a1 + 92) == 1)
  {
    if (*(a1 + 95))
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }

    v20 = xpc_int64_create(v9);
    if (!v20)
    {
      v20 = xpc_null_create();
    }

    v28 = a2;
    v29 = "kCallType";
    sub_10000F688(&v28, &v20, &v21);
    xpc_release(v21);
    v21 = 0;
    xpc_release(v20);
    v20 = 0;
  }

  else
  {
    v18 = xpc_int64_create(1);
    if (!v18)
    {
      v18 = xpc_null_create();
    }

    v28 = a2;
    v29 = "kCallType";
    sub_10000F688(&v28, &v18, &v19);
    xpc_release(v19);
    v19 = 0;
    xpc_release(v18);
    v18 = 0;
  }

  v16 = xpc_BOOL_create(*(a1 + 93));
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v28 = a2;
  v29 = "CallLikelyToFail";
  sub_10000F688(&v28, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  v14 = xpc_BOOL_create(*(a1 + 94));
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  v28 = a2;
  v29 = "kSupportsEmergencyFallback";
  sub_10000F688(&v28, &v14, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(v14);
  v14 = 0;
  v12 = xpc_int64_create(*(a1 + 88));
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v28 = a2;
  v29 = "kCallSimSlot";
  sub_10000F688(&v28, &v12, &v13);
  xpc_release(v13);
  v13 = 0;
  xpc_release(v12);
  v12 = 0;
  v10 = xpc_int64_create(16);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v28 = a2;
  v29 = "kCallSubType";
  sub_10000F688(&v28, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
}

void sub_100374CA0(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 432) = 0;
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  sub_1000BA174(a2);
  __p[0] = 0;
  __p[1] = 0;
  v43 = 0;
  v38[0] = a1;
  v38[1] = "kUuid";
  sub_100006354(v38, &object);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  xpc_release(object);
  v41 = 0;
  if (v43 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = CFStringCreateWithCString(kCFAllocatorDefault, v4, 0x8000100u);
  v40 = 0;
  v41 = v5;
  v40 = CFUUIDCreateFromString(kCFAllocatorDefault, v5);
  sub_1000BA4A0(a2, &v40);
  v44 = a1;
  v45 = "kCallStartTime";
  sub_100006354(&v44, v38);
  *(a2 + 220) = xpc::dyn_cast_or_default(v38, 0, v6);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kCallDuration";
  sub_100006354(&v44, v38);
  *(a2 + 216) = xpc::dyn_cast_or_default(v38, 0, v7);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kCallSessionStart";
  sub_100006354(&v44, v38);
  *(a2 + 228) = xpc::dyn_cast_or_default(v38, 0, v8);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kBBCallDisconnectCause";
  sub_100006354(&v44, v38);
  *(a2 + 352) = xpc::dyn_cast_or_default(v38, 0, v9);
  xpc_release(v38[0]);
  object = a1;
  v36 = "kPhoneNumber";
  sub_100006354(&object, &v37);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  *(a2 + 24) = *v38;
  *(a2 + 40) = v39;
  HIBYTE(v39) = 0;
  LOBYTE(v38[0]) = 0;
  xpc_release(v37);
  object = a1;
  v36 = "kCallName";
  sub_100006354(&object, &v37);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  if (*(a2 + 255) < 0)
  {
    operator delete(*(a2 + 232));
  }

  *(a2 + 232) = *v38;
  *(a2 + 248) = v39;
  HIBYTE(v39) = 0;
  LOBYTE(v38[0]) = 0;
  xpc_release(v37);
  object = a1;
  v36 = "kSource";
  sub_100006354(&object, &v37);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  if (*(a2 + 167) < 0)
  {
    operator delete(*(a2 + 144));
  }

  *(a2 + 144) = *v38;
  *(a2 + 160) = v39;
  HIBYTE(v39) = 0;
  LOBYTE(v38[0]) = 0;
  xpc_release(v37);
  v44 = a1;
  v45 = "kCallSourceMode";
  sub_100006354(&v44, v38);
  *(a2 + 64) = xpc::dyn_cast_or_default(v38, 0, v10);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kMobileCountryCode";
  sub_100006354(&v44, v38);
  *(a2 + 72) = xpc::dyn_cast_or_default(v38, 0, v11);
  xpc_release(v38[0]);
  object = a1;
  v36 = "kISOCountryCode";
  sub_100006354(&object, &v37);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  *(a2 + 80) = *v38;
  *(a2 + 96) = v39;
  HIBYTE(v39) = 0;
  LOBYTE(v38[0]) = 0;
  xpc_release(v37);
  v44 = a1;
  v45 = "kAudioToneRelayFlag";
  sub_100006354(&v44, v38);
  v13 = xpc::dyn_cast_or_default(v38, 0, v12);
  xpc_release(v38[0]);
  *(a2 + 168) = v13;
  v44 = a1;
  v45 = "kAudioToneStandard";
  sub_100006354(&v44, v38);
  *(a2 + 172) = xpc::dyn_cast_or_default(v38, 0, v14);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kMobileOriginatedCallEndFlag";
  sub_100006354(&v44, v38);
  *(a2 + 350) = xpc::dyn_cast_or_default(v38, 0, v15);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kClientNeedsToSetupAudioInterruptions";
  sub_100006354(&v44, v38);
  *(a2 + 176) = xpc::dyn_cast_or_default(v38, 0, v16);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kIsTheOnlyCall";
  sub_100006354(&v44, v38);
  *(a2 + 341) = xpc::dyn_cast_or_default(v38, 0, v17);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kIsTTY";
  sub_100006354(&v44, v38);
  *(a2 + 320) = xpc::dyn_cast_or_default(v38, 0, v18);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kIsTTYWithVoiceSupported";
  sub_100006354(&v44, v38);
  *(a2 + 324) = xpc::dyn_cast_or_default(v38, 0, v19) != 0;
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kIsThumperCall";
  sub_100006354(&v44, v38);
  *(a2 + 68) = xpc::dyn_cast_or_default(v38, 0, v20);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kIsSplitAllowed";
  sub_100006354(&v44, v38);
  *(a2 + 340) = xpc::dyn_cast_or_default(v38, 0, v21);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kCallDirectionMobileOriginated";
  sub_100006354(&v44, v38);
  v23 = xpc::dyn_cast_or_default(v38, 0, v22);
  xpc_release(v38[0]);
  if (v23)
  {
    v24 = 1;
  }

  else
  {
    v24 = 2;
  }

  *(a2 + 12) = v24;
  v44 = a1;
  v45 = "kCallStatus";
  sub_100006354(&v44, v38);
  *(a2 + 20) = xpc::dyn_cast_or_default(v38, 0, v25);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kCallerIdAvailability";
  sub_100006354(&v44, v38);
  *(a2 + 60) = xpc::dyn_cast_or_default(v38, 0, v26);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kIsInMultiParty";
  sub_100006354(&v44, v38);
  *(a2 + 340) = xpc::dyn_cast_or_default(v38, 0, v27);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kCallType";
  sub_100006354(&v44, v38);
  *(a2 + 48) = xpc::dyn_cast_or_default(v38, 0, v28);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kDisconnectCauseCode";
  sub_100006354(&v44, v38);
  *(a2 + 356) = xpc::dyn_cast_or_default(v38, 0, v29);
  *(a2 + 360) = 1;
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kCallSubType";
  sub_100006354(&v44, v38);
  *(a2 + 52) = xpc::dyn_cast_or_default(v38, 0, v30);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kVerstatEnabled";
  sub_100006354(&v44, v38);
  *(a2 + 256) = xpc::dyn_cast_or_default(v38, 0, v31);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kVerstatLevel";
  sub_100006354(&v44, v38);
  *(a2 + 260) = xpc::dyn_cast_or_default(v38, 0, v32);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "CallLikelyToFail";
  sub_100006354(&v44, v38);
  *(a2 + 104) = xpc::dyn_cast_or_default(v38, 0, v33);
  xpc_release(v38[0]);
  v44 = a1;
  v45 = "kSupportsEmergencyFallback";
  sub_100006354(&v44, v38);
  *(a2 + 105) = xpc::dyn_cast_or_default(v38, 0, v34);
  xpc_release(v38[0]);
  object = a1;
  v36 = "kImagePath";
  sub_100006354(&object, &v37);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v46) < 0)
  {
    operator delete(v44);
  }

  if (*(a2 + 311) < 0)
  {
    operator delete(*(a2 + 288));
  }

  *(a2 + 288) = *v38;
  *(a2 + 304) = v39;
  HIBYTE(v39) = 0;
  LOBYTE(v38[0]) = 0;
  xpc_release(v37);
  sub_1000475BC(&v40);
  sub_100005978(&v41);
  if (SHIBYTE(v43) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100375590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, const void *a15, const void *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  xpc_release(object);
  sub_1000475BC(&a15);
  sub_100005978(&a16);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_1000BFE80(v22);
  _Unwind_Resume(a1);
}

void sub_100375984(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  if (*(v9 - 33) < 0)
  {
    operator delete(*(v9 - 56));
  }

  xpc_release(object);
  JUMPOUT(0x100375960);
}

unsigned int *sub_1003759B0(uint64_t a1, unsigned int *a2, unsigned int *a3, xpc_object_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = xpc_int64_create(*v5);
      if (!v7)
      {
        v7 = xpc_null_create();
      }

      xpc_array_append_value(*a4, v7);
      xpc_release(v7);
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_100375A50(uint64_t a1, void *a2, int a3)
{
  v6 = "msim.vol.?";
  if (a3 == 2)
  {
    v6 = "msim.vol.2";
  }

  if (a3 == 1)
  {
    v7 = "msim.vol.1";
  }

  else
  {
    v7 = v6;
  }

  ctu::OsLogContext::OsLogContext(&v10, kCtLoggingSystemName, v7);
  ctu::OsLogLogger::OsLogLogger(v11, &v10);
  ctu::OsLogLogger::OsLogLogger(a1, v11);
  ctu::OsLogLogger::~OsLogLogger(v11);
  ctu::OsLogContext::~OsLogContext(&v10);
  v8 = a2[1];
  *(a1 + 8) = *a2;
  *(a1 + 16) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = a3;
  *(a1 + 28) = 0;
  return a1;
}

void sub_100375B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  _Unwind_Resume(a1);
}

void sub_100375B38(ctu::OsLogLogger *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger(this);
}

uint64_t sub_100375B7C(uint64_t a1)
{
  v18 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
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
  (*(*v10 + 96))(&v17, v10, *(a1 + 24), 1, @"MultiSimVoLteOnly", 0, 0);
  sub_10002FE1C(&v18, &v17);
  sub_10000A1EC(&v17);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  buf[0] = 0;
  ctu::cf::assign(buf, v18, v12);
  v13 = buf[0];
  v14 = *a1;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = asStringBool(v13);
    *buf = 136315138;
    *&buf[4] = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I isMsimVoLteOnly: %s", buf, 0xCu);
  }

  sub_100045C8C(&v18);
  return v13;
}

void sub_100375D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

void sub_100375DA8(uint64_t a1, int a2)
{
  if (sub_100375B7C(a1) && a2)
  {
    if (*(a1 + 28))
    {
      return;
    }

    v4 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Multi-SIM VoLTE-only activated", buf, 2u);
    }

    v5 = 1;
  }

  else
  {
    if (!*(a1 + 28))
    {
      return;
    }

    v6 = *a1;
    v7 = os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT);
    v5 = 0;
    if (v7)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Multi-SIM VoLTE-only deactivated", v8, 2u);
      v5 = 0;
    }
  }

  *(a1 + 28) = v5;
}

uint64_t IMSCallModel::isMergeAllowed(uint64_t a1, Registry **a2, uint64_t a3)
{
  ServiceMap = Registry::getServiceMap(*a2);
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
  *v23 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, v23);
  if (!v11)
  {
    v13 = 0;
LABEL_11:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (!v13)
  {
LABEL_7:
    v15 = **(a1 + 752);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "System Determination Manager is NULL!", v23, 2u);
    }

    LOBYTE(v16) = 0;
    goto LABEL_27;
  }

LABEL_12:
  *v23 = 0;
  v24 = 0;
  (*(*v13 + 40))(v23, v13, a3);
  if (*v23)
  {
    cf = 0;
    (*(**v23 + 40))(&cf);
    v16 = cf;
    buf[0] = 0;
    if (cf)
    {
      v17 = CFGetTypeID(cf);
      if (v17 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(buf, v16, v18);
        LOBYTE(v16) = buf[0];
      }

      else
      {
        LOBYTE(v16) = 0;
      }
    }

    v19 = **(a1 + 752);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = "disabled";
      if (v16)
      {
        v20 = "enabled";
      }

      *buf = 136315138;
      v26 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Conference support: %s", buf, 0xCu);
    }

    sub_10000A1EC(&cf);
  }

  else
  {
    if (os_log_type_enabled(**(a1 + 752), OS_LOG_TYPE_ERROR))
    {
      sub_10176C490();
    }

    LOBYTE(v16) = 0;
  }

  if (v24)
  {
    sub_100004A34(v24);
  }

LABEL_27:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  return v16 & 1;
}

uint64_t IMSCallModel::IMSCallModel(uint64_t a1, uint64_t *a2, uint64_t *a3, NSObject **a4, void *a5)
{
  v10 = *a3;
  if (!*a3)
  {
    goto LABEL_9;
  }

  if (*(v10 + 49) == 1)
  {
    v13 = "call.CmdDriver.IMS.mdl.T";
    goto LABEL_11;
  }

  if (*(v10 + 49))
  {
LABEL_9:
    v13 = "call.CmdDriver.IMS.mdl";
    goto LABEL_11;
  }

  v11 = *(v10 + 52);
  v12 = "call.CmdDriver.IMS.mdl";
  if (v11 == 2)
  {
    v12 = "call.CmdDriver.IMS.mdl.2";
  }

  if (v11 == 1)
  {
    v13 = "call.CmdDriver.IMS.mdl.1";
  }

  else
  {
    v13 = v12;
  }

LABEL_11:
  ctu::OsLogContext::OsLogContext(&v19, kCtLoggingSystemName, v13);
  sub_1001303E4((a1 + 40), a4, &v19);
  ctu::OsLogContext::~OsLogContext(&v19);
  v20[0] = off_101E2B528;
  v20[1] = sub_1000A7B40;
  v20[3] = v20;
  sub_1003764E0((a1 + 80), a2, v20);
  sub_1000A8744(v20);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *a1 = off_101E45FE0;
  *(a1 + 8) = off_101E46248;
  v15 = *a2;
  v14 = a2[1];
  *(a1 + 88) = 0;
  *(a1 + 96) = v15;
  *(a1 + 104) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = a3[1];
  *(a1 + 112) = *a3;
  *(a1 + 120) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 168) = a1 + 168;
  *(a1 + 176) = a1 + 168;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = 1065353216;
  CallOperationContext::CallOperationContext((a1 + 232));
  *(a1 + 696) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 704) = a1 + 712;
  *(a1 + 736) = 0u;
  *(a1 + 728) = a1 + 736;
  *(a1 + 760) = 0;
  *(a1 + 764) = 0x200000002;
  *(a1 + 772) = 0;
  *(a1 + 776) = 0;
  *(a1 + 784) = 0u;
  v17 = a5[1];
  *(a1 + 800) = *a5;
  *(a1 + 808) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 816) = 0;
  return a1;
}

void sub_1003763F4(_Unwind_Exception *a1)
{
  sub_1001754E8((v1 + 192));
  sub_100382370(v2);
  v4 = *(v1 + 152);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(v1 + 136);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(v1 + 120);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(v1 + 104);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(v1 + 88);
  *(v1 + 88) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  IMSCallModelInterface::~IMSCallModelInterface(v1);
  v9 = *(v1 + 80);
  *(v1 + 80) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  ctu::OsLogLogger::~OsLogLogger((v1 + 72));
  sub_1000C0544((v1 + 40));
  _Unwind_Resume(a1);
}

capabilities::ct *sub_1003764E0(capabilities::ct *a1, uint64_t a2, uint64_t a3)
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

void sub_100376638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000A8744(va);
  operator delete();
}

uint64_t IMSCallModel::init(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v5 = *a2;
  *a2 = 0uLL;
  v6 = *(a1 + 136);
  *(a1 + 128) = v5;
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v8 = *(a1 + 152);
  *(a1 + 144) = v7;
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = (*(*a1 + 256))(a1);
  result = (*(**(a1 + 80) + 16))(*(a1 + 80), v9);
  *(a1 + 752) = result;
  return result;
}

void **IMSCallModel::handleDisconnectEvent(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v138 = _os_activity_create(&_mh_execute_header, "Call: Disconnected", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state[0].opaque[1] = 0;
  state[0].opaque[0] = 0;
  os_activity_scope_enter(v138, state);
  os_activity_scope_leave(state);
  v8 = *(a4 + 32);
  v9 = **(a1 + 752);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    if (a2[23] >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    LODWORD(state[0].opaque[0]) = 136315650;
    *(state[0].opaque + 4) = v10;
    WORD2(state[0].opaque[1]) = 2080;
    *(&state[0].opaque[1] + 6) = v11;
    HIWORD(state[1].opaque[0]) = 1024;
    LODWORD(state[1].opaque[1]) = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Incoming Indication: DISCONNECTED for %s (uuid) with reason %s (%d)", state, 0x1Cu);
  }

  v194 = 0;
  v193 = 0u;
  v192 = 0u;
  v191 = 0u;
  v190 = 0u;
  v189 = 0u;
  v188 = 0u;
  v187 = 0u;
  v186 = 0u;
  v185 = 0u;
  v184 = 0u;
  v183 = 0u;
  v182 = 0u;
  v181 = 0u;
  v180 = 0u;
  v179 = 0u;
  v178 = 0u;
  v177 = 0u;
  v176 = 0u;
  v175 = 0u;
  v174 = 0u;
  v173 = 0u;
  v172 = 0u;
  v171 = 0u;
  v170 = 0u;
  memset(state, 0, sizeof(state));
  sub_1000BA174(state);
  v12 = IMSCallModel::getCallInfoFromUuid(a1, a2, state);
  v13 = **(a1 + 752);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v15 = CSIBOOLAsString(*(a4 + 36));
      *buf = 136315138;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I IMS call end status sent: %s", buf, 0xCu);
    }

    (*(**(a1 + 128) + 296))(*(a1 + 128), state, *(a4 + 36));
    v123 = (*(*a1 + 256))(a1);
    v136 = 0;
    v135 = 0;
    v137 = 0;
    (*(**(a1 + 128) + 344))(&v135);
    v122 = v8;
    v16 = **(a1 + 752);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = BYTE4(v188);
      *&buf[8] = 2048;
      *&buf[10] = 0x6FB586FB586FB587 * ((v136 - v135) >> 3);
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Disconnecting call is in a mutli party? %d, Size of CallList is what? %lu", buf, 0x12u);
    }

    if (BYTE4(v188) == 1)
    {
      v17 = v136;
      v18 = v135;
      if (v136 - v135 == 880 && v135 != v136)
      {
        do
        {
          *(v18 + 340) = 0;
          if (CallInfo::operator!=())
          {
            v168 = 0;
            v167 = 0u;
            v166 = 0u;
            v165 = 0u;
            v164 = 0u;
            v163 = 0u;
            v162 = 0u;
            v161 = 0u;
            v160 = 0u;
            v159 = 0u;
            v158 = 0u;
            v157 = 0u;
            v156 = 0u;
            v155 = 0u;
            v154 = 0u;
            v153 = 0u;
            v152 = 0u;
            v151 = 0u;
            v150 = 0u;
            v149 = 0u;
            v148 = 0u;
            v147 = 0u;
            v146 = 0u;
            v145 = 0u;
            v144 = 0u;
            v143 = 0u;
            memset(buf, 0, sizeof(buf));
            sub_100E03FE8(buf, v18);
            v19 = *&buf[20];
            v20 = **(a1 + 752);
            v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
            if (v19)
            {
              if (v21)
              {
                v133 = *buf;
                if (*buf)
                {
                  CFRetain(*buf);
                }

                sub_1001DB8CC(&v133, __p);
                v22 = __p;
                if (v140 < 0)
                {
                  v22 = *__p;
                }

                *v141 = 136315138;
                *&v141[4] = v22;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Fake Incoming Indication: Held for %s", v141, 0xCu);
                if (v140 < 0)
                {
                  operator delete(*__p);
                }

                sub_1000475BC(&v133);
              }

              (*(**(a1 + 128) + 120))(*(a1 + 128), buf);
            }

            else
            {
              if (v21)
              {
                v134 = *buf;
                if (*buf)
                {
                  CFRetain(*buf);
                }

                sub_1001DB8CC(&v134, __p);
                v23 = __p;
                if (v140 < 0)
                {
                  v23 = *__p;
                }

                *v141 = 136315138;
                *&v141[4] = v23;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I -------->IMS Fake Incoming Indication: ACTIVE for %s", v141, 0xCu);
                if (v140 < 0)
                {
                  operator delete(*__p);
                }

                sub_1000475BC(&v134);
              }

              (*(**(a1 + 128) + 64))(*(a1 + 128), buf, 1);
            }

            v24 = **(a1 + 752);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = asString();
              *__p = 136315138;
              *&__p[4] = v25;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Call type of the active call: %s", __p, 0xCu);
            }

            if (BYTE4(v170) == 2)
            {
              v26 = *(a1 + 128);
              *__p = 0;
              (*(*v26 + 320))(v26, __p, v123);
            }

            sub_1000BFE80(buf);
          }

          v18 += 440;
        }

        while (v18 != v17);
      }
    }

    sub_1000D5848((a1 + 704), a2);
    *__p = 0;
    if (*(a3 + 23) >= 0)
    {
      v27 = a3;
    }

    else
    {
      v27 = *a3;
    }

    v28 = CFStringCreateWithCString(kCFAllocatorDefault, v27, 0x8000100u);
    v29 = v8;
    *__p = v28;
    if (!v28)
    {
      v31 = **(a1 + 752);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I Received DISCONNECTED without a reason string", buf, 2u);
      }

LABEL_143:
      LOWORD(v189) = v29;
      (*(**(a1 + 128) + 72))(*(a1 + 128), state, 1, *(a4 + 1));
      v69 = **(a1 + 752);
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v70 = asString();
        *buf = 136315138;
        *&buf[4] = v70;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "#I Call type of the disconnected call: %s", buf, 0xCu);
      }

      if (BYTE4(v170) == 2)
      {
        v71 = *(a1 + 128);
        *buf = 6;
        (*(*v71 + 320))(v71, buf, v123);
      }

      ServiceMap = Registry::getServiceMap(*(a1 + 96));
      v73 = ServiceMap;
      if (v74 < 0)
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

      std::mutex::lock(ServiceMap);
      *buf = v74;
      v78 = sub_100009510(&v73[1].__m_.__sig, buf);
      if (v78)
      {
        v79 = v78[3];
        v80 = v78[4];
        if (v80)
        {
          atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v73);
          atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v80);
          v81 = 0;
          if (!v79)
          {
            goto LABEL_168;
          }

          goto LABEL_156;
        }
      }

      else
      {
        v79 = 0;
      }

      std::mutex::unlock(v73);
      v80 = 0;
      v81 = 1;
      if (!v79)
      {
        goto LABEL_168;
      }

LABEL_156:
      v82 = *(a4 + 2);
      v83 = LODWORD(state[1].opaque[0]);
      if (v82 == 1)
      {
        if (SHIBYTE(state[2].opaque[1]) < 0)
        {
          sub_100005F2C(&__dst, state[1].opaque[1], state[2].opaque[0]);
        }

        else
        {
          __dst = *(&state[1] + 8);
          v127 = state[2].opaque[1];
        }

        (*(*v79 + 200))(v79, v83, &__dst, LODWORD(state[0].opaque[1]), 1, 0);
        if ((SHIBYTE(v127) & 0x80000000) == 0)
        {
          goto LABEL_168;
        }

        p_dst = &__dst;
      }

      else
      {
        if (SHIBYTE(state[2].opaque[1]) < 0)
        {
          sub_100005F2C(&v124, state[1].opaque[1], state[2].opaque[0]);
        }

        else
        {
          v124 = *(&state[1] + 8);
          v125 = state[2].opaque[1];
        }

        (*(*v79 + 200))(v79, v83, &v124, LODWORD(state[0].opaque[1]), 0, 0);
        if ((SHIBYTE(v125) & 0x80000000) == 0)
        {
          goto LABEL_168;
        }

        p_dst = &v124;
      }

      operator delete(*p_dst);
LABEL_168:
      if ((v81 & 1) == 0)
      {
        sub_100004A34(v80);
      }

      goto LABEL_170;
    }

    if (CFStringCompare(v28, kIMSCallDisconnectionReasonNoEmergencyCallLocation, 0))
    {
      if (CFStringCompare(*__p, kIMSCallDisconnectionReasonNetworkError, 0))
      {
        if (CFStringCompare(*__p, kIMSCallDisconnectionReasonRemoteBusy, 0))
        {
          if (CFStringCompare(*__p, kIMSCallDisconnectionReasonForbidden, 0))
          {
            if (CFStringCompare(*__p, kIMSCallDisconnectionReasonMediaTimeout, 0))
            {
              if (CFStringCompare(*__p, kIMSCallDisconnectionReasonMediaError, 0))
              {
                if (CFStringCompare(*__p, kIMSCallDisconnectionReasonMediaHeartbeatTimeout, 0))
                {
                  if (CFStringCompare(*__p, kIMSCallDisconnectionReasonUnknownError, 0) == kCFCompareEqualTo)
                  {
                    v86 = **(a1 + 752);
                    if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
                    {
                      if (a2[23] >= 0)
                      {
                        v87 = a2;
                      }

                      else
                      {
                        v87 = *a2;
                      }

                      *buf = 136315138;
                      *&buf[4] = v87;
                      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to unknown error with call uuid %s", buf, 0xCu);
                    }

                    DWORD1(v189) = 1;
                    goto LABEL_142;
                  }

                  if (CFStringCompare(*__p, kIMSCallDisconnectionReasonInviteTimeout, 0) == kCFCompareEqualTo)
                  {
                    v88 = **(a1 + 752);
                    if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to timeout", buf, 2u);
                    }

                    DWORD1(v189) = 86;
                    BYTE8(v189) = 1;
                    v89 = *(a1 + 72);
                    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                    {
                      if (a2[23] >= 0)
                      {
                        v90 = a2;
                      }

                      else
                      {
                        v90 = *a2;
                      }

                      *buf = 136315138;
                      *&buf[4] = v90;
                      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "#N ### CallRedial: SIP INVITE timed out for call %s", buf, 0xCu);
                    }

                    v91 = *(a1 + 128);
                    sub_100E03FE8(v130, state);
                    v92 = v130;
                    (*(*v91 + 248))(v91, v130, 10);
                    goto LABEL_194;
                  }

                  if (CFStringCompare(*__p, kIMSCallDisconnectionReasonRequiresCSFB, 0) == kCFCompareEqualTo)
                  {
                    v93 = **(a1 + 752);
                    if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to error that requires falling back to CS", buf, 2u);
                    }

                    DWORD1(v189) = 87;
                    BYTE8(v189) = 1;
                    v94 = *(a1 + 72);
                    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
                    {
                      if (a2[23] >= 0)
                      {
                        v95 = a2;
                      }

                      else
                      {
                        v95 = *a2;
                      }

                      *buf = 136315138;
                      *&buf[4] = v95;
                      _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_DEFAULT, "#N ### CallRedial: SIP error encountered for call %s", buf, 0xCu);
                    }

                    v96 = *(a1 + 128);
                    sub_100E03FE8(v129, state);
                    v92 = v129;
                    (*(*v96 + 248))(v96, v129, 11);
                    goto LABEL_194;
                  }

                  if (CFStringCompare(*__p, kIMSCallDisconnectionReasonLocalSocketError, 0))
                  {
                    if (CFStringCompare(*__p, kIMSCallDisconnectionReasonSecondaryDeviceAlreadyInUse, 0))
                    {
                      if (CFStringCompare(*__p, kIMSCallDisconnectionReasonAnsweredElsewhere, 0))
                      {
                        if (CFStringCompare(*__p, kIMSCallDisconnectionReasonTransferredToOtherDevice, 0))
                        {
                          if (CFStringCompare(*__p, kIMSCallDisconnectionReasonAccessBarring, 0))
                          {
                            if (CFStringCompare(*__p, kIMSCallDisconnectionReasonAVConferencedCrash, 0))
                            {
                              if (CFStringCompare(*__p, kIMSCallDisconnectionReasonAudioUnit, 0))
                              {
                                if (CFStringCompare(*__p, kIMSCallDisconnectionReasonBasebandCrash, 0) == kCFCompareEqualTo)
                                {
                                  v109 = **(a1 + 752);
                                  if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
                                  {
                                    if (a2[23] >= 0)
                                    {
                                      v110 = a2;
                                    }

                                    else
                                    {
                                      v110 = *a2;
                                    }

                                    *buf = 136315138;
                                    *&buf[4] = v110;
                                    _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to Baseband Crash, call uuid %s", buf, 0xCu);
                                  }

                                  DWORD1(v189) = 3;
                                  goto LABEL_239;
                                }

                                if (CFStringCompare(*__p, kIMSCallDisconnectionReasonInvalidRat, 0) == kCFCompareEqualTo)
                                {
                                  v111 = **(a1 + 752);
                                  if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
                                  {
                                    if (a2[23] >= 0)
                                    {
                                      v112 = a2;
                                    }

                                    else
                                    {
                                      v112 = *a2;
                                    }

                                    *buf = 136315138;
                                    *&buf[4] = v112;
                                    _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to Invalid RAT, call uuid %s", buf, 0xCu);
                                  }

                                  DWORD1(v189) = 102;
                                  BYTE8(v189) = 1;
                                  BYTE13(v188) = 1;
                                  goto LABEL_246;
                                }

                                if (CFStringCompare(*__p, kIMSCallDisconnectionReasonRequiresRedial, 0) == kCFCompareEqualTo)
                                {
                                  v113 = **(a1 + 752);
                                  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
                                  {
                                    if (a2[23] >= 0)
                                    {
                                      v114 = a2;
                                    }

                                    else
                                    {
                                      v114 = *a2;
                                    }

                                    *buf = 136315138;
                                    *&buf[4] = v114;
                                    _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to IMS Fallback Requested, call uuid %s", buf, 0xCu);
                                  }

                                  DWORD1(v189) = 87;
                                  BYTE8(v189) = 1;
                                  v115 = *(a1 + 72);
                                  if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
                                  {
                                    if (a2[23] >= 0)
                                    {
                                      v116 = a2;
                                    }

                                    else
                                    {
                                      v116 = *a2;
                                    }

                                    *buf = 136315138;
                                    *&buf[4] = v116;
                                    _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "#N ### CallRedial: IMS Handover for call %s", buf, 0xCu);
                                  }

                                  (*(**(a1 + 128) + 256))(*(a1 + 128), state, 8);
                                  v29 = v8;
                                  goto LABEL_195;
                                }

                                if (CFStringCompare(*__p, kIMSCallDisconnectionReasonRequiresRedialOverLteOnly, 0))
                                {
                                  DWORD1(v189) = 0;
LABEL_239:
                                  BYTE8(v189) = 1;
LABEL_246:
                                  v29 = v8;
                                  goto LABEL_143;
                                }

                                v117 = **(a1 + 752);
                                if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
                                {
                                  if (a2[23] >= 0)
                                  {
                                    v118 = a2;
                                  }

                                  else
                                  {
                                    v118 = *a2;
                                  }

                                  *buf = 136315138;
                                  *&buf[4] = v118;
                                  _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to reason that requires RedialOverLteOnly, call uuid %s", buf, 0xCu);
                                }

                                DWORD1(v189) = 87;
                                BYTE8(v189) = 1;
                                v119 = *(a1 + 72);
                                if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
                                {
                                  if (a2[23] >= 0)
                                  {
                                    v120 = a2;
                                  }

                                  else
                                  {
                                    v120 = *a2;
                                  }

                                  *buf = 136315138;
                                  *&buf[4] = v120;
                                  _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "#N ### CallRedial: EPSFB failed for call %s", buf, 0xCu);
                                }

                                v121 = *(a1 + 128);
                                sub_100E03FE8(v128, state);
                                v29 = v8;
                                v92 = v128;
                                (*(*v121 + 248))(v121, v128, 9);
LABEL_194:
                                sub_1000BFE80(v92);
LABEL_195:
                                LOWORD(v189) = v29;
LABEL_170:
                                sub_100005978(__p);
                                *buf = &v135;
                                sub_1000B42B0(buf);
                                goto LABEL_171;
                              }

                              v107 = **(a1 + 752);
                              if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
                              {
                                if (a2[23] >= 0)
                                {
                                  v108 = a2;
                                }

                                else
                                {
                                  v108 = *a2;
                                }

                                *buf = 136315138;
                                *&buf[4] = v108;
                                _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to Media Start Failure, call uuid %s", buf, 0xCu);
                              }

                              v46 = 79;
                            }

                            else
                            {
                              v105 = **(a1 + 752);
                              if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                              {
                                if (a2[23] >= 0)
                                {
                                  v106 = a2;
                                }

                                else
                                {
                                  v106 = *a2;
                                }

                                *buf = 136315138;
                                *&buf[4] = v106;
                                _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to AVC crash, call uuid %s", buf, 0xCu);
                              }

                              v46 = 78;
                            }
                          }

                          else
                          {
                            v103 = **(a1 + 752);
                            if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                            {
                              if (a2[23] >= 0)
                              {
                                v104 = a2;
                              }

                              else
                              {
                                v104 = *a2;
                              }

                              *buf = 136315138;
                              *&buf[4] = v104;
                              _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to Access barring, call uuid %s", buf, 0xCu);
                            }

                            v46 = 26;
                          }
                        }

                        else
                        {
                          v101 = **(a1 + 752);
                          if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
                          {
                            if (a2[23] >= 0)
                            {
                              v102 = a2;
                            }

                            else
                            {
                              v102 = *a2;
                            }

                            *buf = 136315138;
                            *&buf[4] = v102;
                            _os_log_impl(&_mh_execute_header, v101, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to the call being transferred to another device %s", buf, 0xCu);
                          }

                          v46 = 84;
                        }
                      }

                      else
                      {
                        v99 = **(a1 + 752);
                        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                        {
                          if (a2[23] >= 0)
                          {
                            v100 = a2;
                          }

                          else
                          {
                            v100 = *a2;
                          }

                          *buf = 136315138;
                          *&buf[4] = v100;
                          _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to the call being answered on another device %s", buf, 0xCu);
                        }

                        v46 = 83;
                      }
                    }

                    else
                    {
                      v97 = **(a1 + 752);
                      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                      {
                        if (a2[23] >= 0)
                        {
                          v98 = a2;
                        }

                        else
                        {
                          v98 = *a2;
                        }

                        *buf = 136315138;
                        *&buf[4] = v98;
                        _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due another secondary device already on a call %s", buf, 0xCu);
                      }

                      v46 = 82;
                    }
                  }

                  else
                  {
                    v46 = 80;
                  }
                }

                else
                {
                  v67 = **(a1 + 752);
                  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                  {
                    if (a2[23] >= 0)
                    {
                      v68 = a2;
                    }

                    else
                    {
                      v68 = *a2;
                    }

                    *buf = 136315138;
                    *&buf[4] = v68;
                    _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to media hold heartbeat timeout with call uuid %s", buf, 0xCu);
                  }

                  v46 = 76;
                }
              }

              else
              {
                v65 = **(a1 + 752);
                if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                {
                  if (a2[23] >= 0)
                  {
                    v66 = a2;
                  }

                  else
                  {
                    v66 = *a2;
                  }

                  *buf = 136315138;
                  *&buf[4] = v66;
                  _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to media error with call uuid %s", buf, 0xCu);
                }

                v46 = 77;
              }
            }

            else
            {
              v63 = **(a1 + 752);
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                if (a2[23] >= 0)
                {
                  v64 = a2;
                }

                else
                {
                  v64 = *a2;
                }

                *buf = 136315138;
                *&buf[4] = v64;
                _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to media timeout with call uuid %s", buf, 0xCu);
              }

              v46 = 75;
            }
          }

          else
          {
            v61 = **(a1 + 752);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              if (a2[23] >= 0)
              {
                v62 = a2;
              }

              else
              {
                v62 = *a2;
              }

              *buf = 136315138;
              *&buf[4] = v62;
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to rejection from the network (forbidden) with call uuid %s", buf, 0xCu);
            }

            v46 = 32;
          }
        }

        else
        {
          v47 = **(a1 + 752);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            if (a2[23] >= 0)
            {
              v48 = a2;
            }

            else
            {
              v48 = *a2;
            }

            *buf = 136315138;
            *&buf[4] = v48;
            _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to remote user busy with call uuid %s", buf, 0xCu);
          }

          v46 = 28;
        }
      }

      else
      {
        v44 = **(a1 + 752);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          if (a2[23] >= 0)
          {
            v45 = a2;
          }

          else
          {
            v45 = *a2;
          }

          *buf = 136315138;
          *&buf[4] = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected due to network error with call uuid %s", buf, 0xCu);
        }

        v46 = 4;
      }

      DWORD1(v189) = v46;
LABEL_142:
      BYTE8(v189) = 1;
      goto LABEL_143;
    }

    v32 = **(a1 + 752);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      if (a2[23] >= 0)
      {
        v33 = a2;
      }

      else
      {
        v33 = *a2;
      }

      *buf = 136315138;
      *&buf[4] = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Call Disconnected because emergency calls over WiFi not allowed in this location; call uuid %s", buf, 0xCu);
    }

    DWORD1(v189) = 0;
    BYTE8(v189) = 1;
    v34 = Registry::getServiceMap(*(a1 + 96));
    v35 = v34;
    if (v36 < 0)
    {
      v37 = (v36 & 0x7FFFFFFFFFFFFFFFLL);
      v38 = 5381;
      do
      {
        v36 = v38;
        v39 = *v37++;
        v38 = (33 * v38) ^ v39;
      }

      while (v39);
    }

    std::mutex::lock(v34);
    *buf = v36;
    v40 = sub_100009510(&v35[1].__m_.__sig, buf);
    if (v40)
    {
      v42 = v40[3];
      v41 = v40[4];
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v35);
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v41);
        v43 = 0;
        if (!v42)
        {
LABEL_121:
          if ((v43 & 1) == 0)
          {
            sub_100004A34(v41);
          }

          goto LABEL_143;
        }

LABEL_102:
        v49 = **(a1 + 752);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I Displaying a pop-up", buf, 2u);
        }

        *v141 = 0;
        v50 = kAlertDialogLocalizationTable;
        (*(*v42 + 40))(v141, v42, kAlertDialogLocalizationTable, @"CANCEL", @"Cancel");
        v132 = 0;
        (*(*v42 + 40))(&v132, v42, v50, @"COUNTRY_DISABLED_WIFI_EMERGENCY_CALL", @"Emergency Call Not Available in This Location");
        v131 = 0;
        v51 = Registry::getServiceMap(*(a1 + 96));
        v52 = v51;
        if (v53 < 0)
        {
          v54 = (v53 & 0x7FFFFFFFFFFFFFFFLL);
          v55 = 5381;
          do
          {
            v53 = v55;
            v56 = *v54++;
            v55 = (33 * v55) ^ v56;
          }

          while (v56);
        }

        std::mutex::lock(v51);
        *buf = v53;
        v57 = sub_100009510(&v52[1].__m_.__sig, buf);
        if (v57)
        {
          v59 = v57[3];
          v58 = v57[4];
          if (v58)
          {
            atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v52);
            atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
            v29 = v122;
            sub_100004A34(v58);
            v60 = 0;
LABEL_118:
            (*(*v59 + 32))(v59, v132, v131, *v141);
            if ((v60 & 1) == 0)
            {
              sub_100004A34(v58);
            }

            sub_100005978(&v131);
            sub_100005978(&v132);
            sub_100005978(v141);
            goto LABEL_121;
          }
        }

        else
        {
          v59 = 0;
        }

        std::mutex::unlock(v52);
        v58 = 0;
        v60 = 1;
        goto LABEL_118;
      }
    }

    else
    {
      v42 = 0;
    }

    std::mutex::unlock(v35);
    v41 = 0;
    v43 = 1;
    if (!v42)
    {
      goto LABEL_121;
    }

    goto LABEL_102;
  }

  if (v14)
  {
    if (a2[23] >= 0)
    {
      v30 = a2;
    }

    else
    {
      v30 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = v30;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Received Disconnect Event with unknown uuid: %s", buf, 0xCu);
  }

LABEL_171:
  sub_1000BFE80(state);
  return sub_1000C0590(&v138);
}