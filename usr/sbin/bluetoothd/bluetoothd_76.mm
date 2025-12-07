void sub_100564664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  if (*(v18 - 105) < 0)
  {
    operator delete(*(v18 - 128));
  }

  _Unwind_Resume(a1);
}

void sub_10056488C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2 && os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_100842F60();
  }
}

void sub_1005648E4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100842FD0();
    }
  }

  else
  {
    v4 = qword_100BCE960;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(*(a1 + 32), __p);
      v5 = v7 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Magic Setting created cloud device %{public}s", buf, 0xCu);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_100564A10(uint64_t a1, uint64_t a2, int a3)
{
  v6 = qword_100BCE960;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    v7 = v19 >= 0 ? __p : __p[0];
    *buf = 136446466;
    v21 = v7;
    v22 = 1024;
    v23 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Pairing Completed for device: %{public}s with result - %d", buf, 0x12u);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (!a3)
  {
    v8 = +[CloudPairing sharedInstance];
    v9 = [v8 cloudClient];
    sub_1000BE6F8((a2 + 128), __p);
    if (v19 >= 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    v11 = [NSString stringWithUTF8String:v10];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100564D2C;
    v17[3] = &unk_100AFC868;
    v17[4] = a2;
    [v9 magicSettingsRecord:v11 completion:v17];

    if (v19 < 0)
    {
      operator delete(__p[0]);
    }

    v12 = +[CloudPairing sharedInstance];
    v13 = [v12 cloudClient];
    sub_1000BE6F8((a2 + 128), __p);
    if (v19 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    v15 = [NSString stringWithUTF8String:v14];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100565070;
    v16[3] = &unk_100AFC9A0;
    v16[4] = a1;
    v16[5] = a2;
    [v13 deviceRecord:v15 completion:v16];

    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100564CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100564D2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v16 = qword_100BCE960;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(*(a1 + 32), &__p);
      sub_100843040();
    }

    goto LABEL_20;
  }

  v8 = [v5 supportedServices];
  v9 = [v8 length];

  if (v9)
  {
    v10 = qword_100BCE960;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(*(a1 + 32), &__p);
      v11 = v24 >= 0 ? &__p : __p;
      *buf = 138412546;
      *&buf[4] = v5;
      v26 = 2082;
      v27 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Pairing] fetched magic settings: %@ for device: %{public}s", buf, 0x16u);
      if (v24 < 0)
      {
        operator delete(__p);
      }
    }

    for (i = 0; i != 31; ++i)
    {
      v13 = [v5 supportedServices];
      v14 = ([v13 integerValue] & (1 << i)) == 0;

      if (!v14)
      {
        v15 = *(a1 + 32);
        *buf = 0;
        sub_100016250(buf);
        *&__p = *buf;
        *(&__p + 1) = *&buf[4];
        sub_100539554(v15, 1 << i, 4, &__p, 1);
      }
    }

    v16 = qword_100BCE960;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v5 supportedServices];
      v18 = [v17 intValue];
      if (qword_100B50AC0 != -1)
      {
        sub_100841F18();
      }

      v19 = sub_1000DFA00(off_100B50AB8, *(a1 + 32));
      v20 = [v5 version];
      v21 = [v20 intValue];
      LODWORD(__p) = 67109632;
      DWORD1(__p) = v18;
      WORD4(__p) = 1024;
      *(&__p + 10) = v19;
      HIWORD(__p) = 1024;
      v23 = v21;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Cloud: Device service capability details: received service mask %x, device service mask after update %x, blob version %d", &__p, 0x14u);
    }

LABEL_20:
  }
}

void sub_100564FF0(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_100565070(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = qword_100BCE960;
  v9 = v8;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(*(a1 + 40), __p);
      sub_100843090();
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(*(a1 + 40), __p);
      v10 = v19 >= 0 ? __p : __p[0];
      *buf = 138412546;
      v21 = v5;
      v22 = 2082;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[Pairing] fetched cloud record: %@ for device: %{public}s", buf, 0x16u);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v9 = [v5 bluetoothAddress];
    v11 = v9;
    sub_100007E30(v16, [v9 UTF8String]);
    v12 = [v5 nickname];
    v13 = v12;
    sub_100007E30(v14, [v12 UTF8String]);
    (*(*v7 + 96))(v7, v16, v14);
    if (v15 < 0)
    {
      operator delete(v14[0]);
    }

    if (v17 < 0)
    {
      operator delete(v16[0]);
    }
  }
}

void sub_100565304(uint64_t a1, int a2)
{
  v3 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = a2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Airplane mode is now %d", v4, 8u);
  }
}

uint64_t sub_1005653B4(uint64_t a1, int a2)
{
  v4 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "fail";
    if (a2)
    {
      v5 = "success";
    }

    LODWORD(v10) = 136446210;
    *(&v10 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device info upload status from cloud with status = %{public}s", &v10, 0xCu);
  }

  v10 = 0uLL;
  sub_100007F88(&v10, a1 + 104);
  if (a2)
  {
    v6 = *(a1 + 176);
    for (i = *(a1 + 184); v6 != i; *(v8 + 84) = 1)
    {
      v8 = *v6++;
    }

    *(a1 + 243) = 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_1008430E0();
    }

    *(a1 + 243) = *(a1 + 176) == *(a1 + 184);
  }

  sub_1005599FC(a1);
  return sub_1000088CC(&v10);
}

void sub_100565518(void *a1, char *a2, void **a3)
{
  v4 = a2;
  if ((*(a3 + 23) & 0x8000000000000000) == 0)
  {
    if (*(a3 + 23))
    {
      goto LABEL_3;
    }

LABEL_23:
    if (a2[23] < 0)
    {
      sub_100008904(__dst, *a2, *(a2 + 1));
    }

    else
    {
      *__dst = *a2;
      v23 = *(a2 + 2);
    }

    (*(*a1 + 104))(a1, __dst);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__dst[0]);
    }

    return;
  }

  if (!a3[1])
  {
    goto LABEL_23;
  }

LABEL_3:
  v6 = a2[23];
  v21 = 0;
  v20 = 0;
  if (v6 < 0)
  {
    a2 = *a2;
  }

  if (!sub_10009D0B4(&v20, a2))
  {
LABEL_32:
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
    {
      sub_100843198();
    }

    return;
  }

  if (!v20)
  {
    v15 = 1;
    while (v15 != 6)
    {
      if (*(&v20 + v15++))
      {
        if ((v15 - 2) < 5)
        {
          goto LABEL_7;
        }

        goto LABEL_32;
      }
    }

    goto LABEL_32;
  }

LABEL_7:
  if (qword_100B508F0 != -1)
  {
    sub_100841B4C();
  }

  v7 = sub_1000E6554(off_100B508E8, &v20, 0);
  v8 = qword_100BCE960;
  if (v7)
  {
    v9 = qword_100BCE960;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v7, __p);
      if (v19 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      v11 = a3;
      if (*(a3 + 23) < 0)
      {
        v11 = *a3;
      }

      *buf = 136446466;
      v25 = v10;
      v26 = 2080;
      v27 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Device's user-defined name changing for %{public}s, new nickname: %s", buf, 0x16u);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_100538D30(v7, a3, 0);
    __p[0] = 0;
    __p[1] = 0;
    sub_100007F88(__p, (a1 + 13));
    v12 = a1[22];
    v13 = a1[23];
    while (v12 != v13)
    {
      v14 = *v12;
      if (**v12 == v7)
      {
        if (*(a3 + 23) < 0)
        {
          sub_100008904(&v17, *a3, a3[1]);
        }

        else
        {
          v17 = *a3;
        }

        std::string::operator=((v14 + 11), &v17);
        if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v17.__r_.__value_.__l.__data_);
        }

        break;
      }

      ++v12;
    }

    sub_1000088CC(__p);
  }

  else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_10084311C(v4 + 23, v4, v8);
  }
}

uint64_t sub_10056586C(uint64_t a1, uint64_t a2)
{
  v32[0] = 0;
  v32[1] = 0;
  sub_100007F88(v32, a1 + 104);
  v31 = 0;
  v30 = 0;
  v4 = a2;
  if (*(a2 + 23) < 0)
  {
    v4 = *a2;
  }

  if (!sub_10009D0B4(&v30, v4))
  {
    goto LABEL_49;
  }

  if (!v30)
  {
    v20 = 1;
    do
    {
      if (v20 == 6)
      {
        goto LABEL_49;
      }
    }

    while (!*(&v30 + v20++));
    if ((v20 - 2) >= 5)
    {
LABEL_49:
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
      {
        sub_100843198();
      }

      return sub_1000088CC(v32);
    }
  }

  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  if (qword_100B50F88 != -1)
  {
    sub_100841B74();
  }

  sub_10009DB3C(off_100B50F80, v28);
  v5 = v28[0];
  if (v28[1] != v28[0])
  {
    while (1)
    {
      v6 = *v5;
      sub_1000BE6F8((*v5 + 128), __p);
      v7 = *(a2 + 23);
      v8 = v27;
      v10 = __p[0];
      v9 = __p[1];
      if (v27 < 0)
      {
        v11 = __p[0];
      }

      else
      {
        v9 = v27;
        v11 = __p;
      }

      if ((v7 & 0x80u) == 0)
      {
        v12 = a2;
      }

      else
      {
        v7 = *(a2 + 8);
        v12 = *a2;
      }

      if (v7 >= v9)
      {
        v13 = v9;
      }

      else
      {
        v13 = v7;
      }

      v14 = v7 == v9;
      if (memcmp(v11, v12, v13))
      {
        v14 = 0;
      }

      if (v8 < 0)
      {
        operator delete(v10);
        if (v14)
        {
LABEL_23:
          for (i = *(a1 + 176); i != *(a1 + 184); ++i)
          {
            if (**i == v6)
            {
              v18 = qword_100BCE960;
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                sub_1000E5A58(v6, __p);
                v19 = v27 >= 0 ? __p : __p[0];
                *buf = 136446210;
                v34 = v19;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Magic Device do not set empty nickname - %{public}s", buf, 0xCu);
                if (v27 < 0)
                {
                  operator delete(__p[0]);
                }
              }

              goto LABEL_42;
            }
          }

          v16 = qword_100BCE960;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v6, __p);
            v17 = v27 >= 0 ? __p : __p[0];
            *buf = 136446210;
            v34 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Device nickname being set to empty for %{public}s", buf, 0xCu);
            if (v27 < 0)
            {
              operator delete(__p[0]);
            }
          }

          sub_100007E30(__p, "");
          sub_100538D30(v6, __p, 0);
          if (v27 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      else if (v14)
      {
        goto LABEL_23;
      }

LABEL_42:
      if (++v5 == v28[1])
      {
        goto LABEL_43;
      }
    }
  }

  if (qword_100B508F0 != -1)
  {
    sub_100841B4C();
  }

  v23 = sub_1000E6554(off_100B508E8, &v30, 0);
  if (v23)
  {
    v24 = qword_100BCE960;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v23, __p);
      v25 = v27 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v34 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Non-paired device nickname being set to empty for %{public}s", buf, 0xCu);
      if (v27 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_100007E30(__p, "");
    sub_100538D30(v23, __p, 0);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_43:
  if (v28[0])
  {
    v28[1] = v28[0];
    operator delete(v28[0]);
  }

  return sub_1000088CC(v32);
}

void sub_100565C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a22);
  _Unwind_Resume(a1);
}

void sub_100565D28(uint64_t a1, uint64_t a2)
{
  if (sub_1000E25D8(a1, a2))
  {
    sub_10053781C(a2, __p);
    if (v21 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    v4 = [NSString stringWithUTF8String:v3];
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    if ([v4 hasSuffix:@" - Find My"])
    {
      v5 = qword_100BCE960;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, __p);
        v6 = v21 >= 0 ? __p : __p[0];
        *buf = 136446210;
        v23 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Device has FM suffix: %{public}s", buf, 0xCu);
        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p[0]);
        }
      }

      *buf = *(a2 + 128);
      LOWORD(v23) = *(a2 + 132);
      v7 = [NSData dataWithBytes:buf length:6];
      __p[0] = 0;
      __p[1] = 0;
      v21 = 0;
      sub_1000BE6F8(buf, __p);
      v8 = [v4 substringToIndex:{objc_msgSend(v4, "length") - objc_msgSend(@" - Find My", "length")}];
      v9 = objc_alloc_init(SPOwnerInterface);
      v10 = [v9 ownerSession];
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_100566074;
      v14[3] = &unk_100AFC9C8;
      v11 = v9;
      v15 = v11;
      v16 = v10;
      v19 = a2;
      v12 = v8;
      v17 = v12;
      v18 = v4;
      v13 = v10;
      [v13 fetchFindMyNetworkStatusForMACAddress:v7 completion:v14];

      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_100566074(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = qword_100BCE960;
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(*(a1 + 64), __p);
      sub_1008431D4();
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(*(a1 + 64), __p);
      v8 = v16 >= 0 ? __p : *__p;
      *buf = 136446466;
      v18 = v8;
      v19 = 1024;
      v20 = a2;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FM Status for %{public}s device is: %d", buf, 0x12u);
      if (v16 < 0)
      {
        operator delete(*__p);
      }
    }

    if (a2 && *(a1 + 48))
    {
      v9 = qword_100BCE960;
      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 48);
        v10 = *(a1 + 56);
        *__p = 138412546;
        *&__p[4] = v10;
        v14 = 2112;
        v15 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Renaming '%@' -> '%@'", __p, 0x16u);
      }

      v12 = *(a1 + 64);
      sub_100007E30(__p, [*(a1 + 48) UTF8String]);
      sub_100538D30(v12, __p, 1);
      if (v16 < 0)
      {
        operator delete(*__p);
      }
    }
  }
}

void sub_100566254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10056629C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_100017F4C(a1, a2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10056632C;
  v7[3] = &unk_100AE0880;
  v7[4] = a1;
  v7[5] = a2;
  v8 = a3;
  sub_10000CA94(v6, v7);
}

void sub_10056633C(uint64_t a1, unsigned __int8 *a2, int a3)
{
  if (*(a1 + 241) == 1)
  {
    v6 = qword_100BCE960;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v7 = v43 >= 0 ? __p : *__p;
      v8 = *(a1 + 242) ? "in" : "not in";
      *buf = 67109634;
      *&buf[4] = a3;
      *v45 = 2082;
      *&v45[2] = v7;
      v46 = 2082;
      v47 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device info changed (%d) for device %{public}s with cloud sync is %{public}s progress", buf, 0x1Cu);
      if (v43 < 0)
      {
        operator delete(*__p);
      }
    }

    if (a3 > 4096)
    {
      v35[0] = 0;
      v35[1] = 0;
      sub_100007F88(v35, a1 + 104);
      for (i = *(a1 + 176); i != *(a1 + 184); ++i)
      {
        v10 = *i;
        if (**i == a2)
        {
          goto LABEL_19;
        }
      }

      v10 = 0;
LABEL_19:
      sub_10000801C(v35);
      if (v10)
      {
        if (a3 == 4101)
        {
          sub_100563ADC(a1, v10);
        }

        else
        {
          sub_100560FB0(a1, a2, a3);
        }

        goto LABEL_81;
      }

      if (a3 == 4102)
      {
        if (qword_100B50AB0 != -1)
        {
          sub_100843260();
        }

        v23 = off_100B50AA8;
        if (sub_1000E25D8(v11, v12))
        {
          if (v23[240] == 1 && (a2[1044] & 1) == 0 && (a2[1046] & 1) == 0 && (a2[1045] & 1) == 0 && !sub_1000C0348(a2) && sub_1000DFB74(a2, 0x80000u) == 4)
          {
            v24 = sub_1000E31D0(a2);
            if ((v24 & 2) == 0)
            {
              if (qword_100B50AB0 != -1)
              {
                sub_100843260();
              }

              if ((sub_1000E2570(v24, a2) & 1) == 0)
              {
                v25 = qword_100BCE960;
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  v26 = sub_1000E31D0(a2);
                  sub_1000C23E0(a2, __p);
                  v27 = v43 >= 0 ? __p : *__p;
                  *buf = 67109635;
                  *&buf[4] = v26;
                  strcpy(v45, "p\bhash");
                  v45[7] = 0;
                  *&v45[8] = 0;
                  v46 = 2081;
                  v47 = v27;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "GAPA Flags - %d, sending magic keys and renaming genuine device %{private, mask.hash}s", buf, 0x1Cu);
                  if (v43 < 0)
                  {
                    operator delete(*__p);
                  }
                }

                if (qword_100B50950 != -1)
                {
                  sub_100841B9C();
                }

                sub_1003337DC(off_100B50948, a2);
                if (qword_100B508F0 != -1)
                {
                  sub_100841B4C();
                }

                sub_10056CB58(off_100B508E8, a2);
              }
            }
          }
        }

        goto LABEL_81;
      }

      if (a3 != 4098)
      {
LABEL_81:
        sub_1000088CC(v35);
        return;
      }

      v13 = qword_100BCE960;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000DEEA4(a2, buf);
        v14 = SBYTE3(v47);
        v15 = *buf;
        sub_1000C23E0(a2, __p);
        v16 = buf;
        if (v14 < 0)
        {
          v16 = v15;
        }

        if (v43 >= 0)
        {
          v17 = __p;
        }

        else
        {
          v17 = *__p;
        }

        *v36 = 136315394;
        v37 = v16;
        v38 = 2080;
        v39 = v17;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[3rd] Nickname info changed from %s to %s", v36, 0x16u);
        if (v43 < 0)
        {
          operator delete(*__p);
        }

        if (SBYTE3(v47) < 0)
        {
          operator delete(*buf);
        }
      }

      sub_10053781C(a2, buf);
      if (SBYTE3(v47) < 0)
      {
        v28 = *v45;
        operator delete(*buf);
        if (v28)
        {
          goto LABEL_36;
        }
      }

      else if (BYTE3(v47))
      {
LABEL_36:
        v18 = sub_100558B38(a2);
        v19 = qword_100BCE960;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, buf);
          if (SBYTE3(v47) >= 0)
          {
            v20 = buf;
          }

          else
          {
            v20 = *buf;
          }

          *__p = 136446466;
          *&__p[4] = v20;
          v41 = 2112;
          v42 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[3rd] Add nickname info from %{public}s with record: %@", __p, 0x16u);
          if (SBYTE3(v47) < 0)
          {
            operator delete(*buf);
          }
        }

        v21 = +[CloudPairing sharedInstance];
        v22 = [v21 cloudClient];
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v33[2] = sub_100566C34;
        v33[3] = &unk_100AFC848;
        v33[4] = a2;
        [v22 createDeviceRecord:v18 completion:v33];

LABEL_80:
        goto LABEL_81;
      }

      v29 = qword_100BCE960;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(a2, buf);
        v30 = SBYTE3(v47) >= 0 ? buf : *buf;
        *__p = 136446210;
        *&__p[4] = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[3rd] Remove nickname info from %{public}s", __p, 0xCu);
        if (SBYTE3(v47) < 0)
        {
          operator delete(*buf);
        }
      }

      v18 = +[CloudPairing sharedInstance];
      v21 = [v18 cloudClient];
      sub_1000BE6F8(a2 + 128, buf);
      if (SBYTE3(v47) >= 0)
      {
        v31 = buf;
      }

      else
      {
        v31 = *buf;
      }

      v32 = [NSString stringWithUTF8String:v31];
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100566AF0;
      v34[3] = &unk_100AFC848;
      v34[4] = a2;
      [v21 deleteDeviceRecord:v32 completion:v34];

      if (SBYTE3(v47) < 0)
      {
        operator delete(*buf);
      }

      goto LABEL_80;
    }
  }

  else if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_100843224();
  }
}

