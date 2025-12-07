void sub_100438030(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 56;
    sub_100437FA4(v4, i - 56);
  }
}

uint64_t sub_100438078(char **a1, __int128 *a2)
{
  v2 = (a1[1] - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    sub_1000C7698();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 6 > v3)
  {
    v3 = v6 >> 6;
  }

  if (v6 >= 0x7FFFFFFFFFFFFF80)
  {
    v7 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_100438188(a1, v7);
  }

  v14 = 0;
  v15 = (v2 << 7);
  sub_100438398((v2 << 7), a2);
  v16 = ((v2 << 7) + 128);
  v8 = a1[1];
  v9 = ((v2 << 7) + *a1 - v8);
  sub_1004381D0(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_1004382F4(&v14);
  return v13;
}

void sub_100438174(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1004382F4(va);
  _Unwind_Resume(a1);
}

void sub_100438188(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 57))
  {
    operator new();
  }

  sub_1000C7698();
}

void sub_1004381D0(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 5);
      *(a4 + 24) = v8;
      *(v6 + 4) = 0;
      *(v6 + 5) = 0;
      *(v6 + 3) = 0;
      v9 = v6[3];
      *(a4 + 64) = *(v6 + 8);
      *(a4 + 48) = v9;
      *(v6 + 7) = 0;
      *(v6 + 8) = 0;
      *(v6 + 6) = 0;
      v10 = *(v6 + 72);
      *(a4 + 88) = *(v6 + 11);
      *(a4 + 72) = v10;
      *(v6 + 9) = 0;
      *(v6 + 10) = 0;
      *(v6 + 11) = 0;
      v11 = v6[6];
      *(a4 + 112) = *(v6 + 14);
      *(a4 + 96) = v11;
      *(v6 + 12) = 0;
      *(v6 + 13) = 0;
      *(v6 + 14) = 0;
      *(a4 + 120) = *(v6 + 30);
      v6 += 8;
      a4 += 128;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (*(v5 + 119) < 0)
      {
        operator delete(*(v5 + 12));
      }

      if (*(v5 + 95) < 0)
      {
        operator delete(*(v5 + 9));
      }

      if (*(v5 + 71) < 0)
      {
        operator delete(*(v5 + 6));
      }

      if (*(v5 + 47) < 0)
      {
        operator delete(*(v5 + 3));
      }

      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 8;
    }
  }
}

uint64_t sub_1004382F4(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 128;
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }

    if (*(i - 33) < 0)
    {
      operator delete(*(i - 56));
    }

    if (*(i - 57) < 0)
    {
      operator delete(*(i - 80));
    }

    if (*(i - 81) < 0)
    {
      operator delete(*(i - 104));
    }

    if (*(i - 105) < 0)
    {
      operator delete(*(i - 128));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

char *sub_100438398(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100008904(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100008904(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100008904(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_100008904(__dst + 96, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(__dst + 14) = *(a2 + 14);
    *(__dst + 6) = v8;
  }

  *(__dst + 30) = *(a2 + 30);
  return __dst;
}

void sub_100438490(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1004384F4(unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100438594(a1, a2);
  }

  else
  {
    sub_100438534(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void *sub_100438534(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_100008904(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_100438594(unint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1000C7698();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_10035FDB8(a1, v6);
  }

  v7 = 24 * v2;
  v16 = 0;
  v17 = 24 * v2;
  v18 = 24 * v2;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(v7, *a2, *(a2 + 1));
    v7 = v17;
    v9 = v18;
  }

  else
  {
    v8 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v8;
    v9 = 24 * v2;
  }

  *&v18 = v9 + 24;
  v10 = a1[1];
  v11 = v7 + *a1 - v10;
  sub_1004386E4(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_100360AC8(&v16);
  return v15;
}

void sub_1004386D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100360AC8(va);
  _Unwind_Resume(a1);
}

void sub_1004386E4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      a4 += 24;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      v6 = (v6 + 24);
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 = (v5 + 24);
    }
  }
}

uint64_t sub_100438758(void *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1004387F8(a1, a2);
  }

  else
  {
    sub_100438798(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

void *sub_100438798(void *result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  if (*(a2 + 23) < 0)
  {
    result = sub_100008904(result[1], *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  v2[1] = v3 + 24;
  return result;
}

uint64_t sub_1004387F8(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1000C7698();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_10035FDB8(a1, v6);
  }

  v7 = 24 * v2;
  v16 = 0;
  v17 = 24 * v2;
  v18 = 24 * v2;
  if (*(a2 + 23) < 0)
  {
    sub_100008904(v7, *a2, *(a2 + 1));
    v7 = v17;
    v9 = v18;
  }

  else
  {
    v8 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v7 = v8;
    v9 = 24 * v2;
  }

  *&v18 = v9 + 24;
  v10 = *(a1 + 8);
  v11 = v7 + *a1 - v10;
  sub_1004386E4(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_100360AC8(&v16);
  return v15;
}

void sub_100438934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100360AC8(va);
  _Unwind_Resume(a1);
}

id sub_100438948(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (qword_100B6D8D0 != -1)
  {
    sub_10082C600();
  }

  v8 = qword_100B6D8C8;
  v9 = v8;
  if (v8)
  {
    v10 = [v8 localizations];
    v11 = +[NSLocale preferredLanguages];
    v12 = v11;
    if (!v10 || !v11 || ((v13 = objc_autoreleasePoolPush(), +[NSBundle preferredLocalizationsFromArray:forPreferences:](NSBundle, "preferredLocalizationsFromArray:forPreferences:", v10, v12), v14 = objc_claimAutoreleasedReturnValue(), [v14 firstObject], v15 = objc_claimAutoreleasedReturnValue(), v14, !v15) ? (v16 = 0) : (objc_msgSend(v9, "localizedStringForKey:value:table:localization:", v5, v6, v7, v15), v16 = objc_claimAutoreleasedReturnValue()), v15, objc_autoreleasePoolPop(v13), !v16))
    {
      v16 = [v9 localizedStringForKey:v5 value:v6 table:v7];
    }
  }

  else
  {
    v16 = v6;
  }

  return v16;
}

id sub_100438B14(void *a1, void *a2)
{
  v2 = sub_100438948(a1, a2, @"Localizable");

  return v2;
}

id sub_100438B48(void *a1, void *a2)
{
  v2 = sub_100438948(a1, a2, @"Localizable-Internal");

  return v2;
}

void sub_100438B7C(id a1)
{
  v3 = [NSURL fileURLWithPath:@"/System/Library/PrivateFrameworks/MobileBluetooth.framework"];
  v1 = [NSBundle bundleWithURL:?];
  v2 = qword_100B6D8C8;
  qword_100B6D8C8 = v1;
}

uint64_t sub_100438C0C(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 8);
  *a1 = off_100AF5F50;
  *(a1 + 8) = off_100AF6040;
  *(a1 + 16) = a2;
  v4 = sub_1000DAB84(a1, a2);
  sub_100321440((a1 + 24), v3, "com.apple.BTServer.avrcp", *(v4 + 8));
  sub_100321480(a1 + 24);
  return a1;
}

void sub_100438CA8(uint64_t a1)
{
  *(a1 + 16) = 0;
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_100438D1C;
  v1[3] = &unk_100ADF8F8;
  v1[4] = a1;
  sub_100321530(a1 + 24, v1);
}

uint64_t sub_100438D1C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 200))();
  }

  return result;
}

void sub_100438D4C(uint64_t result, uint64_t a2, int a3)
{
  if (a3 - 501) <= 0xC && ((0x1F1Fu >> (a3 + 11)))
  {
    v6 = qword_1008A76D0[a3 - 501];
    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v7, "kCommand", v6);
    if (a3 != 513)
    {
      sub_1000BE6F8((a2 + 128), __p);
      if (v10 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      xpc_dictionary_set_string(v7, "kSource", v8);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_100438E50(result, "SendCommand", v7, 0);
  }
}

void sub_100438E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100438E50(uint64_t a1, char *a2, void *a3, void *a4)
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10043C180;
  v8[3] = &unk_100AF6120;
  v9 = a4;
  v10 = a2;
  v7 = v9;
  sub_1003216CC(a1 + 24, a2, a3, v8);
}

void sub_100438F14(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100438FCC;
  v4[3] = &unk_100AF6060;
  v5 = a2;
  v6 = a1;
  v3 = v5;
  sub_100438E50(a1, "GetSettings", 0, v4);
}

uint64_t sub_100438FCC(uint64_t a1, int a2, xpc_object_t xdict)
{
  v6 = 1;
  v7 = 1;
  if (a2 == 4)
  {
    sub_100439048(a1, xdict, &v7, &v6);
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

unint64_t sub_100439048(int a1, xpc_object_t xdict, _DWORD *a3, _DWORD *a4)
{
  int64 = xpc_dictionary_get_int64(xdict, "kRepeatMode");
  if (int64 <= 3)
  {
    *a3 = dword_1008A7740[int64];
  }

  result = xpc_dictionary_get_int64(xdict, "kShuffleMode");
  if (result <= 3)
  {
    *a4 = dword_1008A7750[result];
  }

  return result;
}

void sub_1004390C8(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100439180;
  v4[3] = &unk_100AF6088;
  v5 = a2;
  v3 = v5;
  sub_100438E50(a1, "GetPlayStatus", 0, v4);
}

uint64_t sub_100439180(uint64_t a1, int a2, xpc_object_t xdict)
{
  if (a2 == 4)
  {
    xpc_dictionary_get_double(xdict, "kTrackDuration");
    xpc_dictionary_get_double(xdict, "kTrackPosition");
    xpc_dictionary_get_int64(xdict, "kPlaybackState");
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void sub_100439238(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1004392F0;
  v4[3] = &unk_100AF6088;
  v5 = a2;
  v3 = v5;
  sub_100438E50(a1, "GetElementAttributes", 0, v4);
}

void sub_1004392F0(uint64_t a1, int a2, void *a3)
{
  v19 = 0u;
  memset(&__p, 0, sizeof(__p));
  *v17 = 0u;
  *v18 = 0u;
  *v15 = 0u;
  v16 = 0u;
  *v14 = 0u;
  sub_100007E30(v14, "");
  sub_100007E30(&v15[1], "");
  sub_100007E30(v17, "");
  sub_100007E30(&v18[1], "");
  sub_100007E30(&__p, "");
  if (a2 == 4)
  {
    string = xpc_dictionary_get_string(a3, "kTitle");
    if (string)
    {
      std::string::assign(v14, string);
    }

    v7 = xpc_dictionary_get_string(a3, "kAlbum");
    if (v7)
    {
      std::string::assign(v17, v7);
    }

    v8 = xpc_dictionary_get_string(a3, "kArtist");
    if (v8)
    {
      std::string::assign(&v15[1], v8);
    }

    v9 = xpc_dictionary_get_string(a3, "kGenre");
    if (v9)
    {
      std::string::assign(&v18[1], v9);
    }

    value = xpc_dictionary_get_value(a3, "kQueueIndex");
    if (value)
    {
      xpc_int64_get_value(value);
    }

    v11 = xpc_dictionary_get_value(a3, "kQueueCount");
    if (v11)
    {
      xpc_int64_get_value(v11);
    }

    v12 = xpc_dictionary_get_value(a3, "kDuration");
    if (v12)
    {
      xpc_double_get_value(v12);
    }

    v13 = xpc_dictionary_get_string(a3, "kImageHandle");
    if (v13)
    {
      std::string::assign(&__p, v13);
    }
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), a2 == 4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[1]);
  }

  if (SHIBYTE(v18[0]) < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[1]);
  }

  if (SHIBYTE(v15[0]) < 0)
  {
    operator delete(v14[0]);
  }
}

void sub_1004395A0(uint64_t a1, int a2, int a3)
{
  v4 = 3;
  v5 = -1;
  if (a2 == 2)
  {
    v5 = 2;
  }

  v6 = a2 == 3 || a2 == 2;
  if (a2 != 3)
  {
    v4 = v5;
  }

  v7 = a2 == 1 || v6;
  if (a2 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v4;
  }

  if (a3 == 1)
  {
    v9 = 1;
  }

  else if (a3 == 2)
  {
    v9 = 3;
  }

  else
  {
    if (!v7)
    {
      return;
    }

    v9 = -1;
  }

  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v10, "kRepeatMode", v8);
  xpc_dictionary_set_int64(v10, "kShuffleMode", v9);

  sub_100438E50(a1, "SetSettings", v10, 0);
}

void sub_10043969C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = xpc_array_create(0, 0);
  for (i = *(a3 + 8); i != a3; i = *(i + 8))
  {
    xpc_array_set_int64(v5, 0xFFFFFFFFFFFFFFFFLL, *(i + 16));
  }

  xpc_dictionary_set_value(a2, "kAttributeIDs", v5);

  xpc_release(v5);
}

void sub_100439724(xpc_object_t xdict@<X1>, uint64_t *a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  if (xpc_dictionary_get_string(xdict, "kTitle"))
  {
    operator new();
  }

  if (xpc_dictionary_get_string(xdict, "kArtist"))
  {
    operator new();
  }

  if (xpc_dictionary_get_string(xdict, "kAlbum"))
  {
    operator new();
  }

  if (xpc_dictionary_get_string(xdict, "kTrackNumber"))
  {
    operator new();
  }

  if (xpc_dictionary_get_string(xdict, "kTrackCount"))
  {
    operator new();
  }

  if (xpc_dictionary_get_string(xdict, "kGenre"))
  {
    operator new();
  }

  if (xpc_dictionary_get_string(xdict, "kPlayingTime"))
  {
    operator new();
  }

  if (xpc_dictionary_get_string(xdict, "kImageHandle"))
  {
    operator new();
  }
}

void sub_100439EDC(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v6, "kPlayerId", a2);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100439FD0;
  v8[3] = &unk_100AF6088;
  v7 = v5;
  v9 = v7;
  sub_100438E50(a1, "SetAddressedPlayer", v6, v8);
}

void sub_100439FE0(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v6, "kPlayerId", a2);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10043A0D4;
  v8[3] = &unk_100AF6088;
  v7 = v5;
  v9 = v7;
  sub_100438E50(a1, "SetBrowsedPlayer", v6, v8);
}

void sub_10043A0D4(uint64_t a1, int a2, xpc_object_t xdict)
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x4812000000;
  v7[3] = sub_10004230C;
  v7[4] = sub_100042644;
  v7[5] = 0;
  v8[0] = v8;
  v8[1] = v8;
  v8[2] = 0;
  if (a2 == 4)
  {
    value = xpc_dictionary_get_value(xdict, "kFolders");
    xpc_dictionary_get_int64(xdict, "kNumItems");
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10043A248;
    v6[3] = &unk_100AF56D8;
    v6[4] = v7;
    xpc_array_apply(value, v6);
  }

  (*(*(a1 + 32) + 16))();
  _Block_object_dispose(v7, 8);
  sub_10043C768(v8);
}

void sub_10043A224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  sub_10043C768(v11);
  _Unwind_Resume(a1);
}

void sub_10043A248(uint64_t a1, int a2, xpc_object_t xstring)
{
  string_ptr = xpc_string_get_string_ptr(xstring);
  sub_100007E30(&v4, string_ptr);
  operator new();
}

void sub_10043A2D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10043A2F0(uint64_t a1, unsigned int a2, BOOL a3, int64_t a4, void *a5)
{
  v9 = a5;
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v10, "kUidCounter", a2);
  xpc_dictionary_set_BOOL(v10, "kDotDot", a3);
  xpc_dictionary_set_int64(v10, "kUid", a4);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10043A41C;
  v12[3] = &unk_100AF6088;
  v11 = v9;
  v13 = v11;
  sub_100438E50(a1, "ChangePath", v10, v12);
}

uint64_t sub_10043A41C(uint64_t a1, int a2, xpc_object_t xdict)
{
  if (a2 == 4)
  {
    xpc_dictionary_get_int64(xdict, "kNumItems");
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void sub_10043A484(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, uint64_t a5, void *a6)
{
  v11 = a6;
  v12 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v12, "kScope", a2);
  xpc_dictionary_set_int64(v12, "kStartItem", a3);
  xpc_dictionary_set_int64(v12, "kEndItem", a4);
  if (*(a5 + 16))
  {
    sub_10043969C(v13, v12, a5);
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10043A5D8;
  v15[3] = &unk_100AF60D8;
  v17 = a1;
  v18 = a2;
  v14 = v11;
  v16 = v14;
  sub_100438E50(a1, "GetFolderItems", v12, v15);
}

void *sub_10043A5D8(uint64_t a1, int a2, xpc_object_t xdict)
{
  v4 = *(a1 + 40);
  v12 = 0;
  v13 = &v12;
  v14 = 0x4812000000;
  v15 = sub_10043A770;
  v16 = sub_10043A7B8;
  v17 = 0;
  v18[0] = v18;
  v18[1] = v18;
  v18[2] = 0;
  if (a2 == 4)
  {
    value = xpc_dictionary_get_value(xdict, "kItems");
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10043A7C0;
    v10[3] = &unk_100AF60B0;
    v11 = *(a1 + 48);
    v10[4] = &v12;
    v10[5] = v4;
    xpc_array_apply(value, v10);
  }

  (*(*(a1 + 32) + 16))();
  v6 = v13;
  for (i = v13[7]; i != v6 + 6; i = i[1])
  {
    v8 = i[2];
    if (v8)
    {
      (*(*v8 + 8))(v8);
      v6 = v13;
    }
  }

  _Block_object_dispose(&v12, 8);
  return sub_100028EB4(v18);
}

void sub_10043A74C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  sub_100028EB4(v15);
  _Unwind_Resume(a1);
}

void *sub_10043A770(void *result, void *a2)
{
  result[6] = result + 6;
  result[7] = result + 6;
  result[8] = 0;
  v2 = a2[8];
  if (v2)
  {
    v4 = a2[6];
    v3 = a2[7];
    v5 = *(v4 + 8);
    v6 = *v3;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = result[6];
    *(v7 + 8) = v3;
    *v3 = v7;
    result[6] = v4;
    *(v4 + 8) = result + 6;
    result[8] = v2;
    a2[8] = 0;
  }

  return result;
}

void sub_10043A7C0(uint64_t a1, int a2, xpc_object_t xdict)
{
  xpc_dictionary_get_string(xdict, "kName");
  if (*(a1 + 48))
  {
    v5 = xpc_dictionary_get_BOOL(xdict, "kIsFolder");
    xpc_dictionary_get_int64(xdict, "kUid");
    if (v5)
    {
      xpc_dictionary_get_int64(xdict, "kFolderType");
      operator new();
    }

    v8[0] = v8;
    v8[1] = v8;
    v8[2] = 0;
    value = xpc_dictionary_get_value(xdict, "kAttributes");
    if (value)
    {
      sub_100439724(value, v7);
      sub_10043CF9C(v8, v7);
      sub_100028EB4(v7);
    }

    operator new();
  }

  xpc_dictionary_get_int64(xdict, "kPlayerId");
  xpc_dictionary_get_int64(xdict, "kPlaybackState");
  operator new();
}

void sub_10043AAA4(uint64_t a1, unsigned int a2, int64_t a3, unsigned int a4, uint64_t a5, void *a6)
{
  v11 = a6;
  v12 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v12, "kScope", a2);
  xpc_dictionary_set_int64(v12, "kUid", a3);
  xpc_dictionary_set_int64(v12, "kUidCounter", a4);
  sub_10043969C(v13, v12, a5);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10043ABEC;
  v15[3] = &unk_100AF6060;
  v17 = a1;
  v14 = v11;
  v16 = v14;
  sub_100438E50(a1, "GetItemAttributes", v12, v15);
}

void *sub_10043ABEC(uint64_t a1, int a2, xpc_object_t xdict)
{
  v8 = &v8;
  v9 = &v8;
  v10 = 0;
  if (a2 == 4)
  {
    sub_100439724(xdict, v7);
    sub_10043CF9C(&v8, v7);
    sub_100028EB4(v7);
  }

  (*(*(a1 + 32) + 16))();
  for (i = v9; i != &v8; i = i[1])
  {
    v5 = i[2];
    if (v5)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      operator delete();
    }
  }

  return sub_100028EB4(&v8);
}

void sub_10043ACC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100028EB4(va);
  _Unwind_Resume(a1);
}

void sub_10043ACE0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  xpc_dictionary_set_string(v6, "kSearchString", v8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10043ADE0;
  v10[3] = &unk_100AF6088;
  v9 = v5;
  v11 = v9;
  sub_100438E50(a1, "Search", v7, v10);
}

uint64_t sub_10043ADE0(uint64_t a1, int a2, xpc_object_t xdict)
{
  if (a2 == 4)
  {
    xpc_dictionary_get_int64(xdict, "kNumItems");
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void sub_10043AE4C(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  v6 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v6, "kScope", a2);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10043AF40;
  v8[3] = &unk_100AF6088;
  v7 = v5;
  v9 = v7;
  sub_100438E50(a1, "GetTotalNumberOfItems", v6, v8);
}

uint64_t sub_10043AF40(uint64_t a1, int a2, xpc_object_t xdict)
{
  if (a2 == 4)
  {
    xpc_dictionary_get_int64(xdict, "kNumItems");
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

void sub_10043AFAC(uint64_t a1, unsigned int a2, int64_t a3, unsigned int a4, void *a5)
{
  v9 = a5;
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v10, "kScope", a2);
  xpc_dictionary_set_int64(v10, "kUid", a3);
  xpc_dictionary_set_int64(v10, "kUidCounter", a4);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10043B0D8;
  v12[3] = &unk_100AF6088;
  v11 = v9;
  v13 = v11;
  sub_100438E50(a1, "PlayItem", v10, v12);
}

void sub_10043B0E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  xpc_dictionary_set_string(v6, "kImageHandle", v8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10043B1E8;
  v10[3] = &unk_100AF6088;
  v9 = v5;
  v11 = v9;
  sub_100438E50(a1, "GetImageProperties", v7, v10);
}

void sub_10043B1E8(uint64_t a1, int a2, xpc_object_t xdict)
{
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x4812000000;
  v19[3] = sub_10043B4F4;
  v19[4] = sub_10043B518;
  v19[5] = "";
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x4812000000;
  v15[3] = sub_10043B530;
  v15[4] = sub_10043B554;
  v15[5] = "";
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x4812000000;
  v11[3] = sub_10043B530;
  v11[4] = sub_10043B554;
  v11[5] = "";
  v13 = 0;
  v14 = 0;
  __p = 0;
  if (!a2)
  {
    array = xpc_dictionary_get_array(xdict, "kEncodings");
    applier[0] = _NSConcreteStackBlock;
    applier[1] = 3221225472;
    applier[2] = sub_10043B56C;
    applier[3] = &unk_100AF56D8;
    applier[4] = v19;
    xpc_array_apply(array, applier);
    v6 = xpc_dictionary_get_array(xdict, "kWidths");
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10043B664;
    v9[3] = &unk_100AF56D8;
    v9[4] = v15;
    xpc_array_apply(v6, v9);
    v7 = xpc_dictionary_get_array(xdict, "kHeights");
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10043B788;
    v8[3] = &unk_100AF56D8;
    v8[4] = v11;
    xpc_array_apply(v7, v8);
  }

  (*(*(a1 + 32) + 16))();
  _Block_object_dispose(v11, 8);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(v15, 8);
  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  _Block_object_dispose(v19, 8);
  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_10043B494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40)
{
  _Block_object_dispose(&a24, 8);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a33, 8);
  if (a39)
  {
    a40 = a39;
    operator delete(a39);
  }

  _Block_object_dispose((v40 - 136), 8);
  v42 = *(v40 - 88);
  if (v42)
  {
    *(v40 - 80) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10043B4F4(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_10043B518(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

__n128 sub_10043B530(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_10043B554(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

uint64_t sub_10043B56C(uint64_t a1, int a2, xpc_object_t xint)
{
  v3 = *(*(a1 + 32) + 8);
  value = xpc_int64_get_value(xint);
  v6 = v3[7];
  v5 = v3[8];
  if (v6 >= v5)
  {
    v8 = v3[6];
    v9 = (v6 - v8);
    v10 = v6 - v8 + 1;
    if (v10 < 0)
    {
      sub_1000C7698();
    }

    v11 = v5 - v8;
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v12 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      operator new();
    }

    v13 = v6 - v8;
    *v9 = value;
    v7 = v9 + 1;
    memcpy(0, v8, v13);
    v3[6] = 0;
    v3[7] = v9 + 1;
    v3[8] = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    *v6 = value;
    v7 = v6 + 1;
  }

  v3[7] = v7;
  return 1;
}

uint64_t sub_10043B664(uint64_t a1, int a2, xpc_object_t xint)
{
  v3 = *(*(a1 + 32) + 8);
  value = xpc_int64_get_value(xint);
  sub_10043B6AC((v3 + 48), &value);
  return 1;
}

void sub_10043B6AC(const void **a1, unsigned __int16 *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      sub_1000C7698();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      sub_1003705C4(a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 2;
  }

  a1[1] = v6;
}

uint64_t sub_10043B788(uint64_t a1, int a2, xpc_object_t xint)
{
  v3 = *(*(a1 + 32) + 8);
  value = xpc_int64_get_value(xint);
  sub_10043B6AC((v3 + 48), &value);
  return 1;
}

void sub_10043B7D0(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, void *a5)
{
  v9 = a5;
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  if (*(a2 + 23) >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  xpc_dictionary_set_string(v10, "kImageHandle", v12);
  xpc_dictionary_set_int64(v11, "kWidth", a3);
  xpc_dictionary_set_int64(v11, "kHeight", a4);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10043B908;
  v14[3] = &unk_100AF6088;
  v13 = v9;
  v15 = v13;
  sub_100438E50(a1, "GetImage", v11, v14);
}

uint64_t sub_10043B908(uint64_t a1, int a2, xpc_object_t xdict)
{
  length = 0;
  if (!a2)
  {
    xpc_dictionary_get_data(xdict, "kImageData", &length);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10043B97C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  xpc_dictionary_set_string(v6, "kImageHandle", v8);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10043BA7C;
  v10[3] = &unk_100AF6088;
  v9 = v5;
  v11 = v9;
  sub_100438E50(a1, "GetImage", v7, v10);
}

uint64_t sub_10043BA7C(uint64_t a1, int a2, xpc_object_t xdict)
{
  length = 0;
  if (!a2)
  {
    xpc_dictionary_get_data(xdict, "kImageData", &length);
  }

  return (*(*(a1 + 32) + 16))();
}

void sub_10043BAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10043BB6C;
  v3[3] = &unk_100AF60F8;
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  sub_100438E50(a1, "RegisterForPlaybackStateChanges", 0, v3);
}

uint64_t (***sub_10043BB6C(uint64_t a1, int a2, xpc_object_t xdict))(void)
{
  v3 = *(a1 + 32);
  if (a2 == 4)
  {
    xpc_dictionary_get_int64(xdict, "kPlaybackState");
  }

  result = *(v3 + 16);
  if (result)
  {
    v5 = **result;

    return v5();
  }

  return result;
}

void sub_10043BC00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10043BC7C;
  v3[3] = &unk_100AF60F8;
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  sub_100438E50(a1, "RegisterForTrackChanges", 0, v3);
}

uint64_t sub_10043BC7C(uint64_t a1, int a2, xpc_object_t xdict)
{
  v3 = *(a1 + 32);
  if (a2 == 4)
  {
    xpc_dictionary_get_int64(xdict, "kUid");
  }

  result = *(v3 + 16);
  if (result)
  {
    v5 = *(*result + 8);

    return v5();
  }

  return result;
}

void sub_10043BD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10043BD8C;
  v3[3] = &unk_100AF60F8;
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  sub_100438E50(a1, "RegisterForSettingsChanges", 0, v3);
}

uint64_t sub_10043BD8C(uint64_t a1, int a2, xpc_object_t xdict)
{
  v3 = *(a1 + 32);
  v6 = 1;
  v7 = 1;
  if (a2 == 4)
  {
    sub_100439048(a1, xdict, &v7, &v6);
  }

  result = *(v3 + 16);
  if (result)
  {
    v5 = *(*result + 16);

    return v5();
  }

  return result;
}

void sub_10043BE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10043BEAC;
  v3[3] = &unk_100AF60F8;
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  sub_100438E50(a1, "RegisterForChanges", 0, v3);
}

uint64_t sub_10043BEAC(void *a1)
{
  result = *(a1[4] + 16);
  if (result)
  {
    return (*(*result + 24))(result, 0, a1[5], a1[6]);
  }

  return result;
}

void sub_10043BEEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10043BF68;
  v3[3] = &unk_100AF60F8;
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  sub_100438E50(a1, "RegisterForChanges", 0, v3);
}

uint64_t sub_10043BF68(void *a1)
{
  result = *(a1[4] + 16);
  if (result)
  {
    return (*(*result + 32))(result, 0, a1[5], a1[6]);
  }

  return result;
}

void sub_10043BFA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10043C024;
  v3[3] = &unk_100AF60F8;
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  sub_100438E50(a1, "RegisterForPlayerChanges", 0, v3);
}

int64_t sub_10043C024(void *a1, int a2, xpc_object_t xdict)
{
  v4 = a1[4];
  if (a2 == 4)
  {
    result = xpc_dictionary_get_int64(xdict, "kPlayerId");
  }

  else
  {
    result = 1;
  }

  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = a1[5];
    v8 = a1[6];
    v9 = *(*v6 + 40);
    v10 = result;
    v11 = *(v4 + 16);

    return v9(v11, v10, 0, 0, v7, v8);
  }

  return result;
}

void sub_10043C0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10043C13C;
  v3[3] = &unk_100AF60F8;
  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  sub_100438E50(a1, "RegisterForChanges", 0, v3);
}

uint64_t sub_10043C13C(void *a1)
{
  result = *(a1[4] + 16);
  if (result)
  {
    return (*(*result + 48))(result, 0, 0, a1[5], a1[6]);
  }

  return result;
}

