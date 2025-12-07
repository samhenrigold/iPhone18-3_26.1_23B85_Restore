void sub_1005DFFD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v14 - 104) = &a11;
  sub_1000D6BD4((v14 - 104));
  a11 = &a14;
  sub_1000D6BD4(&a11);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E007C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  sub_10032021C(a1 + 360, &v31);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  sub_1000D72E4(a1 + 360, &v28);
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  if (sub_1006FD3C4(off_100B54078))
  {
    if (v3)
    {
      v5 = sub_1006EEF34(&v31, v3);
      v6 = v5;
      if (v32 == v5)
      {
        v16 = sub_1006EEF34(&v28, v3);
        v17 = v16;
        if (v29 != v16)
        {
          v18 = *v16;
          sub_10004DFB4(src, v18);
          uuid_copy(uu, src);

          if (uuid_is_null(uu))
          {
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
            {
              sub_1000DA754(v17, src);
              sub_10084E418();
            }
          }
        }
      }

      else
      {
        v7 = *v5;
        sub_10004DFB4(src, v7);
        uuid_copy(uu, src);

        if (uuid_is_null(uu) && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
        {
          sub_1000DA754(v6, src);
          sub_10084E3C4();
        }
      }
    }

    else
    {
      v9 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        *src = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Allowing zero index private conference command - finding index of oldest call", src, 2u);
      }

      v10 = v31;
      if (v31 == v32)
      {
        goto LABEL_30;
      }

      v11 = 0;
      do
      {
        v12 = *(v10 + 8);
        if (!v11 || v12 < v11)
        {
          v13 = *v10;
          sub_10004DFB4(src, v13);
          uuid_copy(uu, src);

          if (uuid_is_null(uu))
          {
            v14 = qword_100BCE8F8;
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
            {
              sub_1000DA754(v10, src);
              v15 = src;
              if (v35 < 0)
              {
                v15 = *src;
              }

              *buf = 67109378;
              v37 = v12;
              v38 = 2080;
              v39 = v15;
              _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Found invalid call in sent calls at index %d (call: %s)", buf, 0x12u);
              if (v35 < 0)
              {
                operator delete(*src);
              }
            }
          }

          v11 = v12;
        }

        v10 += 104;
      }

      while (v10 != v32);
      if (!v11)
      {
LABEL_30:
        v19 = v28;
        if (v28 != v29)
        {
          v20 = 0;
          do
          {
            v21 = *(v19 + 2);
            if (!v20 || v21 < v20)
            {
              v22 = *v19;
              sub_10004DFB4(src, v22);
              uuid_copy(uu, src);

              if (uuid_is_null(uu))
              {
                v23 = qword_100BCE8F8;
                if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
                {
                  sub_1000DA754(v19, src);
                  v24 = v35 >= 0 ? src : *src;
                  *buf = 67109378;
                  v37 = v21;
                  v38 = 2080;
                  v39 = v24;
                  _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Found invalid call in current calls at index %d (call: %s)", buf, 0x12u);
                  if (v35 < 0)
                  {
                    operator delete(*src);
                  }
                }
              }

              v20 = v21;
            }

            v19 += 13;
          }

          while (v19 != v29);
        }
      }
    }

    if (uuid_is_null(uu))
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084E4DC();
      }

      v8 = 21;
    }

    else
    {
      if (qword_100B54080 != -1)
      {
        sub_10084CD0C();
      }

      v25 = off_100B54078;
      v26 = sub_10004DF60(uu);
      if (sub_1006FD1B8(v25))
      {
        v8 = 0;
      }

      else
      {
        v8 = 255;
      }
    }
  }

  else
  {
    v8 = 4;
  }

  *uu = &v28;
  sub_1000D6BD4(uu);
  v28 = &v31;
  sub_1000D6BD4(&v28);
  return v8;
}

void sub_1005E0570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v14 - 104) = &a11;
  sub_1000D6BD4((v14 - 104));
  a11 = &a14;
  sub_1000D6BD4(&a11);
  _Unwind_Resume(a1);
}

void sub_1005E0618(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if (a2)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E54C();
    }
  }

  else if (a3)
  {
    v5 = sub_1005D0048(result, a3);
    if (v5)
    {
      v6 = v5 + 400;

      sub_1000DAD04(v6, a4);
    }
  }
}

void sub_1005E06A8(int a1, uint64_t a2, int a3, __int16 a4)
{
  if (a2)
  {
    v7 = sub_100216D00(a2);
    v8 = v7;
    v10 = sub_1000D999C(v7, v9);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1005E93E8;
    v11[3] = &unk_100ADF940;
    v14 = v8;
    v12 = a1;
    v13 = a3;
    v15 = a4;
    sub_10000CA94(v10, v11);
  }
}

uint64_t sub_1005E0750(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005D09A8(a1, a2);
  v5 = sub_1003211B8(v4 + 400);
  v6 = sub_100320184(v4 + 400);
  v7 = sub_1003211F8(v4 + 400);
  v8 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT) && ((sub_1000E5A58(a2, __p), v19 >= 0) ? (v9 = __p) : (v9 = __p[0]), *buf = 136446722, v21 = v9, v22 = 1024, v23 = v5, v24 = 1024, v25 = v7, _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Transitioning to HandsfreeAoS - device:%{public}s isInAdvancedSniff:%d pendingAoSExit:%d", buf, 0x18u), v19 < 0))
  {
    operator delete(__p[0]);
    if (v7)
    {
      goto LABEL_7;
    }
  }

  else if (v7)
  {
LABEL_7:
    sub_1003211E0(v4 + 400, 1);
    return 0;
  }

  buf[0] = 0;
  sub_1000216B4(buf);
  v11 = sub_1000E1FE8(a2 + 128);
  sub_100022214(buf);
  if (v5)
  {
    v12 = sub_1005D4A04(a1, a2 + 128);
    sub_1000618AC(buf);
    v10 = sub_100211538(v12, v6);
  }

  else
  {
    v13 = sub_100308C38(a2 + 128);
    v15 = sub_10000C7D0(v13, v14);
    BYTE2(v17) = 1;
    LOWORD(v17) = 2;
    (*(*v15 + 1840))(v15, *v11, 24, 20, 8, 1, 0, v13, 0x2D000000001, v17);
    v10 = 0;
  }

  sub_10002249C(buf);
  return v10;
}

void sub_1005E0970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

void (*sub_1005E0998(void *a1, void *a2, void (*a3)(unint64_t, void)))(unint64_t, void)
{
  if (a1 != a2)
  {
    v6 = a1;
    do
    {
      v3 = v3 & 0xFFFFFFFFFFFF0000 | *(v6 + 16);
      a3(v3, v6[5]);
      v7 = v6[1];
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
          v8 = v6[2];
          v9 = *v8 == v6;
          v6 = v8;
        }

        while (!v9);
      }

      v6 = v8;
    }

    while (v8 != a2);
  }

  return a3;
}

_BYTE *sub_1005E0A24(unsigned __int16 a1, uint64_t a2)
{
  result = sub_100320E3C(a2 + 400);
  if (result)
  {
    sub_100320E44(a2 + 400, 0);
    v6 = 0;
    sub_1000216B4(&v6);
    v5 = sub_100210908(a1, 0);
    sub_100022214(&v6);
    if (v5)
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084E5BC();
      }
    }

    return sub_10002249C(&v6);
  }

  return result;
}

uint64_t sub_1005E0AD4(uint64_t a1, uint64_t a2)
{
  sub_100320288(a1 + 360);
  v4 = sub_1005D0048(a1, a2);
  if (v4)
  {
    sub_100318EE4(v4 + 400, 0);
  }

  if (sub_1003201DC(a1 + 360) || sub_1003201E4(a1 + 360))
  {
    if (!sub_1003203B8(a1 + 360, 1))
    {
      v5 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        v14 = sub_100320370(a1 + 360);
        sub_1000DAB24(&v14, v15);
        v7 = v16;
        v8 = v15[0];
        v11 = 1;
        sub_1000DAB24(&v11, __p);
        v9 = v15;
        if (v7 < 0)
        {
          v9 = v8;
        }

        if (v13 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        *buf = 136446466;
        v18 = v9;
        v19 = 2082;
        v20 = v10;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Attempting to reject incoming call but call setup is %{public}s instead of %{public}s", buf, 0x16u);
        if (v13 < 0)
        {
          operator delete(__p[0]);
        }

        if (v16 < 0)
        {
          operator delete(v15[0]);
        }
      }
    }

    if (qword_100B54080 != -1)
    {
      sub_10084CD0C();
    }

    if (sub_1006FCF88(off_100B54078))
    {
      return 0;
    }

    else
    {
      return 255;
    }
  }

  else
  {
    result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_10084E5F8();
      return 0;
    }
  }

  return result;
}

void sub_1005E0CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005E0CD4(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = sub_1005D09A8(a1, a2);
  v6 = qword_100BCE8F8;
  if (!os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_8;
  }

  v7 = a3;
  if (a3[23] < 0)
  {
    v7 = *a3;
  }

  sub_1000E5A58(a2, __p);
  v8 = v13 >= 0 ? __p : __p[0];
  *buf = 136446466;
  v15 = v7;
  v16 = 2082;
  v17 = v8;
  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending '%{public}s' Siri status event for device %{public}s", buf, 0x16u);
  if (v13 < 0)
  {
    operator delete(__p[0]);
    if (!v5)
    {
      return;
    }
  }

  else
  {
LABEL_8:
    if (!v5)
    {
      return;
    }
  }

  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  v9 = sub_100320D94(v5 + 400);
  v10 = a3[23];
  if (v10 < 0)
  {
    v11 = a3;
    a3 = *a3;
    v10 = *(v11 + 1);
  }

  sub_10020F488(v9, a3, v10);
  sub_100022214(__p);
  sub_10002249C(__p);
}

void sub_1005E0E44(uint64_t a1)
{
  memset(v5, 0, sizeof(v5));
  sub_100007E30(&v5[1], "");
  if (qword_100B54080 != -1)
  {
    sub_10084CD0C();
  }

  if (sub_1006FCDB4(off_100B54078))
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E670();
    }
  }

  else
  {
    v2 = v5[0];
    if (SHIBYTE(v5[3]) < 0)
    {
      sub_100008904(__p, v5[1], v5[2]);
    }

    else
    {
      *__p = *&v5[1];
      v4 = v5[3];
    }

    sub_10032018C(a1 + 360, &v2);
    if (SHIBYTE(v4) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (SHIBYTE(v5[3]) < 0)
  {
    operator delete(v5[1]);
  }
}

void sub_1005E0F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1005E0F7C(uint64_t a1, uint64_t a2)
{
  sub_1005D55C0(a1, a2);
  v6 = 0;
  sub_1000216B4(&v6);
  v3 = sub_100320144(a1 + 360);
  sub_10020F3E4(v3);
  v4 = sub_100320154(a1 + 360);
  sub_10020F408(v4);
  return sub_10002249C(&v6);
}

void sub_1005E0FF0(void *a1)
{
  if (qword_100B54080 != -1)
  {
    sub_10084CCF8();
  }

  v2 = sub_1006FCDDC(off_100B54078);
  if (v2)
  {
    sub_1005E1094(a1, 0, 0, v2);
  }

  else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084E6AC();
  }
}

void sub_1005E1094(void *a1, char *a2, _BYTE *a3, void *a4)
{
  v7 = a4;
  v36[0] = 0;
  v36[1] = 0;
  sub_100007F88(v36, (a1 + 95));
  if (a2)
  {
    v8 = *a2;
    v9 = v8 != sub_1003203D0((a1 + 45));
    sub_1003203C8((a1 + 45), *a2);
    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = 0;
    if (a3)
    {
LABEL_3:
      if (*a3 == 100)
      {
        v10 = 5;
      }

      else
      {
        v10 = *a3 / 0x14u + 1;
      }

      v11 = sub_1003203E0((a1 + 45));
      sub_1003203D8((a1 + 45), v10);
      v12 = v10 != v11;
      if (v7)
      {
        goto LABEL_7;
      }

LABEL_10:
      v17 = 0;
      v18 = 0;
      goto LABEL_11;
    }
  }

  v12 = 0;
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_7:
  v13 = [v7 service];
  v14 = sub_1003201C4((a1 + 45));
  v15 = [v7 roaming];
  v16 = sub_1003201CC((a1 + 45));
  sub_1003201D4((a1 + 45), v7);
  v17 = v13 ^ v14;
  v18 = v15 ^ v16;
LABEL_11:
  if (v9 || v12 || (v17 & 1) != 0 || v18)
  {
    v35 = 0;
    sub_1000216B4(&v35);
    if (a1[105])
    {
      v19 = a1[103];
      if (v19 != a1 + 104)
      {
        do
        {
          if (v9)
          {
            v20 = *(v19 + 16);
            v21 = sub_1003203D0((a1 + 45));
            sub_10021038C(v20, v21);
          }

          if (v12)
          {
            v22 = *(v19 + 16);
            v23 = sub_1003203E0((a1 + 45));
            sub_100210250(v22, v23);
          }

          if (v17)
          {
            v24 = *(v19 + 16);
            v25 = sub_1003201C4((a1 + 45));
            sub_10020FCF8(v24, v25);
          }

          if (v18)
          {
            v26 = *(v19 + 16);
            v27 = sub_1003201CC((a1 + 45));
            sub_100210500(v26, v27);
          }

          v28 = v19[1];
          if (v28)
          {
            do
            {
              v29 = v28;
              v28 = *v28;
            }

            while (v28);
          }

          else
          {
            do
            {
              v29 = v19[2];
              v30 = *v29 == v19;
              v19 = v29;
            }

            while (!v30);
          }

          v19 = v29;
        }

        while (v29 != a1 + 104);
      }
    }

    else
    {
      if (v9)
      {
        v31 = sub_1003203D0((a1 + 45));
        sub_10021038C(0, v31);
      }

      if (v12)
      {
        v32 = sub_1003203E0((a1 + 45));
        sub_100210250(0, v32);
      }

      if (v17)
      {
        v33 = sub_1003201C4((a1 + 45));
        sub_10020FCF8(0, v33);
      }

      if (v18)
      {
        v34 = sub_1003201CC((a1 + 45));
        sub_100210500(0, v34);
      }
    }

    sub_10002249C(&v35);
  }

  sub_1000088CC(v36);
}

void sub_1005E1318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_1005E13C0(uint64_t a1, uint64_t a2, char a3)
{
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x2020000000;
  v7 = a3;
  v4 = sub_1000D999C(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005E1478;
  v5[3] = &unk_100AE25F0;
  v5[4] = v6;
  v5[5] = a1;
  sub_10000CA94(v4, v5);
  _Block_object_dispose(v6, 8);
}

void sub_1005E1460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1005E14A0(uint64_t a1, void *a2, char a3)
{
  v17 = a3;
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v7 = sub_100320D9C(v5[5] + 400);
      if (sub_1000DAD9C(a1 + 360, 1) && v7)
      {
        if (*(v7 + 128))
        {
LABEL_5:
          if (*(v7 + 1040) == 1)
          {
            v8 = qword_100BCE8F8;
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000C23E0(v7, __p);
              v9 = __p;
              if (v16 < 0)
              {
                v9 = __p[0];
              }

              *buf = 141558275;
              v19 = 1752392040;
              v20 = 2081;
              v21 = v9;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Wireless Splitter suppressing UpdateCallStatus for device %{private, mask.hash}s due to WS being enabled", buf, 0x16u);
              if (v16 < 0)
              {
                operator delete(__p[0]);
              }
            }

            goto LABEL_16;
          }
        }

        else
        {
          v10 = 0;
          while (v10 != 5)
          {
            if (*(v7 + 129 + v10++))
            {
              if ((v10 - 1) <= 4)
              {
                goto LABEL_5;
              }

              break;
            }
          }
        }
      }

      v3 = v3 & 0xFFFFFFFFFFFF0000 | *(v5 + 16);
      sub_1005EA138(&v17, v3, v5[5]);
LABEL_16:
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
          v14 = *v13 == v5;
          v5 = v13;
        }

        while (!v14);
      }

      v5 = v13;
    }

    while (v13 != v4);
  }
}

void sub_1005E1684(uint64_t a1, void *a2, void (*a3)(unint64_t, void))
{
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v8 = sub_100320D9C(v5[5] + 400);
      if (sub_1000DAD9C(a1 + 360, 1) && v8)
      {
        if (*(v8 + 128))
        {
LABEL_5:
          if (*(v8 + 1040) == 1)
          {
            v9 = qword_100BCE8F8;
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000C23E0(v8, __p);
              v10 = __p;
              if (v17 < 0)
              {
                v10 = __p[0];
              }

              *buf = 141558275;
              v19 = 1752392040;
              v20 = 2081;
              v21 = v10;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Wireless Splitter suppressing UpdateCallStatus for device %{private, mask.hash}s due to WS being enabled", buf, 0x16u);
              if (v17 < 0)
              {
                operator delete(__p[0]);
              }
            }

            goto LABEL_16;
          }
        }

        else
        {
          v11 = 0;
          while (v11 != 5)
          {
            if (*(v8 + 129 + v11++))
            {
              if ((v11 - 1) <= 4)
              {
                goto LABEL_5;
              }

              break;
            }
          }
        }
      }

      v3 = v3 & 0xFFFFFFFFFFFF0000 | *(v5 + 16);
      a3(v3, v5[5]);
LABEL_16:
      v13 = v5[1];
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
          v14 = v5[2];
          v15 = *v14 == v5;
          v5 = v14;
        }

        while (!v15);
      }

      v5 = v14;
    }

    while (v14 != v4);
  }
}

void sub_1005E1864(unsigned __int16 a1, uint64_t a2)
{
  if (sub_100320E64(a2 + 400))
  {
    if (qword_100B50AD0 != -1)
    {
      sub_10084E6E8();
    }

    v3 = sub_1005D492C(off_100B50AC8, a1);
    v5 = *sub_10000C798(v3, v4);
    if (((*(v5 + 416))() & 1) == 0)
    {
      v6 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 2;
        v7 = v14;
        sub_1000DAB24(&v13, v14);
        if (v15 < 0)
        {
          v7 = v14[0];
        }

        if (v3)
        {
          sub_1000E5A58(v3, __p);
          if (v17 >= 0)
          {
            v8 = __p;
          }

          else
          {
            v8 = *__p;
          }

          *buf = 136446466;
          v19 = v7;
          v20 = 2082;
          v21 = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending call setup %{public}s to device %{public}s", buf, 0x16u);
          if (v17 < 0)
          {
            operator delete(*__p);
          }
        }

        else
        {
          *buf = 136446466;
          v19 = v7;
          v20 = 2082;
          v21 = "NULL";
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending call setup %{public}s to device %{public}s", buf, 0x16u);
        }

        if (v15 < 0)
        {
          operator delete(v14[0]);
        }
      }

      LOBYTE(v14[0]) = 0;
      sub_1000216B4(v14);
      v9 = sub_10020FF34(a1, 2u);
      sub_10002249C(v14);
      if (v9)
      {
        goto LABEL_31;
      }
    }

    v10 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      if (v3)
      {
        sub_1000E5A58(v3, v14);
        if (v15 >= 0)
        {
          v11 = v14;
        }

        else
        {
          v11 = v14[0];
        }

        *__p = 136446210;
        *&__p[4] = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sending call status call active to device %{public}s", __p, 0xCu);
        if (v15 < 0)
        {
          operator delete(v14[0]);
        }
      }

      else
      {
        *__p = 136446210;
        *&__p[4] = "NULL";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sending call status call active to device %{public}s", __p, 0xCu);
      }
    }

    LOBYTE(v14[0]) = 0;
    sub_1000216B4(v14);
    v12 = sub_10020FE14(a1, 1);
    sub_10002249C(v14);
    if (v12)
    {
LABEL_31:
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084E6FC();
      }
    }
  }
}

void sub_1005E1B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005E1BB8(uint64_t a1, void *a2, int a3)
{
  v17 = a3;
  v18 = BYTE2(a3);
  v4 = a2 + 1;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v7 = sub_100320D9C(v5[5] + 400);
      if (sub_1000DAD9C(a1 + 360, 1) && v7)
      {
        if (*(v7 + 128))
        {
LABEL_5:
          if (*(v7 + 1040) == 1)
          {
            v8 = qword_100BCE8F8;
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
            {
              sub_1000C23E0(v7, __p);
              v9 = __p;
              if (v16 < 0)
              {
                v9 = __p[0];
              }

              *buf = 141558275;
              v20 = 1752392040;
              v21 = 2081;
              v22 = v9;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Wireless Splitter suppressing UpdateCallStatus for device %{private, mask.hash}s due to WS being enabled", buf, 0x16u);
              if (v16 < 0)
              {
                operator delete(__p[0]);
              }
            }

            goto LABEL_16;
          }
        }

        else
        {
          v10 = 0;
          while (v10 != 5)
          {
            if (*(v7 + 129 + v10++))
            {
              if ((v10 - 1) <= 4)
              {
                goto LABEL_5;
              }

              break;
            }
          }
        }
      }

      v3 = v3 & 0xFFFFFFFFFFFF0000 | *(v5 + 16);
      sub_1005EA588(&v17, v3, v5[5]);
LABEL_16:
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
          v14 = *v13 == v5;
          v5 = v13;
        }

        while (!v14);
      }

      v5 = v13;
    }

    while (v13 != v4);
  }
}

