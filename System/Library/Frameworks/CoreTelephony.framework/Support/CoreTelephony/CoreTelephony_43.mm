void sub_1002AA620(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_1002AA6C4(&v2, a2);
}

uint64_t sub_1002AA680(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1002AA6C4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1002AA730(&v2, a2);
}

void sub_1002AA7A0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_1002AA7E0(uint64_t result)
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

uint64_t sub_1002AA8FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002AAA84(a1, a2);
  sub_1002AAAF0((v4 + 3), a2 + 24);
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

uint64_t *sub_1002AAA84(uint64_t *a1, uint64_t a2)
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

uint64_t sub_1002AAAF0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1002AAB58(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1002AABC4(&v2, a2);
}

void sub_1002AAC34(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_1002AAC74(uint64_t result)
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

uint64_t sub_1002AACF4(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 296), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_1002AADCC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1002AADEC(uint64_t a1)
{
  v4 = a1;
  sub_1002A71C4(*a1, *(a1 + 8));
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  return sub_10028C5E0(&v4);
}

void sub_1002AAE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10028C5E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002AAE6C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 16);
    sub_10001021C((v1 + 8));
    operator delete();
  }

  return a1;
}

uint64_t *sub_1002AAEC4(uint64_t *a1)
{
  v7 = a1;
  v2 = *a1;
  v3 = a1[1];
  std::mutex::lock((*a1 + 32));
  v4 = *(v2 + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (v2 + 128);
    if (*(v2 + 151) < 0)
    {
      v5 = *v5;
    }

    *buf = 136315394;
    *&buf[4] = "setAPNs";
    v9 = 2080;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: UI APN(s) update for ICCID:'%s'", buf, 0x16u);
  }

  *buf = 0;
  sub_1002A8CBC(v2, v3, 0, buf);
  sub_1002A839C(v2, *buf);
  sub_10001021C(buf);
  std::mutex::unlock((v2 + 32));
  if (a1[5])
  {
    sub_10000FFD0((a1 + 2), 1);
  }

  return sub_1002AAE6C(&v7);
}

void sub_1002AAFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  sub_10001021C(va1);
  std::mutex::unlock((v3 + 32));
  sub_1002AAE6C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002AB020(uint64_t *a1)
{
  v7 = a1;
  v2 = *a1;
  v3 = a1[1];
  std::mutex::lock((*a1 + 32));
  v4 = *(v2 + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (v2 + 128);
    if (*(v2 + 151) < 0)
    {
      v5 = *v5;
    }

    *buf = 136315394;
    *&buf[4] = "setAttachAPN";
    v9 = 2080;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: UI AttachAPN update for ICCID:'%s'", buf, 0x16u);
  }

  *buf = 0;
  sub_1002A8CBC(v2, 0, v3, buf);
  sub_1002A839C(v2, *buf);
  sub_10001021C(buf);
  std::mutex::unlock((v2 + 32));
  if (a1[5])
  {
    sub_10000FFD0((a1 + 2), 1);
  }

  return sub_1002AAE6C(&v7);
}

void sub_1002AB148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  sub_10001021C(va1);
  std::mutex::unlock((v3 + 32));
  sub_1002AAE6C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002AB17C(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10006372C(v1 + 8);
    operator delete();
  }

  return a1;
}

uint64_t *sub_1002AB1CC(uint64_t *a1)
{
  v4 = a1;
  if (a1[4])
  {
    sub_1002A7638(*a1, &v5);
    v2 = a1[4];
    if (!v2)
    {
      sub_100022DB4();
    }

    (*(*v2 + 48))(v2, &v5);
    sub_10001021C(&v5);
  }

  return sub_1002AB17C(&v4);
}

uint64_t *sub_1002AB278(void *a1)
{
  v5 = a1;
  if (a1[4])
  {
    v2 = *a1;
    std::mutex::lock((*a1 + 32));
    sub_100010024(&v6, (v2 + 120));
    std::mutex::unlock((v2 + 32));
    v3 = a1[4];
    if (!v3)
    {
      sub_100022DB4();
    }

    (*(*v3 + 48))(v3, &v6);
    sub_10001021C(&v6);
  }

  return sub_1002AB17C(&v5);
}

uint64_t sub_1002AB3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10029F000(a1);
  *v6 = off_101E37F88;
  *(v6 + 156) = 0;
  *(v6 + 148) = 0;
  *(v6 + 164) = 0;
  CIPFamily::CIPFamily((v6 + 168));
  CIPFamily::CIPFamily((a1 + 184));
  *(a1 + 200) = 0;
  *(a1 + 216) = 0;
  *(a1 + 242) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  sub_1002AB638(a1, a2);
  if (*a3)
  {
    if (CIPFamily::operator!())
    {
      CIPFamily::operator=();
    }

    if (CIPFamily::operator!())
    {
      CIPFamily::operator=();
    }

    if ((*(a1 + 216) & 1) == 0)
    {
      sub_1002ABB94((a1 + 200), (*a3 + 200));
    }

    if ((*(a1 + 232) & 1) == 0)
    {
      *(a1 + 232) = *(*a3 + 232);
    }

    if ((*(a1 + 233) & 1) == 0)
    {
      *(a1 + 233) = *(*a3 + 233);
    }

    if ((*(a1 + 256) & 1) == 0)
    {
      *(a1 + 256) = *(*a3 + 256);
    }

    if ((*(a1 + 238) & 1) == 0)
    {
      *(a1 + 237) = *(*a3 + 237);
    }

    if ((*(a1 + 240) & 1) == 0)
    {
      *(a1 + 239) = *(*a3 + 239);
    }

    if ((*(a1 + 236) & 1) == 0)
    {
      *(a1 + 236) = *(*a3 + 236);
    }

    if ((*(a1 + 234) & 1) == 0)
    {
      *(a1 + 234) = *(*a3 + 234);
    }
  }

  return a1;
}

void sub_1002AB58C(_Unwind_Exception *a1)
{
  CIPFamily::~CIPFamily((v1 + 168));
  sub_10029F15C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002AB638(uint64_t a1, uint64_t a2)
{
  sub_1002AB720(a1, a2);
  v4 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v4;
  CIPFamily::operator=();
  CIPFamily::operator=();
  sub_1002ABB94((a1 + 200), (a2 + 200));
  *(a1 + 224) = *(a2 + 224);
  v5 = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 232) = v5;
  sub_1000676D4((a1 + 248), (a2 + 248));
  *(a1 + 256) = *(a2 + 256);
  if (a1 != a2)
  {
    sub_1002AB778((a1 + 264), *(a2 + 264), *(a2 + 272), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 272) - *(a2 + 264)) >> 3));
  }

  sub_10012BF3C((a1 + 288), (a2 + 288));
  sub_10012BF3C((a1 + 320), (a2 + 320));
  sub_1002ABAE4(a1 + 352, a2 + 352);
  *(a1 + 384) = *(a2 + 384);
  return a1;
}

std::string *sub_1002AB720(std::string *a1, const std::string *a2)
{
  std::string::operator=(a1 + 2, a2 + 2);
  std::string::operator=(a1 + 3, a2 + 3);
  std::string::operator=(a1 + 4, a2 + 4);
  std::string::operator=(a1 + 5, a2 + 5);
  return a1;
}

void sub_1002AB778(uint64_t *a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_1002AB8FC(a1);
    if (a4 <= 0x492492492492492)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
      {
        v10 = 0x492492492492492;
      }

      else
      {
        v10 = v9;
      }

      sub_1002AB93C(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1] - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v11 >> 3) >= a4)
  {
    sub_1002ABA54(&v17, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      do
      {
        v15 = *(v14 - 32);
        if (v15)
        {
          *(v14 - 24) = v15;
          operator delete(v15);
        }

        v14 -= 56;
      }

      while (v14 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    sub_1002ABA54(&v16, a2, a2 + v11, v8);
    a1[1] = sub_1002AB98C(a1, (a2 + v11), a3, a1[1]);
  }
}

void sub_1002AB8FC(uint64_t *a1)
{
  if (*a1)
  {
    sub_1002A226C(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1002AB93C(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_1002A6618(a1, a2);
  }

  sub_1000CE3D4();
}

uint64_t sub_1002AB98C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *(v4 + 16) = *(v6 + 2);
      *v4 = v7;
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      *(v4 + 24) = 0;
      sub_10024064C((v4 + 24), *(v6 + 3), *(v6 + 4), (*(v6 + 4) - *(v6 + 3)) >> 2);
      *(v4 + 48) = *(v6 + 48);
      v6 = (v6 + 56);
      v4 = v12 + 56;
      v12 += 56;
    }

    while (v6 != a3);
  }

  LOBYTE(v10) = 1;
  sub_1002A6744(v9);
  return v4;
}

uint64_t sub_1002ABA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    v7 = a2 + 32;
    do
    {
      v8 = v7 - 32;
      v9 = *(v7 - 32);
      *(a4 + 16) = *(v7 - 16);
      *a4 = v9;
      if (a4 != v7 - 32)
      {
        sub_1000B26FC((a4 + 24), *(v7 - 8), *v7, (*v7 - *(v7 - 8)) >> 2);
      }

      *(a4 + 48) = *(v7 + 16);
      a4 += 56;
      v7 += 56;
    }

    while (v8 + 56 != a3);
    return a3;
  }

  return result;
}

void sub_1002ABAE4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = &v3[-*a2] >> 2;
      v5 = *a2;

      sub_1000B26FC(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_10024064C(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    *(a1 + 24) = 1;
  }
}

void sub_1002ABB94(CIPFamily *a1, const CIPFamily *a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {
    if (*(a1 + 16))
    {

      CIPFamily::operator=();
    }
  }

  else if (*(a1 + 16))
  {
    CIPFamily::~CIPFamily(a1);
    *(v2 + 16) = 0;
  }

  else
  {
    CIPFamily::CIPFamily(a1, a2);
    *(v3 + 16) = 1;
  }
}

void sub_1002ABC10(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E384E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const char *sub_1002ABC8C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = "cb-apn.?";
  if (v1 == 2)
  {
    v2 = "cb-apn.2";
  }

  if (v1 == 1)
  {
    return "cb-apn.1";
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1002ABCBC(uint64_t a1)
{
  *a1 = off_101E38530;
  if (*(a1 + 224) == 1)
  {
    v5 = (a1 + 200);
    sub_1000212F4(&v5);
  }

  v2 = *(a1 + 192);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 176) == 1)
  {
    v5 = (a1 + 152);
    sub_1000B25C4(&v5);
  }

  if (*(a1 + 144) == 1)
  {
    v5 = (a1 + 120);
    sub_1000212F4(&v5);
  }

  v5 = (a1 + 96);
  sub_1000212F4(&v5);
  std::mutex::~mutex((a1 + 32));
  ctu::OsLogLogger::~OsLogLogger((a1 + 24));
  *a1 = off_101E38008;
  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_release(v3);
  }

  return a1;
}

void sub_1002ABDAC(uint64_t a1)
{
  sub_1002ABCBC(a1);

  operator delete();
}

uint64_t sub_1002ABDE8(uint64_t a1)
{
  std::mutex::lock((a1 + 32));
  v2 = (*(a1 + 104) - *(a1 + 96)) >> 4;
  std::mutex::unlock((a1 + 32));
  return v2;
}

void sub_1002ABE28(uint64_t a1)
{
  std::mutex::lock((a1 + 32));
  v2 = (a1 + 24);
  v3 = *(a1 + 24);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I DATA:: CB_APN_Storage:", buf, 2u);
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (*(a1 + 104) - *(a1 + 96)) >> 4;
    *buf = 134217984;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t %lu APN(s) found", buf, 0xCu);
  }

  v5 = *(a1 + 96);
  if (*(a1 + 104) != v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t APNx%zu:", buf, 0xCu);
        v5 = *(a1 + 96);
      }

      sub_1002A24E4(*(v5 + v6), (a1 + 24));
      ++v7;
      v5 = *(a1 + 96);
      v6 += 16;
    }

    while (v7 < (*(a1 + 104) - v5) >> 4);
  }

  if (*(a1 + 144))
  {
    v9 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v10 = (*(a1 + 128) - *(a1 + 120)) >> 4;
      *buf = 134217984;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t %lu FallbackAPN(s) found", buf, 0xCu);
      if ((*(a1 + 144) & 1) == 0)
      {
LABEL_20:
        sub_1000D1644();
      }
    }

    v11 = 0;
    v12 = 0;
    v13 = 1;
    while (v12 < (*(a1 + 128) - *(a1 + 120)) >> 4)
    {
      v14 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t FallbackAPNx%zu:", buf, 0xCu);
        if ((*(a1 + 144) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else if ((v13 & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_1002A24E4(*(*(a1 + 120) + v11), (a1 + 24));
      ++v12;
      v13 = *(a1 + 144);
      v11 += 16;
      if ((v13 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  std::mutex::unlock((a1 + 32));
}

void sub_1002AC0F4(uint64_t a1)
{
  std::mutex::lock((a1 + 32));
  sub_100021348((a1 + 96));
  if (*(a1 + 144) == 1)
  {
    *buf = a1 + 120;
    sub_1000212F4(buf);
    *(a1 + 144) = 0;
  }

  if (*(a1 + 176) == 1)
  {
    *buf = a1 + 152;
    sub_1000B25C4(buf);
    *(a1 + 176) = 0;
  }

  v73 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v72 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 184));
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
      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_13:
  (*(*v10 + 192))(&ValueAtIndex, v10, *(a1 + 8));
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *__p = *buf;
  v72 = *&buf[16];
  sub_100005978(&ValueAtIndex);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  v12 = (a1 + 24);
  v13 = *(a1 + 24);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = __p;
    if (v72 < 0)
    {
      v14 = __p[0];
    }

    *buf = 136315394;
    *&buf[4] = "refresh";
    *&buf[12] = 2080;
    *&buf[14] = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: reading APNs from: %s", buf, 0x16u);
  }

  v70 = 0;
  v15 = Registry::getServiceMap(*(a1 + 184));
  v16 = v15;
  v18 = v17;
  if (v17 < 0)
  {
    v19 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
    v20 = 5381;
    do
    {
      v18 = v20;
      v21 = *v19++;
      v20 = (33 * v20) ^ v21;
    }

    while (v21);
  }

  std::mutex::lock(v15);
  *buf = v18;
  v22 = sub_100009510(&v16[1].__m_.__sig, buf);
  if (v22)
  {
    v24 = v22[3];
    v23 = v22[4];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v16);
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v23);
      v25 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    v24 = 0;
  }

  std::mutex::unlock(v16);
  v23 = 0;
  v25 = 1;
LABEL_27:
  (*(*v24 + 80))(&ValueAtIndex, v24, *(a1 + 8), 1, @"apns", 0, 0);
  sub_10006DD00(&v70, &ValueAtIndex);
  sub_10000A1EC(&ValueAtIndex);
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  theArray = 0;
  v26 = Registry::getServiceMap(*(a1 + 184));
  v27 = v26;
  if (v17 < 0)
  {
    v28 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
    v29 = 5381;
    do
    {
      v17 = v29;
      v30 = *v28++;
      v29 = (33 * v29) ^ v30;
    }

    while (v30);
  }

  std::mutex::lock(v26);
  *buf = v17;
  v31 = sub_100009510(&v27[1].__m_.__sig, buf);
  if (v31)
  {
    v33 = v31[3];
    v32 = v31[4];
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v27);
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v32);
      v34 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v33 = 0;
  }

  std::mutex::unlock(v27);
  v32 = 0;
  v34 = 1;