uint64_t sub_10043C180(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    int64 = xpc_dictionary_get_int64(object, "kMsgStatus");
    value = xpc_dictionary_get_value(object, "kMsgArgs");
  }

  else
  {
    v4 = qword_100BCE930;
    if (os_log_type_enabled(qword_100BCE930, OS_LOG_TYPE_ERROR))
    {
      sub_10082C61C(a1, object, v4);
    }

    value = 0;
    int64 = 3;
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, int64, value);
  }

  return result;
}

uint64_t sub_10043C240(uint64_t a1, char *__s1, void *a3)
{
  if (!strcmp(__s1, "PlayerDidChange"))
  {
    xpc_dictionary_get_int64(a3, "kPlayerId");
    (*(**(a1 + 16) + 32))(*(a1 + 16), 1, 0, 0);
    v7 = *(**(a1 + 16) + 40);

    return v7();
  }

  else
  {
    if (!strcmp(__s1, "PlaybackStateDidChange"))
    {
      xpc_dictionary_get_int64(a3, "kPlaybackState");
      v6 = ***(a1 + 16);

      return v6();
    }

    if (!strcmp(__s1, "TrackDidChange"))
    {
      xpc_dictionary_get_int64(a3, "kUid");
      v6 = *(**(a1 + 16) + 8);

      return v6();
    }

    if (!strcmp(__s1, "SettingsDidChange"))
    {
      v12 = 1;
      v13 = 1;
      sub_100439048(0, a3, &v13, &v12);
      v9 = *(**(a1 + 16) + 16);

      return v9();
    }

    else
    {
      if (strcmp(__s1, "PlaybackQueueDidChange"))
      {
        if (strcmp(__s1, "LibraryDidChange"))
        {
          v11 = sub_10000E92C();
          sub_100693F74(v11, 0);
        }

        v6 = *(**(a1 + 16) + 48);

        return v6();
      }

      v10 = *(**(a1 + 16) + 24);

      return v10();
    }
  }
}

void sub_10043C580(uint64_t a1)
{
  (*(**(a1 + 16) + 48))(*(a1 + 16), 0, 1, 0, 0);

  sub_100438E50(a1, "RegisterForChanges", 0, 0);
}

void *sub_10043C604(void *a1)
{
  *a1 = off_100AF5F50;
  a1[1] = off_100AF6040;
  sub_10032147C((a1 + 3));
  return a1;
}

void sub_10043C66C(void *a1)
{
  *a1 = off_100AF5F50;
  a1[1] = off_100AF6040;
  sub_10032147C((a1 + 3));

  operator delete();
}

uint64_t sub_10043C6F4(uint64_t a1)
{
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
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
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_10043C768(uint64_t *result)
{
  if (result[2])
  {
    v2 = result[1];
    v3 = *(*result + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    result[2] = 0;
    if (v2 != result)
    {
      do
      {
        v5 = *(v2 + 8);
        sub_10043C7CC(result, v2);
        v2 = v5;
      }

      while (v5 != result);
    }
  }
}

void sub_10043C7CC(int a1, void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

uint64_t sub_10043C810(uint64_t a1)
{
  *a1 = off_100AF6188;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_10043C860(uint64_t a1)
{
  *a1 = off_100AF6188;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

uint64_t sub_10043C8D0(uint64_t a1)
{
  v1 = *(a1 + 47);
  if (v1 < 0)
  {
    v1 = *(a1 + 32);
  }

  return (v1 + 31);
}

uint64_t sub_10043C8F0(uint64_t a1, uint64_t a2, __int16 a3)
{
  *a2 = *(a1 + 10);
  *(a2 + 4) = *(a1 + 48);
  *(a2 + 3) = *(a1 + 49);
  *(a2 + 5) = *(a1 + 50);
  *(a2 + 9) = *(a1 + 52);
  *(a2 + 8) = BYTE1(*(a1 + 52));
  *(a2 + 7) = *(a1 + 54);
  *(a2 + 6) = *(a1 + 55);
  *(a2 + 10) = *(a1 + 56);
  *(a2 + 11) = *(a1 + 57);
  *(a2 + 28) = *(a1 + 8);
  *(a2 + 27) = *(a1 + 9);
  v4 = sub_10043C99C(a1, a2 + 29, (a3 - 29));
  *(a2 + 1) = bswap32(v4 + 26) >> 16;
  return (v4 + 29);
}

uint64_t sub_10043C99C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v3 = *(a1 + 47);
  if (v3 < 0)
  {
    LODWORD(v3) = *(a1 + 32);
  }

  if (v3 + 2 <= a3)
  {
    v4 = v3;
  }

  else
  {
    v4 = a3 - 2;
  }

  *a2 = bswap32(v4) >> 16;
  std::string::copy((a1 + 24), (a2 + 2), v4, 0);
  return (v4 + 2);
}

uint64_t sub_10043C9FC(uint64_t a1)
{
  *a1 = off_100AF6188;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_10043CA4C(uint64_t a1)
{
  *a1 = off_100AF6188;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

uint64_t sub_10043CABC(uint64_t a1)
{
  v1 = *(a1 + 47);
  if (v1 < 0)
  {
    v1 = *(a1 + 32);
  }

  return (v1 + 17);
}

uint64_t sub_10043CADC(uint64_t a1, uint64_t a2, __int16 a3)
{
  *a2 = *(a1 + 10);
  *(a2 + 3) = *(a1 + 16);
  *(a2 + 11) = *(a1 + 48);
  *(a2 + 12) = *(a1 + 49);
  *(a2 + 14) = *(a1 + 8);
  *(a2 + 13) = *(a1 + 9);
  v4 = sub_10043C99C(a1, a2 + 15, (a3 - 15));
  *(a2 + 1) = bswap32(v4 + 12) >> 16;
  return (v4 + 15);
}

uint64_t sub_10043CB54(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 106;
  *(a1 + 10) = 3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = &off_100AF61F8;
  *(a1 + 48) = 0;
  sub_10043CD7C((a1 + 56), a2);
  return a1;
}

void sub_10043CBC4(_Unwind_Exception *exception_object)
{
  *v1 = off_100AF6188;
  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10043CC00(uint64_t a1)
{
  sub_10043CE20(a1);

  operator delete();
}

uint64_t sub_10043CC38(uint64_t a1)
{
  v1 = *(a1 + 47);
  if (v1 < 0)
  {
    v1 = *(a1 + 32);
  }

  v2 = v1 + 17;
  for (i = *(a1 + 64); i != a1 + 56; i = *(i + 8))
  {
    v4 = *(i + 16);
    v5 = *(v4 + 31);
    if (v5 < 0)
    {
      v5 = *(v4 + 16);
    }

    v2 += v5 + 8;
  }

  return v2;
}

uint64_t sub_10043CC88(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *a2 = *(a1 + 10);
  *(a2 + 3) = *(a1 + 16);
  *(a2 + 11) = *(a1 + 48);
  *(a2 + 13) = *(a1 + 8);
  *(a2 + 12) = *(a1 + 9);
  v6 = sub_10043C99C(a1, a2 + 14, (a3 - 15));
  v7 = v6 + 15;
  v8 = (v6 + 14);
  *(a2 + v8) = 0;
  v9 = a1 + 56;
  for (i = *(a1 + 64); i != v9; i = *(i + 8))
  {
    v11 = *(i + 16);
    v12 = *(v11 + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v13 = v12 + 8;
    v14 = a3 - v7;
    if (v14 < v13)
    {
      break;
    }

    if (a3 <= v7)
    {
      LOWORD(v14) = 0;
    }

    v15 = sub_10043CEF4(v11, a2 + v7, v14);
    if (!v15)
    {
      break;
    }

    v7 += v15;
    ++*(a2 + v8);
  }

  *(a2 + 1) = bswap32(v7 - 3) >> 16;
  return v7;
}

uint64_t *sub_10043CD7C(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return a1;
}

uint64_t sub_10043CE20(uint64_t a1)
{
  *a1 = &off_100AF61F8;
  v2 = (a1 + 56);
  v3 = *(a1 + 64);
  if (v3 != (a1 + 56))
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        if (*(v4 + 31) < 0)
        {
          operator delete(*(v4 + 8));
        }

        operator delete();
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  sub_100028EB4(v2);
  *a1 = off_100AF6188;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_10043CEF4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 >= 8)
  {
    *(a2 + 3) = *(a1 + 4);
    *(a2 + 2) = BYTE1(*(a1 + 4));
    *(a2 + 1) = *(a1 + 6);
    *a2 = *(a1 + 7);
    *(a2 + 5) = *a1;
    *(a2 + 4) = *(a1 + 1);
    v4 = *(a1 + 31);
    if (v4 < 0)
    {
      LODWORD(v4) = *(a1 + 16);
    }

    if (v4 + 8 <= a3)
    {
      v5 = v4;
    }

    else
    {
      v5 = a3 - 8;
    }

    *(a2 + 6) = bswap32(v5) >> 16;
    std::string::copy((a1 + 8), (a2 + 8), v5, 0);
    return (v5 + 8);
  }

  else
  {
    return 0;
  }
}

void *sub_10043CF9C(uint64_t *a1, uint64_t *a2)
{
  result = sub_100028EB4(a1);
  v5 = a2[2];
  if (v5)
  {
    v7 = *a2;
    v6 = a2[1];
    v8 = *(*a2 + 8);
    v9 = *v6;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a1;
    *(v10 + 8) = v6;
    *v6 = v10;
    *a1 = v7;
    *(v7 + 8) = a1;
    a1[2] += v5;
    a2[2] = 0;
  }

  return result;
}

void sub_10043D048(id a1)
{
  v1 = objc_alloc_init(AudioDeviceManager);
  v2 = qword_100B6D8D8;
  qword_100B6D8D8 = v1;
}

void sub_10043D65C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a18);
  _Unwind_Resume(a1);
}

void sub_10043D99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10043DC8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10043DFAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10043E1FC(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = 0;
  result = *sub_100044BC4(a1, &v6, a2);
  if (!result)
  {
    sub_10043E2A0();
  }

  return result;
}

void sub_10043E33C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001132FC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_10043E358(uint64_t **a1, uint64_t a2)
{
  v3 = sub_10000EEB8(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_100079DEC(a1, v3);
  return 1;
}

uint64_t sub_10043E3A0(uint64_t a1)
{
  *a1 = off_100AF6290;
  *(a1 + 8) = &off_100AF66A0;
  *(a1 + 16) = off_100AF66B8;
  *(a1 + 24) = &off_100AF66F8;
  *(a1 + 32) = off_100AF6710;
  *(a1 + 40) = off_100AF6740;
  *(a1 + 48) = off_100AF67A0;
  *(a1 + 56) = &off_100AF67D0;
  *(a1 + 64) = off_100AF67E8;
  *(a1 + 72) = &off_100AF68A8;
  *(a1 + 80) = off_100AF68C0;
  *(a1 + 96) = 0u;
  *(a1 + 132) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  sub_100044BBC((a1 + 176));
  sub_100044BBC((a1 + 240));
  *(a1 + 392) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0;
  *(a1 + 384) = a1 + 392;
  *(a1 + 416) = 0u;
  *(a1 + 408) = a1 + 416;
  *(a1 + 440) = 0u;
  *(a1 + 432) = a1 + 440;
  *(a1 + 456) = 0;
  *(a1 + 480) = 0u;
  *(a1 + 464) = 0;
  *(a1 + 472) = a1 + 480;
  *(a1 + 504) = 0u;
  *(a1 + 496) = a1 + 504;
  *(a1 + 548) = 0;
  *(a1 + 552) = 0;
  *(a1 + 531) = 0;
  *(a1 + 528) = 0;
  *(a1 + 536) = 0;
  *(a1 + 544) = 0;
  *(a1 + 570) = 0;
  *(a1 + 556) = 0u;
  *(a1 + 578) = 1;
  *(a1 + 580) = -1;
  *(a1 + 584) = 0;
  *(a1 + 592) = 0;
  *(a1 + 596) = 0;
  *(a1 + 608) = 0;
  *(a1 + 612) = 0;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 1065353216;
  *(a1 + 664) = 0u;
  *(a1 + 656) = a1 + 664;
  *(a1 + 704) = 0;
  *(a1 + 688) = 0u;
  *(a1 + 984) = 0;
  *(a1 + 1000) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 992) = a1 + 1000;
  *(a1 + 1024) = 0u;
  *(a1 + 1016) = a1 + 1024;
  *(a1 + 1048) = 0u;
  *(a1 + 1040) = a1 + 1048;
  *(a1 + 1072) = 0u;
  *(a1 + 1064) = a1 + 1072;
  return a1;
}

void sub_10043E668(_Unwind_Exception *a1)
{
  sub_10007A068(v1 + 176);

  _Unwind_Resume(a1);
}

void sub_10043E690(uint64_t a1, uint64_t a2)
{
  if (sub_100011690(a1, a2))
  {
    if (qword_100B508F0 != -1)
    {
      sub_10082C960();
    }

    sub_1000F0D9C(off_100B508E8 + 240, a1 + 32);
    if (qword_100B50F88 != -1)
    {
      sub_10082C974();
    }

    sub_1006DC960(off_100B50F80, a1 + 16);
    if (qword_100B50AC0 != -1)
    {
      sub_10082C988();
    }

    sub_1005907D4(off_100B50AB8, a1 + 24);
    if (qword_100B50910 != -1)
    {
      sub_10082C99C();
    }

    sub_1005BB5D4(off_100B50908, a1 + 40);
    if (qword_100B50AA0 != -1)
    {
      sub_10082C9B0();
    }

    sub_100312650(off_100B50A98 + 64, a1 + 48);
    if (qword_100B508C0 != -1)
    {
      sub_10082C9C4();
    }

    sub_1007BF384(off_100B508B8, a1 + 80);
    if (qword_100B508B0 != -1)
    {
      sub_10082C9D8();
    }

    sub_100749B80(off_100B508A8, a1 + 64, 0);
    if (qword_100B54398 != -1)
    {
      sub_10082C9EC();
    }

    sub_100603290(off_100B54390, a1 + 8);
    v3 = sub_100017E6C();
    sub_10047EF68(v3 + 1304, a1 + 56);
    v4 = sub_100017E6C();
    sub_100312B50(v4 + 304, a1 + 72);
    v5 = objc_alloc_init(NSMutableDictionary);
    v6 = *(a1 + 304);
    *(a1 + 304) = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = *(a1 + 312);
    *(a1 + 312) = v7;

    v9 = objc_alloc_init(NSMutableArray);
    v10 = *(a1 + 328);
    *(a1 + 328) = v9;

    v11 = objc_alloc_init(NSMutableDictionary);
    v12 = *(a1 + 336);
    *(a1 + 336) = v11;

    v13 = objc_alloc_init(NSMutableArray);
    v14 = *(a1 + 344);
    *(a1 + 344) = v13;

    v15 = objc_opt_new();
    v16 = *(a1 + 984);
    *(a1 + 984) = v15;

    v17 = objc_alloc_init(NSMutableDictionary);
    v18 = *(a1 + 352);
    *(a1 + 352) = v17;

    v19 = objc_alloc_init(NSMutableDictionary);
    v20 = *(a1 + 360);
    *(a1 + 360) = v19;

    v21 = objc_alloc_init(NSMutableDictionary);
    v22 = *(a1 + 368);
    *(a1 + 368) = v21;

    v23 = objc_alloc_init(NSMutableArray);
    v24 = *(a1 + 376);
    *(a1 + 376) = v23;

    sub_10047F88C(a1 + 384, *(a1 + 392));
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
    *(a1 + 384) = a1 + 392;
    v25 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(v25, XPC_ACTIVITY_REPEATING, 1);
    xpc_dictionary_set_int64(v25, XPC_ACTIVITY_DELAY, XPC_ACTIVITY_INTERVAL_1_DAY);
    xpc_dictionary_set_int64(v25, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_1_MIN);
    xpc_dictionary_set_string(v25, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_UTILITY);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10043EAFC;
    handler[3] = &unk_100AF68D8;
    handler[4] = a1;
    xpc_activity_register(off_100B54388, v25, handler);
    sub_10043ED34(a1);
    *(a1 + 681) = 0;
    *(a1 + 684) = 0;
    v26 = sub_10043EFD4();
    *(a1 + 682) = v26;
    *(a1 + 1088) = 0;
    *(a1 + 792) = 0u;
    *(a1 + 808) = 0u;
    *(a1 + 824) = 0u;
    *(a1 + 840) = 0u;
    *(a1 + 856) = 0u;
    *(a1 + 872) = 0u;
    *(a1 + 888) = 0u;
    *(a1 + 904) = 0u;
    *(a1 + 920) = 0u;
    *(a1 + 936) = 0u;
    *(a1 + 952) = 0u;
    *(a1 + 964) = 0u;
    if (sub_1000E59A0(v26, v27))
    {
      v28 = BiomeLibrary();
      v29 = [v28 Device];
      v30 = [v29 Wireless];
      v31 = [v30 Bluetooth];
      v32 = *(a1 + 728);
      *(a1 + 728) = v31;
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10082C924();
  }
}

void sub_10043EB04(void *a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending all day metrics to CoreAnalytics", v24, 2u);
  }

  sub_10047385C(a1);
  sub_1004746B4(a1, v3);
  sub_1004706C8(a1, v4);
  v7 = *sub_10000C798(v5, v6);
  v8 = (*(v7 + 384))();
  if ((v8 & 1) != 0 || (v10 = sub_10000C798(v8, v9), v8 = (*(*v10 + 408))(v10), v8))
  {
    sub_1004474D0(v8, v9);
  }

  if (qword_100B51078 != -1)
  {
    sub_10082CA00();
  }

  sub_1007B1248(off_100B51070);
  if (qword_100B512F8 != -1)
  {
    sub_10082CA28();
  }

  sub_1003BF098(off_100B512F0);
  v12 = a1[12];
  if (v12)
  {
    (*(v12 + 16))();
  }

  sub_100474730(a1, v11);
  sub_1004747AC(a1, v13);
  sub_100474828(a1, v14);
  sub_1004748A4(a1, v15);
  sub_100474920(a1, v16);
  sub_10047499C(a1, v17);
  sub_100474A18(a1, v18);
  sub_100474A94(a1, v19);
  (*(*a1 + 688))(a1);
  sub_100474B10(a1, v20);
  (*(*a1 + 776))(a1);
  sub_100474B8C(a1, v21);
  sub_100474C08(a1, v22);
  sub_100474C84(a1, v23);
}

void sub_10043ED34(uint64_t a1)
{
  v10 = 90;
  v2 = sub_10000E92C();
  sub_100007E30(v8, "HID");
  sub_100007E30(&__p, "HIDLatencyAnomalyThreshold");
  v3 = (*(*v2 + 128))(v2, v8, &__p, &v10);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_8:
    v10 = 90;
    goto LABEL_9;
  }

  if ((v3 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v10 <= 7)
  {
    *(a1 + 680) = 0;
    goto LABEL_11;
  }

  if (v10 <= 0xB)
  {
    v4 = 1;
    goto LABEL_10;
  }

  if (v10 <= 0xF)
  {
    v4 = 2;
    goto LABEL_10;
  }

  if (v10 <= 0x16)
  {
    v4 = 3;
    goto LABEL_10;
  }

  if (v10 <= 0x1E)
  {
    v4 = 4;
    goto LABEL_10;
  }

  if (v10 <= 0x2D)
  {
    v4 = 5;
    goto LABEL_10;
  }

  if (v10 <= 0x3C)
  {
    v4 = 6;
    goto LABEL_10;
  }

  if (v10 > 0x5A)
  {
    if (v10 > 0x78)
    {
      if (v10 > 0x96)
      {
        if (v10 > 0x1F4)
        {
          if (v10 > 0x2EE)
          {
            v4 = 12;
          }

          else
          {
            v4 = 11;
          }
        }

        else
        {
          v4 = 10;
        }
      }

      else
      {
        v4 = 9;
      }
    }

    else
    {
      v4 = 8;
    }

    goto LABEL_10;
  }

LABEL_9:
  v4 = 7;
LABEL_10:
  *(a1 + 680) = v4;
LABEL_11:
  v5 = qword_100BCE8D8;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 680);
    sub_100479FE8(v6, v8);
    if (v9 >= 0)
    {
      v7 = v8;
    }

    else
    {
      v7 = v8[0];
    }

    LODWORD(__p) = 67109378;
    HIDWORD(__p) = v6;
    v12 = 2080;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "HID latency anomaly threshold bin index is %d for %s", &__p, 0x12u);
    if (v9 < 0)
    {
      operator delete(v8[0]);
    }
  }
}

uint64_t sub_10043EFD4()
{
  valuePtr = 0;
  v0 = CFPreferencesCopyAppValue(@"BTPowerStateMonitorNumOfDays", @"com.apple.BTServer");
  if (v0)
  {
    v1 = v0;
    CFNumberGetValue(v0, kCFNumberCharType, &valuePtr);
    CFRelease(v1);
  }

  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v6 = valuePtr;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "readBTPowerStateMonitorNumOfDays : numOfDays = %d", buf, 8u);
  }

  return valuePtr;
}

uint64_t sub_10043F0B4(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Registering for Core Time Change Notification", buf, 2u);
  }

  v3 = qword_100BCE8D8;
  v4 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    v6 = *(a1 + 578);
    *buf = 67109120;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Core Time Initial AutoDateTimeEnabled: %d", buf, 8u);
  }

  v7 = *(sub_100066098(v4, v5) + 8);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10043F208;
  handler[3] = &unk_100AF0BA0;
  handler[4] = a1;
  return notify_register_dispatch("SignificantTimeChangeNotification", (a1 + 580), v7, handler);
}

void sub_10043F208(uint64_t a1)
{
  v1 = *(a1 + 32);
  *(v1 + 578) = TMIsAutomaticTimeEnabled() != 0;
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 578);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Core Time Changed: AutoDateTimeEnabled: %d", v4, 8u);
  }
}

uint64_t sub_10043F2C4(uint64_t a1, uint64_t a2)
{
  memset(v9, 0, 320);
  v3 = sub_10047F208(v9, a2);
  v5 = sub_100066098(v3, v4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_10043F3FC;
  v7[3] = &unk_100AF68F8;
  v7[4] = a1;
  sub_10047F208(v8, v9);
  sub_10000CA94(v5, v7);
  sub_1000E3D14(v8);
  return sub_1000E3D14(v9);
}

void sub_10043F3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  sub_1000E3D14(v54 + 40);
  sub_1000E3D14(va);
  _Unwind_Resume(a1);
}

void sub_10043F3FC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v61[0] = 0;
  v61[1] = 0;
  v62 = 0;
  sub_10039B6BC(v2 + 320, (a1 + 40), 3);
  v59[0] = 0;
  v59[1] = 0;
  v60 = 0;
  sub_10039B6BC(v2 + 320, (a1 + 104), 8);
  v57[0] = 0;
  v57[1] = 0;
  v58 = 0;
  sub_10039B6BC(v2 + 320, (a1 + 112), 8);
  v55[0] = 0;
  v55[1] = 0;
  v56 = 0;
  sub_10039B6BC(v2 + 320, (a1 + 288), 20);
  __p[0] = 0;
  __p[1] = 0;
  v54 = 0;
  sub_10039B6BC(v2 + 320, (a1 + 308), 20);
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSString stringWithUTF8String:v61];
  [v3 setObject:v4 forKey:@"oui"];

  v5 = [NSNumber numberWithUnsignedChar:*(a1 + 43)];
  [v3 setObject:v5 forKey:@"isHIDServicePresent"];

  v6 = [NSNumber numberWithUnsignedShort:*(a1 + 44)];
  [v3 setObject:v6 forKey:@"chipsetManufacturerName"];

  v7 = [NSNumber numberWithUnsignedShort:*(a1 + 46)];
  [v3 setObject:v7 forKey:@"lmpSubVersion"];

  v8 = [NSNumber numberWithUnsignedChar:*(a1 + 48)];
  [v3 setObject:v8 forKey:@"lmpVersion"];

  v9 = [NSNumber numberWithUnsignedShort:*(a1 + 50)];
  [v3 setObject:v9 forKey:@"gATTVersion"];

  v10 = [NSNumber numberWithUnsignedShort:*(a1 + 52)];
  [v3 setObject:v10 forKey:@"wIAPVersion"];

  v11 = [NSNumber numberWithUnsignedShort:*(a1 + 54)];
  [v3 setObject:v11 forKey:@"mapProfileVersion"];

  v12 = [NSNumber numberWithUnsignedShort:*(a1 + 56)];
  [v3 setObject:v12 forKey:@"handsfreeVersion"];

  v13 = [NSNumber numberWithUnsignedShort:*(a1 + 58)];
  [v3 setObject:v13 forKey:@"handsfreeFeatures"];

  v14 = [NSNumber numberWithUnsignedShort:*(a1 + 60)];
  [v3 setObject:v14 forKey:@"a2DPVersion"];

  v15 = [NSNumber numberWithUnsignedShort:*(a1 + 62)];
  [v3 setObject:v15 forKey:@"a2DPFeatures"];

  v16 = [NSNumber numberWithUnsignedShort:*(a1 + 64)];
  [v3 setObject:v16 forKey:@"aVRCPVersion"];

  v17 = [NSNumber numberWithUnsignedShort:*(a1 + 66)];
  [v3 setObject:v17 forKey:@"aVRCPFeatures"];

  v18 = [NSNumber numberWithUnsignedShort:*(a1 + 68)];
  [v3 setObject:v18 forKey:@"pNPVersion"];

  v19 = [NSNumber numberWithUnsignedShort:*(a1 + 70)];
  [v3 setObject:v19 forKey:@"obexObjectPushVersion"];

  v20 = [NSNumber numberWithUnsignedShort:*(a1 + 72)];
  [v3 setObject:v20 forKey:@"serialPortVersion"];

  v21 = [NSNumber numberWithUnsignedShort:*(a1 + 74)];
  [v3 setObject:v21 forKey:@"hIDVersion"];

  v22 = [NSNumber numberWithUnsignedShort:*(a1 + 76)];
  [v3 setObject:v22 forKey:@"aVDTPVersion"];

  v23 = [NSNumber numberWithUnsignedShort:*(a1 + 78)];
  [v3 setObject:v23 forKey:@"aVCTPVersion"];

  v24 = [NSNumber numberWithUnsignedInt:*(a1 + 80)];
  [v3 setObject:v24 forKey:@"vendorIDSource"];

  v25 = [NSNumber numberWithUnsignedInt:*(a1 + 84)];
  [v3 setObject:v25 forKey:@"vendorID"];

  v26 = [NSNumber numberWithUnsignedInt:*(a1 + 88)];
  [v3 setObject:v26 forKey:@"productID"];

  v27 = [NSNumber numberWithUnsignedInt:*(a1 + 92)];
  [v3 setObject:v27 forKey:@"version"];

  v28 = [NSNumber numberWithUnsignedInt:*(a1 + 96)];
  [v3 setObject:v28 forKey:@"fwVersion"];

  v29 = [NSNumber numberWithUnsignedInt:*(a1 + 100)];
  [v3 setObject:v29 forKey:@"classOfDevice"];

  v30 = [NSString stringWithUTF8String:v59];
  [v3 setObject:v30 forKey:@"linkLayerRemoteSupportedFeatures"];

  v31 = [NSString stringWithUTF8String:v57];
  [v3 setObject:v31 forKey:@"classicExtendedFeaturesPage1"];

  v32 = (a1 + 120);
  if (*(a1 + 143) < 0)
  {
    v32 = *v32;
  }

  v33 = [NSString stringWithUTF8String:v32];
  [v3 setObject:v33 forKey:@"bundleID"];

  v34 = (a1 + 144);
  if (*(a1 + 167) < 0)
  {
    v34 = *v34;
  }

  v35 = [NSString stringWithUTF8String:v34];
  [v3 setObject:v35 forKey:@"disManufacturerNameString"];

  v36 = (a1 + 168);
  if (*(a1 + 191) < 0)
  {
    v36 = *v36;
  }

  v37 = [NSString stringWithUTF8String:v36];
  [v3 setObject:v37 forKey:@"disModelNumberString"];

  v38 = (a1 + 192);
  if (*(a1 + 215) < 0)
  {
    v38 = *v38;
  }

  v39 = [NSString stringWithUTF8String:v38];
  [v3 setObject:v39 forKey:@"carVendorName"];

  v40 = (a1 + 216);
  if (*(a1 + 239) < 0)
  {
    v40 = *v40;
  }

  v41 = [NSString stringWithUTF8String:v40];
  [v3 setObject:v41 forKey:@"disHardwareRevisionString"];

  v42 = (a1 + 240);
  if (*(a1 + 263) < 0)
  {
    v42 = *v42;
  }

  v43 = [NSString stringWithUTF8String:v42];
  [v3 setObject:v43 forKey:@"disFirmwareRevisionString"];

  v44 = (a1 + 264);
  if (*(a1 + 287) < 0)
  {
    v44 = *v44;
  }

  v45 = [NSString stringWithUTF8String:v44];
  [v3 setObject:v45 forKey:@"disSoftwareRevisionString"];

  if (v56 >= 0)
  {
    v46 = v55;
  }

  else
  {
    v46 = v55[0];
  }

  v47 = [NSString stringWithUTF8String:v46];
  [v3 setObject:v47 forKey:@"primaryHash"];

  if (v54 >= 0)
  {
    v48 = __p;
  }

  else
  {
    v48 = __p[0];
  }

  v49 = [NSString stringWithUTF8String:v48];
  [v3 setObject:v49 forKey:@"secondaryHash"];

  v50 = (a1 + 328);
  if (*(a1 + 351) < 0)
  {
    if (!*(a1 + 336))
    {
      goto LABEL_27;
    }

    v50 = *v50;
    goto LABEL_26;
  }

  if (*(a1 + 351))
  {
LABEL_26:
    v51 = [NSString stringWithUTF8String:v50];
    [v3 setObject:v51 forKey:@"friendlyName"];
  }