uint64_t sub_1005E1DA4(uint64_t a1)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 760);
  if (sub_1000DAD9C(a1 + 360, 0))
  {
    v2 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v3 = "Cannot send ring because ring status is not ringing";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, v3, buf, 2u);
    }
  }

  else if (sub_1003203B8(a1 + 360, 1))
  {
    if (sub_10057DDF0(a1))
    {
      if (sub_1000DAD9C(a1 + 360, 1))
      {
        sub_1000D88F8(v5, a1 + 824);
        sub_1005E1684(a1, v5, sub_1005E2518);
        sub_10000CEDC(v5, v5[1]);
      }

      sub_100320320(a1 + 360);
      operator new();
    }

    v2 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v3 = "Cannot send ring because we are not connected";
      goto LABEL_13;
    }
  }

  else
  {
    v2 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v3 = "Cannot send ring because is not incoming";
      goto LABEL_13;
    }
  }

  return sub_1000088CC(v7);
}

void sub_1005E1F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  sub_10000CEDC(&a10, a11);
  sub_1000088CC(v11 - 32);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E1F90(uint64_t a1)
{
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 760);
  v2 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Sending call waiting notification to all connected devices", buf, 2u);
  }

  sub_1000D88F8(v4, a1 + 824);
  sub_1005E1684(a1, v4, sub_1005E2078);
  sub_10000CEDC(v4, v4[1]);
  sub_100320320(a1 + 360);
  return sub_1000088CC(v6);
}

void sub_1005E2050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  sub_10000CEDC(&a10, a11);
  sub_1000088CC(v11 - 32);
  _Unwind_Resume(a1);
}

void sub_1005E2078(unsigned __int16 a1, uint64_t a2)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  v4 = off_100B50AC8;
  if (sub_100320E64(a2 + 400))
  {
    if (qword_100B50AD0 != -1)
    {
      sub_10084E6E8();
    }

    v5 = sub_1005D492C(off_100B50AC8, a1);
    if (qword_100B50AD0 != -1)
    {
      sub_10084E6E8();
    }

    v6 = sub_1005D0048(off_100B50AC8, a1);
    if (sub_100320E04(v6 + 400))
    {
      goto LABEL_12;
    }

    if (qword_100B50AD0 != -1)
    {
      sub_10084E6E8();
    }

    v7 = sub_1005D0048(off_100B50AC8, a1);
    if (sub_100320E24(v7 + 400))
    {
LABEL_12:
      v8 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = &v26;
        sub_100320338((v4 + 360), &v26);
        if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v9 = v26.__r_.__value_.__r.__words[0];
        }

        v10 = v23;
        sub_100320340(v4 + 360, v23);
        if (v24 < 0)
        {
          v10 = v23[0];
        }

        if (v5)
        {
          sub_1000E5A58(v5, __p);
          if (v22 >= 0)
          {
            v11 = __p;
          }

          else
          {
            v11 = __p[0];
          }

          LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
          *(buf.__r_.__value_.__r.__words + 4) = v9;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v10;
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2082;
          v28 = v11;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending call waiting notification for call %s %s to device %{public}s", &buf, 0x20u);
          if (v22 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
          *(buf.__r_.__value_.__r.__words + 4) = v9;
          WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
          *(&buf.__r_.__value_.__r.__words[1] + 6) = v10;
          HIWORD(buf.__r_.__value_.__r.__words[2]) = 2082;
          v28 = "NULL";
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending call waiting notification for call %s %s to device %{public}s", &buf, 0x20u);
        }

        if (v24 < 0)
        {
          operator delete(v23[0]);
        }

        if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v26.__r_.__value_.__l.__data_);
        }
      }

      sub_100320340(v4 + 360, &v26);
      sub_1005D4DE0(&v26, v5, &buf);
      v25 = buf;
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v26.__r_.__value_.__l.__data_);
      }

      v26.__r_.__value_.__s.__data_[0] = 0;
      sub_1000216B4(&v26);
      sub_100320338((v4 + 360), &buf);
      v15 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      v16 = buf.__r_.__value_.__r.__words[0];
      v17 = sub_100320368((v4 + 360));
      if (v15 >= 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = v16;
      }

      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v19 = &v25;
      }

      else
      {
        v19 = v25.__r_.__value_.__r.__words[0];
      }

      v20 = sub_100210AD0(a1, p_buf, v17, v19);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      sub_100022214(&v26);
      if (v20)
      {
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
        {
          sub_10084E76C();
        }
      }

      sub_10002249C(&v26);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        v14 = v25.__r_.__value_.__r.__words[0];
        goto LABEL_50;
      }
    }

    else
    {
      v12 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        if (!v5)
        {
          LODWORD(v26.__r_.__value_.__l.__data_) = 136446210;
          *(v26.__r_.__value_.__r.__words + 4) = "NULL";
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device %{public}s does not support call waiting!", &v26, 0xCu);
          return;
        }

        sub_1000E5A58(v5, &buf);
        v13 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
        LODWORD(v26.__r_.__value_.__l.__data_) = 136446210;
        *(v26.__r_.__value_.__r.__words + 4) = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device %{public}s does not support call waiting!", &v26, 0xCu);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          v14 = buf.__r_.__value_.__r.__words[0];
LABEL_50:
          operator delete(v14);
        }
      }
    }
  }
}

void sub_1005E2490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005E2518(unsigned __int16 a1, uint64_t a2)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  v4 = off_100B50AC8;
  if (sub_100320E64(a2 + 400))
  {
    if (qword_100B50AD0 != -1)
    {
      sub_10084E6E8();
    }

    v5 = sub_1005D492C(off_100B50AC8, a1);
    v6 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = &v21;
      sub_100320338((v4 + 360), &v21);
      if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v7 = v21.__r_.__value_.__r.__words[0];
      }

      v8 = v19;
      sub_100320340(v4 + 360, v19);
      if (v20 < 0)
      {
        v8 = v19[0];
      }

      if (v5)
      {
        sub_1000E5A58(v5, __p);
        if (v18 >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
        *(buf.__r_.__value_.__r.__words + 4) = v7;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2082;
        v24 = v9;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending ring notification for call %s %s to device %{public}s", &buf, 0x20u);
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
        *(buf.__r_.__value_.__r.__words + 4) = v7;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v8;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2082;
        v24 = "NULL";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Sending ring notification for call %s %s to device %{public}s", &buf, 0x20u);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }
    }

    sub_100320340(v4 + 360, &v21);
    sub_1005D4DE0(&v21, v5, &buf);
    v22 = buf;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    v21.__r_.__value_.__s.__data_[0] = 0;
    sub_1000216B4(&v21);
    p_buf = &buf;
    sub_100320338((v4 + 360), &buf);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    v11 = sub_100320368((v4 + 360));
    v12 = SHIBYTE(v22.__r_.__value_.__r.__words[2]);
    v13 = v22.__r_.__value_.__r.__words[0];
    v14 = sub_100320E8C(a2 + 400);
    if (v12 >= 0)
    {
      v15 = &v22;
    }

    else
    {
      v15 = v13;
    }

    v16 = sub_1002106A4(a1, p_buf, v11, v15, v14);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    sub_100022214(&v21);
    if (v16 && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E7DC();
    }

    sub_10002249C(&v21);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1005E2830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005E28B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_10000C7D0(a1, a2);
  if (sub_1004134D8(v2, v3))
  {
    v4 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Reserve Voice Buf", v5, 2u);
    }

    sub_10025822C();
  }
}

_BYTE *sub_1005E2930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_100320A98(a3 + 400))
  {
    v8 = 0;
    sub_1000216B4(&v8);
    sub_1002429D4(a2 + 128);
    sub_10002249C(&v8);
    v5 = 2000;
  }

  else
  {
    v5 = 0;
  }

  if (sub_100320DC4(a3 + 400) == 5)
  {
    v5 = 0;
  }

  v6 = sub_100320F4C(a3 + 400);
  return sub_1005DD01C(v6, a3, v5, 0, v6);
}

_BYTE *sub_1005E29D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_100320E3C(a3 + 400);
    v8 = "ringtones";
    if (v7)
    {
      v8 = "voice-command";
    }

    *__p = 136446210;
    *&__p[4] = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Making sco connection for playing %{public}s", __p, 0xCu);
  }

  if (sub_100320370(a1 + 360) != 1 && (sub_1003203E8(a1 + 360) & 1) == 0 && (sub_100320E3C(a3 + 400) & 1) == 0)
  {
    if (qword_100B50AD0 != -1)
    {
      sub_10084DD00();
    }

    sub_1005D78B8(off_100B50AC8);
  }

  if (*(a2 + 582) == 1 && sub_100320184(a3 + 400))
  {
    v9 = sub_1005D4850(a1, a2);
    v10 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_100320184(a3 + 400);
      sub_1000E5A58(a2, __p);
      if (v17 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = *__p;
      }

      *buf = 67109378;
      v19 = v11;
      v20 = 2082;
      v21 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Sending Audio Input Config:%d for device %{public}s", buf, 0x12u);
      if (v17 < 0)
      {
        operator delete(*__p);
      }
    }

    __p[0] = 0;
    sub_1000216B4(__p);
    v13 = sub_100320184(a3 + 400);
    sub_1002112CC(v9, v13);
    sub_100022214(__p);
    return sub_10002249C(__p);
  }

  else
  {
    v15 = sub_100320F4C(a3 + 400);
    return sub_1005DD01C(v15, a3, 0, 0, v15);
  }
}

void sub_1005E2C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_1005E2C1C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1005D4850(a1, a2);
  if (qword_100B54090 != -1)
  {
    sub_10084E84C();
  }

  v8 = !sub_10038A118(qword_100B54088, a2) && (v7 = sub_100320E5C(a3 + 400), (v7 & 1) == 0) && sub_1005D2A98(v7, a2) == 2;
  if (!sub_100320EFC(a3 + 400) || v8)
  {
    sub_1005D78B8(a1);
  }

  else
  {
    v9 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v10 = v14 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Starting voice command session for device %{public}s", buf, 0xCu);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if ((sub_100320E3C(a3 + 400) & 1) == 0)
    {
      LOBYTE(__p[0]) = 0;
      sub_1000216B4(__p);
      sub_100210908(v6, 1);
      sub_100022214(__p);
      sub_100320E44(a3 + 400, 1);
      sub_10002249C(__p);
    }
  }

  sub_100364158(6);
  v11 = sub_100320F4C(a3 + 400);
  return sub_1005DD01C(v11, a3, 0, 0, v11);
}

void sub_1005E2DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E2DFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v22[0] = 0;
  v22[1] = 0;
  sub_100007F88(v22, a1 + 760);
  v7 = qword_100BCE8F8;
  v8 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    v10 = sub_1005D264C(v8, a3);
    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "RegisterScoChannel codecID: %s\n", buf, 0xCu);
  }

  if (a3 <= 128)
  {
    switch(a3)
    {
      case 2:
        v11 = &unk_100B54BB0;
        v12 = &off_100B54B98;
LABEL_31:
        v8 = sub_100320FB4(a4 + 400);
        if (v8 == 2)
        {
          v11[4] = 28;
          v17 = 1;
        }

        else
        {
          v11[4] = -1;
          v17 = -1;
        }

        *(v11 + 12) = v17;
        goto LABEL_36;
      case 127:
        v11 = &unk_100B54AC0;
        v12 = &off_100B54AA8;
        goto LABEL_36;
      case 128:
        v11 = &unk_100B54B38;
        v12 = &unk_100B54B20;
        goto LABEL_36;
    }

    goto LABEL_16;
  }

  if (a3 > 254)
  {
    if (a3 == 255)
    {
      v11 = &unk_100B54AE8;
      v12 = &unk_100B54AD0;
      goto LABEL_19;
    }

    if (a3 == 256)
    {
      v11 = &unk_100B54B10;
      v12 = &unk_100B54AF8;
      goto LABEL_36;
    }

LABEL_16:
    v11 = &unk_100B54BD8;
    v12 = &unk_100B54BC0;
    goto LABEL_31;
  }

  if (a3 != 129)
  {
    if (a3 == 130)
    {
      v11 = &unk_100B54B88;
      v12 = &unk_100B54B70;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v11 = &unk_100B54B60;
  v12 = &unk_100B54B48;
LABEL_19:
  memset(buf, 0, sizeof(buf));
  v24[0] = 0;
  sub_100007E30(buf, "4-EV5");
  v13 = sub_100320FA4(a4 + 400);
  if ((v13 & 1) == 0)
  {
    *(v12 + 11) = 16064;
    std::string::assign(buf, "2-EV5");
  }

  v14 = qword_100BCE8F8;
  v8 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    v15 = buf;
    if (SHIBYTE(v24[0]) < 0)
    {
      v15 = *buf;
    }

    v16 = "";
    if (!v13)
    {
      v16 = " not";
    }

    *v32 = 136315394;
    v33 = v15;
    v34 = 2080;
    v35 = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Setting up call using %s packets as HDR eSCO is%s supported", v32, 0x16u);
  }

  if (SHIBYTE(v24[0]) < 0)
  {
    operator delete(*buf);
  }

  if ((a3 - 129) >= 2 && a3 != 255)
  {
    goto LABEL_31;
  }

LABEL_36:
  v18 = sub_10000C7D0(v8, v9);
  if (sub_1004106D0(v18, 0xBB8u))
  {
    v31 = 0;
    v30 = 0u;
    memset(v29, 0, sizeof(v29));
    v27 = 0u;
    *__p = 0u;
    v25 = 0u;
    *v26 = 0u;
    *buf = 0u;
    *v24 = 0u;
    sub_1000DE474(&buf[1]);
    BYTE2(v24[0]) = 0;
    BYTE4(v24[0]) = 0;
    BYTE2(v26[0]) = 0;
    BYTE4(v26[0]) = 0;
    DWORD1(v29[1]) = 0;
    v25 = 0uLL;
    v24[1] = 0;
    LOBYTE(v26[0]) = 0;
    v27 = 0uLL;
    v26[1] = 0;
    LOBYTE(__p[0]) = 0;
    memset(v29, 0, 19);
    __p[1] = 0;
    BYTE8(v29[1]) = 1;
    *(&v29[1] + 14) = 0;
    *(&v29[1] + 9) = 0;
    v30 = 0uLL;
    *(&v29[2] + 1) = 0;
    LOBYTE(v31) = 0;
    *(&v31 + 2) = 0;
    if (a2 && a3 == 1 && sub_100536A18(a2, buf) && BYTE5(v31) == 1)
    {
      v19 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Use S1 Config(EV3 packet) for CVSD", v32, 2u);
      }

      *(v12 + 11) |= 0x40u;
      v11[7] |= 0x40u;
    }

    if (SHIBYTE(v29[0]) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26[1]);
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24[1]);
    }

    nullsub_21();
  }

  sub_100320FBC(a4 + 400, a3);
  buf[0] = 0;
  sub_1000216B4(buf);
  v20 = sub_100248400(off_100B00BF0, a2 + 128, a4);
  if (v20 && v20 != 1327 && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084E860();
  }

  if (sub_100248498(v12, v11, a2 + 128))
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E8D0();
    }

    if (sub_100248514(a2 + 128) && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084E940();
    }
  }

  sub_100022214(buf);
  sub_10002249C(buf);
  return sub_1000088CC(v22);
}

void sub_1005E3300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  sub_100320BE8(&__p);
  sub_1000088CC(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E3360(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v5[0] = 0;
  v5[1] = 0;
  sub_100007F88(v5, a1 + 760);
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084E9B0();
  }

  sub_100320278(a1 + 360, v2);
  return sub_1000088CC(v5);
}

uint64_t sub_1005E33F8(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 760);
  v4 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "HFP stream will start", v7, 2u);
  }

  if (sub_1003A42E4(a2))
  {
    sub_10032100C(a2 + 400, 1);
    sub_1005D36A4(a1, a2);
    sub_10069C2E8(a2);
  }

  else
  {
    v5 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Audio device is not valid, not handling streamWillStart", v7, 2u);
    }
  }

  return sub_1000088CC(v8);
}

void sub_1005E34F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E3510(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 760);
  v3 = sub_1003A42E4(a2);
  v4 = qword_100BCE8F8;
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEBUG))
    {
      sub_10084EA24();
      if (a2)
      {
        goto LABEL_4;
      }
    }

    else if (a2)
    {
LABEL_4:
      sub_10069C510(a2);
      return sub_1000088CC(v7);
    }

    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084EA64();
    }
  }

  else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Audio device is not valid, not handling streamAudioAvailable", v6, 2u);
  }

  return sub_1000088CC(v7);
}

void sub_1005E35FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E3618(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 760);
  v3 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stream did stop!", v6, 2u);
  }

  if (sub_1003A42E4(a2))
  {
    if (a2)
    {
      sub_10069B0E8(a2);
      sub_10032100C(a2 + 400, 0);
    }
  }

  else
  {
    v4 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Audio device is not valid, not handling streamDidStop", v6, 2u);
    }
  }

  return sub_1000088CC(v7);
}

void sub_1005E370C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1005E3728(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D999C(a1, a2);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005E37A8;
  v5[3] = &unk_100AE0860;
  v5[4] = a1;
  v5[5] = a2;
  sub_10000CA94(v4, v5);
}

uint64_t sub_1005E37A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9[0] = 0;
  v9[1] = 0;
  sub_100007F88(v9, v2 + 760);
  v3 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stream reset, closing SCO if it wasn't closed", v8, 2u);
  }

  if (sub_1003A42E4(*(a1 + 40)))
  {
    v4 = *(a1 + 40);
    if (v4 && sub_100320D9C(v4 + 400) && sub_100320DC4(*(a1 + 40) + 400))
    {
      v5 = sub_100320D94(*(a1 + 40) + 400);
      sub_1005DCA18(v2, v5, 0, 0);
    }
  }

  else
  {
    v6 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Audio device is not valid, not handling streamDidReset", v8, 2u);
    }
  }

  return sub_1000088CC(v9);
}

void sub_1005E38C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E38E8(uint64_t a1, uint64_t a2, float a3)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 760);
  if (sub_1003A42E4(a2))
  {
    if (a2)
    {
      v5 = sub_100320D94(a2 + 400);
      v6 = sub_100320D9C(a2 + 400);
      if (v6 && sub_1000E00E4(v6) == 1)
      {
        v7 = roundf(a3 * 15.0);
      }

      else
      {
        v7 = a3 * 15.0;
      }

      v12 = sub_100320DE4(a2 + 400);
      v13 = qword_100BCE8F8;
      v14 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
      if (v12 == v7)
      {
        if (v14)
        {
          *buf = 67109120;
          v18 = v7;
          v9 = "Speaker volume is a duplicate value %d, not sending to external device";
          v10 = v13;
          v11 = 8;
          goto LABEL_12;
        }
      }

      else
      {
        if (v14)
        {
          *buf = 67109120;
          v18 = v7;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Volume did update to %d", buf, 8u);
        }

        buf[0] = 0;
        sub_1000216B4(buf);
        sub_10020FC20(v5, v7);
        sub_100022214(buf);
        sub_100320DEC(a2 + 400, v7);
        sub_10002249C(buf);
      }
    }

    else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084EAA0();
    }
  }

  else
  {
    v8 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Audio device is not valid, not handling volumeDidUpdate";
      v10 = v8;
      v11 = 2;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  return sub_1000088CC(v16);
}