LABEL_37:
  (*(*v33 + 80))(&ValueAtIndex, v33, *(a1 + 8), 1, @"fallback-apns", 0, 0);
  sub_10006DD00(&theArray, &ValueAtIndex);
  sub_10000A1EC(&ValueAtIndex);
  if ((v34 & 1) == 0)
  {
    sub_100004A34(v32);
  }

  if (theArray && CFArrayGetCount(theArray))
  {
    v35 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      v36 = SHIBYTE(v72);
      v37 = __p[0];
      Count = CFArrayGetCount(theArray);
      v39 = __p;
      *buf = 136315650;
      *&buf[4] = "refresh";
      if (v36 < 0)
      {
        v39 = v37;
      }

      *&buf[12] = 2080;
      *&buf[14] = v39;
      *&buf[22] = 1024;
      LODWORD(v76) = Count;
      v40 = "#I %s: Fallback APNS in %s: count %d";
      v41 = v35;
      v42 = 28;
LABEL_49:
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, v40, buf, v42);
    }
  }

  else
  {
    v43 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      v44 = __p;
      if (v72 < 0)
      {
        v44 = __p[0];
      }

      *buf = 136315394;
      *&buf[4] = "refresh";
      *&buf[12] = 2080;
      *&buf[14] = v44;
      v40 = "#I %s: No Fallback APNS in %s";
      v41 = v43;
      v42 = 22;
      goto LABEL_49;
    }
  }

  if (v70 && CFArrayGetCount(v70))
  {
    *buf = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(v70, 0);
    sub_100010180(buf, &ValueAtIndex);
    v45 = *buf && (!CFDictionaryContainsKey(*buf, @"configuration") || !CFDictionaryContainsKey(*buf, @"technology-mask"));
    sub_10001021C(buf);
    v48 = sub_10029EB94(v70, @"technology-mask");
    if (v45)
    {
      *buf = 236;
      sub_1002AD140(a1, (a1 + 96), v70, 3, buf, &v73);
      *buf = 236;
      sub_1002AD2B4(a1, buf);
      if (theArray)
      {
        memset(buf, 0, sizeof(buf));
        sub_1002AE564(a1 + 120, buf);
        ValueAtIndex = buf;
        sub_1000212F4(&ValueAtIndex);
        if ((*(a1 + 144) & 1) == 0)
        {
          sub_1000D1644();
        }

        *buf = 236;
        sub_1002AD140(a1, (a1 + 120), theArray, 3, buf, &v73);
      }
    }

    else
    {
      v49 = v48;
      v68 = 1;
      *buf = v70;
      sub_1002AE5E4(a1, __p, v48, &v73, buf, (a1 + 96), "", &v68, 1);
      if (theArray)
      {
        memset(buf, 0, sizeof(buf));
        sub_1002AE564(a1 + 120, buf);
        ValueAtIndex = buf;
        sub_1000212F4(&ValueAtIndex);
        *buf = theArray;
        if ((*(a1 + 144) & 1) == 0)
        {
          sub_1000D1644();
        }

        sub_1002AE5E4(a1, __p, v49, &v73, buf, (a1 + 120), "Fallback ", &v68, 0);
      }
    }
  }

  else
  {
    v46 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      v47 = __p;
      if (v72 < 0)
      {
        v47 = __p[0];
      }

      *buf = 136315394;
      *&buf[4] = "refresh";
      *&buf[12] = 2080;
      *&buf[14] = v47;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I %s: No APNS in %s", buf, 0x16u);
    }
  }

  v50 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    v51 = (*(a1 + 104) - *(a1 + 96)) >> 4;
    *buf = 136315394;
    *&buf[4] = "refresh";
    *&buf[12] = 2048;
    *&buf[14] = v51;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I %s: %zu APN(s) in CB ==>> ", buf, 0x16u);
  }

  v52 = *(a1 + 96);
  if (*(a1 + 104) != v52)
  {
    v53 = 0;
    v54 = 0;
    do
    {
      v55 = *(v52 + v53);
      if ((*(v55 + 232) & 1) == 0 && ((*(v55 + 160) | *(v55 + 152)) & 0xFFFFFFFFFBF9FFFBLL) == 0)
      {
        *(v55 + 232) = 1;
        v56 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
        {
          v57 = (v55 + 48);
          if (*(v55 + 71) < 0)
          {
            v57 = *v57;
          }

          v58 = *(v55 + 144) - 1;
          v59 = "UI";
          if (v58 <= 4)
          {
            v59 = off_101E385D8[v58];
          }

          v60 = *(v55 + 148);
          *buf = 136315906;
          *&buf[4] = "refresh";
          *&buf[12] = 2080;
          *&buf[14] = v57;
          *&buf[22] = 2080;
          v76 = v59;
          v77 = 1024;
          v78 = v60;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I %s: APN %s (%s.%d), allowing no DNS", buf, 0x26u);
          v55 = *(*(a1 + 96) + v53);
        }
      }

      sub_1002A3288(v55, (a1 + 24), "");
      ++v54;
      v52 = *(a1 + 96);
      v53 += 16;
    }

    while (v54 < (*(a1 + 104) - v52) >> 4);
  }

  v61 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "refresh";
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I %s: <<== APN(s)", buf, 0xCu);
  }

  if (*(a1 + 144) == 1)
  {
    v62 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      v63 = (*(a1 + 128) - *(a1 + 120)) >> 4;
      *buf = 136315394;
      *&buf[4] = "refresh";
      *&buf[12] = 2048;
      *&buf[14] = v63;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#I %s: %zu Fallback APN(s) in CB ==>> ", buf, 0x16u);
      if ((*(a1 + 144) & 1) == 0)
      {
LABEL_89:
        sub_1000D1644();
      }
    }

    v64 = 0;
    v65 = -1;
    while (1)
    {
      v66 = *(a1 + 120);
      if (++v65 >= ((*(a1 + 128) - v66) >> 4))
      {
        break;
      }

      sub_1002A3288(*(v66 + v64), (a1 + 24), "");
      v64 += 16;
      if ((*(a1 + 144) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    v67 = *v12;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "refresh";
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "#I %s: <<== Fallback APN(s)", buf, 0xCu);
    }
  }

  sub_100010250(&theArray);
  sub_100010250(&v70);
  if (SHIBYTE(v72) < 0)
  {
    operator delete(__p[0]);
  }

  std::mutex::unlock((a1 + 32));
}

void sub_1002ACB90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, const void *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_1000212F4(&a25);
  sub_100010250(&a15);
  sub_100010250(&a16);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v31 + 32));
  _Unwind_Resume(a1);
}

void sub_1002ACCC4(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = a4;
  std::mutex::lock((a1 + 32));
  v12 = 0;
  v13 = 0;
  v14 = 0;
  LODWORD(v15) = a3;
  sub_1002AE9C8(a1, a2, &v15, v5, 1, &v12);
  if (v13 == v12)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = *v12;
    v11 = v12[1];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }
  }

  v15 = &v12;
  sub_1000212F4(&v15);
  *a5 = v10;
  a5[1] = v11;
  std::mutex::unlock((a1 + 32));
}

uint64_t sub_1002ACD98(uint64_t a1)
{
  std::mutex::lock((a1 + 32));
  v2 = *(a1 + 96);
  v3 = *(a1 + 104) - v2;
  if (v3)
  {
    v4 = v3 >> 4;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    while (1)
    {
      v5 = *(*v2 + 228);
      if ((v5 & 4) == 0)
      {
        break;
      }

      v2 += 16;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }

    if ((v5 & 8) != 0)
    {
      v6 = 8;
    }

    else if ((v5 & 0x20) != 0)
    {
      v6 = 32;
    }

    else if ((v5 & 0x40) != 0)
    {
      v6 = 64;
    }

    else if ((v5 & 0x80) != 0)
    {
      v6 = 128;
    }

    else
    {
      v6 = 4;
    }
  }

  else
  {
LABEL_6:
    v6 = 4;
  }

  std::mutex::unlock((a1 + 32));
  return v6;
}

uint64_t sub_1002ACE38(uint64_t a1, uint64_t *a2, int a3)
{
  result = 0;
  if (a3 && *a2)
  {
    if (*(a1 + 144) == 1)
    {
      v8 = *(a1 + 120);
      v7 = *(a1 + 128);
      if (v8 == v7)
      {
LABEL_14:
        v11 = 0;
      }

      else
      {
        while (1)
        {
          if (sub_10021D09C(&(*v8)[13].__r_.__value_.__s.__data_[8], (*a2 + 48)))
          {
            data = *v8;
            if (HIDWORD((*v8)[9].__r_.__value_.__r.__words[1]) == *(*a2 + 228) && data[15].__r_.__value_.__s.__data_[16] == 1)
            {
              v10 = data[14].__r_.__value_.__r.__words[2];
              data = data[15].__r_.__value_.__l.__data_;
              if (v10 != data)
              {
                while (LODWORD(v10->__r_.__value_.__l.__data_) != a3)
                {
                  v10 = (v10 + 4);
                  if (v10 == data)
                  {
                    goto LABEL_13;
                  }
                }
              }

              if (v10 != data)
              {
                break;
              }
            }
          }

LABEL_13:
          v8 += 2;
          if (v8 == v7)
          {
            goto LABEL_14;
          }
        }

        if ((*(a1 + 176) & 1) == 0)
        {
          v36[0] = 0;
          v36[1] = 0;
          v37 = 0;
          sub_1002AF014(a1 + 152, v36);
          v41 = v36;
          sub_1000B25C4(&v41);
          if ((*(a1 + 176) & 1) == 0)
          {
            sub_1000D1644();
          }
        }

        v12 = *(a1 + 152);
        v13 = *(a1 + 160);
        if (v12 == v13)
        {
LABEL_37:
          sub_1002AF40C(v36, (*a2 + 48), &(*v8)[2], (*a2 + 228));
          v23 = *(a1 + 160);
          if (v23 >= *(a1 + 168))
          {
            v26 = sub_1002AF0FC((a1 + 152), v36);
            v27 = SHIBYTE(v39);
            *(a1 + 160) = v26;
            if (v27 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v24 = *v36;
            *(v23 + 16) = v37;
            *v23 = v24;
            v36[0] = 0;
            v36[1] = 0;
            v25 = v39;
            *(v23 + 24) = *__p;
            *(v23 + 40) = v25;
            v37 = 0;
            __p[0] = 0;
            __p[1] = 0;
            v39 = 0;
            *(v23 + 48) = v40;
            *(a1 + 160) = v23 + 56;
          }

          if (SHIBYTE(v37) < 0)
          {
            operator delete(v36[0]);
          }
        }

        else
        {
          v14 = *a2;
          v15 = *(*a2 + 71);
          if (v15 >= 0)
          {
            v16 = *(*a2 + 71);
          }

          else
          {
            v16 = *(*a2 + 56);
          }

          v17 = v12 + 24;
          while (1)
          {
            v18 = *(v17 - 1);
            v19 = v18;
            if ((v18 & 0x80u) != 0)
            {
              v18 = *(v17 - 16);
            }

            if (v18 == v16)
            {
              v20 = v19 >= 0 ? (v17 - 24) : *(v17 - 24);
              v21 = v15 >= 0 ? (v14 + 48) : *(v14 + 48);
              if (!memcmp(v20, v21, v16) && *(v17 + 24) == *(v14 + 228))
              {
                break;
              }
            }

            v22 = v17 + 32;
            v17 += 56;
            if (v22 == v13)
            {
              goto LABEL_37;
            }
          }

          v28 = *v8;
          v29 = *v8 + 2;
          v30 = *(v17 + 23);
          if (v30 >= 0)
          {
            v31 = *(v17 + 23);
          }

          else
          {
            v31 = *(v17 + 8);
          }

          v32 = HIBYTE(v28[2].__r_.__value_.__r.__words[2]);
          size = v28[2].__r_.__value_.__l.__size_;
          if ((v32 & 0x80u) == 0)
          {
            size = v32;
          }

          if (v31 == size)
          {
            v34 = v30 >= 0 ? v17 : *v17;
            v35 = (v32 & 0x80u) == 0 ? &(*v8)[2] : v29->__r_.__value_.__r.__words[0];
            if (!memcmp(v34, v35, v31))
            {
              LODWORD(data) = 0;
              v11 = 1;
              return v11 & data;
            }
          }

          std::string::operator=(v17, v29);
        }

        v11 = 1;
        LODWORD(data) = 1;
      }

      return v11 & data;
    }

    return 0;
  }

  return result;
}

void sub_1002AD140(uint64_t result, void **a2, CFArrayRef theArray, uint64_t a4, _DWORD *a5, _DWORD *a6)
{
  if (theArray && CFArrayGetCount(theArray) >= 1)
  {
    v9 = 0;
    v8[0] = CFArrayGetValueAtIndex(theArray, 0);
    sub_100010180(&v9, v8);
    if (!v9)
    {
      __TUAssertTrigger("dictRef");
    }

    v8[0] = 0;
    v8[1] = 0;
    ++*a6;
    sub_1002A938C(v8);
  }
}

void sub_1002AD288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_1002AD2B4(uint64_t a1, WirelessTechnologyList *a2)
{
  v2 = a2;
  v3 = a1;
  if ((*(a1 + 224) & 1) == 0)
  {
    __p = 0;
    v151 = 0;
    v152 = 0;
    ServiceMap = Registry::getServiceMap(*(a1 + 184));
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
        goto LABEL_10;
      }
    }

    else
    {
      v12 = 0;
    }

    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
LABEL_10:
    (*(*v12 + 56))(&__p, v12, 4, 1);
    if ((v13 & 1) == 0)
    {
      sub_100004A34(v11);
    }

    v14 = HIBYTE(v152);
    if (v152 < 0)
    {
      v14 = v151;
    }

    if (!v14)
    {
      v3 = a1;
      v28 = *(a1 + 24);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "readDefaultBundleApns";
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s: Default bundle not yet settled", buf, 0xCu);
      }

      goto LABEL_64;
    }

    memset(buf, 0, sizeof(buf));
    sub_1002AE564(a1 + 200, buf);
    theArray = buf;
    sub_1000212F4(&theArray);
    v15 = (a1 + 24);
    v16 = *(a1 + 24);
    v3 = a1;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      p_p = &__p;
      if (v152 < 0)
      {
        p_p = __p;
      }

      *buf = 136315394;
      *&buf[4] = "readDefaultBundleApns";
      *&buf[12] = 2080;
      *&buf[14] = p_p;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s: reading default APNs from: %s", buf, 0x16u);
    }

    theArray = 0;
    v18 = Registry::getServiceMap(*(a1 + 184));
    v19 = v18;
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

    std::mutex::lock(v18);
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
        v3 = a1;
        sub_100004A34(v25);
        v27 = 0;
LABEL_29:
        (*(*v26 + 80))(&theDict, v26, 1, 4, @"apns", 0, 0);
        sub_10006DD00(&theArray, &theDict);
        sub_10000A1EC(&theDict);
        if ((v27 & 1) == 0)
        {
          sub_100004A34(v25);
        }

        if (theArray && (Count = CFArrayGetCount(theArray)) != 0)
        {
          v30 = *v15;
          if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
          {
            v31 = &__p;
            if (v152 < 0)
            {
              v31 = __p;
            }

            *buf = 136315650;
            *&buf[4] = "readDefaultBundleApns";
            *&buf[12] = 2048;
            *&buf[14] = Count;
            *&buf[22] = 2080;
            v154 = v31;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s: Found %zu set(s) of APNS in %s", buf, 0x20u);
          }

          v32 = sub_10029EB94(theArray, @"technology-mask");
          v149 = 0;
          if (Count >= 1)
          {
            v33 = 0;
            if (v32)
            {
              v34 = 224;
            }

            else
            {
              v34 = 32;
            }

            do
            {
              theDict = 0;
              *buf = CFArrayGetValueAtIndex(theArray, v33);
              sub_100010180(&theDict, buf);
              v35 = theDict;
              if (!theDict)
              {
                __TUAssertTrigger("dict");
                v35 = theDict;
              }

              number[0] = 0;
              *buf = CFDictionaryGetValue(v35, @"technology-mask");
              sub_1002AF4F0(number, buf);
              if (number[0])
              {
                valuePtr = 0;
                CFNumberGetValue(number[0], kCFNumberIntType, &valuePtr);
                if ((valuePtr & 0x10) != 0)
                {
                  v36 = v34 & (valuePtr << 28 >> 31) | (4 * (valuePtr & 3)) | 0xC0;
                }

                else
                {
                  v36 = v34 & (valuePtr << 28 >> 31) | (4 * (valuePtr & 3));
                }

                *buf = 0;
                Value = CFDictionaryGetValue(theDict, @"configuration");
                sub_1001FA5E0(buf, &Value);
                LODWORD(Value) = v36;
                sub_1002AD140(v3, (v3 + 200), *buf, 5, &Value, &v149);
                sub_100010250(buf);
              }

              else
              {
                v37 = *v15;
                if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  *&buf[4] = "readDefaultBundleApns";
                  *&buf[12] = 2048;
                  *&buf[14] = v33;
                  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I %s: No technology mask for default APN configuration %ld, - ignore whole section", buf, 0x16u);
                }
              }

              sub_100029A48(number);
              sub_10001021C(&theDict);
              ++v33;
            }

            while (Count != v33);
          }

          v38 = *v15;
          if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
          {
            v39 = (*(v3 + 208) - *(v3 + 200)) >> 4;
            *buf = 136315394;
            *&buf[4] = "readDefaultBundleApns";
            *&buf[12] = 2048;
            *&buf[14] = v39;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I %s: %zu APN(s) in default bundle ==>> ", buf, 0x16u);
          }

          v40 = *(v3 + 200);
          v2 = a2;
          if (*(v3 + 208) != v40)
          {
            v41 = 0;
            v42 = 0;
            do
            {
              sub_1002A3288(*(v40 + v41), v15, "");
              ++v42;
              v40 = *(a1 + 200);
              v41 += 16;
            }

            while (v42 < (*(a1 + 208) - v40) >> 4);
          }

          v43 = *v15;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "readDefaultBundleApns";
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I %s: <<== APN(s)", buf, 0xCu);
          }

          v3 = a1;
        }

        else
        {
          v44 = *v15;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = &__p;
            if (v152 < 0)
            {
              v45 = __p;
            }

            *buf = 136315394;
            *&buf[4] = "readDefaultBundleApns";
            *&buf[12] = 2080;
            *&buf[14] = v45;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I %s: No default APNS in %s", buf, 0x16u);
          }
        }

        sub_100010250(&theArray);
LABEL_64:
        if (SHIBYTE(v152) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_66;
      }
    }

    else
    {
      v26 = 0;
    }

    std::mutex::unlock(v19);
    v25 = 0;
    v27 = 1;
    goto LABEL_29;
  }