LABEL_27:
  v52 = [NSNumber numberWithUnsignedChar:*(a1 + 352)];
  [v3 setObject:v52 forKey:@"isGHSServicePresent"];

  sub_10003BA40(v2, 51, v3);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v56) < 0)
  {
    operator delete(v55[0]);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(v57[0]);
  }

  if (SHIBYTE(v60) < 0)
  {
    operator delete(v59[0]);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61[0]);
  }
}

void sub_10043FCB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v35 - 49) < 0)
  {
    operator delete(*(v35 - 72));
  }

  _Unwind_Resume(a1);
}

void sub_10043FDFC(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKey:@"CBWHBMetricsKeyEventType"];
  v4 = v3;
  if (v3)
  {
    if ([v3 isEqualToString:@"RSSILevelEvent"])
    {
      v5 = 136;
    }

    else if ([v4 isEqualToString:@"CoexUpdateEvent"])
    {
      v5 = 135;
    }

    else
    {
      if (![v4 isEqualToString:@"WhbStateEvent"])
      {
        goto LABEL_9;
      }

      v5 = 137;
    }

    sub_10003BA40(a1, v5, v6);
  }

LABEL_9:
}

void sub_10043FEE4(uint64_t a1, unsigned __int16 *a2)
{
  v29 = 0;
  v30 = 0;
  v3 = @"No Sync";
  if (a2[4] == 1)
  {
    v3 = @"NACK or CRC";
  }

  if (a2[4])
  {
    v4 = v3;
  }

  else
  {
    v4 = @"No ReTx";
  }

  if (*(a2 + 44) == 1)
  {
    v28 = 0;
    sub_1000216B4(&v28);
    v5 = sub_1000ABB80(*a2);
    sub_100022214(&v28);
    if (qword_100B508B0 != -1)
    {
      sub_10082CA50();
    }

    v6 = sub_1000ACEE4(off_100B508A8, v5);
    if (v6)
    {
      if (qword_100B508B0 != -1)
      {
        sub_10082CA50();
      }

      v7 = off_100B508A8;
      sub_10004DFB4(v33, v6);
      v8 = sub_10074F458(v7, v33);
      if (qword_100B508D0 != -1)
      {
        sub_10082CA78();
      }

      v9 = sub_10078F7A8(off_100B508C8, v6);
      v10 = v9;
      if (v9 && [v9 length] >= 5)
      {
        v11 = v10;
        v12 = [v10 bytes];
        HIDWORD(v30) = *v12;
        LODWORD(v30) = *(v12 + 1);
        LODWORD(v29) = *(v12 + 3);
      }

      if (qword_100B508D0 != -1)
      {
        sub_10082CA78();
      }

      v13 = sub_100788D8C(off_100B508C8, v6);
      v27 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", sub_10002A744(v13), +[NSString defaultCStringEncoding]);
    }

    else
    {
      v8 = 0;
      v27 = @"Unspecified";
    }

    sub_10002249C(&v28);
  }

  else
  {
    v14 = *(a2 + 6);
    if (v14)
    {
      sub_1000C2364(v14, &v30 + 1, &v30, &v29, &v29 + 1);
    }

    v8 = 0;
    v27 = @"Unspecified";
  }

  v31[0] = @"AvgRSSI";
  v15 = [NSNumber numberWithShort:a2[2]];
  v32[0] = v15;
  v31[1] = @"AvgSNR";
  v16 = [NSNumber numberWithShort:a2[3]];
  v32[1] = v16;
  v31[2] = @"AvgPacketType";
  if (*(a2 + 39) >= 0)
  {
    v17 = a2 + 8;
  }

  else
  {
    v17 = *(a2 + 2);
  }

  v18 = [NSString stringWithUTF8String:v17];
  v32[2] = v18;
  v32[3] = v4;
  v31[3] = @"ReTxReason";
  v31[4] = @"IsLEDevice";
  v19 = [NSNumber numberWithBool:*(a2 + 44)];
  v32[4] = v19;
  v31[5] = @"PeripheralLatency";
  v20 = [NSNumber numberWithUnsignedShort:v8];
  v32[5] = v20;
  v31[6] = @"PID";
  v21 = [NSNumber numberWithUnsignedInt:v29];
  v32[6] = v21;
  v31[7] = @"VID";
  v22 = [NSNumber numberWithUnsignedInt:v30];
  v32[7] = v22;
  v31[8] = @"Version";
  v23 = [NSNumber numberWithUnsignedInt:HIDWORD(v29)];
  v32[8] = v23;
  v31[9] = @"VIDSource";
  v24 = [NSNumber numberWithUnsignedInt:HIDWORD(v30)];
  v31[10] = @"LEDeviceUseCase";
  v32[9] = v24;
  v32[10] = v27;
  v25 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:11];

  sub_10003BA40(a1, 79, v25);
}

void sub_100440310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_10002249C(&a15);

  _Unwind_Resume(a1);
}

uint64_t sub_1004403F4(uint64_t result)
{
  if (*(result + 40) == 655360)
  {
    v1 = *(result + 32);
    ++*(v1 + 696);
    if ((*(result + 44) & 1) == 0)
    {
      ++*(v1 + 704);
    }
  }

  return result;
}

void sub_10044042C(uint64_t a1, void *a2, int a3, uint64_t a4, uint64_t a5, void *a6, int a7)
{
  v10 = a4;
  v12 = a2;
  v13 = a6;
  v14 = v13;
  if ((v10 - 9) <= 0xFFFFFFF7)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10082CAC8();
    }

    goto LABEL_48;
  }

  if (v12 && a5 && v13)
  {
    v15 = v10 * a3;
    if (!(v10 * a3))
    {
      goto LABEL_48;
    }

    v16 = 0;
    while (1)
    {
      if (v10 > 4)
      {
        if (v10 > 6)
        {
          if (v10 == 7)
          {
            v17 = *(a5 + v16) | (*(a5 + v16 + 4) << 32) | (*(a5 + v16 + 5) << 40) | (*(a5 + v16 + 6) << 48);
            if (!a7)
            {
              goto LABEL_43;
            }
          }

          else
          {
            if (v10 != 8)
            {
LABEL_35:
              v20 = [NSString stringWithFormat:@"%@_%u", v12, v16 / v10];
              [v14 setObject:&off_100B33858 forKey:v20];
              goto LABEL_44;
            }

            v17 = *(a5 + v16);
            if (!a7)
            {
LABEL_43:
              [NSNumber numberWithUnsignedLongLong:v17];
              goto LABEL_34;
            }
          }
        }

        else if (v10 == 5)
        {
          v17 = *(a5 + v16) | (*(a5 + v16 + 4) << 32);
          if (!a7)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v17 = *(a5 + v16) | (*(a5 + v16 + 4) << 32) | (*(a5 + v16 + 5) << 40);
          if (!a7)
          {
            goto LABEL_43;
          }
        }

        [NSNumber numberWithLongLong:v17];
      }

      else if (v10 > 2)
      {
        if (v10 == 3)
        {
          v18 = *(a5 + v16) | (*(a5 + v16 + 2) << 16);
          if (!a7)
          {
LABEL_38:
            [NSNumber numberWithUnsignedInt:v18];
            goto LABEL_34;
          }
        }

        else
        {
          v18 = *(a5 + v16);
          if (!a7)
          {
            goto LABEL_38;
          }
        }

        [NSNumber numberWithInt:v18];
      }

      else if (v10 == 1)
      {
        v19 = *(a5 + v16);
        if (a7)
        {
          [NSNumber numberWithChar:v19];
        }

        else
        {
          [NSNumber numberWithUnsignedChar:v19];
        }
      }

      else
      {
        if (v10 != 2)
        {
          goto LABEL_35;
        }

        if (a7)
        {
          [NSNumber numberWithShort:*(a5 + v16)];
        }

        else
        {
          [NSNumber numberWithUnsignedShort:*(a5 + v16)];
        }
      }

      v20 = LABEL_34:;
      v21 = [NSString stringWithFormat:@"%@_%u", v12, v16 / v10];
      [v14 setObject:v20 forKey:v21];

LABEL_44:
      v16 += v10;
      if (v16 >= v15)
      {
        goto LABEL_48;
      }
    }
  }

  v22 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v24 = v12;
    v25 = 2048;
    v26 = a5;
    v27 = 2112;
    v28 = v14;
    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "addExpandedArrayToDictionary: Invalid parameters. arrayName: %@, array: %p, dict: %@", buf, 0x20u);
  }

LABEL_48:
}

void sub_100440BF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *(a2 + 8);
  v34 = *(a2 + 28);
  v35 = *(a2 + 44);
  v36[0] = *(a2 + 60);
  *(v36 + 12) = *(a2 + 72);
  v33 = *(a2 + 12);
  v4 = *(a2 + 88);
  v31 = *(a2 + 96);
  v32 = *(a2 + 112);
  v5 = v3 - v2;
  if (v2 - 1 >= 0x3B)
  {
    if (v2)
    {
      v6 = vcvtad_u64_f64(v2 / 60.0);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  if (v5 - 1 >= 0x3B)
  {
    if (v3 == v2)
    {
      v7 = 0;
    }

    else
    {
      v7 = vcvtad_u64_f64(v5 / 60.0);
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = *(a2 + 116);
  if (v3 - 1 < 0x3B)
  {
    v9 = 1;
LABEL_15:
    v10 = v8 / v9;
    goto LABEL_18;
  }

  if (v3)
  {
    v9 = vcvtad_u64_f64(v3 / 60.0);
    if (v9)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
LABEL_18:
  v11 = *(a2 + 120);
  if (v6)
  {
    v4 = v7 / v6;
  }

  v12 = sub_100066098(a1, a2);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v19 = v34;
  v20 = v35;
  *v21 = v36[0];
  *&v21[12] = *(v36 + 12);
  v14[2] = sub_100440E20;
  v14[3] = &unk_100AF6928;
  v14[4] = a1;
  v15 = v3 - v2;
  v16 = v2;
  v17 = v3;
  v18 = v33;
  v22 = v4;
  v23 = v31;
  v24 = v32;
  v25 = v8;
  v26 = v11;
  v27 = v10;
  v28 = v9;
  v29 = v6;
  v30 = v7;
  sub_10000CA94(v12, v14);
}

void sub_100440E20(uint64_t a1)
{
  v12 = *(a1 + 32);
  v17[0] = @"AccessoryPID";
  v16 = [NSNumber numberWithUnsignedInt:*(a1 + 152)];
  v18[0] = v16;
  v17[1] = @"AoSCategory";
  v15 = [NSNumber numberWithUnsignedInt:*(a1 + 164)];
  v18[1] = v15;
  v17[2] = @"EndReason";
  v14 = [NSNumber numberWithUnsignedInt:*(a1 + 160)];
  v18[2] = v14;
  v17[3] = @"EndRetx";
  v13 = [NSNumber numberWithLongLong:*(a1 + 112)];
  v18[3] = v13;
  v17[4] = @"EndRSSI";
  v2 = [NSNumber numberWithLongLong:*(a1 + 120)];
  v18[4] = v2;
  v17[5] = @"GlitchesPerMin";
  v3 = [NSNumber numberWithUnsignedInt:*(a1 + 168)];
  v18[5] = v3;
  v17[6] = @"ISMvsUBORatio";
  v4 = [NSNumber numberWithDouble:*(a1 + 128)];
  v18[6] = v4;
  v17[7] = @"StartDelay";
  v5 = [NSNumber numberWithDouble:*(a1 + 144)];
  v18[7] = v5;
  v17[8] = @"StartRetx";
  v6 = [NSNumber numberWithLongLong:*(a1 + 96)];
  v18[8] = v6;
  v17[9] = @"StartRSSI";
  v7 = [NSNumber numberWithLongLong:*(a1 + 104)];
  v18[9] = v7;
  v17[10] = @"TotalDuration";
  v8 = [NSNumber numberWithUnsignedInt:*(a1 + 172)];
  v18[10] = v8;
  v17[11] = @"5GDuration";
  v9 = [NSNumber numberWithUnsignedInt:*(a1 + 176)];
  v18[11] = v9;
  v17[12] = @"2GDuration";
  v10 = [NSNumber numberWithUnsignedInt:*(a1 + 180)];
  v18[12] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:13];

  sub_10003BA40(v12, 7, v11);
}

void sub_1004411B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  v219 = 0;
  v218 = 0;
  if (v3)
  {
    sub_1000C2364(v3, &v219 + 1, &v219, &v218, &v218 + 1);
  }

  memset(&v217, 0, sizeof(v217));
  sub_100007E30(&v217, "");
  v5 = *(a2 + 108);
  v6 = *(a2 + 24);
  v215 = 0;
  __src = 0;
  v216 = 0;
  v212 = 0;
  v211 = 0;
  v213 = 0;
  v8 = *(a2 + 128);
  v7 = *(a2 + 136);
  if (!v3)
  {
    v198 = 0;
    v203 = @"Unknown";
    goto LABEL_17;
  }

  sub_1000DEEA4(v3, __p);
  sub_100442EF0(__p, &__str);
  std::string::operator=(&v217, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (v210 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v217.__r_.__value_.__l.__size_)
    {
      v9 = v217.__r_.__value_.__r.__words[0];
      goto LABEL_14;
    }

LABEL_15:
    v203 = @"Unknown";
    goto LABEL_16;
  }

  if (!*(&v217.__r_.__value_.__s + 23))
  {
    goto LABEL_15;
  }

  v9 = &v217;
LABEL_14:
  v203 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", v9, +[NSString defaultCStringEncoding]);
LABEL_16:
  v198 = sub_100537B8C(v3);
LABEL_17:
  v207 = v5;
  v10 = *(a2 + 328);
  v11 = *(a2 + 336);
  if (v10 == v11)
  {
    v24 = v212;
  }

  else
  {
    do
    {
      v12 = **v10;
      v13 = v215;
      if (v215 >= v216)
      {
        v15 = __src;
        v16 = v215 - __src;
        v17 = (v215 - __src) >> 2;
        v18 = v17 + 1;
        if ((v17 + 1) >> 62)
        {
          sub_1000C7698();
        }

        v19 = v216 - __src;
        if ((v216 - __src) >> 1 > v18)
        {
          v18 = v19 >> 1;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v20 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          sub_10036F560(&__src, v20);
        }

        *(4 * v17) = v12;
        v14 = 4 * v17 + 4;
        memcpy(0, v15, v16);
        v21 = __src;
        __src = 0;
        v215 = v14;
        v216 = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v215 = v12;
        v14 = (v13 + 4);
      }

      v215 = v14;
      v22 = *(*v10 + 8);
      v23 = v212;
      if (v212 >= v213)
      {
        v25 = v211;
        v26 = v212 - v211;
        v27 = (v212 - v211) >> 2;
        v28 = v27 + 1;
        if ((v27 + 1) >> 62)
        {
          sub_1000C7698();
        }

        v29 = v213 - v211;
        if ((v213 - v211) >> 1 > v28)
        {
          v28 = v29 >> 1;
        }

        if (v29 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v30 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v28;
        }

        if (v30)
        {
          sub_10036F560(&v211, v30);
        }

        *(4 * v27) = v22;
        v24 = (4 * v27 + 4);
        memcpy(0, v25, v26);
        v31 = v211;
        v211 = 0;
        v212 = v24;
        v213 = 0;
        if (v31)
        {
          operator delete(v31);
        }
      }

      else
      {
        *v212 = v22;
        v24 = v23 + 1;
      }

      v212 = v24;
      ++v10;
    }

    while (v10 != v11);
  }

  if (v211 == v24)
  {
    v36 = 0;
    v32 = 0;
    v39 = v207;
  }

  else
  {
    LODWORD(v32) = 0;
    v33 = v211;
    do
    {
      v35 = *v33++;
      v34 = v35;
      if (v35 <= 0xFFFFFF9B)
      {
        v32 = v32;
      }

      else
      {
        v32 = v34;
      }
    }

    while (v33 != v24);
    v36 = *(a2 + 316) - ((v24 - v211) >> 2);
    v37 = qword_100BCE8D8;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = *(a2 + 316);
      LODWORD(__str.__r_.__value_.__l.__data_) = 67109632;
      HIDWORD(__str.__r_.__value_.__r.__words[0]) = v36;
      LOWORD(__str.__r_.__value_.__r.__words[1]) = 1024;
      *(&__str.__r_.__value_.__r.__words[1] + 2) = v38;
      HIWORD(__str.__r_.__value_.__r.__words[1]) = 2048;
      __str.__r_.__value_.__r.__words[2] = (v212 - v211) >> 2;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "TotalFrameDropped calculation: totalFrameDropped = %d, a2dpMetric.fTotalPurgeCount = %u, rssiAtSkip.size() = %lu", &__str, 0x18u);
    }

    v39 = v207;
  }

  if (__src == v215)
  {
    v41 = 0;
    v40 = 0;
    goto LABEL_63;
  }

  v40 = *(v215 - 1);
  if (v40 - 1 >= 0x3B)
  {
    if (v40)
    {
      v4 = v40 / 60.0;
      v41 = vcvtad_u64_f64(v4);
      goto LABEL_61;
    }

    v41 = 0;
LABEL_63:
    v42 = 0;
    goto LABEL_64;
  }

  v41 = 1;
LABEL_61:
  v42 = (v36 & ~(v36 >> 31)) / v40;
LABEL_64:
  v43 = *(a2 + 248);
  v44 = v40 - v43;
  if (v40 != v43 && v43)
  {
    v4 = v44 / v43;
    *(a2 + 240) = v4;
  }

  v45 = v44 - 1 < 0x3B;
  if (v44 - 1 >= 0x3B && v40 != v43)
  {
    v4 = v44 / 60.0;
    v45 = vcvtad_u64_f64(v4);
  }

  *(a2 + 252) = v45;
  v46 = v43 - 1 < 0x3B;
  if (v43 >= 0x3C)
  {
    v4 = v43 / 60.0;
    v46 = vcvtad_u64_f64(v4);
  }

  *(a2 + 248) = v46;
  v47 = *(a2 + 232);
  if (v47 - 1 >= 0x3B)
  {
    if (v47)
    {
      v4 = v47 / 60.0;
      v47 = vcvtad_u64_f64(v4);
    }
  }

  else
  {
    v47 = 1;
  }

  *(a2 + 232) = v47;
  v48 = *(a2 + 288);
  if (v48)
  {
    v49 = *(a2 + 264) / v48;
  }

  else
  {
    v49 = 0;
  }

  v50 = *(a2 + 280);
  if (v50)
  {
    v51 = *(a2 + 272) / v50;
    if (v41)
    {
LABEL_81:
      LODWORD(v4) = *(a2 + 256);
      v4 = *&v4;
      v52 = v4 / v41;
      goto LABEL_84;
    }
  }

  else
  {
    v51 = 0;
    if (v41)
    {
      goto LABEL_81;
    }
  }

  v52 = 0.0;
LABEL_84:
  v53 = *(a2 + 352);
  v54 = *(a2 + 360);
  if (v53 == v54)
  {
    v55 = 0;
  }

  else
  {
    LODWORD(v55) = 0;
    v56 = 0;
    v57 = 0;
    do
    {
      v59 = *v53++;
      v58 = v59;
      v60 = v59 - 1;
      if (v59 <= v55)
      {
        v61 = v55;
      }

      else
      {
        v61 = v58;
      }

      if (v60 >= 0x64)
      {
        v58 = 0;
      }

      v57 += v58;
      if (v60 >= 0x64)
      {
        v55 = v55;
      }

      else
      {
        ++v56;
        v55 = v61;
      }
    }

    while (v53 != v54);
    if (v56)
    {
      v62 = v57 / v56;
      goto LABEL_99;
    }
  }

  v62 = 0;
LABEL_99:
  v63 = v46 == 0;
  if (v46)
  {
    v64 = 2 * *(a2 + 388) - v49;
  }

  else
  {
    v64 = *(a2 + 388);
  }

  if (v63)
  {
    v65 = v62;
  }

  else
  {
    v65 = 2 * v62 - v51;
  }

  *(a2 + 296) = v64;
  *(a2 + 304) = v65;
  v151 = v51;
  v152 = v49;
  if (v40 >> 7 > 0x2A2 || (v4 = v40, v8 + v7 >= v40))
  {
    v66 = 0;
  }

  else
  {
    v4 = v4 - (v8 + v7);
    v66 = v4;
  }

  v164 = v42;
  v174 = v36 & ~(v36 >> 31);
  v170 = v62;
  v194 = v41;
  if (v219 != 76)
  {
    v190 = 0;
    v186 = 0;
    v188 = 0;
    goto LABEL_130;
  }

  v67 = v8;
  if (v8 < 0x15180)
  {
    if (v67 - 1 < 0x3B)
    {
      v68 = 1;
LABEL_116:
      v188 = v68;
      goto LABEL_118;
    }

    if (v67)
    {
      v4 = v67 / 60.0;
      v68 = vcvtad_u64_f64(v4);
      goto LABEL_116;
    }
  }

  v188 = 0;
LABEL_118:
  if (v66 - 1 >= 0x3B)
  {
    if (v66)
    {
      v4 = v66 / 60.0;
      v69 = vcvtad_u64_f64(v4);
    }

    else
    {
      v69 = 0;
    }
  }

  else
  {
    v69 = 1;
  }

  v70 = v7;
  v186 = v69;
  if (v7 < 0x15180)
  {
    if (v70 - 1 < 0x3B)
    {
      v71 = 1;
LABEL_128:
      v190 = v71;
      goto LABEL_130;
    }

    if (v70)
    {
      v4 = v70 / 60.0;
      v71 = vcvtad_u64_f64(v4);
      goto LABEL_128;
    }
  }

  v190 = 0;
LABEL_130:
  v72 = *(a2 + 412);
  if (v72)
  {
    v158 = (v72 >> 1) & 1;
    v156 = (v72 >> 2) & 1;
    v160 = *(a2 + 412);
    v154 = (v72 >> 3) & 1;
    if (v39)
    {
      goto LABEL_132;
    }

LABEL_135:
    v192 = 0;
    if (v6)
    {
      goto LABEL_133;
    }

    goto LABEL_136;
  }

  v160 = 0;
  v158 = 0;
  v156 = 0;
  v154 = 0;
  if (!v39)
  {
    goto LABEL_135;
  }

LABEL_132:
  LODWORD(v4) = *(a2 + 104);
  v192 = (*&v4 / v39 * 100.0);
  if (v6)
  {
LABEL_133:
    v180 = *a2 / v6;
    v178 = *(a2 + 8) / v6;
    v176 = *(a2 + 16) / v6;
    v184 = *(a2 + 28) / v6;
    goto LABEL_137;
  }

LABEL_136:
  v184 = 0;
  v180 = 0;
  v178 = 0;
  v176 = 0;
LABEL_137:
  v73 = sub_10000C798(v49, v42);
  v74 = (*(*v73 + 144))(v73);
  if (v74)
  {
    v77 = *(a2 + 36);
    if (v77)
    {
      v78 = *(a2 + 40);
      v172 = vcvtas_u32_f32((v77 * 100.0) / (v78 + v77 + *(a2 + 60)));
      if (v78)
      {
LABEL_140:
        v168 = vcvtas_u32_f32((v78 * 100.0) / (v78 + v77 + *(a2 + 60)));
LABEL_144:
        v81 = *(a2 + 44);
        v82 = *(a2 + 48);
        *v76.i32 = v82;
        v83 = vcvtps_u32_f32(v82 / v81);
        if (v81)
        {
          v84 = v83;
        }

        else
        {
          v84 = 0;
        }

        v79 = v78 + v77;
        v196 = v84;
        if (v82)
        {
          LODWORD(v79) = vcvtps_u32_f32(v79 / *v76.i32);
          v80 = vcvt_u32_f32(vrndp_f32(vdiv_f32(vcvt_f32_u32(*(a2 + 52)), vdup_lane_s32(v76, 0))));
        }

        else
        {
          v80 = *(a2 + 52);
        }

        goto LABEL_150;
      }
    }

    else
    {
      v172 = 0;
      v78 = *(a2 + 40);
      if (v78)
      {
        goto LABEL_140;
      }
    }

    v168 = 0;
    goto LABEL_144;
  }

  v172 = 0;
  v168 = 0;
  v196 = 0;
  v79 = 0;
  v80 = 0;
LABEL_150:
  v201 = v80;
  v85 = sub_10000C798(v74, v75);
  if ((*(*v85 + 168))(v85) && (v86 = *(a2 + 60)) != 0)
  {
    v166 = vcvtas_u32_f32((v86 * 100.0) / (*(a2 + 36) + v86 + *(a2 + 40)));
  }

  else
  {
    v166 = 0;
  }

  if (v3 && sub_1000E2140(v3, 0xCu))
  {
    sub_1000E2D2C(v3, 0xAu, &__str);
    if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_str = &__str;
    }

    else
    {
      p_str = __str.__r_.__value_.__r.__words[0];
    }

    v208 = [NSString stringWithUTF8String:p_str];
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v182 = 1;
  }

  else
  {
    v182 = 0;
    v208 = @"Unknown";
  }

  v88 = *(a2 + 448);
  if (v88 < 0x15180)
  {
    if (v88 - 1 < 0x3B)
    {
      v89 = 1;
LABEL_168:
      v162 = v89;
      goto LABEL_170;
    }

    if (v88)
    {
      v89 = vcvtad_u64_f64(v88 / 60.0);
      goto LABEL_168;
    }
  }

  v162 = 0;
LABEL_170:
  if (*(a2 + 479) >= 0)
  {
    v90 = a2 + 456;
  }

  else
  {
    v90 = *(a2 + 456);
  }

  v204 = [NSString stringWithUTF8String:v90];
  v91 = *(a2 + 503);
  if (v91 < 0)
  {
    v92 = *(a2 + 480);
    if (*(a2 + 488) != 7)
    {
LABEL_181:
      v94 = [NSString stringWithUTF8String:v92];

      v204 = v94;
      goto LABEL_182;
    }
  }

  else
  {
    v92 = (a2 + 480);
    if (v91 != 7)
    {
      goto LABEL_181;
    }
  }

  if (*v92 != 1852534357 || *(v92 + 3) != 1853321070)
  {
    goto LABEL_181;
  }