uint64_t sub_1005E3B48(uint64_t a1, uint64_t a2, float a3)
{
  v16[0] = 0;
  v16[1] = 0;
  sub_100007F88(v16, a1 + 760);
  if (sub_1003A42E4(a2))
  {
    if (a2)
    {
      v5 = sub_100320D94(a2 + 400);
      v6 = sub_100320D9C(a2 + 400);
      if (v6 && sub_1000E00E4(v6) == 1)
      {
        v7 = roundf(a3 * 15.0);
      }

      else
      {
        v7 = a3 * 15.0;
      }

      v12 = sub_100320DD4(a2 + 400);
      v13 = qword_100BCE8F8;
      v14 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
      if (v12 == v7)
      {
        if (v14)
        {
          *buf = 67109120;
          v18 = v7;
          v9 = "Input volume is a duplicate value %d, not sending to external device";
          v10 = v13;
          v11 = 8;
          goto LABEL_12;
        }
      }

      else
      {
        if (v14)
        {
          *buf = 67109120;
          v18 = v7;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Input volume did update to %d", buf, 8u);
        }

        buf[0] = 0;
        sub_1000216B4(buf);
        sub_10020FB48(v5, v7);
        sub_100022214(buf);
        sub_100320DDC(a2 + 400, v7);
        sub_10002249C(buf);
      }
    }

    else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084EAA0();
    }
  }

  else
  {
    v8 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "Audio device is not valid, not handling inputVolumeDidUpdate";
      v10 = v8;
      v11 = 2;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  return sub_1000088CC(v16);
}

void sub_1005E3DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SCO sample Rate updated to %d ", v8, 8u);
  }

  if (sub_1003A42E4(a2))
  {
    (*(*a1 + 264))(a1, a2, a3, 0, 0);
  }

  else
  {
    v7 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Audio device is not valid, not handling scoSampleRateDidUpdate", v8, 2u);
    }
  }
}

void sub_1005E3EF8(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_1000D999C(a1, a2);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005E3F88;
  v7[3] = &unk_100AEAF08;
  v7[4] = a1;
  v7[5] = a2;
  v8 = a3;
  sub_10000CA94(v6, v7);
}

uint64_t sub_1005E3F88(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12[0] = 0;
  v12[1] = 0;
  sub_100007F88(v12, v2 + 760);
  if (sub_1003A42E4(*(a1 + 40)))
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = sub_100320D9C(v3 + 400);
      if (v4)
      {
        v5 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(a1 + 48);
          sub_1000E5A58(v4, __p);
          if (v11 >= 0)
          {
            v7 = __p;
          }

          else
          {
            v7 = __p[0];
          }

          *buf = 67109378;
          v14 = v6;
          v15 = 2082;
          v16 = v7;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting allowScoForTBT to %d for device %{public}s", buf, 0x12u);
          if (v11 < 0)
          {
            operator delete(__p[0]);
          }
        }

        sub_10054288C(v4, *(a1 + 48));
      }
    }
  }

  else
  {
    v8 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Audio device is not valid, not handling allowSCOForTBTDidUpdate", __p, 2u);
    }
  }

  return sub_1000088CC(v12);
}

void sub_1005E4110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1005E413C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_100320D94(a2 + 400);
  v6 = v5;
  v8 = sub_1000D999C(v5, v7);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005E41D8;
  v9[3] = &unk_100AF5948;
  v9[4] = a1;
  v10 = v6;
  v11 = a3;
  sub_10000CA94(v8, v9);
}

uint64_t sub_1005E41D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v33[0] = 0;
  v33[1] = 0;
  sub_100007F88(v33, v2 + 760);
  v3 = sub_1005D0048(v2, *(a1 + 40));
  v4 = v3;
  if (v3)
  {
    v5 = sub_100320D9C(v3 + 400);
    if (sub_1000E2140(v5, 0xCu))
    {
      v6 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000E5A58(v5, v38);
        if (v40 >= 0)
        {
          v7 = v38;
        }

        else
        {
          v7 = *v38;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
        *(buf.__r_.__value_.__r.__words + 4) = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Received expanseInA2DP for Apple audio device %{public}s", &buf, 0xCu);
        if (SHIBYTE(v40) < 0)
        {
          operator delete(*v38);
        }
      }
    }

    else
    {
      v8 = sub_1003208E8(v2 + 360);
      sub_1003208A0(v2 + 360, *(a1 + 42));
      v9 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 42);
        *v38 = 67109376;
        *&v38[4] = v8;
        LOWORD(v39) = 1024;
        *(&v39 + 2) = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Expanse in A2DP state changed from %d to %d", v38, 0xEu);
      }

      v11 = *(a1 + 42);
      v12 = qword_100BCE8F8;
      v13 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
      if (v11 == 1)
      {
        if (v13)
        {
          sub_1000E5A58(v5, v38);
          v14 = v40 >= 0 ? v38 : *v38;
          LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
          *(buf.__r_.__value_.__r.__words + 4) = v14;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Setting IsInExpanseOverA2DP to true for device %{public}s", &buf, 0xCu);
          if (SHIBYTE(v40) < 0)
          {
            operator delete(*v38);
          }
        }

        sub_1000D6C30(v4 + 400, 1);
        *v38 = 0;
        v39 = 0;
        v40 = 0;
        sub_1000DA2A8(v38);
        if (qword_100B54080 != -1)
        {
          sub_10084CD0C();
        }

        sub_1006FCE2C(off_100B54078);
        v15 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000D6D88(v38, &buf);
          v16 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
          LODWORD(v34.__r_.__value_.__l.__data_) = 136315138;
          *(v34.__r_.__value_.__r.__words + 4) = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Current Call(s) in expanse: %s", &v34, 0xCu);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        sub_1000DA9C4(v32, v38);
        sub_100320930(v2 + 360, v32);
        buf.__r_.__value_.__r.__words[0] = v32;
        sub_1000D6BD4(&buf);
        for (i = *v38; i != v39; i += 104)
        {
          if (*(i + 4) == 1)
          {
            v28 = qword_100BCE8F8;
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Update overall call(s) status after a current active call has entered expanse", &buf, 2u);
            }

            memset(&buf, 0, sizeof(buf));
            sub_1000DA2A8(&buf);
            if (qword_100B54080 != -1)
            {
              sub_10084CD0C();
            }

            sub_1000D895C(off_100B54078);
            *&v34.__r_.__value_.__l.__data_ = 0uLL;
            v29 = [[NSUUID alloc] initWithUUIDBytes:&v34];
            sub_1000D7348(v2, &buf, v29);

            goto LABEL_67;
          }
        }
      }

      else
      {
        if (v13)
        {
          sub_1000E5A58(v5, v38);
          v18 = v40 >= 0 ? v38 : *v38;
          LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
          *(buf.__r_.__value_.__r.__words + 4) = v18;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Setting IsInExpanseOverA2DP to false for device %{public}s", &buf, 0xCu);
          if (SHIBYTE(v40) < 0)
          {
            operator delete(*v38);
          }
        }

        sub_1000D6C30(v4 + 400, 0);
        *v38 = 0;
        v39 = 0;
        v40 = 0;
        sub_1000DA2A8(v38);
        if (qword_100B54080 != -1)
        {
          sub_10084CD0C();
        }

        sub_1000D895C(off_100B54078);
        memset(&buf, 0, sizeof(buf));
        sub_1000DAA8C(v2 + 360, &buf);
        v19 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000D6D88(&buf, &v34);
          if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = &v34;
          }

          else
          {
            v20 = v34.__r_.__value_.__r.__words[0];
          }

          *v35 = 136315138;
          v36 = v20;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Call(s) in A2DP expanse: %s", v35, 0xCu);
          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34.__r_.__value_.__l.__data_);
          }

          v19 = qword_100BCE8F8;
        }

        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          sub_1000D6D88(v38, &v34);
          v21 = (v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v34 : v34.__r_.__value_.__r.__words[0];
          *v35 = 136315138;
          v36 = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Current Call(s): %s", v35, 0xCu);
          if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v34.__r_.__value_.__l.__data_);
          }
        }

        v22 = buf.__r_.__value_.__r.__words[0];
        if (buf.__r_.__value_.__r.__words[0] == buf.__r_.__value_.__l.__size_)
        {
          v25 = 1;
        }

        else
        {
          do
          {
            v23 = *v22;
            v24 = sub_1000D8B24(v38, v23);

            v25 = v39 == v24;
            if (v39 != v24)
            {
              break;
            }

            v22 += 13;
          }

          while (v22 != buf.__r_.__value_.__l.__size_);
        }

        sub_1006EEE70(&buf);
        sub_1000DA9C4(v31, &buf);
        sub_100320930(v2 + 360, v31);
        v34.__r_.__value_.__r.__words[0] = v31;
        sub_1000D6BD4(&v34);
        if (!v25)
        {
          v26 = qword_100BCE8F8;
          if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v34.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Update overall call(s) status since a current active call has exited expanse", &v34, 2u);
          }

          *&v34.__r_.__value_.__l.__data_ = 0uLL;
          v27 = [[NSUUID alloc] initWithUUIDBytes:&v34];
          sub_1000D7348(v2, v38, v27);
        }

LABEL_67:
        v34.__r_.__value_.__r.__words[0] = &buf;
        sub_1000D6BD4(&v34);
      }

      buf.__r_.__value_.__r.__words[0] = v38;
      sub_1000D6BD4(&buf);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084EADC();
  }

  return sub_1000088CC(v33);
}

void sub_1005E48A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void ***a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  a17 = &a23;
  sub_1000D6BD4(&a17);
  a23 = (v24 - 96);
  sub_1000D6BD4(&a23);
  sub_1000088CC(&a15);
  _Unwind_Resume(a1);
}

void sub_1005E4980(uint64_t a1, uint64_t a2, int a3)
{
  v4 = qword_100BCE8F8;
  v5 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (!v5)
    {
      return;
    }

    v9 = 0;
    v6 = "Call Screening Property is set.";
    v7 = &v9;
  }

  else
  {
    if (!v5)
    {
      return;
    }

    v8 = 0;
    v6 = "Call Screening Property is cleared.";
    v7 = &v8;
  }

  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
}

void sub_1005E4A14()
{
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084EB50();
  }
}

_BYTE *sub_1005E4A5C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100320D9C(a2 + 400);
  v4 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(v3, __p);
    if (v9 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Transitioning HFP audio to unidirectional for device %{public}s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = sub_100320D94(a2 + 400);
  LOBYTE(__p[0]) = 0;
  sub_1000216B4(__p);
  sub_10021181C(v6);
  return sub_10002249C(__p);
}

void sub_1005E4B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10002249C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E4B8C(uint64_t result, uint64_t a2, int a3)
{
  if (a2)
  {
    v5 = result;
    result = _os_feature_enabled_impl();
    if ((result & 1) != 0 || (result = _os_feature_enabled_impl(), result))
    {
      v7 = sub_10000C798(result, v6);
      result = (*(*v7 + 248))(v7);
      if (result)
      {
        result = sub_1000E2140(a2, 0x31u);
        if (result)
        {
          v8 = qword_100BCE8F8;
          if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
          {
            v9 = "off";
            if (a3)
            {
              v9 = "on";
            }

            *buf = 136315138;
            *&buf[4] = v9;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Notify AAoS is %s", buf, 0xCu);
          }

          *buf = 0uLL;
          sub_100007F88(buf, v5 + 760);
          v10 = sub_1005D09A8(v5, a2);
          v11 = v10;
          if (v10)
          {
            sub_1003211F0(v10 + 400, a3);
            if ((a3 & 1) == 0)
            {
              if (sub_1003211E8(v11 + 400))
              {
                v12 = sub_1003211E0(v11 + 400, 0);
                v14 = sub_1000D999C(v12, v13);
                v15[0] = _NSConcreteStackBlock;
                v15[1] = 3221225472;
                v15[2] = sub_1005E4D8C;
                v15[3] = &unk_100AE0860;
                v15[4] = v5;
                v15[5] = a2;
                sub_10000CA94(v14, v15);
              }
            }
          }

          return sub_1000088CC(buf);
        }
      }
    }
  }

  return result;
}

void sub_1005E4D98(uint64_t a1, uint64_t a2, int a3)
{
  sub_100320F64(a2 + 400, a3);
  v4 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "HandsfreeGateway setAudioTransport to advanced sniff %d", v5, 8u);
  }
}

void sub_1005E4E4C(uint64_t a1, uint64_t a2, int a3)
{
  if (_os_feature_enabled_impl())
  {
    sub_100320F6C(a2 + 400, a3);
    v5 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "HandsfreeGateway setAudioInputConfig to %d", v6, 8u);
    }
  }
}

void sub_1005E4F1C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5 = a5;
  v7 = a3;
  v10 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    v28 = a4;
    v29 = 1024;
    *v30 = v5;
    *&v30[4] = 1024;
    *&v30[6] = sub_100320F4C(a2 + 400);
    *v31 = 1024;
    *&v31[2] = sub_100320F5C(a2 + 400);
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setAudioCodec updateStereoCodec %d, inputCodecID %d callcodec %d AoS %d", buf, 0x1Au);
  }

  if (a2)
  {
    v11 = sub_100320D9C(a2 + 400);
    if (v11)
    {
      v12 = v11;
      v13 = v5;
      if ((a4 & 1) == 0)
      {
        v13 = sub_100320F4C(a2 + 400);
      }

      if (v7 == 48000 && v13 == 130)
      {
        v14 = 0;
        v15 = 130;
      }

      else if (v7 == 48000 && v13 == 129)
      {
        v14 = 0;
        v15 = 129;
      }

      else if (v7 == 48000 && v13 == 255)
      {
        v14 = 0;
        v15 = 255;
      }

      else if (v7 == 24000 && v13 == 128)
      {
        v14 = 0;
        v15 = 128;
      }

      else
      {
        v16 = sub_1005D09A8(a1, v12);
        if (v16 && (v17 = sub_100320EDC(v16 + 400), v7 == 24000) && (v17 & 1) != 0)
        {
          v14 = 0;
          v15 = 127;
        }

        else
        {
          v18 = sub_1005D2D34(a1, v12);
          if (v7 == 24000 && (v18 & 1) != 0)
          {
            v14 = 0;
            v15 = 256;
          }

          else
          {
            v19 = sub_1005D2CFC(a1, v12);
            if (v7 == 16000 && (v19 & 1) != 0)
            {
              v14 = 0;
              v15 = 2;
            }

            else if (v7 == 8000)
            {
              v14 = 0;
              v15 = 1;
            }

            else
            {
              if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
              {
                sub_10084EB8C();
              }

              v15 = 0;
              v14 = 1;
            }
          }
        }
      }

      if (v5 || (a4 & 1) != 0 || (v20 = sub_100320F5C(a2 + 400), v7 != 48000) || !v20)
      {
        if (v14)
        {
          v15 = 0;
          goto LABEL_46;
        }
      }

      else
      {
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
        {
          sub_10084EC00();
        }

        v15 = 130;
      }

      sub_100320F54(a2 + 400, v15);
LABEL_46:
      v21 = qword_100BCE8F8;
      v22 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
      if (v22)
      {
        v23 = sub_1005D264C(v22, v15);
        sub_1000C23E0(v12, __p);
        if (v26 >= 0)
        {
          v24 = __p;
        }

        else
        {
          v24 = __p[0];
        }

        *buf = 67110147;
        v28 = v13;
        v29 = 2080;
        *v30 = v23;
        *&v30[8] = 1024;
        *v31 = v7;
        *&v31[4] = 2160;
        v32 = 1752392040;
        v33 = 2081;
        v34 = v24;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "setAudioCodec stereoCodecID %d, new codec %s sampleRate %d for device %{private, mask.hash}s", buf, 0x2Cu);
        if (v26 < 0)
        {
          operator delete(__p[0]);
        }
      }

      return;
    }
  }

  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084EC3C();
  }
}

void sub_1005E52CC(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_100320D9C(a2 + 400);
  v7 = qword_100BCE8F8;
  if (a3 > 1935827570)
  {
    if (a3 == 1935827571)
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000C23E0(v6, &__p);
        if (SBYTE3(v28) >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        *v20 = 141558275;
        *&v20[4] = 1752392040;
        v21 = 2081;
        v22 = p_p;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sco data source selected for baseband to PCM for device %{private, mask.hash}s", v20, 0x16u);
        if (SBYTE3(v28) < 0)
        {
          operator delete(__p);
        }

        v7 = qword_100BCE8F8;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Highland Park I2S to PCM route selected. Forcing CVSD.", &__p, 2u);
      }

      v12 = 1;
      v8 = sub_100320F54(a2 + 400, 1);
      v11 = 3;
      goto LABEL_44;
    }

    if (a3 == 1936221033)
    {
      v8 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        sub_1000C23E0(v6, &__p);
        v13 = SBYTE3(v28) >= 0 ? &__p : __p;
        *v20 = 141558275;
        *&v20[4] = 1752392040;
        v21 = 2081;
        v22 = v13;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sco data source selected for HCI for device %{private, mask.hash}s", v20, 0x16u);
        if (SBYTE3(v28) < 0)
        {
          operator delete(__p);
        }
      }

      v11 = 2;
      v12 = 2;
      goto LABEL_44;
    }
  }

  else
  {
    if (a3 == 1935765619)
    {
      v8 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        sub_1000C23E0(v6, &__p);
        v15 = SBYTE3(v28) >= 0 ? &__p : __p;
        *v20 = 141558275;
        *&v20[4] = 1752392040;
        v21 = 2081;
        v22 = v15;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sco data source selected for AP I2S 8kHz for device %{private, mask.hash}s", v20, 0x16u);
        if (SBYTE3(v28) < 0)
        {
          operator delete(__p);
        }
      }

      v11 = 3;
      v12 = 3;
      goto LABEL_44;
    }

    if (a3 == 1935765620)
    {
      v8 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        sub_1000C23E0(v6, &__p);
        if (SBYTE3(v28) >= 0)
        {
          v10 = &__p;
        }

        else
        {
          v10 = __p;
        }

        *v20 = 141558275;
        *&v20[4] = 1752392040;
        v21 = 2081;
        v22 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sco data source selected for AP I2S 16kHz for device %{private, mask.hash}s", v20, 0x16u);
        if (SBYTE3(v28) < 0)
        {
          operator delete(__p);
        }
      }

      v11 = 4;
      v12 = 4;
LABEL_44:
      v17 = sub_10000C7D0(v8, v9);
      sub_100413390(v17, v6, v12);
      sub_100320FAC(a2 + 400, v11);
      v18 = sub_100320F4C(a2 + 400);
      sub_1005E2DFC(a1, v6, v18, a2);
      return;
    }
  }

  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_1000C23E0(v6, &__p);
    if (SBYTE3(v28) >= 0)
    {
      v19 = &__p;
    }

    else
    {
      v19 = __p;
    }

    *v20 = 141558275;
    *&v20[4] = 1752392040;
    v21 = 2081;
    v22 = v19;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Unknown SCO data source selected for device %{private, mask.hash}s", v20, 0x16u);
    if (SBYTE3(v28) < 0)
    {
      operator delete(__p);
    }

    v7 = qword_100BCE8F8;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000C23E0(v6, v20);
    v14 = v23 >= 0 ? v20 : *v20;
    LODWORD(__p) = 67109635;
    HIDWORD(__p) = a3;
    v25 = 2160;
    v26 = 1752392040;
    v27 = 2081;
    v28 = v14;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Sco route and audio channel not set because an unknown datasource of %d selected for device %{private, mask.hash}s", &__p, 0x1Cu);
    if (v23 < 0)
    {
      operator delete(*v20);
    }
  }
}

void sub_1005E5794(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v9 = sub_100320D94(a2 + 400);
  v10 = v9;
  v12 = sub_1000D999C(v9, v11);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1005E5844;
  v13[3] = &unk_100B00C18;
  v13[4] = a1;
  v17 = v10;
  v14 = a4;
  v15 = a5;
  v16 = a3;
  sub_10000CA94(v12, v13);
}