void sub_100566A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100566AF0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE960;
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(*(a1 + 32), __p);
      sub_100843288();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 32), __p);
    v6 = v8 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[3rd] Removed cloud device %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100566C34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCE960;
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000E5A58(*(a1 + 32), __p);
      sub_1008432D8();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(*(a1 + 32), __p);
    v6 = v8 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[3rd] Create cloud device %{public}s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100566D78(uint64_t a1)
{
  v2 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ----------------- Magic Pairing Manager ------------------", buf, 2u);
  }

  v3 = qword_100BCE960;
  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "statedump: Magic Paired devices:", buf, 2u);
  }

  v4 = sub_10000E92C();
  if ((*(*v4 + 8))(v4))
  {
    v5 = qword_100BCE960;
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      v8 = (a1 + 216);
      if (*(a1 + 239) < 0)
      {
        v8 = *v8;
      }

      v9 = *(a1 + 241);
      if (sub_1000E25D8(v6, v7))
      {
        v10 = *(a1 + 240);
      }

      else
      {
        v10 = 0;
      }

      *buf = 136315650;
      *v39 = v8;
      *&v39[8] = 1024;
      *&v39[10] = v9;
      v40 = 1024;
      v41 = v10;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Cloud Account ID: %s, Cloud Signed in: %d, Initialized: %d", buf, 0x18u);
    }

    v11 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *v39 = 16;
      *&v39[4] = 2096;
      *&v39[6] = a1 + 49;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Acc Master Key:%.16P", buf, 0x12u);
    }

    v12 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *v39 = 16;
      *&v39[4] = 2096;
      *&v39[6] = a1 + 65;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Acc Master Hint:%.16P", buf, 0x12u);
    }

    v13 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *v39 = 16;
      *&v39[4] = 2096;
      *&v39[6] = a1 + 81;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Acc Master Cloud IRK:%.16P", buf, 0x12u);
    }

    v14 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *v39 = 6;
      *&v39[4] = 2096;
      *&v39[6] = a1 + 97;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Acc Master Cloud Addr:%.6P", buf, 0x12u);
    }

    v15 = *(a1 + 176);
    if (v15 != *(a1 + 184))
    {
      v16 = &_mh_execute_header;
      do
      {
        v17 = **v15;
        v36 = 0;
        v37 = 0;
        sub_1000C2364(v17, &v37 + 1, &v37, &v36 + 1, &v36);
        ccsha256_di();
        memset(v47, 0, sizeof(v47));
        memset(v46, 0, sizeof(v46));
        v18 = qword_100BCE960;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v16;
          sub_1000E5A58(v17, __p);
          v20 = v35;
          v21 = __p[0];
          v22 = HIDWORD(v36);
          v23 = v37;
          v24 = sub_1000E31D0(v17);
          *buf = 136446978;
          v25 = __p;
          if (v20 < 0)
          {
            v25 = v21;
          }

          *v39 = v25;
          *&v39[8] = 1024;
          *&v39[10] = v23;
          v40 = 1024;
          v41 = v22;
          v42 = 1024;
          LODWORD(v43) = v24 & 2;
          v16 = v19;
          _os_log_impl(v19, v18, OS_LOG_TYPE_DEFAULT, "statedump: Device %{public}s, vid: %x, pid: %x, Fake: %d", buf, 0x1Eu);
          if (v35 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v26 = qword_100BCE960;
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
        {
          v27 = (*v15 + 5);
          v28 = (*v15 + 7);
          v29 = *(*v15 + 18);
          *buf = 68158722;
          *v39 = 16;
          *&v39[4] = 2096;
          *&v39[6] = v27;
          v40 = 1040;
          v41 = 16;
          v42 = 2096;
          v43 = v28;
          v44 = 1024;
          v45 = v29;
          _os_log_impl(v16, v26, OS_LOG_TYPE_DEFAULT, "Acc Key %.16P for Hint %.16P  and Ratchet %d ", buf, 0x28u);
        }

        v30 = qword_100BCE960;
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
        {
          v31 = (*v15 + 1);
          v32 = (*v15 + 3);
          *buf = 68158466;
          *v39 = 16;
          *&v39[4] = 2096;
          *&v39[6] = v31;
          v40 = 1040;
          v41 = 16;
          v42 = 2096;
          v43 = v32;
          _os_log_impl(v16, v30, OS_LOG_TYPE_DEFAULT, "IRK %.16P and Encryption key %.16P", buf, 0x22u);
        }

        ccdigest();
        ccdigest();
        v33 = qword_100BCE960;
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68158466;
          *v39 = 32;
          *&v39[4] = 2096;
          *&v39[6] = v47;
          v40 = 1040;
          v41 = 32;
          v42 = 2096;
          v43 = v46;
          _os_log_impl(v16, v33, OS_LOG_TYPE_DEFAULT, "Hashed IRK %.32P and Hashed Encryption key %.32P", buf, 0x22u);
        }

        ++v15;
      }

      while (v15 != *(a1 + 184));
    }
  }
}

void sub_100567388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, _OWORD *a7)
{
  v12 = qword_100BCE960;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, &v54);
    v13 = v56;
    v14 = v54.n128_u64[0];
    v15 = sub_1002D762C(a3);
    v16 = &v54;
    *buf = 136446722;
    if (v13 < 0)
    {
      v16 = v14;
    }

    *&buf[4] = v16;
    *&buf[12] = 1024;
    *&buf[14] = a3;
    *&buf[18] = 2080;
    *&buf[20] = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Magic pairing completed with device %{public}s status:%d, %s", buf, 0x1Cu);
    if (v56 < 0)
    {
      operator delete(v54.n128_u64[0]);
    }
  }

  v47[0] = 0;
  v47[1] = 0;
  sub_100007F88(v47, a1 + 104);
  for (i = *(a1 + 176); i != *(a1 + 184); ++i)
  {
    v18 = *i;
    if (**i == a2)
    {
      goto LABEL_11;
    }
  }

  v18 = 0;
LABEL_11:
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v23 = qword_100BCE960;
      v24 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
      if (v24)
      {
        *buf = 138412290;
        *&buf[4] = @"Peer device has no pairing keys BT_MAGIC_PAIRING_KEY_NOT_FOUND";
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3812000000;
      *&buf[24] = sub_100042378;
      v51 = nullsub_26;
      v52 = "";
      *(v53 + 3) = 0;
      v53[0] = 0;
      *(&v53[1] + 1) = *(a2 + 132);
      *(v53 + 1) = *(a2 + 128);
      v26 = sub_100007EE8(v24, v25);
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_100567D2C;
      v46[3] = &unk_100AE1120;
      v46[4] = buf;
      sub_10000CA94(v26, v46);
      _Block_object_dispose(buf, 8);
      v20 = @"Peer device has no pairing keys BT_MAGIC_PAIRING_KEY_NOT_FOUND";
      goto LABEL_45;
    }

    if (a3 != 7)
    {
      if (a3 == 8)
      {
        v19 = qword_100BCE960;
        v20 = @"We dont have keys for the peer device BT_MAGIC_PAIRING_NO_KEYS_FOR_PEER";
        if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = @"We dont have keys for the peer device BT_MAGIC_PAIRING_NO_KEYS_FOR_PEER";
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
        }

LABEL_45:
        v44 = 0;
        v45 = 0;
        sub_1000C2364(a2, &v45 + 1, &v45, &v44 + 1, &v44);
        if (v18)
        {
          v28 = *(v18 + 112);
          if (v28 != a3)
          {
            *(v18 + 112) = a3;
          }

          if (a6 <= 0x3A98)
          {
            if ((a6 - 10001) >> 3 > 0x270)
            {
              if ((a6 - 7501) >= 0x9C4)
              {
                if ((a6 - 5001) >= 0x9C4)
                {
                  if ((a6 - 2501) >= 0x9C4)
                  {
                    if ((a6 - 1001) >= 0x5DC)
                    {
                      if ((a6 - 501) >= 0x1F4)
                      {
                        if ((a6 - 251) >= 0xFA)
                        {
                          if ((a6 - 1) >= 0xFA)
                          {
                            v29 = 0;
                          }

                          else
                          {
                            v29 = 250;
                          }
                        }

                        else
                        {
                          v29 = 500;
                        }
                      }

                      else
                      {
                        v29 = 1000;
                      }
                    }

                    else
                    {
                      v29 = 2500;
                    }
                  }

                  else
                  {
                    v29 = 5000;
                  }
                }

                else
                {
                  v29 = 7500;
                }
              }

              else
              {
                v29 = 10000;
              }
            }

            else
            {
              v29 = 15000;
            }
          }

          else
          {
            v29 = 0xFFFFFFFFLL;
          }

          v48[0] = @"FWVersion";
          sub_1000E2D2C(a2, 0xAu, &v54);
          if (v56 >= 0)
          {
            v31 = &v54;
          }

          else
          {
            v31 = v54.n128_u64[0];
          }

          v41 = [NSString stringWithUTF8String:v31];
          v49[0] = v41;
          v48[1] = @"PID";
          v32 = [NSNumber numberWithUnsignedInt:HIDWORD(v44)];
          v49[1] = v32;
          v48[2] = @"PreviousStatus";
          v33 = [NSNumber numberWithUnsignedChar:v28];
          v49[2] = v33;
          v48[3] = @"RatchetRange";
          v34 = [NSNumber numberWithUnsignedInt:v29];
          v49[3] = v34;
          v48[4] = @"RatchetInternal";
          v35 = [NSNumber numberWithUnsignedInt:a6];
          v49[4] = v35;
          v49[5] = v20;
          v48[5] = @"Reason";
          v48[6] = @"RepeatingStatus";
          v36 = [NSNumber numberWithBool:v28 == a3];
          v49[6] = v36;
          v48[7] = @"Status";
          v37 = [NSNumber numberWithUnsignedChar:a3];
          v49[7] = v37;
          v48[8] = @"VID";
          v38 = [NSNumber numberWithUnsignedInt:v45];
          v49[8] = v38;
          v39 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:9];

          if (v56 < 0)
          {
            operator delete(v54.n128_u64[0]);
          }

          v40 = *(a1 + 208);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100567DB8;
          block[3] = &unk_100AE1200;
          block[4] = v39;
          block[5] = a2;
          dispatch_async(v40, block);
        }

        goto LABEL_76;
      }

      goto LABEL_37;
    }

    goto LABEL_19;
  }

  if (a3)
  {
    if (a3 != 1)
    {
LABEL_37:
      v20 = [NSString stringWithFormat:@"Magic Pairing failed due to %s", sub_1002D762C(a3)];
LABEL_38:
      v27 = qword_100BCE960;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1000E5A58(a2, buf);
        sub_10084337C();
      }

      v54.n128_u8[0] = 0;
      sub_1000216B4(&v54);
      if (sub_10023BD60(a2 + 128))
      {

        v20 = @"Magic Pairing error disconnect failed";
      }

      if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
      {
        sub_1008433D0();
      }

      sub_10002249C(&v54);
      goto LABEL_45;
    }

LABEL_19:
    v21 = "BT_MAGIC_PAIRING_FAILED_VERIFICATION";
    if (a3 == 1)
    {
      v21 = "BT_MAGIC_PAIRING_INTERNAL_ERROR";
    }

    v20 = [NSString stringWithFormat:@"Magic Pairing failed due to %s", v21];
    v22 = qword_100BCE960;
    if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v20;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }

    sub_10055ACB4(a1, v18);
    goto LABEL_38;
  }

  v54 = 0uLL;
  v55 = 0;
  sub_1006D1BAC(&v54, a7, 4u);
  if (qword_100B512E8 != -1)
  {
    sub_100841AC0();
  }

  sub_1006E7F2C(off_100B512E0, a2, &v54, 1);
  if (v18)
  {
    if (a5)
    {
      *(v18 + 5) = *a5;
    }

    if (a6)
    {
      *(v18 + 18) = a6;
    }

    if (*(a1 + 48) == 1)
    {
      buf[0] = 0;
      sub_1000216B4(buf);
      sub_10055867C(a1);
      sub_10002249C(buf);
    }

    sub_10055B09C(a1, a2);
    nullsub_21();
    v20 = @"Success";
    goto LABEL_45;
  }

  v30 = qword_100BCE960;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    sub_1000E5A58(a2, buf);
    sub_100843328();
  }

  nullsub_21();
  v20 = @"Success";
LABEL_76:
  sub_1000088CC(v47);
}

void sub_100567BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);

  nullsub_21();
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

uint64_t sub_100567D2C(uint64_t a1)
{
  if (qword_100B51078 != -1)
  {
    sub_100841BC4();
  }

  sub_1007B0D18(off_100B51070, (*(*(a1 + 32) + 8) + 48));
  if (qword_100B508C0 != -1)
  {
    sub_100841BD8();
  }

  v2 = off_100B508B8;
  v3 = *(*(a1 + 32) + 8) + 48;

  return sub_1007C77C0(v2, v3);
}

void sub_100567DB8(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000F034(a1, a2);
  (*(*v3 + 352))(v3, *(a1 + 32), *(a1 + 40));
  if (_os_feature_enabled_impl())
  {
    if (qword_100B543A8 != -1)
    {
      sub_100843440();
    }

    v4 = qword_100B543A0;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    sub_1007062CC(v4, v5, v6);
  }
}

uint64_t sub_100567E64(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4, _OWORD *a5, _OWORD *a6, int a7)
{
  *(a1 + 88) = 0;
  v8 = a1 + 88;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = -1;
  *a1 = a2;
  *(a1 + 8) = *a3;
  *(a1 + 24) = *a4;
  *(a1 + 72) = a7;
  *(a1 + 84) = 0;
  *(a1 + 40) = *a5;
  *(a1 + 56) = *a6;
  *(a1 + 77) = 0;
  v9 = *(a2 + 128);
  *(a1 + 82) = *(a2 + 132);
  *(a1 + 78) = v9;
  sub_1000C23E0(a2, &v11);
  if (*(a1 + 111) < 0)
  {
    operator delete(*v8);
  }

  *v8 = v11;
  *(v8 + 16) = v12;
  return a1;
}

void sub_100567F18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_100567F34(uint64_t a1, uint64_t a2)
{
  if ((sub_1000E25D8(a1, a2) & 1) == 0)
  {
    v11 = qword_100BCE960;
    if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(buf) = 0;
    v12 = "upgradeToManatee, Magic Pairing not supported";
LABEL_17:
    v13 = v11;
    v14 = 2;
    goto LABEL_18;
  }

  if (qword_100B508F0 != -1)
  {
    sub_100841AAC();
  }

  if ((sub_1000BE6E8(off_100B508E8) & 1) == 0)
  {
    v11 = qword_100BCE960;
    if (!os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(buf) = 0;
    v12 = "upgradeToManatee System has not passed first unlock (or device prefs not read yet). Do not write DeviceList to Cloud";
    goto LABEL_17;
  }

  if (*(a1 + 49) != 0 && *(a1 + 65) != 0)
  {
    v16 = 0;
    v3 = sub_100017E6C();
    (*(*v3 + 80))(v3, &v16 + 1);
    v4 = sub_100017E6C();
    (*(*v4 + 88))(v4, &v16);
    v5 = *(a1 + 241);
    v6 = HIBYTE(v16);
    v7 = qword_100BCE960;
    v8 = os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_DEFAULT);
    if (v5 == 1 && !v6)
    {
      if (v8)
      {
        v9 = (*(a1 + 184) - *(a1 + 176)) >> 3;
        buf = 134217984;
        *buf_4 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "upgradeToManatee information for %lu devices to cloud", &buf, 0xCu);
      }

      v10 = *(a1 + 184) - *(a1 + 176);
      if (v10)
      {
        is_mul_ok(v10 >> 3, 0x98uLL);
        operator new[]();
      }

      (*(**(a1 + 168) + 168))(*(a1 + 168), 0, 0, a1 + 49, a1 + 65);
      return;
    }

    if (!v8)
    {
      return;
    }

    if (*(a1 + 241))
    {
      v15 = "online";
    }

    else
    {
      v15 = "signed in";
    }

    buf = 136446210;
    *buf_4 = v15;
    v12 = "Warning: Device is not %{public}s";
    v13 = v7;
    v14 = 12;
LABEL_18:
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, &buf, v14);
    return;
  }

  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_100843454();
  }

  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_100843490();
  }

  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_100843514();
  }
}

void sub_1005689CC(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = v4;
  if (v4 != v5)
  {
    while (*v6 != a2)
    {
      v6 += 8;
      if (v6 == v5)
      {
        v6 = *(a1 + 16);
        goto LABEL_6;
      }
    }
  }

  if (v6 == v5)
  {
LABEL_6:
    if (v4 == v5)
    {
      (***(a1 + 32))(*(a1 + 32), a1);
    }

    v7 = a2;
    sub_100568A98((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_100568A98(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_1000C7698();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      sub_100008108(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    sub_1000DB838(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = (v6 + 8);
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_100568C34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100568C6C(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock(a1);
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 != v4)
  {
    while (*v5 != a2)
    {
      v5 += 8;
      if (v5 == v4)
      {
        goto LABEL_10;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 16) = &v5[v6];
    sub_1000C8CF0((a1 + 8));
    if (*(a1 + 8) == *(a1 + 16))
    {
      (*(**(a1 + 32) + 8))(*(a1 + 32), a1);
    }
  }

LABEL_10:

  os_unfair_lock_unlock(a1);
}

void sub_10056921C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x22u);
}

BOOL sub_10056923C(char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v5 = *a1;
    while (*v5 != a2)
    {
      v5 += 8;
      v3 += 8;
      if (v5 == v4)
      {
        v3 = a1[1];
        break;
      }
    }
  }

  if (v4 != v3)
  {
    if (v4 != v3 + 8)
    {
      memmove(v3, v3 + 8, v4 - (v3 + 8));
    }

    a1[1] = v4 - 8;
  }

  return v4 != v3;
}

uint64_t sub_1005692C4(uint64_t a1)
{
  *a1 = off_100AFCB78;
  *(a1 + 8) = off_100AFCC08;
  *(a1 + 16) = off_100AFCC28;
  *(a1 + 24) = off_100AFCC60;
  *(a1 + 32) = &off_100AFCC88;
  *(a1 + 40) = off_100AFCCA0;
  sub_100044BBC((a1 + 48));
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  sub_100044BBC((a1 + 168));
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = a1 + 280;
  *(a1 + 305) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  return a1;
}

void sub_100569400(_Unwind_Exception *a1)
{
  v5 = v3;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 152) = v7;
    operator delete(v7);
  }

  sub_10000CEDC(v2, *v4);
  sub_10007A068(v1 + 48);
  _Unwind_Resume(a1);
}

uint64_t sub_100569438(uint64_t a1)
{
  *a1 = off_100AFCB78;
  *(a1 + 8) = off_100AFCC08;
  *(a1 + 16) = off_100AFCC28;
  *(a1 + 24) = off_100AFCC60;
  *(a1 + 32) = &off_100AFCC88;
  *(a1 + 40) = off_100AFCCA0;

  sub_10000CEDC(a1 + 272, *(a1 + 280));
  v2 = *(a1 + 248);
  if (v2)
  {
    *(a1 + 256) = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 168);
  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  sub_10000CEDC(a1 + 112, *(a1 + 120));
  sub_10007A068(a1 + 48);
  return a1;
}

void sub_100569574(uint64_t a1)
{
  sub_100569438(a1);

  operator delete();
}

void sub_1005695AC(uint64_t a1)
{
  sub_100569438(a1 - 16);

  operator delete();
}

uint64_t sub_1005695E8(uint64_t a1)
{
  v51[0] = 0;
  v51[1] = 0;
  sub_100007F88(v51, a1 + 168);
  if (qword_100B50B88 != -1)
  {
    sub_10084359C();
  }

  sub_10051ABE0(qword_100B50B80 + 8, a1 + 8);
  if (qword_100B512E8 != -1)
  {
    sub_1008435C4();
  }

  sub_1006E8870(off_100B512E0, a1 + 16);
  if (qword_100B50F68 != -1)
  {
    sub_1008435EC();
  }

  sub_10012E3B0(off_100B50F60 + 24, a1 + 24);
  if (qword_100B512C8 != -1)
  {
    sub_100843614();
  }

  sub_10036EF4C(off_100B512C0 + 80, a1 + 32);
  if (qword_100B50AA0 != -1)
  {
    sub_10084363C();
  }

  sub_100312650(off_100B50A98 + 64, a1 + 40);
  atomic_store(0, (a1 + 232));
  v2 = MKBDeviceUnlockedSinceBoot();
  if (v2)
  {
    v4 = sub_1000BE4B4(v2, v3);
    (**v4)(v4);
    v5 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "DeviceManager init, system already unlocked, allow read/write device settings", buf, 2u);
    }

    atomic_store(1u, (a1 + 232));
    v6 = *(a1 + 144);
    v7 = *(a1 + 152);
    while (v6 != v7)
    {
      sub_100533704(*v6++);
    }

    sub_100569EDC(a1);
    if (qword_100B508A0 != -1)
    {
      sub_100843664();
    }

    sub_100575548(off_100B50898);
  }

  else
  {
    out_token = 0;
    v10 = *(sub_100017F4C(v2, v3) + 8);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10056A110;
    handler[3] = &unk_100AF0BA0;
    handler[4] = a1;
    v11 = notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &out_token, v10, handler);
    if (v11)
    {
      if (IsAppleInternalBuild())
      {
        v48 = 0;
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
        v35 = 0u;
        v33 = 0u;
        v34 = 0u;
        *buf = 0u;
        v32 = 0u;
        sub_100007AD0(buf);
        v12 = sub_100007774(&v32, "Failed registration for MKB first unlock notification with error : ", 67);
        std::to_string(&__p, v11);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          LODWORD(p_p) = __p.__r_.__value_.__l.__data_;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v14 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v14 = __p.__r_.__value_.__r.__words[1];
        }

        sub_100007774(v12, p_p, v14);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::stringbuf::str();
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &__p;
        }

        else
        {
          v15 = __p.__r_.__value_.__r.__words[0];
        }

        sub_1001C4B04(v15);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        *&v32 = v16;
        if (SHIBYTE(v37) < 0)
        {
          operator delete(*(&v36 + 1));
        }

        std::locale::~locale(&v33);
        std::iostream::~basic_iostream();
        v17 = std::ios::~ios();
      }

      else
      {
        v17 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT);
        if (v17)
        {
          sub_10084368C();
        }
      }
    }

    else
    {
      v19 = qword_100BCE8D8;
      v17 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Successfully registered for MKB first unlock notification", buf, 2u);
      }
    }

    v29 = 0;
    v20 = *(sub_100017F4C(v17, v18) + 8);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_10056A27C;
    v28[3] = &unk_100AF0BA0;
    v28[4] = a1;
    v21 = notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &v29, v20, v28);
    if (v21)
    {
      if (IsAppleInternalBuild())
      {
        v48 = 0;
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
        v35 = 0u;
        v33 = 0u;
        v34 = 0u;
        *buf = 0u;
        v32 = 0u;
        sub_100007AD0(buf);
        v22 = sub_100007774(&v32, "Failed registration for MKB first lockstatus unlock notification with error : ", 78);
        std::to_string(&__p, v21);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &__p;
        }

        else
        {
          LODWORD(v23) = __p.__r_.__value_.__l.__data_;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v24 = __p.__r_.__value_.__r.__words[1];
        }

        sub_100007774(v22, v23, v24);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        std::stringbuf::str();
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v25 = &__p;
        }

        else
        {
          v25 = __p.__r_.__value_.__r.__words[0];
        }

        sub_1001C4B04(v25);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        *&v32 = v26;
        if (SHIBYTE(v37) < 0)
        {
          operator delete(*(&v36 + 1));
        }

        std::locale::~locale(&v33);
        std::iostream::~basic_iostream();
        std::ios::~ios();
      }

      else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
      {
        sub_1008436FC();
      }
    }

    else
    {
      v27 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "DeviceManager Successfully registered for MKB first lockstatus unlock notification", buf, 2u);
      }
    }
  }

  *(a1 + 296) = 0;
  v8 = sub_10000E92C();
  sub_100007E30(buf, "A2DP");
  sub_100007E30(&__p, "WirelessSplitterLinkKeyTimeout");
  (*(*v8 + 88))(v8, buf, &__p, a1 + 296);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v32) < 0)
  {
    operator delete(*buf);
  }

  *(a1 + 300) = 0;
  *(a1 + 304) = 1;
  return sub_1000088CC(v51);
}