LABEL_182:
  v95 = *(a1 + 992);
  if (v95 == (a1 + 1000))
  {
    v97 = 0;
    v96 = 0;
    v206 = 0;
    v205 = 0;
    v98 = 0xFFFFLL;
  }

  else
  {
    v205 = 0;
    v206 = 0;
    v96 = 0;
    v97 = 0;
    LOWORD(v98) = -1;
    do
    {
      v99 = v95[4];
      v101 = *(v95 + 20);
      if (v98 >= v101)
      {
        v98 = *(v95 + 20);
      }

      else
      {
        v98 = v98;
      }

      LOWORD(v100) = *(v95 + 21);
      v102 = ((v100 * 100.0) / v101);
      if (v102 > 0x19)
      {
        if (v102 > 0x32)
        {
          if (v102 > 0x4B)
          {
            ++v205;
          }

          else
          {
            ++v206;
          }
        }

        else
        {
          ++v96;
        }
      }

      else
      {
        ++v97;
      }

      v103 = v95[1];
      if (v103)
      {
        do
        {
          v104 = v103;
          v103 = *v103;
        }

        while (v103);
      }

      else
      {
        do
        {
          v104 = v95[2];
          v63 = *v104 == v95;
          v95 = v104;
        }

        while (!v63);
      }

      v95 = v104;
    }

    while (v104 != (a1 + 1000));
  }

  v220[0] = @"AccessoryPID";
  v150 = [NSNumber numberWithUnsignedInt:v218];
  v221[0] = v150;
  v221[1] = v204;
  v220[1] = @"AudioCategory";
  v220[2] = @"AverageCoexDenial";
  LODWORD(v105) = *(a2 + 420);
  if (*&v105 == 0.0)
  {
    v105 = 0.0;
  }

  else
  {
    *&v105 = *(a2 + 416) / *&v105;
  }

  v149 = [NSNumber numberWithFloat:v105];
  v221[2] = v149;
  v220[3] = @"AvgMaxGoodPcktsPerSwitch";
  v148 = [NSNumber numberWithUnsignedInt:v201.u32[0]];
  v221[3] = v148;
  v220[4] = @"AvgMinGoodPcktsPerSwitch";
  v202 = [NSNumber numberWithUnsignedInt:v201.u32[1]];
  v221[4] = v202;
  v220[5] = @"AvgPacketsPerSwitch";
  v147 = [NSNumber numberWithUnsignedInt:v79];
  v221[5] = v147;
  v220[6] = @"AvgSwitchesPerSecond";
  v197 = [NSNumber numberWithUnsignedInt:v196];
  v221[6] = v197;
  v220[7] = @"BitRateLowAvg";
  v146 = [NSNumber numberWithUnsignedInt:*(a2 + 376)];
  v221[7] = v146;
  v220[8] = @"BitRateMediumAvg";
  v145 = [NSNumber numberWithUnsignedInt:*(a2 + 380)];
  v221[8] = v145;
  v220[9] = @"BtRole";
  v144 = [NSNumber numberWithUnsignedChar:*(a2 + 320)];
  v221[9] = v144;
  v220[10] = @"DurationInMinutes";
  v195 = [NSNumber numberWithUnsignedInt:v194];
  v221[10] = v195;
  v220[11] = @"EpaCallTimeRatio";
  v193 = [NSNumber numberWithUnsignedInt:v192];
  v221[11] = v193;
  v221[12] = v208;
  v220[12] = @"FWVersion";
  v220[13] = @"HighLatencyDurationMins";
  v191 = [NSNumber numberWithUnsignedInt:v190];
  v221[13] = v191;
  v220[14] = @"HDRSession";
  v199 = [NSNumber numberWithBool:v198];
  v221[14] = v199;
  v220[15] = @"IsAppleAudioDevice";
  v183 = [NSNumber numberWithBool:v182];
  v221[15] = v183;
  v220[16] = @"LowLatencyDurationMins";
  v189 = [NSNumber numberWithUnsignedInt:v188];
  v221[16] = v189;
  v220[17] = @"MidLatencyDurationMins";
  v187 = [NSNumber numberWithUnsignedInt:v186];
  v221[17] = v187;
  v220[18] = @"MaxOverwaitDurationMs";
  v143 = [NSNumber numberWithUnsignedLongLong:*(a2 + 512)];
  v221[18] = v143;
  v220[19] = @"NoiseFloorAvgOnGoodChannels";
  v185 = [NSNumber numberWithUnsignedInt:v184];
  v221[19] = v185;
  v220[20] = @"NoiseFloorMinOnGoodChannels";
  v142 = [NSNumber numberWithUnsignedInt:*(a2 + 32)];
  v221[20] = v142;
  v220[21] = @"NoiseFloor50Percentile";
  v181 = [NSNumber numberWithInt:v180];
  v221[21] = v181;
  v220[22] = @"NoiseFloor50Max";
  v141 = [NSNumber numberWithInt:*(a2 + 4)];
  v221[22] = v141;
  v220[23] = @"NoiseFloor75Percentile";
  v179 = [NSNumber numberWithInt:v178];
  v221[23] = v179;
  v220[24] = @"NoiseFloor75Max";
  v140 = [NSNumber numberWithInt:*(a2 + 12)];
  v221[24] = v140;
  v220[25] = @"NoiseFloor90Percentile";
  v177 = [NSNumber numberWithInt:v176];
  v221[25] = v177;
  v220[26] = @"NoiseFloor90Max";
  v139 = [NSNumber numberWithInt:*(a2 + 20)];
  v221[26] = v139;
  v220[27] = @"OverwaitCountMoreThan50ms";
  v138 = [NSNumber numberWithUnsignedLongLong:*(a2 + 504)];
  v221[27] = v138;
  v220[28] = @"PacketLoss";
  v175 = [NSNumber numberWithInt:v174];
  v221[28] = v175;
  v220[29] = @"PercentPacketsAnt0";
  v173 = [NSNumber numberWithUnsignedInt:v172];
  v221[29] = v173;
  v220[30] = @"PercentPacketsAnt1";
  v169 = [NSNumber numberWithUnsignedInt:v168];
  v221[30] = v169;
  v220[31] = @"PercentPacketsTxBF";
  v167 = [NSNumber numberWithUnsignedInt:v166];
  v221[31] = v167;
  v220[32] = @"ReTransmissionRate";
  v171 = [NSNumber numberWithUnsignedInt:v170];
  v221[32] = v171;
  v220[33] = @"ReTransmissionRateMax";
  v137 = [NSNumber numberWithUnsignedInt:v55];
  v221[33] = v137;
  v220[34] = @"RssiAverage";
  v106 = *(a2 + 432);
  if (v106)
  {
    v107 = *(a2 + 424) / v106;
  }

  else
  {
    v107 = 0;
  }

  v136 = [NSNumber numberWithInt:v107];
  v221[34] = v136;
  v220[35] = @"RssiMax";
  v135 = [NSNumber numberWithInt:*(a2 + 440)];
  v221[35] = v135;
  v220[36] = @"RssiMin";
  v134 = [NSNumber numberWithInt:*(a2 + 436)];
  v221[36] = v134;
  v220[37] = @"RssiAtSkip";
  v133 = [NSNumber numberWithInt:v32];
  v221[37] = v133;
  v221[38] = v203;
  v220[38] = @"SanitizedDeviceName";
  v220[39] = @"SpatialProfileSessionDuration";
  v163 = [NSNumber numberWithUnsignedInt:v162];
  v221[39] = v163;
  v220[40] = @"SkipperMin";
  v165 = [NSNumber numberWithUnsignedInt:v164];
  v221[40] = v165;
  v220[41] = @"TxCountIncludingReTx";
  v132 = [NSNumber numberWithUnsignedLongLong:*(a2 + 520)];
  v221[41] = v132;
  v220[42] = @"VendorID";
  v131 = [NSNumber numberWithUnsignedInt:v219];
  v221[42] = v131;
  v220[43] = @"Version";
  v130 = [NSNumber numberWithUnsignedInt:HIDWORD(v218)];
  v221[43] = v130;
  v220[44] = @"VersionIDSource";
  v129 = [NSNumber numberWithUnsignedInt:HIDWORD(v219)];
  v221[44] = v129;
  v220[45] = @"WirelessSplitterOff";
  v128 = [NSNumber numberWithBool:v72 == 0];
  v221[45] = v128;
  v220[46] = @"WirelessSplitterGuestRole";
  v161 = [NSNumber numberWithBool:v160 & 1];
  v221[46] = v161;
  v220[47] = @"WirelessSplitterOwnerRole";
  v159 = [NSNumber numberWithBool:v158];
  v221[47] = v159;
  v220[48] = @"WirelessSplitterUser1Type";
  v157 = [NSNumber numberWithBool:v156];
  v221[48] = v157;
  v220[49] = @"WirelessSplitterUser2Type";
  v155 = [NSNumber numberWithBool:v154];
  v221[49] = v155;
  v220[50] = @"BTBand";
  if (*(a2 + 191) >= 0)
  {
    v108 = a2 + 168;
  }

  else
  {
    v108 = *(a2 + 168);
  }

  v127 = [NSString stringWithUTF8String:v108];
  v221[50] = v127;
  v220[51] = @"TipiConnected";
  v126 = [NSNumber numberWithBool:*(a2 + 192)];
  v221[51] = v126;
  v220[52] = @"AoSDuration";
  v125 = [NSNumber numberWithUnsignedInt:*(a2 + 232)];
  v221[52] = v125;
  v220[53] = @"ISMvsUBORatio";
  v124 = [NSNumber numberWithDouble:*(a2 + 240)];
  v221[53] = v124;
  v220[54] = @"2GDuration";
  v123 = [NSNumber numberWithUnsignedInt:*(a2 + 252)];
  v221[54] = v123;
  v220[55] = @"5GDuration";
  v122 = [NSNumber numberWithUnsignedInt:*(a2 + 248)];
  v221[55] = v122;
  v220[56] = @"FlushSessionRatio";
  v121 = [NSNumber numberWithDouble:v52];
  v221[56] = v121;
  v220[57] = @"AvgAoSRSSI5G";
  v153 = [NSNumber numberWithInt:v152];
  v221[57] = v153;
  v220[58] = @"AvgAoSRSSI2G";
  v120 = [NSNumber numberWithLongLong:*(a2 + 296)];
  v221[58] = v120;
  v220[59] = @"AvgRetx5G";
  v109 = [NSNumber numberWithInt:v151];
  v221[59] = v109;
  v220[60] = @"AvgRetx2G";
  v110 = [NSNumber numberWithLongLong:*(a2 + 304)];
  v221[60] = v110;
  v220[61] = @"JitterBuffer";
  v111 = [NSNumber numberWithUnsignedInt:*(a2 + 312)];
  v221[61] = v111;
  v220[62] = @"totalSiriActivaton";
  v112 = [NSNumber numberWithUnsignedLongLong:*(a2 + 528)];
  v221[62] = v112;
  v220[63] = @"MinConnInterval";
  v113 = [NSNumber numberWithUnsignedShort:v98];
  v221[63] = v113;
  v220[64] = @"NumOf25PercentageDutyCycle";
  v114 = [NSNumber numberWithUnsignedChar:v97];
  v221[64] = v114;
  v220[65] = @"NumOf50PercentageDutyCycle";
  v115 = [NSNumber numberWithUnsignedChar:v96];
  v221[65] = v115;
  v220[66] = @"NumOf75PercentageDutyCycle";
  v116 = [NSNumber numberWithUnsignedChar:v206];
  v221[66] = v116;
  v220[67] = @"NumOf100PercentageDutyCycle";
  v117 = [NSNumber numberWithUnsignedChar:v205];
  v221[67] = v117;
  v118 = [NSDictionary dictionaryWithObjects:v221 forKeys:v220 count:68];

  v119 = qword_100BCE8D8;
  if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__str.__r_.__value_.__l.__data_) = 138412290;
    *(__str.__r_.__value_.__r.__words + 4) = v118;
    _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "A2dpLinkQuality stats %@", &__str, 0xCu);
  }

  sub_10003BA40(a1, 8, v118);
  if (v211)
  {
    v212 = v211;
    operator delete(v211);
  }

  if (__src)
  {
    v215 = __src;
    operator delete(__src);
  }

  if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v217.__r_.__value_.__l.__data_);
  }
}

void sub_100442A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (*(v65 - 137) < 0)
  {
    operator delete(*(v65 - 160));
  }

  STACK[0x208] = @"Unknown";

  v67 = STACK[0x228];
  if (STACK[0x228])
  {
    STACK[0x230] = v67;
    operator delete(v67);
  }

  v68 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v68;
    operator delete(v68);
  }

  if (SLOBYTE(STACK[0x26F]) < 0)
  {
    operator delete(STACK[0x258]);
  }

  _Unwind_Resume(a1);
}

void sub_100442EF0(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = sub_10000E92C();
  if ((*(*v4 + 8))(v4))
  {
    *a2 = *a1;
    a2[2] = *(a1 + 16);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
  }

  else
  {
    v11 = 0;
    v12[0] = 0;
    v12[1] = 0;
    sub_100007E30(v13, "accent");
    sub_100007E30(v14, "audi");
    sub_100007E30(v15, "azera");
    sub_100007E30(v16, "blue&me");
    sub_100007E30(v17, "bmw");
    sub_100007E30(v18, "buick");
    sub_100007E30(v19, "cadillac");
    sub_100007E30(v20, "car m_media");
    sub_100007E30(v21, "car multimedia");
    sub_100007E30(v22, "chevrolet");
    sub_100007E30(v23, "elantra");
    sub_100007E30(v24, "ferrari");
    sub_100007E30(v25, "genesis");
    sub_100007E30(v26, "gmc");
    sub_100007E30(v27, "handsfreelink");
    sub_100007E30(v28, "hands free system");
    sub_100007E30(v29, "jaguar");
    sub_100007E30(v30, "kia motors");
    sub_100007E30(v31, "lexus");
    sub_100007E30(v32, "mazda");
    sub_100007E30(v33, "mb bluetooth");
    sub_100007E30(v34, "my-car");
    sub_100007E30(v35, "my altima");
    sub_100007E30(v36, "my armada");
    sub_100007E30(v37, "my car");
    sub_100007E30(v38, "my maxima");
    sub_100007E30(v39, "my murano");
    sub_100007E30(v40, "my pathfinder");
    sub_100007E30(v41, "my rogue");
    sub_100007E30(v42, "my sentra");
    sub_100007E30(v43, "my titan");
    sub_100007E30(v44, "my versa");
    sub_100007E30(v45, "my quest");
    sub_100007E30(v46, "pcm");
    sub_100007E30(v47, "range rover");
    sub_100007E30(v48, "santa fe");
    sub_100007E30(v49, "sonata");
    sub_100007E30(v50, "subaru");
    sub_100007E30(v51, "sync");
    sub_100007E30(v52, "tesla");
    sub_100007E30(v53, "toyota");
    sub_100007E30(v54, "tucson");
    sub_100007E30(v55, "uconnect");
    sub_100007E30(v56, "veloster");
    sub_100007E30(v57, "vw");
    sub_100007E30(v58, "aukey ep-b4");
    sub_100007E30(v59, "bluebuds x");
    sub_100007E30(v60, "dr-bt50");
    sub_100007E30(v61, "freedom sprint");
    sub_100007E30(v62, "hesh 2 wireless");
    sub_100007E30(v63, "jabra rox wireless");
    sub_100007E30(v64, "jaybird bluebud x");
    sub_100007E30(v65, "jbl micro wireless");
    sub_100007E30(v66, "koss bt540i");
    sub_100007E30(v67, "lg hbs760");
    sub_100007E30(v68, "marsee one x");
    sub_100007E30(v69, "mdr-1rbt");
    sub_100007E30(v70, "motorola s9-hd");
    sub_100007E30(v71, "parrot zik 3");
    sub_100007E30(v72, "pdx-b11 yamaha");
    sub_100007E30(v73, "plt_m70");
    sub_100007E30(v74, "presence");
    sub_100007E30(v75, "s11-flex hd");
    sub_100007E30(v76, "sb2 wireless");
    sub_100007E30(v77, "sync by 50");
    sub_1000C1030(&v11, v13, 65);
    v5 = 195;
    do
    {
      if (SHIBYTE(v13[v5 - 1]) < 0)
      {
        operator delete(v12[v5 - 1]);
      }

      v5 -= 3;
    }

    while (v5 * 8);
    v6 = *(a1 + 23);
    if (v6 < 0)
    {
      v8 = *a1;
      v7 = (*a1 + *(a1 + 8));
    }

    else
    {
      v7 = (a1 + v6);
      v8 = a1;
    }

    while (v8 != v7)
    {
      *v8 = __tolower(*v8);
      ++v8;
    }

    v9 = sub_1000463C8(&v11, a1);
    if (v12 == v9)
    {
      sub_100007E30(a2, "");
    }

    else if (*(v9 + 55) < 0)
    {
      sub_100008904(a2, *(v9 + 32), *(v9 + 40));
    }

    else
    {
      v10 = *(v9 + 32);
      a2[2] = *(v9 + 48);
      *a2 = v10;
    }

    sub_10004B61C(&v11, v12[0]);
  }
}

void sub_10044360C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13)
{
  v15 = (v13 + 1559);
  v16 = -1560;
  v17 = (v13 + 1559);
  while (1)
  {
    v18 = *v17;
    v17 -= 24;
    if (v18 < 0)
    {
      operator delete(*(v15 - 23));
    }

    v15 = v17;
    v16 += 24;
    if (!v16)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_100443688(uint64_t a1, __int128 *a2)
{
  memset(v9, 0, sizeof(v9));
  v3 = sub_10047F45C(v9, a2);
  v5 = sub_100066098(v3, v4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_100443780;
  v7[3] = &unk_100AF6948;
  v7[4] = a1;
  sub_10047F45C(v8, v9);
  sub_10000CA94(v5, v7);
  sub_10047F5B0(v8);
  return sub_10047F5B0(v9);
}

void sub_10044375C(_Unwind_Exception *a1)
{
  sub_10047F5B0(v1 + 40);
  sub_10047F5B0(v2 - 240);
  _Unwind_Resume(a1);
}

void sub_100443780(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 992);
  v60 = v2;
  v4 = (v2 + 1000);
  if (v3 == (v2 + 1000))
  {
    LOBYTE(v11) = 0;
    v10 = 0;
    v62 = 0;
    v63 = 0;
    LOBYTE(v9) = 0;
    LOBYTE(v8) = 0;
    LOBYTE(v7) = 0;
    LOBYTE(v6) = 0;
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v62 = 0;
    v63 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = v3[4];
      v13 = *(v3 + 20);
      if (v13 == 24)
      {
        v14 = v11 + 1;
      }

      else
      {
        v14 = v11;
      }

      if (v13 == 23)
      {
        v14 = v11;
        v15 = v9 + 1;
      }

      else
      {
        v15 = v9;
      }

      if (v13 == 20)
      {
        v14 = v11;
        v15 = v9;
        v16 = v8 + 1;
      }

      else
      {
        v16 = v8;
      }

      if (v13 == 18)
      {
        v17 = v7 + 1;
      }

      else
      {
        v17 = v7;
      }

      if (v13 == 12)
      {
        v17 = v7;
        v18 = v6 + 1;
      }

      else
      {
        v18 = v6;
      }

      if (v13 == 9)
      {
        v17 = v7;
        v18 = v6;
        v19 = v5 + 1;
      }

      else
      {
        v19 = v5;
      }

      if (*(v3 + 20) <= 0x13u)
      {
        v7 = v17;
      }

      else
      {
        v11 = v14;
        v9 = v15;
        v8 = v16;
      }

      if (*(v3 + 20) <= 0x13u)
      {
        v6 = v18;
        v5 = v19;
      }

      if (*(v3 + 44) == 1)
      {
        ++v10;
      }

      v20 = ((*(v3 + 21) * 100.0) / v13);
      if (v20 > 0x19)
      {
        if (v20 > 0x32)
        {
          if (v20 > 0x4B)
          {
            LOBYTE(v62) = v62 + 1;
          }

          else
          {
            ++BYTE4(v62);
          }
        }

        else
        {
          LOBYTE(v63) = v63 + 1;
        }
      }

      else
      {
        ++BYTE4(v63);
      }

      v21 = v3[1];
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
          v22 = v3[2];
          v23 = *v22 == v3;
          v3 = v22;
        }

        while (!v23);
      }

      v3 = v22;
    }

    while (v22 != v4);
  }

  v66[0] = @"AccessoryPID";
  v61 = [NSNumber numberWithUnsignedInt:*(a1 + 76)];
  v67[0] = v61;
  v66[1] = @"AoSEnabled";
  v24 = (a1 + 80);
  if (*(a1 + 103) < 0)
  {
    v24 = *v24;
  }

  v59 = [NSString stringWithUTF8String:v24];
  v67[1] = v59;
  v66[2] = @"AudioCategory";
  v25 = (a1 + 104);
  if (*(a1 + 127) < 0)
  {
    v25 = *v25;
  }

  v58 = [NSString stringWithUTF8String:v25];
  v67[2] = v58;
  v66[3] = @"AverageCoexDenial";
  LODWORD(v26) = *(a1 + 232);
  v57 = [NSNumber numberWithFloat:v26];
  v67[3] = v57;
  v66[4] = @"BTBand";
  v27 = (a1 + 128);
  if (*(a1 + 151) < 0)
  {
    v27 = *v27;
  }

  v56 = [NSString stringWithUTF8String:v27];
  v67[4] = v56;
  v66[5] = @"FWVersion";
  v28 = (a1 + 152);
  if (*(a1 + 175) < 0)
  {
    v28 = *v28;
  }

  v55 = [NSString stringWithUTF8String:v28];
  v67[5] = v55;
  v66[6] = @"JitterBuffer";
  v54 = [NSNumber numberWithUnsignedInt:*(a1 + 176)];
  v67[6] = v54;
  v66[7] = @"NoiseFloor50Percentile";
  v53 = [NSNumber numberWithInt:*(a1 + 180)];
  v67[7] = v53;
  v66[8] = @"NoiseFloor50Max";
  v52 = [NSNumber numberWithInt:*(a1 + 44)];
  v67[8] = v52;
  v66[9] = @"NumberOfClassicDevicesConnected";
  v51 = [NSNumber numberWithUnsignedChar:v60[528]];
  v67[9] = v51;
  v66[10] = @"NumberOfClassicHIDDevicesConnected";
  v50 = [NSNumber numberWithUnsignedChar:v60[531]];
  v67[10] = v50;
  v66[11] = @"NumberOfLEDevicesConnected";
  v49 = [NSNumber numberWithUnsignedChar:v60[529]];
  v67[11] = v49;
  v66[12] = @"NumberOfLEHIDDevicesConnected";
  v68 = [NSNumber numberWithUnsignedChar:v60[530]];
  v66[13] = @"ReTransmissionRate";
  v48 = v68;
  v47 = [NSNumber numberWithUnsignedInt:*(a1 + 184)];
  v69 = v47;
  v66[14] = @"RssiAverage";
  v46 = [NSNumber numberWithInt:*(a1 + 192)];
  v70 = v46;
  v66[15] = @"RssiMax";
  v45 = [NSNumber numberWithInt:*(a1 + 196)];
  v71 = v45;
  v66[16] = @"RssiMin";
  v44 = [NSNumber numberWithInt:*(a1 + 200)];
  v72 = v44;
  v66[17] = @"TipiConnected";
  v43 = [NSNumber numberWithBool:*(a1 + 204)];
  v73 = v43;
  v66[18] = @"A2DPLocalRole";
  v42 = [NSNumber numberWithUnsignedInt:*(a1 + 228)];
  v74 = v42;
  v66[19] = @"NumOf11_25msInterval";
  v41 = [NSNumber numberWithUnsignedChar:v5];
  v75 = v41;
  v66[20] = @"NumOf15msInterval";
  v40 = [NSNumber numberWithUnsignedChar:v6];
  v76 = v40;
  v66[21] = @"NumOf22_5msInterval";
  v39 = [NSNumber numberWithUnsignedChar:v7];
  v77 = v39;
  v66[22] = @"NumOf25msInterval";
  v29 = [NSNumber numberWithUnsignedChar:v8];
  v78 = v29;
  v66[23] = @"NumOf28_75msInterval";
  v30 = [NSNumber numberWithUnsignedChar:v9];
  v79 = v30;
  v66[24] = @"NumOf30msInterval";
  v31 = [NSNumber numberWithUnsignedChar:v11];
  v80 = v31;
  v66[25] = @"NumOfLePeripheralRole";
  v32 = [NSNumber numberWithUnsignedChar:v10];
  v81 = v32;
  v66[26] = @"NumOf25PercentageDutyCycle";
  v33 = [NSNumber numberWithUnsignedChar:BYTE4(v63)];
  v82 = v33;
  v66[27] = @"NumOf50PercentageDutyCycle";
  v34 = [NSNumber numberWithUnsignedChar:v63];
  v83 = v34;
  v66[28] = @"NumOf75PercentageDutyCycle";
  v35 = [NSNumber numberWithUnsignedChar:BYTE4(v62)];
  v84 = v35;
  v66[29] = @"NumOf100PercentageDutyCycle";
  v36 = [NSNumber numberWithUnsignedChar:v62];
  v85 = v36;
  v37 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:30];

  v38 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v65 = v37;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "A2dpPacketFlush sendA2DPPacketFlushMetric stats %@", buf, 0xCu);
  }

  sub_10003BA40(v60, 9, v37);
}

void sub_100444150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 40);
  v43 = 0;
  v44 = 0;
  if (v5)
  {
    sub_1000C2364(v5, &v44 + 1, &v44, &v43, &v43 + 1);
  }

  v6 = *(a3 + 24);
  if (v6)
  {
    v7 = (*a3 / v6);
    v8 = (*(a3 + 8) / v6);
    v9 = (*(a3 + 16) / v6);
    v10 = *(a3 + 28) / v6;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    v8 = 0;
    v7 = 0;
  }

  if (*(a3 + 479) >= 0)
  {
    v11 = a3 + 456;
  }

  else
  {
    v11 = *(a3 + 456);
  }

  v42 = [NSString stringWithUTF8String:v11];
  v12 = *(a3 + 503);
  if (v12 < 0)
  {
    v13 = *(a3 + 480);
    if (*(a3 + 488) != 7)
    {
LABEL_17:
      v15 = [NSString stringWithUTF8String:v13];

      v42 = v15;
      goto LABEL_18;
    }
  }

  else
  {
    v13 = (a3 + 480);
    if (v12 != 7)
    {
      goto LABEL_17;
    }
  }

  if (*v13 != 1852534357 || *(v13 + 3) != 1853321070)
  {
    goto LABEL_17;
  }

LABEL_18:
  v47[0] = @"Version";
  v40 = [NSNumber numberWithUnsignedInt:HIDWORD(v43)];
  v48[0] = v40;
  v47[1] = @"AccessoryPID";
  v39 = [NSNumber numberWithUnsignedInt:v43];
  v48[1] = v39;
  v48[2] = v42;
  v47[2] = @"ApplicationPID";
  v47[3] = @"RecordingDurationInMinutes";
  v38 = [NSNumber numberWithUnsignedLongLong:*(a2 + 48)];
  v48[3] = v38;
  v47[4] = @"BudSwapCount";
  v37 = [NSNumber numberWithUnsignedInt:*(a2 + 56)];
  v48[4] = v37;
  v47[5] = @"ErrorToneCountPerSession";
  v36 = [NSNumber numberWithUnsignedInt:*(a2 + 60)];
  v48[5] = v36;
  v47[6] = @"MaxSkipDurationPerSession";
  v35 = [NSNumber numberWithUnsignedInt:*(a2 + 64)];
  v48[6] = v35;
  v47[7] = @"AvgSkipDurationPerSession";
  v34 = [NSNumber numberWithUnsignedInt:*(a2 + 68)];
  v48[7] = v34;
  v47[8] = @"NoiseFloorAvgOnGoodChannels";
  v33 = [NSNumber numberWithUnsignedInt:v10];
  v48[8] = v33;
  v47[9] = @"NoiseFloorMinOnGoodChannels";
  v32 = [NSNumber numberWithUnsignedInt:*(a3 + 32)];
  v48[9] = v32;
  v47[10] = @"NoiseFloor50Percentile";
  v31 = [NSNumber numberWithInt:v7];
  v48[10] = v31;
  v47[11] = @"NoiseFloor50Max";
  v30 = [NSNumber numberWithInt:*(a3 + 4)];
  v48[11] = v30;
  v47[12] = @"NoiseFloor75Percentile";
  v29 = [NSNumber numberWithInt:v8];
  v48[12] = v29;
  v47[13] = @"NoiseFloor75Max";
  v28 = [NSNumber numberWithInt:*(a3 + 12)];
  v48[13] = v28;
  v47[14] = @"NoiseFloor90Percentile";
  v16 = [NSNumber numberWithInt:v9];
  v48[14] = v16;
  v47[15] = @"NoiseFloor90Max";
  v17 = [NSNumber numberWithInt:*(a3 + 20)];
  v48[15] = v17;
  v47[16] = @"ULJitterBuffer";
  v18 = [NSNumber numberWithUnsignedChar:150];
  v48[16] = v18;
  v47[17] = @"DLJitterBuffer";
  v19 = [NSNumber numberWithUnsignedChar:150];
  v48[17] = v19;
  v47[18] = @"DLRssiAverage";
  v20 = *(a3 + 432);
  if (v20)
  {
    v21 = *(a3 + 424) / v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = [NSNumber numberWithInt:v21];
  v48[18] = v22;
  v47[19] = @"DLRssiMax";
  v23 = [NSNumber numberWithInt:*(a3 + 440)];
  v48[19] = v23;
  v47[20] = @"DLRssiMin";
  v24 = [NSNumber numberWithInt:*(a3 + 436)];
  v48[20] = v24;
  v47[21] = @"DLRssiAtULSkip";
  v25 = [NSNumber numberWithLongLong:*(a2 + 72) / *(a2 + 80)];
  v48[21] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:22];

  v27 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = v26;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "AMP Metric stats %@", buf, 0xCu);
  }

  sub_10003BA40(a1, 6, v26);
}

float sub_100444850(unsigned __int8 *a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[530];
    v5 = a1[529];
    v6 = a1[531];
    v7 = a1[528];
    v8[0] = 67109888;
    v8[1] = v7;
    v9 = 1024;
    v10 = v6;
    v11 = 1024;
    v12 = v5;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "NumberOfClassicDevicesConnected = %d, NumberOfClassicHIDDevicesConnected = %u, NumberOfLEDevicesConnected = %u, NumberOfLEHIDDevicesConnected = %u", v8, 0x1Au);
  }

  return result;
}

void sub_10044491C(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *(a2 + 64);
  v146 = 0;
  v147 = 0;
  if (v4)
  {
    sub_1000C2364(v4, &v147 + 1, &v147, &v146, &v146 + 1);
  }

  v5 = *(a2 + 180);
  memset(&v145, 0, sizeof(v145));
  v6 = sub_100007E30(&v145, "");
  v9 = *(a2 + 172);
  v10 = 1;
  if ((v9 - 128) >= 2)
  {
    v10 = v9 == 255;
  }

  if (v9 == 256 || v9 == 127)
  {
    LODWORD(v8) = *(a2 + 164);
    v8 = *&v8 / 0.0075;
    v128 = v8;
    v110 = @"Mono";
    v11 = @"Cellular Voice Call";
LABEL_8:
    v126 = v11;
    goto LABEL_9;
  }

  if (v10)
  {
    LODWORD(v8) = *(a2 + 164);
    v8 = *&v8 / 0.015;
    v128 = v8;
    v110 = @"Stereo";
    v11 = @"FaceTime";
    goto LABEL_8;
  }

  v128 = 0;
  v126 = @"Unknown";
  v110 = @"Unknown";
LABEL_9:
  if (v5)
  {
    LODWORD(v8) = *(a2 + 176);
    v12 = *&v8;
    if (*(a2 + 237) == 1)
    {
      v8 = v12 / *(a2 + 296) * 100.0;
      v134 = v8;
    }

    else
    {
      v134 = (v12 / v5 * 100.0);
      v13 = qword_100BCE8D8;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a2 + 176);
        *buf = 67109888;
        *&buf[4] = v14;
        v151 = 1024;
        v152 = v5;
        v153 = 2048;
        *v154 = v14 / v5;
        *&v154[8] = 1024;
        *v155 = v134;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Calculated PLCUsage: %u / %u  i.e %lf * 100 = %u", buf, 0x1Eu);
      }
    }

    v15 = *(a2 + 180);
    v16 = v128 >= v15;
    v17 = v128 - v15;
    if (v17 != 0 && v16)
    {
      v98 = v17;
      v8 = v17 / v5 * 100.0;
      v130 = v8;
      goto LABEL_22;
    }
  }

  else
  {
    v134 = 0;
  }

  v130 = 0;
  v98 = 0;
LABEL_22:
  v18 = *(a2 + 164);
  if (v18 - 1 < 0x3B)
  {
    v19 = 1;
    goto LABEL_26;
  }

  if (v18)
  {
    v8 = v18 / 60.0;
    v19 = vcvtad_u64_f64(v8);
LABEL_26:
    v132 = v19;
    if (!v4)
    {
      goto LABEL_38;
    }

    goto LABEL_27;
  }

  v132 = 0;
  if (!v4)
  {
    goto LABEL_38;
  }