LABEL_66:
  v46 = 2;
  do
  {
    __p = 0;
    v151 = 0;
    v152 = 0;
    *buf = *v2;
    sub_1002AE9C8(v3, v46, buf, 0, 1, &__p);
    v47 = *v2;
    v48 = *(v3 + 224);
    v145 = 0;
    v146 = 0;
    theArray = 0;
    if (v48 == 1)
    {
      v50 = *(v3 + 200);
      v49 = *(v3 + 208);
      if (v50 != v49)
      {
        do
        {
          if ((*(*v50 + 152) & v46) != 0 && (*(*v50 + 228) & v47) != 0)
          {
            sub_1000F2C68(&theArray, v50);
          }

          ++v50;
        }

        while (v50 != v49);
        v47 = *v2;
      }
    }

    theDict = 0;
    v142 = 0;
    v143 = 0;
    *buf = v47;
    v51 = a1;
    sub_1002AE9C8(a1, v46, buf, 1, 0, &theDict);
    v52 = __p;
    v135 = v151;
    if (v151 == __p)
    {
      v76 = theArray;
      v75 = v145;
      for (i = v145; ; v75 = i)
      {
        if (v76 == v75)
        {
          goto LABEL_94;
        }

        v77 = *v76;
        v78 = *a2;
        v79 = v51[12];
        v80 = v51[13];
        if (*(*v76 + 71) < 0)
        {
          sub_100005F2C(buf, *(v77 + 48), *(v77 + 56));
        }

        else
        {
          *buf = *(v77 + 48);
          *&buf[16] = *(v77 + 64);
        }

        LODWORD(v154) = v78;
        v81 = buf[23];
        if (v79 != v80)
        {
          if ((buf[23] & 0x80u) == 0)
          {
            v82 = buf[23];
          }

          else
          {
            v82 = *&buf[8];
          }

          if ((buf[23] & 0x80u) == 0)
          {
            v83 = buf;
          }

          else
          {
            v83 = *buf;
          }

          while (1)
          {
            v84 = *v79;
            if ((*(*v79 + 228) & v78) != 0)
            {
              v85 = *(v84 + 71);
              v86 = v85;
              if ((v85 & 0x80u) != 0)
              {
                v85 = *(v84 + 56);
              }

              if (v85 == v82)
              {
                v89 = *(v84 + 48);
                v87 = v84 + 48;
                v88 = v89;
                v90 = (v86 >= 0 ? v87 : v88);
                if (!memcmp(v90, v83, v82))
                {
                  break;
                }
              }
            }

            v79 += 2;
            if (v79 == v80)
            {
              v79 = v80;
              break;
            }
          }
        }

        if ((v81 & 0x80) != 0)
        {
          operator delete(*buf);
        }

        v51 = a1;
        v91 = *(a1 + 104);
        if (v79 == v91)
        {
          v92 = 0;
        }

        else
        {
          v93 = *v79;
          v92 = v79[1];
          if (v92)
          {
            atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v93)
          {
            v136 = v92;
            goto LABEL_175;
          }

          v91 = *(a1 + 104);
        }

        v94 = *v76;
        v95 = *(a1 + 96);
        if (*(*v76 + 71) < 0)
        {
          sub_100005F2C(buf, *(v94 + 48), *(v94 + 56));
        }

        else
        {
          *buf = *(v94 + 48);
          *&buf[16] = *(v94 + 64);
        }

        v96 = buf[23];
        if (v95 != v91)
        {
          if ((buf[23] & 0x80u) == 0)
          {
            v97 = buf[23];
          }

          else
          {
            v97 = *&buf[8];
          }

          if ((buf[23] & 0x80u) == 0)
          {
            v98 = buf;
          }

          else
          {
            v98 = *buf;
          }

          while (1)
          {
            v99 = *v95;
            v100 = *(*v95 + 71);
            v101 = v100;
            if ((v100 & 0x80u) != 0)
            {
              v100 = *(*v95 + 56);
            }

            if (v100 == v97)
            {
              v104 = *(v99 + 48);
              v102 = v99 + 48;
              v103 = v104;
              v105 = (v101 >= 0 ? v102 : v103);
              if (!memcmp(v105, v98, v97))
              {
                break;
              }
            }

            v95 += 2;
            if (v95 == v91)
            {
              v95 = v91;
              break;
            }
          }
        }

        if ((v96 & 0x80) != 0)
        {
          operator delete(*buf);
        }

        v51 = a1;
        if (v95 == *(a1 + 104))
        {
          v106 = 0;
          v93 = 0;
        }

        else
        {
          v93 = *v95;
          v106 = v95[1];
          if (v106)
          {
            atomic_fetch_add_explicit(&v106->__shared_owners_, 1uLL, memory_order_relaxed);
          }
        }

        v136 = v106;
        if (v92)
        {
          sub_100004A34(v92);
        }

LABEL_175:
        v107 = theDict;
        v108 = v142;
        if (v142 == theDict)
        {
          v118 = v51[3];
          v119 = os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT);
          if (!v93)
          {
            if (v119)
            {
              v128 = *v76;
              v129 = (*v76 + 48);
              if (*(*v76 + 71) < 0)
              {
                v129 = *v129;
              }

              v130 = *(v128 + 144) - 1;
              v131 = "UI";
              if (v130 <= 4)
              {
                v131 = off_101E385D8[v130];
              }

              v132 = *(v128 + 148);
              WirelessTechnologyList::asString(number, a2);
              v133 = number;
              if (v140 < 0)
              {
                v133 = number[0];
              }

              *buf = 136316418;
              *&buf[4] = "fillMissingApnsFromDefaultBundle";
              *&buf[12] = 2048;
              *&buf[14] = v46;
              *&buf[22] = 2082;
              v154 = v129;
              v155 = 2080;
              v156 = v131;
              v157 = 1024;
              v158 = v132;
              v159 = 2082;
              v160 = v133;
              _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "#I %s: Service 0x%llx: using APN '%{public}s' (%s.%d) from default bundle for %{public}s", buf, 0x3Au);
              if (v140 < 0)
              {
                operator delete(number[0]);
              }
            }

            *buf = 0;
            *&buf[8] = 0;
            sub_1002AEE08();
          }

          if (v119)
          {
            v120 = *v76;
            v121 = (*v76 + 48);
            if (*(*v76 + 71) < 0)
            {
              v121 = *v121;
            }

            v122 = *(v120 + 144) - 1;
            v123 = "UI";
            if (v122 <= 4)
            {
              v123 = off_101E385D8[v122];
            }

            v124 = *(v120 + 148);
            WirelessTechnologyList::asString(number, a2);
            v125 = number[0];
            if (v140 >= 0)
            {
              v125 = number;
            }

            v126 = (v93 + 48);
            if (*(v93 + 71) < 0)
            {
              v126 = *v126;
            }

            *buf = 136316674;
            *&buf[4] = "fillMissingApnsFromDefaultBundle";
            *&buf[12] = 2048;
            *&buf[14] = v46;
            *&buf[22] = 2082;
            v154 = v121;
            v155 = 2080;
            v156 = v123;
            v157 = 1024;
            v158 = v124;
            v159 = 2082;
            v160 = v125;
            v161 = 2082;
            v162 = v126;
            _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "#I %s: Service 0x%llx: merging APN of same name '%{public}s' (%s.%d) from default bundle for %{public}s into %{public}s", buf, 0x44u);
            if (v140 < 0)
            {
              operator delete(number[0]);
            }

            v51 = a1;
          }

          *(v93 + 152) |= v46;
          v127 = *v76;
          if ((*(*v76 + 160) & v46) != 0)
          {
            *(v93 + 160) |= v46;
          }

          *(v93 + 228) |= *(v127 + 228);
        }

        else
        {
          do
          {
            v109 = v51[3];
            if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
            {
              v110 = *v76;
              v111 = (*v76 + 48);
              if (*(*v76 + 71) < 0)
              {
                v111 = *v111;
              }

              v112 = *(v110 + 144) - 1;
              v113 = "UI";
              if (v112 <= 4)
              {
                v113 = off_101E385D8[v112];
              }

              v114 = *(v110 + 148);
              WirelessTechnologyList::asString(number, a2);
              v115 = number;
              if (v140 < 0)
              {
                v115 = number[0];
              }

              v116 = (*v107 + 48);
              if (*(*v107 + 71) < 0)
              {
                v116 = *v116;
              }

              *buf = 136316674;
              *&buf[4] = "fillMissingApnsFromDefaultBundle";
              *&buf[12] = 2048;
              *&buf[14] = v46;
              *&buf[22] = 2082;
              v154 = v111;
              v155 = 2080;
              v156 = v113;
              v157 = 1024;
              v158 = v114;
              v159 = 2082;
              v160 = v115;
              v161 = 2082;
              v162 = v116;
              _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I %s: Service 0x%llx: merging type-mask of APN '%{public}s' (%s.%d) from default bundle for %{public}s into %{public}s", buf, 0x44u);
              if (v140 < 0)
              {
                operator delete(number[0]);
              }

              v51 = a1;
            }

            v117 = *v107;
            v107 = (v107 + 16);
            *(v117 + 152) |= v46;
          }

          while (v107 != v108);
        }

        if (v136)
        {
          sub_100004A34(v136);
        }

        v76 = (v76 + 16);
      }
    }

    if (v142 == theDict)
    {
      do
      {
        v54 = theArray;
        v53 = v145;
        while (v54 != v53)
        {
          v55 = *v54;
          if ((*(*v54 + 160) & v46) != 0)
          {
            v56 = *(a1 + 24);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              v57 = (v55 + 48);
              if (*(v55 + 71) < 0)
              {
                v57 = *v57;
              }

              v58 = *(v55 + 144) - 1;
              v59 = "UI";
              if (v58 <= 4)
              {
                v59 = off_101E385D8[v58];
              }

              v60 = *(v55 + 148);
              WirelessTechnologyList::asString(number, a2);
              v61 = number;
              if (v140 < 0)
              {
                v61 = number[0];
              }

              v62 = (*v52 + 48);
              if (*(*v52 + 71) < 0)
              {
                v62 = *v62;
              }

              *buf = 136316674;
              *&buf[4] = "fillMissingApnsFromDefaultBundle";
              *&buf[12] = 2048;
              *&buf[14] = v46;
              *&buf[22] = 2082;
              v154 = v57;
              v155 = 2080;
              v156 = v59;
              v157 = 1024;
              v158 = v60;
              v159 = 2082;
              v160 = v61;
              v161 = 2082;
              v162 = v62;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I %s: Service 0x%llx: merging tech-type-mask of APN '%{public}s' (%s.%d) from default bundle for %{public}s into %{public}s", buf, 0x44u);
              if (v140 < 0)
              {
                operator delete(number[0]);
              }

              v55 = *v54;
            }

            v63 = *v52;
            *(v63 + 160) = *(*v52 + 160) | v46;
            *(v63 + 233) = *(v55 + 233);
          }

          v54 = (v54 + 16);
        }

        v52 += 16;
        v51 = a1;
      }

      while (v52 != v135);
    }

LABEL_94:
    v64 = *a2;
    for (j = v51[12]; j != v51[13]; j += 16)
    {
      if ((*(*j + 152) & v46) != 0)
      {
        v64 &= ~*(*j + 228);
      }
    }

    if (v64 && theArray != v145)
    {
      for (k = (theArray + 16); ; k = (k + 16))
      {
        v67 = *(k - 2);
        if ((*(v67 + 228) & v64) != 0)
        {
          v68 = *(a1 + 24);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            v69 = (v67 + 48);
            if (*(v67 + 71) < 0)
            {
              v69 = *v69;
            }

            v70 = *(v67 + 144) - 1;
            v71 = "UI";
            if (v70 <= 4)
            {
              v71 = off_101E385D8[v70];
            }

            v72 = *(v67 + 148);
            WirelessTechnologyList::asString(number, a2);
            v73 = number;
            if (v140 < 0)
            {
              v73 = number[0];
            }

            *buf = 136316418;
            *&buf[4] = "fillMissingApnsFromDefaultBundle";
            *&buf[12] = 2048;
            *&buf[14] = v46;
            *&buf[22] = 2082;
            v154 = v69;
            v155 = 2080;
            v156 = v71;
            v157 = 1024;
            v158 = v72;
            v159 = 2082;
            v160 = v73;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "#I %s: Service 0x%llx: postprocessing: using APN '%{public}s' (%s.%d) from default bundle for %{public}s", buf, 0x3Au);
            if (v140 < 0)
            {
              operator delete(number[0]);
            }
          }

          *buf = 0;
          *&buf[8] = 0;
          sub_1002AEE08();
        }

        if (k == v145)
        {
          break;
        }
      }
    }

    *buf = &theDict;
    sub_1000212F4(buf);
    *buf = &theArray;
    sub_1000212F4(buf);
    *buf = &__p;
    sub_1000212F4(buf);
    v74 = v46 >> 35;
    v46 *= 2;
    v2 = a2;
    v3 = a1;
  }

  while (!v74);
}

void sub_1002AE3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35)
{
  sub_100010250(&a23);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002AE564(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_1000FA138(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1002AE5E4(uint64_t a1, uint64_t *a2, int a3, _DWORD *a4, CFArrayRef *a5, void **a6, CFIndex a7, _BYTE *a8, char a9)
{
  Count = CFArrayGetCount(*a5);
  v16 = *(a1 + 24);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    *buf = 136315906;
    *&buf[4] = "readNonLegacyAPNs";
    v35 = 2048;
    v36 = Count;
    v37 = 2080;
    v38 = a7;
    v39 = 2080;
    v40 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s: Found %zu set(s) of %sAPNS in %s", buf, 0x2Au);
  }

  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      theDict = 0;
      *buf = CFArrayGetValueAtIndex(*a5, i);
      sub_100010180(&theDict, buf);
      v19 = theDict;
      if (!theDict)
      {
        __TUAssertTrigger("dict");
        v19 = theDict;
      }

      number = 0;
      *buf = CFDictionaryGetValue(v19, @"technology-mask");
      sub_1002AF4F0(&number, buf);
      if (number)
      {
        valuePtr = 0;
        CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
        v20 = 4 * (valuePtr & 3);
        v27 = v20;
        v21 = v20;
        if ((valuePtr & 8) != 0)
        {
          v21 = v20 | 0x20;
          v27 = v20 | 0x20;
          if (a3)
          {
            v21 = v20 | 0xE0;
            v27 = v20 | 0xE0;
          }
        }

        if ((valuePtr & 0x10) != 0)
        {
          v21 |= 0xC0u;
          v27 = v21;
        }

        if (*a8 == 1 && Count == 1 && (v21 & 0xEC) != 0xEC)
        {
          v22 = *(a1 + 24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            WirelessTechnologyList::asString(buf, &v27);
            v23 = buf;
            if (v37 < 0)
            {
              v23 = *buf;
            }

            *v31 = 136315394;
            *&v31[4] = "readNonLegacyAPNs";
            v32 = 2080;
            v33 = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s: The only set of APNs is for %s. Reassign it to all technologies.", v31, 0x16u);
            if (SHIBYTE(v37) < 0)
            {
              operator delete(*buf);
            }
          }

          v27 = 236;
        }

        else
        {
          *a8 = 0;
        }

        *buf = 0;
        *v31 = CFDictionaryGetValue(theDict, @"configuration");
        sub_1001FA5E0(buf, v31);
        *v31 = v27;
        sub_1002AD140(a1, a6, *buf, 3, v31, a4);
        sub_100010250(buf);
      }

      else
      {
        v24 = *(a1 + 24);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "readNonLegacyAPNs";
          v35 = 2080;
          v36 = a7;
          v37 = 2048;
          v38 = i;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s: No technology mask for CB %sAPN configuration %ld, - ignore whole section", buf, 0x20u);
        }
      }

      sub_100029A48(&number);
      sub_10001021C(&theDict);
    }
  }

  if (a9)
  {
    *buf = 236;
    sub_1002AD2B4(a1, buf);
  }
}

void sub_1002AE980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, const void *);
  sub_100029A48(va);
  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

void sub_1002AE9C8(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v9 = *(a1 + 96);
  v10 = *(a1 + 104);
  if (v10 == v9)
  {
    v17 = 0;
    v16 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    if (a4)
    {
      v14 = 160;
    }

    else
    {
      v14 = 152;
    }

    do
    {
      v15 = *(v9 + v12);
      if ((*(v15 + 228) & *a3) != 0 && (*(v15 + v14) & a2) != 0)
      {
        sub_1000F2C68(&v52, (v9 + v12));
        v9 = *(a1 + 96);
        v10 = *(a1 + 104);
      }

      ++v13;
      v12 += 16;
    }

    while (v13 < (v10 - v9) >> 4);
    v17 = v52;
    v16 = v53;
  }

  if (v16 == v17 && a5 && a4)
  {
    if (v10 == v9)
    {
      v10 = v9;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      do
      {
        if ((*(*(v9 + v18) + 160) & a2) != 0)
        {
          sub_1000F2C68(&v52, (v9 + v18));
          v9 = *(a1 + 96);
          v10 = *(a1 + 104);
        }

        ++v19;
        v18 += 16;
      }

      while (v19 < (v10 - v9) >> 4);
      v17 = v52;
      v16 = v53;
    }
  }

  if (a2 == 1 && v16 == v17 && v10 != v9 && (a4 & 1) == 0)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = *(v9 + v20);
      if ((*(v22 + 228) & *a3) != 0)
      {
        *(v22 + 152) |= 1uLL;
        sub_1000F2C68(&v52, (v9 + v20));
        v9 = *(a1 + 96);
        v10 = *(a1 + 104);
      }

      ++v21;
      v20 += 16;
    }

    while (v21 < (v10 - v9) >> 4);
    v17 = v52;
    v16 = v53;
  }

  v49 = a1;
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (v17 != v16)
  {
    v48 = v16;
    while (1)
    {
      v50 = 0;
      v51 = 0;
      v24 = *v17;
      v23 = *(v17 + 1);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v24 && *(v49 + 176) == 1 && *(v49 + 144) == 1 && (v25 = *(v49 + 152), v26 = *(v49 + 160), v25 != v26))
      {
        while (1)
        {
          v27 = *(v25 + 23);
          if (v27 >= 0)
          {
            v28 = *(v25 + 23);
          }

          else
          {
            v28 = *(v25 + 8);
          }

          v29 = *(v24 + 71);
          v30 = v29;
          if ((v29 & 0x80u) != 0)
          {
            v29 = *(v24 + 56);
          }

          if (v28 == v29)
          {
            v31 = v27 >= 0 ? v25 : *v25;
            v32 = v30 >= 0 ? (v24 + 48) : *(v24 + 48);
            if (!memcmp(v31, v32, v28) && *(v25 + 48) == *(v24 + 228))
            {
              if ((*(v49 + 144) & 1) == 0)
              {
                sub_1000D1644();
              }

              v33 = *(v49 + 120);
              v34 = *(v49 + 128);
              if (v33 != v34)
              {
                break;
              }
            }
          }

LABEL_70:
          v25 += 56;
          if (v25 == v26)
          {
            goto LABEL_71;
          }
        }

        while (1)
        {
          if (*(*v33 + 57) == *(v24 + 228) && sub_10021D09C(*v33 + 320, (v24 + 48)))
          {
            v35 = *v33;
            v36 = *(*v33 + 71);
            if (v36 >= 0)
            {
              v37 = *(*v33 + 71);
            }

            else
            {
              v37 = (*v33)[7];
            }

            v38 = *(v25 + 47);
            v39 = v38;
            if ((v38 & 0x80u) != 0)
            {
              v38 = *(v25 + 32);
            }

            if (v37 == v38)
            {
              v40 = v36 >= 0 ? v35 + 6 : v35[6];
              v41 = v39 >= 0 ? (v25 + 24) : *(v25 + 24);
              if (!memcmp(v40, v41, v37))
              {
                break;
              }
            }
          }

          v33 += 2;
          if (v33 == v34)
          {
            goto LABEL_70;
          }
        }

        v44 = v33[1];
        v50 = v35;
        v51 = v44;
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
LABEL_71:
        v35 = 0;
        v50 = 0;
        v51 = 0;
      }

      if (v23)
      {
        sub_100004A34(v23);
        v35 = v50;
      }

      v42 = v17;
      if (!v35)
      {
        goto LABEL_81;
      }

      v42 = v17;
      if (v35 == *v17)
      {
        goto LABEL_81;
      }

      v43 = (a4 ? v35[20] : v35[19]);
      if ((v43 & a2) != 0)
      {
        break;
      }

LABEL_82:
      if (v51)
      {
        sub_100004A34(v51);
      }

      if (++v17 == v48)
      {
        goto LABEL_88;
      }
    }

    v42 = &v50;
LABEL_81:
    sub_1000F2C68(a6, v42);
    goto LABEL_82;
  }

LABEL_88:
  v50 = &v52;
  sub_1000212F4(&v50);
}