void sub_100569E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_1007FC91C(&a22);
  sub_1000088CC(v27 - 96);
  _Unwind_Resume(a1);
}

uint64_t sub_100569EDC(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Device Database has been updated, update device info for all paired devices", buf, 2u);
  }

  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 168);
  *buf = 0;
  v12 = 0;
  v13 = 0;
  sub_100007F20(buf, (a1 + 144));
  sub_10000801C(v14);
  v4 = *buf;
  v3 = v12;
  if (*buf != v12)
  {
    do
    {
      v5 = *v4;
      if (*v4)
      {
        v6 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(v5, __p);
          v7 = v10 >= 0 ? __p : __p[0];
          *v15 = 136446210;
          v16 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending 'name changed' event for device %{public}s", v15, 0xCu);
          if (v10 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_10056B15C(a1, v5, 6);
        if (qword_100B50AC0 != -1)
        {
          sub_10084376C();
        }

        sub_100594AA0(off_100B50AB8, v5, 0xFFFFFFFFLL, 0, 701, 0);
        v3 = v12;
      }

      ++v4;
    }

    while (v4 != v3);
    v4 = *buf;
  }

  if (v4)
  {
    v12 = v4;
    operator delete(v4);
  }

  return sub_1000088CC(v14);
}

void sub_10056A0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10056A118(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = MKBDeviceUnlockedSinceBoot();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DeviceManager: Received MKB first unlock notification. MKBDeviceUnlockedSinceBoot returns : %d", buf, 8u);
  }

  v3 = MKBDeviceUnlockedSinceBoot();
  if (v3 != 1)
  {
    v3 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT);
    if (v3)
    {
      sub_100843794();
    }
  }

  v5 = sub_1000BE4B4(v3, v4);
  v6 = (**v5)(v5);
  v8 = sub_100017F4C(v6, v7);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10056E6F0;
  v9[3] = &unk_100ADF8F8;
  v9[4] = a1;
  sub_10008E008(v8, 2000, v9);
  *(a1 + 305) = 1;
}

uint64_t sub_10056A27C(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MKBDeviceUnlockedSinceBoot();
    v6 = *(v3 + 305);
    v8[0] = 67109376;
    v8[1] = v5;
    v9 = 1024;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "DeviceManager: kMobileKeyBagLockStatusNotificationID happened with MKBDeviceUnlockedSinceBoot() = %d and fFirstUnlockHappened =%d", v8, 0xEu);
  }

  if (MKBDeviceUnlockedSinceBoot() == 1 && (*(v3 + 305) & 1) == 0)
  {
    sub_10056A118(v3);
  }

  return notify_cancel(a2);
}

void sub_10056A364(void *a1)
{
  if (qword_100B50F68 != -1)
  {
    sub_1008437D0();
  }

  sub_10007A3F0(off_100B50F60 + 24, (a1 + 3));
  if (qword_100B512E8 != -1)
  {
    sub_1008437E4();
  }

  sub_1006E89A0(off_100B512E0, (a1 + 2));
  if (qword_100B50B88 != -1)
  {
    sub_1008437F8();
  }

  sub_10007A3F0(qword_100B50B80 + 8, (a1 + 1));
  if (qword_100B50AA0 != -1)
  {
    sub_10084380C();
  }

  sub_10007A3F0(off_100B50A98 + 64, (a1 + 5));
  v2 = a1[14];
  v3 = a1 + 15;
  if (v2 != a1 + 15)
  {
    do
    {
      if (qword_100B50B88 != -1)
      {
        sub_1008437F8();
      }

      sub_1006189DC(qword_100B50B80, v2[4]);
      v4 = v2[1];
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
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  sub_10000CEDC((a1 + 14), a1[15]);
  a1[15] = 0;
  a1[16] = 0;
  a1[14] = v3;
}

unint64_t sub_10056A4C4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 48);
  v6 = 0;
  if (!a2 || !a3)
  {
    goto LABEL_23;
  }

  if (qword_100B50B88 != -1)
  {
    sub_100843820();
  }

  v7 = sub_100076290(qword_100B50B80, a2);
  if (!v7)
  {
LABEL_22:
    v6 = 0;
    goto LABEL_23;
  }

  v10 = *(a1 + 112);
  v8 = a1 + 112;
  v9 = v10;
  if (v10 == (v8 + 8))
  {
LABEL_18:
    if (qword_100B50B88 != -1)
    {
      sub_100843820();
    }

    v15 = sub_1006185D8(qword_100B50B80, v7);
    if (v15)
    {
      v17 = &v15;
      sub_10005E16C(v8, &v15, &unk_1008A9BD0, &v17)[5] = a3;
      v6 = v15;
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  while (1)
  {
    if (v9[5] == a3)
    {
      v6 = v9[4];
      if (v6 == a2)
      {
        break;
      }

      if (qword_100B50B88 != -1)
      {
        sub_100843820();
      }

      if (sub_100076290(qword_100B50B80, v6) == v7)
      {
        break;
      }
    }

    v11 = v9[1];
    if (v11)
    {
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      do
      {
        v12 = v9[2];
        v13 = *v12 == v9;
        v9 = v12;
      }

      while (!v13);
    }

    v9 = v12;
    if (v12 == (v8 + 8))
    {
      goto LABEL_18;
    }
  }

LABEL_23:
  sub_1000088CC(v16);
  return v6;
}

void sub_10056A654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10056A684(uint64_t a1, unsigned __int8 *a2)
{
  sub_100536908(a2);
  result = sub_1000C0348(a2);
  if ((result & 1) == 0)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      if (v7 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136446210;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device %{public}s is fully disconnected and now unpaired, resetting it", buf, 0xCu);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return sub_10054E278(a2);
  }

  return result;
}

uint64_t sub_10056A780(uint64_t result, uint64_t a2, int a3)
{
  v5 = result;
  v6 = 0;
  if (*(a2 + 1016) == 1)
  {
    sub_1005485C4(a2, &v6);
    result = sub_10056A818(v5, a2);
  }

  if (!a3)
  {
    sub_1000D42DC(&v6, 0);
    sub_10054D528(a2, &v6);
    result = sub_1000DEB14(a2);
    *(v5 + 300) |= 1 << result;
  }

  return result;
}

void *sub_10056A818(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  if (*(a1 + 288))
  {
    v4 = *(a1 + 272);
    v5 = *(v4 + 32);
    if (v5 == a2)
    {
      if (*(v4 + 40) == 1)
      {
        v7 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(v5, &__p);
          v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          *buf = 136446210;
          *&buf[4] = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Wireless Splitter cancelling linkkey timeout for guest device %{public}s", buf, 0xCu);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        sub_10056E7F0(a1, 0, 0);
        *(a2 + 1028) = 3;
      }
    }

    else
    {
      memset(&__p, 0, sizeof(__p));
      v6 = sub_100007E30(&__p, "WS_ERROR_OTHER_DELETE_GUEST_ONLY_ONE_ALLOWED");
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        v6 = sub_100008904(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        __dst = __p;
      }

      sub_10056AE78(v6, &__dst);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v9 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v5, buf);
        v10 = v21;
        v11 = *buf;
        sub_1000E5A58(a2, v15);
        v12 = buf;
        if (v10 < 0)
        {
          v12 = v11;
        }

        if (v16 >= 0)
        {
          v13 = v15;
        }

        else
        {
          v13 = v15[0];
        }

        *v22 = 136446466;
        v23 = v12;
        v24 = 2082;
        v25 = v13;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Wireless Splitter deleting guest device %{public}s, to only allow one guest at a time. New guest device will be %{public}s", v22, 0x16u);
        if (v16 < 0)
        {
          operator delete(v15[0]);
        }

        if (v21 < 0)
        {
          operator delete(*buf);
        }
      }

      if (qword_100B50F88 != -1)
      {
        sub_100843848();
      }

      sub_1006E0DBC(off_100B50F80, v5);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  __p.__r_.__value_.__r.__words[0] = &v19;
  result = sub_1005702E4(a1 + 272, &v19, &unk_1008A9BD0, &__p);
  *(result + 40) = 0;
  return result;
}

void sub_10056AAC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10056AB1C(uint64_t a1, unint64_t a2, int a3, int a4)
{
  result = sub_1000C0348(a2);
  if (result & 1) != 0 || (result = sub_1000295DC(a2), (result))
  {
    if (!a3)
    {
      v15 = 0;
      sub_1000D42DC(&v15, 0);
      sub_10054D528(a2, &v15);
      *(a1 + 300) &= ~(1 << sub_1000DEB14(a2));
      if (*(a2 + 1016) == 1)
      {
        v9 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000E5A58(a2, &__p);
          v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          LODWORD(buf.__r_.__value_.__l.__data_) = 136446466;
          *(buf.__r_.__value_.__r.__words + 4) = v10;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = a4;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Wireless Splitter guest device %{public}s disconnected with reason %u", &buf, 0x12u);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        memset(&__p, 0, sizeof(__p));
        std::to_string(&__p, a4);
        memset(&buf, 0, sizeof(buf));
        v11 = std::operator+<char>();
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          v11 = sub_100008904(&v14, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
        }

        else
        {
          v14 = buf;
        }

        sub_10056AE78(v11, &v14);
        if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v14.__r_.__value_.__l.__data_);
        }

        sub_1005485C4(a2, &v15);
        sub_10056AFEC(a1, a2);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      sub_100007E30(&__p, "");
      *(a2 + 1499) = 0;
      std::string::operator=((a2 + 1544), &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_10053914C(a2, 0);
      result = _os_feature_enabled_impl();
      if (result)
      {
        if (!sub_100539FE8(a2))
        {
          return sub_10053F4E8(a2);
        }

        result = sub_10053E494(a2);
        if ((result & 1) == 0)
        {
          return sub_10053F4E8(a2);
        }
      }
    }
  }

  else
  {
    v12 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, &__p);
      v13 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device %{public}s is unpaired and now fully disconnected, resetting it", &buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    return sub_10054E278(a2);
  }

  return result;
}

void sub_10056AE20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056AE78(uint64_t a1, const std::string *a2)
{
  *__p = 0u;
  v14 = 0u;
  v11 = 0u;
  *v12 = 0u;
  *v9 = 0u;
  *v10 = 0u;
  memset(v8, 0, sizeof(v8));
  sub_1004E4528(v8);
  std::string::operator=(&__p[1], a2);
  v3 = qword_100BCE8D8;
  v4 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v14 >= 0)
    {
      v6 = &__p[1];
    }

    else
    {
      v6 = __p[1];
    }

    *buf = 136315138;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Wireless Splitter submitting following error metric: fErrorCode %s", buf, 0xCu);
  }

  v7 = sub_10000F034(v4, v5);
  (*(*v7 + 176))(v7, v8);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(__p[0]) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[1]);
  }

  if (SHIBYTE(v10[0]) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_10056AFEC(uint64_t result, unint64_t a2)
{
  v14 = a2;
  v2 = *(result + 280);
  if (v2)
  {
    v4 = result + 280;
    do
    {
      v5 = *(v2 + 32);
      v6 = v5 >= a2;
      v7 = v5 < a2;
      if (v6)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * v7);
    }

    while (v2);
    if (v4 != result + 280 && *(v4 + 32) <= a2)
    {
      *sub_10056E904(result + 272, &v14) = 1;
      v8 = *(result + 296);
      if (!v8)
      {
        v8 = 480000;
      }

      v9 = v8;
      v10 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(*(*(result + 272) + 32), __p);
        if (v13 >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = __p[0];
        }

        *buf = 136446466;
        v16 = v11;
        v17 = 2048;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Wireless Splitter starting linkkey timeout for guest device %{public}s with timeout %llums", buf, 0x16u);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }
      }

      sub_10056E7F0(result, 1, v9);
    }
  }
}

uint64_t sub_10056B15C(uint64_t result, uint64_t a2, int a3)
{
  v5 = result;
  if (a3 != 18 || (v6 = sub_10000C798(result, a2), result = (*(*v6 + 416))(v6), !result) || (result = sub_10056C6F0(v5, a2), result))
  {
    v7 = sub_10042FE9C(result, a2);
    sub_100416F50(v7, a2);
    if (qword_100B50AC0 != -1)
    {
      sub_100843870();
    }

    sub_100598044(off_100B50AB8, a2);
    v10[0] = 0;
    v10[1] = 0;
    sub_100007F88(v10, &v5[42]);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10056C8D4;
    v8[3] = &unk_100AFCCE8;
    v8[4] = a2;
    v9 = a3;
    sub_1000E4E40(v5 + 60, v8);
    return sub_1000088CC(v10);
  }

  return result;
}

void sub_10056B280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10056B294(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 168);
  for (i = *(a1 + 144); ; ++i)
  {
    if (i == *(a1 + 152))
    {
      v5 = 0;
      goto LABEL_8;
    }

    v5 = *i;
    v6 = sub_10053FCFC(*i);
    v7 = v6;
    if (v6)
    {
      if ([v6 isEqualToString:v3])
      {
        break;
      }
    }
  }

LABEL_8:
  sub_1000088CC(v9);

  return v5;
}

unsigned __int8 *sub_10056B370(uint64_t a1, uint64_t a2, _OWORD *a3, BOOL *a4, char *a5)
{
  memset(__len, 0, sizeof(__len));
  *a4 = 0;
  *a5 = 0;
  v33[0] = 0;
  v33[1] = 0;
  sub_100007F88(v33, a1 + 168);
  LODWORD(v29) = *a2;
  WORD2(v29) = *(a2 + 4);
  v10 = sub_1000E6554(a1, &v29, 1);
  v11 = v10[649];
  sub_100538104(v10, a3);
  sub_1005381EC(v10, *(a2 + 13), a3);
  sub_10056B7FC(a1, v10, *(a2 + 8));
  if (sub_1000295DC(v10))
  {
    LODWORD(v29) = 0;
    sub_1000D42DC(&v29, 0);
    sub_10054D528(v10, &v29);
  }

  sub_10000801C(v33);
  v12 = *(a2 + 16);
  if (v12 && *v12)
  {
    v32 = 0;
    sub_1000216B4(&v32);
    v13 = sub_10024A908(*(a2 + 16), &__len[1], __len, a5);
    sub_100022214(&v32);
    *a4 = sub_10054B7C4(v10, *(a2 + 16), 0xF0u);
    if (v13 || !*&__len[1] || (v14 = __len[0]) == 0)
    {
LABEL_41:
      sub_10002249C(&v32);
      goto LABEL_42;
    }

    v29 = 0;
    v30 = 0;
    v31 = 0;
    if (__len[0] >= 0x17u)
    {
      operator new();
    }

    HIBYTE(v31) = __len[0];
    memmove(&v29, *&__len[1], __len[0]);
    *(&v29 + v14) = 0;
    if (*a5 != 1)
    {
      sub_100538354(v10, &v29, a3);
LABEL_39:
      if (SHIBYTE(v31) < 0)
      {
        operator delete(v29);
      }

      goto LABEL_41;
    }

    sub_1000DEEA4(v10, &__p);
    v15 = v38;
    if ((v38 & 0x80u) == 0)
    {
      v16 = v38;
    }

    else
    {
      v16 = *(&__p + 1);
    }

    v17 = HIBYTE(v31);
    if (v31 < 0)
    {
      v17 = v30;
    }

    if (v16 == v17)
    {
      if ((v38 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v31 >= 0)
      {
        v19 = &v29;
      }

      else
      {
        v19 = v29;
      }

      v20 = memcmp(p_p, v19, v16) != 0;
      if ((v15 & 0x80000000) == 0)
      {
LABEL_29:
        if (v20)
        {
          sub_100538494(v10, &v29, a3);
          v21 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            sub_1000E5A58(v10, &__p);
            v22 = (v38 & 0x80u) == 0 ? &__p : __p;
            *buf = 136446210;
            v36 = v22;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Sending 'name changed' event for device %{public}s", buf, 0xCu);
            if (v38 < 0)
            {
              operator delete(__p);
            }
          }

          if (qword_100B50AC0 != -1)
          {
            sub_10084376C();
          }

          sub_100594AA0(off_100B50AB8, v10, 0xFFFFFFFFLL, 0, 701, 0);
        }

        goto LABEL_39;
      }
    }

    else
    {
      v20 = 1;
      if ((v38 & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

    operator delete(__p);
    goto LABEL_29;
  }

LABEL_42:
  v23 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v10, &v29);
    v24 = v31 >= 0 ? &v29 : v29;
    LODWORD(__p) = 136446210;
    *(&__p + 4) = v24;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Discovered device %{public}s", &__p, 0xCu);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v29);
    }
  }

  if (qword_100B50AC0 != -1)
  {
    sub_10084376C();
  }

  v25 = sub_100598044(off_100B50AB8, v10);
  if (v11)
  {
    v27 = sub_10042FE9C(v25, v26);
    sub_100416F50(v27, v10);
  }

  sub_1000088CC(v33);
  return v10;
}

void sub_10056B79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10002249C(&a18);
  sub_1000088CC(&a19);
  _Unwind_Resume(a1);
}