LABEL_27:
  sub_1000DEEA4(v4, __p);
  sub_100442EF0(__p, buf);
  v6 = std::string::operator=(&v145, buf);
  if ((v154[7] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (v144 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    if (v145.__r_.__value_.__l.__size_)
    {
      v20 = v145.__r_.__value_.__r.__words[0];
      goto LABEL_36;
    }
  }

  else if (*(&v145.__r_.__value_.__s + 23))
  {
    v20 = &v145;
LABEL_36:
    v6 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", v20, +[NSString defaultCStringEncoding]);
    v140 = v6;
    goto LABEL_39;
  }

LABEL_38:
  v140 = @"Unknown";
LABEL_39:
  v22 = *(a2 + 104);
  v21 = *(a2 + 108);
  if (v22)
  {
    if (v21)
    {
      if (*(a2 + 237) == 1)
      {
        v23 = *(a2 + 248);
        v24 = *(a2 + 280);
      }

      else
      {
        v23 = (*(a2 + 132) + *(a2 + 128));
        v24 = (v21 + v22);
      }

      v8 = v23 / v24 * 100.0;
      v122 = v8;
    }

    else
    {
      v122 = 0;
    }

    LODWORD(v8) = *(a2 + 128);
    *&v26 = *&v8 / v22 * 100.0;
    v124 = *&v26;
    LODWORD(v26) = *(a2 + 96);
    *&v27 = v26 / v22 * 100.0;
    v25 = *&v27;
    LODWORD(v27) = *(a2 + 112);
    *&v28 = v27 / v22 * 100.0;
    v104 = *&v28;
    LODWORD(v28) = *(a2 + 120);
    v8 = v28 / v22 * 100.0;
    v108 = v8;
    if (v21)
    {
      goto LABEL_49;
    }

LABEL_44:
    v106 = 0;
    v102 = 0;
    goto LABEL_50;
  }

  v122 = 0;
  v108 = 0;
  v104 = 0;
  v25 = 0;
  v124 = 0;
  if (!v21)
  {
    goto LABEL_44;
  }

LABEL_49:
  LODWORD(v8) = *(a2 + 116);
  *&v29 = *&v8 / v21 * 100.0;
  v102 = *&v29;
  LODWORD(v29) = *(a2 + 124);
  v106 = (v29 / v21 * 100.0);
LABEL_50:
  v30 = *(a2 + 24);
  if (v30)
  {
    v120 = *a2 / v30;
    v118 = *(a2 + 16) / v30;
    v116 = *(a2 + 28) / v30;
  }

  else
  {
    v120 = 0;
    v118 = 0;
    v116 = 0;
  }

  v31 = sub_10000C798(v6, v7);
  v32 = (*(*v31 + 144))(v31);
  if (!v32)
  {
    v114 = 0;
    v112 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    goto LABEL_66;
  }

  v35 = *(a2 + 36);
  if (!v35)
  {
    v114 = 0;
    v36 = *(a2 + 40);
    if (v36)
    {
      goto LABEL_56;
    }

LABEL_59:
    v112 = 0;
    goto LABEL_60;
  }

  v36 = *(a2 + 40);
  v114 = vcvtas_u32_f32((v35 * 100.0) / (v36 + v35 + *(a2 + 60)));
  if (!v36)
  {
    goto LABEL_59;
  }

LABEL_56:
  v112 = vcvtas_u32_f32((v36 * 100.0) / (v36 + v35 + *(a2 + 60)));
LABEL_60:
  v40 = *(a2 + 44);
  v41 = *(a2 + 48);
  *v34.i32 = v41;
  v42 = vcvtps_u32_f32(v41 / v40);
  if (v40)
  {
    v38 = v42;
  }

  else
  {
    v38 = 0;
  }

  v37 = v36 + v35;
  if (v41)
  {
    LODWORD(v37) = vcvtps_u32_f32(v37 / *v34.i32);
    v39 = vcvt_u32_f32(vrndp_f32(vdiv_f32(vcvt_f32_u32(*(a2 + 52)), vdup_lane_s32(v34, 0))));
  }

  else
  {
    v39 = *(a2 + 52);
  }

LABEL_66:
  v138 = v39;
  v43 = sub_10000C798(v32, v33);
  if ((*(*v43 + 168))(v43) && (v44 = *(a2 + 60)) != 0)
  {
    LODWORD(v2) = vcvtas_u32_f32((v44 * 100.0) / (*(a2 + 36) + v44 + *(a2 + 40)));
    if (!v4)
    {
      goto LABEL_78;
    }
  }

  else
  {
    v2 = 0;
    if (!v4)
    {
LABEL_78:
      v47 = 0;
      v142 = @"Unknown";
      goto LABEL_79;
    }
  }

  if (!sub_1000E2140(v4, 0xCu))
  {
    goto LABEL_78;
  }

  sub_1000E2D2C(v4, 0xAu, buf);
  if (v154[7] >= 0)
  {
    v45 = buf;
  }

  else
  {
    v45 = *buf;
  }

  v46 = [NSString stringWithUTF8String:v45];
  if ((v154[7] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v142 = v46;
  v47 = 1;
LABEL_79:
  v137 = [NSString stringWithFormat:@"%dms", *(a2 + 224)];
  v49 = *(a2 + 240);
  v48 = *(a2 + 244);
  if (*(a2 + 240))
  {
    v50 = (v48 + v49);
    LODWORD(v101) = (v48 / v50 * 100.0);
    HIDWORD(v101) = (v49 / v50 * 100.0);
  }

  else
  {
    v101 = 0;
  }

  v51 = *(a2 + 280);
  if (v51)
  {
    v52 = vmovn_s64(vcvtq_u64_f64(vmulq_f64(vdivq_f64(vcvtq_f64_u64(*(a2 + 264)), vdupq_lane_s64(COERCE__INT64(v51), 0)), vdupq_n_s64(0x4059000000000000uLL))));
  }

  else
  {
    v52 = 0;
  }

  v53 = *(a2 + 296);
  v136 = v52;
  if (v53)
  {
    v100 = (*(a2 + 288) / v53 * 100.0);
  }

  else
  {
    v100 = 0;
  }

  v54 = *(a2 + 232);
  sub_100444850(a1);
  v55 = qword_100BCE8D8;
  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
  {
    v56 = *(a2 + 172);
    v57 = *(a2 + 200);
    if (v57)
    {
      v57 = *(a2 + 192) / v57;
    }

    v59 = *(a2 + 216);
    v58 = *(a2 + 220);
    v60 = *(a2 + 240);
    v61 = *(a2 + 244);
    *buf = 67112192;
    *&buf[4] = v56;
    v151 = 1024;
    v152 = v132;
    v153 = 1024;
    *v154 = v134;
    *&v154[4] = 1024;
    *&v154[6] = v130;
    *v155 = 1024;
    *&v155[2] = 0;
    v156 = 1024;
    v157 = v5;
    v158 = 1024;
    v159 = v128;
    v160 = 1024;
    v161 = v98;
    v162 = 1024;
    v163 = v57;
    v164 = 1024;
    v165 = v58;
    v166 = 1024;
    v167 = v59;
    v168 = 1024;
    v169 = v60;
    v170 = 1024;
    v171 = v61;
    _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "Sending HFPLinkQuality stats: Codec = %u, DurationInMinutes = %u, PlcUsage = %u, MissingSCORate = %u, SilenceCycleRate = %u,[TotalFrameCount = %u, ExpectedSCOCount = %u, MissingSCOCount = %u] RssiAverage = %d, ReTransmission_RX = %u, ReTransmission_TX = %u 2GDurationSecs = %u 5GDurationSecs = %u", buf, 0x50u);
  }

  v148[0] = @"AvgMaxGoodPcktsPerSwitch";
  v129 = [NSNumber numberWithUnsignedInt:v138.u32[0]];
  v149[0] = v129;
  v148[1] = @"AvgMinGoodPcktsPerSwitch";
  v139 = [NSNumber numberWithUnsignedInt:v138.u32[1]];
  v149[1] = v139;
  v148[2] = @"AvgPacketsPerSwitch";
  v99 = [NSNumber numberWithUnsignedInt:v37];
  v149[2] = v99;
  v148[3] = @"AvgSwitchesPerSecond";
  v97 = [NSNumber numberWithUnsignedInt:v38];
  v149[3] = v97;
  v148[4] = @"BtRole";
  v96 = [NSNumber numberWithUnsignedChar:*(a2 + 161)];
  v149[4] = v96;
  v148[5] = @"CallCreationTime";
  v95 = [NSNumber numberWithUnsignedLongLong:*(a2 + 224)];
  v149[5] = v95;
  v149[6] = v126;
  v148[6] = @"CallType";
  v148[7] = @"Codec";
  v127 = [NSNumber numberWithUnsignedInt:*(a2 + 172)];
  v149[7] = v127;
  v148[8] = @"CpuNorm";
  v94 = [NSNumber numberWithUnsignedInt:v25];
  v149[8] = v94;
  v148[9] = @"Desense";
  v93 = [NSNumber numberWithBool:0];
  v149[9] = v93;
  v148[10] = @"DurationInMinutes";
  v133 = [NSNumber numberWithUnsignedInt:v132];
  v149[10] = v133;
  v148[11] = @"EpaCallTimeRatio";
  v125 = [NSNumber numberWithUnsignedInt:v124];
  v149[11] = v125;
  v148[12] = @"EpaPacketRatio";
  v123 = [NSNumber numberWithUnsignedInt:v122];
  v149[12] = v123;
  v149[13] = v137;
  v148[13] = @"eSCOCreationTime";
  v148[14] = @"eSCOSetupFailure";
  v92 = [NSNumber numberWithInt:v54];
  v149[14] = v92;
  v149[15] = v142;
  v148[15] = @"FWVersion";
  v148[16] = @"HDRSession";
  v91 = [NSNumber numberWithBool:*(a2 + 236)];
  v149[16] = v91;
  v148[17] = @"IsAppleAudioDevice";
  v90 = [NSNumber numberWithBool:v47];
  v149[17] = v90;
  v148[18] = @"MissingSCORate";
  v131 = [NSNumber numberWithUnsignedInt:v130];
  v149[18] = v131;
  v148[19] = @"NoiseFloor50Max";
  v89 = [NSNumber numberWithInt:*(a2 + 4)];
  v149[19] = v89;
  v148[20] = @"NoiseFloor50Percentile";
  v121 = [NSNumber numberWithInt:v120];
  v149[20] = v121;
  v148[21] = @"NoiseFloor90Max";
  v88 = [NSNumber numberWithInt:*(a2 + 20)];
  v149[21] = v88;
  v148[22] = @"NoiseFloor90Percentile";
  v119 = [NSNumber numberWithInt:v118];
  v149[22] = v119;
  v148[23] = @"NoiseFloorAverageGoodChannels";
  v117 = [NSNumber numberWithInt:v116];
  v149[23] = v117;
  v148[24] = @"PercentPacketsAnt0";
  v115 = [NSNumber numberWithUnsignedInt:v114];
  v149[24] = v115;
  v148[25] = @"PercentPacketsAnt1";
  v113 = [NSNumber numberWithUnsignedInt:v112];
  v149[25] = v113;
  v148[26] = @"PercentPacketsTxBF";
  v87 = [NSNumber numberWithUnsignedInt:v2];
  v149[26] = v87;
  v148[27] = @"PlcUsage";
  v135 = [NSNumber numberWithUnsignedInt:v134];
  v149[27] = v135;
  v148[28] = @"ProductID";
  v86 = [NSNumber numberWithUnsignedInt:v146];
  v149[28] = v86;
  v148[29] = @"RssiAverage";
  v62 = *(a2 + 200);
  if (v62)
  {
    v63 = *(a2 + 192) / v62;
  }

  else
  {
    v63 = 0;
  }

  v85 = [NSNumber numberWithInt:v63];
  v149[29] = v85;
  v148[30] = @"RssiMax";
  v84 = [NSNumber numberWithInt:*(a2 + 208)];
  v149[30] = v84;
  v148[31] = @"RssiMin";
  v83 = [NSNumber numberWithInt:*(a2 + 204)];
  v149[31] = v83;
  v148[32] = @"ReTransmission_RX";
  v82 = [NSNumber numberWithUnsignedInt:*(a2 + 220)];
  v149[32] = v82;
  v148[33] = @"ReTransmission_TX";
  v81 = [NSNumber numberWithUnsignedInt:*(a2 + 216)];
  v149[33] = v81;
  v148[34] = @"RxNormFirstRXWindow";
  v109 = [NSNumber numberWithUnsignedInt:v108];
  v149[34] = v109;
  v148[35] = @"RxNormSecondRXWindow";
  v107 = [NSNumber numberWithUnsignedInt:v106];
  v149[35] = v107;
  v149[36] = v140;
  v148[36] = @"SanitizedDeviceName";
  v148[37] = @"SessionType";
  v149[37] = v110;
  v148[38] = @"SilenceCycleRate";
  v111 = [NSNumber numberWithUnsignedInt:0];
  v149[38] = v111;
  v148[39] = @"TxNormFirstTXWindow";
  v105 = [NSNumber numberWithUnsignedInt:v104];
  v149[39] = v105;
  v148[40] = @"TxNormSecondTXWindow";
  v103 = [NSNumber numberWithUnsignedInt:v102];
  v149[40] = v103;
  v148[41] = @"VendorID";
  v80 = [NSNumber numberWithUnsignedInt:v147];
  v149[41] = v80;
  v148[42] = @"VersionIDSource";
  v79 = [NSNumber numberWithUnsignedInt:HIDWORD(v147)];
  v149[42] = v79;
  v148[43] = @"Version";
  v78 = [NSNumber numberWithUnsignedInt:HIDWORD(v146)];
  v149[43] = v78;
  v148[44] = @"Interval_Bin_00_7point5ms";
  v77 = [NSNumber numberWithUnsignedChar:a1[532]];
  v149[44] = v77;
  v148[45] = @"Interval_Bin_01_11point25ms";
  v76 = [NSNumber numberWithUnsignedChar:a1[533]];
  v149[45] = v76;
  v148[46] = @"Interval_Bin_02_15ms";
  v75 = [NSNumber numberWithUnsignedChar:a1[534]];
  v149[46] = v75;
  v148[47] = @"Interval_Bin_Other";
  v64 = [NSNumber numberWithInt:a1[530] + a1[531] - (a1[532] + a1[533] + a1[534])];
  v149[47] = v64;
  v148[48] = @"BTBand";
  if (*(a2 + 159) >= 0)
  {
    v65 = a2 + 136;
  }

  else
  {
    v65 = *(a2 + 136);
  }

  v66 = [NSString stringWithUTF8String:v65];
  v149[48] = v66;
  v148[49] = @"TipiConnected";
  v67 = [NSNumber numberWithBool:*(a2 + 160)];
  v149[49] = v67;
  v148[50] = @"IsAoSCall";
  v68 = [NSNumber numberWithBool:*(a2 + 237)];
  v149[50] = v68;
  v148[51] = @"2GDurationPercentage";
  v69 = [NSNumber numberWithUnsignedInt:HIDWORD(v101)];
  v149[51] = v69;
  v148[52] = @"5GDurationPercentage";
  v70 = [NSNumber numberWithUnsignedInt:v101];
  v149[52] = v70;
  v148[53] = @"TxFlushPercentage";
  v71 = [NSNumber numberWithUnsignedInt:v136.u32[0]];
  v149[53] = v71;
  v148[54] = @"TxConsecFlushPercentage";
  v72 = [NSNumber numberWithUnsignedInt:v136.u32[1]];
  v149[54] = v72;
  v148[55] = @"RxCRCErrorPercentage";
  v73 = [NSNumber numberWithUnsignedInt:v100];
  v149[55] = v73;
  v74 = [NSDictionary dictionaryWithObjects:v149 forKeys:v148 count:56];

  sub_10003BA40(a1, 96, v74);
  if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v145.__r_.__value_.__l.__data_);
  }
}

void sub_100445BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, void *a63)
{
  if (*(v66 - 185) < 0)
  {
    operator delete(*(v66 - 208));
  }

  if (a66 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100445FA0(uint64_t a1, unsigned int *a2)
{
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
  {
    sub_10082CB38();
  }

  v8[0] = @"HeadTrackingTransition";
  if (*(a2 + 31) >= 0)
  {
    v4 = a2 + 2;
  }

  else
  {
    v4 = *(a2 + 1);
  }

  v5 = [NSString stringWithUTF8String:v4];
  v8[1] = @"WxProductID";
  v9[0] = v5;
  v6 = [NSNumber numberWithUnsignedInt:*a2];
  v9[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  sub_10003BA40(a1, 95, v7);
}

void sub_1004460F0(uint64_t a1, uint64_t *a2)
{
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    if (*(a2 + 47) >= 0)
    {
      v6 = a2 + 3;
    }

    else
    {
      v6 = a2[3];
    }

    v7 = *(a2 + 12);
    if (*(a2 + 79) >= 0)
    {
      v8 = a2 + 7;
    }

    else
    {
      v8 = a2[7];
    }

    *buf = 136315906;
    v23 = v5;
    v24 = 2080;
    v25 = v6;
    v26 = 1024;
    v27 = v7;
    v28 = 2080;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Spatial Setting submitting following CA metric: AudioCategory:%s SpatialTransition:%s WxProductID:%u BundleID:%s", buf, 0x26u);
  }

  v20[0] = @"AudioCategory";
  if (*(a2 + 23) >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  v10 = [NSString stringWithUTF8String:v9, v20[0]];
  v21[0] = v10;
  v20[1] = @"SpatialTransition";
  if (*(a2 + 47) >= 0)
  {
    v11 = a2 + 3;
  }

  else
  {
    v11 = a2[3];
  }

  v12 = [NSString stringWithUTF8String:v11];
  v21[1] = v12;
  v20[2] = @"WxProductID";
  v13 = [NSNumber numberWithUnsignedInt:*(a2 + 12)];
  v21[2] = v13;
  v20[3] = @"BundleID";
  v16 = a2[7];
  v15 = a2 + 7;
  v14 = v16;
  if (*(v15 + 23) >= 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  v18 = [NSString stringWithUTF8String:v17];
  v21[3] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:4];

  sub_10003BA40(a1, 132, v19);
}

void sub_100446350(uint64_t a1, uint64_t *a2)
{
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (*(a2 + 47) >= 0)
    {
      v5 = a2 + 3;
    }

    else
    {
      v5 = a2[3];
    }

    if (*(a2 + 71) >= 0)
    {
      v6 = a2 + 6;
    }

    else
    {
      v6 = a2[6];
    }

    v7 = *(a2 + 18);
    v8 = *(a2 + 19);
    v9 = *(a2 + 20);
    if (*(a2 + 111) >= 0)
    {
      v10 = a2 + 11;
    }

    else
    {
      v10 = a2[11];
    }

    v11 = *(a2 + 28);
    v12 = *(a2 + 29);
    v13 = *(a2 + 30);
    if (*(a2 + 151) >= 0)
    {
      v14 = a2 + 16;
    }

    else
    {
      v14 = a2[16];
    }

    v15 = *(a2 + 38);
    *buf = 136317954;
    v39 = v4;
    v40 = 2080;
    v41 = v5;
    v42 = 2080;
    v43 = v6;
    v44 = 1024;
    v45 = v7;
    v46 = 1024;
    v47 = v8;
    v48 = 1024;
    v49 = v9;
    v50 = 2080;
    v51 = v10;
    v52 = 1024;
    v53 = v11;
    v54 = 1024;
    v55 = v12;
    v56 = 1024;
    v57 = v13;
    v58 = 2080;
    v59 = v14;
    v60 = 1024;
    v61 = v15;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "HeadtrackedSpatial Setting submitting following CA metric: fAccessHTTransition: %s fAudioCategory: %s fBundleID: %s fCurrAccessHTSetting: %d fCurrHeadTrackingSetting: %d fCurrSpatialSetting: %d fHeadTrackingTransition: %s fPrevAccessHTSetting: %d fPrevHeadTrackingSetting: %d fPrevSpatialSetting: %d fSpatialTransition: %s fWxProductID: %u", buf, 0x5Eu);
  }

  v36[0] = @"AccessHTTransition";
  if (*(a2 + 23) >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  v35 = [NSString stringWithUTF8String:v16, a1];
  v37[0] = v35;
  v36[1] = @"AudioCategory";
  if (*(a2 + 47) >= 0)
  {
    v17 = a2 + 3;
  }

  else
  {
    v17 = a2[3];
  }

  v34 = [NSString stringWithUTF8String:v17];
  v37[1] = v34;
  v36[2] = @"BundleID";
  if (*(a2 + 71) >= 0)
  {
    v18 = a2 + 6;
  }

  else
  {
    v18 = a2[6];
  }

  v33 = [NSString stringWithUTF8String:v18];
  v37[2] = v33;
  v36[3] = @"CurrAccessHTSetting";
  v19 = [NSNumber numberWithInt:*(a2 + 18)];
  v37[3] = v19;
  v36[4] = @"CurrHeadTrackingSetting";
  v20 = [NSNumber numberWithInt:*(a2 + 19)];
  v37[4] = v20;
  v36[5] = @"CurrSpatialSetting";
  v21 = [NSNumber numberWithInt:*(a2 + 20)];
  v37[5] = v21;
  v36[6] = @"HeadTrackingTransition";
  if (*(a2 + 111) >= 0)
  {
    v22 = a2 + 11;
  }

  else
  {
    v22 = a2[11];
  }

  v23 = [NSString stringWithUTF8String:v22];
  v37[6] = v23;
  v36[7] = @"PrevAccessHTSetting";
  v24 = [NSNumber numberWithInt:*(a2 + 28)];
  v37[7] = v24;
  v36[8] = @"PrevHeadTrackingSetting";
  v25 = [NSNumber numberWithInt:*(a2 + 29)];
  v37[8] = v25;
  v36[9] = @"PrevSpatialSetting";
  v26 = [NSNumber numberWithInt:*(a2 + 30)];
  v37[9] = v26;
  v36[10] = @"SpatialTransition";
  if (*(a2 + 151) >= 0)
  {
    v27 = a2 + 16;
  }

  else
  {
    v27 = a2[16];
  }

  v28 = [NSString stringWithUTF8String:v27];
  v37[10] = v28;
  v36[11] = @"WxProductID";
  v29 = [NSNumber numberWithUnsignedInt:*(a2 + 38)];
  v37[11] = v29;
  v30 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:12];

  sub_10003BA40(v32, 94, v30);
}

void sub_10044681C(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 32) - 1) < 0x3B)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(a2 + 32) / 0x3Cu;
  }

  v4 = *(a2 + 48);
  v5 = *(a2 + 52);
  v6 = v4 - 1;
  v7 = v4 / 0x3C;
  if (v6 < 0x3B)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  v9 = v5 - 1;
  v10 = v5 / 0x3C;
  if (v9 < 0x3B)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(a2 + 68) - 1;
  if (v12 > 2)
  {
    v13 = @"GUEST_UNKNOWN";
  }

  else
  {
    v13 = *(&off_100AF6E10 + v12);
  }

  v14 = *(a2 + 72) - 1;
  if (v14 > 2)
  {
    v15 = @"GUEST_NOT_APPLICABLE";
  }

  else
  {
    v15 = *(&off_100AF6E28 + v14);
  }

  v16 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a2 + 36);
    v18 = *(a2 + 40);
    v19 = *(a2 + 44);
    *buf = 67110914;
    v38 = v3;
    v39 = 1024;
    v40 = v17;
    v41 = 1024;
    v42 = v18;
    v43 = 1024;
    v44 = v19;
    v45 = 1024;
    v46 = v8;
    v47 = 1024;
    v48 = v11;
    v49 = 2112;
    v50 = v13;
    v51 = 2112;
    v52 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Wireless Splitter submitting following CA metric: totalDurationSharingSessionMinuite:%um totalSiriActivationDuringSession:%u Sessions fTotalIncomingCallsDuringSessio:%u Calls fTotalOutgoingCallsDuringSession:%u Calls totalMusicPlaybackDurationMinuite:%um totalVideoPlaybackDurationMinuite:%um sharingSessionStart:%@, sharingSessionStop:%@", buf, 0x3Au);
  }

  v35[0] = @"totalDurationSessionMinuite";
  v20 = [NSNumber numberWithUnsignedInt:v3];
  v36[0] = v20;
  v35[1] = @"totalSiriActivaton";
  v21 = [NSNumber numberWithUnsignedInt:*(a2 + 36)];
  v36[1] = v21;
  v35[2] = @"totalIncomingCalls";
  v22 = [NSNumber numberWithUnsignedInt:*(a2 + 40)];
  v36[2] = v22;
  v35[3] = @"totalOutgoingCalls";
  v23 = [NSNumber numberWithUnsignedInt:*(a2 + 44)];
  v36[3] = v23;
  v35[4] = @"musicPlaybackDurationMinuite";
  v24 = [NSNumber numberWithUnsignedInt:v8];
  v36[4] = v24;
  v35[5] = @"videoPlaybackDurationMinuite";
  v25 = [NSNumber numberWithUnsignedInt:v11];
  v36[5] = v25;
  v36[6] = &off_100B33870;
  v35[6] = @"failureToAggregateAudio";
  v35[7] = @"failureToConnectToGuest";
  v36[7] = &off_100B33870;
  v36[8] = &off_100B33870;
  v35[8] = @"authFailureToGuest";
  v35[9] = @"sharingSessionStart";
  v36[9] = v13;
  v36[10] = v15;
  v35[10] = @"sharingSessionStop";
  v35[11] = @"ownerGuestWxProductID";
  if (*(a2 + 151) >= 0)
  {
    v26 = a2 + 128;
  }

  else
  {
    v26 = *(a2 + 128);
  }

  v27 = [NSString stringWithUTF8String:v26];
  v36[11] = v27;
  v35[12] = @"errorCode";
  v30 = *(a2 + 152);
  v29 = a2 + 152;
  v28 = v30;
  if (*(v29 + 23) >= 0)
  {
    v31 = v29;
  }

  else
  {
    v31 = v28;
  }

  v32 = [NSString stringWithUTF8String:v31];
  v36[12] = v32;
  v33 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:13];

  sub_10003BA40(a1, 134, v33);
}

void sub_100446C1C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v14[0] = @"MFGModel";
  v9 = [NSString stringWithUTF8String:a2];
  v15[0] = v9;
  v14[1] = @"Result";
  v10 = [NSNumber numberWithUnsignedLongLong:a3];
  v15[1] = v10;
  v14[2] = @"Script";
  v11 = [NSString stringWithUTF8String:a4];
  v15[2] = v11;
  v14[3] = @"DurationInMs";
  v12 = [NSNumber numberWithUnsignedLongLong:a5];
  v15[3] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];

  sub_10003BA40(a1, 101, v13);
}

void sub_100446DB8(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = sub_10000E92C();
    sub_100007E30(v10, "BtMetricsCache");
    sub_100007E30(__p, "FirmwareErrorCount");
    (*(*v2 + 136))(v2, v10, __p, 0);
  }

  else
  {
    v7 = 0;
    v3 = sub_10000E92C();
    sub_100007E30(v10, "BtMetricsCache");
    sub_100007E30(__p, "FirmwareErrorCount");
    v4 = (*(*v3 + 128))(v3, v10, __p, &v7);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    if (v11 < 0)
    {
      operator delete(v10[0]);
    }

    if (v4)
    {
      v5 = v7 + 1;
    }

    else
    {
      v5 = 1;
    }

    v7 = v5;
    v6 = sub_10000E92C();
    sub_100007E30(v10, "BtMetricsCache");
    sub_100007E30(__p, "FirmwareErrorCount");
    (*(*v6 + 136))(v6, v10, __p, v7);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v11 < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_100446F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_100446F98(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t *a4)
{
  v6 = a2;
  __p = 0;
  v21 = 0;
  v22 = 0;
  v8 = sub_10009BD9C(a1, a2);
  v9 = (*(*v8 + 64))(v8, &__p);
  v10 = v9;
  v11 = sub_100447280(v9, v6);
  if (*(a4 + 23) >= 0)
  {
    v12 = a4;
  }

  else
  {
    v12 = *a4;
  }

  v13 = [NSString stringWithUTF8String:v12];
  if (![(__CFString *)v13 length])
  {

    v13 = @"Unknown";
  }

  v14 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = v11;
    v27 = 1024;
    v28 = a3;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sending FWError to CoreAnalytics Type : %@ , ErrorCode: %d", buf, 0x12u);
  }

  if (v10)
  {
    goto LABEL_9;
  }

  if (SHIBYTE(v22) < 0)
  {
    if (v21)
    {
      p_p = __p;
      goto LABEL_15;
    }
  }

  else if (HIBYTE(v22))
  {
    p_p = &__p;
LABEL_15:
    v15 = +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", p_p, +[NSString defaultCStringEncoding]);
    goto LABEL_16;
  }

LABEL_9:
  v15 = @"Unknown";
LABEL_16:
  v24[0] = v11;
  v23[0] = @"FWErrorType";
  v23[1] = @"ErrorCode";
  v17 = [NSNumber numberWithUnsignedLongLong:a3];
  v24[1] = v17;
  v24[2] = v13;
  v23[2] = @"ErrorReason";
  v23[3] = @"FirmwareVersion";
  v24[3] = v15;
  v18 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];

  sub_10003BA40(a1, 90, v18);
  if (v6 <= 0x19 && ((1 << v6) & 0x2002D9B) != 0)
  {
    sub_1004472A4(v19, v18);
  }

  sub_100446DB8(v19, 0);

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }
}

void sub_100447210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const __CFString *sub_100447280(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x19)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_100AF6E40 + a2);
  }
}

void sub_1004472A4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = sub_10000E92C();
  v4 = (*(*v3 + 656))(v3);
  v5 = qword_100BCE8D8;
  v6 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Notifying BT Firmware Crashed", buf, 2u);
    }

    v7 = [NSMutableDictionary dictionaryWithDictionary:v2];
    [v7 setObject:@"FWCrashed" forKeyedSubscript:@"_input"];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100473854;
    v9[3] = &unk_100AF6AA0;
    v10 = objc_alloc_init(BTServicesClient);
    v8 = v10;
    [v8 diagnosticControl:v7 completion:v9];
  }

  else if (v6)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Not Notifying BT Firmware Crashed", buf, 2u);
  }
}