void sub_1002AEDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, char a16)
{
  if (v16)
  {
    sub_100004A34(v16);
  }

  a14 = a11;
  sub_1000212F4(&a14);
  a14 = &a16;
  sub_1000212F4(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1002AEE90(uint64_t a1, uint64_t a2)
{
  v4 = sub_10029F000(a1);
  *v4 = off_101E37F88;
  *(v4 + 156) = 0;
  *(v4 + 148) = 0;
  *(v4 + 164) = 0;
  CIPFamily::CIPFamily((v4 + 168));
  CIPFamily::CIPFamily((a1 + 184));
  *(a1 + 200) = 0;
  *(a1 + 216) = 0;
  *(a1 + 242) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  sub_1002AB638(a1, a2);
  return a1;
}

void sub_1002AEF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 376) == 1)
  {
    v7 = *(v3 + 352);
    if (v7)
    {
      *(v3 + 360) = v7;
      operator delete(v7);
    }
  }

  if (*(v3 + 344) == 1 && *(v3 + 343) < 0)
  {
    operator delete(*(v3 + 320));
  }

  if (*(v3 + 312) == 1 && *(v3 + 311) < 0)
  {
    operator delete(*(v3 + 288));
  }

  sub_1002A6458(va);
  sub_10001021C(v5);
  if (*(v3 + 216) == 1)
  {
    CIPFamily::~CIPFamily(v4);
  }

  CIPFamily::~CIPFamily((v3 + 184));
  CIPFamily::~CIPFamily((v3 + 168));
  sub_10029F15C(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1002AF014(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_1002AF094(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1002AF094(char **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 56;
        sub_1000DD108(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_1002AF0FC(char **a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1000CE3D4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_1002AF26C(a1, v6);
  }

  v7 = 56 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v9;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  *(v7 + 48) = *(a2 + 12);
  *&v18 = 56 * v2 + 56;
  v10 = a1[1];
  v11 = (56 * v2 + *a1 - v10);
  sub_1002AF2C8(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1001A8DB8(&v16);
  return v15;
}

void sub_1002AF258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1001A8DB8(va);
  _Unwind_Resume(a1);
}

void sub_1002AF26C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_1002AF2C8(int a1, __int128 *a2, __int128 *a3, char *__dst)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      sub_1002AF370(__dst, v8);
      v8 = (v8 + 56);
      __dst += 56;
      v7 -= 56;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      sub_1000DD108(v6);
      v6 += 56;
    }
  }
}

void sub_1002AF348(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 56;
    do
    {
      sub_1000DD108(v4);
      v4 -= 56;
      v2 += 56;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1002AF370(char *__dst, __int128 *a2)
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

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  *(__dst + 12) = *(a2 + 12);
  return __dst;
}

void sub_1002AF3F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1002AF40C(char *__dst, __int128 *a2, __int128 *a3, _DWORD *a4)
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

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v8;
  }

  *(__dst + 12) = *a4;
  return __dst;
}

void sub_1002AF49C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002AF4B8(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void *sub_1002AF4F0(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == CFNumberGetTypeID())
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return sub_1002AF4B8(a1, v5);
}

double sub_1002AF554@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = 0u;
  v6 = 0u;
  type metadata accessor for CTMLSProtobuf();
  static CTMLSProtobuf.pack(_:)(a1, &v5);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (BYTE8(v6) == 1)
  {
    result = v5.n128_f64[0];
    *a2 = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = 1;
  }

  return result;
}

void *sub_1002AF5FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  type metadata accessor for CTMLSProtobuf();
  result = static CTMLSProtobuf.unpack(_:)(a1, v5);
  *(a2 + 288) = 0;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (v6 == 1)
  {
    result = sub_1002AF704(a2 + 8, v5 + 8);
    *(a2 + 288) = 1;
    if (v6)
    {
      return sub_1002AF7A0(v5 + 8);
    }
  }

  return result;
}

uint64_t sub_1002AF704(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 272) = -1;
  sub_1002AF73C(a1, a2);
  return a1;
}

uint64_t sub_1002AF73C(uint64_t a1, uint64_t a2)
{
  result = sub_1002AF7A0(a1);
  v5 = *(a2 + 272);
  if (v5 != -1)
  {
    v6 = a1;
    result = (off_101E38610[v5])(&v6, a2);
    *(a1 + 272) = v5;
  }

  return result;
}

uint64_t sub_1002AF7A0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 272);
  if (v2 != -1)
  {
    result = (off_101E38600[v2])(&v3, result);
  }

  *(v1 + 272) = -1;
  return result;
}

uint64_t sub_1002AF808(uint64_t a1)
{
  if (*(a1 + 256) == 1)
  {
    v2 = *(a1 + 224);
    if (v2)
    {
      *(a1 + 232) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 200);
    if (v3)
    {
      *(a1 + 208) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 176);
    if (v4)
    {
      *(a1 + 184) = v4;
      operator delete(v4);
    }

    if (*(a1 + 175) < 0)
    {
      operator delete(*(a1 + 152));
    }

    if (*(a1 + 151) < 0)
    {
      operator delete(*(a1 + 128));
    }
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    *(a1 + 104) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    *(a1 + 80) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    *(a1 + 56) = v7;
    operator delete(v7);
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

uint64_t sub_1002AF8D8(uint64_t a1)
{
  if (*(a1 + 264) == 1)
  {
    v2 = *(a1 + 232);
    if (v2)
    {
      *(a1 + 240) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 208);
    if (v3)
    {
      *(a1 + 216) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 184);
    if (v4)
    {
      *(a1 + 192) = v4;
      operator delete(v4);
    }

    if (*(a1 + 183) < 0)
    {
      operator delete(*(a1 + 160));
    }

    if (*(a1 + 159) < 0)
    {
      operator delete(*(a1 + 136));
    }
  }

  if (*(a1 + 128) == 1)
  {
    v5 = *(a1 + 96);
    if (v5)
    {
      *(a1 + 104) = v5;
      operator delete(v5);
    }

    v6 = *(a1 + 72);
    if (v6)
    {
      *(a1 + 80) = v6;
      operator delete(v6);
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      *(a1 + 56) = v7;
      operator delete(v7);
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

__n128 sub_1002AF9B4(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 128) = 0;
  if (*(a2 + 128) == 1)
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
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 48) = a2[3];
    *(a1 + 64) = *(a2 + 8);
    a2[3] = 0uLL;
    *(a2 + 8) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 11);
    *(a2 + 72) = 0uLL;
    *(a2 + 11) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    result = a2[6];
    *(a1 + 96) = result;
    *(a1 + 112) = *(a2 + 14);
    *(a2 + 104) = 0uLL;
    *(a2 + 12) = 0;
    *(a1 + 120) = *(a2 + 15);
    *(a1 + 128) = 1;
  }

  return result;
}

void BasebandSettings::bandCapability(uint64_t a1, int a2, uint64_t a3)
{
  sub_1002B0DA4(&v4, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void BasebandSettings::activeBands(uint64_t a1, int a2, uint64_t a3)
{
  sub_1002B0DA4(&v4, a3);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void BasebandSettings::copySupportedAndActiveBands(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_100063614(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_1002AFDF4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void BasebandSettings::copyBands_sync(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v21 = 0;
  v22 = 0;
  BasebandSettings::getModel_sync(a1, a2, &v21);
  if (v21)
  {
    v7 = (*(*v21 + 32))(v21, a3);
    *v20 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v9 = *v20;
      *v20 = Mutable;
      *buf = v9;
      sub_1000296E0(buf);
    }

    v12 = *v7;
    v10 = v7 + 1;
    v11 = v12;
    if (v12 != v10)
    {
      do
      {
        v13 = sub_1014470D4(*(v11 + 8));
        if (v13)
        {
          *buf = 0;
          *buf = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, v11 + 5);
          sub_100209DF4(*v20, v13, *buf);
          sub_100029A48(buf);
        }

        else
        {
          v14 = *(a1 + 40);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = asString();
            *buf = 136315138;
            *&buf[4] = v15;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#N CF key mapping not found for %s", buf, 0xCu);
          }
        }

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

    sub_100010180(a4, v20);
    sub_1000296E0(v20);
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      v19 = subscriber::asString();
      sub_10176927C(v19, buf);
    }

    *a4 = 0;
  }

  if (v22)
  {
    sub_100004A34(v22);
  }
}

void sub_1002B0044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, std::__shared_weak_count *a14, char a15)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void BasebandSettings::setSupportedAndActiveBands(uint64_t a1, int a2, const void **a3, uint64_t a4)
{
  v6[4] = a1;
  v7 = a2;
  sub_100010024(&v8, a3);
  sub_100014110(&v9, a4);
  v6[0] = 0;
  v6[1] = 0;
  sub_100004AA0(v6, (a1 + 8));
  operator new();
}

void sub_1002B01F8(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void BasebandSettings::setActiveBandsFromMask_sync(uint64_t a1, uint64_t a2, CFDictionaryRef *a3, uint64_t a4)
{
  if (*a3)
  {
    Value = CFDictionaryGetValue(*a3, kCTRegistrationBandActive);
    if (Value && (v8 = Value, v9 = CFGetTypeID(Value), v9 == CFDictionaryGetTypeID()))
    {
      Count = CFDictionaryGetCount(v8);
      if (Count)
      {
        v11 = Count;
        keys = 0uLL;
        v26 = 0;
        sub_10007D780(&keys, Count);
        values = 0uLL;
        v24 = 0;
        sub_10007D780(&values, v11);
        CFDictionaryGetKeysAndValues(v8, keys.n128_u64[0], values.n128_u64[0]);
        v29[0] = 0;
        v29[1] = 0;
        v28 = v29;
        if (v11 >= 1)
        {
          for (i = 0; i != v11; ++i)
          {
            v13 = *(keys.n128_u64[0] + 8 * i);
            if (v13)
            {
              v14 = CFGetTypeID(*(keys.n128_u64[0] + 8 * i));
              if (v14 != CFStringGetTypeID())
              {
                v13 = 0;
              }
            }

            v15 = *(values.n128_u64[0] + 8 * i);
            if (v15)
            {
              v16 = CFGetTypeID(*(values.n128_u64[0] + 8 * i));
              if (v16 == CFNumberGetTypeID())
              {
                valuePtr = 0;
                CFNumberGetValue(v15, kCFNumberLongLongType, &valuePtr);
                v17 = sub_101447100(v13);
                v21 = v17;
                if (v17 <= 0xA && (((1 << v17) & 0x2A5) != 0 || v17 == 10 && capabilities::ct::supports5G(v17)))
                {
                  v18 = valuePtr;
                  v27 = &v21;
                  sub_1002B167C(&v28, &v21, &unk_101802C98, &v27)[5] = v18;
                }
              }
            }
          }
        }

        v19 = *(a1 + 128);
        sub_1002B0DA4(v20, &v28);
        (*(*v19 + 56))(v19, a2, v20);
        sub_10006DCAC(v20, v20[1]);
        sub_100022FB0(a4, 0);
        sub_10006DCAC(&v28, v29[0]);
        if (values.n128_u64[0])
        {
          values.n128_u64[1] = values.n128_u64[0];
          operator delete(values.n128_u64[0]);
        }

        if (keys.n128_u64[0])
        {
          keys.n128_u64[1] = keys.n128_u64[0];
          operator delete(keys.n128_u64[0]);
        }

        return;
      }

      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        keys = 0uLL;
        v26 = 0;
        ctu::cf::assign();
        sub_1017692B4(&values, &keys);
      }
    }

    else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      keys = 0uLL;
      v26 = 0;
      ctu::cf::assign();
      sub_101769304(&values, &keys);
    }

    sub_100022FB0(a4, 0x1600000001);
    return;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101769354();
  }

  sub_100022FB0(a4, 0x1600000001);
}

void sub_1002B0564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **BasebandSettings::setActiveBands(void *a1, unsigned __int32 a2, CFDictionaryRef *a3, uint64_t a4)
{
  if (*a3)
  {
    Value = CFDictionaryGetValue(*a3, kCTRegistrationBandActive);
    if (Value && (v8 = Value, v9 = CFGetTypeID(Value), v9 == CFDictionaryGetTypeID()))
    {
      theDict = v8;
      CFRetain(v8);
      if (CFDictionaryGetCount(v8))
      {
        v13.n128_u64[0] = a1;
        v13.n128_u32[2] = a2;
        v14 = theDict;
        CFRetain(theDict);
        sub_100014110(&v15, a4);
        v11 = 0uLL;
        sub_100004AA0(&v11, a1 + 1);
        operator new();
      }

      if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
      {
        v13 = 0uLL;
        v14 = 0;
        ctu::cf::assign();
        sub_101769388(&v11, &v13);
      }
    }

    else
    {
      theDict = 0;
      if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
      {
        v13 = 0uLL;
        v14 = 0;
        ctu::cf::assign();
        sub_101769304(&v11, &v13);
      }
    }

    sub_100022FB0(a4, 0x1600000001);
    return sub_10001021C(&theDict);
  }

  else
  {
    if (os_log_type_enabled(a1[5], OS_LOG_TYPE_ERROR))
    {
      sub_101769354();
    }

    return sub_100022FB0(a4, 0x1600000001);
  }
}

void sub_1002B0880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a12);
  _Unwind_Resume(a1);
}

void BasebandSettings::getSupportedAndActiveBands(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_100063614(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_1002B0A24(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void BasebandSettings::getBands_sync(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v30 = 0;
  v31 = 0;
  BasebandSettings::getModel_sync(a1, a2, &v30);
  if (v30)
  {
    v7 = (*(*v30 + 32))(v30, a3);
    v29 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v9 = v29;
      v29 = Mutable;
      __p[0] = v9;
      sub_1000296E0(__p);
    }

    v12 = *v7;
    v10 = v7 + 1;
    v11 = v12;
    if (v12 != v10)
    {
      do
      {
        v13 = sub_1014470D4(*(v11 + 8));
        if (v13)
        {
          v28 = 0;
          v14 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          if (v14)
          {
            v15 = v28;
            v28 = v14;
            __p[0] = v15;
            sub_1000279DC(__p);
          }

          memset(__p, 0, sizeof(__p));
          convertMaskToBandsForRat();
          v16 = __p[1];
          for (i = __p[0]; i != v16; ++i)
          {
            v18 = *i;
            v27 = 0;
            v32 = 0;
            valuePtr = v18;
            v19 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
            if (v19)
            {
              v20 = v32;
              v32 = v19;
              valuePtr = v20;
              sub_100029A48(&valuePtr);
            }

            v27 = v32;
            v32 = 0;
            sub_100029A48(&v32);
            CFArrayAppendValue(v28, v27);
            sub_100029A48(&v27);
          }

          sub_1002B24E0(v29, v13, v28);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          sub_1000279DC(&v28);
        }

        else
        {
          v21 = *(a1 + 40);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = asString();
            LODWORD(__p[0]) = 136315138;
            *(__p + 4) = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#N CF key mapping not found for %s", __p, 0xCu);
          }
        }

        v23 = v11[1];
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v24 = v11[2];
            v25 = *v24 == v11;
            v11 = v24;
          }

          while (!v25);
        }

        v11 = v24;
      }

      while (v24 != v10);
    }

    sub_100010180(a4, &v29);
    sub_1000296E0(&v29);
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      v26 = subscriber::asString();
      sub_10176927C(v26, __p);
    }

    *a4 = 0;
  }

  if (v31)
  {
    sub_100004A34(v31);
  }
}