void sub_10056B7FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = 0;
  v21 = a3;
  v5 = sub_1005379CC(a2, &v20);
  v6 = sub_10056BEAC(v5, &v20, a2);
  v19 = v6;
  v7 = sub_10056BEAC(v6, &v21, a2);
  v18 = v7;
  *buf = 0;
  sub_100016250(buf);
  *&v17 = *buf;
  *(&v17 + 1) = *&buf[4];
  if (a3 && v7)
  {
    v8 = v20;
    if (v20 != a3)
    {
      v9 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = sub_10056CB30(&v18);
        v11 = sub_10056CB30(&v19);
        *buf = 67110146;
        *&buf[4] = a3;
        v23 = 2082;
        v24 = v10;
        v25 = 2082;
        v26 = "no";
        v27 = 1024;
        v28 = v8;
        v29 = 2082;
        v30 = v11;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Attempting to set new class of device: %u, type: %{public}s, isBTDeviceTypeOverriden: %{public}s. Prior cached value is %u, %{public}s", buf, 0x2Cu);
      }

      sub_100538254(a2, v7, &v17);
      sub_10053C438(a2, a3, &v17);
      sub_10056C58C(v7, buf);
      sub_100538354(a2, buf, &v17);
      if (SBYTE3(v26) < 0)
      {
        operator delete(*buf);
      }

      sub_10053AD0C(a2, a3);
    }
  }

  else
  {
    v12 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      v13 = sub_10056CB30(&v18);
      sub_1000E5A58(a2, __p);
      v14 = v16 >= 0 ? __p : __p[0];
      *buf = 67109634;
      *&buf[4] = a3;
      v23 = 2080;
      v24 = v13;
      v25 = 2082;
      v26 = v14;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Not setting new class of %u, type %s for device %{public}s because it is invalid", buf, 0x1Cu);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_10056BA5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10056BA80(uint64_t a1, uint64_t a2)
{
  v27 = 0;
  v26 = 0u;
  memset(v25, 0, sizeof(v25));
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  sub_1000DE474(&v19 + 1);
  BYTE2(v20) = 0;
  BYTE4(v20) = 0;
  BYTE2(v22) = 0;
  BYTE4(v22) = 0;
  HIDWORD(v25[2]) = 0;
  v21 = 0uLL;
  *(&v20 + 1) = 0;
  LOBYTE(v22) = 0;
  v23 = 0uLL;
  *(&v22 + 1) = 0;
  LOBYTE(v24) = 0;
  v25[0] = 0;
  v25[1] = 0;
  *(&v24 + 1) = 0;
  *(&v25[1] + 7) = 0;
  LOBYTE(v25[3]) = 1;
  *(&v25[3] + 6) = 0;
  *(&v25[3] + 1) = 0;
  v26 = 0uLL;
  v25[5] = 0;
  LOBYTE(v27) = 0;
  *(&v27 + 2) = 0;
  if (!sub_100536A18(a2, &v19) || BYTE7(v26) != 1)
  {
    sub_1000DEEA4(a2, buf);
    v4 = BYTE1(v18);
    if ((v18 & 0x8000) != 0)
    {
      v4 = v15;
    }

    if (v4)
    {
      sub_1000DEEA4(a2, &v13);
      if (!std::string::compare(&v13, 0, 0xBuLL, "FLEXSMART X"))
      {
        v5 = 1;
      }

      else
      {
        sub_1000DEEA4(a2, &v12);
        if (!std::string::compare(&v12, "Car Kit"))
        {
          v5 = 1;
        }

        else
        {
          sub_1000DEEA4(a2, &v11);
          if (!std::string::compare(&v11, 0, 5uLL, "BTC45"))
          {
            v5 = 1;
          }

          else
          {
            sub_1000DEEA4(a2, &v10);
            v5 = std::string::compare(&v10, "Land Rover") == 0;
            if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v10.__r_.__value_.__l.__data_);
            }
          }

          if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v11.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v12.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13.__r_.__value_.__l.__data_);
      }

      if ((v18 & 0x8000) == 0)
      {
LABEL_26:
        if (v5)
        {
          goto LABEL_27;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v5 = 0;
      if ((v18 & 0x8000) == 0)
      {
        goto LABEL_26;
      }
    }

    operator delete(*buf);
    if (v5)
    {
LABEL_27:
      v7 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000DEEA4(a2, buf);
        v8 = (v18 & 0x8000) == 0 ? buf : *buf;
        LODWORD(v13.__r_.__value_.__l.__data_) = 136315138;
        *(v13.__r_.__value_.__r.__words + 4) = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Car Stereo Type override due to name match (%s)", &v13, 0xCu);
        if (SBYTE1(v18) < 0)
        {
          operator delete(*buf);
        }
      }

      goto LABEL_33;
    }

LABEL_15:
    v6 = 0;
    goto LABEL_34;
  }

  LODWORD(v13.__r_.__value_.__l.__data_) = 0;
  LODWORD(v12.__r_.__value_.__l.__data_) = 0;
  LODWORD(v11.__r_.__value_.__l.__data_) = 0;
  LODWORD(v10.__r_.__value_.__l.__data_) = 0;
  sub_1000C2364(a2, &v13, &v12, &v11, &v10);
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    *&buf[4] = v13.__r_.__value_.__l.__data_;
    LOWORD(v15) = 1024;
    *(&v15 + 2) = v12.__r_.__value_.__l.__data_;
    HIWORD(v15) = 1024;
    data = v11.__r_.__value_.__l.__data_;
    v17 = 1024;
    v18 = v10.__r_.__value_.__l.__data_;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Car Stereo Type override due to VID/PID. [VidSrc 0x%x, VID 0x%x, PID 0x%x, version 0x%x]", buf, 0x1Au);
  }

LABEL_33:
  v6 = 22;
LABEL_34:
  if (SHIBYTE(v25[1]) < 0)
  {
    operator delete(*(&v24 + 1));
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(*(&v22 + 1));
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(*(&v20 + 1));
  }

  nullsub_21();
  return v6;
}

void sub_10056BE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  sub_100320BE8(&a39);
  _Unwind_Resume(a1);
}

uint64_t sub_10056BEAC(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = *a2;
  result = sub_10056BA80(a1, a3);
  if (result)
  {
    return result;
  }

  v6 = v3 & 0xFC;
  v7 = ((v3 & 0x1F00u) - 256) >> 8;
  if (v7 > 3)
  {
    if (((v3 & 0x1F00u) - 256) >> 8 > 5)
    {
      if (v7 == 6)
      {
        v17 = v6 - 4;
        if (v17 < 0x14)
        {
          return (v17 >> 2) + 42;
        }
      }

      else if (v7 == 7)
      {
        v13 = v6 - 4;
        if (v13 == 16)
        {
          v14 = 40;
        }

        else
        {
          v14 = 6;
        }

        if (v13 == 12)
        {
          return 41;
        }

        else
        {
          return v14;
        }
      }
    }

    else
    {
      if (v7 == 4)
      {
        v15 = sub_10000C798(result, v5);
        if ((*(*v15 + 416))(v15))
        {
          v16 = (v3 & 0x24) == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          return 49;
        }

        if ((v3 & 0x40) != 0)
        {
          return 24;
        }

        v8 = (v3 & 0x3C) - 4;
        if (v8 < 0x18)
        {
          v9 = &unk_1008A9FD0;
          return *&v9[v8];
        }

        if ((v3 & 0x80) != 0)
        {
          return 25;
        }

        else
        {
          return 4;
        }
      }

      if (v7 == 5)
      {
        if ((v3 & 0x10) != 0)
        {
          v10 = 35;
        }

        else
        {
          v10 = 5;
        }

        if ((v3 & 0x20) != 0)
        {
          v11 = 33;
        }

        else
        {
          v11 = v10;
        }

        if ((v3 & 0x40) != 0)
        {
          v12 = 32;
        }

        else
        {
          v12 = v11;
        }

        if ((v3 & 0x80) != 0)
        {
          return 31;
        }

        else
        {
          return v12;
        }
      }
    }

    return 0;
  }

  if (((v3 & 0x1F00u) - 256) >> 8 <= 1)
  {
    if (!v7)
    {
      v8 = v6 - 4;
      if (v8 < 0x18)
      {
        v9 = &unk_1008A9F5C;
        return *&v9[v8];
      }

      return 1;
    }

    if (v7 == 1)
    {
      v8 = v6 - 4;
      if (v8 < 0x14)
      {
        v9 = &unk_1008A9F74;
        return *&v9[v8];
      }

      return 2;
    }

    return 0;
  }

  if (v7 == 2)
  {
    return 15;
  }

  if (v7 != 3)
  {
    return 0;
  }

  v8 = v6 - 4;
  if (v8 < 0x48)
  {
    v9 = &unk_1008A9F88;
    return *&v9[v8];
  }

  return 3;
}

uint64_t sub_10056C0AC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  if (qword_100B512C8 != -1)
  {
    sub_100843984();
  }

  v5 = sub_10000EE78(off_100B512C0);
  if (v5 != 1)
  {
    return 202;
  }

  if (qword_100B508F0 != -1)
  {
    sub_100843998();
  }

  v7 = atomic_load(off_100B508E8 + 232);
  if (v7)
  {
    v8 = sub_10000C798(v5, v6);
    if ((*(*v8 + 848))(v8) == 1)
    {
      if (qword_100B50AA0 != -1)
      {
        sub_10084380C();
      }

      v9 = sub_10059A02C(off_100B50A98);
    }

    else
    {
      v9 = sub_1005491CC(a2);
    }

    v11 = v9;
    result = 0;
    *a3 = v11;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008439AC();
    }

    return 1;
  }

  return result;
}

uint64_t sub_10056C1D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B512C8 != -1)
  {
    sub_100843984();
  }

  v5 = sub_10000EE78(off_100B512C0);
  if (v5 != 1)
  {
    return 202;
  }

  if (qword_100B508F0 != -1)
  {
    sub_100843998();
  }

  v7 = atomic_load(off_100B508E8 + 232);
  if (v7)
  {
    v8 = sub_10000C798(v5, v6);
    if ((*(*v8 + 848))(v8) == 1)
    {
      if (qword_100B50AA0 != -1)
      {
        sub_10084380C();
      }

      sub_1005A5F38(off_100B50A98, a3);
    }

    else
    {
      sub_100546748(a2, a3);
    }

    return 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008439E8();
    }

    return 1;
  }
}

uint64_t sub_10056C300(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  v22 = 0;
  v21 = 1;
  if (v8)
  {
    if (qword_100B50940 != -1)
    {
      sub_100843A24();
    }

    sub_1000E3788(off_100B50938, v8, &v21, &v22);
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v24 = v8;
      v25 = 1024;
      v26 = a4;
      v27 = 1024;
      v28 = a5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DeviceManager Set Spatial Mode: bundleID: %@, mode: %u head Tracking %d", buf, 0x18u);
    }

    if (qword_100B50940 != -1)
    {
      sub_100843A38();
    }

    sub_1006392D4(off_100B50938, v8, a4, a5);
    *buf = 0;
    v20 = 0;
    v19 = 0;
    sub_1000C2364(a2, buf, &v20 + 1, &v20, &v19);
    if (qword_100B50940 != -1)
    {
      sub_100843A38();
    }

    v10 = *(off_100B50938 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10056C528;
    v12[3] = &unk_100AFCCC8;
    v13 = v8;
    v14 = v22;
    v15 = a4;
    v17 = v21;
    v18 = a5;
    v16 = v20;
    dispatch_async(v10, v12);
  }

  return 0;
}

void sub_10056C528(uint64_t a1)
{
  if (qword_100B50940 != -1)
  {
    sub_100843A24();
  }

  v2 = off_100B50938;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 44);
  v6 = *(a1 + 52);
  v7 = *(a1 + 53);
  v8 = *(a1 + 48);

  sub_100638C28(v2, v3, v4, v5, v6, v7, v8);
}

std::string *sub_10056C58C@<X0>(int a1@<W1>, std::string *a2@<X8>)
{
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  sub_100007E30(a2, "Misc");
  v4 = "Laptop";
  switch(a1)
  {
    case 1:
    case 7:
      v4 = "Computer";
      break;
    case 2:
      v4 = "Phone";
      break;
    case 3:
      v4 = "Audio";
      break;
    case 4:
      v4 = "Peripheral";
      break;
    case 5:
      v4 = "Imaging";
      break;
    case 6:
      v4 = "Toy";
      break;
    case 8:
      return std::string::assign(a2, v4);
    case 9:
    case 10:
    case 14:
    case 15:
    case 18:
    case 21:
    case 22:
    case 23:
      goto LABEL_5;
    case 11:
      v4 = "PDA";
      break;
    case 12:
      v4 = "Mobile Phone";
      break;
    case 13:
      v4 = "Cordless Phone";
      break;
    case 16:
      v4 = "Headset";
      break;
    case 17:
      v4 = "Handsfree";
      break;
    case 19:
      v4 = "Speaker";
      break;
    case 20:
      v4 = "Headphones";
      break;
    case 24:
      v4 = "Keyboard";
      break;
    case 25:
      v4 = "Mouse";
      break;
    default:
      if (a1 == 49)
      {
        v4 = "Trackpad";
      }

      else
      {
LABEL_5:
        v4 = "Misc";
      }

      break;
  }

  return std::string::assign(a2, v4);
}

void sub_10056C6D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10056C6F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C798(a1, a2);
  if (!(*(*v3 + 416))(v3))
  {
    return 0;
  }

  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 168);
  __p = 0;
  v15 = 0;
  v16 = 0;
  sub_100007F20(&__p, (a1 + 144));
  sub_10000801C(v17);
  v4 = __p;
  v5 = v15;
  while (1)
  {
    if (v4 == v5)
    {
      v8 = 0;
      goto LABEL_10;
    }

    v6 = *v4;
    if (sub_1000295DC(*v4))
    {
      if (sub_10054E104(v6))
      {
        break;
      }
    }

    ++v4;
  }

  v8 = 1;
LABEL_10:
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 168);
  v9 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 136);
    *buf = 67109376;
    v19 = v10;
    v20 = 1024;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "DeviceManager:: compute Classic incompatible device: curr %u, new %u", buf, 0xEu);
  }

  v11 = *(a1 + 136);
  v7 = v11 != v8;
  if (v11 != v8)
  {
    *(a1 + 136) = v8;
  }

  sub_1000088CC(v13);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  sub_1000088CC(v17);
  return v7;
}

void sub_10056C898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10056C908(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C798(a1, a2);
  if ((*(*v3 + 416))(v3))
  {
    v7[0] = 0;
    v7[1] = 0;
    sub_100007F88(v7, a1 + 168);
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
    {
      sub_100843A60(a1, v4);
    }

    v5 = *(a1 + 136);
    sub_1000088CC(v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_10056C9B8(uint64_t a1, int a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 168);
  if (*(a1 + 304) != a2)
  {
    *(a1 + 304) = a2;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_100007F20(&v7, (a1 + 144));
    sub_10000801C(v10);
    v4 = v7;
    if (v7 != v8)
    {
      do
      {
        v5 = *v4;
        if (sub_1000E2140(*v4, 0x20u))
        {
          if (sub_1000E5DB8(v5) != 2)
          {
            sub_100546280(v5, 1);
          }

          sub_100546604(v5);
        }

        ++v4;
      }

      while (v4 != v8);
      v4 = v7;
    }

    if (v4)
    {
      v8 = v4;
      operator delete(v4);
    }
  }

  return sub_1000088CC(v10);
}

void sub_10056CA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10056CAC0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, char a6, int a7)
{
  sub_100540ADC(a2, a4);
  sub_100540C60(a2, a5);
  sub_100540CF0(a2, a6);
  sub_100540D80(a2, a7);
  sub_10053E630(a2);
  return 0;
}

const char *sub_10056CB30(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 0x31)
  {
    return "Unknown";
  }

  else
  {
    return off_100AFCEC8[v1];
  }
}

void sub_10056CB60(uint64_t a1, void *a2)
{
  v2 = a2;
  CFStringGetTypeID();
  v3 = CFDictionaryGetTypedValue();
  if (v3)
  {
    v4 = [[NSUUID alloc] initWithUUIDString:v3];
    if (!v4)
    {
      goto LABEL_64;
    }

    if (qword_100B508D0 != -1)
    {
      sub_100843ADC();
    }

    v5 = sub_100046458(off_100B508C8, v4, 0);
    if (qword_100B508F0 != -1)
    {
      sub_100843998();
    }

    v6 = sub_1000504C8(off_100B508E8, v5, 0);
    if (!v6)
    {
      goto LABEL_64;
    }

    CFDictionaryGetDouble();
    v8 = v7;
    CFDictionaryGetDouble();
    v10 = v9;
    if (v9 <= 0.0)
    {
      v11 = 0;
    }

    else
    {
      v11 = (v8 / v9 * 100.0);
    }

    if (v11 >= 100)
    {
      v12 = 100;
    }

    else
    {
      v12 = v11;
    }

    CFStringGetTypeID();
    v34 = CFDictionaryGetTypedValue();
    v13 = CBPowerSourcePartIDFromString();
    if (v10 == v8 || CFDictionaryGetInt64())
    {
      v14 = 3;
    }

    else
    {
      v14 = 0;
    }

    Int64 = CFDictionaryGetInt64();
    v16 = CFDictionaryGetInt64();
    v17 = CFDictionaryGetInt64();
    v35 = v6;
    v18 = v12 & ~(v12 >> 31);
    if (Int64)
    {
      v19 = 1;
    }

    else
    {
      v19 = v14;
    }

    if (v16)
    {
      v19 = 5;
    }

    if (v17)
    {
      v20 = 4;
    }

    else
    {
      v20 = v19;
    }

    if (v20)
    {
      v21 = 1;
    }

    else
    {
      v21 = v11 <= 0;
    }

    if (v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = 2;
    }

    if (v13 == 5)
    {
      v23 = v34;
      if (v11 <= 0)
      {
        goto LABEL_63;
      }

      v32 = 0;
      v33 = 0;
      LOBYTE(v20) = 0;
      v24 = 0;
    }

    else
    {
      v23 = v34;
      if (v13 == 3)
      {
        if (v11 > 0)
        {
          v33 = 0;
          LOBYTE(v20) = 0;
          v32 = v18;
          v25 = 1;
          v24 = v22;
          goto LABEL_42;
        }

LABEL_63:

LABEL_64:
        goto LABEL_65;
      }

      if (v13 == 2)
      {
        if (v11 > 0)
        {
          v33 = v18;
          LOBYTE(v20) = 0;
          LODWORD(v32) = 0;
          BYTE4(v32) = v22;
          v24 = 0;
          v25 = 1;
LABEL_42:
          v18 = 0;
          v22 = 0;
LABEL_51:
          v27 = sub_1000DEB14(v35);
          v28 = qword_100BCE8D8;
          if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
          {
            v29 = CBDeviceTypeToString();
            v30 = "no";
            *buf = 136315650;
            v37 = v29;
            if (v25)
            {
              v30 = "yes";
            }

            *v38 = 2112;
            *&v38[2] = v2;
            *&v38[10] = 2080;
            v39 = v30;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Received GATT %s battery update with details: %@, LR %s", buf, 0x20u);
          }

          if ((v27 & 0xFFFFFFFB) == 0x10)
          {
            v31 = v25;
          }

          else
          {
            v31 = 0;
          }

          v23 = v34;
          if (v31 == 1)
          {
            if (qword_100B508D0 != -1)
            {
              sub_100843B04();
            }

            sub_100787390(off_100B508C8, v4, 2369);
          }

          *buf = HIDWORD(v33);
          LOBYTE(v37) = v20;
          *(&v37 + 1) = 0;
          BYTE3(v37) = 0;
          HIDWORD(v37) = v33;
          v38[0] = BYTE4(v32);
          *&v38[1] = 0;
          v38[3] = 0;
          *&v38[4] = v32;
          v38[8] = v24;
          *&v38[9] = 0;
          v38[11] = 0;
          LODWORD(v39) = v18;
          BYTE4(v39) = v22;
          *(&v39 + 5) = 0;
          HIBYTE(v39) = 0;
          sub_10053F554(v35, buf);
          goto LABEL_63;
        }

        goto LABEL_63;
      }

      if (v11 > 0)
      {
        LODWORD(v33) = 0;
        HIDWORD(v33) = v18;
        v32 = 0;
        v24 = 0;
        v25 = 0;
        LOBYTE(v20) = v22;
        goto LABEL_42;
      }

      v26 = v35;
      if (sub_100540848(v35))
      {
        sub_100540800(v35, 0);
        if (qword_100B50AD0 != -1)
        {
          sub_100843AF0();
          v26 = v35;
        }

        HIDWORD(v33) = sub_1005E807C(off_100B50AC8, v26);
      }

      else
      {
        HIDWORD(v33) = 0;
      }

      LODWORD(v33) = 0;
      v32 = 0;
      v24 = 0;
      v18 = 0;
      v22 = 0;
    }

    v25 = 0;
    goto LABEL_51;
  }

LABEL_65:
}

uint64_t sub_10056D064(uint64_t result, int a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v3 = a3;
    v4 = result;
    v11[0] = 0;
    v11[1] = 0;
    sub_100007F88(v11, result + 168);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_100007F20(&v8, (v4 + 144));
    sub_10000801C(v11);
    v5 = v8;
    v6 = v9;
    if (v8 != v9)
    {
      do
      {
        v7 = *v5;
        if (!sub_100539FE8(*v5) && (sub_100543D44(v7) & 1) == 0)
        {
          v7[583] = v3 == 1;
        }

        if (v7[1016] == 1)
        {
          sub_10056D17C(v4, v3, v7);
        }

        ++v5;
      }

      while (v5 != v6);
      v5 = v8;
    }

    if (v5)
    {
      v9 = v5;
      operator delete(v5);
    }

    return sub_1000088CC(v11);
  }

  return result;
}