uint64_t sub_1005E5844(uint64_t a1)
{
  v2 = *(a1 + 32);
  v30[0] = 0;
  v30[1] = 0;
  sub_100007F88(v30, v2 + 760);
  v3 = sub_1005D0048(v2, *(a1 + 52));
  v4 = v3;
  if (!v3)
  {
    v14 = qword_100BCE8F8;
    if (!os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      return sub_1000088CC(v30);
    }

    v15 = *(a1 + 52);
    *buf = 67109120;
    *&buf[4] = v15;
    v16 = "No AudioDevice found for handle %d, not handling selectScoDataSource";
    v17 = v14;
    v18 = 8;
LABEL_8:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    return sub_1000088CC(v30);
  }

  v5 = sub_100320D9C(v3 + 400);
  if (!v5)
  {
    return sub_1000088CC(v30);
  }

  v6 = *(a1 + 40);
  if (!v6)
  {
    v19 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v5, buf);
      v20 = (SBYTE7(v40) & 0x80u) == 0 ? buf : *buf;
      *v31 = 136446210;
      v32 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sco route is disabled for device %{public}s", v31, 0xCu);
      if (SBYTE7(v40) < 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_100320DC4(v4 + 400))
    {
      v21 = sub_100320D94(v4 + 400);
      sub_1005DCA18(v2, v21, 0, 116);
      return sub_1000088CC(v30);
    }

    v26 = qword_100BCE8F8;
    if (!os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      return sub_1000088CC(v30);
    }

    *buf = 0;
    v16 = "already disconnected no need disconnect audio";
    v17 = v26;
    v18 = 2;
    goto LABEL_8;
  }

  sub_10032117C(v4 + 400, v6);
  v7 = sub_100320D94(v4 + 400);
  v29 = 0;
  sub_1000216B4(&v29);
  v8 = sub_100248E88(0);
  v9 = sub_100216A60(v7);
  v10 = sub_1002168F8(v7);
  sub_100022214(&v29);
  v41 = 0;
  *buf = 0u;
  v40 = 0u;
  v11 = *(a1 + 44);
  v12 = sub_1005D09A8(v2, v5);
  if (v12)
  {
    v13 = sub_100320EAC(v12 + 400);
  }

  else
  {
    v13 = 0;
  }

  sub_1005E5CEC(v11, v13, buf);
  if (v9)
  {
    *v31 = sub_100320F4C(v4 + 400);
    v22 = sub_1005EB1F4(buf, v31) == 0;
  }

  else
  {
    v22 = 0;
  }

  if (v8 || v22 || v10 == 4)
  {
    v23 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000C23E0(v5, __p);
      if (v28 >= 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      *v31 = 136446978;
      v32 = v24;
      v33 = 1024;
      v34 = v8;
      v35 = 1024;
      v36 = v22;
      v37 = 1024;
      v38 = v10 == 4;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Deferring route change to %{public}s, will retry when disconnect stack event fires - possibleSCOActivity:%d sampleRateChangedWhileScoWasOpen:%d isHandsfreeAoSDisconnecting:%d", v31, 0x1Eu);
      if (v28 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_100320408(v2 + 360, *(a1 + 48), *(a1 + 40), *(a1 + 44), v7);
  }

  (*(*v2 + 144))(v2, v4, *(a1 + 48), *(a1 + 40), *(a1 + 44));
  sub_1001392B8(buf);
  sub_10002249C(&v29);
  return sub_1000088CC(v30);
}

void sub_1005E5C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  sub_1001392B8(&a22);
  sub_10002249C(&a15);
  sub_1000088CC(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E5CEC@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  if (a1 <= 23999)
  {
    if (a1 == 8000)
    {
      LODWORD(v8) = 1;
LABEL_19:
      v4 = a3;
      v5 = 1;
      return sub_1005EB2A8(v4, &v8, v5);
    }

    if (a1 != 16000)
    {
      goto LABEL_14;
    }

    v6 = 2;
LABEL_18:
    LODWORD(v8) = v6;
    goto LABEL_19;
  }

  if (a1 == 24000)
  {
    if (a2)
    {
      v6 = 128;
    }

    else
    {
      v6 = 256;
    }

    goto LABEL_18;
  }

  if (a1 == 32000)
  {
    v6 = 127;
    goto LABEL_18;
  }

  if (a1 != 48000)
  {
LABEL_14:
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084EC78();
    }

    goto LABEL_16;
  }

  if (!a2)
  {
LABEL_16:
    LODWORD(v8) = 0;
    goto LABEL_19;
  }

  v8 = 0x8200000081;
  v4 = a3;
  v5 = 2;
  return sub_1005EB2A8(v4, &v8, v5);
}

uint64_t sub_1005E5E28(uint64_t a1, uint64_t a2)
{
  result = 24000;
  if (a2 > 128)
  {
    if ((a2 - 129) < 2 || a2 == 255)
    {
      return 48000;
    }

    if (a2 == 256)
    {
      return result;
    }
  }

  else
  {
    if ((a2 - 127) < 2)
    {
      return result;
    }

    if (a2 == 1)
    {
      return 8000;
    }

    if (a2 == 2)
    {
      return 16000;
    }
  }

  result = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_10084ECE8();
    return 0;
  }

  return result;
}

uint64_t sub_1005E5ED8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v20[0] = 0;
  v20[1] = 0;
  sub_100007F88(v20, a1 + 760);
  if (sub_1003A42E4(a2))
  {
    if (a2)
    {
      v10 = sub_100320D9C(a2 + 400);
    }

    else
    {
      v10 = 0;
    }

    v19 = 0;
    v12 = sub_1000216B4(&v19);
    sub_1005E28B8(v12, v13);
    sub_100022214(&v19);
    (*(*a1 + 264))(a1, a2, a5, 0, 0);
    (*(*a1 + 288))(a1, a2, a3);
    switch(a4)
    {
      case 1918989668:
        v17 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v22 = a5;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sco route reason is kBluetoothAudioDeviceSCOEnableReasonAudioIO:%d", buf, 8u);
        }

        sub_1005E29D0(a1, v10, a2);
        break;
      case 1919115628:
        v15 = qword_100BCE8F8;
        v16 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
        if (v16)
        {
          *buf = 67109120;
          v22 = a5;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sco route reason is kBluetoothAudioDeviceSCOEnableReasonCall:%d", buf, 8u);
        }

        sub_1005E2930(v16, v10, a2);
        break;
      case 1920364387:
        v14 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v22 = a5;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Sco route reason is kBluetoothAudioDeviceSCOEnableReasonVoiceCommand:%d", buf, 8u);
        }

        sub_1005E2C1C(a1, v10, a2);
        break;
    }

    sub_10002249C(&v19);
  }

  else
  {
    v11 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Audio device is not valid, not setting sco data source", buf, 2u);
    }
  }

  return sub_1000088CC(v20);
}

void sub_1005E61BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E61F8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005D09A8(a1, a2);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v9 = 0;
  if (qword_100B50950 != -1)
  {
    sub_10084C8CC();
  }

  v5 = sub_10033C1E4(off_100B50948, a2, &v9 + 1, &v9);
  sub_1003A35C4(v4, BYTE4(v9), v9);
  v8 = 3;
  if (qword_100B50950 != -1)
  {
    sub_10084C87C();
  }

  sub_10033C47C(off_100B50948, a2, &v8);
  sub_1003A35D4(v4, v8);
  v6 = sub_1000E3314(a2);
  sub_1003A35E4(v4, v6);
  return v5;
}

uint64_t sub_1005E62DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005D09A8(a1, a2);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = sub_1000E3284(a2);
  sub_1003A3614(v4, v5);
  return 0;
}

uint64_t sub_1005E6328(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005D09A8(a1, a2);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  if (qword_100B50950 != -1)
  {
    sub_10084C8CC();
  }

  v5 = sub_10033C0B8(off_100B50948, a2);
  sub_1003A359C(v4, v5);
  return 0;
}

uint64_t sub_1005E6394(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sub_1005D09A8(a1, a2);
  if (!v4)
  {
    return 1;
  }

  sub_1003A35F4(v4, a3);
  return 0;
}

uint64_t sub_1005E63D0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005D09A8(a1, a2);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = sub_10054B04C(a2);
  sub_1003A3BF4(v4, v5);
  return 0;
}

uint64_t sub_1005E641C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1005D09A8(a1, a2);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = sub_1005493C4(a2);
  sub_1003A3950(v4, v5);
  return 0;
}

uint64_t sub_1005E6468(uint64_t a1, int *a2, _WORD *a3, _WORD *a4)
{
  v4 = sub_100216DD0(a2, 8u, a3, a4, 0);
  if (v4 && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084ED58();
  }

  return v4;
}

_BYTE *sub_1005E64C8(os_unfair_lock_s *a1, uint64_t a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v8 = sub_1005D492C(a1, *a4);
  if (v8)
  {
    sub_1005D3DD0(a1, v8, *a4);
  }

  v10 = 0;
  sub_1000216B4(&v10);
  sub_100211CE8(a2, *a3, *a4);
  return sub_10002249C(&v10);
}

uint64_t sub_1005E6558(uint64_t a1, uint64_t a2, unint64_t a3, __int16 *a4, unsigned __int16 *a5, int a6)
{
  v27 = 0;
  v26 = 0;
  *&__src[3] = 33621253;
  *__src = 84082945;
  *&v24[3] = 0;
  *v24 = 0;
  v11 = sub_100216DC0();
  sub_1002123A0(*a5, &v26);
  sub_100212428(*a5, __src, 7u);
  sub_1002123B8(*a5, v24, 7u);
  sub_100212478(*a5, &v27);
  if (qword_100B54090 != -1)
  {
    sub_10084D27C();
  }

  v12 = sub_100389744(qword_100B54088, a3);
  sub_10057C6D0(a2, 3);
  sub_10057C6D0(a2, 2);
  sub_10057C70C(a2, 104);
  sub_10057C6D0(a2, 16);
  sub_10057C6D0(a2, 4);
  sub_10057C75C(a2, v26);
  sub_10057C6D0(a2, 18);
  sub_10057C6D0(a2, 7);
  sub_10057C6B8(a2, __src, 7);
  sub_10057C6D0(a2, 19);
  sub_10057C6D0(a2, 7);
  sub_10057C6B8(a2, v24, 7);
  sub_10057C6D0(a2, 21);
  sub_10057C6D0(a2, 2);
  sub_10057C70C(a2, v27);
  sub_10057C6D0(a2, 27);
  sub_10057C6D0(a2, 2);
  if (v12)
  {
    v13 = 15;
  }

  else
  {
    v13 = 7;
  }

  sub_10057C70C(a2, v13);
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v14 = sub_1000C0D40(*a4, &v21, &v23, &v22);
  if (v14)
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084ED94();
    }
  }

  else
  {
    sub_10057C6D0(a2, 1);
    sub_10057C6D0(a2, 7);
    sub_10057C70C(a2, *a4);
    sub_10057C70C(a2, v21);
    sub_10057C70C(a2, v23);
    sub_10057C6D0(a2, v22);
  }

  sub_10057C6D0(a2, 26);
  sub_10057C6D0(a2, 6);
  sub_10057C6D0(a2, 8);
  sub_10057C6D0(a2, 1);
  sub_10057C6D0(a2, 255);
  sub_10057C6D0(a2, 0);
  sub_10057C70C(a2, v11);
  if (a6)
  {
    v20 = 0;
    v19 = 0;
    v18 = 0;
    v15 = sub_100308E80(a3 + 128);
    v16 = v15;
    v14 = sub_1000C0D40(v15, &v18, &v20, &v19);
    if (v14)
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084EDD0();
      }
    }

    else
    {
      sub_10057C6D0(a2, 28);
      sub_10057C6D0(a2, 7);
      sub_10057C70C(a2, v16);
      sub_10057C70C(a2, v18);
      sub_10057C70C(a2, v20);
      sub_10057C6D0(a2, v19);
    }
  }

  return v14;
}

uint64_t sub_1005E68C0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned __int16 *a5, _BYTE *a6, _BYTE *a7, _BYTE *a8)
{
  v48[0] = 0;
  v48[1] = 0;
  sub_100007F88(v48, a1 + 760);
  v9 = sub_10000C5E0(a2 + 8) - *(a2 + 24);
  *(v47 + 3) = 0;
  v47[0] = 0;
  v46 = 0;
  *a8 = 0;
  if (v9 >= 1)
  {
    v10 = 0;
    while (1)
    {
      v11 = sub_10057C548(a2);
      if (v11 < 0)
      {
        v12 = sub_10057C598(a2);
        v13 = -3;
      }

      else
      {
        v12 = sub_10057C548(a2);
        v13 = -2;
      }

      v14 = v11 & 0x7F;
      if (v14 > 0x16)
      {
        if ((v11 & 0x7Fu) > 0x19)
        {
          if (v14 == 26)
          {
            v16 = v12;
            if (v12 >= 6)
            {
              v23 = sub_10057C548(a2);
              v24 = sub_10057C548(a2);
              v25 = sub_10057C548(a2);
              sub_10057C548(a2);
              v26 = sub_10057C598(a2);
              buf[0] = 0;
              sub_1000216B4(buf);
              v10 = sub_1002F5018(a4, v23, v26, v25, v24);
              sub_100022214(buf);
              sub_10002249C(buf);
              v16 = v12 - 6;
            }

            goto LABEL_58;
          }

          if (v14 == 27)
          {
            v16 = v12 - 8;
            if (v12 < 8)
            {
              goto LABEL_57;
            }

            sub_10057C598(a2);
            sub_10057C598(a2);
            sub_10057C598(a2);
            v28 = sub_10057C598(a2);
            *(a3 + 582) = (v28 & 0x8000) != 0;
            v29 = qword_100BCE8F8;
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
            {
              v30 = "not supported";
              if (v28 < 0)
              {
                v30 = "supported";
              }

              *buf = 136446210;
              *&buf[4] = v30;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "FC XAPL Feature: Audio Input Config is %{public}s", buf, 0xCu);
            }

            *(a3 + 580) = 257;
            goto LABEL_58;
          }

          if (v14 != 28)
          {
LABEL_55:
            v31 = qword_100BCE8F8;
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *&buf[4] = v11 & 0x7F;
              _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "parseHFPDescriptor Key not recognized %d", buf, 8u);
            }

            goto LABEL_57;
          }

          v16 = v12 - 7;
          if (v12 < 7)
          {
            goto LABEL_57;
          }

          v17 = sub_10057C598(a2);
          sub_10057C598(a2);
          v18 = sub_10057C598(a2);
          sub_10057C548(a2);
          *buf = 0;
          v43 = 0;
          sub_1000216B4(&v43);
          v19 = sub_100308E80(a3 + 128);
          if (sub_1000ABC7C(v19, buf) || !sub_1000B12AC(*buf))
          {
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
            {
              sub_10084EE40(&v41, v42);
            }

            v10 = 114;
          }

          else
          {
            *(sub_1000B12AC(*buf) + 8) = v17;
            *(sub_1000B12AC(*buf) + 32) = v18;
          }

          v33 = &v43;
LABEL_71:
          sub_10002249C(v33);
          goto LABEL_58;
        }

        switch(v14)
        {
          case 0x17u:
            if (v12 != 1)
            {
              goto LABEL_57;
            }

            *a7 = sub_10057C548(a2);
            break;
          case 0x18u:
            v16 = v12 - 7;
            if (v12 >= 7)
            {
              sub_10057C50C(a2, v47, 7uLL);
              buf[0] = 0;
              sub_1000216B4(buf);
              sub_1002121F8(*a5, v47, 7u);
              sub_100022214(buf);
              goto LABEL_67;
            }

LABEL_57:
            v16 = v12;
LABEL_58:
            if (v16)
            {
              v32 = qword_100BCE8F8;
              if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109632;
                *&buf[4] = v14;
                *&buf[8] = 1024;
                *&buf[10] = v16;
                v50 = 1024;
                v51 = v12;
                _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "parseHFPDescriptor Key:%d Dumped %d of %d bytes ", buf, 0x14u);
              }

              sub_10057C660(a2, v16);
            }

            break;
          case 0x19u:
            if (v12 != 1)
            {
              goto LABEL_57;
            }

            sub_10057C548(a2);
            *a8 = 1;
            break;
          default:
            goto LABEL_55;
        }
      }

      else if ((v11 & 0x7Fu) > 0x10)
      {
        if (v14 == 17)
        {
          v22 = sub_100007618(v12, 0x100004077774924uLL);
          if (!v22)
          {
            goto LABEL_57;
          }

          sub_10057C50C(a2, v22, v12);
          buf[0] = 0;
          sub_1000216B4(buf);
          sub_100211EA4(*a5, v22, v12);
          sub_100022214(buf);
          sub_10000C1E8(v22);
LABEL_48:
          sub_10002249C(buf);
          goto LABEL_62;
        }

        if (v14 == 20)
        {
          if (v12 != 1)
          {
            goto LABEL_57;
          }

          v27 = sub_10057C548(a2);
          buf[0] = 0;
          sub_1000216B4(buf);
          sub_100211E38(*a5, v27 == 1);
          sub_100022214(buf);
          goto LABEL_48;
        }

        if (v14 != 22)
        {
          goto LABEL_55;
        }

        if (v12 != 1)
        {
          goto LABEL_57;
        }

        *a6 = sub_10057C548(a2) + 1;
      }

      else
      {
        if (v14 == 1)
        {
          v16 = v12 - 7;
          if (v12 < 7)
          {
            goto LABEL_57;
          }

          v20 = sub_10057C598(a2);
          sub_10057C598(a2);
          v21 = sub_10057C598(a2);
          sub_10057C548(a2);
          buf[0] = 0;
          sub_1000216B4(buf);
          if (sub_1000ABC7C(a4, &v46) || !sub_1000B12AC(v46))
          {
            if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
            {
              sub_10084EE7C(&v44, v45);
            }
          }

          else
          {
            *(sub_1000B12AC(v46) + 8) = v20;
            *(sub_1000B12AC(v46) + 32) = v21;
            sub_1002F03E8(a3 + 128, a4);
          }

          sub_100022214(buf);
LABEL_67:
          v33 = buf;
          goto LABEL_71;
        }

        if (v14 != 3)
        {
          if (v14 != 16)
          {
            goto LABEL_55;
          }

          if (v12 != 4)
          {
            goto LABEL_57;
          }

          v15 = sub_10057C600(a2);
          buf[0] = 0;
          sub_1000216B4(buf);
          sub_100212350(*a5, v15);
          sub_100022214(buf);
          goto LABEL_48;
        }

        if (v12 != 2)
        {
          goto LABEL_57;
        }

        sub_10057C598(a2);
      }

LABEL_62:
      LOWORD(v9) = v9 + v13 - v12;
      if (v9 <= 0)
      {
        goto LABEL_73;
      }
    }
  }

  v10 = 0;
LABEL_73:
  sub_1000088CC(v48);
  return v10;
}

void sub_1005E6FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  sub_1000088CC(va);
  _Unwind_Resume(a1);
}

void sub_1005E7028(uint64_t a1, uint64_t a2, char a3)
{
  v6 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    sub_1000E5A58(a2, __p);
    if (v9 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136446210;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Fast Connect HFP Report Connection attempt for %{public}s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10057D9B0(a1, a2, a3);
}

void sub_1005E7124(uint64_t a1, uint64_t a2, unsigned __int16 *a3, char *a4, char *a5, int a6, uint64_t a7)
{
  v10 = qword_100BCE8F8;
  if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109120;
    v13[1] = a7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Fast Connect HFP Setup Complete result %d", v13, 8u);
  }

  if (a7)
  {
    if (qword_100B50AA0 != -1)
    {
      sub_10084CC80();
    }

    v11 = sub_1000DD584(off_100B50A98, a7, 20000);
    sub_10057DA84(a1, a2, v11);
  }

  if (qword_100B50AA0 != -1)
  {
    sub_10084CC80();
  }

  v12 = sub_1000DD584(off_100B50A98, 0, 20000);
  sub_10057DA84(a1, a2, v12);
}

void sub_1005E72E4(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  v5 = 0;
  v6 = 0;
  v7 = 0;
  sub_100007F20(&v5, &a1[2]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(a1);
  v4 = v5;
  if (v5 != v6)
  {
    do
    {
      v3[2](v3, *v4++);
    }

    while (v4 != v6);
    v4 = v5;
  }

  if (v4)
  {
    v6 = v4;
    operator delete(v4);
  }
}

uint64_t sub_1005E741C(uint64_t a1, uint64_t (***a2)(void, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 50);
  v5 = *(a1 + 32);
  v6 = sub_1003211B8(*(a1 + 40) + 400);
  v7 = **a2;

  return v7(a2, v5, v3, v4, v6);
}

uint64_t sub_1005E74B0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_1005D09A8(a1, a2);
  v6 = qword_100BCE8F8;
  if (v5)
  {
    v7 = v5;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v8 = __p[0];
      v9 = "No";
      if (v12 >= 0)
      {
        v8 = __p;
      }

      if (a3)
      {
        v9 = "Yes";
      }

      *buf = 136446466;
      v14 = v8;
      v15 = 2082;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setAllowsAutoRoute: %{public}s, allows %{public}s", buf, 0x16u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_1003A4008(v7, a3);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084EEB8();
    }

    return 1;
  }
}

uint64_t sub_1005E75FC(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_1005D09A8(a1, a2);
  v6 = qword_100BCE8F8;
  if (v5)
  {
    v7 = v5;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      v8 = __p[0];
      v9 = "No";
      if (v12 >= 0)
      {
        v8 = __p;
      }

      if (a3)
      {
        v9 = "Yes";
      }

      *buf = 136446466;
      v14 = v8;
      v15 = 2082;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setAudioRouteHidden: %{public}s, %{public}s", buf, 0x16u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_1003A407C(v7, a3);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084EEF4();
    }

    return 1;
  }
}

uint64_t sub_1005E7748(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sub_1005D09A8(a1, a2);
  if (v4)
  {
    sub_1003A3F94(v4, a3);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084EF30();
    }

    return 1;
  }
}