void sub_1002B0D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::__shared_weak_count *a22, char a23, uint64_t a24, void *__p, uint64_t a26)
{
  if (a22)
  {
    sub_100004A34(a22);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002B0DA4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1002B0DFC(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1002B0DFC(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1002B0E84(v5, (v5 + 8), v4 + 8, v4 + 2);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t sub_1002B0E84(uint64_t **a1, uint64_t *a2, int *a3, _OWORD *a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *sub_10002E2F4(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_1002B0F20(uint64_t **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v7 = 0;
  v8 = 0;
  BasebandSettings::getModel_sync(v2, *(v1 + 8), &v7);
  if (v7)
  {
    (*(*v7 + 40))(v7, 1, v1 + 16);
  }

  else if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
  {
    v3 = subscriber::asString();
    sub_1017693D8(v3, v9);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  sub_1002B1048(&v6);
  return sub_1000049E0(&v5);
}

uint64_t *sub_1002B1048(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10006DCAC(v1 + 16, *(v1 + 24));
    operator delete();
  }

  return a1;
}

uint64_t *sub_1002B109C(uint64_t *a1)
{
  v1 = *a1;
  v40 = a1;
  v41 = v1;
  v2 = *v1;
  v43 = 0;
  v44 = 0;
  BasebandSettings::getModel_sync(v2, *(v1 + 8), &v43);
  if (v43)
  {
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v3 = (*(*v43 + 32))(v43, 2);
    v4 = sub_1002B0DA4(&v48, v3);
    v7 = *(v1 + 24);
    v6 = (v1 + 24);
    v5 = v7;
    if (v7)
    {
      v8 = v6;
      v9 = v5;
      do
      {
        if (v9[8] >= 5)
        {
          v8 = v9;
        }

        v9 = *&v9[2 * (v9[8] < 5)];
      }

      while (v9);
      if (v8 != v6 && v8[8] <= 5)
      {
        v10 = *(v8 + 5);
        v42 = 5;
        *buf = &v42;
        v4 = sub_1002B167C(&v48, &v42, &unk_101802C98, buf);
        *(v4 + 5) = v10;
        v5 = *v6;
      }

      if (v5)
      {
        v11 = v6;
        v12 = v5;
        do
        {
          v13 = v12[8];
          if ((v13 & 0x80000000) == 0)
          {
            v11 = v12;
          }

          v12 = *(v12 + ((v13 >> 28) & 8));
        }

        while (v12);
        if (v11 == v6 || v11[8] > 0)
        {
          goto LABEL_17;
        }

        v29 = *(v2 + 40);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = asString();
          v31 = *(v11 + 5);
          *buf = 136315394;
          *&buf[4] = v30;
          v46 = 2048;
          v47 = v31;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Setting %s active bands 0x%016llx", buf, 0x16u);
        }

        v32 = *(v11 + 5);
        v42 = 0;
        *buf = &v42;
        v4 = sub_1002B167C(&v48, &v42, &unk_101802C98, buf);
        *(v4 + 5) = v32;
        v5 = *v6;
        if (*v6)
        {
LABEL_17:
          v14 = v6;
          v15 = v5;
          do
          {
            if (v15[8] >= 2)
            {
              v14 = v15;
            }

            v15 = *&v15[2 * (v15[8] < 2)];
          }

          while (v15);
          if (v14 != v6 && v14[8] <= 2)
          {
            v16 = *(v2 + 40);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = asString();
              v18 = *(v14 + 5);
              *buf = 136315394;
              *&buf[4] = v17;
              v46 = 2048;
              v47 = v18;
              _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Setting %s active bands 0x%016llx", buf, 0x16u);
            }

            v19 = *(v14 + 5);
            v42 = 2;
            *buf = &v42;
            v4 = sub_1002B167C(&v48, &v42, &unk_101802C98, buf);
            *(v4 + 5) = v19;
            v5 = *v6;
          }

          if (v5)
          {
            v20 = v6;
            v21 = v5;
            do
            {
              if (v21[8] >= 7)
              {
                v20 = v21;
              }

              v21 = *&v21[2 * (v21[8] < 7)];
            }

            while (v21);
            if (v20 != v6 && v20[8] <= 7)
            {
              v22 = *(v2 + 40);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = asString();
                v24 = *(v20 + 5);
                *buf = 136315394;
                *&buf[4] = v23;
                v46 = 2048;
                v47 = v24;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Setting %s active bands 0x%016llx", buf, 0x16u);
              }

              v25 = *(v20 + 5);
              v42 = 7;
              *buf = &v42;
              v4 = sub_1002B167C(&v48, &v42, &unk_101802C98, buf);
              *(v4 + 5) = v25;
              v5 = *v6;
            }

            if (v5)
            {
              v26 = v6;
              do
              {
                if (v5[8] >= 9)
                {
                  v26 = v5;
                }

                v5 = *&v5[2 * (v5[8] < 9)];
              }

              while (v5);
              if (v26 != v6 && v26[8] <= 9)
              {
                v27 = *(v26 + 5);
                v42 = 9;
                *buf = &v42;
                v4 = sub_1002B167C(&v48, &v42, &unk_101802C98, buf);
                *(v4 + 5) = v27;
              }
            }
          }
        }
      }
    }

    if (capabilities::ct::supports5G(v4))
    {
      v33 = *v6;
      if (*v6)
      {
        v34 = v6;
        do
        {
          if (v33[8] >= 10)
          {
            v34 = v33;
          }

          v33 = *&v33[2 * (v33[8] < 10)];
        }

        while (v33);
        if (v34 != v6 && v34[8] <= 10)
        {
          v35 = *(v2 + 40);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v36 = asString();
            v37 = *(v34 + 5);
            *buf = 136315394;
            *&buf[4] = v36;
            v46 = 2048;
            v47 = v37;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Setting %s active bands 0x%016llx", buf, 0x16u);
          }

          v38 = *(v34 + 5);
          v42 = 10;
          *buf = &v42;
          sub_1002B167C(&v48, &v42, &unk_101802C98, buf)[5] = v38;
        }
      }
    }

    (*(*v43 + 40))(v43, 2, &v48);
    sub_10006DCAC(&v48, v49);
  }

  else if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
  {
    v28 = subscriber::asString();
    sub_101769410(v28, &v48);
  }

  if (v44)
  {
    sub_100004A34(v44);
  }

  sub_1002B1048(&v41);
  return sub_1000049E0(&v40);
}

void sub_1002B1604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  sub_10006DCAC(v13 - 64, *(v13 - 56));
  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_1002B1048(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002B167C(uint64_t a1, int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_1002B1750(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v13 = 0;
  v14 = 0;
  BasebandSettings::getModel_sync(v2, *(v1 + 8), &v13);
  if (v13)
  {
    *v12 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      *v12 = Mutable;
      v15 = 0;
      sub_1000296E0(&v15);
    }

    v15 = 0;
    BasebandSettings::copyBands_sync(v2, *(v1 + 8), 1, &v15);
    v11 = 0;
    BasebandSettings::copyBands_sync(v2, *(v1 + 8), 2, &v11);
    if (v15)
    {
      sub_1002972A4(*v12, kCTRegistrationBandSupported, v15);
    }

    if (v11)
    {
      sub_1002972A4(*v12, kCTRegistrationBandActive, v11);
    }

    sub_100010180(&v10, v12);
    v4 = *(v1 + 40);
    if (!v4)
    {
      sub_100022DB4();
    }

    (*(*v4 + 48))(v4, &v10);
    sub_10001021C(&v10);
    sub_10001021C(&v11);
    sub_10001021C(&v15);
    sub_1000296E0(v12);
  }

  else
  {
    v5 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      sub_101769448();
    }

    v15 = 0;
    v6 = *(v1 + 40);
    if (!v6)
    {
      sub_100022DB4();
    }

    (*(*v6 + 48))(v6, &v15);
    sub_10001021C(&v15);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  sub_100064C94(&v9);
  return sub_1000049E0(&v8);
}

void sub_1002B1968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  sub_100064C94(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002B19F4(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_100010024(&v7, (v1 + 16));
  sub_100014110(v8, v1 + 24);
  BasebandSettings::setActiveBandsFromMask_sync(v2, v3, &v7, v8);
  sub_100014380(v8);
  sub_10001021C(&v7);
  sub_1002B1ADC(&v6);
  return sub_1000049E0(&v5);
}

void sub_1002B1AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, ...)
{
  va_start(va, a11);
  sub_100014380(va);
  sub_10001021C(&a11);
  sub_1002B1ADC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002B1ADC(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100014380(v1 + 24);
    sub_10001021C((v1 + 16));
    operator delete();
  }

  return a1;
}

uint64_t *sub_1002B1B34(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v10 = 0;
  v11 = &v10;
  v12 = 0x4002000000;
  v13 = sub_1002B1D24;
  v16[0] = 0;
  v16[1] = 0;
  v14 = sub_1002B1D60;
  v15 = v16;
  v3 = *(v1 + 16);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_1002B1D6C;
  v9[3] = &unk_101E38628;
  v9[4] = &v10;
  v9[5] = v2;
  v17 = _NSConcreteStackBlock;
  v18 = 0x40000000;
  v19 = sub_1002B2178;
  v20 = &unk_101E38650;
  v21 = v9;
  context = &v17;
  CFDictionaryApplyFunction(v3, sub_1002B2220, &context);
  v4 = *(v2 + 128);
  v5 = *(v1 + 8);
  sub_1002B0DA4(&v17, (v11 + 5));
  (*(*v4 + 56))(v4, v5, &v17);
  sub_10006DCAC(&v17, v18);
  sub_100022FB0(v1 + 24, 0);
  _Block_object_dispose(&v10, 8);
  sub_10006DCAC(&v15, v16[0]);
  sub_1002B1ADC(&v8);
  return sub_1000049E0(&v7);
}

void sub_1002B1CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  sub_10006DCAC(v24 - 80, *(v24 - 72));
  _Block_object_dispose(&a17, 8);
  sub_10006DCAC(v23 + 40, a23);
  sub_1002B1ADC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void *sub_1002B1D24(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

void sub_1002B1D6C(uint64_t a1, uint64_t a2, const void **a3)
{
  v5 = *(a1 + 40);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v27 = *(a2 + 16);
  }

  if (SHIBYTE(v27) < 0)
  {
    sub_100005F2C(v31, __dst[0], __dst[1]);
  }

  else
  {
    *v31 = *__dst;
    v32 = v27;
  }

  v30 = 0;
  if (SHIBYTE(v32) < 0)
  {
    sub_100005F2C(__p, v31[0], v31[1]);
  }

  else
  {
    *__p = *v31;
    v36 = v32;
  }

  v33 = 0;
  if (ctu::cf::convert_copy())
  {
    v6 = v30;
    v30 = v33;
    v34 = v6;
    sub_100005978(&v34);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
  }

  v7 = v30;
  v28 = v30;
  v30 = 0;
  sub_100005978(&v30);
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  v8 = sub_101447100(v7);
  v9 = sub_100005978(&v28);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__dst[0]);
  }

  v29 = v8;
  if (v8 > 0xA || ((1 << v8) & 0x2A5) == 0 && (v8 != 10 || (capabilities::ct::supports5G(v9) & 1) == 0))
  {
    v21 = *(v5 + 40);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v24 = asString();
    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v24;
    v23 = "#N RAT %s is not valid, skipping";
    goto LABEL_40;
  }

  v10 = *a3;
  if (!v10 || (v11 = CFGetTypeID(v10), v11 != CFArrayGetTypeID()))
  {
    v21 = *(v5 + 40);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v22 = asString();
    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v22;
    v23 = "#N RAT %s value is not an array, skipping";
LABEL_40:
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v23, __p, 0xCu);
    return;
  }

  Count = CFArrayGetCount(v10);
  if (Count >= 1)
  {
    v13 = 0;
    v14 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, v14);
      if (ValueAtIndex)
      {
        LODWORD(v31[0]) = 0;
        if (ctu::cf::assign(v31, ValueAtIndex, v16))
        {
          v13 |= convertBandToMaskForRat();
        }

        else
        {
          v20 = *(v5 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(__p[0]) = 134217984;
            *(__p + 4) = v14;
            v18 = v20;
            v19 = "#N Could not convert band at index %ld to an integer";
            goto LABEL_31;
          }
        }
      }

      else
      {
        v17 = *(v5 + 40);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(__p[0]) = 134217984;
          *(__p + 4) = v14;
          v18 = v17;
          v19 = "#N Could not convert band at index %ld to CFNumberRef";
LABEL_31:
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, __p, 0xCu);
        }
      }

      if (Count == ++v14)
      {
        goto LABEL_42;
      }
    }
  }

  v13 = 0;
LABEL_42:
  v25 = *(*(a1 + 32) + 8);
  __p[0] = &v29;
  sub_1002B167C(v25 + 40, &v29, &unk_101802C98, __p)[5] = v13;
}

void sub_1002B210C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, const void *a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_100005978(&a19);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1002B2178(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v8 = 0uLL;
  v9 = 0;
  ctu::cf::assign();
  v7 = 0;
  *__p = 0uLL;
  v5 = *(v4 + 16);
  *&v8 = a3;
  v5(v4, __p, &v8);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1002B21F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1002B223C(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v13 = 0;
  v14 = 0;
  BasebandSettings::getModel_sync(v2, *(v1 + 8), &v13);
  if (v13)
  {
    *v12 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      *v12 = Mutable;
      v15 = 0;
      sub_1000296E0(&v15);
    }

    v15 = 0;
    BasebandSettings::getBands_sync(v2, *(v1 + 8), 1, &v15);
    v11 = 0;
    BasebandSettings::getBands_sync(v2, *(v1 + 8), 2, &v11);
    if (v15)
    {
      sub_1002972A4(*v12, kCTRegistrationBandSupported, v15);
    }

    if (v11)
    {
      sub_1002972A4(*v12, kCTRegistrationBandActive, v11);
    }

    sub_100010180(&v10, v12);
    v4 = *(v1 + 40);
    if (!v4)
    {
      sub_100022DB4();
    }

    (*(*v4 + 48))(v4, &v10);
    sub_10001021C(&v10);
    sub_10001021C(&v11);
    sub_10001021C(&v15);
    sub_1000296E0(v12);
  }

  else
  {
    v5 = (*(**(v2 + 48) + 16))(*(v2 + 48), *(v1 + 8));
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      sub_10176947C();
    }

    v15 = 0;
    v6 = *(v1 + 40);
    if (!v6)
    {
      sub_100022DB4();
    }

    (*(*v6 + 48))(v6, &v15);
    sub_10001021C(&v15);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  sub_100064C94(&v9);
  return sub_1000049E0(&v8);
}

void sub_1002B2454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  sub_100064C94(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B24E0(__CFDictionary *a1, void *cf, uint64_t a3)
{
  key = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = a3;
  if (a3)
  {
    CFRetain(a3);
    if (key)
    {
      CFDictionaryAddValue(a1, key, a3);
      a3 = 1;
    }

    else
    {
      a3 = 0;
    }
  }

  sub_100DA3324(&v6);
  sub_100DA3324(&key);
  return a3;
}

void sub_1002B2560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100DA3324(&a9);
  sub_100DA3324(va);
  _Unwind_Resume(a1);
}

void sub_1002B2584(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0xCu);
}

const char *sub_1002B25C0(int a1)
{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "kAlternate";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "kDefault";
  }
}

BOOL *sub_1002B25EC(Registry **a1, uint64_t a2)
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
  cf = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &cf);
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
  cf = 0;
  (*(*v11 + 96))(&cf, v11, a2, 2, @"UseLTEAlternateBarMapping", kCFBooleanFalse, 0);
  v13 = cf;
  v17 = 0;
  if (cf)
  {
    v14 = CFGetTypeID(cf);
    if (v14 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v17, v13, v15);
      v13 = v17;
    }

    else
    {
      v13 = 0;
    }
  }

  sub_10000A1EC(&cf);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  return v13;
}

void sub_1002B2760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

double *sub_1002B2790(int a1, double *a2)
{
  sub_100912600(a2, 15.0, 14.0);
  if (a1)
  {
    v4 = -95.0;
    v5 = -96.0;
  }

  else
  {
    v4 = -80.0;
    v5 = -81.0;
  }

  return sub_1009125F8(a2, v4, v5);
}

uint64_t sub_1002B2800(double *a1, __n128 a2, __n128 a3)
{
  sub_1009125F8(a1, -60.0, -61.0);

  return sub_100912600(a1, -7.0, -8.0);
}

uint64_t sub_1002B2850@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = 0u;
  v2 = (a2 + 40);
  *(a2 + 56) = 0u;
  *(a2 + 16) = xmmword_1017EA570;
  *(a2 + 72) = xmmword_1017EA5A0;
  *(a2 + 32) = 0x402C000000000000;
  *a2 = 0x402E000000000000;
  *(a2 + 88) = unk_1017EA5B0;
  if (result)
  {
    *v2 = xmmword_1017EA5E0;
    *(a2 + 56) = unk_1017EA5F0;
    v3 = 0xC058800000000000;
  }

  else
  {
    *v2 = xmmword_1017EA5C0;
    *(a2 + 56) = unk_1017EA5D0;
    v3 = 0xC054C00000000000;
  }

  *(a2 + 8) = v3;
  return result;
}

double sub_1002B28D0@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1017EA580;
  *(a1 + 16) = xmmword_1017EA590;
  *(a1 + 40) = xmmword_1017EA600;
  *(a1 + 56) = unk_1017EA610;
  result = -14.0;
  *(a1 + 72) = xmmword_1017EA620;
  *(a1 + 32) = 0xC008000000000000;
  *(a1 + 88) = unk_1017EA630;
  return result;
}

void PSControlSIM::PSControlSIM(void (***a1)(), NSObject **a2, uint64_t *a3)
{
  v3 = a3[1];
  v4[0] = *a3;
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1003486B0(a1, a2, v4, "ps.sim");
}

void sub_1002B2E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  v22 = *(v20 - 40);
  if (v22)
  {
    sub_100004A34(v22);
  }

  v23 = *(v20 - 64);
  if (v23)
  {
    sub_100004A34(v23);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  v24 = *(v19 + 1208);
  if (v24)
  {
    sub_100004A34(v24);
  }

  v25 = *(v19 + 1192);
  if (v25)
  {
    sub_100004A34(v25);
  }

  v26 = *(v19 + 1176);
  if (v26)
  {
    sub_100004A34(v26);
  }

  v27 = *(v19 + 1160);
  if (v27)
  {
    sub_100004A34(v27);
  }

  v28 = *(v19 + 1144);
  if (v28)
  {
    sub_100004A34(v28);
  }

  v29 = *(v19 + 1128);
  if (v29)
  {
    sub_100004A34(v29);
  }

  sub_1002B7314(v19 + 1096, *(v19 + 1104));
  sub_1002B73A8(v19 + 1072, *(v19 + 1080));
  v30 = *(v19 + 1064);
  if (v30)
  {
    sub_100004A34(v30);
  }

  sub_100348C6C(v19);
  _Unwind_Resume(a1);
}

void PSControlSIM::~PSControlSIM(PSControlSIM *this)
{
  *this = off_101E386A8;
  v2 = *(this + 151);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 149);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 147);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 145);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 143);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(this + 141);
  if (v7)
  {
    sub_100004A34(v7);
  }

  sub_1002B7314(this + 1096, *(this + 138));
  sub_1002B73A8(this + 1072, *(this + 135));
  v8 = *(this + 133);
  if (v8)
  {
    sub_100004A34(v8);
  }

  sub_100348C6C(this);
}

{
  PSControlSIM::~PSControlSIM(this);

  operator delete();
}

void PSControlSIM::initialize(PSControlSIM *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = **(this + 10);
    if (v3)
    {
      v4 = PersonalityInfo::logPrefix(v3);
    }

    else
    {
      v4 = "-1";
    }

    v5 = asStringBool(*(this + 142) != 0);
    *buf = 136315650;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    *&buf[24] = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sThumper support: %s", buf, 0x20u);
  }

  sub_1003492DC(this);
  sub_100004AA0(buf, this + 1);
  v7 = *buf;
  v6 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  sub_100004AA0(v9, this + 1);
  v8 = *(this + 3);
  v9[2] = v8;
  v9[3] = this;
  v9[4] = v7;
  v9[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_retain(v8);
  memset(buf, 0, 32);
  v9[6] = v8;
  v9[7] = this;
  v9[8] = v7;
  v9[9] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    dispatch_retain(v8);
    v10 = v8;
    v11 = this;
    v12 = v7;
    v13 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    dispatch_retain(v8);
    v15 = v8;
    v17 = v7;
    v18 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    dispatch_retain(v8);
    v21 = v7;
    v22 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    dispatch_retain(v8);
    v25 = v7;
    v26 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    dispatch_retain(v8);
    v10 = v8;
    v11 = this;
    v12 = v7;
    v13 = 0;
    dispatch_retain(v8);
    v15 = v8;
    v17 = v7;
    v18 = 0;
    dispatch_retain(v8);
    v21 = v7;
    v22 = 0;
    dispatch_retain(v8);
    v25 = v7;
    v26 = 0;
  }

  v16 = this;
  v14 = 0;
  v19 = v8;
  v20 = this;
  v23 = v8;
  v24 = this;
  dispatch_retain(v8);
  v27 = v8;
  v28 = this;
  v29 = v7;
  v30 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    dispatch_retain(v8);
    v33 = v7;
    v34 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    dispatch_retain(v8);
    v33 = v7;
    v34 = 0;
  }

  v31 = v8;
  v32 = this;
  dispatch_retain(v8);
  operator new();
}