void sub_10056D14C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10056D17C(uint64_t a1, int a2, unsigned __int8 *a3)
{
  v30 = a3;
  v29 = 0;
  sub_1000D42DC(&v29, 0);
  v6 = v29;
  v7 = sub_10054857C(a3);
  if (a2 == 1)
  {
    v8 = v7;
    v9 = a1 + 280;
    v10 = *(a1 + 280);
    if (!v10)
    {
      goto LABEL_13;
    }

    v11 = a1 + 280;
    do
    {
      v12 = *(v10 + 32);
      v13 = v12 >= a3;
      v14 = v12 < a3;
      if (v13)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * v14);
    }

    while (v10);
    if (v11 == v9 || *(v11 + 32) > a3)
    {
LABEL_13:
      buf.__r_.__value_.__r.__words[0] = &v30;
      *(sub_1005702E4(a1 + 272, &v30, &unk_1008A9BD0, &buf) + 40) = 0;
      v15 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Wireless Splitter repopulating fGuestDevices after boot up", &buf, 2u);
      }
    }

    v16 = v6 - v8;
    v17 = *(a1 + 296);
    if (v17)
    {
      v18 = v17 / 1000;
    }

    else
    {
      v18 = 480;
    }

    v19 = v18 - v16;
    if (v18 >= v16)
    {
      if (!sub_1000C0348(v30))
      {
        v22 = *(a1 + 272);
        if (v22 != v9)
        {
          v23 = *(v22 + 32);
          v24 = qword_100BCE8D8;
          if (v23)
          {
            if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000E5A58(v23, &buf);
              if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_buf = &buf;
              }

              else
              {
                p_buf = buf.__r_.__value_.__r.__words[0];
              }

              v26 = 1000 * v19;
              *v31 = 136446466;
              v32 = p_buf;
              v33 = 2048;
              v34 = 1000 * v19;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Wireless Splitter starting linkkey timeout for guest device %{public}s with timeout %llums", v31, 0x16u);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              v26 = 1000 * v19;
            }

            buf.__r_.__value_.__r.__words[0] = &v30;
            *(sub_1005702E4(a1 + 272, &v30, &unk_1008A9BD0, &buf) + 40) = 1;
            sub_10056E7F0(a1, 1, v26);
          }

          else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
          {
            sub_100843B2C();
          }
        }
      }
    }

    else
    {
      v20 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Wireless Splitter bt powered on, guest device needs to be deleted", &buf, 2u);
      }

      memset(&buf, 0, sizeof(buf));
      v21 = sub_100007E30(&buf, "WS_ERROR_DISCONNECTION_GUEST_NEEDS_DELETION");
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        v21 = sub_100008904(&__p, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = buf;
      }

      sub_10056AE78(v21, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (qword_100B50F88 != -1)
      {
        sub_100843848();
      }

      sub_1006E0DBC(off_100B50F80, v30);
      sub_100075DC4((a1 + 272), &v30);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }
  }

  else if (!a2 && sub_1000C0348(a3))
  {
    sub_1005485C4(v30, &v29);
  }
}

void sub_10056D50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10056D550(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 168);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_100007F20(&v6, (a1 + 144));
  sub_10000801C(v9);
  if (v6 == v7)
  {
    v2 = 0;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  LODWORD(v2) = 0;
  v3 = v6;
  do
  {
    v4 = *v3++;
    v2 = v2 + *(v4 + 1178);
  }

  while (v3 != v7);
  if (v6)
  {
LABEL_5:
    v7 = v6;
    operator delete(v6);
  }

LABEL_6:
  sub_1000088CC(v9);
  return v2;
}

void sub_10056D5F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10056D61C(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 168);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_100007F20(&v6, (a1 + 144));
  sub_10000801C(v9);
  if (v6 == v7)
  {
    v2 = 0;
    if (!v6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 0;
  v3 = v6;
  do
  {
    v4 = *v3++;
    v2 += *(v4 + 1396);
  }

  while (v3 != v7);
  if (v6)
  {
LABEL_5:
    v7 = v6;
    operator delete(v6);
  }

LABEL_6:
  sub_1000088CC(v9);
  return v2;
}

void sub_10056D6BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10056D6E8(uint64_t a1)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 168);
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_100007F20(&__p, (a1 + 144));
  sub_10000801C(v10);
  v2 = __p;
  v3 = v8;
  if (__p == v8)
  {
    v4 = 0;
    if (!__p)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = 0;
  do
  {
    v5 = *v2;
    if (sub_1000295DC(*v2) && sub_1000C0348(v5) && sub_1000E2C08(v5))
    {
      v4 = (v4 + sub_10053C974(v5));
    }

    ++v2;
  }

  while (v2 != v3);
  v2 = __p;
  if (__p)
  {
LABEL_9:
    v8 = v2;
    operator delete(v2);
  }

LABEL_10:
  sub_1000088CC(v10);
  return v4;
}

void sub_10056D7C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10056D7F0(uint64_t a1)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 168);
  __p = 0;
  v8 = 0;
  v9 = 0;
  sub_100007F20(&__p, (a1 + 144));
  sub_10000801C(v10);
  v2 = __p;
  v3 = v8;
  if (__p == v8)
  {
    v4 = 0;
    if (!__p)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v4 = 0;
  do
  {
    v5 = *v2;
    if (sub_1000295DC(*v2) && sub_1000C0348(v5) && sub_1000E2C08(v5) && ((sub_10053C944(v5) & 1) != 0 || sub_10053C950(v5)))
    {
      v4 = (v4 + 1);
    }

    ++v2;
  }

  while (v2 != v3);
  v2 = __p;
  if (__p)
  {
LABEL_11:
    v8 = v2;
    operator delete(v2);
  }

LABEL_12:
  sub_1000088CC(v10);
  return v4;
}

void sub_10056D8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10056D908@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v23[0] = 0;
  v23[1] = 0;
  sub_100007F88(v23, a1 + 168);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  sub_100007F20(&v20, (a1 + 144));
  sub_10000801C(v23);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = v20;
  v7 = v21;
  if (v20 != v21)
  {
    do
    {
      v8 = *v6;
      v18 = 0;
      v19 = v8;
      v17 = 0;
      v9 = sub_1000C2364(v8, &v18 + 1, &v18, &v17 + 1, &v17);
      if (v18 == 76)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      if (v10 == 1 && HIDWORD(v17) == a2)
      {
        v12 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEBUG))
        {
          sub_1000E5A58(v19, __p);
          v13 = v16 >= 0 ? __p : __p[0];
          *buf = 136446210;
          v25 = v13;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "getDevicesForAppleProductID for CaseSerial adding %{public}s", buf, 0xCu);
          if (v16 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_1000C2484(a3, &v19);
      }

      ++v6;
    }

    while (v6 != v7);
    v6 = v20;
  }

  if (v6)
  {
    v21 = v6;
    operator delete(v6);
  }

  return sub_1000088CC(v23);
}

void sub_10056DAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_10056DB18(const void **a1@<X1>, uint64_t *a2@<X8>)
{
  v19 = 0;
  v20[0] = 0;
  v20[1] = 0;
  sub_100007E30(v17, "Bluetooth Mouse M336/M337/M535");
  v25 = xmmword_1008A9F20;
  v26 = 325704422;
  sub_1000C90A0(v16, &v25, 20);
  sub_10056F694(__dst, v17, v16);
  sub_100007E30(v14, "Bluetooth Mouse M557");
  v23 = xmmword_1008A9F34;
  v24 = 601617057;
  sub_1000C90A0(v13, &v23, 20);
  sub_10056F694(v28, v14, v13);
  sub_100007E30(v11, "Microsoft Sculpt Comfort Mouse");
  v21 = xmmword_1008A9F48;
  v22 = 2014317364;
  sub_1000C90A0(__p, &v21, 20);
  sub_10056F694(v29, v11, __p);
  sub_10056FD58(&v19, __dst, 3);
  for (i = 0; i != -18; i -= 6)
  {
    v5 = &__dst[i];
    v6 = v29[i + 3];
    if (v6)
    {
      v5[16] = v6;
      operator delete(v6);
    }

    if (*(v5 + 119) < 0)
    {
      operator delete(v5[12]);
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  if (v15 < 0)
  {
    operator delete(v14[0]);
  }

  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }

  if (v18 < 0)
  {
    operator delete(v17[0]);
  }

  v7 = sub_1000463C8(&v19, a1);
  if (v20 == v7)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    v9 = *(v7 + 56);
    v8 = *(v7 + 64);
    if (v8 != v9)
    {
      sub_1000C9104(a2, v8 - v9);
    }
  }

  sub_100570048(&v19, v20[0]);
}

void sub_10056DDA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  v39 = -144;
  v40 = v37;
  do
  {
    v40 = sub_10056DECC(v40) - 48;
    v39 += 48;
  }

  while (v39);
  if (__p)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a28)
  {
    operator delete(a28);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10056DECC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL sub_10056DF10(uint64_t a1, const void **a2)
{
  v18 = xmmword_1008A9F20;
  v19 = 325704422;
  sub_1000C90A0(v20, &v18, 20);
  v17 = 601617057;
  v16 = xmmword_1008A9F34;
  sub_1000C90A0(v21, &v16, 20);
  v15 = 2014317364;
  v14 = xmmword_1008A9F48;
  sub_1000C90A0(v22, &v14, 20);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  sub_1005700A4(&v11, v20, &v23, 3uLL);
  for (i = 0; i != -9; i -= 3)
  {
    v4 = v22[i];
    if (v4)
    {
      v22[i + 1] = v4;
      operator delete(v4);
    }
  }

  v5 = v11;
  v6 = v12;
  if (v11 != v12)
  {
    v8 = a2;
    v7 = *a2;
    v9 = v8[1] - v7;
    while (*(v5 + 8) - *v5 != v9 || memcmp(*v5, v7, v9))
    {
      v5 += 24;
      if (v5 == v6)
      {
        v5 = v6;
        break;
      }
    }
  }

  v20[0] = &v11;
  sub_100570238(v20);
  return v5 != v6;
}

void sub_10056E0A0(_Unwind_Exception *exception_object)
{
  v3 = (v1 - 56);
  v4 = -72;
  while (1)
  {
    v5 = *(v3 - 1);
    if (v5)
    {
      *v3 = v5;
      operator delete(v5);
    }

    v3 -= 3;
    v4 += 24;
    if (!v4)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void sub_10056E10C(uint64_t a1, uint64_t a2)
{
  if (sub_1005FD038(a1, a2) && (os_variant_is_darwinos() & 1) == 0)
  {
    v3 = +[AVSystemController sharedInstance];
    v4 = [v3 attributeForKey:AVSystemController_AllowBluetoothAccessoryToRequestAudioRouteAttribute];
    v5 = [v4 BOOLValue] ^ 1;
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109120;
      v7[1] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting KeepAudioInHeadphones shouldMitigate to: %d", v7, 8u);
    }

    atomic_store(v5, (a1 + 320));
  }
}

uint64_t sub_10056E250(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: ------------------ Device Manager -------------------", &v6, 2u);
    v2 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "statedump: Devices:", &v6, 2u);
  }

  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 168);
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sub_100007F20(&v6, (a1 + 144));
  sub_10000801C(v9);
  v3 = v6;
  v4 = v7;
  if (v6 != v7)
  {
    do
    {
      sub_10054E600(*v3++);
    }

    while (v3 != v4);
    v3 = v6;
  }

  if (v3)
  {
    v7 = v3;
    operator delete(v3);
  }

  return sub_1000088CC(v9);
}

void sub_10056E368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10056E398(uint64_t a1)
{
  v26[0] = 0;
  v26[1] = 0;
  sub_100007F88(v26, a1 + 168);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  sub_100007F20(&v23, (a1 + 144));
  sub_10000801C(v26);
  v2 = v23;
  v3 = v24;
  if (v23 != v24)
  {
    while (1)
    {
      v4 = *v2;
      if (sub_1000C0348(*v2))
      {
        break;
      }

LABEL_29:
      if (++v2 == v3)
      {
        v2 = v23;
        goto LABEL_31;
      }
    }

    if (qword_100B50AD0 != -1)
    {
      sub_100843B68();
    }

    v5 = sub_1005D09A8(off_100B50AC8, v4);
    if (v5)
    {
      v6 = sub_100320F4C(v5 + 400);
    }

    else
    {
      v6 = 0;
    }

    v22 = 0;
    v7 = sub_10023DB58(v4 + 128, &v22);
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = *v22;
    }

    __chkstk_darwin(v7);
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    v21 = 0;
    v20 = 0;
    if (sub_10053A438(v4))
    {
      LODWORD(__src[0]) = 0;
      sub_1000C2364(v4, __src, &v21 + 1, &v21, &v20);
    }

    v13[0] = 7;
    v13[1] = v8;
    sub_1000075EC(&v13[2], v4 + 128, 6uLL);
    v13[5] = v6;
    v13[6] = WORD2(v21);
    v13[7] = v21;
    v13[8] = v20;
    LOBYTE(v13[9]) = sub_10054F768(v4) ^ 1;
    HIBYTE(v13[9]) = sub_1000E35FC(v4);
    LOBYTE(v13[10]) = sub_1000E35FC(v4) >> 8;
    sub_1000DEEA4(v4, __src);
    v9 = v19;
    if ((v19 & 0x80u) != 0)
    {
      v9 = __src[1];
    }

    if (v9 > 0x4F)
    {
      v10 = 79;
      if ((v19 & 0x80) == 0)
      {
LABEL_25:
        sub_1000DEEA4(v4, __src);
        if (v19 < 0)
        {
          v11 = __src[0];
          memmove(&v13[10] + 1, __src[0], v10);
          operator delete(v11);
        }

        else
        {
          memcpy(&v13[10] + 1, __src, v10);
        }

        sub_1001C4B48(v13, (v10 + 21));
        goto LABEL_29;
      }
    }

    else
    {
      sub_1000DEEA4(v4, &v15);
      if ((v17 & 0x80u) == 0)
      {
        v10 = v17;
      }

      else
      {
        v10 = v16;
      }

      if ((v17 & 0x80) != 0)
      {
        operator delete(v15);
      }

      if ((v19 & 0x80) == 0)
      {
        goto LABEL_25;
      }
    }

    operator delete(__src[0]);
    goto LABEL_25;
  }

LABEL_31:
  if (v2)
  {
    v24 = v2;
    operator delete(v2);
  }

  return sub_1000088CC(v26);
}

void sub_10056E680(_Unwind_Exception *a1)
{
  v3 = *(v1 - 128);
  if (v3)
  {
    *(v1 - 120) = v3;
    operator delete(v3);
  }

  sub_1000088CC(v1 - 104);
  _Unwind_Resume(a1);
}

uint64_t sub_10056E6F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DeviceManager init, first unlock delay expired, allow read/write device settings", v6, 2u);
  }

  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, v1 + 168);
  atomic_store(1u, (v1 + 232));
  v3 = *(v1 + 144);
  v4 = *(v1 + 152);
  while (v3 != v4)
  {
    sub_100533704(*v3++);
  }

  sub_10000801C(v6);
  sub_100569EDC(v1);
  if (qword_100B508A0 != -1)
  {
    sub_100843664();
  }

  sub_100575548(off_100B50898);
  return sub_1000088CC(v6);
}

void sub_10056E7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2 || qword_100B6EFC8)
  {
    if (a2)
    {
      v9 = sub_100017F4C(a1, a2);
      v10 = qword_100B6EFC8;

      sub_10008E008(v9, a3, v10);
    }

    else
    {
      if (qword_100B6EFC8)
      {
        dispatch_block_cancel(qword_100B6EFC8);
        v11 = qword_100B6EFC8;
      }

      else
      {
        v11 = 0;
      }

      qword_100B6EFC8 = 0;
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10056EA10;
    block[3] = &unk_100ADF8F8;
    block[4] = a1;
    v4 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
    v5 = qword_100B6EFC8;
    qword_100B6EFC8 = v4;

    v8 = sub_100017F4C(v6, v7);
    sub_10008E008(v8, a3, qword_100B6EFC8);
  }
}

void *sub_10056E904(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    abort();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2[4];
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_10056E954(uint64_t a1)
{
  v2 = a1 + 280;
  sub_10000CEDC(a1 + 272, *(a1 + 280));
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = v2;
  v3 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Wireless Splitter cleanUpGuestDevice due to unpairing  fGuestDevicesSize is %lu", &v4, 0xCu);
  }
}

void sub_10056EA10(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(v1 + 288);
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Wireless Splitter linkkey timeout check, fGuestDevicesSize is %lu", &buf, 0xCu);
  }

  if (*(v1 + 288))
  {
    v4 = *(v1 + 272);
    if (*(v4 + 40) == 1)
    {
      v5 = *(v4 + 32);
      v6 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v5, &buf);
        v7 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
        *v11 = 136446210;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Wireless Splitter linkkey timeout reached, guest device %{public}s needs to be deleted", v11, 0xCu);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }
      }

      memset(&buf, 0, sizeof(buf));
      v8 = sub_100007E30(&buf, "WS_ERROR_DISCONNECTION_LINK_KEY_TIMEOUT_REACHED");
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        v8 = sub_100008904(&__p, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = buf;
      }

      sub_10056AE78(v8, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (qword_100B50F88 != -1)
      {
        sub_100843848();
      }

      sub_1006E0DBC(off_100B50F80, v5);
      sub_10056E954(v1);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_10056EBEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056EC28(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_1000504C8(a1, a3, 1);
  if (v7)
  {
    v8 = v7;
    if (qword_100B50AA0 != -1)
    {
      sub_10084380C();
    }

    v9 = sub_1000DD584(off_100B50A98, a2, 10000);
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(v8, __p);
      v11 = v20 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v22 = v11;
      v23 = 1024;
      v24 = a2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "ACL connected aclConnectCfm for device %s status %d", buf, 0x12u);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_1005421F4(v8, v9, a4);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10056EEB4;
    v17[3] = &unk_100AFCCE8;
    v17[4] = v8;
    v18 = v9;
    sub_1000E4E40(a1 + 60, v17);
    v12 = sub_10002223C();
    if (v12)
    {
      v14 = sub_1000BE4B4(v12, v13);
      sub_100007E30(__p, "_DENY_INCOMING_CLASSIC_CONNECTION_");
      (*(*v14 + 792))(v14, v8, __p);
      if (v20 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (sub_10054FD60(v8))
    {
      v15 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Querying KeepAudioInHeadphones shouldMitigate value due to aclConnected", __p, 2u);
      }

      sub_10056E10C(a1, v16);
    }
  }
}

void sub_10056EE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10056EEE8(uint64_t a1)
{
  v15 = 0;
  sub_1000216B4(&v15);
  if (sub_10023D840(&unk_100B548D8) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100843B90();
  }

  sub_100022214(&v15);
  v2 = _os_feature_enabled_impl();
  if (v2 && sub_1005FD038(v2, v3) && (os_variant_is_darwinos() & 1) == 0)
  {
    v4 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Registering for KeepAudioInHeadphones notifications", buf, 2u);
    }

    v16 = AVSystemController_AllowBluetoothAccessoryToRequestAudioRouteDidChangeNotification;
    v5 = [NSArray arrayWithObjects:&v16 count:1];
    v6 = +[AVSystemController sharedInstance];
    [v6 setAttribute:v5 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

    v7 = +[NSNotificationCenter defaultCenter];
    v8 = AVSystemController_AllowBluetoothAccessoryToRequestAudioRouteDidChangeNotification;
    v9 = +[AVSystemController sharedInstance];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10056F168;
    v13[3] = &unk_100AFCD28;
    v13[4] = a1;
    v10 = [v7 addObserverForName:v8 object:v9 queue:0 usingBlock:v13];
    v11 = *(a1 + 312);
    *(a1 + 312) = v10;
  }

  return sub_10002249C(&v15);
}

void sub_10056F168(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 userInfo];
  v6 = [v5 objectForKey:AVSystemController_AllowBluetoothAccessoryToRequestAudioRouteDidChangeNotificationParameter_IsAllowed];
  v7 = [v6 BOOLValue];

  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v7 ^= 1u;
    v9[0] = 67109120;
    v9[1] = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received new update for KeepAudioInHeadphones shouldMitigate: %d", v9, 8u);
  }

  else
  {
    LOBYTE(v7) = v7 ^ 1;
  }

  atomic_store(v7, (v4 + 320));
}

uint64_t sub_10056F2AC(uint64_t a1)
{
  v17[0] = 0;
  v17[1] = 0;
  sub_100007F88(v17, a1 + 168);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_100007F20(&v14, (a1 + 144));
  sub_10000801C(v17);
  v4 = v14;
  v5 = v15;
  if (v14 != v15)
  {
    do
    {
      v6 = *v4;
      v13 = 0;
      v7 = sub_1000BE4B4(v2, v3);
      sub_100007E30(__p, "_DENY_INCOMING_CLASSIC_CONNECTION_");
      v2 = (*(*v7 + 784))(v7, v6, __p, &v13);
      v8 = v2 == 0;
      v9 = v13;
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }

      if ((v8 & v9) != 0)
      {
        v2 = sub_100550080(v6, v13);
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = v14;
  }

  if (v4)
  {
    v15 = v4;
    operator delete(v4);
  }

  return sub_1000088CC(v17);
}

void sub_10056F3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(&a20);
  _Unwind_Resume(a1);
}