uint64_t sub_1005E77AC(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sub_1005D09A8(a1, a2);
  v5 = qword_100BCE8F8;
  if (v4)
  {
    v6 = v4;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "No";
      if (a3)
      {
        v7 = "Yes";
      }

      v9 = 136315138;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Smart Route: [HFP] Tipi Connection status : %s", &v9, 0xCu);
    }

    sub_1003A325C(v6, a3);
    return 0;
  }

  else
  {
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10084EF6C();
    }

    return 1;
  }
}

void sub_1005E78B0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_1005D09A8(a1, a2);
  if (v5)
  {
    v6 = v5;
    if ((a3 - 1) > 4)
    {
      v7 = 0;
    }

    else
    {
      v7 = dword_1008AA7A8[a3 - 1];
    }

    v8 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(a2, __p);
      if (v13 >= 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      *buf = 67109634;
      v15 = a3;
      v16 = 1024;
      v17 = v7;
      v18 = 2082;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "User selected device type is %d. Setting category as %d for device %{public}s.", buf, 0x18u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10069BFD4(v6, v7);
    v11 = sub_1005D2A98(v10, a2);
    sub_10069BD7C(v6, v11);
  }

  else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084EFA8();
  }
}

void sub_1005E7A24(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a2;
  v8 = sub_1000D999C(a1, a2);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005E7ABC;
  v9[3] = &unk_100AE0EF8;
  v9[4] = a1;
  v9[5] = a3;
  v10 = a4;
  v11 = v6;
  sub_10000CA94(v8, v9);
}

void sub_1005E7ABC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = sub_1005D4A04(v2, *(a1 + 40));
  v4 = sub_1005D0048(v2, v3);
  if (v4)
  {
    v5 = v4;
    v19 = sub_100320DC4(v4 + 400);
    v6 = sub_100320D9C(v5 + 400);
    v7 = sub_1003211B8(v5 + 400);
    v8 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      sub_1000E5A58(v6, __p);
      v9 = v18 >= 0 ? __p : __p[0];
      v10 = sub_10041163C(*(a1 + 48));
      v11 = *(a1 + 49);
      v12 = sub_100320114(&v19);
      *buf = 136447234;
      v21 = v9;
      v22 = 2080;
      v23 = v10;
      v24 = 1024;
      v25 = v11;
      v26 = 2080;
      v27 = v12;
      v28 = 1024;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "advancedSniffModeChanged - device:%{public}s mode:%s status:%d audioState:%s isInAdvancedSniff:%d", buf, 0x2Cu);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (*(a1 + 48) == 240)
    {
      v13 = v7;
    }

    else
    {
      v13 = 0;
    }

    if ((v13 & 1) == 0)
    {
      sub_1003211B0(v5 + 400, (*(a1 + 48) == 240) & ~v7);
      if (v19 == 1)
      {
        if (*(a1 + 49))
        {
          sub_1005E7D70(v2, v5);
          return;
        }

        if (*(a1 + 48) == 240)
        {
          v15 = sub_1003211D0(v5 + 400);
          sub_1005E7F30(v15, *(a1 + 40));
          buf[0] = 0;
          sub_1000216B4(buf);
          v16 = sub_100320184(v5 + 400);
          sub_100211538(v3, v16);
          sub_10002249C(buf);
          if (v19 == 1)
          {
            v14 = 3;
          }

          else
          {
            v14 = 1;
          }
        }

        else
        {
          v14 = 3;
        }
      }

      else
      {
        v14 = 1;
      }

      if (qword_100B50940 != -1)
      {
        sub_10084C8A4();
      }

      sub_10063A688(off_100B50938, v6, v14);
    }
  }

  else if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
  {
    sub_10084EFE4();
  }
}

void sub_1005E7D70(uint64_t a1, uint64_t a2)
{
  sub_1003211C0(a2 + 400);
  v4 = sub_1003211D8(a2 + 400);
  v5 = sub_100320D9C(a2 + 400);
  v6 = qword_100BCE8F8;
  v7 = os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    sub_1000E5A58(v5, __p);
    v9 = v14 >= 0 ? __p : __p[0];
    *buf = 136446466;
    v16 = v9;
    v17 = 1024;
    v18 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "retryHandsfreeAoSCall - device:%{public}s handsfreeAoSRetryCount:%d", buf, 0x12u);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v4 == 2)
  {
    sub_10069BC6C(a2, 0, 114);
    sub_100320DCC(a2 + 400, 0);
    sub_1003211D0(a2 + 400);
    v10 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
    {
      sub_10084F054(v10);
    }
  }

  else
  {
    v11 = sub_1000D999C(v7, v8);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1005E8070;
    v12[3] = &unk_100AE0860;
    v12[4] = a1;
    v12[5] = v5;
    sub_10008E008(v11, 250, v12);
  }
}

_BYTE *sub_1005E7F30(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  sub_1000216B4(&v9);
  v3 = sub_1000E1FE8(a2);
  v4 = sub_100022214(&v9);
  v5 = *v3;
  v7 = sub_10000C7D0(v4, v6);
  (*(*v7 + 1880))(v7, v5, 1, 1);
  return sub_10002249C(&v9);
}

void sub_1005E7FD8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a2;
  v7 = a1 - 296;
  v8 = sub_1000D999C(a1, a2);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1005E7ABC;
  v9[3] = &unk_100AE0EF8;
  v9[4] = v7;
  v9[5] = a3;
  v10 = a4;
  v11 = v6;
  sub_10000CA94(v8, v9);
}

uint64_t sub_1005E807C(uint64_t a1, uint64_t a2)
{
  v7[0] = 0;
  v7[1] = 0;
  sub_100007F88(v7, a1 + 760);
  v4 = sub_1005D09A8(a1, a2);
  if (v4)
  {
    v5 = *(v4 + 628);
  }

  else
  {
    v5 = 0;
  }

  sub_1000088CC(v7);
  return v5;
}

uint64_t sub_1005E80F4(uint64_t a1)
{
  *a1 = off_100B007D8;
  *(a1 + 256) = off_100B00970;
  *(a1 + 264) = off_100B009B0;
  *(a1 + 272) = &off_100B009E0;
  *(a1 + 280) = off_100B009F8;
  *(a1 + 288) = off_100B00A98;
  *(a1 + 296) = off_100B00AC0;
  *(a1 + 304) = off_100B00B30;
  *(a1 + 312) = off_100B00B70;
  *(a1 + 320) = &off_100B00BA0;
  sub_10000CEDC(a1 + 824, *(a1 + 832));
  sub_10007A068(a1 + 760);
  sub_100320110(a1 + 360);
  v2 = *(a1 + 336);
  if (v2)
  {
    *(a1 + 344) = v2;
    operator delete(v2);
  }

  return sub_10032F580(a1);
}

void sub_1005E8290(uint64_t a1)
{
  *a1 = off_100B007D8;
  *(a1 + 256) = off_100B00970;
  *(a1 + 264) = off_100B009B0;
  *(a1 + 272) = &off_100B009E0;
  *(a1 + 280) = off_100B009F8;
  *(a1 + 288) = off_100B00A98;
  *(a1 + 296) = off_100B00AC0;
  *(a1 + 304) = off_100B00B30;
  *(a1 + 312) = off_100B00B70;
  *(a1 + 320) = &off_100B00BA0;
  sub_10000CEDC(a1 + 824, *(a1 + 832));
  sub_10007A068(a1 + 760);
  sub_100320110(a1 + 360);
  v2 = *(a1 + 336);
  if (v2)
  {
    *(a1 + 344) = v2;
    operator delete(v2);
  }

  sub_10032F580(a1);

  operator delete();
}

uint64_t sub_1005E8498(uint64_t a1)
{
  v2 = a1 - 304;
  *(a1 - 304) = off_100B007D8;
  *(a1 - 48) = off_100B00970;
  *(a1 - 40) = off_100B009B0;
  *(a1 - 32) = &off_100B009E0;
  *(a1 - 24) = off_100B009F8;
  *(a1 - 16) = off_100B00A98;
  *(a1 - 8) = off_100B00AC0;
  *a1 = off_100B00B30;
  *(a1 + 8) = off_100B00B70;
  *(a1 + 16) = &off_100B00BA0;
  sub_10000CEDC(a1 + 520, *(a1 + 528));
  sub_10007A068(a1 + 456);
  sub_100320110(a1 + 56);
  v3 = *(a1 + 32);
  if (v3)
  {
    *(a1 + 40) = v3;
    operator delete(v3);
  }

  return sub_10032F580(v2);
}

void sub_1005E8648(uint64_t a1, uint64_t a2)
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
    sub_1005E8714((a1 + 8), v6, &v7);
    sub_1000C8CF0((a1 + 8));
  }

  os_unfair_lock_unlock(a1);
}

char *sub_1005E8714(void *a1, char *__src, char *a3)
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

void sub_1005E88B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005E88E8(uint64_t a1, uint64_t *a2, void *a3)
{
  v5 = a3;
  *(a1 + 8) = 1;
  *a1 = off_100B00CA8;
  sub_1000DA9C4((a1 + 16), a2);
  *(a1 + 40) = v5;
  return a1;
}

uint64_t sub_1005E8964(uint64_t a1)
{
  *a1 = off_100B00CA8;

  v3 = (a1 + 16);
  sub_1000D6BD4(&v3);
  return a1;
}

void sub_1005E89C4(uint64_t a1)
{
  *a1 = off_100B00CA8;

  v2 = (a1 + 16);
  sub_1000D6BD4(&v2);
  operator delete();
}

void sub_1005E8A38(uint64_t a1)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  v2 = off_100B50AC8;
  v3 = *(a1 + 40);

  sub_1000D7348(v2, (a1 + 16), v3);
}

void sub_1005E8A90(uint64_t a1, uint64_t a2)
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

void sub_1005E8B68(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  LOBYTE(v4) = *(a1 + 50);
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  sub_1005CF90C(off_100B50AC8, *(a1 + 48), *(a1 + 51), a1 + 32, &v3);
}

void sub_1005E8BD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 32) = &off_100AE0A78;
  *(a1 + 40) = v3;
  if (v3)
  {
    sub_10000C69C(v3);
  }
}

void sub_1005E8C08(uint64_t a1)
{
  *(a1 + 32) = &off_100AE0A78;
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_10000C808(v1);
  }
}

uint64_t sub_1005E8C38(uint64_t a1, __int128 *a2)
{
  *(a1 + 8) = 1;
  *a1 = off_100B00D10;
  *(a1 + 16) = 0;
  v4 = malloc_type_malloc(0x18uLL, 0x10320400E551A55uLL);
  *(a1 + 16) = v4;
  if (v4)
  {
    v5 = *a2;
    v4[2] = *(a2 + 2);
    *v4 = v5;
    v6 = *a2;
    if (*a2 < 2u)
    {
      *(*(a1 + 16) + 8) = malloc_type_malloc(6uLL, 0x1000040274DC3F3uLL);
      v12 = *(*(a1 + 16) + 8);
      v13 = *(a2 + 1);
      v14 = *(v13 + 4);
      *v12 = *v13;
      *(v12 + 4) = v14;
    }

    else
    {
      if (v6 == 7)
      {
        *(*(a1 + 16) + 8) = malloc_type_malloc(*(a2 + 8), 0x100004077774924uLL);
        v10 = *(*(a1 + 16) + 8);
        v11 = *(a2 + 1);
        v9 = *(a2 + 8);
        goto LABEL_9;
      }

      if (v6 == 10)
      {
        v7 = strlen(*(a2 + 1));
        *(*(a1 + 16) + 8) = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
        v8 = *(a2 + 1);
        v9 = strlen(v8) + 1;
        v10 = *(*(a1 + 16) + 8);
        v11 = v8;
LABEL_9:
        memmove(v10, v11, v9);
      }
    }
  }

  else
  {
    v16 = 0;
    sub_1000216B4(&v16);
    sub_10020F948(*(a2 + 2), 2701);
    sub_10002249C(&v16);
  }

  return a1;
}

void sub_1005E8DE0(uint64_t a1)
{
  sub_1005E8E6C(a1);

  operator delete();
}

uint64_t sub_1005E8E18(uint64_t a1, uint64_t a2)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  v3 = off_100B50AC8;
  v4 = *(a1 + 16);

  return sub_1005D7C3C(v3, v4);
}

uint64_t sub_1005E8E6C(uint64_t a1)
{
  *a1 = off_100B00D10;
  v2 = *(a1 + 16);
  if (v2)
  {
    if (*v2 <= 0xAu && ((1 << *v2) & 0x483) != 0)
    {
      free(*(v2 + 8));
    }

    free(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1005E8EE4(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(a1 + 8) = 1;
  *a1 = off_100B00D48;
  *(a1 + 10) = a2;
  *(a1 + 16) = 0;
  v5 = a1 + 16;
  v6 = malloc_type_malloc(0x28uLL, 0x103004048DB3EE6uLL);
  *v5 = v6;
  *v6 = *a3;
  v6[8] = *(a3 + 16);
  v7 = strlen(*(a3 + 8));
  v8 = malloc_type_malloc(v7 + 1, 0x100004077774924uLL);
  *(*v5 + 8) = v8;
  if (!v8)
  {
    v9 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
    {
      v17 = strlen(*(a3 + 8));
      *v19 = 134217984;
      *&v19[4] = v17 + 1;
      _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Could not allocate %lu bytes", v19, 0xCu);
      v8 = *(*v5 + 8);
    }

    else
    {
      v8 = 0;
    }
  }

  v10 = strlen(*(a3 + 8));
  strlcpy(v8, *(a3 + 8), v10 + 1);
  v11 = malloc_type_malloc(0x18uLL, 0x10900404FFA3EDEuLL);
  *(*v5 + 32) = v11;
  if (!v11)
  {
    sub_10084F0D4(v5, v19);
    v11 = *v19;
  }

  v12 = *(a3 + 32);
  v13 = *v12;
  v11[2] = *(v12 + 2);
  *v11 = v13;
  v14 = malloc_type_malloc(*(*(a3 + 32) + 18), 0x100004077774924uLL);
  *(*(*v5 + 32) + 8) = v14;
  if (!v14)
  {
    v15 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_FAULT))
    {
      v18 = *(*(a3 + 32) + 18);
      *v19 = 67109120;
      *&v19[4] = v18;
      _os_log_fault_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Could not allocate %d bytes", v19, 8u);
      v14 = *(*(*v5 + 32) + 8);
    }

    else
    {
      v14 = 0;
    }
  }

  memcpy(v14, *(*(a3 + 32) + 8), *(*(a3 + 32) + 18));
  *(*(a1 + 16) + 24) = *(*(*(a1 + 16) + 32) + 8) + *(a3 + 24) - *(*(a3 + 32) + 8);
  return a1;
}

void sub_1005E9174(uint64_t a1)
{
  sub_1005E9204(a1);

  operator delete();
}

_BYTE *sub_1005E91AC(uint64_t a1, uint64_t a2)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  v3 = off_100B50AC8;
  v4 = *(a1 + 10);
  v5 = *(a1 + 16);

  return sub_1005DD358(v3, v4, v5);
}

uint64_t sub_1005E9204(uint64_t a1)
{
  *a1 = off_100B00D48;
  free(*(*(a1 + 16) + 8));
  free(*(*(*(a1 + 16) + 32) + 8));
  free(*(*(a1 + 16) + 32));
  free(*(a1 + 16));
  return a1;
}

uint64_t sub_1005E9274(uint64_t a1, uint64_t a2)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  v3 = off_100B50AC8;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
  *a1 = off_100B00D80;
  return a1;
}

void *sub_1005E92F8(void *result)
{
  if (*(result[3] + 80) == 1)
  {
    return (*(*result + 40))();
  }

  return result;
}

uint64_t sub_1005E9338(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  v6 = off_100B50AC8;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = v6;
  *a1 = off_100B00DC0;
  *(a1 + 32) = v4;
  *(a1 + 34) = a3;
  return a1;
}

void sub_1005E93E8(uint64_t a1, uint64_t a2)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  v3 = off_100B50AC8;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v6 = *(a1 + 36);

  sub_1005E0618(v3, v5, v4, v6);
}

uint64_t sub_1005E945C(uint64_t a1, uint64_t a2)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  v3 = off_100B50AC8;

  return sub_1005E3360(v3, 0);
}

void sub_1005E94A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000D999C(a1, a2);

  sub_10000CA94(v2, &stru_100B00E28);
}

void sub_1005E94D4(uint64_t a1, char a2, const void *a3, unsigned int a4, uint64_t a5, uint64_t *a6)
{
  v20 = 0;
  v21 = 0;
  sub_10000C704(&v20, a3, a4);
  v9 = sub_100216C4C(a1);
  LOWORD(a1) = v9;
  v10 = *(a6 + 8);
  v11 = *a6;
  v13 = sub_1000D999C(v9, v12);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3321888768;
  v14[2] = sub_1005E983C;
  v14[3] = &unk_100B00E48;
  v18 = v10;
  v17 = a1;
  v19 = a2;
  v14[4] = v11;
  v15 = &off_100AE0A78;
  v16 = v21;
  if (v21)
  {
    sub_10000C69C(v21);
  }

  sub_10000CA94(v13, v14);
  v15 = &off_100AE0A78;
  if (v16)
  {
    sub_10000C808(v16);
  }

  v20 = &off_100AE0A78;
  if (v21)
  {
    sub_10000C808(v21);
  }
}

void sub_1005E9614(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, atomic_uint *a15, uint64_t a16, uint64_t a17, atomic_uint *a18)
{
  if (a15)
  {
    sub_10000C808(a15);
  }

  if (a18)
  {
    sub_10000C808(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005E9668(uint64_t a1, uint64_t a2)
{
  v2 = sub_1000D999C(a1, a2);

  sub_10000CA94(v2, &stru_100B00E78);
}

void sub_1005E9698(uint64_t a1, __int16 a2)
{
  v3 = sub_100216C4C(a1);
  v4 = v3;
  v6 = sub_1000D999C(v3, v5);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005E98F4;
  v7[3] = &unk_100AE0900;
  v8 = v4;
  v9 = a2;
  sub_10000CA94(v6, v7);
}

void sub_1005E9720(int a1, uint64_t a2, char a3, char a4, __int16 a5, __int16 a6, char a7)
{
  v14 = sub_100216C4C(a2);
  v15 = v14;
  v17 = sub_1000D999C(v14, v16);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1005E9944;
  v18[3] = &unk_100AEDA80;
  v19 = a1;
  v20 = v15;
  v18[4] = a2;
  v23 = a3;
  v24 = a4;
  v21 = a5;
  v22 = a6;
  v25 = a7;
  sub_10000CA94(v17, v18);
}

void sub_1005E97F4(id a1)
{
  if (qword_100B50AD0 == -1)
  {
  }

  else
  {
    sub_10084E6E8();
  }

  sub_1005CF8A4();
}

void sub_1005E983C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0;
  LOBYTE(v3) = *(a1 + 58);
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  sub_1005CF90C(off_100B50AC8, *(a1 + 56), *(a1 + 59), a1 + 40, &v2);
}

void sub_1005E98AC(id a1)
{
  if (qword_100B50AD0 == -1)
  {
  }

  else
  {
    sub_10084E6E8();
  }

  sub_1005D0500();
}

void sub_1005E98F4(uint64_t a1)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  v2 = *(a1 + 34);

  sub_1005D0568(a1, 0, v2);
}

uint64_t sub_1005E9944(uint64_t a1)
{
  if (qword_100B50AD0 != -1)
  {
    sub_10084E6E8();
  }

  return sub_1005D060C(off_100B50AC8, *(a1 + 40), *(a1 + 44), *(a1 + 32), *(a1 + 50), *(a1 + 51), *(a1 + 46), *(a1 + 48), *(a1 + 52));
}

_BYTE *sub_1005EA138(_BYTE *a1, unsigned __int16 a2, uint64_t a3)
{
  result = sub_100320E64(a3 + 400);
  if (result)
  {
    if (qword_100B50AD0 != -1)
    {
      sub_10084E6E8();
    }

    v6 = sub_1005D492C(off_100B50AC8, a2);
    v7 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      if (*a1)
      {
        v8 = "call active";
      }

      else
      {
        v8 = "no call active";
      }

      if (v6)
      {
        sub_1000E5A58(v6, __p);
        if (v12 >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        *buf = 136446466;
        v14 = v8;
        v15 = 2082;
        v16 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending call status %{public}s to device %{public}s", buf, 0x16u);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136446466;
        v14 = v8;
        v15 = 2082;
        v16 = "NULL";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending call status %{public}s to device %{public}s", buf, 0x16u);
      }
    }

    LOBYTE(__p[0]) = 0;
    sub_1000216B4(__p);
    v10 = sub_10020FE14(a2, *a1);
    sub_100022214(__p);
    if (v10)
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084F190();
      }
    }

    return sub_10002249C(__p);
  }

  return result;
}