void sub_1002B3708(_Unwind_Exception *a1)
{
  sub_1000062D4(v1 - 128);
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  _Unwind_Resume(a1);
}

void PSControlSIM::start(PSControlSIM *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = **(this + 10);
    if (v3)
    {
      v4 = PersonalityInfo::logPrefix(v3);
    }

    else
    {
      v4 = "-1";
    }

    *v19 = 136315394;
    *&v19[4] = v4;
    v20 = 2080;
    v21 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sstarting", v19, 0x16u);
  }

  sub_10034A4A8(this);
  v5 = *(this + 12);
  if (v5 != (this + 104))
  {
    do
    {
      (*(**(v5 + 5) + 24))(*(v5 + 5));
      v6 = *(v5 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v5 + 2);
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != (this + 104));
  }

  (*(*this + 344))(this, 0, 0);
  ServiceMap = Registry::getServiceMap(*(this + 6));
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
  *v19 = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, v19);
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
      goto LABEL_21;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
LABEL_21:
  (*(*v17 + 32))(v17);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_1002B3A5C(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void PSControlSIM::shutdown(PSControlSIM *this, group_session a2)
{
  v4 = *(this + 12);
  v5 = this + 104;
  if (v4 != this + 104)
  {
    do
    {
      (*(**(v4 + 5) + 32))(*(v4 + 5));
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v5);
  }

  v9 = *a2.var0.fObj;
  if (v9)
  {
    dispatch_retain(v9);
    dispatch_group_enter(v9);
  }

  sub_10034ADB0(this);
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }
}

void sub_1002B3B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void PSControlSIM::msim_activated(PSControlSIM *this, BOOL a2)
{
  v2 = *(this + 144);
  if (v2)
  {
    VoLteControl::handleMsimActivated(v2, a2);
  }
}

uint64_t PSControlSIM::personality_activated(void *a1, uint64_t a2, uint64_t *a3)
{
  sub_1002B3CCC(a1 + 10, a3);
  v5 = a1[12];
  if (v5 != a1 + 13)
  {
    do
    {
      (*(*v5[5] + 112))(v5[5], a2);
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a1 + 13);
  }

  v9 = *(*a1 + 344);

  return v9(a1, 0, 0);
}

void sub_1002B3CCC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = v2[1];
  *v2 = v4;
  v2[1] = v3;
  if (v5)
  {
    sub_100004A34(v5);
  }
}

uint64_t PSControlSIM::personality_cfg_updated(uint64_t a1, uint64_t *a2)
{
  sub_1002B3CCC((a1 + 80), a2);
  result = sub_10034B824(a1);
  v4 = *(a1 + 96);
  v5 = (a1 + 104);
  if (v4 != v5)
  {
    do
    {
      result = (*(*v4[5] + 136))(v4[5]);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v5);
  }

  return result;
}

void PSControlSIM::personality_wallet_updated(uint64_t a1, uint64_t *a2)
{
  sub_1002B3CCC((a1 + 80), a2);
  v3 = *(a1 + 96);
  v4 = (a1 + 104);
  if (v3 != v4)
  {
    do
    {
      (*(*v3[5] + 144))(v3[5]);
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
    }

    while (v6 != v4);
  }
}

uint64_t PSControlSIM::personality_gone(uint64_t this)
{
  v1 = *(this + 96);
  v2 = (this + 104);
  if (v1 != (this + 104))
  {
    do
    {
      this = (*(*v1[5] + 128))(v1[5]);
      v3 = v1[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v1[2];
          v5 = *v4 == v1;
          v1 = v4;
        }

        while (!v5);
      }

      v1 = v4;
    }

    while (v4 != v2);
  }

  return this;
}

uint64_t PSControlSIM::personality_detached(uint64_t this)
{
  v1 = *(this + 96);
  v2 = (this + 104);
  if (v1 != (this + 104))
  {
    do
    {
      this = (*(*v1[5] + 120))(v1[5]);
      v3 = v1[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v1[2];
          v5 = *v4 == v1;
          v1 = v4;
        }

        while (!v5);
      }

      v1 = v4;
    }

    while (v4 != v2);
  }

  return this;
}

const void **PSControlSIM::setEnabled_sync(uint64_t a1, int a2, uint64_t a3, const void **a4)
{
  v6 = *(a1 + 104);
  result = (a1 + 104);
  v5 = v6;
  if (v6)
  {
    v8 = result;
    do
    {
      if (*(v5 + 32) >= a2)
      {
        v8 = v5;
      }

      v5 = *(v5 + 8 * (*(v5 + 32) < a2));
    }

    while (v5);
    if (v8 != result && *(v8 + 8) <= a2)
    {
      v9 = v8[5];
      sub_100010024(&v10, a4);
      (*(*v9 + 64))(v9, a3, &v10);
      return sub_10001021C(&v10);
    }
  }

  return result;
}

void sub_1002B3FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

const void **PSControlSIM::isEnabled_sync@<X0>(uint64_t a1@<X0>, int a2@<W1>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + 104);
  v3 = a1 + 104;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v3;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v6 != v3 && *(v6 + 32) <= a2)
  {
    v8 = *(**(v6 + 40) + 48);

    return v8();
  }

  else
  {
LABEL_8:
    v9 = 0;
    *a3 = 0;
    sub_100010180(a3 + 1, &v9);
    return sub_1000296E0(&v9);
  }
}

void sub_1002B40C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

void PSControlSIM::isAllowed_sync(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = a1[13];
  if (!v4)
  {
    goto LABEL_25;
  }

  v6 = a1 + 13;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v6 == a1 + 13 || *(v6 + 8) > a2)
  {
    goto LABEL_25;
  }

  v8 = v6[5];
  v7 = v6[6];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((a2 - 2) >= 4 && a2)
  {
    if (a2 != 1)
    {
      goto LABEL_23;
    }

    v19 = 0;
    v20 = 0;
    v10 = a1[142];
    v11 = sub_10034E448(a1, 1);
    (*(*v10 + 208))(&v19, v10, v11);
    v17 = 0;
    v18 = 0;
    (*(*a1[142] + 200))(&v17);
    v12 = a1[140];
    if (v12)
    {
      (*(*v12 + 56))(&v15);
      v13 = BYTE2(v15);
      sub_10001021C(&v16);
      v14 = v19;
      if ((v19 & 1) == 0 || (v13 & 1) == 0 && v17 != 1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = v19;
      if ((v19 & 1) == 0)
      {
LABEL_21:
        sub_10001021C(&v18);
        goto LABEL_22;
      }
    }

    *a3 = v14;
    sub_100010024((a3 + 8), &v20);
    sub_10001021C(&v18);
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v9 = sub_10034E448(a1, a2);
    (*(*v8 + 56))(&v19, v8, v9);
    if (v19 != 1)
    {
LABEL_22:
      sub_10001021C(&v20);
LABEL_23:
      if (v7)
      {
        sub_100004A34(v7);
      }

LABEL_25:
      v19 = 0;
      *a3 = 0;
      sub_100010180((a3 + 8), &v19);
      sub_1000296E0(&v19);
      return;
    }

    *a3 = v19;
    sub_100010024((a3 + 8), &v20);
  }

  sub_10001021C(&v20);
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1002B4330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10001021C(va);
  sub_10001021C((v8 + 8));
  if (v7)
  {
    sub_100004A34(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t PSControlSIM::serviceRefresh(uint64_t this, uint64_t a2, uint64_t a3)
{
  if ((*(this + 354) & 1) == 0)
  {
    v3 = *(this + 96);
    v4 = (this + 104);
    if (v3 != (this + 104))
    {
      do
      {
        this = (*(*v3[5] + 104))(v3[5], a2, a3);
        v7 = v3[1];
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
            v8 = v3[2];
            v9 = *v8 == v3;
            v3 = v8;
          }

          while (!v9);
        }

        v3 = v8;
      }

      while (v8 != v4);
    }
  }

  return this;
}

void PSControlSIM::resetEntitlementFailuresAndThrottling(uint64_t a1, uint64_t a2)
{
  sub_100348350(a1 + 360);
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  v16 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v16);
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
  (**v12)(&v14, v12, **(a1 + 80) + 24);
  (*(*v14 + 384))(v14, a2);
  if (v15)
  {
    sub_100004A34(v15);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_1002B4598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSControlSIM::handleEntitlementUpdate(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  result = sub_10112CDBC(a2, (**(a1 + 80) + 24));
  if ((result & 1) == 0)
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = **(a1 + 80);
      if (v11)
      {
        v12 = PersonalityInfo::logPrefix(v11);
      }

      else
      {
        v12 = "-1";
      }

      *buf = 136315394;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Evaluate Entitlement Update ================================", buf, 0x16u);
    }

    v15 = *(a4 + 8);
    v14 = a4 + 8;
    v13 = v15;
    if (!v15)
    {
      goto LABEL_14;
    }

    v16 = v14;
    v17 = v13;
    do
    {
      if (*(v17 + 28) >= 7)
      {
        v16 = v17;
      }

      v17 = *(v17 + 8 * (*(v17 + 28) < 7));
    }

    while (v17);
    if (v16 == v14 || *(v16 + 28) >= 8)
    {
LABEL_14:
      v16 = v14;
    }

    if (!v13)
    {
      goto LABEL_22;
    }

    v18 = v14;
    v19 = v13;
    do
    {
      if (*(v19 + 28) >= 8)
      {
        v18 = v19;
      }

      v19 = *(v19 + 8 * (*(v19 + 28) < 8));
    }

    while (v19);
    if (v18 == v14 || *(v18 + 28) >= 9)
    {
LABEL_22:
      v18 = v14;
    }

    if (!v13)
    {
      goto LABEL_30;
    }

    v20 = v14;
    v21 = v13;
    do
    {
      if (*(v21 + 28) >= 6)
      {
        v20 = v21;
      }

      v21 = *(v21 + 8 * (*(v21 + 28) < 6));
    }

    while (v21);
    if (v20 == v14 || *(v20 + 28) >= 7)
    {
LABEL_30:
      v20 = v14;
    }

    if (!v13)
    {
      goto LABEL_38;
    }

    v22 = v14;
    v23 = v13;
    do
    {
      if (*(v23 + 28) >= 19)
      {
        v22 = v23;
      }

      v23 = *(v23 + 8 * (*(v23 + 28) < 19));
    }

    while (v23);
    if (v22 == v14 || *(v22 + 28) >= 20)
    {
LABEL_38:
      v22 = v14;
    }

    v26 = *(a5 + 8);
    v25 = a5 + 8;
    v24 = v26;
    if (!v26)
    {
      goto LABEL_46;
    }

    v27 = v25;
    v28 = v24;
    do
    {
      if (*(v28 + 32) >= 19)
      {
        v27 = v28;
      }

      v28 = *(v28 + 8 * (*(v28 + 32) < 19));
    }

    while (v28);
    if (v27 == v25 || *(v27 + 32) >= 20)
    {
LABEL_46:
      v27 = v25;
    }

    if (!v13)
    {
      goto LABEL_54;
    }

    v29 = v14;
    do
    {
      if (*(v13 + 28) >= 15)
      {
        v29 = v13;
      }

      v13 = *(v13 + 8 * (*(v13 + 28) < 15));
    }

    while (v13);
    if (v29 == v14 || *(v29 + 28) >= 16)
    {
LABEL_54:
      v29 = v14;
    }

    if (!v24)
    {
      goto LABEL_62;
    }

    v30 = v25;
    do
    {
      if (*(v24 + 32) >= 15)
      {
        v30 = v24;
      }

      v24 = *(v24 + 8 * (*(v24 + 32) < 15));
    }

    while (v24);
    if (v30 == v25 || *(v30 + 32) >= 16)
    {
LABEL_62:
      v30 = v25;
    }

    v31 = *(a1 + 1120);
    if (v31)
    {
      if (v16 == v14)
      {
        v32 = 3;
      }

      else
      {
        v32 = *(v16 + 32);
      }

      sub_100206144(v31, v32);
    }

    v33 = *(a1 + 1136);
    if (v33)
    {
      if (v18 == v14)
      {
        v34 = 3;
      }

      else
      {
        v34 = *(v18 + 32);
      }

      sub_10020F184(v33, v34);
    }

    v35 = *(a1 + 1152);
    if (v35)
    {
      if (v20 == v14)
      {
        v36 = 3;
      }

      else
      {
        v36 = *(v20 + 32);
      }

      VoLteControl::handleEntitlementUpdate(v35, (*a3 >> 6) & 1, v36);
    }

    v37 = *(a1 + 1200);
    if (v37)
    {
      if (v22 == v14)
      {
        v38 = 3;
      }

      else
      {
        v38 = *(v22 + 32);
      }

      v39 = *a3;
      if (v27 == v25)
      {
        memset(buf, 0, 42);
        v45 = 0u;
        v46 = 0u;
      }

      else
      {
        memset(buf, 0, 24);
        sub_100172BAC(buf, *(v27 + 40), *(v27 + 48), (*(v27 + 48) - *(v27 + 40)) >> 6);
        v40 = *(v27 + 72);
        *&buf[24] = *(v27 + 64);
        *&buf[32] = v40;
        if (v40)
        {
          atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
        }

        *&buf[40] = *(v27 + 80);
        v41 = *(v27 + 96);
        *&v45 = *(v27 + 88);
        *(&v45 + 1) = v41;
        if (v41)
        {
          atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
        }

        v42 = *(v27 + 112);
        *&v46 = *(v27 + 104);
        *(&v46 + 1) = v42;
        if (v42)
        {
          atomic_fetch_add_explicit((v42 + 8), 1uLL, memory_order_relaxed);
        }
      }

      sub_10012E73C(v37, (v39 >> 19) & 1, v38, buf);
      if (*(&v46 + 1))
      {
        sub_100004A34(*(&v46 + 1));
      }

      if (*(&v45 + 1))
      {
        sub_100004A34(*(&v45 + 1));
      }

      if (*&buf[32])
      {
        sub_100004A34(*&buf[32]);
      }

      v43 = buf;
      sub_10013DFEC(&v43);
    }

    result = *(a1 + 1168);
    if (result && v29 != v14 && v30 != v25)
    {
      return sub_10098376C(result, *(v29 + 32), (v30 + 40));
    }
  }

  return result;
}

void sub_1002B49FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1002B7454(va);
  _Unwind_Resume(a1);
}

void PSControlSIM::handleSetEntitlementResponse(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (!sub_10112CDBC(a2, (**(a1 + 80) + 24)))
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = **(a1 + 80);
      if (v8)
      {
        v9 = PersonalityInfo::logPrefix(v8);
      }

      else
      {
        v9 = "-1";
      }

      *buf = 136315394;
      v17 = v9;
      v18 = 2080;
      v19 = " ";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Evaluate Set Entitlement Response ================================", buf, 0x16u);
    }

    v10 = *(a1 + 1120);
    if (v10)
    {
      v11 = *(a4 + 8);
      v15 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_100206304(v10, a3);
      if (v15)
      {
        sub_100004A34(v15);
      }
    }

    v12 = *(a1 + 1152);
    if (v12)
    {
      v13 = *(a4 + 8);
      v14 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      VoLteControl::handleSetEntitlementResponse(v12, a3);
      if (v14)
      {
        sub_100004A34(v14);
      }
    }
  }
}