void sub_10044742C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

uint64_t sub_10044746C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 0;
  if (sub_1000E2140(a2, 0xCu) || (result = sub_100539FE8(a2), result))
  {
    sub_1000C2364(a2, &v5 + 1, &v5, &v4, &v4 + 1);
    return v4;
  }

  return result;
}

void sub_1004474D0(uint64_t a1, uint64_t a2)
{
  if (qword_100B540F0 != -1)
  {
    sub_10082CBCC();
  }

  v3 = qword_100B540E8;

  sub_10036C25C(v3, a2);
}

void sub_100447514(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v6 = a2;
  v8 = sub_100066098(a1, a2);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1004475AC;
  v9[3] = &unk_100AEAF08;
  v9[4] = a1;
  v12 = v6;
  v10 = a3;
  v11 = a4;
  sub_10000CA94(v8, v9);
}

void sub_1004475AC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    ++*(v1 + 1088);
    v2 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 1088);
      v13 = 67109120;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "ReportConnectionRequestStallStats successCount: %d", &v13, 8u);
    }
  }

  else
  {
    v19[0] = @"SuccessCount";
    v5 = [NSNumber numberWithUnsignedInt:*(v1 + 1088)];
    v20[0] = v5;
    v19[1] = @"VID";
    v6 = [NSNumber numberWithUnsignedInt:*(a1 + 40)];
    v20[1] = v6;
    v19[2] = @"PID";
    v7 = [NSNumber numberWithUnsignedInt:*(a1 + 44)];
    v20[2] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:3];

    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(v1 + 1088);
      v11 = *(a1 + 40);
      v12 = *(a1 + 44);
      v13 = 67109632;
      v14 = v10;
      v15 = 1024;
      v16 = v11;
      v17 = 1024;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ReportConnectionRequestStallStats connectionRequestFail sending metrics: successCount %d, VID %d, PID %d", &v13, 0x14u);
    }

    sub_10003BA40(v1, 78, v8);
    *(v1 + 1088) = 0;
  }
}

void sub_1004477E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100017F4C(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10044785C;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000CA94(v3, v4);
}

void sub_10044785C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (qword_100B50F88 != -1)
  {
    sub_10082C974();
  }

  sub_10009DB3C(off_100B50F80, &v18);
  v3 = v18;
  v2 = v19;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  if (qword_100B50AB0 != -1)
  {
    sub_10082CBE0();
  }

  v4 = sub_100558D3C(off_100B50AA8, &v15);
  v6 = v15;
  v5 = v16;
  v8 = sub_100066098(v4, v7);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3321888768;
  v9[2] = sub_100447A30;
  v9[3] = &unk_100AF6978;
  v9[4] = v1;
  __p = 0;
  __dst = 0;
  v12 = 0;
  if (v19 != v18)
  {
    sub_1000080CC(&__p, (v19 - v18) >> 3);
  }

  v13 = (v2 - v3) >> 3;
  v14 = (v5 - v6) >> 3;
  sub_10000CA94(v8, v9);
  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }
}

void sub_1004479E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  v22 = *(v20 - 88);
  if (v22)
  {
    *(v20 - 80) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_100447A30(void *a1, uint64_t a2)
{
  v2 = a1;
  v3 = a1[4];
  v4 = a1[5];
  v3[285] = 0;
  for (i = a1[6]; v4 != i; ++v4)
  {
    v6 = *v4;
    v13 = 0;
    v7 = sub_1000BE4B4(a1, a2);
    sub_100007E30(__p, "_CTKD_");
    a1 = (*(*v7 + 784))(v7, v6, __p, &v13);
    v8 = a1 != 0;
    v9 = v13;
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if ((v8 & v9) != 0)
    {
      ++v3[285];
    }
  }

  v10 = *(v2 + 32);
  if (v10 >= 0xA)
  {
    LOWORD(v10) = 10;
  }

  v3[280] = v10;
  v3[282] = *(v2 + 33);
}

void sub_100447B48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100447B70(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void sub_100447B88(uint64_t a1, unsigned __int8 *a2, char a3, char a4)
{
  v7 = (a2[128] << 40) | (a2[129] << 32) | (a2[130] << 24) | (a2[131] << 16) | (a2[132] << 8) | a2[133];
  v8 = sub_100066098(a1, a2);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100447C4C;
  v9[3] = &unk_100AE0EF8;
  v10 = a3;
  v11 = a4;
  v9[4] = a1;
  v9[5] = v7;
  sub_10000CA94(v8, v9);
}

void *sub_100447C4C(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 49);
  v5 = sub_1002D3618(*(a1 + 40));
  v7 = v1;
  result = sub_10047FF88(v2 + 1064, v1, &unk_1008A9BD0, &v7);
  *(result + 40) = v3;
  *(result + 41) = 0;
  *(result + 42) = v4;
  *(result + 45) = BYTE2(v5);
  *(result + 43) = v5;
  return result;
}

void sub_100447CDC(uint64_t a1, uint64_t a2, int a3)
{
  sub_1004477E0(a1, a2);
  v8 = sub_100066098(v6, v7);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100447D70;
  v9[3] = &unk_100AE0880;
  v9[4] = a1;
  v9[5] = a2;
  v10 = a3;
  sub_10000CA94(v8, v9);
}

void sub_100447DB0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v26 = a2;
  v3 = *(a1 + 1072);
  if (!v3)
  {
    return;
  }

  while (1)
  {
    v6 = v3[4];
    if (v6 <= a2)
    {
      break;
    }

LABEL_5:
    v3 = *v3;
    if (!v3)
    {
      return;
    }
  }

  if (v6 < a2)
  {
    ++v3;
    goto LABEL_5;
  }

  v24[0] = 0;
  v24[1] = 0;
  v25 = 0;
  *buf = &v26;
  v7 = sub_10047FF88(a1 + 1064, &v26, &unk_1008A9BD0, buf);
  sub_10039B6BC(a1 + 320, v7 + 43, 3);
  v31[0] = @"Result";
  v8 = [NSNumber numberWithInt:a3];
  v32[0] = v8;
  v31[1] = @"PairingType";
  *buf = &v26;
  v9 = [NSNumber numberWithUnsignedChar:*(sub_10047FF88(a1 + 1064, &v26, &unk_1008A9BD0, buf) + 42)];
  v32[1] = v9;
  v31[2] = @"isLePairing";
  *buf = &v26;
  v10 = [NSNumber numberWithBool:*(sub_10047FF88(a1 + 1064, &v26, &unk_1008A9BD0, buf) + 41)];
  v32[2] = v10;
  v31[3] = @"isIncoming";
  *buf = &v26;
  v11 = [NSNumber numberWithBool:*(sub_10047FF88(a1 + 1064, &v26, &unk_1008A9BD0, buf) + 40)];
  v32[3] = v11;
  v31[4] = @"OUI";
  v12 = [NSString stringWithUTF8String:v24];
  v32[4] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:5];

  v14 = qword_100BCE8D8;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    __p[0] = &v26;
    v15 = *(sub_10047FF88(a1 + 1064, &v26, &unk_1008A9BD0, __p) + 42);
    *buf = 67109376;
    *&buf[4] = a3;
    v28 = 1024;
    v29 = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "sendPairingCompleteMetric: Result %d PairingType %d", buf, 0xEu);
  }

  sub_10003BA40(a1, 128, v13);
  if (_os_feature_enabled_impl())
  {
    if (qword_100B543A8 != -1)
    {
      sub_10082CC08();
    }

    sub_1007060B8(qword_100B543A0, v26, v13);
  }

  if (a3)
  {
    *buf = &v26;
    v16 = *(sub_10047FF88(a1 + 1064, &v26, &unk_1008A9BD0, buf) + 42);
    *buf = &v26;
    v17 = sub_10047FF88(a1 + 1064, &v26, &unk_1008A9BD0, buf);
    v18 = v24;
    if (v25 < 0)
    {
      v18 = v24[0];
    }

    v19 = [NSString stringWithFormat:@"PairType=%u, Result=%d, isIncoming=%u, OUI=%s", v16, a3, *(v17 + 40), v18];
    if (qword_100B53FE8 != -1)
    {
      sub_10082CAA0();
    }

    v20 = qword_100B53FE0;
    sub_100007E30(buf, "PairingError");
    v21 = v19;
    sub_100007E30(__p, [v19 UTF8String]);
    sub_1005780BC(v20, buf, __p, 0.0);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    if (v30 < 0)
    {
      operator delete(*buf);
    }
  }

  sub_100075DC4((a1 + 1064), &v26);

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }
}

void sub_10044821C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1004482F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100007EE8(a1, a2);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100448370;
  v4[3] = &unk_100ADF8F8;
  v4[4] = a1;
  sub_10000CA94(v3, v4);
}

void sub_100448370(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (qword_100B508C0 != -1)
  {
    sub_10082C9C4();
  }

  v2 = sub_10009DA04(off_100B508B8);
  v3 = [v2 count];
  if (qword_100B508C0 != -1)
  {
    sub_10082C9C4();
  }

  v4 = sub_1007C350C(off_100B508B8);
  if (qword_100B508D0 != -1)
  {
    sub_10082CC30();
  }

  v5 = off_100B508C8;
  sub_100007E30(v30, "A1603");
  v6 = sub_10003E9C4(v5, v30);
  v7 = [v6 mutableCopy];

  if (v31 < 0)
  {
    operator delete(v30[0]);
  }

  if (qword_100B508D0 != -1)
  {
    sub_10082CA78();
  }

  v8 = off_100B508C8;
  sub_100007E30(__p, "A2051");
  v9 = sub_10003E9C4(v8, __p);
  [v7 addObjectsFromArray:v9];

  if (v29 < 0)
  {
    operator delete(__p[0]);
  }

  if (qword_100B508D0 != -1)
  {
    sub_10082CA78();
  }

  v10 = off_100B508C8;
  sub_100007E30(v26, "A3085");
  v11 = sub_10003E9C4(v10, v26);
  [v7 addObjectsFromArray:v11];

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }

  if (qword_100B508D0 != -1)
  {
    sub_10082CA78();
  }

  v12 = off_100B508C8;
  sub_100007E30(v24, "A2538");
  v13 = sub_10003E9C4(v12, v24);
  [v7 addObjectsFromArray:v13];

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  v16 = sub_100066098(v14, v15);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1004486E8;
  v19[3] = &unk_100AF69B0;
  v22 = v1;
  v19[4] = v2;
  v23 = v3;
  v17 = v4;
  v20 = v17;
  v18 = v7;
  v21 = v18;
  sub_10000CA94(v16, v19);
}

id sub_1004486E8(uint64_t a1)
{
  v1 = *(a1 + 56);
  v1[285] = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = *v16;
    do
    {
      v5 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v15 + 1) + 8 * v5);
        if (qword_100B508D0 != -1)
        {
          sub_10082CA78();
        }

        v7 = off_100B508C8;
        sub_100007E30(__p, "_CTKD_");
        v8 = sub_10004EB40(v7, v6, __p);
        v9 = v8;
        if ((v14 & 0x80000000) == 0)
        {
          if (!v8)
          {
            goto LABEL_11;
          }

LABEL_10:
          ++v1[285];
          goto LABEL_11;
        }

        operator delete(__p[0]);
        if (v9)
        {
          goto LABEL_10;
        }

LABEL_11:
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v10 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v3 = v10;
    }

    while (v10);
  }

  v1[281] = *(a1 + 64);
  v1[283] = [*(a1 + 40) count];
  result = [*(a1 + 48) count];
  v1[284] = result;
  return result;
}

void sub_1004488C0(uint64_t a1, void *a2, int a3, int a4)
{
  v7 = a2;
  sub_1004482F4(a1, v8);
  v9 = v7;
  v11 = sub_100066098(v9, v10);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1004489C0;
  v13[3] = &unk_100AE0BC0;
  v15 = a1;
  v12 = v9;
  v14 = v12;
  v16 = a4;
  v17 = a3;
  sub_10000CA94(v11, v13);
}

void sub_1004489C0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (qword_100B508D0 != -1)
  {
    sub_10082CC30();
  }

  v3 = sub_100046458(off_100B508C8, *(a1 + 32), 0);
  v7 = v3;
  if (qword_100B508D0 != -1)
  {
    sub_10082CC30();
  }

  if (sub_1007868F4(off_100B508C8, *(a1 + 32)))
  {
    v4 = sub_1002D3618(v3);
  }

  else
  {
    v4 = 0xFFFFFF;
  }

  v5 = *(a1 + 48);
  v8 = &v7;
  v6 = sub_10047FF88(v2 + 1064, &v7, &unk_1008A9BD0, &v8);
  *(v6 + 20) = 256;
  *(v6 + 42) = v5;
  *(v6 + 45) = BYTE2(v4);
  *(v6 + 43) = v4;
  sub_100447DB0(v2, v7, *(a1 + 52));
}

void sub_100448ACC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = a4;
  v123 = a3;
  v121 = *(a2 + 128);
  v122 = *(a2 + 132);
  v120 = 0;
  v119 = 0;
  v118 = 0;
  sub_1000C2364(a2, &v120, &v119 + 1, &v118, &v119);
  if (v6 == 11)
  {
    v9 = [NSString stringWithUTF8String:sub_1005948F8(&v123)];
    *buf = 0;
    v113 = 0;
    sub_100007F88(buf, a1 + 176);
    v10 = [*(a1 + 336) objectForKey:v9];
    v11 = v10 == 0;

    if (v11)
    {
      if (a5)
      {
        v22 = &off_100B33858;
      }

      else
      {
        v22 = &off_100B33888;
      }

      v23 = [NSMutableArray arrayWithObjects:v22, &off_100B33888, 0];
      v24 = *(a1 + 344);
      *(a1 + 344) = v23;

      [*(a1 + 336) setObject:*(a1 + 344) forKeyedSubscript:v9];
    }

    else
    {
      v12 = [*(a1 + 336) objectForKeyedSubscript:v9];
      v13 = [v12 objectAtIndexedSubscript:1];
      v14 = [v13 unsignedIntValue];

      v15 = [NSNumber numberWithUnsignedInt:v14 + 1];
      v16 = [*(a1 + 336) objectForKeyedSubscript:v9];
      [v16 setObject:v15 atIndexedSubscript:1];

      if (!a5)
      {
        v17 = [*(a1 + 336) objectForKeyedSubscript:v9];
        v18 = [v17 objectAtIndexedSubscript:0];
        v19 = [v18 unsignedIntValue];

        v20 = [NSNumber numberWithUnsignedInt:v19 + 1];
        v21 = [*(a1 + 336) objectForKeyedSubscript:v9];
        [v21 setObject:v20 atIndexedSubscript:0];
      }
    }

    sub_10000801C(buf);
    if (a5)
    {
      v25 = HIDWORD(v119);
      v26 = v118;
      v27 = sub_1005948F8(&v123);
      sub_1000E5A58(a2, v126);
      if ((SBYTE7(v126[1]) & 0x80u) == 0)
      {
        v28 = v126;
      }

      else
      {
        v28 = *&v126[0];
      }

      v29 = [NSString stringWithFormat:@"VendorID=%d, ProductID=%d, Result=%d, ServiceID=%s From Device %s", v25, v26, a5, v27, v28];
      if (SBYTE7(v126[1]) < 0)
      {
        operator delete(*&v126[0]);
      }

      if (qword_100B53FE8 != -1)
      {
        sub_10082CAA0();
      }

      v30 = qword_100B53FE0;
      sub_100007E30(v126, "LEConnectionsFailure");
      v31 = v29;
      sub_100007E30(&__p, [v29 UTF8String]);
      sub_1005780BC(v30, v126, &__p, 0.0);
      if (SHIBYTE(v117) < 0)
      {
        operator delete(__p);
      }

      if (SBYTE7(v126[1]) < 0)
      {
        operator delete(*&v126[0]);
      }
    }

    sub_1000088CC(buf);
  }

  else if ((v6 - 11) > 1)
  {
    goto LABEL_37;
  }

  v32 = objc_alloc_init(NSMutableDictionary);
  v130 = 0;
  v128 = 0u;
  v129 = 0u;
  v127 = 0u;
  memset(v126, 0, sizeof(v126));
  v33 = sub_10039BB70(a1 + 320, v6);
  [v32 setObject:v33 forKey:@"Event"];

  v34 = [NSString stringWithUTF8String:sub_1005948F8(&v123)];
  [v32 setObject:v34 forKey:@"ServiceID"];

  v35 = [NSNumber numberWithInt:a5];
  [v32 setObject:v35 forKey:@"Result"];

  if (sub_1005423B4(a2, v123, v6, a5, v126))
  {
    __p = 0;
    v116 = 0;
    v117 = 0;
    sub_10039B6BC(a1 + 320, v126 + 4, 20);
    *buf = 0;
    v113 = 0;
    v114 = 0;
    sub_10039B6BC(a1 + 320, &v126[1] + 8, 20);
    if (v117 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v37 = [NSString stringWithUTF8String:p_p];
    [v32 setObject:v37 forKey:@"PrimaryHash"];

    if (v114 >= 0)
    {
      v38 = buf;
    }

    else
    {
      v38 = *buf;
    }

    v39 = [NSString stringWithUTF8String:v38];
    [v32 setObject:v39 forKey:@"SecondaryHash"];

    v111 = v128;
    v40 = [NSString stringWithUTF8String:sub_10056CB30(&v111)];
    [v32 setObject:v40 forKey:@"TypesOfDevicesConnected"];

    v41 = sub_10039B8B0(a1 + 320, SDWORD2(v127));
    [v32 setObject:v41 forKey:@"ActiveSessions"];

    v42 = sub_10039B8B0(a1 + 320, SDWORD2(v128));
    [v32 setObject:v42 forKey:@"ConnectedServices"];

    v43 = sub_10039B8B0(a1 + 320, SHIDWORD(v128));
    [v32 setObject:v43 forKey:@"PendingServices"];

    v44 = sub_10039B9DC(a1 + 320, *(&v129 + 1));
    [v32 setObject:v44 forKey:@"UserSettingsEnabled"];

    v45 = [NSNumber numberWithUnsignedChar:v129];
    [v32 setObject:v45 forKey:@"PbapObexTransportProtocol"];

    v46 = [NSNumber numberWithBool:BYTE1(v129)];
    [v32 setObject:v46 forKey:@"DidSendPbapObexUnauthorizedError"];

    v47 = [NSNumber numberWithBool:BYTE2(v130)];
    [v32 setObject:v47 forKey:@"HidServicePresent"];

    if (SHIBYTE(v114) < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v117) < 0)
    {
      operator delete(__p);
    }
  }

  sub_10003BA40(a1, 130, v32);

LABEL_37:
  if (v6 != 201 && v6 != 101)
  {
    if (v6 != 11)
    {
      return;
    }

    if (!a5)
    {
      sub_1000BE6F8(&v121, v126);
      if ((SBYTE7(v126[1]) & 0x80u) == 0)
      {
        v55 = v126;
      }

      else
      {
        v55 = *&v126[0];
      }

      v56 = [NSString stringWithUTF8String:v55];
      if (SBYTE7(v126[1]) < 0)
      {
        operator delete(*&v126[0]);
      }

      v126[0] = 0uLL;
      sub_100007F88(v126, a1 + 176);
      v57 = [*(a1 + 304) objectForKey:v56];
      v58 = v57 == 0;

      if (v58)
      {
        v59 = [NSNumber numberWithBool:sub_1000E2140(a2, 0xCu)];
        [*(a1 + 304) setObject:v59 forKeyedSubscript:v56];
      }

      sub_10000801C(v126);
      sub_1000088CC(v126);
    }

    __p = 0;
    v116 = 0;
    sub_100007F88(&__p, a1 + 240);
    sub_1000E5A58(a2, v126);
    v60 = sub_100480060(a1 + 384, v126);
    if (SBYTE7(v126[1]) < 0)
    {
      operator delete(*&v126[0]);
    }

    if (v60 != 1)
    {
      goto LABEL_78;
    }

    memset(v126, 0, 24);
    sub_1000E5A58(a2, v126);
    switch(v123)
    {
      case 1:
        if (a5)
        {
          v78 = sub_100449A10(a1 + 384, v126);
          v79 = *(v78 + 24);
          *(v78 + 24) = @"HFP Connect Failed";

          v80 = sub_100449A10(a1 + 384, v126);
          v81 = *(v80 + 32);
          *(v80 + 32) = @"HFP Failed";

          v82 = [NSNumber numberWithInt:a5];
          v83 = sub_100449A10(a1 + 384, v126);
          v84 = *(v83 + 48);
          *(v83 + 48) = v82;

          v75 = sub_100449A10(a1 + 384, v126);
          v76 = v99;
          v77 = v99;
LABEL_69:
          sub_10044A2D4(v77, v75);
LABEL_75:
          sub_100449A4C(a1, v76, a2);
          sub_1004800D4((a1 + 384), v126);
LABEL_76:
          if (SBYTE7(v126[1]) < 0)
          {
            operator delete(*&v126[0]);
          }

LABEL_78:
          sub_1000088CC(&__p);
          return;
        }

        *(sub_100449A10(a1 + 384, v126) + 4) = 1;
        break;
      case 0x10:
        if (a5)
        {
          v67 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Analytics - A2DP Failed", buf, 2u);
          }

          v68 = sub_100449A10(a1 + 384, v126);
          v69 = *(v68 + 24);
          *(v68 + 24) = @"A2DP Connect Failed";

          v70 = sub_100449A10(a1 + 384, v126);
          v71 = *(v70 + 32);
          *(v70 + 32) = @"A2DP Failed";

          v72 = [NSNumber numberWithInt:a5];
          v73 = sub_100449A10(a1 + 384, v126);
          v74 = *(v73 + 48);
          *(v73 + 48) = v72;

          v75 = sub_100449A10(a1 + 384, v126);
          v76 = v100;
          v77 = v100;
          goto LABEL_69;
        }

        *(sub_100449A10(a1 + 384, v126) + 1) = 1;
        break;
      case 0x80000:
        if (a5)
        {
          v61 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "Analytics - AACP Failed", buf, 2u);
          }

          v62 = [NSNumber numberWithInt:a5];
          v63 = sub_100449A10(a1 + 384, v126);
          v64 = *(v63 + 48);
          *(v63 + 48) = v62;

          v65 = sub_100449A10(a1 + 384, v126);
          v66 = @"AACP Failed";
        }

        else
        {
          *sub_100449A10(a1 + 384, v126) = 1;
          v65 = sub_100449A10(a1 + 384, v126);
          v66 = @"Success";
        }

        v87 = *(v65 + 32);
        *(v65 + 32) = v66;

        v88 = sub_10054E1A0(a2);
        *(sub_100449A10(a1 + 384, v126) + 3) = v88;
        v89 = *(a2 + 1045);
        *(sub_100449A10(a1 + 384, v126) + 104) = v89;
        v90 = sub_100449A10(a1 + 384, v126);
        v91 = *v90;
        v102 = *(v90 + 4);
        v101 = v91;
        v92 = *(v90 + 8);
        v93 = *(v90 + 16);
        v94 = *(v90 + 24);
        v95 = *(v90 + 32);
        *&v96 = v94;
        *(&v96 + 1) = v95;
        *&v97 = v92;
        *(&v97 + 1) = v93;
        v103 = v97;
        v104 = v96;
        v105 = *(v90 + 40);
        v106 = *(v90 + 48);
        v107 = *(v90 + 56);
        v98 = *(v90 + 79);
        v108[0] = *(v90 + 64);
        *(v108 + 15) = v98;
        v109 = *(v90 + 96);
        v110 = *(v90 + 104);
        v76 = &v101;
        goto LABEL_75;
      default:
        goto LABEL_76;
    }

    v85 = sub_100449A10(a1 + 384, v126);
    v86 = *(v85 + 32);
    *(v85 + 32) = @"Success";

    goto LABEL_76;
  }

  v124[0] = @"PID";
  v48 = [NSNumber numberWithUnsignedInt:v118];
  v125[0] = v48;
  v124[1] = @"VID";
  v49 = [NSNumber numberWithUnsignedInt:HIDWORD(v119)];
  v125[1] = v49;
  v124[2] = @"Version";
  v50 = [NSNumber numberWithUnsignedInt:v119];
  v125[2] = v50;
  v124[3] = @"IsAppleDevice";
  v51 = [NSNumber numberWithBool:sub_1000E2140(a2, 0xCu)];
  v125[3] = v51;
  v124[4] = @"Result";
  v52 = [NSNumber numberWithInt:a5];
  v125[4] = v52;
  v53 = [NSDictionary dictionaryWithObjects:v125 forKeys:v124 count:5];

  if (v6 == 201)
  {
    ++*(a1 + 134);
    v54 = 10;
  }

  else
  {
    ++*(a1 + 136);
    v54 = 93;
  }

  sub_10003BA40(a1, v54, v53);
}

void sub_10044978C(_Unwind_Exception *a1)
{
  sub_1000088CC(v3 - 208);

  _Unwind_Resume(a1);
}

uint64_t sub_100449A10(uint64_t a1, const void **a2)
{
  v4 = 0;
  v2 = *sub_1000867EC(a1, &v4, a2);
  if (!v2)
  {
    abort();
  }

  return v2 + 56;
}

void sub_100449A4C(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(a2 + 6);
  if (v5)
  {
    v45 = v5;
  }

  else
  {
    v45 = &off_100B33858;
  }

  v6 = [*(a2 + 1) length];
  v7 = *(a2 + 1);
  if (v6)
  {
    v46 = v7;
  }

  else
  {
    v46 = @"Unknown";
    *(a2 + 1) = @"Unknown";
  }

  v63[0] = @"ACLConnected";
  v64[0] = [NSNumber numberWithBool:a2[2]];
  v63[1] = @"AACPConnected";
  [NSNumber numberWithBool:*a2];
  v43 = v37 = a1;
  v64[1] = v43;
  v63[2] = @"A2DPConnected";
  v44 = [NSNumber numberWithBool:a2[1]];
  v64[2] = v44;
  v64[3] = v46;
  v63[3] = @"BundleID";
  v63[4] = @"ConnectionType";
  v64[4] = *(a2 + 2);
  v63[5] = @"DurationInMSec";
  mach_absolute_time();
  v42 = [NSNumber numberWithUnsignedLongLong:UpTicksToMilliseconds()];
  v64[5] = v42;
  v64[6] = v45;
  v63[6] = @"ErrorCode";
  v63[7] = @"ErrorReason";
  v64[7] = *(a2 + 3);
  v63[8] = @"FastConnectUsed";
  v8 = [NSNumber numberWithBool:a2[3]];
  v9 = *(a2 + 5);
  v41 = v8;
  v64[8] = v8;
  v64[9] = v9;
  v63[9] = @"FWVersion";
  v63[10] = @"HFPConnected";
  v40 = [NSNumber numberWithBool:a2[4]];
  v64[10] = v40;
  v63[11] = @"MagicPairingSuccessfull";
  v39 = [NSNumber numberWithBool:a2[5]];
  v64[11] = v39;
  v63[12] = @"PID";
  v38 = [NSNumber numberWithUnsignedInt:*(a2 + 17)];
  v64[12] = v38;
  v63[13] = @"VID";
  v10 = [NSNumber numberWithUnsignedInt:*(a2 + 16)];
  v11 = *(a2 + 7);
  v64[13] = v10;
  v64[14] = v11;
  v63[14] = @"LastSeenTimeInSec";
  v63[15] = @"Status";
  v64[15] = *(a2 + 4);
  v63[16] = @"RetryCurrent";
  v12 = [NSNumber numberWithUnsignedChar:a2[88]];
  v64[16] = v12;
  v63[17] = @"RetryMax";
  v13 = [NSNumber numberWithUnsignedChar:a2[89]];
  v36 = a3;
  v64[17] = v13;
  v63[18] = @"BasebandDuration";
  v14 = [NSNumber numberWithUnsignedShort:*(a2 + 45)];
  v64[18] = v14;
  v63[19] = @"BasebandDurationTotal";
  v15 = [NSNumber numberWithUnsignedShort:*(a2 + 46)];
  v64[19] = v15;
  v63[20] = @"BBFCStatusSource";
  v16 = [NSNumber numberWithBool:a2[94]];
  v64[20] = v16;
  v63[21] = @"TemporaryManagedPaired";
  v17 = [NSNumber numberWithBool:a2[104]];
  v64[21] = v17;
  v18 = v64[0];
  v19 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:22];
  v20 = [v19 mutableCopy];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v21 = *(a2 + 12);
  v22 = [v21 countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v22)
  {
    v23 = *v56;
    do
    {
      for (i = 0; i != v22; i = i + 1)
      {
        if (*v56 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = *(*(&v55 + 1) + 8 * i);
        v26 = [*(a2 + 12) objectForKeyedSubscript:v25];
        [v20 setObject:v26 forKeyedSubscript:v25];
      }

      v22 = [v21 countByEnumeratingWithState:&v55 objects:v62 count:16];
    }

    while (v22);
  }

  v54 = 0;
  NSAppendPrintF_safe(&v54, "Airpods Connection Stats: ");
  v27 = v54;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v28 = v20;
  v29 = [v28 countByEnumeratingWithState:&v50 objects:v61 count:16];
  if (v29)
  {
    v30 = *v51;
    do
    {
      for (j = 0; j != v29; j = j + 1)
      {
        if (*v51 != v30)
        {
          objc_enumerationMutation(v28);
        }

        v32 = *(*(&v50 + 1) + 8 * j);
        v49 = v27;
        NSAppendPrintF_safe(&v49, "%@:", v32);
        v33 = v49;

        v48 = v33;
        v34 = [v28 objectForKeyedSubscript:v32];
        NSAppendPrintF_safe(&v48, "%@  ", v34);
        v27 = v48;
      }

      v29 = [v28 countByEnumeratingWithState:&v50 objects:v61 count:16];
    }

    while (v29);
  }

  v35 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v60 = v27;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  sub_10003BA40(v37, 66, v28);
  if (_os_feature_enabled_impl())
  {
    if (qword_100B543A8 != -1)
    {
      sub_10082CC08();
    }

    sub_100705CB0(qword_100B543A0, v28, v36);
  }
}