uint64_t sub_1005EA344(uint64_t **a1, uint64_t *a2, unsigned __int16 *a3, _OWORD *a4)
{
  v6 = 0;
  v7 = 0;
  v4 = *sub_1005EA3E0(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *sub_1005EA3E0(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int16 *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 16), v6 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 16) < v15)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 16))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_1005EA588(unsigned __int8 *a1, unsigned __int16 a2, uint64_t a3)
{
  v6 = sub_100320E24(a3 + 400);
  if (sub_100320E64(a3 + 400))
  {
    if (qword_100B50AD0 != -1)
    {
      sub_10084E6E8();
    }

    v7 = sub_1005D492C(off_100B50AC8, a2);
    if (v6)
    {
      v8 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        v22 = a1[1];
        v9 = v23;
        sub_1000DAB54(&v22, v23);
        if (v24 < 0)
        {
          v9 = v23[0];
        }

        if (v7)
        {
          sub_1000E5A58(v7, __p);
          if (v21 >= 0)
          {
            v10 = __p;
          }

          else
          {
            v10 = __p[0];
          }

          *buf = 136446466;
          v26 = v9;
          v27 = 2082;
          v28 = v10;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending call held status %{public}s to device %{public}s", buf, 0x16u);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446466;
          v26 = v9;
          v27 = 2082;
          v28 = "NULL";
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending call held status %{public}s to device %{public}s", buf, 0x16u);
        }

        if (v24 < 0)
        {
          operator delete(v23[0]);
        }
      }

      v19 = 0;
      sub_1000216B4(&v19);
      v14 = sub_1002100B0(a2, a1[1]);
      if (!v14)
      {
        v15 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *a1;
          v16 = v23;
          sub_1000DAB24(&v22, v23);
          if (v24 < 0)
          {
            v16 = v23[0];
          }

          if (v7)
          {
            sub_1000E5A58(v7, __p);
            if (v21 >= 0)
            {
              v17 = __p;
            }

            else
            {
              v17 = __p[0];
            }

            *buf = 136446466;
            v26 = v16;
            v27 = 2082;
            v28 = v17;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sending call setup %{public}s to device %{public}s", buf, 0x16u);
            if (v21 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            *buf = 136446466;
            v26 = v16;
            v27 = 2082;
            v28 = "NULL";
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sending call setup %{public}s to device %{public}s", buf, 0x16u);
          }

          if (v24 < 0)
          {
            operator delete(v23[0]);
          }
        }

        v14 = sub_10020FF34(a2, *a1);
      }

      v18 = &v19;
    }

    else
    {
      if (a1[2] != 1)
      {
        return;
      }

      v11 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *a1;
        v12 = v23;
        sub_1000DAB24(&v22, v23);
        if (v24 < 0)
        {
          v12 = v23[0];
        }

        if (v7)
        {
          sub_1000E5A58(v7, __p);
          if (v21 >= 0)
          {
            v13 = __p;
          }

          else
          {
            v13 = __p[0];
          }

          *buf = 136446466;
          v26 = v12;
          v27 = 2082;
          v28 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending call setup %{public}s to device %{public}s", buf, 0x16u);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446466;
          v26 = v12;
          v27 = 2082;
          v28 = "NULL";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending call setup %{public}s to device %{public}s", buf, 0x16u);
        }

        if (v24 < 0)
        {
          operator delete(v23[0]);
        }
      }

      LOBYTE(v23[0]) = 0;
      sub_1000216B4(v23);
      v14 = sub_10020FF34(a2, *a1);
      v18 = v23;
    }

    sub_10002249C(v18);
    if (v14)
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084E6FC();
      }
    }
  }
}

void sub_1005EAA0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_10002249C(&a12);
  _Unwind_Resume(a1);
}

void sub_1005EAA6C(unsigned __int8 *a1, unsigned __int16 a2, uint64_t a3)
{
  v6 = sub_100320E24(a3 + 400);
  if (sub_100320E64(a3 + 400))
  {
    if (qword_100B50AD0 != -1)
    {
      sub_10084E6E8();
    }

    v7 = sub_1005D492C(off_100B50AC8, a2);
    if (v6)
    {
      v8 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *a1;
        v9 = v23;
        sub_1000DAB24(&v22, v23);
        if (v24 < 0)
        {
          v9 = v23[0];
        }

        if (v7)
        {
          sub_1000E5A58(v7, __p);
          if (v21 >= 0)
          {
            v10 = __p;
          }

          else
          {
            v10 = __p[0];
          }

          *buf = 136446466;
          v26 = v9;
          v27 = 2082;
          v28 = v10;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending call setup %{public}s to device %{public}s", buf, 0x16u);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446466;
          v26 = v9;
          v27 = 2082;
          v28 = "NULL";
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending call setup %{public}s to device %{public}s", buf, 0x16u);
        }

        if (v24 < 0)
        {
          operator delete(v23[0]);
        }
      }

      if (a1[2] == 1 && a1[1] != 1)
      {
        LOBYTE(v23[0]) = 0;
        sub_1000216B4(v23);
        if (sub_10020FF34(a2, 1u) && os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
        {
          sub_10084E6FC();
        }

        sub_10002249C(v23);
      }

      v19 = 0;
      sub_1000216B4(&v19);
      v14 = sub_10020FF34(a2, *a1);
      if (!v14)
      {
        v15 = qword_100BCE8F8;
        if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
        {
          v22 = a1[1];
          v16 = v23;
          sub_1000DAB54(&v22, v23);
          if (v24 < 0)
          {
            v16 = v23[0];
          }

          if (v7)
          {
            sub_1000E5A58(v7, __p);
            if (v21 >= 0)
            {
              v17 = __p;
            }

            else
            {
              v17 = __p[0];
            }

            *buf = 136446466;
            v26 = v16;
            v27 = 2082;
            v28 = v17;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sending call held status %{public}s to device %{public}s", buf, 0x16u);
            if (v21 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            *buf = 136446466;
            v26 = v16;
            v27 = 2082;
            v28 = "NULL";
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Sending call held status %{public}s to device %{public}s", buf, 0x16u);
          }

          if (v24 < 0)
          {
            operator delete(v23[0]);
          }
        }

        v14 = sub_1002100B0(a2, a1[1]);
      }

      v18 = &v19;
    }

    else
    {
      if (a1[3] != 1)
      {
        return;
      }

      v11 = qword_100BCE8F8;
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *a1;
        v12 = v23;
        sub_1000DAB24(&v22, v23);
        if (v24 < 0)
        {
          v12 = v23[0];
        }

        if (v7)
        {
          sub_1000E5A58(v7, __p);
          if (v21 >= 0)
          {
            v13 = __p;
          }

          else
          {
            v13 = __p[0];
          }

          *buf = 136446466;
          v26 = v12;
          v27 = 2082;
          v28 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending call setup %{public}s to device %{public}s", buf, 0x16u);
          if (v21 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136446466;
          v26 = v12;
          v27 = 2082;
          v28 = "NULL";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Sending call setup %{public}s to device %{public}s", buf, 0x16u);
        }

        if (v24 < 0)
        {
          operator delete(v23[0]);
        }
      }

      LOBYTE(v23[0]) = 0;
      sub_1000216B4(v23);
      v14 = sub_10020FF34(a2, *a1);
      v18 = v23;
    }

    sub_10002249C(v18);
    if (v14)
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084E6FC();
      }
    }
  }
}

void sub_1005EAF50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_10002249C(&a12);
  _Unwind_Resume(a1);
}

_BYTE *sub_1005EAFB4(unsigned __int8 *a1, unsigned __int16 a2, uint64_t a3)
{
  result = sub_100320E64(a3 + 400);
  if (result)
  {
    if (qword_100B50AD0 != -1)
    {
      sub_10084E6E8();
    }

    v6 = sub_1005D492C(off_100B50AC8, a2);
    v7 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *a1;
      v8 = v14;
      sub_1000DAB24(&v13, v14);
      if (v15 < 0)
      {
        v8 = v14[0];
      }

      if (v6)
      {
        sub_1000E5A58(v6, __p);
        if (v12 >= 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        *buf = 136446466;
        v17 = v8;
        v18 = 2082;
        v19 = v9;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending call setup %{public}s to device %{public}s", buf, 0x16u);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *buf = 136446466;
        v17 = v8;
        v18 = 2082;
        v19 = "NULL";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending call setup %{public}s to device %{public}s", buf, 0x16u);
      }

      if (v15 < 0)
      {
        operator delete(v14[0]);
      }
    }

    LOBYTE(v14[0]) = 0;
    sub_1000216B4(v14);
    v10 = sub_10020FF34(a2, *a1);
    sub_100022214(v14);
    if (v10)
    {
      if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
      {
        sub_10084F200();
      }
    }

    return sub_10002249C(v14);
  }

  return result;
}

void sub_1005EB1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1005EB1F4(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1005EB2A8(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 4 * a3;
    do
    {
      sub_1005EB320(a1, a2, a2);
      ++a2;
      v5 -= 4;
    }

    while (v5);
  }

  return a1;
}

uint64_t *sub_1005EB320(void *a1, unsigned int *a2, _DWORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % v4.i32[0];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 4) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void sub_1005EB554(uint64_t a1, uint64_t a2, int a3)
{
  *(a2 + 4) = a3;
  *(a2 + 8) = 2080;
  *(a2 + 10) = v3;
}

void sub_1005EB578(uint64_t a1, uint64_t a2, int a3)
{
  *(a2 + 4) = a3;
  *(a2 + 8) = 2082;
  *(a2 + 10) = v3;
}

uint64_t sub_1005EB58C@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *(result + 4) = a3;
  *(result + 12) = 1024;
  *(result + 14) = a2;
  return result;
}

void *sub_1005EB5A0(void *a1)
{
  *a1 = &off_100B010E8;
  v2 = +[CloudPairing sharedInstance];
  return a1;
}

void sub_1005EB5F4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CloudPairing start", buf, 2u);
  }

  if (NSClassFromString(@"UMUserManager"))
  {
    v4 = +[UMUserManager sharedManager];
    if ([v4 isMultiUser])
    {
      v5 = qword_100BCE8E8;
      if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Disabling cloud pairing for multi-user mode", buf, 2u);
      }

      goto LABEL_19;
    }
  }

  else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
  {
    sub_10084F270();
  }

  v6 = objc_autoreleasePoolPush();
  v7 = +[NSMutableArray array];
  v8 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v2;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [v13 UUIDString];
        [v7 addObject:v14];

        v15 = [v9 objectForKeyedSubscript:v13];
        [v8 addObject:v15];
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v10);
  }

  v16 = +[CloudPairing sharedInstance];
  [v16 registerWithCloudPairedDevices:v7 identifiers:v8];

  objc_autoreleasePoolPop(v6);
LABEL_19:
}

void sub_1005EB8EC()
{
  v0 = +[CloudPairing sharedInstance];
  [v0 printDebug];
}

void sub_1005EB950()
{
  v0 = +[CloudPairing sharedInstance];
  [v0 sendCloudKitPush];
}

void sub_1005EB9B4()
{
  v0 = +[CloudPairing sharedInstance];
  [v0 fetchManateeStatus];
}

id sub_1005EBA18()
{
  v0 = +[CloudPairing sharedInstance];
  v1 = [v0 getAccountStatus];

  return v1;
}

void sub_1005EBA68(uint64_t a1, uint64_t **a2)
{
  v5 = +[CloudPairing sharedInstance];
  v3 = [v5 cloudClient];
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v4 = [NSString stringWithUTF8String:a2];
  [v3 deviceRecord:v4 completion:&stru_100B01160];
}

void sub_1005EBB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_1005EBB34(id a1, BTCloudDevice *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v5;
  v7 = qword_100BCE8E8;
  if (!v4 || v5)
  {
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
    {
      sub_10084F2AC();
    }
  }

  else
  {
    v8 = os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      *buf = 138412290;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[Inquiry] fetched cloud device: %@", buf, 0xCu);
    }

    v10 = sub_100432918(v8, v9);
    v11 = [(BTCloudDevice *)v4 bluetoothAddress];
    v12 = v11;
    sub_100007E30(v17, [v11 UTF8String]);
    v13 = [(BTCloudDevice *)v4 nickname];
    v14 = v13;
    sub_100007E30(__p, [v13 UTF8String]);
    (*(*v10 + 176))(v10, v17, __p);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }

    if (v18 < 0)
    {
      operator delete(v17[0]);
    }
  }
}

void sub_1005EBCDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void sub_1005EBD3C(uint64_t a1, uint64_t a2)
{
  v3 = +[CloudPairing sharedInstance];
  [v3 multipleAdvInstancesInitialized:a2];
}

void sub_1005EBDA8(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  if ((*(a2 + 23) & 0x8000000000000000) != 0)
  {
    if (!a2[1])
    {
      return;
    }
  }

  else if (!*(a2 + 23))
  {
    return;
  }

  v3 = +[CloudPairing sharedInstance];
  if (*(v2 + 23) < 0)
  {
    v2 = *v2;
  }

  v4 = [NSString stringWithUTF8String:v2];
  v6 = v4;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v3 sendCloudpairingRetry:v5];
}

void sub_1005EBE8C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1005EBEC0(id a1)
{
  v1 = objc_alloc_init(CloudPairing);
  v2 = qword_100B6F660;
  qword_100B6F660 = v1;
}

void sub_1005EBF40(id a1)
{
  v1 = objc_alloc_init(BTCloudServicesClient);
  v2 = qword_100B6F670;
  qword_100B6F670 = v1;

  [qword_100B6F670 setInterruptionHandler:&stru_100B011C0];
  v3 = qword_100B6F670;

  [v3 setInvalidationHandler:&stru_100B011E0];
}

void sub_1005EBFA4(id a1)
{
  v1 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Cloud InterruptionHandler", v2, 2u);
  }
}

void sub_1005EC00C(id a1)
{
  v1 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "Cloud InvalidationHandler", v2, 2u);
  }
}

uint64_t sub_1005EC650(uint64_t a1, int a2)
{
  v4 = qword_100BCE8E8;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = MKBDeviceUnlockedSinceBoot();
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Received first unlock notification. returns : %d", v7, 8u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained startUpServices];

  return notify_cancel(a2);
}

id sub_1005EC928(uint64_t a1)
{
  v2 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "BTAudioCloudSyncMonitor: BTCloudSoundProfileChangedNotification Received", v4, 2u);
  }

  return [*(a1 + 32) soundProfileChanged];
}

void sub_1005ECC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1005ECC20(uint64_t a1)
{
  result = [*(a1 + 32) _generateKeys];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void sub_1005ED274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  v19 = v16;

  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1005ED2D8(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleMsg:v3];
}

void sub_1005F2FFC(_Unwind_Exception *a1)
{
  if (*(v1 + 1655) < 0)
  {
    operator delete(*(v1 + 1632));
  }

  if (*(v1 + 2055) < 0)
  {
    operator delete(*(v1 + 2032));
  }

  _Unwind_Resume(a1);
}

id sub_1005F3F5C(uint64_t a1)
{
  result = [*(a1 + 32) handleXPCUnpairCommand:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_1005F3F94(uint64_t a1, uint64_t a2)
{
  if (qword_100B508C0 != -1)
  {
    sub_10084F448();
  }

  v3 = off_100B508B8;
  sub_100007E30(__p, [*(a1 + 32) UTF8String]);
  sub_1007C2828(v3, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1005F4010(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F402C(uint64_t a1, uint64_t a2)
{
  if (qword_100B508C0 != -1)
  {
    sub_10084F448();
  }

  v3 = off_100B508B8;
  v4 = *(a1 + 32);

  sub_1007C2AA4(v3, v4);
}

void sub_1005F4080(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v8 = sub_1000DFC04(*(a1 + 40), &v44);
    __dst = 0uLL;
    v43 = 0;
    v9 = [v5 modelNumber];
    if ([v9 length] < 2)
    {
      if (v8)
      {
        if (*(v44 + 47) < 0)
        {
          sub_100008904(&__dst, *(v44 + 24), *(v44 + 32));
        }

        else
        {
          __dst = *(v44 + 24);
          v43 = *(v44 + 40);
        }
      }

      else
      {
        sub_100007E30(&__dst, "");
      }
    }

    else
    {
      v10 = [v5 modelNumber];
      sub_100007E30(&__dst, [v10 UTF8String]);
    }

    v40 = 0uLL;
    v41 = 0;
    v11 = [v5 manufacturer];
    if ([v11 length] < 2)
    {
      if (v8)
      {
        if (*(v44 + 71) < 0)
        {
          sub_100008904(&v40, *(v44 + 48), *(v44 + 56));
        }

        else
        {
          v40 = *(v44 + 48);
          v41 = *(v44 + 64);
        }
      }

      else
      {
        sub_100007E30(&v40, "");
      }
    }

    else
    {
      v12 = [v5 manufacturer];
      sub_100007E30(&v40, [v12 UTF8String]);
    }

    v38 = 0uLL;
    v39 = 0;
    v13 = [*(a1 + 32) caseSerialNumber];
    if ([v13 length] < 2)
    {
      if (v8)
      {
        if (*(v44 + 95) < 0)
        {
          sub_100008904(&v38, *(v44 + 72), *(v44 + 80));
        }

        else
        {
          v38 = *(v44 + 72);
          v39 = *(v44 + 88);
        }
      }

      else
      {
        sub_100007E30(&v38, "");
      }
    }

    else
    {
      v14 = [*(a1 + 32) caseSerialNumber];
      sub_100007E30(&v38, [v14 UTF8String]);
    }

    v36 = 0uLL;
    v37 = 0;
    v15 = [*(a1 + 32) hardwareVersion];
    if ([v15 length] < 2)
    {
      if (v8)
      {
        if (*(v44 + 167) < 0)
        {
          sub_100008904(&v36, *(v44 + 144), *(v44 + 152));
        }

        else
        {
          v36 = *(v44 + 144);
          v37 = *(v44 + 160);
        }
      }

      else
      {
        sub_100007E30(&v36, "");
      }
    }

    else
    {
      v16 = [*(a1 + 32) hardwareVersion];
      sub_100007E30(&v36, [v16 UTF8String]);
    }

    v34 = 0uLL;
    v35 = 0;
    v17 = [*(a1 + 32) leftBudSerialNumber];
    if ([v17 length] < 2)
    {
      if (v8)
      {
        if (*(v44 + 215) < 0)
        {
          sub_100008904(&v34, *(v44 + 192), *(v44 + 200));
        }

        else
        {
          v34 = *(v44 + 192);
          v35 = *(v44 + 208);
        }
      }

      else
      {
        sub_100007E30(&v34, "");
      }
    }

    else
    {
      v18 = [*(a1 + 32) leftBudSerialNumber];
      sub_100007E30(&v34, [v18 UTF8String]);
    }

    v32[0] = 0;
    v32[1] = 0;
    v33 = 0;
    v19 = [*(a1 + 32) rightBudSerialNumber];
    if ([v19 length] < 2)
    {
      if (v8)
      {
        if (*(v44 + 239) < 0)
        {
          sub_100008904(v32, *(v44 + 216), *(v44 + 224));
        }

        else
        {
          *v32 = *(v44 + 216);
          v33 = *(v44 + 232);
        }
      }

      else
      {
        sub_100007E30(v32, "");
      }
    }

    else
    {
      v20 = [*(a1 + 32) rightBudSerialNumber];
      sub_100007E30(v32, [v20 UTF8String]);
    }

    v30[0] = 0;
    v30[1] = 0;
    v31 = 0;
    v21 = [*(a1 + 32) budsFirmwareVersion];
    if ([v21 length] < 2)
    {
      if (v8)
      {
        if (*(v44 + 263) < 0)
        {
          sub_100008904(v30, *(v44 + 240), *(v44 + 248));
        }

        else
        {
          *v30 = *(v44 + 240);
          v31 = *(v44 + 256);
        }
      }

      else
      {
        sub_100007E30(v30, "");
      }
    }

    else
    {
      v22 = [*(a1 + 32) budsFirmwareVersion];
      sub_100007E30(v30, [v22 UTF8String]);
    }

    v27 = 0;
    v28 = 0;
    v29 = 0;
    sub_100007E30(__p, "");
    sub_10034A52C(&v27, __p);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    sub_100338878(&v27, &__dst);
    sub_100338878(&v27, &v40);
    sub_100338878(&v27, &v38);
    if (v8)
    {
      if (*(v44 + 119) < 0)
      {
        sub_100008904(__p, *(v44 + 96), *(v44 + 104));
      }

      else
      {
        *__p = *(v44 + 96);
        v26 = *(v44 + 112);
      }
    }

    else
    {
      sub_100007E30(__p, "");
    }

    sub_10034A52C(&v27, __p);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
      if (v8)
      {
LABEL_63:
        if (*(v44 + 143) < 0)
        {
          sub_100008904(__p, *(v44 + 120), *(v44 + 128));
        }

        else
        {
          *__p = *(v44 + 120);
          v26 = *(v44 + 136);
        }

        goto LABEL_68;
      }
    }

    else if (v8)
    {
      goto LABEL_63;
    }

    sub_100007E30(__p, "");
LABEL_68:
    sub_10034A52C(&v27, __p);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    sub_100338878(&v27, &v36);
    if (v8)
    {
      if (*(v44 + 191) < 0)
      {
        sub_100008904(__p, *(v44 + 168), *(v44 + 176));
      }

      else
      {
        *__p = *(v44 + 168);
        v26 = *(v44 + 184);
      }
    }

    else
    {
      sub_100007E30(__p, "");
    }

    sub_10034A52C(&v27, __p);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(__p[0]);
    }

    sub_100338878(&v27, &v34);
    sub_100338878(&v27, v32);
    sub_100338878(&v27, v30);
    if (v8 && 0xAAAAAAAAAAAAAAABLL * ((v45 - v44) >> 3) >= 0xF)
    {
      sub_100338878(&v27, (v44 + 264));
      sub_100338878(&v27, (v44 + 288));
      sub_100338878(&v27, (v44 + 312));
      sub_100338878(&v27, (v44 + 336));
    }

    v23 = *(a1 + 40);
    memset(v24, 0, sizeof(v24));
    sub_10003E428(v24, v27, v28, 0xAAAAAAAAAAAAAAABLL * ((v28 - v27) >> 3));
    sub_100541A24(v23, v24);
    __p[0] = v24;
    sub_1000161FC(__p);
    __p[0] = &v27;
    sub_1000161FC(__p);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30[0]);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(v32[0]);
    }

    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36);
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(v38);
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(v40);
    }

    if (SHIBYTE(v43) < 0)
    {
      operator delete(__dst);
    }

    *&__dst = &v44;
    sub_1000161FC(&__dst);
    goto LABEL_95;
  }

  if (os_log_type_enabled(qword_100BCE960, OS_LOG_TYPE_ERROR))
  {
    sub_10084F990();
  }