_BYTE *sub_10056F428(void *a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "DeviceManager::stackWillStop enter", buf, 2u);
  }

  v16 = 0;
  sub_1000216B4(&v16);
  if (sub_10023D934(&unk_100B548D8) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_100843C00();
  }

  sub_10023E774();
  sub_100022214(&v16);
  *buf = 0;
  v15 = 0;
  v3 = sub_100007F88(buf, (a1 + 21));
  v6 = a1[18];
  for (i = a1[19]; v6 != i; v6 += 8)
  {
    v7 = (*(*v6 + 128) << 40) | (*(*v6 + 129) << 32) | (*(*v6 + 130) << 24) | (*(*v6 + 131) << 16) | (*(*v6 + 132) << 8) | *(*v6 + 133);
    if (v7)
    {
      v8 = sub_100017F4C(v3, v4);
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10056F668;
      v13[3] = &unk_100AE0860;
      v13[4] = a1;
      v13[5] = v7;
      sub_10000CA94(v8, v13);
      i = a1[19];
    }
  }

  if (a1[39])
  {
    v9 = +[NSNotificationCenter defaultCenter];
    [v9 removeObserver:a1[39]];
  }

  v10 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "DeviceManager::stackWillStop exit", v12, 2u);
  }

  sub_1000088CC(buf);
  return sub_10002249C(&v16);
}

void sub_10056F630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  sub_1000088CC(va);
  sub_10002249C((v17 - 81));
  _Unwind_Resume(a1);
}

void *sub_10056F694(void *__dst, __int128 *a2, void *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  v6 = a3[1] - *a3;
  if (v6)
  {
    sub_1000C9104(__dst + 3, v6);
  }

  return __dst;
}

void sub_10056F72C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056F748(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = a1;
  v4 = (*a3 << 40) | (a3[1] << 32) | (a3[2] << 24) | (a3[3] << 16) | (a3[4] << 8) | a3[5];
  v5 = *(a2 + 327);
  v6 = sub_100017F4C(a1, a2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10056F808;
  v7[3] = &unk_100AF2A50;
  v8 = v3;
  v7[4] = v4;
  v9 = v5;
  sub_10000CA94(v6, v7);
}

void sub_10056F808(uint64_t a1)
{
  v2 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4[0] = 67109120;
    v4[1] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Device connected connectCfmCb status %d", v4, 8u);
  }

  if (qword_100B508F0 != -1)
  {
    sub_100843CE4();
  }

  sub_10056EC28(off_100B508E8, *(a1 + 40), *(a1 + 32), *(a1 + 44));
}

uint64_t **sub_10056FD58(uint64_t **a1, const void **a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 48 * a3;
    do
    {
      sub_10056FDDC(a1, v4, a2, a2);
      a2 += 6;
      v6 -= 48;
    }

    while (v6);
  }

  return a1;
}

void *sub_10056FDDC(uint64_t **a1, void *a2, const void **a3, uint64_t a4)
{
  v9 = 0;
  v10 = 0;
  v4 = *sub_100086A74(a1, a2, &v10, &v9, a3);
  if (!v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    sub_10056FE7C();
  }

  return v4;
}

char **sub_10056FEF4(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10056FFF0(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_10056FF40(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100008904(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  v6 = *(a2 + 3);
  v5 = *(a2 + 4);
  if (v5 != v6)
  {
    sub_1000C9104(__dst + 3, v5 - v6);
  }

  return __dst;
}

void sub_10056FFD4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10056FFF0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_100570048(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100570048(a1, *a2);
    sub_100570048(a1, a2[1]);
    sub_10056FFF0((a2 + 4));

    operator delete(a2);
  }
}

uint64_t *sub_1005700A4(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100570104(result, a4);
  }

  return result;
}

void sub_100570104(uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    sub_100570150(a1, a2);
  }

  sub_1000C7698();
}

void sub_100570150(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1000C7698();
}

uint64_t *sub_1005701A8(uint64_t a1, void *a2, void *a3, uint64_t *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        sub_1000C9104(a4, v6 - *v5);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_100570238(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10057028C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10057028C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void *sub_1005702E4(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
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
      v7 = v4[4];
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

uint64_t sub_100570420(unsigned __int8 *a1, _BYTE *a2, _BYTE *a3)
{
  v17 = 0uLL;
  v6 = *a1;
  if (v6 == 16)
  {
LABEL_6:
    result = sub_10007A930(a1, &v17);
    goto LABEL_7;
  }

  if (v6 != 2)
  {
    v8 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_FAULT))
    {
      sub_100843D0C(a1, v8);
    }

    goto LABEL_6;
  }

  v16 = 0;
  result = sub_10007A930(a1, &v16);
  v17 = xmmword_1008A3890;
  WORD1(v17) = v16;
LABEL_7:
  v9 = 0;
  v10 = &v17;
  v11 = 15;
  do
  {
    v12 = v11;
    v9 ^= *v10;
    v13 = 8;
    do
    {
      v14 = 2 * v9;
      v15 = v9;
      v9 = (2 * v9) ^ 9;
      if (v15 >= 0)
      {
        v9 = v14;
      }

      --v13;
    }

    while (v13);
    v10 = (v10 + 1);
    v11 = v12 - 1;
  }

  while (v12);
  *a2 = (v9 >> 3) & 0xF;
  *a3 = v9 & 7;
  return result;
}

uint64_t sub_100570558(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  for (i = 0; a4; --a4)
  {
    v5 = *a3++;
    i = byte_1008A9FE8[(v5 ^ i)];
  }

  return (*(a1 + (i >> 3)) >> (i & 7)) & 1;
}

uint64_t sub_10057059C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  for (i = 0; a4; --a4)
  {
    v5 = *a3++;
    i = byte_1008A9FE8[(v5 ^ i)];
  }

  v6 = i >> 3;
  v7 = i & 7;
  v8 = *(a1 + v6);
  v9 = 1 << v7;
  if ((v9 & v8) != 0)
  {
    return 0;
  }

  *(a1 + v6) = v8 | v9;
  return 1;
}

_xpc_connection_s *sub_1005705FC(_xpc_connection_s *a1, int a2, unsigned int a3, unsigned int a4)
{
  *a1 = &off_100AFD068;
  v8 = (a1 + 8);
  global_queue = dispatch_get_global_queue(21, 0);
  sub_100321440(v8, a1, "com.apple.BTServer.pbap", global_queue);
  v10 = a2 - 3;
  if ((a2 - 3) >= 7 || ((0x5Fu >> v10) & 1) == 0)
  {
    v14 = sub_10000E92C();
    sub_100693F74(v14, 0);
  }

  v11 = (&off_100AFD090)[v10];
  sub_100321480(v8);
  v12 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v12, "kArgType", v11);
  xpc_dictionary_set_uint64(v12, "kArgOffset", a3);
  xpc_dictionary_set_uint64(v12, "kArgCount", a4);
  sub_1003216CC(v8, "Open", v12, 0);
  return a1;
}

void *sub_10057073C(void *a1)
{
  *a1 = &off_100AFD068;
  sub_10032147C((a1 + 1));
  return a1;
}

void sub_100570780(void *a1)
{
  *a1 = &off_100AFD068;
  sub_10032147C((a1 + 1));

  operator delete();
}

void sub_1005707E4(uint64_t a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_100570854;
  v1[3] = &unk_100ADF8F8;
  v1[4] = a1;
  sub_100321530(a1 + 8, v1);
}

uint64_t sub_100570854(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t sub_100570884(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100570950;
  v3[3] = &unk_100ADF8D8;
  v3[4] = &v4;
  sub_1003217F4(a1 + 8, "GetSize", 0, v3);
  v1 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_100570938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100570950(uint64_t a1, xpc_object_t xdict)
{
  result = xpc_dictionary_get_uint64(xdict, "kValue");
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_100570990(uint64_t a1, unsigned int a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v4, "kArgIndex", a2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100570A94;
  v7[3] = &unk_100ADF8D8;
  v7[4] = &v8;
  sub_1003217F4(a1 + 8, "GetRecentCall", v4, v7);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void sub_100570A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100570C88(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 0;
  return result;
}

void sub_100570C90(uint64_t a1, dispatch_qos_class_t a2)
{
  if (*(a1 + 8))
  {
    v4 = qword_100BCEA60;
    if (os_log_type_enabled(qword_100BCEA60, OS_LOG_TYPE_FAULT))
    {
      sub_100843DDC(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_attr_make_with_qos_class(v12, a2, 0);
  *(a1 + 8) = dispatch_queue_create(*a1, v13);
  if (qword_100B548F8 != -1)
  {
    sub_100843E54();
  }

  sub_1005712B8(qword_100B548F0, *(a1 + 8));
}

uint64_t sub_100570E38(uint64_t a1, uint64_t a2)
{
  if (qword_100B6F018 != -1)
  {
    sub_100843EB8();
  }

  return qword_100B6F010;
}

uint64_t sub_100570F18(uint64_t a1, uint64_t a2)
{
  if (qword_100B6F038 != -1)
  {
    sub_100843EE0();
  }

  return qword_100B6F030;
}

uint64_t sub_10057104C(uint64_t a1, uint64_t a2)
{
  if (qword_100B6F068 != -1)
  {
    sub_100843F1C();
  }

  return qword_100B6F060;
}

uint64_t sub_1005710D8(uint64_t a1, uint64_t a2)
{
  if (qword_100B6F078 != -1)
  {
    sub_100843F30();
  }

  return qword_100B6F070;
}

void sub_100571164(uint64_t a1)
{
  if (*(a1 + 8))
  {
    if (qword_100B548F8 != -1)
    {
      sub_100843F44();
    }

    sub_100571380(qword_100B548F0, *(a1 + 8));
    dispatch_release(*(a1 + 8));
    *(a1 + 8) = 0;
  }
}

void sub_1005711EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_100B6EFD8 != -1)
  {
    sub_100843DC8();
  }

  if (qword_100B6EFD0 == a1)
  {
    v4 = qword_100BCEA60;
    if (os_log_type_enabled(qword_100BCEA60, OS_LOG_TYPE_FAULT))
    {
      sub_100843F58(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  dispatch_async_and_wait(*(a1 + 8), v3);
}

const char *sub_10057127C(const char **a1)
{
  result = dispatch_queue_get_label(0);
  if (result)
  {
    return (strcmp(result, *a1) == 0);
  }

  return result;
}

void sub_1005712B8(NSObject **a1, dispatch_queue_t queue)
{
  if (dispatch_queue_get_qos_class(queue, 0) >= QOS_CLASS_DEFAULT)
  {
    if (os_log_type_enabled(qword_100BCEA60, OS_LOG_TYPE_DEBUG))
    {
      sub_100843FD0(queue);
    }

    v4 = *a1;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1005716D0;
    v5[3] = &unk_100AE0860;
    v5[4] = a1;
    v5[5] = queue;
    dispatch_async(v4, v5);
  }
}

void sub_100571380(NSObject **a1, dispatch_queue_t queue)
{
  if (dispatch_queue_get_qos_class(queue, 0) >= QOS_CLASS_DEFAULT)
  {
    if (os_log_type_enabled(qword_100BCEA60, OS_LOG_TYPE_DEBUG))
    {
      sub_10084404C(queue);
    }

    v4 = *a1;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100571710;
    v5[3] = &unk_100AE0860;
    v5[4] = a1;
    v5[5] = queue;
    dispatch_sync(v4, v5);
  }
}

void sub_100571448(uint64_t a1, NSObject *a2)
{
  if (!atomic_fetch_add((a1 + 56), 1u))
  {
    sub_10042DC64(&v6, (a1 + 24));
    v4 = v6;
    v6 = 0uLL;
    v5 = *(a1 + 48);
    *(a1 + 40) = v4;
    if (v5)
    {
      sub_100117644(v5);
      if (*(&v6 + 1))
      {
        sub_100117644(*(&v6 + 1));
      }
    }
  }

  sub_1000709DC(a1, a2);
}

void sub_1005714C4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 24);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4 && v3)
    {
      (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v4 = 0;
  }

  if (atomic_fetch_add((a1 + 56), 0xFFFFFFFF) == 1)
  {
    v5 = *(a1 + 48);
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    if (v5)
    {
      sub_100117644(v5);
    }
  }

  if (v4)
  {
    sub_100117644(v4);
  }

  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_1005715A0(_Unwind_Exception *a1)
{
  sub_100117644(v2);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void *sub_1005715BC(void *a1)
{
  a1[2] = 0;
  a1[1] = a1 + 2;
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  a1[3] = 0;
  a1[4] = a1 + 5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100571670;
  block[3] = &unk_100ADF8F8;
  block[4] = a1;
  if (qword_100B6F080 != -1)
  {
    dispatch_once(&qword_100B6F080, block);
  }

  return a1;
}

void sub_100571670(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_attr_make_with_qos_class(v2, QOS_CLASS_DEFAULT, 0);
  *v1 = dispatch_queue_create("com.apple.bluetooth.DispatcherWatchdog", v3);

  sub_100071524(v1);
}

void *sub_1005716D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = sub_1000452CC(v1 + 8, (a1 + 40), (a1 + 40));
  ++*(v1 + 56);
  return result;
}

uint64_t sub_100571710(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = sub_100075DC4((v1 + 8), (a1 + 40));
  --*(v1 + 56);
  return result;
}

void sub_10057174C(uint64_t a1)
{
  dispatch_assert_queue_V2(*a1);
  if (os_log_type_enabled(qword_100BCEA60, OS_LOG_TYPE_ERROR))
  {
    sub_1008440C8();
  }

  v2 = *(a1 + 8);
  if (v2 != (a1 + 16))
  {
    v3 = qword_100BCEA60;
    do
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        label = dispatch_queue_get_label(v2[4]);
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = label;
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s", &buf, 0xCu);
        v3 = qword_100BCEA60;
      }

      v4 = v2[1];
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
          v5 = v2[2];
          v6 = *v5 == v2;
          v2 = v5;
        }

        while (!v6);
      }

      v2 = v5;
    }

    while (v5 != (a1 + 16));
  }

  memset(&buf, 0, sizeof(buf));
  sub_100007E30(&buf, "BT Stuck on ");
  if (os_log_type_enabled(qword_100BCEA60, OS_LOG_TYPE_ERROR))
  {
    sub_100844108();
  }

  v8 = *(a1 + 32);
  if (v8 != (a1 + 40))
  {
    do
    {
      v9 = v8[4];
      v10 = qword_100BCEA60;
      if (os_log_type_enabled(qword_100BCEA60, OS_LOG_TYPE_ERROR))
      {
        sub_100844148(v23, v9, &v24, v10);
      }

      v11 = dispatch_queue_get_label(v9);
      std::string::append(&buf, v11);
      std::string::append(&buf, " ");
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
          v6 = *v13 == v8;
          v8 = v13;
        }

        while (!v6);
      }

      v8 = v13;
    }

    while (v13 != (a1 + 40));
  }

  WriteStackshotReport_stdc();
  if (qword_100B53FE8 != -1)
  {
    sub_1008441B4();
  }

  v14 = qword_100B53FE0;
  sub_100007E30(v21, "DispatcherWatchdog");
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_buf = &buf;
  }

  else
  {
    p_buf = buf.__r_.__value_.__r.__words[0];
  }

  sub_100007E30(__p, p_buf);
  sub_1005780BC(v14, v21, __p, 0.0);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (v22 < 0)
  {
    operator delete(v21[0]);
  }

  if (qword_100B6F090 != -1)
  {
    sub_1008441DC();
  }

  if (byte_100B6F088 == 1)
  {
    sub_1000D660C();
    v17 = &buf;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = buf.__r_.__value_.__r.__words[0];
    }

    qword_100B55118 = v17;
    v18 = sub_10000E92C();
    sub_100693F74(v18, 0);
  }

  v16 = qword_100BCEA60;
  if (os_log_type_enabled(qword_100BCEA60, OS_LOG_TYPE_FAULT))
  {
    sub_100844204(&buf.__r_.__value_.__r.__words[2] + 7, &buf, v16);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }
}

void sub_100571A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void sub_100571AF4(id a1)
{
  v1 = sub_10000E92C();
  sub_100007E30(v4, "DispatcherWatchdog");
  sub_100007E30(__p, "enableCrash");
  (*(*v1 + 72))(v1, v4, __p, &byte_100B6F088);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  if (v5 < 0)
  {
    operator delete(v4[0]);
  }
}

void sub_100571B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_100571C4C(uint64_t a1, unint64_t a2)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 104);
  if (!a2)
  {
    goto LABEL_16;
  }

  if (qword_100B50B88 != -1)
  {
    sub_100844390();
  }

  v4 = sub_100076290(qword_100B50B80, a2);
  if (!v4)
  {
    goto LABEL_16;
  }

  v6 = *(a1 + 168);
  for (i = *(a1 + 176); v6 != i; i = *(a1 + 176))
  {
    v7 = *v6;
    if (*v6 == a2)
    {
      goto LABEL_17;
    }

    if (qword_100B50B88 != -1)
    {
      sub_100844390();
    }

    if (sub_100076290(qword_100B50B80, v7) == v4)
    {
      goto LABEL_17;
    }

    ++v6;
  }

  if (qword_100B50B88 != -1)
  {
    sub_100844390();
  }

  v9 = sub_1006185D8(qword_100B50B80, v4);
  if (v9)
  {
    sub_1000C2484(a1 + 168, &v9);
    v7 = v9;
  }

  else
  {
LABEL_16:
    v7 = 0;
  }

LABEL_17:
  sub_1000088CC(v10);
  return v7;
}

void sub_100571D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void *sub_100571D90(void *a1, void *a2)
{
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v2 = a1[1];
  if (v2 != a1)
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        sub_100576EA8(v10, v10, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
  }

  return sub_100028EB4(v10);
}

void sub_100571E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100028EB4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100571E5C(void *a1, unint64_t a2, int a3)
{
  v16[1] = 0;
  v17 = a2;
  v16[0] = 0;
  sub_100007F88(v16, (a1 + 73));
  v6 = a1 + 81;
  if (a3)
  {
    for (i = a1[82]; ; i = i[1])
    {
      if (i == v6)
      {
        goto LABEL_8;
      }

      if (i[2] == a2)
      {
        break;
      }
    }

    if (i == v6)
    {
LABEL_8:
      operator new();
    }
  }

  else
  {
    sub_100574DB0(a1 + 81, &v17);
  }

  sub_10000801C(v16);
  if (qword_100B50B88 != -1)
  {
    sub_100844390();
  }

  v8 = sub_1000117DC(qword_100B50B80, v17);
  if (v8)
  {
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(v8, __p);
      v10 = __p[0];
      v11 = "off";
      if (v15 >= 0)
      {
        v10 = __p;
      }

      if (a3)
      {
        v11 = "on";
      }

      *buf = 136446466;
      v19 = v10;
      v20 = 2082;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Session %{public}s wants connectability %{public}s", buf, 0x16u);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (qword_100B50AA0 != -1)
  {
    sub_1008443B8();
  }

  v12 = sub_1005A1174(off_100B50A98);
  sub_1000088CC(v16);
  return v12;
}

void sub_10057205C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100572080(void *a1, unint64_t a2, int a3)
{
  v16[1] = 0;
  v17 = a2;
  v16[0] = 0;
  sub_100007F88(v16, (a1 + 73));
  v6 = a1 + 84;
  if (a3)
  {
    for (i = a1[85]; ; i = i[1])
    {
      if (i == v6)
      {
        goto LABEL_8;
      }

      if (i[2] == a2)
      {
        break;
      }
    }

    if (i == v6)
    {
LABEL_8:
      operator new();
    }
  }

  else
  {
    sub_100574DB0(a1 + 84, &v17);
  }

  sub_10000801C(v16);
  if (qword_100B50B88 != -1)
  {
    sub_100844390();
  }

  v8 = sub_1000117DC(qword_100B50B80, v17);
  if (v8)
  {
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      sub_100018384(v8, __p);
      v10 = __p[0];
      v11 = "off";
      if (v15 >= 0)
      {
        v10 = __p;
      }

      if (a3)
      {
        v11 = "on";
      }

      *buf = 136446466;
      v19 = v10;
      v20 = 2082;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Session %{public}s wants discoverability %{public}s", buf, 0x16u);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (qword_100B50AA0 != -1)
  {
    sub_1008443B8();
  }

  v12 = sub_1005A221C(off_100B50A98);
  sub_1000088CC(v16);
  return v12;
}

void sub_100572280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005722A4(uint64_t a1, uint64_t a2)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 512);
  v4 = *(a1 + 576);
  if (v4 && *v4 == a2)
  {
    operator delete();
  }

  sub_1000088CC(v6);
  return 7;
}