void sub_1002B4B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSControlSIM::updateRegisteredLocationStatus_sync(PSControlSIM *this, int a2)
{
  v4 = (this + 144);
  if (*(this + 344) == 1)
  {
    v5 = *(this + 167);
    if (v5 >= 0)
    {
      v6 = *(this + 167);
    }

    else
    {
      v6 = *(this + 19);
    }

    v7 = *(this + 143);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(this + 16);
    }

    if (v6 != v7)
    {
LABEL_20:
      v13 = this + 353;
      v14 = *(this + 184) | a2;
      *v54 = 0;
      v55 = 0;
      v15 = *(this + 140);
      if (v15)
      {
        (*(*v15 + 56))(v54);
      }

      else
      {
        *v54 = 0;
        v54[2] = 0;
        v55 = 0;
        *buf = 0;
        sub_10001021C(buf);
      }

      v19 = v54[0];
      if (!v54[0] || !v54[2] && (!v54[1] || v14 == 0))
      {
        v20 = *(this + 5);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = **(this + 10);
          if (v21)
          {
            v22 = PersonalityInfo::logPrefix(v21);
            v19 = v54[0];
          }

          else
          {
            v22 = "-1";
          }

          v26 = asStringBool(v19);
          v27 = asStringBool(v54[1]);
          v28 = asStringBool(v54[2]);
          v29 = asStringBool(v14 != 0);
          *buf = 136316418;
          *&buf[4] = v22;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          *&buf[22] = 2080;
          *&buf[24] = v26;
          LOWORD(v60[0]) = 2080;
          *(v60 + 2) = v27;
          HIWORD(v60[2]) = 2080;
          *&v60[3] = v28;
          LOWORD(v60[5]) = 2080;
          *(&v60[5] + 2) = v29;
          v30 = "#I %s%sservice is not allowed - getPSAS ignored (show:%s, available:%s, allowed:%s, forced:%s)";
          v31 = v20;
          v32 = 62;
          goto LABEL_72;
        }

LABEL_73:
        v35 = 0;
LABEL_74:
        sub_10001021C(&v55);
        return v35;
      }

      if (sub_100347EC0(this + 360))
      {
        if (sub_10034AFC4(this))
        {
          v23 = *(this + 5);
          if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_73;
          }

          v24 = **(this + 10);
          if (v24)
          {
            v25 = PersonalityInfo::logPrefix(v24);
          }

          else
          {
            v25 = "-1";
          }

          *buf = 136315394;
          *&buf[4] = v25;
          *&buf[12] = 2080;
          *&buf[14] = " ";
          v30 = "#I %s%sservice allowed without entitlement check - getPSAS bypassed";
        }

        else
        {
          v36 = *(this + 132);
          if (!v36)
          {
            goto LABEL_59;
          }

          v37 = *(v36 + 95);
          if (v37 < 0)
          {
            v37 = *(v36 + 80);
          }

          if (v37)
          {
            v38 = *(this + 143);
            if (v38 < 0)
            {
              v38 = *(this + 16);
            }

            if (v38)
            {
              if ((*(this + 344) & 1) == 0)
              {
                v69 = 0;
                v67 = 0u;
                v68 = 0u;
                v65 = 0u;
                v66 = 0u;
                v63 = 0u;
                v64 = 0u;
                v61 = 0u;
                v62 = 0u;
                memset(v60, 0, sizeof(v60));
                memset(buf, 0, sizeof(buf));
                sub_1002B5320(v4, buf);
                sub_1002B74B0(buf);
              }

              std::string::operator=(v4, this + 5);
              std::string::operator=(this + 7, (*(this + 132) + 72));
              memset(v53, 0, sizeof(v53));
              std::string::operator=(v53, v4);
              std::string::operator=(&v53[1], this + 7);
              v39 = 384;
              if (!v14)
              {
                v39 = 0;
              }

              v52 = v39;
              memset(buf, 0, sizeof(buf));
              *&v62 = 0;
              v61 = 0u;
              memset(v60, 0, sizeof(v60));
              buf[3] = v14 != 0;
              buf[8] = 0;
              v40 = *(this + 5);
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                v41 = **(this + 10);
                if (v41)
                {
                  v42 = PersonalityInfo::logPrefix(v41);
                }

                else
                {
                  v42 = "-1";
                }

                v48 = "*";
                *v56 = 136315650;
                *&v56[4] = v42;
                *&v56[12] = 2080;
                *&v56[14] = " ";
                if (v14)
                {
                  v48 = "paired with getEntitlements ";
                }

                v57 = 2080;
                v58 = v48;
                _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I %s%s================================ Call Update Registered Location %s================================", v56, 0x20u);
              }

              ServiceMap = Registry::getServiceMap(*(this + 6));
              sub_1005A6380(&v50, ServiceMap);
              (**v50)(v56);
              (*(**v56 + 360))(*v56, 0, buf, v53, &v52);
              if (*&v56[8])
              {
                sub_100004A34(*&v56[8]);
              }

              if (v51)
              {
                sub_100004A34(v51);
              }

              v35 = 1;
              *v13 = 1;
              sub_100270CFC(buf);
              sub_1000D6F38(v53);
              goto LABEL_74;
            }

            v23 = *(this + 5);
            if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_73;
            }

            v45 = **(this + 10);
            if (v45)
            {
              v46 = PersonalityInfo::logPrefix(v45);
            }

            else
            {
              v46 = "-1";
            }

            *buf = 136315394;
            *&buf[4] = v46;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v30 = "#I %s%sdevice DisplayName required and is not ready yet - skip getPSAS";
          }

          else
          {
LABEL_59:
            v23 = *(this + 5);
            if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_73;
            }

            v43 = **(this + 10);
            if (v43)
            {
              v44 = PersonalityInfo::logPrefix(v43);
            }

            else
            {
              v44 = "-1";
            }

            *buf = 136315394;
            *&buf[4] = v44;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            v30 = "#I %s%sIMPI is not ready yet - skip getPSAS";
          }
        }
      }

      else
      {
        v23 = *(this + 5);
        if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_73;
        }

        v33 = **(this + 10);
        if (v33)
        {
          v34 = PersonalityInfo::logPrefix(v33);
        }

        else
        {
          v34 = "-1";
        }

        *buf = 136315394;
        *&buf[4] = v34;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        v30 = "#I %s%sgetPSAS request blocked by throttle control";
      }

      v31 = v23;
      v32 = 22;
LABEL_72:
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
      goto LABEL_73;
    }

    if (v5 >= 0)
    {
      v9 = this + 144;
    }

    else
    {
      v9 = *(this + 18);
    }

    if (v8 >= 0)
    {
      v10 = this + 120;
    }

    else
    {
      v10 = *(this + 15);
    }

    v11 = memcmp(v9, v10, v6) != 0;
  }

  else
  {
    v11 = 0;
  }

  if (*(this + 353) != 1 || v11)
  {
    goto LABEL_20;
  }

  v16 = *(this + 5);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = **(this + 10);
    if (v17)
    {
      v18 = PersonalityInfo::logPrefix(v17);
    }

    else
    {
      v18 = "-1";
    }

    *buf = 136315394;
    *&buf[4] = v18;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sgetPSAS call in progress - skip", buf, 0x16u);
  }

  return 1;
}

void sub_1002B5290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B5320(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 200) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
    *(a2 + 23) = 0;
    *a2 = 0;
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v5;
    *(a2 + 47) = 0;
    *(a2 + 24) = 0;
    sub_10016A270(a1 + 48, a2 + 3);
    sub_10016A270(a1 + 80, a2 + 5);
    v6 = a2[7];
    *(a1 + 125) = *(a2 + 125);
    *(a1 + 112) = v6;
    sub_10016A270(a1 + 136, (a2 + 136));
    sub_10016A270(a1 + 168, (a2 + 168));
  }

  else
  {
    v7 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v7;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v8 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a1 + 24) = v8;
    a2[2] = 0uLL;
    *(a2 + 3) = 0;
    *(a1 + 48) = 0;
    *(a1 + 72) = 0;
    if (*(a2 + 72) == 1)
    {
      v9 = a2[3];
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 48) = v9;
      *(a2 + 56) = 0uLL;
      *(a2 + 6) = 0;
      *(a1 + 72) = 1;
    }

    *(a1 + 80) = 0;
    *(a1 + 104) = 0;
    if (*(a2 + 104) == 1)
    {
      v10 = a2[5];
      *(a1 + 96) = *(a2 + 12);
      *(a1 + 80) = v10;
      *(a2 + 88) = 0uLL;
      *(a2 + 10) = 0;
      *(a1 + 104) = 1;
    }

    v11 = a2[7];
    v12 = *(a2 + 125);
    *(a1 + 136) = 0;
    *(a1 + 125) = v12;
    *(a1 + 112) = v11;
    *(a1 + 160) = 0;
    if (*(a2 + 160) == 1)
    {
      v13 = *(a2 + 136);
      *(a1 + 152) = *(a2 + 19);
      *(a1 + 136) = v13;
      a2[9] = 0uLL;
      *(a2 + 17) = 0;
      *(a1 + 160) = 1;
    }

    *(a1 + 168) = 0;
    *(a1 + 192) = 0;
    if (*(a2 + 192) == 1)
    {
      v14 = *(a2 + 168);
      *(a1 + 184) = *(a2 + 23);
      *(a1 + 168) = v14;
      a2[11] = 0uLL;
      *(a2 + 21) = 0;
      *(a1 + 192) = 1;
    }

    *(a1 + 200) = 1;
  }

  return a1;
}

uint64_t PSControlSIM::handleIMSInfoAvailable(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = **(a1 + 80);
    if (v5)
    {
      v6 = PersonalityInfo::logPrefix(v5);
    }

    else
    {
      v6 = "-1";
    }

    if (*a2)
    {
      sub_100C1D90C(*a2, __p);
      if (v36 >= 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      *buf = 136315650;
      v38 = v6;
      v39 = 2080;
      v40 = " ";
      v41 = 2080;
      v42 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sIMSInfo: %s", buf, 0x20u);
      if (v36 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136315650;
      v38 = v6;
      v39 = 2080;
      v40 = " ";
      v41 = 2080;
      v42 = "not available";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sIMSInfo: %s", buf, 0x20u);
    }
  }

  v8 = *a2;
  if (!*a2)
  {
    goto LABEL_62;
  }

  v9 = *(a1 + 344);
  if (v9 == 1)
  {
    v10 = *(a1 + 191);
    if (v10 < 0)
    {
      if (!*(a1 + 176))
      {
        goto LABEL_31;
      }
    }

    else if (!*(a1 + 191))
    {
      goto LABEL_31;
    }

    if (v10 >= 0)
    {
      v11 = *(a1 + 191);
    }

    else
    {
      v11 = *(a1 + 176);
    }

    v12 = *(v8 + 95);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v8 + 80);
    }

    if (v11 != v12)
    {
      goto LABEL_49;
    }

    v14 = v10 >= 0 ? (a1 + 168) : *(a1 + 168);
    v15 = v13 >= 0 ? (v8 + 72) : *(v8 + 72);
    if (memcmp(v14, v15, v11))
    {
      goto LABEL_49;
    }
  }

LABEL_31:
  v16 = *(a1 + 1056);
  if (!v16)
  {
    goto LABEL_62;
  }

  v17 = *(v16 + 95);
  if (v17 < 0)
  {
    if (!*(v16 + 80))
    {
      goto LABEL_62;
    }
  }

  else if (!*(v16 + 95))
  {
    goto LABEL_62;
  }

  if (v17 >= 0)
  {
    v18 = *(v16 + 95);
  }

  else
  {
    v18 = *(v16 + 80);
  }

  v19 = *(v8 + 95);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(v8 + 80);
  }

  if (v18 != v19 || ((v23 = *(v16 + 72), v21 = (v16 + 72), v22 = v23, v17 >= 0) ? (v24 = v21) : (v24 = v22), v20 >= 0 ? (v25 = (v8 + 72)) : (v25 = *(v8 + 72)), memcmp(v24, v25, v18)))
  {
LABEL_49:
    v26 = *(a1 + 40);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
LABEL_61:
      (*(*a1 + 312))(a1);
      sub_10034B824(a1);
      v8 = *a2;
      goto LABEL_62;
    }

    v27 = **(a1 + 80);
    if (v27)
    {
      v28 = PersonalityInfo::logPrefix(v27);
      if (*(a1 + 344))
      {
        goto LABEL_52;
      }
    }

    else
    {
      v28 = "-1";
      if (v9)
      {
LABEL_52:
        v29 = (a1 + 168);
        if (*(a1 + 191) < 0)
        {
          v29 = *v29;
        }

        goto LABEL_56;
      }
    }

    v29 = "not present";
LABEL_56:
    v30 = *(a1 + 1056);
    if (v30)
    {
      v31 = (v30 + 72);
      if (*(v30 + 95) < 0)
      {
        v31 = *v31;
      }
    }

    else
    {
      v31 = "not present";
    }

    *buf = 136315906;
    v38 = v28;
    v39 = 2080;
    v40 = " ";
    v41 = 2080;
    v42 = v29;
    v43 = 2080;
    v44 = v31;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%sIMPI changed, prev: fAddr911Status->fSipUserName = '%s', fIMSSIMInfo->impi = '%s'", buf, 0x2Au);
    goto LABEL_61;
  }

LABEL_62:
  v32 = a2[1];
  if (v32)
  {
    atomic_fetch_add_explicit((v32 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1056) = v8;
  v33 = *(a1 + 1064);
  *(a1 + 1064) = v32;
  if (v33)
  {
    sub_100004A34(v33);
  }

  return (*(*a1 + 344))(a1, 0, 0);
}

uint64_t PSControlSIM::handleMigration(uint64_t this, uint64_t a2, uint64_t a3)
{
  v5 = this;
  if (a2)
  {
    this = (*(*this + 312))(this);
  }

  v6 = *(v5 + 96);
  v7 = (v5 + 104);
  if (v6 != v7)
  {
    do
    {
      this = (*(*v6[5] + 152))(v6[5], a2, a3);
      v8 = v6[1];
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
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v6 = v9;
    }

    while (v9 != v7);
  }

  return this;
}

void PSControlSIM::handleCTFollowUpComplete_sync(PSControlSIM *this, const __CFDictionary *a2)
{
  v2 = *(this + 140);
  if (v2)
  {
    sub_100208760(v2, a2);
  }
}

void PSControlSIM::handleDumpState(PSControlSIM *this)
{
  sub_10034E7A4(this);
  memset(&__p, 0, sizeof(__p));
  if (*(this + 132))
  {
    std::operator+<char>();
    v2 = std::string::append(&v32, " domain:", 8uLL);
    v3 = *&v2->__r_.__value_.__l.__data_;
    __dst.__r_.__value_.__r.__words[2] = v2->__r_.__value_.__r.__words[2];
    *&__dst.__r_.__value_.__l.__data_ = v3;
    v2->__r_.__value_.__l.__size_ = 0;
    v2->__r_.__value_.__r.__words[2] = 0;
    v2->__r_.__value_.__r.__words[0] = 0;
    v4 = *(this + 132);
    v7 = *(v4 + 144);
    v5 = v4 + 144;
    v6 = v7;
    v8 = *(v5 + 23);
    if (v8 >= 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = v6;
    }

    if (v8 >= 0)
    {
      v10 = *(v5 + 23);
    }

    else
    {
      v10 = *(v5 + 8);
    }

    v11 = std::string::append(&__dst, v9, v10);
    v12 = v11->__r_.__value_.__r.__words[0];
    v36[0] = v11->__r_.__value_.__l.__size_;
    *(v36 + 7) = *(&v11->__r_.__value_.__r.__words[1] + 7);
    v13 = HIBYTE(v11->__r_.__value_.__r.__words[2]);
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v12;
    __p.__r_.__value_.__l.__size_ = v36[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v36 + 7);
    *(&__p.__r_.__value_.__s + 23) = v13;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

    if (*(*(this + 132) + 128) != *(*(this + 132) + 120))
    {
      std::string::append(&__p, " impu:", 6uLL);
      v14 = *(this + 132);
      v15 = *(v14 + 120);
      for (i = *(v14 + 128); v15 != i; v15 = (v15 + 24))
      {
        memset(&__dst, 0, sizeof(__dst));
        if (*(v15 + 23) < 0)
        {
          sub_100005F2C(&__dst, *v15, *(v15 + 1));
        }

        else
        {
          v17 = *v15;
          __dst.__r_.__value_.__r.__words[2] = *(v15 + 2);
          *&__dst.__r_.__value_.__l.__data_ = v17;
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __dst.__r_.__value_.__l.__size_;
        }

        memset(&v32, 0, sizeof(v32));
        sub_1000677C4(&v32, size + 1);
        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = &v32;
        }

        else
        {
          v19 = v32.__r_.__value_.__r.__words[0];
        }

        if (size)
        {
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          memmove(v19, p_dst, size);
        }

        *(&v19->__r_.__value_.__l.__data_ + size) = 32;
        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v32;
        }

        else
        {
          v21 = v32.__r_.__value_.__r.__words[0];
        }

        if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = HIBYTE(v32.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v22 = v32.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, v21, v22);
        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }
      }
    }
  }

  v23 = *(this + 5);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = **(this + 10);
    if (v24)
    {
      v25 = PersonalityInfo::logPrefix(v24);
    }

    else
    {
      v25 = "-1";
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(__dst.__r_.__value_.__l.__data_) = 136315650;
    *(__dst.__r_.__value_.__r.__words + 4) = v25;
    WORD2(__dst.__r_.__value_.__r.__words[1]) = 2080;
    *(&__dst.__r_.__value_.__r.__words[1] + 6) = " ";
    HIWORD(__dst.__r_.__value_.__r.__words[2]) = 2080;
    v35 = p_p;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%s| fIMSSIMInfo: {%s}", &__dst, 0x20u);
  }

  v27 = *(this + 12);
  v28 = this + 104;
  if (v27 != v28)
  {
    do
    {
      (*(**(v27 + 5) + 40))(*(v27 + 5));
      v29 = *(v27 + 1);
      if (v29)
      {
        do
        {
          v30 = v29;
          v29 = *v29;
        }

        while (v29);
      }

      else
      {
        do
        {
          v30 = *(v27 + 2);
          v31 = *v30 == v27;
          v27 = v30;
        }

        while (!v31);
      }

      v27 = v30;
    }

    while (v30 != v28);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1002B5D5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSControlSIM::checkOnDemandProvisioningIfNeeded(uint64_t a1, int a2)
{
  v4 = *(a1 + 104);
  v2 = a1 + 104;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 32) >= a2)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < a2));
  }

  while (v3);
  if (v5 != v2 && *(v5 + 32) <= a2)
  {
    return (*(**(v5 + 40) + 168))();
  }

  else
  {
    return 0;
  }
}

BOOL PSControlSIM::updateVoWiFiProvisioningState(uint64_t a1, unsigned int a2, uint64_t a3, char *a4)
{
  v5 = a3;
  v36 = a2;
  v8 = *(a1 + 104);
  if (v8)
  {
    v9 = a1 + 104;
    do
    {
      if (*(v8 + 32) >= a2)
      {
        v9 = v8;
      }

      v8 = *(v8 + 8 * (*(v8 + 32) < a2));
    }

    while (v8);
    if (v9 != a1 + 104 && *(v9 + 32) <= a2)
    {
      v10 = (*(**(v9 + 40) + 88))(*(v9 + 40));
      std::mutex::lock((a1 + 648));
      *buf = &v36;
      v11 = sub_1002BBF6C(a1 + 712, &v36, &unk_101802C98, buf);
      *(v11 + 8) = v10;
      *(v11 + 36) = BYTE4(v10);
      std::mutex::unlock((a1 + 648));
    }
  }

  memset(__p, 0, sizeof(__p));
  v35 = 0;
  std::mutex::lock((a1 + 448));
  LODWORD(__p[0]) = *(a1 + 536);
  BYTE4(__p[0]) = *(a1 + 540);
  sub_10012BF3C(&__p[1], (a1 + 544));
  std::mutex::unlock((a1 + 448));
  if (!v36)
  {
    BYTE4(__p[0]) = sub_100207364(*(a1 + 1120));
    LODWORD(__p[0]) = v5;
    v12 = *(a1 + 40);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    v13 = **(a1 + 80);
    if (v13)
    {
      v14 = PersonalityInfo::logPrefix(v13);
    }

    else
    {
      v14 = "-1";
    }

    v21 = asString();
    v22 = asStringBool(SBYTE4(__p[0]));
    *buf = 136315906;
    *&buf[4] = v14;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v38 = v21;
    v39 = 2080;
    v40 = v22;
    v18 = "#I %s%sVoWiFi configuration is: %s (preferred in roaming: %s)";
    v19 = v12;
    v20 = 42;
    goto LABEL_33;
  }

  if (v36 == 1)
  {
    if (v5)
    {
      if (a4[23] < 0)
      {
        sub_100005F2C(buf, *a4, *(a4 + 1));
      }

      else
      {
        *buf = *a4;
        *&buf[16] = *(a4 + 2);
      }
    }

    else
    {
      sub_10000501C(buf, "");
    }

    if (v35 == 1)
    {
      if (SHIBYTE(__p[3]) < 0)
      {
        operator delete(__p[1]);
      }

      *&__p[1] = *buf;
      __p[3] = *&buf[16];
    }

    else
    {
      *&__p[1] = *buf;
      __p[3] = *&buf[16];
      LOBYTE(v35) = 1;
    }

    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = **(a1 + 80);
      if (v16)
      {
        v17 = PersonalityInfo::logPrefix(v16);
      }

      else
      {
        v17 = "-1";
      }

      if (a4[23] < 0)
      {
        a4 = *a4;
      }

      *buf = 136315650;
      *&buf[4] = v17;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v38 = a4;
      v18 = "#I %s%sThumperAccountId is set to %s";
      v19 = v15;
      v20 = 32;
LABEL_33:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    }
  }