uint64_t sub_10044A2D4(uint64_t a1, int *a2)
{
  v4 = *a2;
  *(a1 + 4) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 16) = *(a2 + 2);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 32) = *(a2 + 4);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 56) = *(a2 + 7);
  v5 = *(a2 + 4);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 64) = v5;
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

void sub_10044A38C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (!a3)
  {
    *buf = 0;
    sub_100016250(buf);
    v6 = *buf;
    v7 = *&buf[4];
    *buf = a2 + 128;
    v8 = sub_100480130(a1 + 51, (a2 + 128), &unk_1008A9BD0, buf);
    *(v8 + 40) = v6;
    *(v8 + 48) = v7;
  }

  v9 = *(a2 + 1397);
  v10 = qword_100BCE8D8;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(a2, &v94);
    v11 = v95 >= 0 ? &v94 : v94;
    *buf = 136315650;
    *&buf[4] = v11;
    *&buf[12] = 1024;
    *&buf[14] = v3;
    *&buf[18] = 1024;
    *&buf[20] = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ACL connected aclConnectCfm for device %s status %d incoming %d", buf, 0x18u);
    if (SHIBYTE(v95) < 0)
    {
      operator delete(v94);
    }
  }

  if (v9 && sub_1000E2140(a2, 0xCu))
  {
    v12 = qword_100BCE8D8;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, buf);
      v13 = (buf[23] & 0x80u) == 0 ? buf : *buf;
      LODWORD(v94) = 136315138;
      *(&v94 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Start monitoring for connection %s", &v94, 0xCu);
      if (buf[23] < 0)
      {
        operator delete(*buf);
      }
    }

    __p[0] = 0;
    __p[1] = 0;
    sub_100007F88(__p, (a1 + 30));
    sub_1000E5A58(a2, buf);
    v14 = sub_100480060((a1 + 48), buf);
    v15 = v14;
    if (buf[23] < 0)
    {
      operator delete(*buf);
      if (!v15)
      {
LABEL_21:
        v93 = 0u;
        v91 = 0u;
        memset(v92, 0, sizeof(v92));
        memset(&buf[16], 0, 32);
        *buf = 0;
        *&buf[8] = @"Unknown";

        v16 = *&buf[16];
        *&buf[16] = @"Incoming";

        v17 = *&buf[32];
        *&buf[32] = @"Pending";

        v18 = *&buf[24];
        *&buf[24] = @"NA";

        v19 = *&buf[40];
        *&buf[40] = @"NA";

        v20 = v91;
        *&v91 = 0;

        v21 = *(&v91 + 1);
        *(&v91 + 1) = &off_100B33870;
        *&v92[0] = 0;

        *(&v92[0] + 1) = mach_absolute_time();
        DWORD2(v92[1]) = -1;
        WORD6(v92[1]) = -1;
        BYTE14(v92[1]) = 0;
        v22 = [&off_100B342C0 mutableCopy];
        v23 = v93;
        *&v93 = v22;

        sub_1000E5A58(a2, &v94);
        v89[0] = &v94;
        v24 = sub_100480260(a1 + 48, &v94, &unk_1008A9BD0, v89);
        sub_10044ACB8(v24 + 56, buf);
        if (SHIBYTE(v95) < 0)
        {
          operator delete(v94);
        }
      }
    }

    else if (!v14)
    {
      goto LABEL_21;
    }

    sub_1000088CC(__p);
  }

  v94 = 0uLL;
  v95 = 0;
  sub_1000E5A58(a2, &v94);
  v89[0] = 0;
  v89[1] = 0;
  sub_100007F88(v89, (a1 + 30));
  if (sub_100480060((a1 + 48), &v94) != 1)
  {
    goto LABEL_41;
  }

  v87 = 0;
  v88 = 0;
  sub_1000C2364(a2, &v88 + 1, &v88, &v87, &v87 + 1);
  v25 = v88;
  *(sub_100449A10((a1 + 48), &v94) + 64) = v25;
  v26 = v87;
  *(sub_100449A10((a1 + 48), &v94) + 68) = v26;
  sub_1000E2D2C(a2, 0xAu, buf);
  if ((buf[23] & 0x80u) == 0)
  {
    v27 = buf;
  }

  else
  {
    v27 = *buf;
  }

  v28 = [NSString stringWithUTF8String:v27];
  v29 = sub_100449A10((a1 + 48), &v94);
  v30 = *(v29 + 40);
  *(v29 + 40) = v28;

  if (buf[23] < 0)
  {
    operator delete(*buf);
    if (v3)
    {
      goto LABEL_31;
    }
  }

  else if (v3)
  {
LABEL_31:
    v31 = *(sub_100449A10((a1 + 48), &v94) + 88);
    v32 = *(sub_100449A10((a1 + 48), &v94) + 89);
    v33 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = v31;
      *&buf[8] = 1024;
      *&buf[10] = v32;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Analytics - ACL Connection Failed retryCurrent=%d retryMax=%d", buf, 0xEu);
    }

    if (v31 == v32)
    {
      v34 = sub_100449A10((a1 + 48), &v94);
      v35 = *(v34 + 24);
      *(v34 + 24) = @"ACL Connect Failed";

      v36 = sub_100449A10((a1 + 48), &v94);
      v37 = *(v36 + 32);
      *(v36 + 32) = @"Failed";

      v38 = [NSNumber numberWithInt:v3];
      v39 = sub_100449A10((a1 + 48), &v94);
      v40 = *(v39 + 48);
      *(v39 + 48) = v38;

      v93 = 0u;
      v91 = 0u;
      memset(v92, 0, sizeof(v92));
      memset(buf, 0, sizeof(buf));
      sub_1000E5A58(a2, __p);
      v71 = v3;
      v41 = sub_100449A10((a1 + 48), __p);
      v42 = *v41;
      *&buf[4] = *(v41 + 4);
      *buf = v42;
      v43 = *(v41 + 8);
      v44 = *(v41 + 16);
      v45 = *(v41 + 24);
      v46 = *(v41 + 32);
      *&v47 = v45;
      *(&v47 + 1) = v46;
      v69 = v43;
      *&v48 = v43;
      *(&v48 + 1) = v44;
      v67 = v48;
      v68 = v47;
      *&buf[8] = v48;
      *&buf[24] = v47;
      v49 = *(v41 + 40);
      *&buf[40] = v49;
      v50 = *(v41 + 48);
      *&v91 = v50;
      v51 = *(v41 + 56);
      *(&v91 + 1) = v51;
      v52 = *(v41 + 79);
      v92[0] = *(v41 + 64);
      *(v92 + 15) = v52;
      v53 = *(v41 + 96);
      *&v93 = v53;
      v54 = *(v41 + 104);
      BYTE8(v93) = v54;
      if (v83 < 0)
      {
        operator delete(__p[0]);
      }

      v72 = *buf;
      v73 = *&buf[4];
      v66 = v69;
      v70 = v44;
      v55 = v45;
      v56 = v46;
      v75 = v68;
      v74 = v67;
      v57 = v49;
      v76 = v57;
      v58 = v50;
      v77 = v58;
      v59 = v51;
      v78 = v59;
      v79[0] = v92[0];
      *(v79 + 15) = *(v92 + 15);
      v60 = v53;
      v80 = v60;
      v81 = v54;
      sub_100449A4C(a1, &v72, a2);

      LODWORD(v3) = v71;
    }

    sub_1004800D4(a1 + 48, &v94);
    goto LABEL_41;
  }

  v61 = sub_100449A10((a1 + 48), &v94);
  *(v61 + 2) = 1;
  __p[0] = 0;
  v85 = 0;
  v86 = 0;
  v84 = 0;
  memset(buf, 0, 24);
  v63 = sub_1004329F8(v61, v62);
  (*(*v63 + 32))(v63, __p, &v86, &v85, &v84, buf);
  v64 = v85;
  *(sub_100449A10((a1 + 48), &v94) + 92) = v64;
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

LABEL_41:
  sub_10000801C(v89);
  v65 = _os_feature_enabled_impl() ^ 1;
  if (v3)
  {
    LOBYTE(v65) = 1;
  }

  if ((v65 & 1) == 0)
  {
    ((*a1)[39])(a1, a2, 1);
  }

  sub_1000088CC(v89);
  if (SHIBYTE(v95) < 0)
  {
    operator delete(v94);
  }
}