uint64_t sub_100572324(uint64_t a1)
{
  *a1 = off_100AFD2D0;
  *(a1 + 8) = off_100AFD3B0;
  *(a1 + 16) = off_100AFD3D8;
  *(a1 + 24) = off_100AFD418;
  *(a1 + 32) = &off_100AFD438;
  *(a1 + 40) = off_100AFD450;
  *(a1 + 48) = off_100AFD480;
  *(a1 + 56) = off_100AFD540;
  *(a1 + 64) = off_100AFD560;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  sub_100044BBC((a1 + 104));
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  sub_100044BBC((a1 + 192));
  *(a1 + 256) = a1 + 256;
  *(a1 + 264) = a1 + 256;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  sub_100044BBC((a1 + 288));
  *(a1 + 416) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  sub_100044BBC((a1 + 424));
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  sub_100044BBC((a1 + 512));
  *(a1 + 576) = 0;
  sub_100044BBC((a1 + 584));
  *(a1 + 648) = a1 + 648;
  *(a1 + 656) = a1 + 648;
  *(a1 + 664) = 0;
  *(a1 + 672) = a1 + 672;
  *(a1 + 680) = a1 + 672;
  *(a1 + 688) = 0;
  return a1;
}

void sub_10057250C(_Unwind_Exception *a1)
{
  sub_10007A068(v1 + 512);
  v6 = *(v1 + 488);
  if (v6)
  {
    *(v1 + 496) = v6;
    operator delete(v6);
  }

  sub_10007A068(v1 + 424);
  if (*(v1 + 423) < 0)
  {
    operator delete(*(v1 + 400));
  }

  if (*(v1 + 399) < 0)
  {
    operator delete(*(v1 + 376));
  }

  if (*(v1 + 375) < 0)
  {
    operator delete(*(v1 + 352));
  }

  sub_10007A068(v1 + 288);
  sub_100028EB4(v2);
  sub_10007A068((v4 + 3));
  v7 = *v4;
  if (*v4)
  {
    *(v1 + 176) = v7;
    operator delete(v7);
  }

  sub_10007A068(v1 + 104);
  v8 = *v3;
  if (*v3)
  {
    *(v1 + 88) = v8;
    operator delete(v8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005725D4(uint64_t a1)
{
  *a1 = off_100AFD2D0;
  *(a1 + 8) = off_100AFD3B0;
  *(a1 + 16) = off_100AFD3D8;
  *(a1 + 24) = off_100AFD418;
  *(a1 + 32) = &off_100AFD438;
  *(a1 + 40) = off_100AFD450;
  *(a1 + 48) = off_100AFD480;
  *(a1 + 56) = off_100AFD540;
  *(a1 + 64) = off_100AFD560;
  sub_100028EB4((a1 + 672));
  sub_100028EB4((a1 + 648));
  sub_10007A068(a1 + 584);
  sub_10007A068(a1 + 512);
  v2 = *(a1 + 488);
  if (v2)
  {
    *(a1 + 496) = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 424);
  if (*(a1 + 423) < 0)
  {
    operator delete(*(a1 + 400));
  }

  if (*(a1 + 399) < 0)
  {
    operator delete(*(a1 + 376));
  }

  if (*(a1 + 375) < 0)
  {
    operator delete(*(a1 + 352));
  }

  sub_10007A068(a1 + 288);
  sub_100028EB4((a1 + 256));
  sub_10007A068(a1 + 192);
  v3 = *(a1 + 168);
  if (v3)
  {
    *(a1 + 176) = v3;
    operator delete(v3);
  }

  sub_10007A068(a1 + 104);
  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 88) = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_1005727C8(uint64_t a1)
{
  sub_1005725D4(a1);

  operator delete();
}

void sub_100572800(uint64_t a1)
{
  sub_1005725D4(a1 - 16);

  operator delete();
}

uint64_t sub_10057283C(uint64_t a1)
{
  if (qword_100B50B88 != -1)
  {
    sub_100844408();
  }

  sub_10051ABE0(qword_100B50B80 + 8, a1 + 24);
  if (qword_100B50F68 != -1)
  {
    sub_1000BE3C0();
  }

  sub_10012E3B0(off_100B50F60 + 24, a1 + 8);
  if (qword_100B50F88 != -1)
  {
    sub_10084441C();
  }

  sub_1006DC960(off_100B50F80, a1 + 16);
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  sub_10036EF4C(off_100B512C0 + 80, a1 + 32);
  if (qword_100B50C68 != -1)
  {
    sub_100844444();
  }

  sub_10072A35C(off_100B50C60, a1 + 40);
  if (qword_100B508B0 != -1)
  {
    sub_100844458();
  }

  sub_100749B80(off_100B508A8, a1 + 48, 0);
  v2 = sub_100017E6C();
  sub_1005689CC(v2 + 344, a1 + 56);
  v5 = sub_1000154A8(v3, v4);
  (*(*v5 + 128))(v5, a1 + 64);
  v17[0] = 0;
  v17[1] = 0;
  v6 = sub_100007F88(v17, a1 + 288);
  v8 = sub_10000C798(v6, v7);
  v9 = (a1 + 352);
  v10 = (*(*v8 + 8))(v8, a1 + 352);
  if (v10)
  {
    v10 = std::string::assign((a1 + 352), "Unknown");
  }

  v12 = sub_10000C798(v10, v11);
  v13 = (a1 + 376);
  if ((*(*v12 + 32))(v12, a1 + 376, 1))
  {
    std::string::assign((a1 + 376), "Unknown");
  }

  v14 = (a1 + 400);
  std::string::assign((a1 + 400), "Apple Inc.");
  v15 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 375) < 0)
    {
      v9 = *v9;
    }

    if (*(a1 + 399) < 0)
    {
      v13 = *v13;
    }

    if (*(a1 + 423) < 0)
    {
      v14 = *v14;
    }

    *buf = 136446722;
    v19 = v9;
    v20 = 2082;
    v21 = v13;
    v22 = 2082;
    v23 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Model: %{public}s, Version: %{public}s, Manufacturer: %{public}s", buf, 0x20u);
    v15 = qword_100BCE8D8;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446210;
    v19 = "/Library/Caches/com.apple.xbs/Sources/MobileBluetooth_base/Server/core/LocalDevice.mm";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }

  return sub_1000088CC(v17);
}

uint64_t sub_100572B88(uint64_t a1)
{
  if (qword_100B50B88 != -1)
  {
    sub_100844408();
  }

  sub_10007A3F0(qword_100B50B80 + 8, a1 + 24);
  if (qword_100B50F68 != -1)
  {
    sub_1000BE3C0();
  }

  sub_10007A3F0(off_100B50F60 + 24, a1 + 8);
  if (qword_100B50F88 != -1)
  {
    sub_10084441C();
  }

  sub_1006DCA90(off_100B50F80, a1 + 16);
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  sub_10007A3F0(off_100B512C0 + 80, a1 + 32);
  if (qword_100B50C68 != -1)
  {
    sub_100844444();
  }

  sub_10072A3C8(off_100B50C60, a1 + 40);
  if (qword_100B508B0 != -1)
  {
    sub_100844458();
  }

  sub_100749C8C(off_100B508A8, a1 + 48);
  v2 = sub_100017E6C();
  sub_100568C6C(v2 + 344, a1 + 56);
  v5 = sub_1000154A8(v3, v4);
  v6 = (*(*v5 + 136))(v5, a1 + 64);
  sub_100572D98(v6, 0);
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 288);
  v7 = *(a1 + 168);
  if (v7 != *(a1 + 176))
  {
    do
    {
      v8 = *v7;
      if (qword_100B50B88 != -1)
      {
        sub_100844390();
      }

      sub_1006189DC(qword_100B50B80, v8);
      if (qword_100B50B88 != -1)
      {
        sub_100844390();
      }

      sub_100618E84(qword_100B50B80, v8);
      ++v7;
    }

    while (v7 != *(a1 + 176));
    v7 = *(a1 + 168);
  }

  *(a1 + 176) = v7;
  return sub_1000088CC(v10);
}

uint64_t sub_100572D98(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  v3 = off_100B512C0;

  return sub_10057A044(v3, v2);
}

uint64_t sub_100572DEC(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v13[0] = 0;
  v13[1] = 0;
  sub_100007F88(v13, a1 + 424);
  v8 = *(a1 + 488);
  v9 = *(a1 + 496);
  v15 = *a3;
  v16 = *(a3 + 2);
  if (v8 != v9)
  {
    while (1)
    {
      if (*v8 == a2)
      {
        v10 = v15 == v8[1] && *(&v15 + 1) == v8[2];
        if (v10 && v16 == v8[3])
        {
          break;
        }
      }

      v8 += 6;
      if (v8 == v9)
      {
        goto LABEL_13;
      }
    }
  }

  if (v8 == v9)
  {
LABEL_13:
    v15 = *a3;
    v16 = *(a3 + 2);
    v14 = a2;
    v17 = -1;
    v18 = a4;
    sub_100577210((a1 + 488), &v14);
  }

  sub_1000088CC(v13);
  return 0;
}

uint64_t sub_100572EE4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v10[0] = 0;
  v10[1] = 0;
  sub_100007F88(v10, a1 + 424);
  v12 = *a3;
  v13 = *(a3 + 2);
  v6 = *(a1 + 488);
  v7 = *(a1 + 496);
  v11 = a2;
  v8 = sub_1005774F4(v6, v7, &v11);
  if (v8 != *(a1 + 496))
  {
    *(a1 + 496) = v8;
  }

  sub_1000088CC(v10);
  return 0;
}

uint64_t sub_100572FC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v10[0] = 0;
  v10[1] = 0;
  v5 = sub_100007F88(v10, a1 + 512);
  if (!*(a1 + 576))
  {
    v9 = 0;
    v7 = sub_10000C7D0(v5, v6);
    (*(*v7 + 176))(v7, &v9);
    operator new();
  }

  sub_1000088CC(v10);
  return 101;
}

void sub_10057308C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005730A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[0] = 0;
  v12[1] = 0;
  v6 = sub_100007F88(v12, a1 + 512);
  v8 = *(a1 + 576);
  if (v8 && *v8 == a2)
  {
    v10 = sub_10000C7D0(v6, v7);
    v9 = (*(*v10 + 176))(v10, a3);
  }

  else
  {
    v9 = 7;
  }

  sub_1000088CC(v12);
  return v9;
}

uint64_t sub_100573154(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 512);
  if (!*(a1 + 576))
  {
    operator new();
  }

  sub_1000088CC(v6);
  return 101;
}

uint64_t sub_100573204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21[0] = 0;
  v21[1] = 0;
  sub_100007F88(v21, a1 + 512);
  v14 = *(a1 + 576);
  if (v14 && *v14 == a2)
  {
    v17 = sub_100017E6C();
    v18 = (*(*v17 + 184))(v17, a3);
    if (v18)
    {
      v20 = sub_10000C7D0(v18, v19);
      v15 = (*(*v20 + 1200))(v20, a3, a4, a5, a6, a7);
    }

    else
    {
      v15 = 205;
    }
  }

  else
  {
    v15 = 7;
  }

  sub_1000088CC(v21);
  return v15;
}

uint64_t sub_100573328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 512);
  v8 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): readEnhancedPowerStatsPerCore", v18, 2u);
  }

  v9 = *(a1 + 576);
  if (v9 && *v9 == a2)
  {
    v13 = sub_100017E6C();
    v14 = (*(*v13 + 184))(v13, a3);
    if (v14)
    {
      v16 = sub_10000C7D0(v14, v15);
      v11 = (*(*v16 + 1648))(v16, a3, a4);
    }

    else
    {
      v17 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): (readEnhancedPowerStatsPerCore) can't read power profile stats: BT_ERROR_LOCAL_DEVICE_NOT_READY", v18, 2u);
      }

      v11 = 205;
    }
  }

  else
  {
    v10 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): (readEnhancedPowerStatsPerCore) BT_ERROR_INVALID_HANDLE", v18, 2u);
    }

    v11 = 7;
  }

  sub_1000088CC(v19);
  return v11;
}

void sub_1005734D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005734E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21[0] = 0;
  v21[1] = 0;
  v14 = sub_100007F88(v21, a1 + 512);
  v16 = *(a1 + 576);
  if (v16 && *v16 == a2)
  {
    if (a3 == 1)
    {
      v18 = sub_10000C7D0(v14, v15);
      v14 = (*(*v18 + 1224))(v18);
    }

    v19 = sub_10000C7D0(v14, v15);
    v17 = (*(*v19 + 1216))(v19, a4, a5, a6, a7);
  }

  else
  {
    v17 = 7;
  }

  sub_1000088CC(v21);
  return v17;
}

uint64_t sub_100573608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v39[0] = 0;
  v39[1] = 0;
  sub_100007F88(v39, a1 + 512);
  v25 = qword_100BCE8D8;
  if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): readDetailedPowerProfileStatistics", buf, 2u);
  }

  v26 = *(a1 + 576);
  if (v26 && *v26 == a2)
  {
    v30 = sub_100017E6C();
    v31 = (*(*v30 + 184))(v30, a3);
    if (v31)
    {
      v33 = sub_10000C7D0(v31, v32);
      v34 = (*(*v33 + 1232))(v33, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
      v28 = v34;
      if (a3)
      {
        v36 = sub_10000C7D0(v34, v35);
        (*(*v36 + 1240))(v36);
      }
    }

    else
    {
      v37 = qword_100BCE8D8;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): (readDetailedPowerProfileStatistics) can't read power profile stats: BT_ERROR_LOCAL_DEVICE_NOT_READY", buf, 2u);
      }

      v28 = 205;
    }
  }

  else
  {
    v27 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "(BTPowerLog): (readDetailedPowerProfileStatistics) BT_ERROR_INVALID_HANDLE", buf, 2u);
    }

    v28 = 7;
  }

  sub_1000088CC(v39);
  return v28;
}

void sub_100573838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10057384C(uint64_t a1, uint64_t a2, _WORD *a3)
{
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, a1 + 192);
  *(a2 + 35) = 0;
  *(a2 + 19) = 0u;
  *(a2 + 3) = 0u;
  *a2 = 9218;
  *(a2 + 2) = 2;
  *(a2 + 3) = *(a1 + 280);
  v6 = a1 + 256;
  for (i = *(a1 + 264); i != v6; i = *(i + 8))
  {
    sub_10057059C(a2 + 4, 256, *(*(i + 16) + 8), *(*(i + 16) + 16));
  }

  *a3 = 36;
  sub_1000088CC(v9);
  return 1;
}

uint64_t sub_100573910(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 192);
  v2 = *(a1 + 272);
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100573958(uint64_t a1, uint64_t *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 192);
  if ((a1 + 256) != a2)
  {
    sub_1005775C0(a2, *(a1 + 264), a1 + 256);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_1005739C8(uint64_t a1, _BYTE *a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 192);
  *a2 = *(a1 + 280);
  return sub_1000088CC(v5);
}

uint64_t sub_100573A14(uint64_t a1, uint64_t a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v6 = 3;
  if (a6 && a4 && a3 && a5)
  {
    v17[0] = 0;
    v17[1] = 0;
    sub_100007F88(v17, a1 + 192);
    for (i = *(a1 + 264); i != a1 + 256; i = *(i + 8))
    {
      v13 = *(i + 16);
      if (*(v13 + 16) >= a4)
      {
        v14 = a4;
      }

      else
      {
        v14 = *(v13 + 16);
      }

      if (!memcmp(*(v13 + 8), a3, v14))
      {
        v15 = *(v13 + 32) >= a6 ? a6 : *(v13 + 32);
        if (!memcmp(*(v13 + 24), a5, v15))
        {
          goto LABEL_20;
        }
      }
    }

    if (*(a1 + 272) < 0x1FuLL)
    {
      ++*(a1 + 280);
      operator new();
    }

    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084446C();
    }

LABEL_20:
    v6 = 1;
    sub_1000088CC(v17);
  }

  return v6;
}

uint64_t sub_100573CD8(uint64_t a1, uint64_t a2, const void *a3, size_t a4, const void *a5, size_t a6)
{
  v19[0] = 0;
  v19[1] = 0;
  sub_100007F88(v19, a1 + 192);
  for (i = *(a1 + 264); i != a1 + 256; i = *(i + 8))
  {
    v14 = *(i + 16);
    v18 = v14;
    if (*v14 == a2 && *(v14 + 16) == a4 && !memcmp(*(v14 + 8), a3, a4) && *(v14 + 32) == a6 && !memcmp(*(v14 + 24), a5, a6))
    {
      sub_100571D90((a1 + 256), &v18);
      v15 = v18;
      if (v18)
      {
        *(v18 + 16) = 0;
        free(*(v15 + 8));
        *(v15 + 8) = 0;
        *(v15 + 32) = 0;
        free(*(v15 + 24));
        *(v15 + 24) = 0;
        operator delete();
      }

      break;
    }
  }

  ++*(a1 + 280);
  if (qword_100B50AA0 != -1)
  {
    sub_1008443B8();
  }

  if (sub_1005A4070(off_100B50A98, v12) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008444A0();
  }

  if (qword_100B50AC0 != -1)
  {
    sub_1008443E0();
  }

  if (sub_100598334(off_100B50AB8, v16) && os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
  {
    sub_1008444D4();
  }

  sub_1000088CC(v19);
  return 0;
}

void sub_100573EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_100573EC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = a1;
  v13 = 0;
  v12 = 0;
  v15 = 0;
  v14 = 255;
  if (sub_10023DC00(a2, &v12))
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_100844508();
    }
  }

  else
  {
    if (qword_100B508F0 != -1)
    {
      sub_10084453C();
    }

    v10 = v12;
    v11 = v13;
    v7 = sub_1000E6554(off_100B508E8, &v10, 0);
    if (v7)
    {
      v8 = v7;
      if (a3)
      {
        v14 = *a4;
        v15 = *(a4 + 8);
      }

      if (qword_100B508A0 != -1)
      {
        v9 = v7;
        sub_100844564();
        v8 = v9;
      }

      sub_100574034(off_100B50898, v6, v8, &v14);
    }

    else if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084458C();
    }
  }
}

uint64_t sub_100574034(uint64_t a1, int a2, uint64_t a3, uint64_t *a4)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 424);
  v7 = *(a1 + 488);
  v8 = *(a1 + 496);
  if (v7 != v8)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    sub_100577904(&v13, v7, v8, 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 4));
    sub_10000801C(v16);
    v9 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v18 = 10;
      v19 = 2096;
      v20 = a4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Sending AFH map changed event to local device listeners %{AFHMap}.10P", buf, 0x12u);
    }

    v10 = v13;
    if (v13 != v14)
    {
      while (1)
      {
        if (v10[3])
        {
          if (!a3)
          {
            goto LABEL_20;
          }

          if (qword_100B508F0 != -1)
          {
            sub_10084453C();
          }

          if (!sub_10056A4C4(off_100B508E8, *v10, a3))
          {
LABEL_20:
            v10 = v13;
            break;
          }

          if (qword_100B50B88 != -1)
          {
            sub_100844390();
          }

          if (sub_100076290(qword_100B50B80, *v10))
          {
            if (qword_100B540D0 != -1)
            {
              sub_1008445C0();
            }

            operator new();
          }

          sub_100007FB8(v16);
          v11 = sub_100576F84(*(a1 + 488), *(a1 + 496), *v10);
          if (v11 != *(a1 + 496))
          {
            *(a1 + 496) = v11;
          }

          sub_10000801C(v16);
        }

        v10 += 6;
        if (v10 == v14)
        {
          goto LABEL_20;
        }
      }
    }

    if (v10)
    {
      v14 = v10;
      operator delete(v10);
    }
  }

  return sub_1000088CC(v16);
}

void sub_10057430C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100574348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  if (sub_10000EE78(off_100B512C0) != 1)
  {
    return 202;
  }

  v12 = 0;
  sub_1000216B4(&v12);
  v10 = sub_10024DE9C(nullsub_370, a3, v4, v5, v6, v7, v8, v9);
  sub_100022214(&v12);
  if (v10)
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008445E8();
    }

    v10 = 1;
  }

  sub_10002249C(&v12);
  return v10;
}

uint64_t sub_100574424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = 0;
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  if (sub_10000EE78(off_100B512C0) == 1)
  {
    v15 = 0;
    sub_1000216B4(&v15);
    if (sub_10023DB58(a3 + 128, &v16))
    {
      v4 = 312;
LABEL_15:
      sub_10002249C(&v15);
      return v4;
    }

    if (sub_10023E7FC() && *(v16 + 290) == 1)
    {
      v11 = sub_100022214(&v15);
      v19 = 0;
      v18 = 0;
      memset(v17, 0, sizeof(v17));
      v13 = sub_10000C7D0(v11, v12);
      if (!(*(*v13 + 1792))(v13, a3 + 128, &v18, v17, 1, 1))
      {
        v4 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v4 = sub_10024DECC(sub_100573EC8, v16, v5, v6, v7, v8, v9, v10);
      sub_100022214(&v15);
      if (!v4)
      {
        goto LABEL_15;
      }
    }

    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_10084461C();
    }

    v4 = 1;
    goto LABEL_15;
  }

  return 202;
}