LABEL_34:
  if (a2 <= 1)
  {
    std::mutex::lock((a1 + 448));
    *(a1 + 536) = __p[0];
    *(a1 + 540) = BYTE4(__p[0]);
    sub_10012BF3C((a1 + 544), &__p[1]);
    std::mutex::unlock((a1 + 448));
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v24 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
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
      sub_100004A34(v30);
      v32 = 0;
      goto LABEL_44;
    }
  }

  else
  {
    v31 = 0;
  }

  std::mutex::unlock(v24);
  v30 = 0;
  v32 = 1;
LABEL_44:
  (*(*v31 + 32))(v31);
  if ((v32 & 1) == 0)
  {
    sub_100004A34(v30);
  }

  if (v35 == 1 && SHIBYTE(__p[3]) < 0)
  {
    operator delete(__p[1]);
  }

  return a2 < 2;
}

void sub_1002B62B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a16 == 1 && a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSControlSIM::submitSwitchMetric_sync(uint64_t a1, int a2)
{
  v4 = *(a1 + 104);
  result = a1 + 104;
  v3 = v4;
  if (v4)
  {
    v5 = result;
    do
    {
      if (*(v3 + 32) >= a2)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < a2));
    }

    while (v3);
    if (v5 != result && *(v5 + 32) <= a2)
    {
      return (*(**(v5 + 40) + 176))();
    }
  }

  return result;
}

uint64_t PSControlSIM::submitAllAnalyticsSwitchMetric_sync(uint64_t this)
{
  v1 = *(this + 96);
  v2 = (this + 104);
  if (v1 != (this + 104))
  {
    do
    {
      this = (*(*v1[5] + 184))(v1[5]);
      v3 = v1[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v1[2];
          v5 = *v4 == v1;
          v1 = v4;
        }

        while (!v5);
      }

      v1 = v4;
    }

    while (v4 != v2);
  }

  return this;
}

void PSControlSIM::updatePSDeviceList(PSControlSIM *this, int a2)
{
  v2 = *(this + 142);
  if (v2)
  {
    sub_100215448(v2, a2);
  }
}

uint64_t PSControlSIM::canSwitchOnCurrentOperator_EXTERNAL(uint64_t a1, int a2)
{
  if (a2 == 2 && (v2 = *(a1 + 1152)) != 0)
  {
    return VoLteControl::canSwitchVoltePreferenceOnCurrentOperator(v2);
  }

  else
  {
    return 1;
  }
}

const void **PSControlSIM::addDevice_sync(PSControlSIM *this, const __CFString *a2)
{
  v4 = *(this + 5);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = **(this + 10);
    v7 = v6 ? PersonalityInfo::logPrefix(v6) : "-1";
    ctu::cf::assign();
    *__p = 0u;
    v13 = 0;
    buf = 136315650;
    buf_4 = v7;
    buf_12 = 2080;
    buf_14 = " ";
    v18 = 2080;
    v19 = __p;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%saddDevice %s", &buf, 0x20u);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (capabilities::ct::supportsGemini(v5))
  {
    theString1 = 0;
    v8 = *(this + 98);
    v9 = *(this + 99);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100308DC0(v8);
    if (v9)
    {
      sub_100004A34(v9);
    }

    sub_100005978(&theString1);
  }

  result = *(this + 142);
  if (result)
  {
    return sub_10021C1BC(result, 0, a2);
  }

  return result;
}

void sub_1002B6728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, std::__shared_weak_count *a16, int a17, __int16 a18, char a19, char a20)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

void PSControlSIM::removeDevice_sync(PSControlSIM *this, const __CFString *a2)
{
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = **(this + 10);
    v6 = v5 ? PersonalityInfo::logPrefix(v5) : "-1";
    ctu::cf::assign();
    *__p = 0u;
    v9 = 0;
    buf = 136315650;
    buf_4 = v6;
    buf_12 = 2080;
    buf_14 = " ";
    v14 = 2080;
    v15 = __p;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sremoveDevice %s", &buf, 0x20u);
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v7 = *(this + 142);
  if (v7)
  {
    sub_10021F9CC(v7, 0, a2);
  }
}

void sub_1002B68E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **PSControlSIM::getFullAccountDetails@<X0>(const void **result@<X0>, int a2@<W1>, const void **a3@<X8>)
{
  *a3 = 0;
  if (a2 == 1)
  {
    result = result[142];
    if (result)
    {
      (*(*result + 19))(&v4);
      if (&v4 != a3)
      {
        *a3 = v4;
        v4 = 0;
        v5 = 0;
        sub_10001021C(&v5);
      }

      return sub_10001021C(&v4);
    }
  }

  return result;
}

void PSControlSIM::getIMSConfigValue(Registry **this, const __CFString *a2, const void *a3)
{
  v18[0] = @"IMSConfig";
  v18[1] = a2;
  v16 = 0;
  v17 = 0;
  __p = 0;
  sub_10005B328(&__p, v18, &v19, 2uLL);
  ServiceMap = Registry::getServiceMap(this[6]);
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
  v18[0] = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, v18);
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
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_9:
  (*(*v13 + 104))(v13, *(*this[10] + 52), 1, &__p, a3, 0);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

void sub_1002B6B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PSControlSIM::isWiFiLocationRequired(PSControlSIM *this)
{
  result = *(this + 140);
  if (result)
  {
    return sub_100208314(result);
  }

  return result;
}

uint64_t PSControlSIM::canDialNumber(uint64_t a1, void **a2)
{
  if (*(a1 + 1120))
  {

    return sub_10034FCB4(a1, a2);
  }

  else
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = **(a1 + 80);
      if (v5)
      {
        v6 = PersonalityInfo::logPrefix(v5);
      }

      else
      {
        v6 = "-1";
      }

      v7 = 136315394;
      v8 = v6;
      v9 = 2080;
      v10 = " ";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sWarning: fWiFiCalling is not valid. Default canDialNumber to true", &v7, 0x16u);
    }

    return 1;
  }
}

void PSControlSIM::networkSlicingDiscovered_sync(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v9 = 0;
  v10 = 0;
  sub_10034F010(a1, 4, &v9);
  v7 = v9;
  if (v9)
  {
    v8 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_1006FED4C(v7, a2, a3, a4);
    if (v8)
    {
      sub_100004A34(v8);
    }
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1002B6D40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002B6D64(uint64_t a1, int a2, char a3, const void **a4)
{
  v9[0] = a1;
  sub_100004AA0(&v13, (a1 + 8));
  v8 = v14;
  v9[1] = v13;
  v9[2] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v8);
  }

  v10 = a2;
  v11 = a3;
  sub_100010024(&v12, a4);
  sub_1002B7564((a1 + 8), v9);
}

void sub_1002B6E30(uint64_t a1, int a2)
{
  v5[0] = a1;
  sub_100004AA0(&v7, (a1 + 8));
  v4 = v8;
  v5[1] = v7;
  v5[2] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
  }

  v6 = a2;
  sub_1002B791C((a1 + 8), v5);
}

void sub_1002B6ED0(uint64_t a1, int a2, char a3)
{
  v7[0] = a1;
  sub_100004AA0(&v10, (a1 + 8));
  v6 = v11;
  v7[1] = v10;
  v7[2] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  v8 = a2;
  v9 = a3;
  sub_1002B7B98((a1 + 8), v7);
}

void sub_1002B6F54(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
    CFRetain(cf);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_1002B708C(uint64_t a1, CFTypeRef cf)
{
  v2 = cf;
  v6 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v5[0] = a1;
  sub_100004AA0(&v7, (a1 + 8));
  v4 = v8;
  v5[1] = v7;
  v5[2] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
    v2 = v6;
  }

  v5[3] = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  sub_1002B7EA0((a1 + 8), v5);
}

void sub_1002B713C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void sub_1002B7150(uint64_t a1, CFTypeRef cf)
{
  v2 = cf;
  v6 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v5[0] = a1;
  sub_100004AA0(&v7, (a1 + 8));
  v4 = v8;
  v5[1] = v7;
  v5[2] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v4);
    v2 = v6;
  }

  v5[3] = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  sub_1002B80B4((a1 + 8), v5);
}

void sub_1002B7200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void sub_1002B7214(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1002B7220(uint64_t a1, __int128 *a2, uint64_t a3, void *a4)
{
  v8 = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__p, *a2, *(a2 + 1));
  }

  else
  {
    __p = *a2;
    v10 = *(a2 + 2);
  }

  sub_1002B84C8(v11, a3);
  v7 = a4[1];
  v11[3] = *a4;
  v11[4] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1002B826C((a1 + 8), &v8);
}

void sub_1002B72E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002B7314(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1002B7314(a1, *a2);
    sub_1002B7314(a1, *(a2 + 1));
    if (a2[135] < 0)
    {
      operator delete(*(a2 + 14));
    }

    if (a2[103] < 0)
    {
      operator delete(*(a2 + 10));
    }

    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_1002B73A8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1002B73A8(a1, *a2);
    sub_1002B73A8(a1, a2[1]);
    sub_1002B7404((a2 + 4));

    operator delete(a2);
  }
}

void sub_1002B7404(uint64_t a1)
{
  sub_1003E9A5C(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_1002B7454(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v6 = a1;
  sub_10013DFEC(&v6);
  return a1;
}

uint64_t sub_1002B74B0(uint64_t a1)
{
  if (*(a1 + 192) == 1 && *(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 160) == 1 && *(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 104) == 1 && *(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
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

void sub_1002B7564(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_1002B765C(const void ***a1)
{
  v2 = a1;
  v3 = *a1;
  sub_1002B76D4(v3);
  sub_1002B7868(&v3);
  v1 = v2;
  v2 = 0;
  if (v1)
  {
    sub_1002B78C4(&v2, v1);
  }
}

void sub_1002B76AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1002B7868(va);
  v10 = a9;
  a9 = 0;
  if (v10)
  {
    sub_1002B78C4(&a9, v10);
  }

  _Unwind_Resume(a1);
}

void sub_1002B76D4(const void **a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = *(a1 + 6);
        v7 = *(a1 + 28);
        sub_100010024(&v11, a1 + 4);
        LODWORD(v6) = (*(*v3 + 368))(v3, v6, v7, &v11);
        sub_10001021C(&v11);
        if (v6)
        {
          (*(*v3 + 304))(v3, 0);
          v8 = *(a1 + 6);
          v9 = *(a1 + 28);
          sub_100010024(&v10, a1 + 4);
          (*(*v3 + 376))(v3, v8, v9, &v10);
          sub_10001021C(&v10);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_1002B7838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_10001021C(&a9);
  sub_100004A34(v9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002B7868(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_10001021C((v1 + 32));
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return a1;
}

void sub_1002B78C4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }
}

void sub_1002B791C(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_1002B7A00(uint64_t **a1)
{
  sub_1002B7A60(a1);
  v2 = 0;
  if (a1)
  {
    sub_1002B78C4(&v2, a1);
  }
}

void sub_1002B7A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_1002B78C4(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002B7A60(uint64_t **a1)
{
  v1 = *a1;
  v6 = v1;
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = *v1;
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = v4;
  if (!*(v1 + 8))
  {
    sub_100004A34(v4);
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  (*(*v3 + 392))(v3, *(v1 + 24));
  v1 = v6;
  sub_100004A34(v5);
  v6 = 0;
  if (v1)
  {
LABEL_8:
    sub_1002B7B40(&v6, v1);
  }
}

void sub_1002B7B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  v12 = a10;
  a10 = 0;
  if (v12)
  {
    sub_1002B7B40(&a10, v12);
  }

  _Unwind_Resume(a1);
}

void sub_1002B7B40(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }
}

void sub_1002B7B98(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_1002B7CAC(uint64_t a1, uint64_t *a2)
{
  v8 = a2;
  v2 = *a2;
  v3 = *(*a2 + 16);
  if (v3)
  {
    v4 = *v2;
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (*(v2 + 8))
      {
        (*(*v4 + 304))(v4, 0);
        sub_10034CA3C(v4, *(v2 + 24), *(v2 + 28));
      }

      sub_100004A34(v6);
    }
  }

  v9 = 0;
  sub_1002B7DA8(&v9, v2);
  v7 = v8;
  v8 = 0;
  if (v7)
  {
    sub_1002B78C4(&v8, v7);
  }
}

void sub_1002B7D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v11);
  a10 = 0;
  sub_1002B7DA8(&a10, v10);
  v13 = a9;
  a9 = 0;
  if (v13)
  {
    sub_1002B78C4(&a9, v13);
  }

  _Unwind_Resume(a1);
}

void sub_1002B7DA8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }
}

void sub_1002B7E00(void **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  (*(**v1 + 328))(*v1, v1[1]);
  sub_10004B740(&v4);
  v2 = v3;
  v3 = 0;
  if (v2)
  {
    sub_1002B78C4(&v3, v2);
  }
}

void sub_1002B7E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10004B740(&a10);
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_1002B78C4(&a9, v11);
  }

  _Unwind_Resume(a1);
}

void sub_1002B7EA0(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_1002B7F80(void *a1)
{
  v2 = *a1;
  v8 = v2;
  v3 = v2[2];
  if (v3)
  {
    v4 = *v2;
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (v2[1])
      {
        (*(*v4 + 416))(v4, v2[3]);
      }

      sub_100004A34(v6);
    }
  }

  sub_1002B8058(&v8);
  v7 = 0;
  sub_1002B78C4(&v7, a1);
}

void sub_1002B802C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_100004A34(v10);
  sub_1002B8058(va);
  a9 = 0;
  sub_1002B78C4(&a9, v9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002B8058(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    sub_100005978((v1 + 24));
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return a1;
}

void sub_1002B80B4(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_1002B8194(void *a1)
{
  v2 = *a1;
  v8 = v2;
  v3 = v2[2];
  if (v3)
  {
    v4 = *v2;
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (v2[1])
      {
        (*(*v4 + 424))(v4, v2[3]);
      }

      sub_100004A34(v6);
    }
  }

  sub_1002B8058(&v8);
  v7 = 0;
  sub_1002B78C4(&v7, a1);
}

void sub_1002B8240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v11);
  sub_1002B8058(&a10);
  a9 = 0;
  sub_1002B78C4(&a9, v10);
  _Unwind_Resume(a1);
}

void sub_1002B826C(void *a1, uint64_t a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, a1);
  operator new();
}

void sub_1002B8388(void *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  sub_10004F058(a1);
}

void sub_1002B83AC(void **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  (*(**v1 + 336))(*v1, v1 + 1, v1 + 4, v1 + 7);
  sub_1002B8458(&v4);
  v2 = v3;
  v3 = 0;
  if (v2)
  {
    sub_1002B78C4(&v3, v2);
  }
}

void sub_1002B8430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1002B8458(va);
  v10 = a9;
  a9 = 0;
  if (v10)
  {
    sub_1002B78C4(&a9, v10);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1002B8458(uint64_t *a1)
{
  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = *(v1 + 64);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_10006DCAC(v1 + 32, *(v1 + 40));
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return a1;
}

void *sub_1002B84C8(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1002B8520(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1002B8520(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1002B85A8(v5, (v5 + 8), v4 + 4, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_1002B85A8(uint64_t **a1, void *a2, unint64_t *a3, void *a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *sub_10010CB50(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void sub_1002B86C4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1002B8798);
  __cxa_rethrow();
}

void sub_1002B8704(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002B8758(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002B8798(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *sub_1002B87C4(uint64_t a1, int *a2, uint64_t a3)
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

void sub_1002B88A8(unint64_t *a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1002B8A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void **sub_1002B8A80(void **a1)
{
  sub_1002BAA18(a1 + 3);
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

uint64_t sub_1002B8AC0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1002B8B04(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  memset(v5, 0, sizeof(v5));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v5, v4);
  sub_1002B8BFC(a1, v5);
}

void sub_1002B8BCC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002B8BFC(uint64_t *a1, void *x1_0)
{
  v4 = 0;
  v5 = 0;
  sub_1002B8CF8(a1, x1_0);
}

void sub_1002B8CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1002B8D90(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_1002B8DD4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_1002B8E18(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_1002B90F8(a1, a2, 1, 2);
}

void sub_1002B8F3C(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_1002B9190(&v2, a2);
}

uint64_t sub_1002B8F9C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t *sub_1002B8FE0(uint64_t *a1, void *a2, int a3, uint64_t **a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_1002B8D90(a1);
  result = sub_1002BA07C(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_1002B8DD4(v10 + 2);
        sub_1002B97C0(v15, a2);
        v10 = v22;
      }

      if (*(sub_1002B8DD4(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_1002B8D90(a1);
        v18 = sub_1002BA07C(v17);
        v19 = sub_1002B8DD4(v22 + 2);
        v16 = sub_100100CE8(v18, (v19 + 64), &v22);
      }

      v22 = v16;
      v20 = sub_1002B8D90(a1);
      result = sub_1002BA07C(v20);
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

uint64_t *sub_1002B90F8(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v9 = sub_1002B8D90(a1);
  v10 = sub_1002BA07C(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_1002B8D90(a1);
    v11 = *(sub_1002BA07C(v12) + 8);
  }

  v14 = v11;
  return sub_1002B8FE0(a1, a2, a3, &v14, a4);
}

void sub_1002B9190(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1002B91FC(&v2, a2);
}

void sub_1002B926C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_1002B92AC(uint64_t result)
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

uint64_t sub_1002B93C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002B9550(a1, a2);
  sub_1002B95BC((v4 + 3), a2 + 24);
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

uint64_t *sub_1002B9550(uint64_t *a1, uint64_t a2)
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

uint64_t sub_1002B95BC(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1002B9624(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1002B9690(&v2, a2);
}

void sub_1002B9700(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_1002B9740(uint64_t result)
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