void sub_10044ABC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  if (*(v42 - 105) < 0)
  {
    operator delete(*(v42 - 128));
  }

  sub_10044AD64((v42 - 240));
  sub_1000088CC(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_10044ACB8(uint64_t a1, int *a2)
{
  v4 = *a2;
  *(a1 + 4) = *(a2 + 2);
  *a1 = v4;
  objc_storeStrong((a1 + 8), *(a2 + 1));
  objc_storeStrong((a1 + 16), *(a2 + 2));
  objc_storeStrong((a1 + 24), *(a2 + 3));
  objc_storeStrong((a1 + 32), *(a2 + 4));
  objc_storeStrong((a1 + 40), *(a2 + 5));
  objc_storeStrong((a1 + 48), *(a2 + 6));
  objc_storeStrong((a1 + 56), *(a2 + 7));
  v5 = *(a2 + 4);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 64) = v5;
  objc_storeStrong((a1 + 96), *(a2 + 12));
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

void sub_10044ADD0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = qword_100BCE8D8;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000C23E0(a2, __p);
    v7 = v19 >= 0 ? __p : __p[0];
    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "updateAirpodsConnectionMetricDevice FastConnect for device %s", buf, 0xCu);
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v19 = 0;
  sub_1000E5A58(a2, __p);
  *buf = 0uLL;
  sub_100007F88(buf, a1 + 240);
  if (sub_100480060(a1 + 384, __p) == 1)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          v13 = [v8 objectForKeyedSubscript:{v12, v14}];
          [*(sub_100449A10(a1 + 384 __p) + 96)];
        }

        v9 = [v8 countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v9);
    }
  }

  sub_10000801C(buf);
  sub_1000088CC(buf);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10044AFEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_1000088CC(v25 - 112);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10044B058(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (sub_100011690(v4, v5))
  {
    if (*a2 == 7)
    {
      v8 = *(a2 + 16);
      v6 = (a2 + 16);
      v7 = v8;
      v9 = *(v8 + 16);
      v10 = *(v8 + 1);
      if (v10 - 1 > 0xB)
      {
        v11 = 0;
      }

      else
      {
        v11 = word_1008A7CEA[38 * v10 + 2];
      }

      switch(v9)
      {
        case 0:
        case 1:
        case 2:
        case 4:
        case 5:
        case 11:
          break;
        case 3:
          if (v11 >= 0xA1)
          {
            v158 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
            {
              sub_10082D380(v158, v159, v160, v161, v162, v163, v164, v165);
            }

            v7 = *v6;
          }

          v394 = 0u;
          v392 = 0u;
          memset(v393, 0, sizeof(v393));
          v391 = 0u;
          v389 = 0u;
          memset(v390, 0, sizeof(v390));
          memcpy(&v389, v7, v11);
          v166 = [NSNumber numberWithUnsignedShort:WORD5(v390[0])];
          [v4 setObject:v166 forKeyedSubscript:@"time_to_r1scanstart_utp"];

          v167 = [NSNumber numberWithUnsignedShort:WORD6(v390[0])];
          [v4 setObject:v167 forKeyedSubscript:@"time_to_rxsecpage_utp"];

          v168 = [NSNumber numberWithUnsignedShort:HIWORD(v390[0])];
          [v4 setObject:v168 forKeyedSubscript:@"time_to_conncompl_utp"];

          v169 = [NSNumber numberWithUnsignedShort:LOWORD(v390[1])];
          [v4 setObject:v169 forKeyedSubscript:@"time_to_txpage_src"];

          v170 = [NSNumber numberWithUnsignedShort:WORD1(v390[1])];
          [v4 setObject:v170 forKeyedSubscript:@"time_to_extraconnect_src"];

          v171 = [NSNumber numberWithUnsignedShort:WORD2(v390[1])];
          [v4 setObject:v171 forKeyedSubscript:@"time_to_earlyconnect_src"];

          v172 = [NSNumber numberWithUnsignedShort:WORD3(v390[1])];
          [v4 setObject:v172 forKeyedSubscript:@"time_to_magicpairing_src"];

          v173 = [NSNumber numberWithUnsignedShort:WORD4(v390[1])];
          [v4 setObject:v173 forKeyedSubscript:@"time_to_conncompl_src"];

          v174 = [NSNumber numberWithUnsignedShort:WORD5(v390[1])];
          [v4 setObject:v174 forKeyedSubscript:@"time_to_buds_in_ear"];

          v175 = [NSNumber numberWithUnsignedShort:WORD6(v390[1])];
          [v4 setObject:v175 forKeyedSubscript:@"connection_direction"];

          if (v10 >= 9)
          {
            sub_10044042C(v176, @"boot_time_event_durations", 20, 2, &v390[1] + 14, v4, 0);
            sub_10044042C(v177, @"boot_time_event_ids", 20, 1, &v391 + 6, v4, 0);
            v178 = [NSNumber numberWithUnsignedInt:*(&v392 + 10)];
            [v4 setObject:v178 forKeyedSubscript:@"nvram_generation_count"];

            v179 = [NSNumber numberWithUnsignedChar:BYTE14(v392)];
            [v4 setObject:v179 forKeyedSubscript:@"flash_vendor"];

            v180 = [NSNumber numberWithUnsignedChar:HIBYTE(v392)];
            [v4 setObject:v180 forKeyedSubscript:@"boot_type"];

            v181 = [NSNumber numberWithUnsignedChar:LOBYTE(v393[0])];
            [v4 setObject:v181 forKeyedSubscript:@"case_findmy_paired_st"];

            v182 = [NSNumber numberWithUnsignedChar:BYTE1(v393[0])];
            [v4 setObject:v182 forKeyedSubscript:@"other_findmy_paired_st"];

            v183 = [NSNumber numberWithUnsignedChar:BYTE2(v393[0])];
            [v4 setObject:v183 forKeyedSubscript:@"self_findmy_paired_st"];

            sub_10044042C(v184, @"unused_bytes_2", 11, 1, v393 + 3, v4, 0);
          }

          break;
        case 6:
          if (v11 >= 0xA1)
          {
            v185 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
            {
              sub_10082D308(v185, v186, v187, v188, v189, v190, v191, v192);
            }

            v7 = *v6;
          }

          v394 = 0u;
          v392 = 0u;
          memset(v393, 0, sizeof(v393));
          v391 = 0u;
          v389 = 0u;
          memset(v390, 0, sizeof(v390));
          v193 = memcpy(&v389, v7, v11);
          sub_10044042C(v193, @"unused_bytes_1", 10, 2, v390 + 10, v4, 0);
          v194 = [NSNumber numberWithUnsignedShort:HIWORD(v390[1])];
          [v4 setObject:v194 forKeyedSubscript:@"count_in_state_disabled"];

          v195 = [NSNumber numberWithUnsignedShort:LOWORD(v390[2])];
          [v4 setObject:v195 forKeyedSubscript:@"seconds_in_state_disabled"];

          v196 = [NSNumber numberWithUnsignedShort:WORD1(v390[2])];
          [v4 setObject:v196 forKeyedSubscript:@"count_in_state_inEar"];

          v197 = [NSNumber numberWithUnsignedShort:WORD2(v390[2])];
          [v4 setObject:v197 forKeyedSubscript:@"seconds_in_state_inEar"];

          v198 = [NSNumber numberWithUnsignedShort:WORD3(v390[2])];
          [v4 setObject:v198 forKeyedSubscript:@"count_in_state_inEarDetect"];

          v199 = [NSNumber numberWithUnsignedShort:WORD4(v390[2])];
          [v4 setObject:v199 forKeyedSubscript:@"seconds_in_state_inEarDetect"];

          v200 = [NSNumber numberWithUnsignedShort:WORD5(v390[2])];
          [v4 setObject:v200 forKeyedSubscript:@"count_in_state_tableTop"];

          v201 = [NSNumber numberWithUnsignedShort:WORD6(v390[2])];
          [v4 setObject:v201 forKeyedSubscript:@"seconds_in_state_tableTop"];

          v202 = [NSNumber numberWithUnsignedShort:HIWORD(v390[2])];
          [v4 setObject:v202 forKeyedSubscript:@"count_in_state_inCaseLidClosed"];

          v203 = [NSNumber numberWithUnsignedShort:LOWORD(v390[3])];
          [v4 setObject:v203 forKeyedSubscript:@"seconds_in_state_inCaseLidClosed"];

          v204 = [NSNumber numberWithUnsignedShort:WORD1(v390[3])];
          [v4 setObject:v204 forKeyedSubscript:@"count_in_state_inCaseLidOpen"];

          v205 = [NSNumber numberWithUnsignedShort:WORD2(v390[3])];
          [v4 setObject:v205 forKeyedSubscript:@"seconds_in_state_inCaseLidOpen"];

          v206 = [NSNumber numberWithUnsignedShort:WORD3(v390[3])];
          [v4 setObject:v206 forKeyedSubscript:@"count_in_state_offEar"];

          v207 = [NSNumber numberWithUnsignedShort:WORD4(v390[3])];
          [v4 setObject:v207 forKeyedSubscript:@"seconds_in_state_offEar"];

          v208 = [NSNumber numberWithUnsignedShort:WORD5(v390[3])];
          [v4 setObject:v208 forKeyedSubscript:@"count_in_state_pocket"];

          v209 = [NSNumber numberWithUnsignedShort:WORD6(v390[3])];
          [v4 setObject:v209 forKeyedSubscript:@"seconds_in_state_pocket"];

          v210 = [NSNumber numberWithUnsignedShort:HIWORD(v390[3])];
          [v4 setObject:v210 forKeyedSubscript:@"count_in_state_outOfPocketDetect"];

          v211 = [NSNumber numberWithUnsignedShort:v391];
          [v4 setObject:v211 forKeyedSubscript:@"seconds_in_state_outOfPocketDetect"];

          sub_10044042C(v212, @"unused_bytes_2", 10, 4, &v391 + 6, v4, 0);
          sub_10044042C(v213, @"ied_reserved_unused_bytes", 2, 2, &v391 + 2, v4, 0);
          sub_10044042C(v214, @"unused_bytes_3", 4, 4, &v394, v4, 0);
          break;
        case 7:
          if (v11 >= 0xA1)
          {
            v20 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
            {
              sub_10082D290(v20, v21, v22, v23, v24, v25, v26, v27);
            }

            v7 = *v6;
          }

          v394 = 0u;
          v392 = 0u;
          memset(v393, 0, sizeof(v393));
          v391 = 0u;
          v389 = 0u;
          memset(v390, 0, sizeof(v390));
          memcpy(&v389, v7, v11);
          v28 = [NSNumber numberWithUnsignedShort:WORD5(v390[0])];
          [v4 setObject:v28 forKeyedSubscript:@"adc_status_err_cnt"];

          v29 = [NSNumber numberWithUnsignedShort:WORD6(v390[0])];
          [v4 setObject:v29 forKeyedSubscript:@"bus_err_cnt"];

          v30 = [NSNumber numberWithUnsignedShort:HIWORD(v390[0])];
          [v4 setObject:v30 forKeyedSubscript:@"service_not_found_err_cnt"];

          v31 = [NSNumber numberWithUnsignedShort:LOWORD(v390[1])];
          [v4 setObject:v31 forKeyedSubscript:@"adc_conversion_cnt"];

          v32 = [NSNumber numberWithShort:SWORD1(v390[1])];
          [v4 setObject:v32 forKeyedSubscript:@"delta_baseline_cap"];

          v33 = [NSNumber numberWithShort:SWORD2(v390[1])];
          [v4 setObject:v33 forKeyedSubscript:@"abs_baseline_cap"];

          v34 = [NSNumber numberWithUnsignedShort:WORD3(v390[1])];
          [v4 setObject:v34 forKeyedSubscript:@"gsr_cnt"];

          v35 = [NSNumber numberWithUnsignedShort:WORD4(v390[1])];
          [v4 setObject:v35 forKeyedSubscript:@"chip_id_read_err_cnt"];

          v36 = [NSNumber numberWithUnsignedShort:WORD5(v390[1])];
          [v4 setObject:v36 forKeyedSubscript:@"sensor_wdg_cnt"];

          v37 = [NSNumber numberWithUnsignedShort:WORD6(v390[1])];
          [v4 setObject:v37 forKeyedSubscript:@"max_noise_low_freq"];

          v38 = [NSNumber numberWithUnsignedInt:*(&v390[1] + 14)];
          [v4 setObject:v38 forKeyedSubscript:@"max_noise_high_freq"];

          if (v10 < 0xC)
          {
            v43 = 19;
          }

          else
          {
            v40 = [NSNumber numberWithUnsignedInt:*(&v390[2] + 2)];
            [v4 setObject:v40 forKeyedSubscript:@"gsr_dram_cnt"];

            v41 = [NSNumber numberWithUnsignedInt:*(&v390[2] + 6)];
            [v4 setObject:v41 forKeyedSubscript:@"gsr_iram_cnt"];

            v42 = [NSNumber numberWithUnsignedInt:*(&v390[2] + 10)];
            [v4 setObject:v42 forKeyedSubscript:@"gsr_result_cnt"];

            v43 = 16;
          }

          sub_10044042C(v39, @"unused_bytes_1", v43, 4, &v390[2] + 14, v4, 0);
          sub_10044042C(v329, @"unused_bytes_2", 4, 4, &v394, v4, 0);
          break;
        case 8:
          if (v11 >= 0xA1)
          {
            v215 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
            {
              sub_10082D218(v215, v216, v217, v218, v219, v220, v221, v222);
            }

            v7 = *v6;
          }

          v394 = 0u;
          v392 = 0u;
          memset(v393, 0, sizeof(v393));
          v391 = 0u;
          v389 = 0u;
          memset(v390, 0, sizeof(v390));
          memcpy(&v389, v7, v11);
          v223 = [NSNumber numberWithUnsignedShort:WORD5(v390[0])];
          [v4 setObject:v223 forKeyedSubscript:@"gest_duration"];

          v224 = [NSNumber numberWithUnsignedShort:WORD6(v390[0])];
          [v4 setObject:v224 forKeyedSubscript:@"intent_gest_duration"];

          v225 = [NSNumber numberWithShort:SHIWORD(v390[0])];
          [v4 setObject:v225 forKeyedSubscript:@"force_slope"];

          v226 = [NSNumber numberWithUnsignedShort:LOWORD(v390[1])];
          [v4 setObject:v226 forKeyedSubscript:@"slope_def"];

          v227 = [NSNumber numberWithShort:SWORD1(v390[1])];
          [v4 setObject:v227 forKeyedSubscript:@"dbl_clk_valley"];

          v228 = [NSNumber numberWithUnsignedShort:WORD2(v390[1])];
          [v4 setObject:v228 forKeyedSubscript:@"dbl_clk_interval"];

          v229 = [NSNumber numberWithShort:SWORD3(v390[1])];
          [v4 setObject:v229 forKeyedSubscript:@"force_peak_1"];

          v230 = [NSNumber numberWithShort:SWORD4(v390[1])];
          [v4 setObject:v230 forKeyedSubscript:@"force_peak_2"];

          v231 = [NSNumber numberWithShort:SWORD5(v390[1])];
          [v4 setObject:v231 forKeyedSubscript:@"decision_thres_force"];

          v232 = [NSNumber numberWithShort:SWORD6(v390[1])];
          [v4 setObject:v232 forKeyedSubscript:@"decision_thres_slope"];

          v233 = [NSNumber numberWithInt:*(&v390[1] + 14)];
          [v4 setObject:v233 forKeyedSubscript:@"gest_force_peak"];

          v234 = [NSNumber numberWithInt:*(&v390[2] + 2)];
          [v4 setObject:v234 forKeyedSubscript:@"force_peak_3"];

          v235 = [NSNumber numberWithInt:*(&v390[2] + 6)];
          [v4 setObject:v235 forKeyedSubscript:@"baseline_cap_delta"];

          v236 = [NSNumber numberWithInt:*(&v390[2] + 10)];
          [v4 setObject:v236 forKeyedSubscript:@"baseline_cap"];

          sub_10044042C(v237, @"unused_bytes_1", 16, 4, &v390[2] + 14, v4, 0);
          sub_10044042C(v238, @"unused_bytes_2", 4, 4, &v394, v4, 0);
          break;
        case 9:
          if (v11 >= 0xA1)
          {
            v64 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
            {
              sub_10082D1A0(v64, v65, v66, v67, v68, v69, v70, v71);
            }

            v7 = *v6;
          }

          goto LABEL_35;
        case 10:
          if (v11 >= 0xA1)
          {
            v239 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
            {
              sub_10082D1A0(v239, v240, v241, v242, v243, v244, v245, v246);
            }

            v7 = *v6;
          }

LABEL_35:
          v394 = 0u;
          v392 = 0u;
          memset(v393, 0, sizeof(v393));
          v391 = 0u;
          v389 = 0u;
          memset(v390, 0, sizeof(v390));
          memcpy(&v389, v7, v11);
          v72 = [NSNumber numberWithUnsignedShort:WORD5(v390[0])];
          [v4 setObject:v72 forKeyedSubscript:@"cycleCount"];

          v73 = [NSNumber numberWithUnsignedShort:WORD4(v391)];
          [v4 setObject:v73 forKeyedSubscript:@"timeChargingTotal"];

          v74 = [NSNumber numberWithUnsignedShort:WORD5(v391)];
          [v4 setObject:v74 forKeyedSubscript:@"timeChargingWirelessTotal"];

          v75 = [NSNumber numberWithUnsignedShort:WORD6(v391)];
          [v4 setObject:v75 forKeyedSubscript:@"timeChargingTopOff"];

          v76 = [NSNumber numberWithUnsignedShort:HIWORD(v391)];
          [v4 setObject:v76 forKeyedSubscript:@"timeChargingTopOffWireless"];

          v77 = [NSNumber numberWithUnsignedShort:v392];
          [v4 setObject:v77 forKeyedSubscript:@"timeChargingTopOffWired"];

          v78 = [NSNumber numberWithShort:SWORD1(v392)];
          [v4 setObject:v78 forKeyedSubscript:@"tempBattMax"];

          v79 = [NSNumber numberWithShort:SWORD2(v392)];
          [v4 setObject:v79 forKeyedSubscript:@"tempBattAvg"];

          v80 = [NSNumber numberWithShort:SWORD3(v392)];
          [v4 setObject:v80 forKeyedSubscript:@"tempBattMin"];

          v81 = [NSNumber numberWithShort:SWORD4(v392)];
          [v4 setObject:v81 forKeyedSubscript:@"tempMlbMax"];

          v82 = [NSNumber numberWithUnsignedShort:WORD5(v392)];
          [v4 setObject:v82 forKeyedSubscript:@"voltageMax"];

          v83 = [NSNumber numberWithUnsignedShort:WORD6(v392)];
          [v4 setObject:v83 forKeyedSubscript:@"voltageMin"];

          v84 = [NSNumber numberWithUnsignedShort:HIWORD(v392)];
          [v4 setObject:v84 forKeyedSubscript:@"capacity"];

          v85 = [NSNumber numberWithUnsignedShort:LOWORD(v393[0])];
          [v4 setObject:v85 forKeyedSubscript:@"cycleAtCapacity"];

          v86 = [NSNumber numberWithUnsignedShort:WORD1(v393[0])];
          [v4 setObject:v86 forKeyedSubscript:@"resistance"];

          v87 = [NSNumber numberWithShort:SWORD2(v393[0])];
          [v4 setObject:v87 forKeyedSubscript:@"tempSiPMax"];

          v88 = [NSNumber numberWithShort:SWORD3(v393[0])];
          [v4 setObject:v88 forKeyedSubscript:@"currentDischargeMax"];

          v89 = [NSNumber numberWithUnsignedShort:WORD4(v393[0])];
          [v4 setObject:v89 forKeyedSubscript:@"batteryVendor"];

          v90 = [NSNumber numberWithUnsignedChar:BYTE10(v393[0])];
          [v4 setObject:v90 forKeyedSubscript:@"capacityMilestone_0"];

          v91 = [NSNumber numberWithUnsignedChar:BYTE11(v393[0])];
          [v4 setObject:v91 forKeyedSubscript:@"capacityMilestone_1"];

          v92 = [NSNumber numberWithUnsignedChar:BYTE12(v393[0])];
          [v4 setObject:v92 forKeyedSubscript:@"capacityMilestone_2"];

          v93 = [NSNumber numberWithUnsignedChar:BYTE13(v393[0])];
          [v4 setObject:v93 forKeyedSubscript:@"capacityMilestone_3"];

          v94 = [NSNumber numberWithUnsignedChar:v394];
          [v4 setObject:v94 forKeyedSubscript:@"capacityMilestone_4"];

          v95 = [NSNumber numberWithUnsignedChar:BYTE1(v394)];
          [v4 setObject:v95 forKeyedSubscript:@"capacityMilestone_5"];

          v96 = [NSNumber numberWithUnsignedChar:BYTE14(v394)];
          [v4 setObject:v96 forKeyedSubscript:@"timeInField"];

          v97 = [NSNumber numberWithUnsignedChar:HIBYTE(v394)];
          [v4 setObject:v97 forKeyedSubscript:@"timeInFieldAtCapacity"];

          sub_10044042C(v98, @"timeAVoltageTempMatrix", 30, 2, v390 + 12, v4, 0);
          sub_10044042C(v99, @"cycleCountAtCapacityMilestone", 6, 1, &v394 + 2, v4, 0);
          sub_10044042C(v100, @"timeInFieldMilestone", 6, 1, &v394 + 8, v4, 0);
          break;
        case 12:
          if (v11 >= 0xA1)
          {
            v12 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
            {
              sub_10082D03C(v12, v13, v14, v15, v16, v17, v18, v19);
            }

            v7 = *v6;
          }

          v394 = 0u;
          v392 = 0u;
          memset(v393, 0, sizeof(v393));
          v391 = 0u;
          v389 = 0u;
          memset(v390, 0, sizeof(v390));
          memcpy(&v389, v7, v11);
          if (BYTE14(v390[0]) == 3)
          {
            if (*(v7 + 138))
            {
              if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
              {
                sub_10082D128();
              }
            }

            else
            {
              v330 = [NSNumber numberWithUnsignedInt:*(v7 + 130) / 0x3CuLL];
              [v4 setObject:v330 forKeyedSubscript:@"budMileage"];

              v331 = [NSNumber numberWithUnsignedInt:*(v390 + 10) / 0xE10uLL];
              [v4 setObject:v331 forKeyedSubscript:@"duration"];

              v332 = [NSNumber numberWithUnsignedChar:3];
              [v4 setObject:v332 forKeyedSubscript:@"metricVersion"];

              v333 = BYTE3(v390[1]);
              v334 = BYTE4(v390[1]);
              v335 = BYTE5(v390[1]);
              v336 = (BYTE3(v390[1]) + BYTE4(v390[1])) | BYTE5(v390[1]);
              v337 = [NSNumber numberWithBool:v336 != 0];
              [v4 setObject:v337 forKeyedSubscript:@"hasSuccess"];

              v338 = [NSNumber numberWithUnsignedChar:v333];
              [v4 setObject:v338 forKeyedSubscript:@"successTableTop"];

              v339 = [NSNumber numberWithUnsignedChar:v334];
              [v4 setObject:v339 forKeyedSubscript:@"successWired"];

              v340 = [NSNumber numberWithUnsignedChar:v335];
              [v4 setObject:v340 forKeyedSubscript:@"successWireless"];

              v341 = [NSNumber numberWithUnsignedChar:BYTE6(v390[1])];
              [v4 setObject:v341 forKeyedSubscript:@"failureStaticTableTop"];

              v342 = [NSNumber numberWithUnsignedChar:BYTE11(v390[1])];
              [v4 setObject:v342 forKeyedSubscript:@"failureStaticWired"];

              v343 = [NSNumber numberWithUnsignedChar:LOBYTE(v390[2])];
              [v4 setObject:v343 forKeyedSubscript:@"failureStaticWireless"];

              v344 = [NSNumber numberWithUnsignedChar:BYTE7(v390[1])];
              [v4 setObject:v344 forKeyedSubscript:@"failureGyroTableTop"];

              v345 = [NSNumber numberWithUnsignedChar:BYTE12(v390[1])];
              [v4 setObject:v345 forKeyedSubscript:@"failureGyroWired"];

              v346 = [NSNumber numberWithUnsignedChar:BYTE1(v390[2])];
              [v4 setObject:v346 forKeyedSubscript:@"failureGyroWireless"];

              v347 = [NSNumber numberWithUnsignedChar:BYTE8(v390[1])];
              [v4 setObject:v347 forKeyedSubscript:@"failureFlushTableTop"];

              v348 = [NSNumber numberWithUnsignedChar:BYTE13(v390[1])];
              [v4 setObject:v348 forKeyedSubscript:@"failureFlushWired"];

              v349 = [NSNumber numberWithUnsignedChar:BYTE2(v390[2])];
              [v4 setObject:v349 forKeyedSubscript:@"failureFlushWireless"];

              v350 = [NSNumber numberWithUnsignedChar:BYTE9(v390[1])];
              [v4 setObject:v350 forKeyedSubscript:@"failureJammedTableTop"];

              v351 = [NSNumber numberWithUnsignedChar:BYTE14(v390[1])];
              [v4 setObject:v351 forKeyedSubscript:@"failureJammedWired"];

              v352 = [NSNumber numberWithUnsignedChar:BYTE3(v390[2])];
              [v4 setObject:v352 forKeyedSubscript:@"failureJammedWireless"];

              v353 = [NSNumber numberWithUnsignedChar:BYTE10(v390[1])];
              [v4 setObject:v353 forKeyedSubscript:@"failureUserTableTop"];

              v354 = [NSNumber numberWithUnsignedChar:HIBYTE(v390[1])];
              [v4 setObject:v354 forKeyedSubscript:@"failureUserWired"];

              v355 = [NSNumber numberWithUnsignedChar:BYTE4(v390[2])];
              [v4 setObject:v355 forKeyedSubscript:@"failureUserWireless"];

              v356 = fabs(vcvtd_n_f64_s32(*(&v390[2] + 5), 8uLL));
              v357 = fabs(vcvtd_n_f64_s32(*(&v390[2] + 11), 8uLL));
              if (v356 < v357)
              {
                v356 = v357;
              }

              v358 = fabs(vcvtd_n_f64_s32(*(&v390[2] + 7), 8uLL));
              v359 = fabs(vcvtd_n_f64_s32(*(&v390[2] + 13), 8uLL));
              if (v358 >= v359)
              {
                v360 = v358;
              }

              else
              {
                v360 = v359;
              }

              v361 = fabs(vcvtd_n_f64_s32(*(&v390[2] + 9), 8uLL));
              v362 = fabs(vcvtd_n_f64_s32(*(&v390[2] + 15), 8uLL));
              if (v361 >= v362)
              {
                v363 = v361;
              }

              else
              {
                v363 = v362;
              }

              v364 = [NSNumber numberWithDouble:v356];
              [v4 setObject:v364 forKeyedSubscript:@"deltaGyttX"];

              v365 = [NSNumber numberWithDouble:v360];
              [v4 setObject:v365 forKeyedSubscript:@"deltaGyttY"];

              v366 = [NSNumber numberWithDouble:v363];
              [v4 setObject:v366 forKeyedSubscript:@"deltaGyttZ"];

              if (v336)
              {
                [NSNumber numberWithChar:BYTE1(v390[3])];
              }

              else
              {
                [NSNumber numberWithChar:BYTE3(v390[3])];
              }
              v367 = ;
              [v4 setObject:v367 forKeyedSubscript:@"maxCalibrationTemperature"];

              if (v336)
              {
                [NSNumber numberWithChar:BYTE2(v390[3])];
              }

              else
              {
                [NSNumber numberWithChar:BYTE4(v390[3])];
              }
              v368 = ;
              [v4 setObject:v368 forKeyedSubscript:@"minCalibrationTemperature"];

              v369 = [NSNumber numberWithChar:BYTE5(v390[3])];
              [v4 setObject:v369 forKeyedSubscript:@"maxSessionTemperature"];

              v370 = [NSNumber numberWithChar:BYTE6(v390[3])];
              [v4 setObject:v370 forKeyedSubscript:@"minSessionTemperature"];

              v371 = [NSNumber numberWithInt:(SDWORD2(v390[3]) / 3600)];
              [v4 setObject:v371 forKeyedSubscript:@"calibrationInterval"];

              v372 = [NSNumber numberWithUnsignedInt:HIDWORD(v390[3])];
              [v4 setObject:v372 forKeyedSubscript:@"numberOfInEarSessionFirstCal"];

              v373 = [NSNumber numberWithUnsignedInt:v391];
              [v4 setObject:v373 forKeyedSubscript:@"numberOfInEarSessionFirstJam"];

              v374 = [NSNumber numberWithUnsignedInt:DWORD1(v391)];
              [v4 setObject:v374 forKeyedSubscript:@"numberOfJams"];

              v375 = [NSNumber numberWithUnsignedInt:DWORD2(v391) / 0xE10uLL];
              [v4 setObject:v375 forKeyedSubscript:@"durationLastJam"];

              v376 = WORD6(v391);
              v377 = [NSNumber numberWithBool:BYTE12(v391) & 1];
              [v4 setObject:v377 forKeyedSubscript:@"isFirstCalibration"];

              v378 = [NSNumber numberWithBool:(v376 >> 1) & 1];
              [v4 setObject:v378 forKeyedSubscript:@"hasDMSession"];

              v379 = [NSNumber numberWithBool:(v376 >> 2) & 1];
              [v4 setObject:v379 forKeyedSubscript:@"hasGyroJammedSession"];

              v380 = [NSNumber numberWithBool:(v376 >> 3) & 1];
              [v4 setObject:v380 forKeyedSubscript:@"isFirstGyroJammed"];

              v381 = [NSNumber numberWithBool:(v376 >> 8) & 1];
              [v4 setObject:v381 forKeyedSubscript:@"isCalibrated"];

              v382 = [NSNumber numberWithBool:(v376 >> 9) & 1];
              [v4 setObject:v382 forKeyedSubscript:@"hasBeenGyroJammed"];

              v383 = [NSNumber numberWithBool:(v376 >> 10) & 1];
              [v4 setObject:v383 forKeyedSubscript:@"isCurrentlyJammed"];

              v384 = @"Unknown";
              if (v376 >> 12 == 2)
              {
                v384 = @"Sovereign2";
              }

              if (v376 >> 12 == 1)
              {
                v385 = @"Sovereign";
              }

              else
              {
                v385 = v384;
              }

              [v4 setObject:v385 forKeyedSubscript:@"sensorModel"];
              v386 = [NSNumber numberWithInt:v376 & 0x8F0];
              [v4 setObject:v386 forKeyedSubscript:@"status_unused"];

              sub_10044042C(v387, @"unused_bytes_1", 32, 1, &v391 + 14, v4, 0);
              sub_10044042C(v388, @"unused_bytes_2", 4, 4, &v394, v4, 0);
            }
          }

          else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_10082D0B4();
          }

          break;
        case 13:
          if (v11 >= 0xA1)
          {
            v101 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
            {
              sub_10082CFC4(v101, v102, v103, v104, v105, v106, v107, v108);
            }

            v7 = *v6;
          }

          v394 = 0u;
          v392 = 0u;
          memset(v393, 0, sizeof(v393));
          v391 = 0u;
          v389 = 0u;
          memset(v390, 0, sizeof(v390));
          memcpy(&v389, v7, v11);
          v109 = [NSNumber numberWithUnsignedShort:WORD5(v390[0])];
          [v4 setObject:v109 forKeyedSubscript:@"swipe_prediction_duration"];

          v110 = [NSNumber numberWithShort:SWORD6(v390[0])];
          [v4 setObject:v110 forKeyedSubscript:@"swipe_start"];

          v111 = [NSNumber numberWithShort:SHIWORD(v390[0])];
          [v4 setObject:v111 forKeyedSubscript:@"swipe_end"];

          v112 = [NSNumber numberWithShort:SLOWORD(v390[1])];
          [v4 setObject:v112 forKeyedSubscript:@"touch_baseline_1"];

          v113 = [NSNumber numberWithShort:SWORD1(v390[1])];
          [v4 setObject:v113 forKeyedSubscript:@"touch_baseline_2"];

          v114 = [NSNumber numberWithShort:SWORD2(v390[1])];
          [v4 setObject:v114 forKeyedSubscript:@"touch_baseline_3"];

          v115 = [NSNumber numberWithShort:SWORD3(v390[1])];
          [v4 setObject:v115 forKeyedSubscript:@"force_peak"];

          v116 = [NSNumber numberWithShort:SWORD4(v390[1])];
          [v4 setObject:v116 forKeyedSubscript:@"touch_peak_1"];

          v117 = [NSNumber numberWithShort:SWORD5(v390[1])];
          [v4 setObject:v117 forKeyedSubscript:@"touch_peak_2"];

          v118 = [NSNumber numberWithShort:SWORD6(v390[1])];
          [v4 setObject:v118 forKeyedSubscript:@"touch_peak_3"];

          v119 = [NSNumber numberWithUnsignedInt:*(&v390[1] + 14)];
          [v4 setObject:v119 forKeyedSubscript:@"volume_feature_enabled"];

          v120 = [NSNumber numberWithUnsignedInt:*(&v390[2] + 2)];
          [v4 setObject:v120 forKeyedSubscript:@"consecutive_swipe_prediction_interval"];

          v121 = [NSNumber numberWithUnsignedInt:*(&v390[2] + 6)];
          [v4 setObject:v121 forKeyedSubscript:@"num_consecutive_swipes"];

          v122 = [NSNumber numberWithUnsignedInt:*(&v390[2] + 10)];
          [v4 setObject:v122 forKeyedSubscript:@"consecutive_swipe_pattern"];

          v123 = [NSNumber numberWithUnsignedInt:*(&v390[2] + 14)];
          [v4 setObject:v123 forKeyedSubscript:@"num_freq_hops"];

          v124 = [NSNumber numberWithUnsignedInt:*(&v390[3] + 2)];
          [v4 setObject:v124 forKeyedSubscript:@"percentage_time_on_high_freq"];

          v125 = [NSNumber numberWithInt:*(&v390[3] + 6)];
          [v4 setObject:v125 forKeyedSubscript:@"max_noise_low_freq"];

          v126 = [NSNumber numberWithInt:*(&v390[3] + 10)];
          [v4 setObject:v126 forKeyedSubscript:@"max_noise_high_freq"];

          sub_10044042C(v127, @"unused_bytes_1", 12, 4, &v390[3] + 14, v4, 0);
          sub_10044042C(v128, @"unused_bytes_2", 4, 4, &v394, v4, 0);
          break;
        case 14:
          if (v11 >= 0xA1)
          {
            v247 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
            {
              sub_10082CF4C(v247, v248, v249, v250, v251, v252, v253, v254);
            }

            v7 = *v6;
          }

          v394 = 0u;
          v392 = 0u;
          memset(v393, 0, sizeof(v393));
          v391 = 0u;
          v389 = 0u;
          memset(v390, 0, sizeof(v390));
          memcpy(&v389, v7, v11);
          v255 = [NSNumber numberWithShort:SWORD5(v390[0])];
          [v4 setObject:v255 forKeyedSubscript:@"force_cap_c2_delta"];

          v256 = [NSNumber numberWithShort:SWORD6(v390[0])];
          [v4 setObject:v256 forKeyedSubscript:@"force_cap_c2"];

          v257 = [NSNumber numberWithShort:SHIWORD(v390[0])];
          [v4 setObject:v257 forKeyedSubscript:@"force_cap_c1_delta"];

          v258 = [NSNumber numberWithShort:SLOWORD(v390[1])];
          [v4 setObject:v258 forKeyedSubscript:@"force_cap_c1"];

          v259 = [NSNumber numberWithShort:SWORD1(v390[1])];
          [v4 setObject:v259 forKeyedSubscript:@"water_ingress_count_high_cap"];

          v260 = [NSNumber numberWithShort:SWORD2(v390[1])];
          [v4 setObject:v260 forKeyedSubscript:@"water_ingress_count_low_cap"];

          sub_10044042C(v261, @"unused_bytes_1", 4, 2, &v390[1] + 6, v4, 0);
          sub_10044042C(v262, @"unused_bytes_2", 20, 4, &v390[1] + 14, v4, 0);
          sub_10044042C(v263, @"unused_bytes_3", 4, 4, &v394, v4, 0);
          break;
        case 15:
          if (v11 >= 0xA1)
          {
            v44 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
            {
              sub_10082CED4(v44, v45, v46, v47, v48, v49, v50, v51);
            }

            v7 = *v6;
          }

          v394 = 0u;
          v392 = 0u;
          memset(v393, 0, sizeof(v393));
          v391 = 0u;
          v389 = 0u;
          memset(v390, 0, sizeof(v390));
          memcpy(&v389, v7, v11);
          v52 = [NSNumber numberWithUnsignedShort:WORD5(v390[0])];
          [v4 setObject:v52 forKeyedSubscript:@"timeSpentAtLowerSoC"];

          v53 = [NSNumber numberWithUnsignedShort:WORD6(v390[0])];
          [v4 setObject:v53 forKeyedSubscript:@"timeSpentAtHigherSoC"];

          v54 = [NSNumber numberWithUnsignedChar:BYTE14(v390[0])];
          [v4 setObject:v54 forKeyedSubscript:@"engagementEvents"];

          v55 = [NSNumber numberWithUnsignedChar:HIBYTE(v390[0])];
          [v4 setObject:v55 forKeyedSubscript:@"underchargeEvents"];

          v56 = [NSNumber numberWithUnsignedChar:LOBYTE(v390[1])];
          [v4 setObject:v56 forKeyedSubscript:@"chargingEvents"];

          v57 = [NSNumber numberWithUnsignedChar:BYTE1(v390[1])];
          [v4 setObject:v57 forKeyedSubscript:@"budSocAtLastEngagement"];

          v58 = [NSNumber numberWithUnsignedShort:WORD1(v390[1])];
          [v4 setObject:v58 forKeyedSubscript:@"medianTimeBetweenUses"];

          v59 = [NSNumber numberWithUnsignedShort:WORD2(v390[1])];
          [v4 setObject:v59 forKeyedSubscript:@"stdDevTimeBetweenUses"];

          v60 = [NSNumber numberWithUnsignedShort:WORD3(v390[1])];
          [v4 setObject:v60 forKeyedSubscript:@"featureEnabledStatus"];

          sub_10044042C(v61, @"unused_bytes_1", 3, 2, &v390[1] + 8, v4, 0);
          sub_10044042C(v62, @"unused_bytes_2", 20, 4, &v390[1] + 14, v4, 0);
          sub_10044042C(v63, @"unused_bytes_3", 4, 4, &v394, v4, 0);
          break;
        case 16:
          if (v11 >= 0xA1)
          {
            v312 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
            {
              sub_10082CE5C(v312, v313, v314, v315, v316, v317, v318, v319);
            }

            v7 = *v6;
          }

          v394 = 0u;
          v392 = 0u;
          memset(v393, 0, sizeof(v393));
          v391 = 0u;
          v389 = 0u;
          memset(v390, 0, sizeof(v390));
          memcpy(&v389, v7, v11);
          v320 = [NSNumber numberWithUnsignedInt:*(v390 + 10)];
          [v4 setObject:v320 forKeyedSubscript:@"nvram_erase_count"];

          v321 = [NSNumber numberWithUnsignedInt:*(v390 + 14)];
          [v4 setObject:v321 forKeyedSubscript:@"nvram_corruption_single_bank"];

          v322 = [NSNumber numberWithUnsignedInt:*(&v390[1] + 2)];
          [v4 setObject:v322 forKeyedSubscript:@"nvram_corruption_both_banks"];

          v323 = [NSNumber numberWithUnsignedInt:*(&v390[1] + 6)];
          [v4 setObject:v323 forKeyedSubscript:@"syscfg_corruption_count"];

          if (BYTE1(v389) >= 0xAu)
          {
            v325 = [NSNumber numberWithUnsignedChar:HIBYTE(v390[1])];
            [v4 setObject:v325 forKeyedSubscript:@"has_limited_logging_ever_on"];

            v326 = [NSNumber numberWithUnsignedChar:BYTE14(v390[1])];
            [v4 setObject:v326 forKeyedSubscript:@"vendor_id"];
          }

          sub_10044042C(v324, @"unused_bytes_1", 2, 2, &v390[1] + 10, v4, 0);
          sub_10044042C(v327, @"unused_bytes_2", 20, 4, &v390[2], v4, 0);
          sub_10044042C(v328, @"unused_bytes_3", 4, 4, &v394, v4, 0);
          break;
        case 17:
          if (v11 >= 0xA1)
          {
            v129 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
            {
              sub_10082CDE4(v129, v130, v131, v132, v133, v134, v135, v136);
            }

            v7 = *v6;
          }

          v394 = 0u;
          v392 = 0u;
          memset(v393, 0, sizeof(v393));
          v391 = 0u;
          v389 = 0u;
          memset(v390, 0, sizeof(v390));
          memcpy(&v389, v7, v11);
          v137 = [NSNumber numberWithUnsignedShort:WORD5(v390[0])];
          [v4 setObject:v137 forKeyedSubscript:@"start_unloaded_vbat_mv"];

          v138 = [NSNumber numberWithUnsignedShort:WORD6(v390[0])];
          [v4 setObject:v138 forKeyedSubscript:@"start_loaded_vbat_mv"];

          v139 = [NSNumber numberWithUnsignedShort:HIWORD(v390[0])];
          [v4 setObject:v139 forKeyedSubscript:@"unloaded_vbat_mv"];

          v140 = [NSNumber numberWithUnsignedShort:LOWORD(v390[1])];
          [v4 setObject:v140 forKeyedSubscript:@"loaded_vbat_mv"];

          v141 = [NSNumber numberWithUnsignedLongLong:*(&v390[1] + 2)];
          [v4 setObject:v141 forKeyedSubscript:@"time_elapsed_us"];

          sub_10044042C(v142, @"unused_bytes_1", 2, 2, &v390[1] + 10, v4, 0);
          sub_10044042C(v143, @"unused_bytes_2", 20, 4, &v390[1] + 14, v4, 0);
          sub_10044042C(v144, @"unused_bytes_3", 4, 4, &v394, v4, 0);
          break;
        case 18:
          if (v11 >= 0xA1)
          {
            v145 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
            {
              sub_10082CD6C(v145, v146, v147, v148, v149, v150, v151, v152);
            }

            v7 = *v6;
          }

          v394 = 0u;
          v392 = 0u;
          memset(v393, 0, sizeof(v393));
          v391 = 0u;
          v389 = 0u;
          memset(v390, 0, sizeof(v390));
          memcpy(&v389, v7, v11);
          v153 = [NSNumber numberWithUnsignedShort:*(v390 + 11)];
          [v4 setObject:v153 forKeyedSubscript:@"duration"];

          v154 = [NSNumber numberWithUnsignedChar:BYTE10(v390[0])];
          [v4 setObject:v154 forKeyedSubscript:@"user_awake"];

          v155 = [NSNumber numberWithUnsignedChar:BYTE13(v390[0])];
          [v4 setObject:v155 forKeyedSubscript:@"hour"];

          sub_10044042C(v156, @"unused_bytes_1", 48, 2, v390 + 14, v4, 0);
          sub_10044042C(v157, @"unused_bytes_2", 4, 4, &v394, v4, 0);
          break;
        case 19:
          if (v11 >= 0xA1)
          {
            v264 = qword_100BCE8D8;
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
            {
              sub_10082CCF4(v264, v265, v266, v267, v268, v269, v270, v271);
            }

            v7 = *v6;
          }

          v394 = 0u;
          v392 = 0u;
          memset(v393, 0, sizeof(v393));
          v391 = 0u;
          v389 = 0u;
          memset(v390, 0, sizeof(v390));
          memcpy(&v389, v7, v11);
          v272 = [NSNumber numberWithUnsignedShort:WORD5(v390[0])];
          [v4 setObject:v272 forKeyedSubscript:@"num_cd_trigger"];

          v273 = [NSNumber numberWithUnsignedShort:WORD6(v390[0])];
          [v4 setObject:v273 forKeyedSubscript:@"num_false_start"];

          v274 = [NSNumber numberWithUnsignedShort:HIWORD(v390[0])];
          [v4 setObject:v274 forKeyedSubscript:@"num_false_transition"];

          v275 = [NSNumber numberWithUnsignedChar:LOBYTE(v390[1])];
          [v4 setObject:v275 forKeyedSubscript:@"num_cd_user_setting_off"];

          v276 = [NSNumber numberWithUnsignedChar:BYTE1(v390[1])];
          [v4 setObject:v276 forKeyedSubscript:@"num_cd_user_setting_on"];

          v277 = [NSNumber numberWithUnsignedShort:WORD1(v390[1])];
          [v4 setObject:v277 forKeyedSubscript:@"num_cd_reset"];

          v278 = [NSNumber numberWithUnsignedShort:WORD2(v390[1])];
          [v4 setObject:v278 forKeyedSubscript:@"num_cd_pause"];

          v279 = [NSNumber numberWithUnsignedShort:WORD3(v390[1])];
          [v4 setObject:v279 forKeyedSubscript:@"num_cd_unpause"];

          v280 = [NSNumber numberWithUnsignedShort:WORD4(v390[1])];
          [v4 setObject:v280 forKeyedSubscript:@"num_cd_pause_siri"];

          v281 = [NSNumber numberWithUnsignedShort:WORD5(v390[1])];
          [v4 setObject:v281 forKeyedSubscript:@"num_cd_pause_hfp"];

          v282 = [NSNumber numberWithUnsignedShort:WORD6(v390[1])];
          [v4 setObject:v282 forKeyedSubscript:@"num_cd_pause_sourcepause"];

          v283 = [NSNumber numberWithUnsignedInt:*(&v390[1] + 14)];
          [v4 setObject:v283 forKeyedSubscript:@"total_cd_pause_duration_s"];

          v284 = [NSNumber numberWithUnsignedInt:*(&v390[2] + 2)];
          [v4 setObject:v284 forKeyedSubscript:@"total_cd_user_setting_on_duration_s"];

          v285 = [NSNumber numberWithUnsignedInt:*(&v390[2] + 6)];
          [v4 setObject:v285 forKeyedSubscript:@"total_cd_session_duration_s"];

          v286 = [NSNumber numberWithUnsignedInt:*(&v390[2] + 10)];
          [v4 setObject:v286 forKeyedSubscript:@"total_primary_use_duration_s"];

          v287 = [NSNumber numberWithUnsignedChar:BYTE14(v390[2])];
          [v4 setObject:v287 forKeyedSubscript:@"qad_sh_600_1200_ms"];

          v288 = [NSNumber numberWithUnsignedChar:HIBYTE(v390[2])];
          [v4 setObject:v288 forKeyedSubscript:@"qad_sh_1200_1800_ms"];

          v289 = [NSNumber numberWithUnsignedChar:LOBYTE(v390[3])];
          [v4 setObject:v289 forKeyedSubscript:@"qad_sh_1800_2400_ms"];

          v290 = [NSNumber numberWithUnsignedChar:BYTE1(v390[3])];
          [v4 setObject:v290 forKeyedSubscript:@"qad_sh_2400_3000_ms"];

          v291 = [NSNumber numberWithUnsignedChar:BYTE2(v390[3])];
          [v4 setObject:v291 forKeyedSubscript:@"qad_sh_3200_3600_ms"];

          v292 = [NSNumber numberWithUnsignedChar:BYTE3(v390[3])];
          [v4 setObject:v292 forKeyedSubscript:@"qad_sh_3600_4200_ms"];

          v293 = [NSNumber numberWithUnsignedChar:BYTE4(v390[3])];
          [v4 setObject:v293 forKeyedSubscript:@"qad_md_600_1200_ms"];

          v294 = [NSNumber numberWithUnsignedChar:BYTE5(v390[3])];
          [v4 setObject:v294 forKeyedSubscript:@"qad_md_1200_1800_ms"];

          v295 = [NSNumber numberWithUnsignedChar:BYTE6(v390[3])];
          [v4 setObject:v295 forKeyedSubscript:@"qad_md_1800_2400_ms"];

          v296 = [NSNumber numberWithUnsignedChar:BYTE7(v390[3])];
          [v4 setObject:v296 forKeyedSubscript:@"qad_md_2400_3000_ms"];

          v297 = [NSNumber numberWithUnsignedChar:BYTE8(v390[3])];
          [v4 setObject:v297 forKeyedSubscript:@"qad_md_3200_3600_ms"];

          v298 = [NSNumber numberWithUnsignedChar:BYTE9(v390[3])];
          [v4 setObject:v298 forKeyedSubscript:@"qad_md_3600_4200_ms"];

          v299 = [NSNumber numberWithUnsignedChar:BYTE10(v390[3])];
          [v4 setObject:v299 forKeyedSubscript:@"qad_lg_600_1200_ms"];

          v300 = [NSNumber numberWithUnsignedChar:BYTE11(v390[3])];
          [v4 setObject:v300 forKeyedSubscript:@"qad_lg_1200_1800_ms"];

          v301 = [NSNumber numberWithUnsignedChar:BYTE12(v390[3])];
          [v4 setObject:v301 forKeyedSubscript:@"qad_lg_1800_2400_ms"];

          v302 = [NSNumber numberWithUnsignedChar:BYTE13(v390[3])];
          [v4 setObject:v302 forKeyedSubscript:@"qad_lg_2400_3000_ms"];

          v303 = [NSNumber numberWithUnsignedChar:BYTE14(v390[3])];
          [v4 setObject:v303 forKeyedSubscript:@"qad_lg_3200_3600_ms"];

          v304 = [NSNumber numberWithUnsignedChar:HIBYTE(v390[3])];
          [v4 setObject:v304 forKeyedSubscript:@"qad_lg_3600_4200_ms"];

          v305 = [NSNumber numberWithUnsignedInt:*(v393 + 14)];
          [v4 setObject:v305 forKeyedSubscript:@"sw_version_ext"];

          v306 = [NSNumber numberWithUnsignedInt:*(&v393[1] + 2)];
          [v4 setObject:v306 forKeyedSubscript:@"bud_mileage"];

          v307 = [NSNumber numberWithUnsignedInt:*(&v393[1] + 6)];
          [v4 setObject:v307 forKeyedSubscript:@"feature_flags"];

          v308 = [NSNumber numberWithUnsignedInt:*(&v393[1] + 10)];
          [v4 setObject:v308 forKeyedSubscript:@"error_code_ext"];

          v309 = [NSNumber numberWithUnsignedShort:HIWORD(v393[1])];
          [v4 setObject:v309 forKeyedSubscript:@"hw_version"];

          sub_10044042C(v310, @"unused_bytes_1", 23, 2, &v391, v4, 0);
          sub_10044042C(v311, @"unused_bytes_2", 4, 2, &v394, v4, 0);
          break;
        default:
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_10082D3F8();
          }

          break;
      }
    }

    else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10082CC80();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_10082CC44();
  }
}