LABEL_95:
}

void sub_1005F483C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (*(v50 - 153) < 0)
  {
    operator delete(*(v50 - 176));
  }

  if (*(v50 - 121) < 0)
  {
    operator delete(*(v50 - 144));
  }

  if (*(v50 - 89) < 0)
  {
    operator delete(*(v50 - 112));
  }

  *(v50 - 112) = v50 - 88;
  sub_1000161FC((v50 - 112));

  _Unwind_Resume(a1);
}

void sub_1005F4A24(id a1, BTCloudDevice *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    v6 = [(BTCloudDevice *)v4 nickname];
    v7 = [v6 length];

    if (v7)
    {
      v8 = qword_100BCE960;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [(BTCloudDevice *)v4 bluetoothAddress];
        v10 = [(BTCloudDevice *)v4 nickname];
        *buf = 138412546;
        v23 = v9;
        v24 = 2112;
        v25 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Cloud: Magic Settings Update Fetch Name for device: %@ - %@", buf, 0x16u);
      }

      v13 = sub_100432918(v11, v12);
      v14 = [(BTCloudDevice *)v4 bluetoothAddress];
      v15 = v14;
      sub_100007E30(v20, [v14 UTF8String]);
      v16 = [(BTCloudDevice *)v4 nickname];
      v17 = v16;
      sub_100007E30(__p, [v16 UTF8String]);
      (*(*v13 + 176))(v13, v20, __p);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      if (v21 < 0)
      {
        operator delete(v20[0]);
      }
    }
  }
}

void sub_1005F4D64(id a1, BTCloudSoundProfileRecord *a2, NSError *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = qword_100BCE8E8;
  v7 = os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT);
  if (!v4 || v5)
  {
    if (v7)
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BTAudioCloudSyncMonitor: Unable to fetch Spatial Profile:Error: %@", &v12, 0xCu);
    }

    if (qword_100B50940 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v7)
  {
    v12 = 138412546;
    v13 = 0;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BTAudioCloudSyncMonitor: fetched Spatial Profile:Error: %@ Profile %@", &v12, 0x16u);
  }

  v8 = [(BTCloudSoundProfileRecord *)v4 soundProfileData];
  v9 = v8 == 0;

  if (v9)
  {
    if (qword_100B50940 == -1)
    {
LABEL_15:
      sub_100639BFC(off_100B50938, 0);
      goto LABEL_16;
    }

LABEL_14:
    sub_10084FA10();
    goto LABEL_15;
  }

  if (qword_100B50940 != -1)
  {
    sub_10084FA10();
  }

  v10 = off_100B50938;
  v11 = [(BTCloudSoundProfileRecord *)v4 soundProfileData];
  sub_100639BFC(v10, v11);

LABEL_16:
}

void sub_1005F4F0C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1005F5224(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1005F5750(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[30];
    v6 = qword_100BCE8E8;
    v7 = os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Already Registered cloudkit.xpc service", buf, 2u);
      }
    }

    else
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Register cloudkit.xpc service", buf, 2u);
      }

      mach_service = xpc_connection_create_mach_service("com.apple.bluetooth.cloudkit.xpc", *(v4 + 43), 1uLL);
      v9 = *(v4 + 30);
      *(v4 + 30) = mach_service;

      v10 = *(v4 + 30);
      if (v10)
      {
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_1005F5900;
        handler[3] = &unk_100AE0B10;
        v12 = v4;
        xpc_connection_set_event_handler(v10, handler);
        xpc_connection_resume(*(v4 + 30));
      }

      else if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_ERROR))
      {
        sub_10084FB00();
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_1005F5C08(id a1, NSString *a2, NSDictionary *a3, BOOL *a4)
{
  v5 = a2;
  v6 = a3;
  v7 = qword_100BCE8E8;
  if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "statedump:        Address: %@ - Dict: %@", &v8, 0x16u);
  }
}

void sub_1005F6BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_1005F6C40(uint64_t a1)
{
  v2 = [*(a1 + 32) _generateCloudPairingIDWithResponse:*(a1 + 40) localKeys:*(a1 + 48) from:*(a1 + 56) forProtocolID:*(a1 + 64)];
  v3 = *(*(a1 + 72) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1005F8788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, atomic_uint *a52)
{
  if (a52)
  {
    sub_10000C808(a52);
  }

  _Unwind_Resume(a1);
}

void *sub_1005F8D00(void *a1)
{
  *a1 = &off_100B01470;
  v2 = a1[1];
  if (v2)
  {
    sub_10000C808(v2);
  }

  return a1;
}

void sub_1005F942C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  _Block_object_dispose((v18 - 128), 8);

  _Unwind_Resume(a1);
}

void sub_1005F94A4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v9 = [a3 objectForKeyedSubscript:@"IDSLocalID"];
  v10 = [v9 isEqualToString:*(a1 + 32)];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v11 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(*(a1 + 40) + 8) + 40);
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MUC - RSA found: %@", &v13, 0xCu);
    }

    *a4 = 1;
  }
}

void sub_1005F97C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  sub_10002249C(&a13);

  _Block_object_dispose(&a20, 8);
  _Unwind_Resume(a1);
}

void sub_1005F980C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v9 = [a3 objectForKeyedSubscript:@"IDSLocalID"];
  v10 = [v9 isEqualToString:*(a1 + 32)];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v11 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(*(a1 + 40) + 8) + 40);
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MUC - RSA found: %@", &v13, 0xCu);
    }

    *a4 = 1;
  }
}

void sub_1005F9A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1005F9AA0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:*(a1 + 32)])
  {
    v7 = [v6 objectForKeyedSubscript:@"IRK"];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = qword_100BCE8E8;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 objectForKeyedSubscript:@"IRK"];
      v12 = *(a1 + 32);
      v13 = 138412546;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MUC - IRK: %@ found for RSA: %@", &v13, 0x16u);
    }
  }
}

void sub_1005F9DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_10002249C(&a13);

  _Unwind_Resume(a1);
}

void sub_1005FA0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10002249C(va);

  _Unwind_Resume(a1);
}

void sub_1005FA28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_1005FA2C8(uint64_t a1)
{
  v2 = [*(a1 + 32) _getPairedDeviceForIDSIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1005FA974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40)
{
  _Block_object_dispose((v43 - 160), 8);

  _Unwind_Resume(a1);
}

void sub_1005FAA84(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v9 = [a3 objectForKeyedSubscript:@"IDSLocalID"];
  v10 = [v9 isEqualToString:*(a1 + 32)];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v11 = qword_100BCE8E8;
    if (os_log_type_enabled(qword_100BCE8E8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(*(*(a1 + 40) + 8) + 40);
      v13 = 138412290;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MUC - RSA found: %@", &v13, 0xCu);
    }

    *a4 = 1;
  }
}

void sub_1005FAD88(_Unwind_Exception *a1)
{
  v5 = v2;

  _Unwind_Resume(a1);
}

uint64_t sub_1005FBA94(uint64_t a1)
{
  *a1 = &off_100B01390;
  sub_100046348(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_1005FBAE0(uint64_t a1)
{
  *a1 = &off_100B01390;
  sub_100046348(a1 + 16, *(a1 + 24));

  operator delete();
}

void sub_1005FBDBC(void *a1)
{
  *a1 = &off_100B01470;
  v1 = a1[1];
  if (v1)
  {
    sub_10000C808(v1);
  }

  operator delete();
}

uint64_t sub_1005FC878(uint64_t a1, uint64_t a2)
{
  if (qword_100B6F680 != -1)
  {
    sub_100850268();
  }

  return byte_100B6F688;
}

uint64_t sub_1005FC8F4(uint64_t a1, uint64_t a2)
{
  if (qword_100B6F690 != -1)
  {
    sub_10085027C();
  }

  return byte_100B6F698;
}

uint64_t sub_1005FC95C(uint64_t a1, uint64_t a2)
{
  if (qword_100B6F6A0 != -1)
  {
    sub_100850290();
  }

  return byte_100B6F6A8;
}

uint64_t sub_1005FC9D8(uint64_t a1, uint64_t a2)
{
  if (qword_100B6F6B0 != -1)
  {
    sub_1008502A4();
  }

  return byte_100B6F6B8;
}

uint64_t sub_1005FCA90(uint64_t a1, uint64_t a2)
{
  if (qword_100B6F6C0 != -1)
  {
    sub_1008502B8();
  }

  return byte_100B6F6C8;
}

uint64_t sub_1005FCB28(uint64_t a1, uint64_t a2)
{
  if (qword_100B6F6E0 != -1)
  {
    sub_1008502E0();
  }

  return byte_100B6F6E8;
}

void sub_1005FCB60(id a1)
{
  v1 = NSClassFromString(@"BMDeviceBluetoothGATTSession");
  byte_100B6F6E8 = v1 != 0;
  if (!v1 && os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
  {
    sub_1008502F4();
  }
}

void sub_1005FCBC4(id a1)
{
  v1 = NSClassFromString(@"BMDeviceBluetooth");
  byte_100B6F6F8 = v1 != 0;
  if (!v1 && os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
  {
    sub_10085033C();
  }
}

uint64_t sub_1005FCC28(uint64_t a1, uint64_t a2)
{
  if (qword_100B6F700 != -1)
  {
    sub_100850370();
  }

  return byte_100B6F708;
}

void sub_1005FCC60(id a1)
{
  v1 = NSClassFromString(@"BMDeviceBluetoothPowerEnabled");
  byte_100B6F708 = v1 != 0;
  if (!v1 && os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
  {
    sub_100850384();
  }
}

uint64_t sub_1005FCCC4(uint64_t a1, uint64_t a2)
{
  if (qword_100B6F710 != -1)
  {
    sub_1008503B8();
  }

  return byte_100B6F718;
}

uint64_t sub_1005FCD2C(uint64_t a1, uint64_t a2)
{
  if (qword_100B6F720 != -1)
  {
    sub_1008503CC();
  }

  return byte_100B6F728;
}

uint64_t sub_1005FCD94(uint64_t a1, uint64_t a2)
{
  if (qword_100B6F730 != -1)
  {
    sub_1008503E0();
  }

  return byte_100B6F738;
}

void sub_1005FCDCC(id a1)
{
  v1 = NSClassFromString(@"RDEstimate");
  byte_100B6F738 = v1 != 0;
  if (!v1 && os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
  {
    sub_1008503F4();
  }
}

uint64_t sub_1005FCE30(uint64_t a1, uint64_t a2)
{
  if (qword_100B6F740 != -1)
  {
    sub_100850428();
  }

  return byte_100B6F748;
}

void sub_1005FCE68(id a1)
{
  v1 = NSClassFromString(@"APSubject");
  byte_100B6F748 = v1 != 0;
  if (!v1 && os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
  {
    sub_10085043C();
  }
}

uint64_t sub_1005FCECC(uint64_t a1, uint64_t a2)
{
  if (qword_100B6F750 != -1)
  {
    sub_100850470();
  }

  return byte_100B6F758;
}

void sub_1005FCF04(id a1)
{
  v1 = NSClassFromString(@"MOSystemEffectiveSettingsStore");
  byte_100B6F758 = v1 != 0;
  if (!v1 && os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
  {
    sub_100850484();
  }
}

uint64_t sub_1005FCF68(uint64_t a1, uint64_t a2)
{
  if (qword_100B6F760 != -1)
  {
    sub_1008504B8();
  }

  return byte_100B6F768;
}

uint64_t sub_1005FCFD0(uint64_t a1, uint64_t a2)
{
  if (qword_100B6F770 != -1)
  {
    sub_1008504CC();
  }

  return byte_100B6F778;
}

uint64_t sub_1005FD038(uint64_t a1, uint64_t a2)
{
  if (qword_100B6F780 != -1)
  {
    sub_1008504E0();
  }

  return byte_100B6F788;
}

void sub_1005FD070(id a1)
{
  v1 = NSClassFromString(@"AVSystemController");
  byte_100B6F788 = v1 != 0;
  if (!v1 && os_log_type_enabled(qword_100BCEAD0, OS_LOG_TYPE_ERROR))
  {
    sub_1008504F4();
  }
}

uint64_t sub_1005FD0D4(uint64_t a1, char a2, char a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  *(a1 + 56) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a2;
  *(a1 + 1) = a3;
  v16 = [[NSUUID alloc] initWithUUIDString:v15];
  v17 = *(a1 + 56);
  *(a1 + 56) = v16;

  *(a1 + 48) = a7;
  v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v19 = dispatch_queue_create(0, v18);
  *(a1 + 32) = 0;
  *(a1 + 8) = v19;
  *(a1 + 40) = 0;
  if (v13)
  {
    operator new();
  }

  if (v14)
  {
    operator new();
  }

  return a1;
}

void sub_1005FD64C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

uint64_t sub_1005FD6F8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    operator delete();
  }

  if (*(a1 + 40))
  {
    operator delete();
  }

  return a1;
}

void sub_1005FD764(unsigned __int8 *a1)
{
  v2 = [gCBDaemonServer stackAdaptor];
  v3 = [v2 isoStreamClass];

  v11 = 0;
  sub_1000216B4(&v11);
  v4 = sub_10025581C(*a1, a1[1]);
  sub_100022214(&v11);
  if (v4)
  {
    if (*(a1 + 4))
    {
      v5 = [objc_msgSend(v3 "alloc")];
      v6 = *(a1 + 2);
      *(a1 + 2) = v5;
    }

    v7 = qword_100BCEA50;
    if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 7) UUIDString];
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Activating Input ISO Stream", buf, 0xCu);
    }

    v9 = *(a1 + 2);
    if (v9)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1005FD968;
      v10[3] = &unk_100AFC848;
      v10[4] = a1;
      [v9 activateWithCompletion:v10];
    }
  }

  else if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR))
  {
    sub_100850528();
  }

  sub_10002249C(&v11);
}

void sub_1005FD930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_10002249C(&a17);

  _Unwind_Resume(a1);
}

void sub_1005FD968(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCEA50;
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR))
    {
      sub_100850568();
    }
  }

  else
  {
    v5 = *(a1 + 32);
    if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successful activation of Input ISO Stream", v6, 2u);
    }

    *(v5 + 2) = 1;
  }
}

void sub_1005FDA18(unsigned __int8 *a1)
{
  v2 = [gCBDaemonServer stackAdaptor];
  v3 = [v2 isoStreamClass];

  v12 = 0;
  sub_1000216B4(&v12);
  v4 = sub_10025581C(*a1, a1[1]);
  sub_100022214(&v12);
  if (v4 && *(a1 + 5))
  {
    v5 = [objc_msgSend(v3 "alloc")];
    v6 = *(a1 + 3);
    *(a1 + 3) = v5;

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1005FDC50;
    v11[3] = &unk_100B016C0;
    v11[4] = a1;
    [*(a1 + 3) setReadHandler:v11];
  }

  v7 = qword_100BCEA50;
  if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 7) UUIDString];
    *buf = 138412290;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Activating Output ISO Stream", buf, 0xCu);
  }

  v9 = *(a1 + 3);
  if (v9)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1005FDD5C;
    v10[3] = &unk_100AFC848;
    v10[4] = a1;
    [v9 activateWithCompletion:v10];
  }

  sub_10002249C(&v12);
}

void sub_1005FDC18(_Unwind_Exception *a1)
{
  sub_10002249C((v2 - 81));

  _Unwind_Resume(a1);
}

void sub_1005FDC50(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    sub_1005FDCD8(*(a1 + 32), [v3 bytes], objc_msgSend(v3, "length"));
  }
}

uint64_t sub_1005FDCD8(uint64_t result, char *a2, size_t a3)
{
  if (*(result + 2) == 1)
  {
    v3 = result;
    result = *(*(result + 48) + 24);
    if (result)
    {
      result = sub_10077EA1C(result);
      if (result)
      {
        v6 = *(*(v3 + 48) + 24);

        return sub_1003A3150(v6, a2, a3, 0);
      }
    }
  }

  return result;
}

void sub_1005FDD5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_100BCEA50;
  if (v3)
  {
    if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR))
    {
      sub_1008505DC();
    }
  }

  else
  {
    v5 = *(a1 + 32);
    if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Successful activation of Output ISO Stream", v6, 2u);
    }

    *(v5 + 2) = 1;
  }
}

id sub_1005FDE0C(uint64_t a1)
{
  v2 = qword_100BCEA50;
  if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 56) UUIDString];
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%@ Deactivating ISO Stream", &v6, 0xCu);
  }

  *(a1 + 2) = 0;
  v4 = *(a1 + 24);
  if (v4)
  {
    [v4 invalidate];
  }

  result = *(a1 + 16);
  if (result)
  {
    return [result invalidate];
  }

  return result;
}

void sub_1005FDEE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 2) == 1)
  {
    v6 = objc_alloc_init(CBISOWriteRequest);
    v7 = [NSData dataWithBytes:a2 length:a3];
    [v6 setData:v7];

    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1005FE014;
    v8[3] = &unk_100ADF8F8;
    v8[4] = a3;
    [v6 setCompletionHandler:v8];
    [*(a1 + 16) writeWithRequest:v6];
  }

  else if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR))
  {
    sub_100850650();
  }
}

void sub_1005FE014(uint64_t a1)
{
  v2 = qword_100BCEA50;
  if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEBUG))
  {
    sub_100850690(a1, v2);
  }
}

uint64_t sub_1005FE060(uint64_t a1, const unsigned __int8 *a2)
{
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = a1 + 8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 72) = 0;
  uuid_copy((a1 + 80), a2);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  sub_100044BBC((a1 + 224));
  return a1;
}