uint64_t sub_1005745E0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_100574640(a1, 0, 0);
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  v3 = off_100B512C0;

  return sub_100579C58(v3, v2);
}

uint64_t sub_100574640(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (qword_100B50B88 != -1)
  {
    sub_100844408();
  }

  v6 = sub_1000117DC(qword_100B50B80, a2);
  if (v6)
  {
    v7 = v6;
    v8 = qword_100BCE8D8;
    v6 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      sub_100018384(v7, __p);
      v9 = __p[0];
      v10 = "off";
      if (v13 >= 0)
      {
        v9 = __p;
      }

      if (v3)
      {
        v10 = "on";
      }

      *buf = 136446466;
      v15 = v9;
      v16 = 2082;
      v17 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Session %{public}s wants denylisting %{public}s", buf, 0x16u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (sub_100574ECC(v6) != v3)
  {
    if (qword_100B50AA0 != -1)
    {
      sub_1008443B8();
    }

    sub_1005A0484(off_100B50A98, v3);
    sub_1000971F4(a1, 10, 0);
  }

  return 0;
}

uint64_t sub_1005747C8(uint64_t a1, uint64_t a2)
{
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  v3 = off_100B512C0;

  return sub_10057A304(v3, a2);
}

uint64_t sub_10057480C(uint64_t a1, uint64_t a2)
{
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  v3 = off_100B512C0;

  return sub_10057A430(v3, a2);
}

uint64_t sub_100574850(uint64_t a1, uint64_t a2, char *a3)
{
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  if (sub_10000EE78(off_100B512C0))
  {
    return 201;
  }

  v5 = qword_100BCE8D8;
  v6 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    *__p = 136315138;
    *&__p[4] = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Displaying power prompt on behalf of application %s", __p, 0xCu);
  }

  v8 = sub_10000EE80(v6, v7);
  sub_100007E30(__p, a3);
  (*(*v8 + 32))(v8, __p);
  if (v10 < 0)
  {
    operator delete(*__p);
  }

  return 0;
}

void sub_100574978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10057499C(uint64_t a1, _BYTE *a2)
{
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  *a2 = sub_10057A798(off_100B512C0);
  return 0;
}

void sub_1005749E8(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100844650();
  }

  v2 = off_100B50A98;

  sub_1005A9C9C(v2);
}

uint64_t sub_100574A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (qword_100B50AA0 != -1)
  {
    sub_100844650();
  }

  v7 = off_100B50A98;

  return sub_1005AA094(v7, v6, a3, a4);
}

uint64_t sub_100574A98(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (qword_100B50AA0 != -1)
  {
    sub_100844650();
  }

  v3 = off_100B50A98;

  return sub_1005AA244(v3, v2);
}

uint64_t sub_100574AEC(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100844650();
  }

  v2 = off_100B50A98;

  return sub_1005AA524(v2);
}

uint64_t sub_100574B30(uint64_t a1, _BYTE *a2)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100844650();
  }

  v3 = off_100B50A98;

  return sub_1005AA044(v3, a2);
}

uint64_t sub_100574B84(uint64_t a1, uint64_t a2)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100844650();
  }

  v3 = off_100B50A98;

  return sub_10009BE34(v3, a2);
}

uint64_t sub_100574BD8(uint64_t a1, std::string *a2)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100844650();
  }

  v3 = off_100B50A98;

  return sub_1005A2338(v3, a2);
}

uint64_t sub_100574C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 288);
  if (*(a1 + 375) < 0)
  {
    sub_100008904(a2, *(a1 + 352), *(a1 + 360));
  }

  else
  {
    *a2 = *(a1 + 352);
    *(a2 + 16) = *(a1 + 368);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_100574CAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 288);
  if (*(a1 + 399) < 0)
  {
    sub_100008904(a2, *(a1 + 376), *(a1 + 384));
  }

  else
  {
    *a2 = *(a1 + 376);
    *(a2 + 16) = *(a1 + 392);
  }

  return sub_1000088CC(v5);
}

uint64_t sub_100574D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 288);
  if (*(a1 + 423) < 0)
  {
    sub_100008904(a2, *(a1 + 400), *(a1 + 408));
  }

  else
  {
    *a2 = *(a1 + 400);
    *(a2 + 16) = *(a1 + 416);
  }

  return sub_1000088CC(v5);
}

void *sub_100574DB0(void *a1, void *a2)
{
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v2 = a1[1];
  if (v2 != a1)
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        sub_100576EA8(v10, v10, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
  }

  return sub_100028EB4(v10);
}

void sub_100574E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100028EB4(va);
  _Unwind_Resume(a1);
}

BOOL sub_100574E7C(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 584);
  v2 = *(a1 + 664) != 0;
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_100574ECC(uint64_t a1)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100844650();
  }

  v2 = off_100B50A98;

  return sub_10006DBF8(v2);
}

uint64_t sub_100574F10(uint64_t a1, char *a2, unint64_t *a3, unint64_t a4)
{
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if (qword_100B50F68 != -1)
  {
    sub_1000BE3C0();
  }

  sub_1000ADA24(off_100B50F60, &v44);
  v5 = v44;
  if (v44 == v45)
  {
    v9 = 0;
  }

  else
  {
    v6 = 0;
    v7 = a2;
    while (a4 + v6)
    {
      sub_1000C23E0(*v5, &buf);
      if (v49 >= 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf;
      }

      strlcpy(v7, p_buf, 0xF8uLL);
      if (v49 < 0)
      {
        operator delete(buf);
      }

      ++v5;
      --v6;
      v7 += 248;
      if (v5 == v45)
      {
        v9 = -v6;
        goto LABEL_16;
      }
    }

    v10 = qword_100BCE8D8;
    v9 = a4;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = a4;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Warning: More than %zu classic devices connected", &buf, 0xCu);
      v9 = a4;
    }
  }

LABEL_16:
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  v40 = 0u;
  if (qword_100B508B0 != -1)
  {
    sub_100844664();
  }

  v11 = sub_100029630(off_100B508A8);
  v12 = [v11 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (!v12)
  {
    goto LABEL_80;
  }

  v13 = *v41;
  obj = v11;
  while (2)
  {
    v14 = 0;
    do
    {
      if (*v41 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v40 + 1) + 8 * v14);
      if (qword_100B508D0 != -1)
      {
        sub_10084468C();
      }

      v16 = off_100B508C8;
      sub_100007E30(__p, "IsAppleWatch");
      if (sub_10004EB40(v16, v15, __p))
      {
        goto LABEL_29;
      }

      if (qword_100B508D0 != -1)
      {
        sub_10084468C();
      }

      if (sub_100788ED8(off_100B508C8, v15))
      {
LABEL_29:
        v17 = 1;
      }

      else
      {
        if (qword_100B508D0 != -1)
        {
          sub_10084468C();
        }

        v19 = off_100B508C8;
        sub_100007E30(v36, "A1603");
        if (sub_10004EB40(v19, v15, v36))
        {
          v17 = 1;
        }

        else
        {
          if (qword_100B508D0 != -1)
          {
            sub_10084468C();
          }

          v20 = off_100B508C8;
          sub_100007E30(v34, "A2051");
          if (sub_10004EB40(v20, v15, v34))
          {
            v17 = 1;
          }

          else
          {
            if (qword_100B508D0 != -1)
            {
              sub_10084468C();
            }

            v21 = off_100B508C8;
            sub_100007E30(v32, "A3085");
            if (sub_10004EB40(v21, v15, v32))
            {
              v17 = 1;
            }

            else
            {
              if (qword_100B508D0 != -1)
              {
                sub_10084468C();
              }

              v22 = off_100B508C8;
              sub_100007E30(v30, "A2538");
              if (sub_10004EB40(v22, v15, v30))
              {
                v17 = 1;
              }

              else
              {
                if (qword_100B508D0 != -1)
                {
                  sub_10084468C();
                }

                sub_1000B006C(off_100B508C8, v15, &buf);
                v23 = *(&buf + 1);
                if (v49 >= 0)
                {
                  v23 = v49;
                }

                v17 = v23 != 0;
                if ((v49 & 0x8000000000000000) != 0)
                {
                  operator delete(buf);
                }
              }

              if (v31 < 0)
              {
                operator delete(v30[0]);
              }
            }

            if (v33 < 0)
            {
              operator delete(v32[0]);
            }
          }

          if (v35 < 0)
          {
            operator delete(v34[0]);
          }
        }

        if (v37 < 0)
        {
          operator delete(v36[0]);
        }
      }

      if (v39 < 0)
      {
        operator delete(__p[0]);
        if (v17)
        {
          goto LABEL_43;
        }
      }

      else if (v17)
      {
        goto LABEL_43;
      }

      if (v9 >= a4)
      {
        v25 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = a4;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Warning: More than %zu classic and/or LE devices connected", &buf, 0xCu);
        }

        v11 = obj;
        goto LABEL_80;
      }

      if (qword_100B508D0 != -1)
      {
        sub_10084468C();
      }

      sub_10004FFDC(off_100B508C8, v15, &buf);
      if (v49 >= 0)
      {
        v18 = &buf;
      }

      else
      {
        v18 = buf;
      }

      strlcpy(&a2[248 * v9], v18, 0xF8uLL);
      if (v49 < 0)
      {
        operator delete(buf);
      }

      ++v9;
LABEL_43:
      v14 = v14 + 1;
    }

    while (v12 != v14);
    v11 = obj;
    v24 = [obj countByEnumeratingWithState:&v40 objects:v47 count:16];
    v12 = v24;
    if (v24)
    {
      continue;
    }

    break;
  }

LABEL_80:

  *a3 = v9;
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  return 0;
}

BOOL sub_100575554(uint64_t a1)
{
  v4[0] = 0;
  v4[1] = 0;
  sub_100007F88(v4, a1 + 584);
  v2 = *(a1 + 688) != 0;
  sub_1000088CC(v4);
  return v2;
}

uint64_t sub_1005755A4(uint64_t a1, BOOL *a2)
{
  if (qword_100B50F88 != -1)
  {
    sub_10084441C();
  }

  *a2 = sub_1006E1A18();
  if (qword_100B508C0 != -1)
  {
    sub_1008446B4();
  }

  *a2 |= sub_1007B7738(off_100B508B8);
  return 0;
}

uint64_t sub_100575620(uint64_t a1, uint64_t a2)
{
  if (qword_100B50F68 != -1)
  {
    sub_1000BE3C0();
  }

  sub_100530578(off_100B50F60, a2);
  return 0;
}

uint64_t sub_10057566C(uint64_t a1, BOOL *a2)
{
  if (qword_100B50C68 != -1)
  {
    sub_100844444();
  }

  *a2 = sub_10072C438(off_100B50C60);
  return 0;
}

uint64_t sub_1005756B8(uint64_t a1)
{
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  if (sub_10000EE78(off_100B512C0) == 1)
  {
    v6 = 0;
    sub_1000216B4(&v6);
    v1 = sub_1001C42E0();
    v2 = qword_100BCE8D8;
    if (v1)
    {
      v3 = 0;
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Successfully started HCI tracing", v5, 2u);
        v3 = 0;
      }
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_1008446FC();
      }

      v3 = 1;
    }

    sub_10002249C(&v6);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008446C8();
    }

    return 1;
  }

  return v3;
}

uint64_t sub_1005757DC(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  if (qword_100B512C8 != -1)
  {
    sub_100844430();
  }

  v9 = sub_10000EE78(off_100B512C0);
  if (v9 == 1)
  {
    if (a3 && *a3)
    {
      v11 = sub_1000E2738(v9, v10);
      v12 = (*(*v11 + 72))(v11, a3);
      if (v12 < 0)
      {
        v13 = qword_100BCE8D8;
        if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
        {
          sub_100844730(v12, v13);
        }
      }
    }

    else
    {
      v12 = -1;
    }

    if (!a5)
    {
      a4 = 0;
    }

    v21 = 0;
    sub_1000216B4(&v21);
    if (sub_1001C4528(a2, a4))
    {
      v14 = 0;
    }

    else
    {
      if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
      {
        sub_1008447A8();
      }

      v14 = 1;
    }

    sub_100022214(&v21);
    v15 = qword_100BCE8D8;
    v16 = os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Successfully stopped HCI tracing", v20, 2u);
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      v18 = sub_1000E2738(v16, v17);
      (*(*v18 + 80))(v18, v12);
    }

    sub_10002249C(&v21);
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_ERROR))
    {
      sub_1008446C8();
    }

    return 1;
  }

  return v14;
}

uint64_t sub_1005759E8(uint64_t a1, uint64_t a2, int a3)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100844650();
  }

  result = sub_1005A1174(off_100B50A98);
  if (!a3)
  {

    return sub_1000971F4(a1, 4, 0);
  }

  return result;
}

uint64_t sub_100575A64(uint64_t a1, uint64_t a2, int a3)
{
  if (qword_100B50AA0 != -1)
  {
    sub_100844650();
  }

  result = sub_1005A1174(off_100B50A98);
  if (!a3)
  {

    return sub_1000971F4(a1, 4, 0);
  }

  return result;
}

uint64_t sub_100575B64(uint64_t a1, int a2, int a3)
{
  v14[0] = 0;
  v14[1] = 0;
  sub_100007F88(v14, a1 + 424);
  v4 = *(a1 + 488);
  v5 = *(a1 + 496);
  if (v4 != v5)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    sub_100577904(&v11, v4, v5, 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 4));
    sub_10000801C(v14);
    v6 = qword_100BCE8D8;
    if (os_log_type_enabled(qword_100BCE8D8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending LE Test mode stopped event to local device listeners", v10, 2u);
    }

    v7 = v11;
    if (v11 != v12)
    {
      do
      {
        if (v7[2])
        {
          if (qword_100B50B88 != -1)
          {
            sub_100844390();
          }

          if (sub_100076290(qword_100B50B80, *v7))
          {
            if (qword_100B540D0 != -1)
            {
              sub_1008445C0();
            }

            operator new();
          }

          sub_100007FB8(v14);
          v8 = sub_100576F84(*(a1 + 488), *(a1 + 496), *v7);
          if (v8 != *(a1 + 496))
          {
            *(a1 + 496) = v8;
          }

          sub_10000801C(v14);
        }

        v7 += 6;
      }

      while (v7 != v12);
      v7 = v11;
    }

    if (v7)
    {
      v12 = v7;
      operator delete(v7);
    }
  }

  return sub_1000088CC(v14);
}

void sub_100575DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100575E24(uint64_t a1)
{
  if (qword_100B50DB8 != -1)
  {
    sub_1008447DC();
  }

  if (sub_10009BA14(off_100B50DB0))
  {
    return 1;
  }

  if (qword_100B51078 != -1)
  {
    sub_1008447F0();
  }

  v3 = off_100B51070;

  return sub_1007A6D0C(v3, v1);
}

uint64_t sub_100575E9C(uint64_t a1)
{
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  *__p = 0u;
  memset(v57, 0, sizeof(v57));
  v55 = 0u;
  v56 = 0u;
  sub_100007AD0(&v55);
  v54 = 0;
  v53 = 0;
  if (qword_100B50AA0 != -1)
  {
    sub_1008443B8();
  }

  sub_10009BE34(off_100B50A98, &v53);
  v2 = sub_100007774(&v56, "Name: ", 6);
  if (qword_100B50AA0 != -1)
  {
    sub_1008443B8();
  }

  v3 = off_100B50A98 + 312;
  if (*(off_100B50A98 + 335) < 0)
  {
    v3 = *v3;
  }

  v4 = strlen(v3);
  v5 = sub_100007774(v2, v3, v4);
  std::ios_base::getloc((v5 + *(*v5 - 24)));
  v6 = std::locale::use_facet(&v50, &std::ctype<char>::id);
  (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(&v50);
  std::ostream::put();
  std::ostream::flush();
  v7 = sub_100007774(&v56, "Model: ", 7);
  v8 = *(a1 + 375);
  if (v8 >= 0)
  {
    LODWORD(v9) = a1 + 352;
  }

  else
  {
    v9 = *(a1 + 352);
  }

  if (v8 >= 0)
  {
    LODWORD(v10) = *(a1 + 375);
  }

  else
  {
    v10 = *(a1 + 360);
  }

  v11 = sub_100007774(v7, v9, v10);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v50, &std::ctype<char>::id);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v50);
  std::ostream::put();
  std::ostream::flush();
  v13 = sub_100007774(&v56, "SW Version: ", 12);
  v14 = *(a1 + 399);
  if (v14 >= 0)
  {
    LODWORD(v15) = a1 + 376;
  }

  else
  {
    v15 = *(a1 + 376);
  }

  if (v14 >= 0)
  {
    LODWORD(v16) = *(a1 + 399);
  }

  else
  {
    v16 = *(a1 + 384);
  }

  v17 = sub_100007774(v13, v15, v16);
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v50, &std::ctype<char>::id);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v50);
  std::ostream::put();
  std::ostream::flush();
  v19 = sub_100007774(&v56, "Bluetooth Host SW Version: ", 27);
  v20 = strlen(CBHostVersion);
  v21 = sub_100007774(v19, CBHostVersion, v20);
  std::ios_base::getloc((v21 + *(*v21 - 24)));
  v22 = std::locale::use_facet(&v50, &std::ctype<char>::id);
  (v22->__vftable[2].~facet_0)(v22, 10);
  std::locale::~locale(&v50);
  std::ostream::put();
  std::ostream::flush();
  v23 = sub_100007774(&v56, "Address: ", 9);
  locale = &v50;
  sub_1000BE6F8(&v53, &v50);
  if (v52 < 0)
  {
    locale = v50.__locale_;
  }

  v25 = strlen(locale);
  v26 = sub_100007774(v23, locale, v25);
  std::ios_base::getloc((v26 + *(*v26 - 24)));
  v27 = std::locale::use_facet(&v71, &std::ctype<char>::id);
  (v27->__vftable[2].~facet_0)(v27, 10);
  std::locale::~locale(&v71);
  std::ostream::put();
  v28 = std::ostream::flush();
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v50.__locale_);
  }

  v50.__locale_ = 0;
  v51 = 0;
  v52 = 0;
  v30 = sub_10009BD9C(v28, v29);
  if (!(*(*v30 + 64))(v30, &v50))
  {
    v31 = HIBYTE(v52);
    if (v52 < 0)
    {
      v31 = v51;
    }

    if (v31)
    {
      v32 = sub_100007774(&v56, "FW Version: ", 12);
      if (v52 >= 0)
      {
        v33 = &v50;
      }

      else
      {
        LODWORD(v33) = v50.__locale_;
      }

      if (v52 >= 0)
      {
        v34 = HIBYTE(v52);
      }

      else
      {
        v34 = v51;
      }

      v35 = sub_100007774(v32, v33, v34);
      std::ios_base::getloc((v35 + *(*v35 - 24)));
      v36 = std::locale::use_facet(&v71, &std::ctype<char>::id);
      (v36->__vftable[2].~facet_0)(v36, 10);
      std::locale::~locale(&v71);
      std::ostream::put();
      std::ostream::flush();
    }
  }

  v49 = 0;
  if (qword_100B50AA0 != -1)
  {
    sub_1008443B8();
  }

  sub_100061E78(off_100B50A98, &v49);
  v48 = 0;
  if (qword_100B50AA0 != -1)
  {
    sub_1008443B8();
  }

  sub_100062334(off_100B50A98, &v48);
  v37 = sub_100007774(&v56, "Discoverable: ", 14);
  if (v49)
  {
    v38 = "Yes";
  }

  else
  {
    v38 = "No";
  }

  if (v49)
  {
    v39 = 3;
  }

  else
  {
    v39 = 2;
  }

  v40 = sub_100007774(v37, v38, v39);
  v41 = sub_100007774(v40, " Connectable: ", 14);
  if (v48)
  {
    v42 = "Yes";
  }

  else
  {
    v42 = "No";
  }

  if (v48)
  {
    v43 = 3;
  }

  else
  {
    v43 = 2;
  }

  v44 = sub_100007774(v41, v42, v43);
  std::ios_base::getloc((v44 + *(*v44 - 24)));
  v45 = std::locale::use_facet(&v71, &std::ctype<char>::id);
  (v45->__vftable[2].~facet_0)(v45, 10);
  std::locale::~locale(&v71);
  std::ostream::put();
  std::ostream::flush();
  std::stringbuf::str();
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v50.__locale_);
  }

  *&v56 = v46;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v57);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}