void sub_1005FE0D8(_Unwind_Exception *a1)
{
  v5 = v3;
  v7 = *v5;
  if (*v5)
  {
    *(v1 + 176) = v7;
    operator delete(v7);
  }

  sub_10000CEDC(v2, *(v1 + 64));
  if (*(v1 + 55) < 0)
  {
    operator delete(*v4);
  }

  sub_10000CEDC(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_1005FE12C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = (a1 + 8);
    v3 = *a1;
    if (*a1 != a1 + 8)
    {
      do
      {
        v4 = v3[5];
        if (v4)
        {
          sub_1005FD6F8(v4);
          operator delete();
        }

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

      while (v6 != v2);
    }
  }

  sub_10007A068(a1 + 224);
  v8 = *(a1 + 168);
  if (v8)
  {
    *(a1 + 176) = v8;
    operator delete(v8);
  }

  sub_10000CEDC(a1 + 56, *(a1 + 64));
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  sub_10000CEDC(a1, *(a1 + 8));
  return a1;
}

void sub_1005FE210(uint64_t a1, void *a2)
{
  v15 = a2;
  v16 = [v15 objectForKeyedSubscript:@"kCodecIDArray"];
  v20 = [v15 objectForKeyedSubscript:@"kSinkCodecConfigArray"];
  v17 = [v15 objectForKeyedSubscript:@"kSourceCodecConfigArray"];
  v23 = [v15 objectForKeyedSubscript:@"kSinkAudioLocations"];
  v22 = [v15 objectForKeyedSubscript:@"kSourceAudioLocations"];
  v21 = [v15 objectForKeyedSubscript:@"kCoordinatedSetSize"];
  v19 = [v15 objectForKeyedSubscript:@"kDeviceIdentifier"];
  v18 = [v15 objectForKeyedSubscript:@"kDeviceName"];
  sub_100007E30(&v30, [v18 UTF8String]);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  *(a1 + 32) = v30;
  *(a1 + 48) = v31;
  if (v20)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v3 = v20;
    v4 = [v3 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v4)
    {
      v5 = *v27;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v27 != v5)
          {
            objc_enumerationMutation(v3);
          }

          switch([*(*(&v26 + 1) + 8 * i) unsignedIntValue])
          {
            case 0u:
              LODWORD(v30) = 513;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 1u:
              LODWORD(v30) = 514;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 2u:
              LODWORD(v30) = 515;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 3u:
              LODWORD(v30) = 516;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 4u:
              LODWORD(v30) = 517;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 5u:
              LODWORD(v30) = 518;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 6u:
              LODWORD(v30) = 519;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 7u:
              LODWORD(v30) = 520;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 8u:
              LODWORD(v30) = 521;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 9u:
              LODWORD(v30) = 522;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 0xAu:
              LODWORD(v30) = 523;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 0xBu:
              LODWORD(v30) = 524;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 0xCu:
              LODWORD(v30) = 525;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 0xDu:
              LODWORD(v30) = 526;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 0xEu:
              LODWORD(v30) = 527;
              sub_10036F480((a1 + 168), &v30);
              break;
            case 0xFu:
              LODWORD(v30) = 528;
              sub_10036F480((a1 + 168), &v30);
              break;
            default:
              v7 = qword_100BCEA50;
              if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR))
              {
                sub_10085070C(&buf, v25, v7);
              }

              break;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v4);
    }
  }

  if ([v23 unsignedIntValue])
  {
    if (!v23 || [v23 unsignedIntValue] == -1)
    {
      v10 = 0;
    }

    else
    {
      v8.i32[0] = [v23 unsignedIntValue];
      v9 = vcnt_s8(v8);
      v9.i16[0] = vaddlv_u8(v9);
      v10 = v9.i32[0];
    }
  }

  else
  {
    v10 = 1;
  }

  if ([v22 unsignedIntValue])
  {
    if (!v22 || [v22 unsignedIntValue] == -1)
    {
      v13 = 0;
    }

    else
    {
      v11.i32[0] = [v22 unsignedIntValue];
      v12 = vcnt_s8(v11);
      v12.i16[0] = vaddlv_u8(v12);
      v13 = v12.i32[0];
    }
  }

  else
  {
    v13 = 1;
  }

  if (v21 && v23 && v10 < [v21 unsignedIntValue])
  {
    v10 *= [v21 unsignedIntValue];
  }

  *(a1 + 152) = v10;
  *(a1 + 156) = v13;
  v14 = [[NSUUID alloc] initWithUUIDString:v19];
  sub_1005FE828(a1, v14);
}

void sub_1005FE828(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = 0;
  v8[1] = 0;
  sub_100007F88(v8, a1 + 224);
  v4 = qword_100BCEA50;
  if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEFAULT))
  {
    memset(out, 0, 37);
    uuid_unparse_upper((a1 + 80), out);
    sub_100007E30(__p, out);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 138412546;
    v10 = v3;
    v11 = 2080;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Adding LECA Device %@ to Session %s", buf, 0x16u);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10004DFB4(out, v3);
  sub_100506A24((a1 + 56), out, out);
  sub_1000088CC(v8);
}

void sub_1005FE968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_1000088CC(va);

  _Unwind_Resume(a1);
}

void sub_1005FE994(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_1005FECF8(a1);
  [v3 valueForKey:@"kLEAudioXPCMsgArgCISProperties"];
  obj = memset(v5, 0, sizeof(v5));
  if ([obj countByEnumeratingWithState:v5 objects:v6 count:16])
  {
    operator new();
  }
}

void sub_1005FECF8(uint64_t a1)
{
  v2 = (a1 + 8);
  v3 = *a1;
  if (*a1 != a1 + 8)
  {
    do
    {
      v4 = v3[5];
      if (v4)
      {
        sub_1005FD6F8(v4);
        operator delete();
      }

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

    while (v6 != v2);
  }

  sub_10000CEDC(a1, *(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v2;
}

void sub_1005FEDA0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = 0;
  v6[1] = 0;
  sub_100007F88(v6, a1 + 224);
  v5 = *(a1 + 56);
  v4 = (a1 + 56);
  if (v5 == v4 + 1)
  {
    if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_ERROR))
    {
      sub_10085078C();
    }
  }

  else
  {
    sub_10004DFB4(v7, v3);
    sub_1005FF2F0(v4, v7);
  }

  sub_1000088CC(v6);
}

void sub_1005FEEA8(void *a1, uint64_t a2, unint64_t a3)
{
  v3 = a1[2];
  if (v3)
  {
    v4 = a1 + 1;
    v5 = *a1;
    if (*a1 != a1 + 1)
    {
      v7 = 0;
      v8 = a3 / v3;
      do
      {
        v9 = v5[5];
        if (v9)
        {
          sub_1005FDEE8(v9, a2 + v7 * v8, v8);
        }

        v10 = v5[1];
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
            v11 = v5[2];
            v12 = *v11 == v5;
            v5 = v11;
          }

          while (!v12);
        }

        ++v7;
        v5 = v11;
      }

      while (v11 != v4);
    }
  }
}

void sub_1005FEF4C(void *a1)
{
  v2 = qword_100BCEA50;
  if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "void BT::LEConnectedAudioSession::removeISODataPaths()";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s", &v9, 0xCu);
  }

  v5 = *a1;
  v3 = a1 + 1;
  v4 = v5;
  if (v5 != v3)
  {
    do
    {
      sub_1005FDE0C(v4[5]);
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

    while (v7 != v3);
  }
}

void sub_1005FF044(void *a1, int a2, int a3, int a4)
{
  v8 = qword_100BCEA50;
  if (os_log_type_enabled(qword_100BCEA50, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "void BT::LEConnectedAudioSession::createISODataPaths(BOOL, uint8_t, uint8_t)";
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s", &v16, 0xCu);
  }

  v11 = *a1;
  v10 = a1 + 1;
  v9 = v11;
  if (v11 != v10)
  {
    while (1)
    {
      v12 = v9[5];
      if (*v12 == a3 && v12[1] == a4)
      {
        break;
      }

      v13 = v9[1];
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
          v14 = v9[2];
          v15 = *v14 == v9;
          v9 = v14;
        }

        while (!v15);
      }

      v9 = v14;
      if (v14 == v10)
      {
        return;
      }
    }

    if (a2)
    {
      sub_1005FD764(v12);
    }

    else
    {
      sub_1005FDA18(v12);
    }
  }
}

uint64_t *sub_1005FF21C(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
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

uint64_t sub_1005FF2F0(uint64_t **a1, unsigned __int8 *a2)
{
  v3 = sub_1005FF344(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_10002717C(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t sub_1005FF344(uint64_t a1, unsigned __int8 *uu2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = uuid_compare((v3 + 25), uu2);
    if (v6 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2 || uuid_compare(uu2, (v5 + 25)) < 0)
  {
    return v2;
  }

  return v5;
}

uint64_t sub_1005FF3C0(uint64_t a1)
{
  v2 = sub_100589578(a1, "HandsfreeService", 1);
  *v2 = off_100B016F0;
  sub_100044BBC((v2 + 328));
  *(a1 + 392) = 0;
  sub_100044BBC((a1 + 400));
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 480) = 0;
  *(a1 + 488) = a1 + 496;
  sub_100044BBC((a1 + 512));
  if (qword_100B50AD0 != -1)
  {
    sub_1008507CC();
  }

  v3 = off_100B50AC8;
  *(a1 + 392) = off_100B50AC8;
  sub_100589880(a1, v3);
  return a1;
}

void sub_1005FF470(_Unwind_Exception *a1)
{
  sub_10007A068(v1 + 512);
  sub_10000CEDC(v1 + 488, *v2);
  v4 = *(v1 + 464);
  if (v4)
  {
    *(v1 + 472) = v4;
    operator delete(v4);
  }

  sub_10007A068(v1 + 400);
  sub_10007A068(v1 + 328);
  sub_100589670(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005FF4D4(uint64_t a1, uint64_t a2)
{
  v15 = xmmword_1008AA7C0;
  memset(v17, 0, sizeof(v17));
  v14 = 0;
  v13 = 0;
  if (sub_10053C3E8(a2))
  {
    if (sub_10053A020(a2, &v15, 4u))
    {
      v4 = 4;
    }

    else
    {
      v4 = 1;
    }

    goto LABEL_24;
  }

  v5 = sub_10054BE34(a2, v17, &v14);
  if (v14)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = sub_10024A9C0(v17, 4382, &v13) == 0;
LABEL_20:
    v9 = v7;
    v4 = 4 * v9;
    goto LABEL_24;
  }

  if (qword_100B508E0 != -1)
  {
    sub_1008507E0();
  }

  if (!sub_100518294(off_100B508D8, a2))
  {
    v7 = sub_1000DFB74(a2, 1u) == 4;
    goto LABEL_20;
  }

  LODWORD(v12) = 0;
  sub_1005379CC(a2, &v12);
  if ((v12 & 0x1F00) == 0x400)
  {
    v8 = 4;
  }

  else
  {
    v8 = 1;
  }

  if (v12)
  {
    v4 = v8;
  }

  else
  {
    v4 = 0;
  }

LABEL_24:
  v10 = *(a1 + 32);
  v16 = 0;
  sub_100016250(&v16);
  *&v12 = v16;
  *(&v12 + 1) = SWORD2(v16);
  return sub_100539554(a2, v10, v4, &v12, 0);
}

uint64_t sub_1005FF688(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v10 = 0;
  v11 = xmmword_1008AA7C0;
  memset(v12, 0, sizeof(v12));
  v9 = 0;
  v8 = 0;
  *a3 = 0;
  if (sub_10053C3E8(a2))
  {
    result = sub_10053A020(a2, &v11, 4u);
    if ((result & 1) == 0)
    {
      return result;
    }

LABEL_17:
    *a3 = 1;
    return result;
  }

  if (sub_10054BE34(a2, v12, &v9))
  {
    if (v9)
    {
      result = sub_10024A9C0(v12, 4382, &v8);
      if (!result)
      {
        goto LABEL_17;
      }
    }
  }

  result = sub_1005379CC(a2, &v10);
  if (result && (v10 & 0x200000) != 0)
  {
    v6 = v10 & 0x1F00;
    v7 = (v10 & 0xFC) != 0x1C && v6 == 1024;
    if (v7 || (v10 & 0x1FFC) == 0x118 || v6 == 1792 && ((v10 & 0xF4) == 4 || (v10 & 0xF8) == 0x10))
    {
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t sub_1005FF7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  result = sub_10058BB40(a1, a2, a3, a4, a5);
  if (!v5)
  {
    if (sub_10053F310(a2))
    {
      sub_10053F420(a2);
    }

    if (*(a2 + 580) == 1)
    {
      *(a2 + 580) = 0;
    }

    if (qword_100B508E0 != -1)
    {
      sub_100850808();
    }

    result = sub_100518294(off_100B508D8, a2);
    if (result)
    {
      if (qword_100B508E0 != -1)
      {
        sub_100850808();
      }

      v8 = off_100B508D8;

      return sub_100518C44(v8, a2);
    }
  }

  return result;
}

uint64_t sub_1005FF8A8(uint64_t a1, uint64_t a2, char *__s1, _BYTE *a4)
{
  if (__s1 && a4)
  {
    if (!strncmp(__s1, "com.apple.BT.VoiceCommand.State", 0x1FuLL))
    {
      result = *(a1 + 392);
      if (!result)
      {
        return result;
      }

      sub_1005D7B4C(result, a2, a4);
    }

    else if (!strncmp(__s1, "BT_KEY_ALLOW_SCO_FOR_TBT", 0x18uLL))
    {
      sub_10054288C(a2, *a4 != 0);
    }

    return 0;
  }

  else
  {
    v8 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10083C3D4(v8);
    }

    return 1;
  }
}

uint64_t sub_1005FF974(uint64_t a1, unint64_t a2, char *__s1, __int16 *a4)
{
  if (!__s1 || !a4)
  {
    v9 = qword_100BCE8F8;
    if (os_log_type_enabled(qword_100BCE8F8, OS_LOG_TYPE_ERROR))
    {
      sub_10083C3D4(v9);
    }

    return 1;
  }

  if (!strncmp(__s1, "BT_KEY_HFP_AG_ECNR_STATE", 0x18uLL))
  {
    v11 = sub_1005D09A8(*(a1 + 392), a2);
    if (v11)
    {
      v8 = sub_100320DF4(v11 + 400);
      goto LABEL_19;
    }

    return 1;
  }

  if (!strncmp(__s1, "BT_KEY_SIRI_EYESFREE_MODE", 0x19uLL))
  {
    if (qword_100B54090 != -1)
    {
      sub_10085081C();
    }

    v8 = sub_100389FF8(qword_100B54088, a2);
    goto LABEL_19;
  }

  if (!strncmp(__s1, "BT_KEY_SIRI_AUDIO_STATE", 0x17uLL))
  {
    if (qword_100B54090 != -1)
    {
      sub_10085081C();
    }

    v8 = sub_10038A088(qword_100B54088, a2);
    goto LABEL_19;
  }

  if (strncmp(__s1, "BT_KEY_ALLOW_SCO_FOR_TBT", 0x18uLL))
  {
    return 1;
  }

  v8 = sub_100542884(a2);
LABEL_19:
  v12 = v8;
  result = 0;
  if (v12)
  {
    v13 = 49;
  }

  else
  {
    v13 = 48;
  }

  *a4 = v13;
  return result;
}

void sub_1005FFAD8(uint64_t a1)
{
  sub_1005FFB10(a1);

  operator delete();
}

uint64_t sub_1005FFB10(uint64_t a1)
{
  *a1 = off_100B016F0;
  sub_10007A068(a1 + 512);
  sub_10000CEDC(a1 + 488, *(a1 + 496));
  v2 = *(a1 + 464);
  if (v2)
  {
    *(a1 + 472) = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 400);
  sub_10007A068(a1 + 328);

  return sub_100589670(a1);
}

void sub_1005FFD94(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = BTVCLinkScanner;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_1005FFFBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_10060018C(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 184), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = (*(a1 + 32) + 192);

  objc_storeStrong(v3, v2);
}

double sub_100600248(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = 0;
  }

  result = *(a1 + 40);
  *(*(a1 + 32) + 224) = result;
  return result;
}

void sub_10060088C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1006008B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "[BTVCLinkScanner _scanEnable:]_block_invoke";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%s startRetrier\n", &v3, 0xCu);
  }

  [WeakRetained _restartIfNeeded:1];
}

_BYTE *sub_100600D28(uint64_t a1)
{
  *(*(a1 + 32) + 72) = 0;
  result = *(a1 + 32);
  if (result[9] == 1 && (result[11] & 1) == 0)
  {
    return [result _restartIfNeeded];
  }

  return result;
}

void sub_100600E28(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);

  _Unwind_Resume(a1);
}

_BYTE *sub_100600E44(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  result = *(a1 + 32);
  if ((result[72] & 1) == 0)
  {

    return [result _restartIfNeeded];
  }

  return result;
}

const char *sub_100600EAC(unint64_t a1)
{
  if (a1 > 5)
  {
    return "?";
  }

  else
  {
    return off_100B01858[a1];
  }
}

void sub_1006017D4(uint64_t *a1, uint64_t a2)
{
  v6 = 0;
  sub_1003A5864(*a1, &v6);
  if (!v6 || ((v3 = *(a1[1] + 8)) != 0 ? (v4 = v3 == 2) : (v4 = 1), v4))
  {
    operator new();
  }

  if (v3 == 1)
  {
    operator new();
  }

  v5 = a1[3];
  if (v5)
  {
    sub_10036470C(v5);
  }
}

const char *sub_1006018C8(unsigned int a1)
{
  if (a1 > 5)
  {
    return "??";
  }

  else
  {
    return off_100B01E98[a1];
  }
}

uint64_t sub_1006018EC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != 2)
  {
    if (v2 != 3 || *v1 != 83)
    {
      return 0;
    }

    v3 = v1[1];
    if (v3 != 214)
    {
      if (v3 == 213)
      {
        v4 = v1[2];
        goto LABEL_11;
      }

      return 0;
    }

    v8 = v1[2];
LABEL_22:
    result = 1;
    if (v8 > 44)
    {
      if (v8 != 45 && v8 != 48)
      {
        return 0;
      }

      return result;
    }

    if (v8)
    {
      if (v8 != 10)
      {
        return 0;
      }

      return result;
    }

    return 2;
  }

  if (*a1 != 5)
  {
    return 0;
  }

  v5 = *v1;
  if (v5 == 214)
  {
    v8 = v1[1];
    goto LABEL_22;
  }

  if (v5 != 213)
  {
    return 0;
  }

  v4 = v1[1];
LABEL_11:
  result = 1;
  if (v4 > 11)
  {
    if (v4 != 12 && v4 != 15)
    {
      return 0;
    }

    return result;
  }

  if (!v4)
  {
    return 2;
  }

  if (v4 != 7)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1006019C4(uint64_t a1)
{
  sub_10032F49C(a1, 10);
  *a1 = off_100B01898;
  *(a1 + 256) = off_100B019B8;
  *(a1 + 264) = off_100B019F0;
  *(a1 + 272) = off_100B01A18;
  *(a1 + 280) = &off_100B01A58;
  *(a1 + 288) = off_100B01A70;
  *(a1 + 296) = off_100B01AA0;
  *(a1 + 304) = &off_100B01B60;
  *(a1 + 312) = off_100B01B78;
  *(a1 + 320) = &off_100B01BB8;
  *(a1 + 328) = &off_100B01BD0;
  *(a1 + 336) = off_100B01BE8;
  sub_100044BBC((a1 + 344));
  *(a1 + 408) = 0;
  *(a1 + 508) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 512) = 0u;
  sub_100044BBC((a1 + 544));
  sub_100364534((a1 + 608));
  *(a1 + 664) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 656) = 0;
  *(a1 + 660) = 0;
  *(a1 + 672) = a1 + 680;
  return a1;
}

void sub_100601BC4(_Unwind_Exception *a1)
{
  sub_10007A068(v1 + 544);

  sub_1003617DC((v1 + 440));
  v3 = *(v1 + 416);
  if (v3)
  {
    *(v1 + 424) = v3;
    operator delete(v3);
  }

  sub_10007A068(v1 + 344);
  sub_10032F580(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100601C24(uint64_t a1)
{
  *a1 = off_100B01898;
  *(a1 + 256) = off_100B019B8;
  *(a1 + 264) = off_100B019F0;
  *(a1 + 272) = off_100B01A18;
  *(a1 + 280) = &off_100B01A58;
  *(a1 + 288) = off_100B01A70;
  *(a1 + 296) = off_100B01AA0;
  *(a1 + 304) = &off_100B01B60;
  *(a1 + 312) = off_100B01B78;
  *(a1 + 320) = &off_100B01BB8;
  *(a1 + 328) = &off_100B01BD0;
  *(a1 + 336) = off_100B01BE8;
  sub_10060F8E8(a1 + 672, *(a1 + 680));

  sub_1003645A0((a1 + 608));
  sub_10007A068(a1 + 544);

  sub_1003617DC((a1 + 440));
  v2 = *(a1 + 416);
  if (v2)
  {
    *(a1 + 424) = v2;
    operator delete(v2);
  }

  sub_10007A068(a1 + 344);

  return sub_10032F580(a1);
}

void sub_100601E3C(uint64_t a1)
{
  sub_100601C24(a1);

  operator delete();
}

void sub_100601E74(uint64_t a1)
{
  sub_100601C24(a1 - 264);

  operator delete();
}