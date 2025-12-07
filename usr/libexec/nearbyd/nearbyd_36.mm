void sub_100258E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  v19 = *(v17 - 96);
  if (v19)
  {
    *(v17 - 88) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_100258EC8(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100258F40;
  v3[3] = &unk_100998F28;
  v3[4] = a1;
  v4 = a2;
  dispatch_async(v2, v3);
}

void sub_100258F40(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 1698))
  {
    v2 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: activation and matching is already in progress", v13, 2u);
    }
  }

  else if (*(v1 + 1697) == 1 && *(v1 + 1696) == 1)
  {
    v4 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PRRose activate: rose and rose service are already matched", buf, 2u);
    }

    sub_100258630(v1, *(a1 + 40));
  }

  else
  {
    v5 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PRRose activate: registering for a matching service", v14, 2u);
    }

    *(v1 + 1698) = 1;
    v6 = IONotificationPortCreate(kIOMainPortDefault);
    *(v1 + 1688) = v6;
    if (v6)
    {
      IONotificationPortSetDispatchQueue(v6, *(v1 + 8));
      v7 = *(v1 + 1688);
      v8 = IOServiceNameMatching("rose");
      IOServiceAddMatchingNotification(v7, "IOServiceFirstMatch", v8, sub_1002582B8, v1, (v1 + 1676));
      v9 = *(v1 + 1688);
      v10 = IOServiceNameMatching("rose-supervisor");
      IOServiceAddMatchingNotification(v9, "IOServiceFirstMatch", v10, sub_1002582B8, v1, (v1 + 1680));
      sub_1002582B8(v1, *(v1 + 1676));
      sub_1002582B8(v1, *(v1 + 1680));
    }

    else
    {
      sub_1004B1CA4();
      sub_10025911C(v11, v12);
    }
  }
}

const char *sub_10025911C(uint64_t a1, int a2)
{
  if ((a2 - 1) > 0xA)
  {
    return "UnknownToHost";
  }

  else
  {
    return off_1009A1080[a2 - 1];
  }
}

id sub_100259144()
{
  memset(v9, 0, sizeof(v9));
  v8 = 37;
  if (sysctlbyname("kern.bootsessionuuid", v9, &v8, 0, 0))
  {
    v0 = 0;
  }

  else
  {
    v0 = [NSString stringWithUTF8String:v9];
  }

  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 stringForKey:@"PRRoseUnrecoverableErrorBootUUID"];

  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 integerForKey:@"PRRoseUnrecoverableErrorReason"];

  if (!v0 || !v2 || ((v5 = [v2 isEqualToString:v0], v4 < 3) ? (v6 = v5) : (v6 = 0), (v6 & 1) == 0))
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1002592B0(uint64_t a1)
{
  v2 = 0;
  if ((sub_10047A0C8(a1 + 40, &v2) & 1) == 0 && os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B1CBC();
  }

  return v2;
}

NSDictionary *__cdecl sub_100259310(id a1)
{
  v4 = @"UpdateFailed";
  v1 = [NSNumber numberWithBool:1];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_1002593D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10026A500;
  block[3] = &unk_10099CF08;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t sub_100259470(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 7;
  return (*(v1 + 16))();
}

void sub_1002594BC(uint64_t a1, void *a2, __int128 *a3)
{
  v6 = qword_1009F2630;
  v7 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    v8 = atomic_load((a1 + 1240));
    *buf = 136315394;
    v37 = sub_10025911C(v7, v8);
    v38 = 2080;
    v39 = sub_100261E38(v37, a2);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRRose::setState, currState: [%s], event: [%s]", buf, 0x16u);
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  v9 = atomic_load((a1 + 1240));
  if (v9 <= 5)
  {
    if (v9 <= 2)
    {
      if (v9)
      {
        if (v9 == 1)
        {
          if (*(a3 + 23) < 0)
          {
            sub_1000056BC(&v32, *a3, *(a3 + 1));
          }

          else
          {
            v32 = *a3;
            v33 = *(a3 + 2);
          }

          sub_100262948(a1, a2, &v32);
          if (SHIBYTE(v33) < 0)
          {
            v15 = v32;
            goto LABEL_69;
          }
        }

        else if (v9 == 2)
        {
          if (*(a3 + 23) < 0)
          {
            sub_1000056BC(&__dst, *a3, *(a3 + 1));
          }

          else
          {
            __dst = *a3;
            v31 = *(a3 + 2);
          }

          sub_100262D98(a1, a2, &__dst);
          if (SHIBYTE(v31) < 0)
          {
            v15 = __dst;
LABEL_69:
            operator delete(v15);
            return;
          }
        }
      }

      else
      {
        if (*(a3 + 23) < 0)
        {
          sub_1000056BC(&v34, *a3, *(a3 + 1));
        }

        else
        {
          v34 = *a3;
          v35 = *(a3 + 2);
        }

        sub_100261E60(a1, a2, &v34);
        if (SHIBYTE(v35) < 0)
        {
          v15 = v34;
          goto LABEL_69;
        }
      }

      return;
    }

    if (v9 == 3)
    {
      if (*(a3 + 23) < 0)
      {
        sub_1000056BC(&v28, *a3, *(a3 + 1));
      }

      else
      {
        v28 = *a3;
        v29 = *(a3 + 2);
      }

      sub_1002659F8(a1, a2, &v28);
      if (SHIBYTE(v29) < 0)
      {
        v15 = v28;
        goto LABEL_69;
      }

      return;
    }

    if (v9 == 4)
    {
      if (*(a3 + 23) < 0)
      {
        sub_1000056BC(&v26, *a3, *(a3 + 1));
      }

      else
      {
        v26 = *a3;
        v27 = *(a3 + 2);
      }

      sub_100265FA0(a1, a2, &v26);
      if (SHIBYTE(v27) < 0)
      {
        v15 = v26;
        goto LABEL_69;
      }

      return;
    }

LABEL_23:
    v10 = qword_1009F2630;
    v11 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      v12 = atomic_load((a1 + 1240));
      v13 = sub_10025911C(v11, v12);
      v14 = sub_100261E38(v13, a2);
      *buf = 136315394;
      v37 = v13;
      v38 = 2080;
      v39 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PRRose unexpected event while in state: %s, event: %s, ignoring", buf, 0x16u);
    }

    return;
  }

  if (v9 > 8)
  {
    if (v9 != 9)
    {
      if (v9 == 10)
      {
        if (*(a3 + 23) < 0)
        {
          sub_1000056BC(__p, *a3, *(a3 + 1));
        }

        else
        {
          *__p = *a3;
          v19 = *(a3 + 2);
        }

        sub_1002671F4(a1, a2, __p);
        if (SHIBYTE(v19) < 0)
        {
          v15 = __p[0];
          goto LABEL_69;
        }
      }

      else if (v9 == 11)
      {
        if (*(a3 + 23) < 0)
        {
          sub_1000056BC(&v16, *a3, *(a3 + 1));
        }

        else
        {
          v16 = *a3;
          v17 = *(a3 + 2);
        }

        sub_1002673BC(a1, a2, &v16);
        if (SHIBYTE(v17) < 0)
        {
          v15 = v16;
          goto LABEL_69;
        }
      }

      return;
    }

    goto LABEL_23;
  }

  if (v9 == 6)
  {
    if (*(a3 + 23) < 0)
    {
      sub_1000056BC(&v24, *a3, *(a3 + 1));
    }

    else
    {
      v24 = *a3;
      v25 = *(a3 + 2);
    }

    sub_1002664B4(a1, a2, &v24);
    if (SHIBYTE(v25) < 0)
    {
      v15 = v24;
      goto LABEL_69;
    }
  }

  else if (v9 == 7)
  {
    if (*(a3 + 23) < 0)
    {
      sub_1000056BC(&v22, *a3, *(a3 + 1));
    }

    else
    {
      v22 = *a3;
      v23 = *(a3 + 2);
    }

    sub_100266AC4(a1, a2);
    if (SHIBYTE(v23) < 0)
    {
      v15 = v22;
      goto LABEL_69;
    }
  }

  else
  {
    if (*(a3 + 23) < 0)
    {
      sub_1000056BC(&v20, *a3, *(a3 + 1));
    }

    else
    {
      v20 = *a3;
      v21 = *(a3 + 2);
    }

    sub_100266D60(a1, a2, &v20);
    if (SHIBYTE(v21) < 0)
    {
      v15 = v20;
      goto LABEL_69;
    }
  }
}

void sub_100259968(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, char a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100259A44(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: powerOnInternal", buf, 2u);
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  *(a1 + 1552) = 1;
  sub_100004A08(__p, "");
  sub_1002594BC(a1, 0xA, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100259AEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100259B08(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: sendHostGoodbye", buf, 2u);
  }

  *buf = 0;
  v10 = 0;
  v11 = 0;
  __p = 0;
  v7 = 0;
  v8 = 0;
  v3 = sub_10041B708(a1 + 1248, 41, &__p, buf);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (v3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10025FC70;
    v5[3] = &unk_10098AD98;
    v5[4] = a1;
    sub_1002593D8(a1, v5);
  }

  else if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B1CF0();
  }

  if (*buf)
  {
    v10 = *buf;
    operator delete(*buf);
  }

  return v3;
}

void sub_100259C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_100259C6C(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: executePowerOff starting.", buf, 2u);
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  if (sub_10047A320(a1 + 40, 0))
  {
    atomic_store(0xAu, (a1 + 1240));
    dispatch_async(*(a1 + 16), &stru_1009A0C40);
    dispatch_assert_queue_V2(*(a1 + 8));
    *(a1 + 1552) = 0;
    v3 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PRRose: executePowerOff complete.", v5, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B1D24();
    }

    v4 = abort_report_np("PRRose:: Failed to Power off Rose");
    sub_100259D80(v4);
  }
}

void sub_100259D80(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  if (*a1)
  {
    v2 = objc_retainBlock(*a1);
    v3 = sub_100478670(a1 + 40, &v11);
    v4 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Handling cached getChipInfoAsync", buf, 2u);
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100261CCC;
    v6[3] = &unk_1009A0AA8;
    v6[4] = v2;
    v9 = v3;
    v7 = v11;
    v8 = v12;
    sub_1002593D8(a1, v6);

    v5 = *a1;
  }

  else
  {
    v5 = 0;
  }

  *a1 = 0;
}

uint64_t sub_100259EA8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 7;
  return (*(v1 + 16))(v1, &v3, *(a1 + 40) | &_mh_execute_header);
}

uint64_t sub_100259EF0(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100259F9C;
  v4[3] = &unk_10099CEE0;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_100259F9C(uint64_t a1)
{
  v2 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = sub_1002592B0(v2);
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v3 = NSTemporaryDirectory();
    v4 = [NSString stringWithFormat:@"%@/%s", v3, "healAttemped.tok"];

    v5 = +[NSFileManager defaultManager];
    v6 = [v5 fileExistsAtPath:v4];

    v7 = qword_1009F2630;
    v8 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Healing skipped as it was attempted before without success...", buf, 2u);
      }
    }

    else
    {
      if (v8)
      {
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Attempting healing for the first time", v9, 2u);
      }

      *(*(*(a1 + 32) + 8) + 24) = sub_10047A0D0(v2 + 40) ^ 1;
    }
  }
}

void sub_10025A118(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 8));
  sub_100329550(*(a1 + 1296), &v14);
  sub_10026A998(v6, &v15);
  v2 = v14;
  if (v14 || (v13 & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B1D58();
    }

    if (v2 == 1)
    {
      v3 = 3;
    }

    else
    {
      v3 = 4 * (v2 == 2);
    }

    sub_100257F90(a1, v3);
  }

  else if ((sub_10025A30C(a1, v6) & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B1D8C();
    }

    sub_100004A08(__p, "Failed to apply config parameters");
    sub_10025BB8C(a1, 0, __p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v13 == 1)
  {
    if (v11)
    {
      v12 = v11;
      operator delete(v11);
    }

    if (v9)
    {
      v10 = v9;
      operator delete(v9);
    }

    if (v7)
    {
      v8 = v7;
      operator delete(v7);
    }
  }

  if (v22 == 1)
  {
    if (v20)
    {
      v21 = v20;
      operator delete(v20);
    }

    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }

    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }
  }
}

void sub_10025A2C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10025C150(&a16);
  sub_10025C1B0(&a29);
  _Unwind_Resume(a1);
}

uint64_t sub_10025A30C(uint64_t a1, char *a2)
{
  v6 = +[NSUserDefaults standardUserDefaults];
  if (sub_10025DFA8(a1))
  {
    sub_10026AD28(v18, 4, *a2);
    *buf = *(a2 + 40);
    memset(v17, 0, sizeof(v17));
    sub_1001FE45C(v17, buf, &buf[2], 1);
    sub_10026AED4(v14, 22, v17);
    sub_10026AD28(v11, 21, 2);
    buf[0] = v18[0];
    v23 = 0;
    v24 = 0;
    v22 = 0;
    sub_100009A48(&v22, v19, v20, v20 - v19);
    v25 = v11[0];
    memset(v26, 0, sizeof(v26));
    sub_100009A48(v26, v12, v13, v13 - v12);
    v27 = v14[0];
    v29[0] = 0;
    v29[1] = 0;
    v28 = 0;
    sub_100009A48(&v28, v15, v16, v16 - v15);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_10026B8B4(&v8, buf, &v30, 3uLL);
    v2 = 0;
    while (1)
    {
      v3 = v29[v2 - 1];
      if (v3)
      {
        v29[v2] = v3;
        operator delete(v3);
      }

      v2 -= 4;
      if (v2 == -12)
      {
        *buf = 0;
        v22 = 0;
        v23 = 0;
        sub_10026B35C(buf, v8, v9, (v9 - v8) >> 5);
        sub_1004775F4(a1 + 40, buf);
      }
    }
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B1DC0();
  }

  return 0;
}

void sub_10025B8E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a37)
  {
    operator delete(a37);
  }

  *(v56 - 240) = &a40;
  sub_100189A94((v56 - 240));
  if (a44)
  {
    a45 = a44;
    operator delete(a44);
  }

  if (a48)
  {
    a49 = a48;
    operator delete(a48);
  }

  if (a51)
  {
    a52 = a51;
    operator delete(a51);
  }

  if (a55)
  {
    a56 = a55;
    operator delete(a55);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10025BB8C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = qword_1009F2630;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_10046BD18(a2, __p);
    v7 = v32 >= 0 ? __p : __p[0];
    v8 = *(a3 + 23) >= 0 ? a3 : *a3;
    *buf = 136315394;
    v34 = v7;
    v35 = 2080;
    v36 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRRose::_triggerLogCollection: type: %s, reason: %s", buf, 0x16u);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (!a2)
  {
    sub_100257E7C(a1);
    atomic_store(7u, (a1 + 1240));
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_100261668;
    v30[3] = &unk_10098AD98;
    v30[4] = a1;
    sub_1002593D8(a1, v30);
    if (!*(a1 + 1328))
    {
      operator new();
    }

    v14 = +[NSUserDefaults standardUserDefaults];
    if ([v14 BOOLForKey:@"HaltPRRoseOnFatalError"])
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_FAULT))
      {
        sub_1004B222C();
      }

      while (1)
      {
        sleep(0xAu);
      }
    }

    v15 = [v14 stringForKey:@"HaltPRRoseOnFatalErrorReason"];
    if (*(a3 + 23) >= 0)
    {
      v16 = a3;
    }

    else
    {
      v16 = *a3;
    }

    v17 = [NSString stringWithUTF8String:v16];
    v18 = [v15 isEqualToString:v17];

    if (v18)
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_FAULT))
      {
        sub_1004B21BC();
      }

      while (1)
      {
        sleep(0xAu);
      }
    }
  }

  v19 = sub_100478A18(a1 + 40, a2, a3, v9, v10, v11, v12, v13);
  v20 = v19;
  v22 = a2 == 1 && v19 == 1;
  v28 = __PAIR64__(v19, a2);
  v29 = v22;
  AnalyticsSendEventLazy();
  v23 = 1;
  if (v20 > 2)
  {
    switch(v20)
    {
      case 3:
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
        {
          sub_1004B2044();
        }

        return v23;
      case 4:
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
        {
          sub_1004B2010();
        }

        return 0;
      case 5:
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
        {
          sub_1004B1FDC();
        }

        return 0;
    }

    return v23;
  }

  if (!v20)
  {
    v25 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Successfully triggered log collection", __p, 2u);
    }

    return v23;
  }

  if (v20 == 1)
  {
    v26 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR);
    if (a2 == 1)
    {
      if (v26)
      {
        sub_1004B2188();
      }

      std::operator+<char>();
      v23 = sub_10025BB8C(a1, 0, __p);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      return v23;
    }

    if (a2)
    {
      if (v26)
      {
        sub_1004B20E0();
      }

      result = abort_report_np("Failed to trigger log collection.", _NSConcreteStackBlock, 3221225472, sub_1002616A8, &unk_1009A0A58, a3, v28, v29);
    }

    else
    {
      if (v26)
      {
        sub_1004B2154();
      }

      result = abort_report_np("Failed to triggered fatal log collection.", _NSConcreteStackBlock, 3221225472, sub_1002616A8, &unk_1009A0A58, a3, v28, v29);
    }

    goto LABEL_66;
  }

  if (v20 != 2)
  {
    return v23;
  }

  v24 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR);
  if (a2)
  {
    if (v24)
    {
      sub_1004B2078();
    }

    return 0;
  }

  if (v24)
  {
    sub_1004B20AC();
  }

  result = abort_report_np("Unexpected BusyNonFatalInProgress after triggering fatal log collection.", _NSConcreteStackBlock, 3221225472, sub_1002616A8, &unk_1009A0A58, a3, v28, v29);
LABEL_66:
  __break(1u);
  return result;
}

void sub_10025C0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_10025C150(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      *(a1 + 64) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      *(a1 + 40) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 8);
    if (v4)
    {
      *(a1 + 16) = v4;
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t sub_10025C1B0(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      *(a1 + 72) = v2;
      operator delete(v2);
    }

    v3 = *(a1 + 40);
    if (v3)
    {
      *(a1 + 48) = v3;
      operator delete(v3);
    }

    v4 = *(a1 + 16);
    if (v4)
    {
      *(a1 + 24) = v4;
      operator delete(v4);
    }
  }

  return a1;
}

void sub_10025C210(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "regulatory,refreshConfiguration()", buf, 2u);
  }

  v3 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10025C2CC;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_async(v3, block);
}

void sub_10025C2CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100004A08(__p, "");
  sub_1002594BC(v1, 8, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10025C324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10025C340(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: LPEM enable", buf, 2u);
  }

  v3 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10025C3FC;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_async(v3, block);
}

void sub_10025C3FC(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_100004A08(__p, "");
  sub_1002594BC(v1, 0xB, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10025C454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10025C470(uint64_t a1, int a2)
{
  v4 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PRRose: enableDeepSleepOnDemand %u", buf, 8u);
  }

  v5 = sub_1000054A8();
  if (sub_100460A50(v5))
  {
    if (*(a1 + 1496))
    {
      v6 = *(a1 + 8);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_10025C5C8;
      v8[3] = &unk_10099C618;
      v8[4] = a1;
      v9 = a2;
      dispatch_async(v6, v8);
    }

    else
    {
      v7 = qword_1009F2630;
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PRRose: ignoring deep sleep on demand change because deep sleep feature is disabled", buf, 2u);
      }
    }
  }
}

void sub_10025C5C8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(a1 + 40) == *(v1 + 1457))
  {
    return;
  }

  v3 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 40))
    {
      v4 = "enabled";
    }

    else
    {
      v4 = "disabled";
    }

    *buf = 136315138;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PRRose: deep sleep on demand has been %s", buf, 0xCu);
  }

  v5 = *(a1 + 40);
  *(v1 + 1457) = v5;
  if (*(v1 + 1488) == 1)
  {
    v6 = *(v1 + 1480);
  }

  else
  {
    v6 = 1000;
  }

  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v7 = 15000;
  }

  sub_1001DABA8(*(v1 + 1544), v7);
  if (*(v1 + 1457) == 1)
  {
    v8 = atomic_load((v1 + 1240));
    if (v8 == 10)
    {
      v9 = qword_1009F2630;
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PRRose: deep sleep on demand is enabled but we're in PoweredOff, need to power on and then enter deep sleep", buf, 2u);
      }

      *(v1 + 1552) = 2;
      sub_100004A08(__p, "");
      sub_1002594BC(v1, 0xA, __p);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }

      return;
    }

    if (*(v1 + 1457))
    {
      return;
    }
  }

  v10 = atomic_load((v1 + 1240));
  if (v10 == 11)
  {
    v11 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PRRose: deep sleep on demand is disabled but we're in DeepSleep, need to exit deep sleep and then power off", buf, 2u);
    }

    *(v1 + 1552) = 2;
    sub_10025C7F4(v1, 1);
  }
}

void sub_10025C7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10025C7F4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PRRose: requestDeepSleepExit", buf, 2u);
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  v5 = *(a1 + 1504) + 50000000;
  if (std::chrono::steady_clock::now().__d_.__rep_ < v5)
  {
    v6 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRRose: deep sleep exit request too quick after previous entry. waiting...", buf, 2u);
    }

    *buf = v5 - std::chrono::steady_clock::now().__d_.__rep_;
    std::this_thread::sleep_for (buf);
  }

  v18 = sub_1001B22B4(3);
  *buf = 0;
  v16 = 0;
  v17 = 0;
  sub_1000069DC(buf, &v18, &v19, 1);
  __p = 0;
  v13 = 0;
  v14 = 0;
  v7 = sub_10041B708(a1 + 1248, 45, buf, &__p);
  v8 = qword_1009F2630;
  if (v7)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PRRose: sent deep sleep exit request to RoseSupervisor. Polling for completion.", v11, 2u);
    }

    v9 = sub_100267944(a1, v2);
    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }

    if (*buf)
    {
      v16 = *buf;
      operator delete(*buf);
    }

    return v9;
  }

  else
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B229C();
    }

    result = abort_report_np("PRRose: sending deep sleep exit request to RoseSupervisor failed. Aborting nearbyd.");
    __break(1u);
  }

  return result;
}

void sub_10025C9C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10025C9F4(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(a1 + 8);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10025CAA0;
  v4[3] = &unk_10099CEE0;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_10025CAB4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    sub_1004B22D0();
  }

  v6 = v3;
  v4 = objc_retainBlock(v3);
  v5 = *(a1 + 1280);
  *(a1 + 1280) = v4;
}

void sub_10025CB10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    sub_1004B22FC();
  }

  v6 = v3;
  v4 = objc_retainBlock(v3);
  v5 = *(a1 + 1288);
  *(a1 + 1288) = v4;
}

BOOL sub_10025CB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v8 = atomic_load((a1 + 1240));
  if (v8 - 3 <= 1)
  {
    goto LABEL_13;
  }

  v9 = atomic_load((a1 + 1240));
  v10 = v9 > 8;
  v11 = (1 << v9) & 0x118;
  if (v10 || v11 == 0)
  {
    if (a2 <= 0x3C)
    {
      if (((1 << a2) & 0x1A40219800000001) != 0)
      {
        goto LABEL_13;
      }

      if (a2 == 37)
      {
        goto LABEL_17;
      }
    }

LABEL_24:
    result = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1004B23BC();
    return 0;
  }

  if (a2 > 0x3C)
  {
    goto LABEL_24;
  }

  if (((1 << a2) & 0x1A40219800000001) == 0)
  {
    if (a2 != 37)
    {
      if (a2 == 38)
      {
        a2 = 38;
        goto LABEL_13;
      }

      goto LABEL_24;
    }

LABEL_17:
    v16 = 0;
    if ((sub_10025CE68(a1, &v16) & 1) == 0 && os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2328();
    }

    if (v16 != 1)
    {
      return sub_10025CDC0(a1, v6, a3, a4);
    }

    v14 = qword_1009F2630;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10041BA9C(v6, v15);
      sub_1004B235C();
    }

    return 0;
  }

LABEL_13:

  return sub_10025CDC0(a1, a2, a3, a4);
}

BOOL sub_10025CDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 57)
  {
    v8 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Received NISessionStatusUpdate, updating AOP UserDefaults.", v10, 2u);
    }

    sub_10025CF40(a1);
  }

  return sub_10041B708(a1 + 1248, a2, a3, a4);
}

uint64_t sub_10025CE68(uint64_t a1, _BYTE *a2)
{
  v4 = sub_1000054A8();
  if (!sub_100460A50(v4))
  {
    LOBYTE(v7) = 0;
    LOBYTE(v6) = 1;
    goto LABEL_5;
  }

  v5 = sub_100261448(a1);
  if (v5 <= 3)
  {
    v7 = 0x1010000u >> (8 * v5);
    v6 = 0xEu >> (v5 & 0xF);
LABEL_5:
    *a2 = v7;
  }

  return v6 & 1;
}

BOOL sub_10025CED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = atomic_load((a1 + 1240));
  if (v4 - 3 >= 2)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B23F0();
    }

    return 0;
  }

  else
  {
    v5 = a1 + 1248;

    return sub_10041BAC8(v5, a2, a3);
  }
}

void sub_10025CF40(uint64_t a1)
{
  v2 = sub_100394C68(@"AOPSensorFusionDataForwarding", 0);
  v3 = sub_100394C68(@"UseNIPathForSuspendOnStationary", 0);
  v4 = 2;
  if (!v3)
  {
    v4 = 0;
  }

  v5 = v4 | v2 | (4 * (sub_100394AE8(@"AopSFStationaryTimeoutIn100msUnits", 0x32) & 0x7Fu));
  v6 = sub_100394AE8(@"AopSFIOReportIntervalIn10msUnits", 0xA) << 9;
  v7 = sub_100394C68(@"AopSFDisableDynamicBubbles", 0);
  v8 = 0x20000;
  if (!v7)
  {
    v8 = 0;
  }

  v9 = v5 | v6 | v8;
  if (sub_100394C68(@"AopSFUseHEPHandling", 0))
  {
    v10 = 0x40000;
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_100394AE8(@"AopSFBubbleDeltadB", 5);
  v12 = sub_100394AE8(@"AopSFBubbleMaxThresholddBm", 0xFFFFFFA8);
  v13 = sub_100394AE8(@"AopSFTxPowerdBm", 0x7F);
  v14 = sub_100394AE8(@"AopSFSimulateDisplacement", 0) & 3;
  v15 = sub_100394AE8(@"AopSFUseStaticIOClassifier", 0) & 1;
  v21 = 0;
  v22 = v9 | v10 | (v11 << 19) | (v12 << 27) | (v13 << 35) | (v14 << 43) | (v15 << 45) | ((sub_100394AE8(@"AopSFStaticIOClassifierEpsilonInMM", 0xA) & 0x1FF) << 46);
  __p = 0;
  v20 = 0;
  sub_1000069DC(&__p, &v22, &v23, 8);
  v16 = sub_10041BAC8(a1 + 1248, 219, &__p);
  v17 = qword_1009F2630;
  if (v16)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Wrote the AOP UserDefaults property", v18, 2u);
    }
  }

  else if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B2424();
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }
}

void sub_10025D15C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10025D178(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = qword_1009F2630;
  v5 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
  if (v3 != 1)
  {
    sub_1004B2458(v5);
  }

  if (v5)
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PRRose::_handleRoseControlReport - ResetCompleteSuccess", v6, 2u);
  }

  std::mutex::lock((a1 + 1344));
  atomic_store(1u, (a1 + 1456));
  std::condition_variable::notify_all((a1 + 1408));
  std::mutex::unlock((a1 + 1344));
}

BOOL sub_10025D228(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: assertUWBCommsOwnership", &__p, 2u);
  }

  v8 = 1;
  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_1000069DC(&__p, &v8, &v9, 1);
  v3 = sub_10041BAC8(a1 + 1248, 209, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  return v3;
}

void sub_10025D2E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10025D2FC(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: deassertUWBCommsOwnership", &__p, 2u);
  }

  v8 = 0;
  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_1000069DC(&__p, &v8, &v9, 1);
  v3 = sub_10041BAC8(a1 + 1248, 209, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  return v3;
}

void sub_10025D3B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10025D3CC(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: allowRoseSleep", &__p, 2u);
  }

  v8 = 1;
  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_1000069DC(&__p, &v8, &v9, 1);
  v3 = sub_10041BAC8(a1 + 1248, 212, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  return v3;
}

void sub_10025D484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10025D4A0(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: disallowRoseSleep", &__p, 2u);
  }

  v8 = 0;
  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_1000069DC(&__p, &v8, &v9, 1);
  v3 = sub_10041BAC8(a1 + 1248, 212, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  return v3;
}

void sub_10025D554(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10025D570(uint64_t a1)
{
  v2 = *(sub_1000054A8() + 144);
  v7 = 1;
  if ((v2 - 3) >= 0x19)
  {
    v3 = v2 - 102;
    v4 = v3 > 0x18;
    v5 = (1 << v3) & 0x19CE733;
    if (v4 || v5 == 0)
    {
      v7 = 0;
    }
  }

  v8 = +[NSUserDefaults standardUserDefaults];
  if ([v8 BOOLForKey:@"DisableUwbBasebandCoexMessaging"])
  {
    v9 = qword_1009F2630;
    v7 = 0;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Disabling UWB-BB coex messaging. DisableUwbBasebandCoexMessaging is set to true.", buf, 2u);
      v7 = 0;
    }
  }

  v10 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Support Rose-BB Coex: %d", buf, 8u);
  }

  v13 = v7;
  *buf = 0;
  v15 = 0;
  v16 = 0;
  sub_1000069DC(buf, &v13, buf, 4);
  v11 = sub_10041BAC8(a1 + 1248, 216, buf);
  if (*buf)
  {
    v15 = *buf;
    operator delete(*buf);
  }

  return v11;
}

void sub_10025D71C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sub_10025D750(std::mutex *a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: resetSupervisorJobs", buf, 2u);
  }

  std::mutex::lock(a1 + 21);
  atomic_store(0, &a1[22].__m_.__opaque[40]);
  std::mutex::unlock(a1 + 21);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10025D8C8;
  v11[3] = &unk_10098AD98;
  v11[4] = a1;
  sub_1002593D8(a1, v11);
  *buf = 0;
  v9 = 0;
  v10 = 0;
  __p = 0;
  v6 = 0;
  v7 = 0;
  v3 = sub_10041B708(&a1[19].__m_.__opaque[24], 39, &__p, buf);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (!v3 && os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B24E0();
  }

  if (*buf)
  {
    v9 = *buf;
    operator delete(*buf);
  }

  return v3;
}

void sub_10025D89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10025D8C8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 3;
  return (*(v1 + 16))();
}

BOOL sub_10025D908(uint64_t a1)
{
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEBUG))
  {
    sub_1004B2514();
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  __p = 0;
  v5 = 0;
  v6 = 0;
  v2 = sub_10041B708(a1 + 1248, 54, &__p, &v7);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  if (!v2 && os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B2554();
  }

  if (v7)
  {
    v8 = v7;
    operator delete(v7);
  }

  return v2;
}

void sub_10025D9CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10025D9F8(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: activateAOPTimeSync", buf, 2u);
  }

  v3 = sub_1000054A8();
  if (sub_1000149D4(v3))
  {
    return 1;
  }

  *buf = 0;
  v10 = 0;
  v11 = 0;
  __p = 0;
  v7 = 0;
  v8 = 0;
  v4 = sub_10041B708(a1 + 1248, 42, &__p, buf);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (!v4 && os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B2588();
  }

  if (*buf)
  {
    v10 = *buf;
    operator delete(*buf);
  }

  return v4;
}

void sub_10025DAEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10025DB18(uint64_t a1)
{
  __p = 0;
  v5 = 0;
  v6 = 0;
  if (sub_10041BE14(a1 + 1248, 0xD5u, &__p))
  {
    if (v5 - __p == 1)
    {
      v1 = *__p != 0;
      goto LABEL_9;
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B25F0();
    }
  }

  else if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B25BC();
  }

  v1 = 0;
LABEL_9:
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: hasCalDataBeenPushed %u", buf, 8u);
  }

  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  return v1;
}

unint64_t sub_10025DC74(uint64_t a1)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  __p = 0;
  v8 = 0;
  v9 = 0;
  v1 = sub_10041B708(a1 + 1248, 40, &__p, &v10);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (!v1 && os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B2664();
  }

  v2 = v10;
  if (v11 - v10 == 8)
  {
    v3 = *v10 & 0xFFFFFFFFFFFFFF00;
    v4 = *v10;
LABEL_11:
    v11 = v2;
    operator delete(v2);
    return v3 | v4;
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B2698();
  }

  v3 = 0;
  v4 = 0;
  v5 = 0;
  v2 = v10;
  if (v10)
  {
    goto LABEL_11;
  }

  return v5;
}

void sub_10025DD74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10025DDA0()
{
  v0 = IOServiceNameMatching("rose");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v0);
  if (!MatchingService)
  {
    sub_1004B2744();
    __break(1u);
  }

  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"use-internal-32k-clock", kCFAllocatorDefault, 0);
  if (CFProperty)
  {
    v3 = CFProperty;
    v4 = CFGetTypeID(CFProperty);
    if (v4 == CFDataGetTypeID() && CFDataGetLength(v3) == 4)
    {
      BytePtr = CFDataGetBytePtr(v3);
      v6 = qword_1009F2630;
      if (BytePtr)
      {
        v7 = BytePtr;
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *v7;
          v14[0] = 67109120;
          v14[1] = v8;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "use-internal-32k-clock property exists: 0x%x", v14, 8u);
        }

        v9 = *v7 != 0;
        goto LABEL_13;
      }

      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B2710();
      }
    }

    else
    {
      v10 = qword_1009F2630;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = CFGetTypeID(v3);
        sub_1004B26CC(v14, v11);
      }
    }

    v9 = 0;
LABEL_13:
    CFRelease(v3);
    return v9;
  }

  v12 = qword_1009F2630;
  v9 = 0;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "use-internal-32k-clock property does not exist", v14, 2u);
    return 0;
  }

  return v9;
}

uint64_t sub_10025DFA8(uint64_t a1)
{
  v2 = sub_1000054A8();
  v3 = sub_10041C594(v2[144]);
  v4 = qword_1009F2630;
  v5 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
  if ((v3 & 0x100) != 0)
  {
    if (v5)
    {
      *buf = 67109120;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setRosePlatformInfo: %d", buf, 8u);
    }

    sub_10026AD28(buf, 56, v3);
    v8[0] = buf[0];
    memset(__p, 0, sizeof(__p));
    sub_100009A48(__p, v12, v13, v13 - v12);
    memset(v7, 0, sizeof(v7));
    sub_10026B8B4(v7, v8, buf, 1uLL);
    sub_10025EAE8(a1, v7);
  }

  if (v5)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setRosePlatformInfo not needed.", buf, 2u);
  }

  return 1;
}

void sub_10025E130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  sub_100189A94(&a12);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  if (a18)
  {
    a19 = a18;
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10025E180(uint64_t a1, char a2)
{
  v15 = 23;
  v20 = 0;
  v21 = 0;
  __p = 0;
  sub_1000069DC(&__p, &v15, &v16, 1);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  sub_100009A48(&v23, __p, v20, v20 - __p);
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  sub_100477418(a1 + 40, &v23, 2000, &__p);
  if (v22)
  {
    sub_100462A8C(&__p, &v15);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    sub_10026B35C(&v12, v17, v18, (v18 - v17) >> 5);
    if (v13 == v12 || *v12 != 23)
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B275C();
      }
    }

    else
    {
      v4 = sub_10042727C(v12, 0);
      v5 = v4;
      if ((v4 & 0x100) != 0)
      {
        v6 = qword_1009F2630;
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v5;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Coex: global event config (%d) ", buf, 8u);
        }

        sub_1004272B4(v12, 0, v5 & 0xFE | a2);
        buf[0] = *v12;
        v29 = 0;
        v30 = 0;
        v28 = 0;
        sub_100009A48(&v28, *(v12 + 8), *(v12 + 16), *(v12 + 16) - *(v12 + 8));
        v8 = 0;
        v9 = 0;
        v10 = 0;
        sub_10026B8B4(&v8, buf, &v31, 1uLL);
        memset(v11, 0, sizeof(v11));
        sub_10026B35C(v11, v8, v9, (v9 - v8) >> 5);
        v26 = &v8;
        sub_100189A94(&v26);
        if (v28)
        {
          v29 = v28;
          operator delete(v28);
        }

        sub_1004775F4(a1 + 40, v11);
      }
    }

    *buf = &v12;
    sub_100189A94(buf);
    *buf = &v17;
    sub_100189A94(buf);
    if ((v22 & 1) != 0 && __p)
    {
      v20 = __p;
      operator delete(__p);
    }
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  return 0;
}

void sub_10025E428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, char a26)
{
  *(v28 - 96) = v26;
  sub_100189A94((v28 - 96));
  *(v28 - 96) = &a16;
  sub_100189A94((v28 - 96));
  *(v28 - 96) = v27;
  sub_100189A94((v28 - 96));
  if (a26 == 1 && __p)
  {
    a24 = __p;
    operator delete(__p);
  }

  v30 = *(v28 - 128);
  if (v30)
  {
    *(v28 - 120) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10025E4F8(uint64_t *a1)
{
  sub_10026B0D4(&v10);
  if (a1[1] != *a1)
  {
    v2 = 0;
    do
    {
      v3 = sub_10000EA44(&v10, "0x", 2);
      v9 = 48;
      v4 = sub_100193BA0(v3, &v9);
      v5 = *v4;
      *(v4 + *(*v4 - 24) + 8) = *(v4 + *(*v4 - 24) + 8) & 0xFFFFFFB5 | 8;
      *(v4 + *(v5 - 24) + 24) = 2;
      std::ostream::operator<<();
      v7 = *a1;
      v6 = a1[1];
      if (v2 != ~*a1 + v6)
      {
        sub_10000EA44(&v10, ",", 1);
        v7 = *a1;
        v6 = a1[1];
      }

      ++v2;
    }

    while (v6 - v7 > v2);
  }

  std::stringbuf::str();
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  std::locale::~locale(v12);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10025E740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

BOOL sub_10025E774(uint64_t a1, char *a2)
{
  v2 = atomic_load((a1 + 1240));
  if (v2 - 3 > 1)
  {
    return 0;
  }

  v5 = qword_1009F2630;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100193120(&__p);
    v14 = 48;
    v8 = sub_100193BA0(&v17, &v14);
    *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
    sub_10000EA44(&v17, "0x", 2);
    for (i = 7; i != -1; --i)
    {
      *(&v19[1].__locale_ + *(v17 - 24)) = 2;
      std::ostream::operator<<();
    }

    std::stringbuf::str();
    v17 = v10;
    if (v20 < 0)
    {
      operator delete(v19[7].__locale_);
    }

    std::locale::~locale(v19);
    std::iostream::~basic_iostream();
    std::ios::~ios();
    v11 = &v12;
    if (v13 < 0)
    {
      v11 = v12;
    }

    *buf = 136315138;
    v22 = v11;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "PRRose::setRoseConnectionlessMacAddress: %s", buf, 0xCu);
    if (v13 < 0)
    {
      operator delete(v12);
    }
  }

  __p = 0;
  v16 = 0;
  v17 = 0;
  sub_1000069DC(&__p, a2, a2 + 8, 8);
  v6 = sub_10025CED4(a1, 211, &__p);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  return v6;
}

void sub_10025EAA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  sub_100193C68(&__p);

  _Unwind_Resume(a1);
}

void sub_10025EAE8(uint64_t a1, unsigned __int8 **a2)
{
  v4 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting config parameters:", buf, 2u);
  }

  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    do
    {
      v7 = qword_1009F2630;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        sub_100426EAC(v5);
        if (v11 >= 0)
        {
          v8 = buf;
        }

        else
        {
          v8 = *buf;
        }

        *v12 = 136315138;
        *&v12[4] = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "\t%s", v12, 0xCu);
        if (SHIBYTE(v11) < 0)
        {
          operator delete(*buf);
        }
      }

      v5 += 32;
    }

    while (v5 != v6);
    v5 = *a2;
    v6 = a2[1];
  }

  *buf = 0;
  v10 = 0;
  v11 = 0;
  sub_10026B35C(buf, v5, v6, (v6 - v5) >> 5);
  sub_1004775F4(a1 + 40, buf);
}

void sub_10025ECB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100189A94(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10025ECDC(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((a1 + 1240));
  if (v2 - 3 < 2)
  {
    sub_10026AD28(v6, 4, a2);
    v9[0] = v6[0];
    memset(v10, 0, sizeof(v10));
    sub_100009A48(v10, __p, v8, v8 - __p);
    memset(v5, 0, sizeof(v5));
    sub_10026B8B4(v5, v9, &v11, 1uLL);
    sub_10025EAE8(a1, v5);
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B27C4();
  }

  return 0;
}

void sub_10025EE00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_100189A94(&a17);
  v19 = *(v17 - 48);
  if (v19)
  {
    *(v17 - 40) = v19;
    operator delete(v19);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10025EE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v6 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v4;
    LOWORD(v16) = 1024;
    *(&v16 + 2) = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setRoseLeadingEdgeThresholds: %d, %d", buf, 0xEu);
  }

  sub_1004278F0(v4, v3, buf);
  if (v17)
  {
    v9 = 35;
    v11 = 0;
    v12 = 0;
    v10 = 0;
    sub_100009A48(&v10, *buf, v16, v16 - *buf);
    v13[0] = 35;
    memset(__p, 0, sizeof(__p));
    sub_100009A48(__p, v10, v11, v11 - v10);
    memset(v8, 0, sizeof(v8));
    sub_10026B8B4(v8, v13, buf, 1uLL);
    sub_10025EAE8(a1, v8);
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B27F8();
  }

  if (v17 == 1 && *buf)
  {
    v16 = *buf;
    operator delete(*buf);
  }

  return 0;
}

void sub_10025F014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24)
{
  sub_100189A94(&a16);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a24 == 1)
  {
    if (a21)
    {
      a22 = a21;
      operator delete(a21);
    }
  }

  _Unwind_Resume(a1);
}

void sub_10025F088(uint64_t a1, uint64_t a2)
{
  v4 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "setRoseAlishaURSKTTL: %llu", &buf, 0xCu);
  }

  *&buf = a2;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  sub_1000069DC(&v6, &buf, &buf + 8, 8);
  LOBYTE(buf) = 7;
  v12 = 0;
  v13 = 0;
  *(&buf + 1) = 0;
  sub_100009A48(&buf + 1, v6, v7, v7 - v6);
  v9[0] = buf;
  memset(__p, 0, sizeof(__p));
  sub_100009A48(__p, *(&buf + 1), v12, v12 - *(&buf + 1));
  memset(v5, 0, sizeof(v5));
  sub_10026B8B4(v5, v9, &buf, 1uLL);
  sub_10025EAE8(a1, v5);
}

void sub_10025F20C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  sub_100189A94(&a16);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  v21 = *(v19 - 72);
  if (v21)
  {
    *(v19 - 64) = v21;
    operator delete(v21);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10025F274(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_1000054A8();
  v5 = sub_100460B80(v4);
  if ((v5 & 0x100) != 0)
  {
    sub_10026AD28(v8, v5, v2);
    buf[0] = v8[0];
    memset(__p, 0, sizeof(__p));
    sub_100009A48(__p, v9, v10, v10 - v9);
    memset(v7, 0, sizeof(v7));
    sub_10026B8B4(v7, buf, &v13, 1uLL);
    sub_10025EAE8(a1, v7);
  }

  return 0;
}

void sub_10025F3D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  sub_100189A94(&a16);
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10025F428()
{
  v0 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_DEFAULT, "setRoseCoexMode called", buf, 2u);
  }

  v1 = +[NSUserDefaults standardUserDefaults];
  v2 = [v1 BOOLForKey:@"DisableCoex"];

  v3 = qword_1009F2630;
  v4 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      v9 = 0;
      v5 = "Coex disabled using default writes: DisableCoex";
      v6 = &v9;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else if (v4)
  {
    v8 = 0;
    v5 = "Nothing to do on non-watchOS platforms";
    v6 = &v8;
    goto LABEL_8;
  }

  return 1;
}

uint64_t sub_10025F530(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "getRoseAlishaTestMode called", buf, 2u);
  }

  v3 = sub_1000054A8();
  v4 = sub_100460B80(v3);
  if ((v4 & 0x100) != 0)
  {
    v7 = v4;
    LOBYTE(v18) = v4;
    v21 = 0;
    v22 = 0;
    *buf = 0;
    sub_1000069DC(buf, &v18, &v18 + 1, 1);
    __p = 0;
    v25 = 0;
    v26 = 0;
    sub_100009A48(&__p, *buf, v21, v21 - *buf);
    if (*buf)
    {
      v21 = *buf;
      operator delete(*buf);
    }

    sub_100477418(a1 + 40, &__p, 2000, buf);
    if (v23)
    {
      sub_100462A8C(buf, &v18);
      v8 = v18;
      if (v18)
      {
        v9 = qword_1009F2630;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          sub_1004279E4(v8, v17);
          sub_1004B2860();
        }

LABEL_12:
        v5 = 0;
        v6 = 0;
      }

      else
      {
        for (i = v19[0]; ; i += 32)
        {
          if (i == v19[1])
          {
            if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
            {
              sub_1004B28C0();
            }

            goto LABEL_12;
          }

          if (*i == v7)
          {
            break;
          }
        }

        v12 = sub_10042727C(i, 0);
        if ((v12 & 0x100) == 0)
        {
          v15 = "optTestModeEnabled.has_value()";
          v16 = 1532;
          goto LABEL_40;
        }

        if (v12 != 1)
        {
          if (!v12)
          {
            v13 = qword_1009F2630;
            if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
            {
              *v17 = 0;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "getRoseAlishaTestMode: disabled", v17, 2u);
            }

            v5 = 0;
            goto LABEL_38;
          }

          v15 = "false";
          v16 = 1544;
LABEL_40:
          __assert_rtn("getRoseAlishaTestMode", "PRRose.mm", v16, v15);
        }

        v14 = qword_1009F2630;
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "getRoseAlishaTestMode: enabled", v17, 2u);
        }

        v5 = 1;
LABEL_38:
        v6 = 1;
      }

      v27 = v19;
      sub_100189A94(&v27);
    }

    else
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B282C();
      }

      v5 = 0;
      v6 = 0;
    }

    if (v23 == 1 && *buf)
    {
      v21 = *buf;
      operator delete(*buf);
    }

    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  return v5 | (v6 << 8);
}

void sub_10025F82C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char a20, void *a21, uint64_t a22)
{
  v23 = v22;

  a9 = &a14;
  sub_100189A94(&a9);
  if (a20 == 1 && __p)
  {
    a18 = __p;
    operator delete(__p);
  }

  if (a21)
  {
    a22 = a21;
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void sub_10025F8B4(uint64_t a1)
{
  v21 = 11558;
  v26 = 0;
  v27 = 0;
  __p = 0;
  sub_1000069DC(&__p, &v21, &v22, 2);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  sub_100009A48(&v29, __p, v26, v26 - __p);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  sub_100477418(a1 + 40, &v29, 2000, &__p);
  if (v28)
  {
    sub_100462A8C(&__p, &v21);
    v2 = v21;
    if (v21)
    {
      v3 = qword_1009F2630;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1004279E4(v2, &buf);
        sub_1004B2928();
      }

      goto LABEL_29;
    }

    v4 = v23;
    v5 = v24;
    if (v23 == v24)
    {
LABEL_29:
      v32 = &v23;
      sub_100189A94(&v32);
      goto LABEL_30;
    }

    while (1)
    {
      v6 = *v4;
      if (v6 != 38)
      {
        goto LABEL_20;
      }

      v7 = sub_10042727C(v4, 0);
      v8 = sub_10042727C(v4, 1);
      v9 = qword_1009F2630;
      v10 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
      if ((v7 & 0x100) != 0 && (v8 & 0x100) != 0)
      {
        if (v10)
        {
          LODWORD(buf) = 67109376;
          HIDWORD(buf) = v7;
          v34 = 1024;
          v35 = v8;
          v11 = v9;
          v12 = "UWB ePA mode: 0x%02x, eLNA mode: 0x%02x";
          v13 = 14;
LABEL_18:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v12, &buf, v13);
        }
      }

      else if (v10)
      {
        LOWORD(buf) = 0;
        v11 = v9;
        v12 = "UWB ePA mode: N/A, eLNA mode: N/A";
        v13 = 2;
        goto LABEL_18;
      }

      v6 = *v4;
LABEL_20:
      if (v6 == 45)
      {
        v14 = sub_10042727C(v4, 0);
        v15 = sub_10042727C(v4, 1);
        v16 = qword_1009F2630;
        v17 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
        if ((v14 & 0x100) != 0 && (v15 & 0x100) != 0)
        {
          if (v17)
          {
            LODWORD(buf) = 67109376;
            HIDWORD(buf) = v14;
            v34 = 1024;
            v35 = v15;
            v18 = v16;
            v19 = "NB ePA mode: 0x%02x, eLNA mode: 0x%02x";
            v20 = 14;
LABEL_27:
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, &buf, v20);
          }
        }

        else if (v17)
        {
          LOWORD(buf) = 0;
          v18 = v16;
          v19 = "NB ePA mode: N/A, eLNA mode: N/A";
          v20 = 2;
          goto LABEL_27;
        }
      }

      v4 += 32;
      if (v4 == v5)
      {
        goto LABEL_29;
      }
    }
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B28F4();
  }

LABEL_30:
  if (v28 == 1 && __p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }
}

void sub_10025FBE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23)
{
  a23 = &a12;
  sub_100189A94(&a23);
  if (a18 == 1 && __p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a19)
  {
    a20 = a19;
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10025FC70(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 3;
  return (*(v1 + 16))();
}

uint64_t sub_10025FCB0(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: boot rose", buf, 2u);
  }

  if (!sub_10025D2FC(a1))
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2988();
    }

    return 0;
  }

  v3 = sub_100475124(a1 + 40, *(a1 + 1336), *(a1 + 1337));
  if ((v3 & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B29BC();
    }

    return 0;
  }

  if ((sub_100478A14(v3, v4) & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B29F0();
    }

    return 0;
  }

  v5 = sub_100478144(a1 + 40, 1, buf);
  if ((v5 & 1) == 0)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2A24();
    }

    AnalyticsSendEventLazy();
  }

  AnalyticsSendEventLazy();
  return v5;
}

id sub_10025FEA4(uint64_t a1)
{
  v12[0] = @"BootReturnValue";
  v2 = [NSNumber numberWithInt:*(a1 + 32)];
  v13[0] = v2;
  v12[1] = @"DriverState";
  v3 = [NSNumber numberWithInt:*(a1 + 36)];
  v13[1] = v3;
  v12[2] = @"BootStatusRegister";
  v4 = [NSNumber numberWithInt:*(a1 + 40)];
  v13[2] = v4;
  v12[3] = @"CalibrationReturnValue";
  v5 = [NSNumber numberWithInt:*(a1 + 44)];
  v13[3] = v5;
  v12[4] = @"SendCalibrationTimeout";
  v6 = [NSNumber numberWithInt:*(a1 + 48)];
  v13[4] = v6;
  v12[5] = @"UWBInitDoneTimeout";
  v7 = [NSNumber numberWithInt:*(a1 + 49)];
  v13[5] = v7;
  v12[6] = @"SetCalDataPushedFalseFailure";
  v8 = [NSNumber numberWithInt:*(a1 + 50)];
  v13[6] = v8;
  v12[7] = @"SetCalDataPushedTrueFailure";
  v9 = [NSNumber numberWithInt:*(a1 + 51)];
  v13[7] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:8];

  return v10;
}

id sub_1002600FC(uint64_t a1)
{
  v4 = @"BootSuccess";
  v1 = [NSNumber numberWithInt:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

uint64_t sub_1002601C8(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 1512);
    *buf = 67109120;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: Resetting chip. Previous counter: %d", buf, 8u);
  }

  v4 = *(a1 + 1512);
  if (v4 >= 6)
  {
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_100260740;
    v19 = &unk_1009A0700;
    v20 = a1;
    AnalyticsSendEventLazy();
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2AC0();
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2B3C();
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2B70();
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2BE4();
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2C58();
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2CCC();
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2D40();
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2DB4();
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2E28();
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2E9C();
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2F10();
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2F84();
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2FF8();
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B306C();
    }

    v7 = *(a1 + 1532);
    v9 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR);
    if (v7 <= 6)
    {
      if (v7 <= 3)
      {
        if (v7 != 1)
        {
          if (v7 != 2)
          {
            if (v7 == 3)
            {
              if (v9)
              {
                sub_1004B32B4();
              }

              abort_report_np("Recoverable error: Max chip resets (cal data push failure)");
            }

            goto LABEL_93;
          }

          goto LABEL_81;
        }

        goto LABEL_69;
      }

      goto LABEL_57;
    }

    if (v7 > 9)
    {
      goto LABEL_63;
    }

    if (v7 == 7)
    {
LABEL_72:
      if (v9)
      {
        sub_1004B31E4();
      }

      v9 = abort_report_np("Recoverable error: Max chip resets (time sync enable failure)");
      goto LABEL_75;
    }

    if (v7 == 8)
    {
LABEL_84:
      if (v9)
      {
        sub_1004B31B0();
      }

      v9 = abort_report_np("Recoverable error: Max chip resets (activate AOP time sync failure)");
      goto LABEL_87;
    }

    if (v9)
    {
      sub_1004B317C();
    }

    abort_report_np("Recoverable error: Max chip resets (applyi config params CIR version failure)");
  }

  else
  {
    *(a1 + 1512) = v4 + 1;
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100260A84;
    v14 = &unk_1009A0700;
    v15 = a1;
    AnalyticsSendEventLazy();
    if (sub_100478734(a1 + 40, v5))
    {
      return 1;
    }

    v7 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B2A58();
    }

    if (sub_10047A320(a1 + 40, 0))
    {
      v6 = 1;
      if ((sub_10047A320(a1 + 40, 1) & 1) == 0)
      {
        sub_100260B50(a1, 1, 0);
        return 0;
      }

      return v6;
    }
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B2A8C();
  }

  v9 = abort_report_np("Unable to power off Rose", v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
LABEL_57:
  if (v7 == 4)
  {
LABEL_75:
    if (v9)
    {
      sub_1004B3280();
    }

    v9 = abort_report_np("Recoverable error: Max chip resets (ext clock setting failure)");
    goto LABEL_78;
  }

  if (v7 == 5)
  {
LABEL_87:
    if (v9)
    {
      sub_1004B324C();
    }

    v9 = abort_report_np("Recoverable error: Max chip resets (configure sleep failure)");
    goto LABEL_90;
  }

  if (v7 != 6)
  {
    goto LABEL_93;
  }

  if (v9)
  {
    sub_1004B3218();
  }

  v9 = abort_report_np("Recoverable error: Max chip resets (disable logs failure)");
LABEL_63:
  switch(v7)
  {
    case 10:
LABEL_78:
      if (v9)
      {
        sub_1004B3148();
      }

      v9 = abort_report_np("Recoverable error: Max chip resets (applyi config params update coex status failure)");
LABEL_81:
      if (v9)
      {
        sub_1004B32E8();
      }

      v9 = abort_report_np("Recoverable error: Max chip resets (ping FW failure)");
      goto LABEL_84;
    case 11:
LABEL_90:
      if (v9)
      {
        sub_1004B3114();
      }

      v9 = abort_report_np("Recoverable error: Max chip resets (applyi config params send power table failure)");
      break;
    case 12:
      if (v9)
      {
        sub_1004B30E0();
      }

      v9 = abort_report_np("Recoverable error: Max chip resets (applyi config params set MAC address failure)");
LABEL_69:
      if (v9)
      {
        sub_1004B331C();
      }

      v9 = abort_report_np("Recoverable error: Max chip resets (push FW failure)");
      goto LABEL_72;
  }

LABEL_93:
  if (v9)
  {
    sub_1004B3350();
  }

  v10 = abort_report_np("Recoverable error: Max chip resets (unspecified reason)");
  return sub_100260740(v10);
}

id sub_100260740(uint64_t a1)
{
  v1 = *(a1 + 32);
  v16[0] = @"PushFWFailure";
  v15 = [NSNumber numberWithInt:v1[1517]];
  v17[0] = v15;
  v16[1] = @"PingFWFailure";
  v14 = [NSNumber numberWithInt:v1[1518]];
  v17[1] = v14;
  v16[2] = @"PushCalFailure";
  v13 = [NSNumber numberWithInt:v1[1519]];
  v17[2] = v13;
  v16[3] = @"ExtClockSettingFailure";
  v2 = [NSNumber numberWithInt:v1[1520]];
  v17[3] = v2;
  v16[4] = @"ConfigureFWSleepFailure";
  v3 = [NSNumber numberWithInt:v1[1521]];
  v17[4] = v3;
  v16[5] = @"DisableFWLogsFailure";
  v4 = [NSNumber numberWithInt:v1[1522]];
  v17[5] = v4;
  v16[6] = @"FWTimeSyncEnableFailure";
  v5 = [NSNumber numberWithInt:v1[1523]];
  v17[6] = v5;
  v16[7] = @"AOPActivateTimeSyncEnableFailure";
  v6 = [NSNumber numberWithInt:v1[1524]];
  v17[7] = v6;
  v16[8] = @"ApplyConfigParamsCIRVersionFailure";
  v7 = [NSNumber numberWithInt:v1[1525]];
  v17[8] = v7;
  v16[9] = @"ApplyConfigParamsCoExStatusFailure";
  v8 = [NSNumber numberWithInt:v1[1526]];
  v17[9] = v8;
  v16[10] = @"ApplyConfigParamsSendPowerTableFailure";
  v9 = [NSNumber numberWithInt:v1[1527]];
  v17[10] = v9;
  v16[11] = @"ApplyConfigParamsSetMACAddressFailure";
  v10 = [NSNumber numberWithInt:v1[1528]];
  v17[11] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:12];

  return v11;
}

id sub_100260A84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v5 = @"ResetCounter";
  v2 = [NSNumber numberWithInt:*(v1 + 1512)];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

void sub_100260B50(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = a2;
  v6 = sub_100259144();
  v7 = +[NSUserDefaults standardUserDefaults];
  v8 = [v7 objectForKey:@"PRRoseUnrecoverableErrorAnalytics_FirstTimestamp"];

  if (!v8)
  {
    v9 = +[NSUserDefaults standardUserDefaults];
    v10 = +[NSDate now];
    [v9 setObject:v10 forKey:@"PRRoseUnrecoverableErrorAnalytics_FirstTimestamp"];

    v11 = +[NSUserDefaults standardUserDefaults];
    [v11 setObject:&off_1009C4010 forKey:@"PRRoseUnrecoverableErrorAnalytics_CumulativeCount"];
  }

  v12 = +[NSUserDefaults standardUserDefaults];
  v13 = [v12 objectForKey:@"PRRoseUnrecoverableErrorAnalytics_FirstTimestamp"];

  v14 = +[NSUserDefaults standardUserDefaults];
  v15 = [v14 integerForKey:@"PRRoseUnrecoverableErrorAnalytics_CumulativeCount"];

  v16 = +[NSUserDefaults standardUserDefaults];
  v17 = v15 + 1;
  v18 = [NSNumber numberWithInteger:v17];
  [v16 setObject:v18 forKey:@"PRRoseUnrecoverableErrorAnalytics_CumulativeCount"];

  v19 = 0;
  if (v4 == 2 && a3)
  {
    v19 = *(a3 + 4);
  }

  v32[1] = _NSConcreteStackBlock;
  v32[2] = 3221225472;
  v32[3] = sub_10026A284;
  v32[4] = &unk_1009A0BC0;
  v20 = v13;
  v33 = v20;
  v34 = v17;
  v35 = v4;
  v36 = v19;
  AnalyticsSendEventLazy();
  if (!v6)
  {
    if (!v4)
    {
      goto LABEL_18;
    }

    memset(v41, 0, sizeof(v41));
    v32[0] = 37;
    if (sysctlbyname("kern.bootsessionuuid", v41, v32, 0, 0) || ([NSString stringWithUTF8String:v41], (v21 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_FAULT))
      {
        sub_1004B3524();
      }

      v21 = 0;
      goto LABEL_17;
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_FAULT))
    {
      sub_1004B3484();
    }

    v22 = +[NSUserDefaults standardUserDefaults];
    [v22 setObject:v21 forKey:@"PRRoseUnrecoverableErrorBootUUID"];

    v23 = +[NSUserDefaults standardUserDefaults];
    [v23 setInteger:v4 forKey:@"PRRoseUnrecoverableErrorReason"];

    if (v4 == 1)
    {
      v27 = sub_1002BD51C(v24, v25);
      sub_1002BD590(v27, 5);
      v28 = dispatch_time(0, 1000000000);
      v29 = *(a1 + 8);
      v30 = &stru_1009A0BE0;
    }

    else
    {
      if (v4 != 2)
      {
LABEL_17:

        goto LABEL_18;
      }

      *(&v40 + 5) = 0;
      *&v40 = 0;
      if (a3)
      {
        v40 = *a3;
        v26 = *(a3 + 4);
      }

      else
      {
        v26 = 0;
      }

      v31 = sub_1002BD51C(v24, v25);
      sub_1002BD590(v31, 6);
      v28 = dispatch_time(0, 1000000000);
      v29 = *(a1 + 8);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10026A3DC;
      block[3] = &unk_1009A0C00;
      v38 = v40;
      v39 = v26;
      v30 = block;
    }

    dispatch_after(v28, v29, v30);
    goto LABEL_17;
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_FAULT))
  {
    sub_1004B3384();
  }

  if ((sub_10047A320(a1 + 40, 0) & 1) == 0 && os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_FAULT))
  {
    sub_1004B3448();
  }

LABEL_18:
}

uint64_t sub_100261060(uint64_t a1, uint64_t a2)
{
  if (sub_100478A14(a1, a2))
  {
    v4 = (a1 + 1240);
    v5 = atomic_load((a1 + 1240));
    if (v5 == 4 || (v6 = atomic_load(v4), v6 == 8))
    {
      result = sub_100478608(a1 + 40, v3);
      if (result)
      {
        return result;
      }

      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B3610();
      }
    }

    else if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B3594(v4);
    }
  }

  else if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B3560();
  }

  return 0;
}

uint64_t sub_100261124(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 1240);
  v3 = atomic_load((a1 + 1240));
  if (v3 == 4 || (v4 = atomic_load(v2), v4 == 8))
  {
    v5 = a1 + 40;

    return sub_100478670(v5, a2);
  }

  else
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B3644(v2);
    }

    return 0;
  }
}

void sub_1002611A8(uint64_t a1, void *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10026123C;
  v4[3] = &unk_10099F470;
  v5 = a2;
  v6 = a1;
  v3 = v5;
  sub_1002593D8(a1, v4);
}

void sub_10026123C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*v1)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B36C0();
    }
  }

  else
  {
    v3 = (v1 + 1240);
    v4 = atomic_load((v1 + 1240));
    if (v4 == 5 || (v5 = atomic_load(v3), v5 == 9))
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B36F4((v1 + 1240));
      }

      v6 = *(a1 + 32);
      buf[0] = 0;
      v23 = 0;
      (*(v6 + 16))();
    }

    else
    {
      v7 = atomic_load(v3);
      if (v7 == 4 || (v8 = atomic_load(v3), v8 == 8))
      {
        sub_100478670(v1 + 40, &v19);
        v9 = qword_1009F2630;
        v10 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
        if (v10)
        {
          v11 = atomic_load(v3);
          v12 = sub_10025911C(v10, v11);
          *buf = 136315138;
          *&buf[4] = v12;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Called getChipInfoAsync in compatible terminal state: [%s]", buf, 0xCu);
        }

        v13 = *(a1 + 32);
        v22 = v20;
        *buf = v19;
        v23 = 1;
        (*(v13 + 16))();
      }

      else
      {
        v14 = qword_1009F2630;
        v15 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
        if (v15)
        {
          v16 = atomic_load(v3);
          *buf = 136315138;
          *&buf[4] = sub_10025911C(v15, v16);
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Called getChipInfoAsync in transitory state: [%s]. Caching handler for later execution", buf, 0xCu);
        }

        v17 = objc_retainBlock(*(a1 + 32));
        v18 = *v1;
        *v1 = v17;
      }
    }
  }
}

uint64_t sub_100261448(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: getDeepSleepStateInternal", buf, 2u);
  }

  v13 = sub_1001B22B4(1);
  *buf = 0;
  v11 = 0;
  v12 = 0;
  sub_1000069DC(buf, &v13, v14, 1);
  __p = 0;
  v8 = 0;
  v9 = 0;
  if (!sub_10041B708(a1 + 1248, 45, buf, &__p))
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B3770();
    }

    abort_report_np("PRRose: sending deep sleep state query to RoseSupervisor failed");
LABEL_24:
    __break(1u);
  }

  if (v8 - __p != 1)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B37A4();
    }

    abort_report_np("PRRose: RoseSupervisor returned unexpected size for deep sleep state");
    goto LABEL_24;
  }

  v3 = *__p;
  v4 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    if (v3 > 2)
    {
      v5 = "";
    }

    else
    {
      v5 = off_1009A10F0[v3];
    }

    *v14 = 136315138;
    v15 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PRRose: deep sleep state %s", v14, 0xCu);
  }

  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (*buf)
  {
    v11 = *buf;
    operator delete(*buf);
  }

  if (v3 < 3)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

void sub_100261634(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100261668(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 6;
  return (*(v1 + 16))();
}

id sub_1002616A8(uint64_t a1)
{
  v10[0] = @"LogCollectionType";
  v2 = [NSNumber numberWithInt:*(a1 + 40)];
  v11[0] = v2;
  v10[1] = @"LogCollectionReason";
  v3 = [NSString alloc];
  v4 = *(a1 + 32);
  if (*(v4 + 23) < 0)
  {
    v4 = *v4;
  }

  v5 = [v3 initWithCString:v4 encoding:4];
  v11[1] = v5;
  v10[2] = @"Result";
  v6 = [NSNumber numberWithInt:*(a1 + 44)];
  v11[2] = v6;
  v10[3] = @"PromotedToFatal";
  v7 = [NSNumber numberWithInt:*(a1 + 48)];
  v11[3] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];

  return v8;
}

uint64_t sub_100261834(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = qword_1009F2630;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sub_10046BD18(a2, &__p);
    v7 = v22 >= 0 ? &__p : __p;
    v8 = *(a3 + 23) >= 0 ? a3 : *a3;
    *buf = 136315394;
    v29 = v7;
    v30 = 2080;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRRose::triggerLogCollection: type: %s, reason: %s", buf, 0x16u);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p);
    }
  }

  v9 = sub_10025DC74(a1);
  v11 = v10;
  v12 = qword_1009F2630;
  v13 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (v11)
    {
      v15 = v9;
    }

    else
    {
      v15 = 0;
    }

    LODWORD(__p) = 134217984;
    *(&__p + 4) = v15;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Last known Rose MAC Timestamp: %llu", &__p, 0xCu);
  }

  if (sub_100478A14(v13, v14))
  {
    if ((a2 & 0xFFFFFFFE) == 2)
    {
      v16 = sub_10025BB8C(a1, a2, a3);
    }

    else
    {
      *&__p = 0;
      *(&__p + 1) = &__p;
      v22 = 0x4812000000;
      v23 = sub_100261B28;
      v24 = sub_100261B44;
      v25 = &unk_1009499EA;
      if (*(a3 + 23) < 0)
      {
        sub_1000056BC(&v26, *a3, *(a3 + 1));
      }

      else
      {
        v26 = *a3;
        v27 = *(a3 + 2);
      }

      v17 = *(a1 + 8);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100261B58;
      block[3] = &unk_1009A0A80;
      v20 = a2;
      block[4] = &__p;
      block[5] = a1;
      dispatch_async(v17, block);
      _Block_object_dispose(&__p, 8);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(v26);
      }

      v16 = 1;
    }

    if (!sub_10025D908(a1) && os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B384C();
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B3818();
    }

    return 0;
  }

  return v16;
}

__n128 sub_100261B28(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  *(&a2[3] + 8) = 0uLL;
  a2[3].n128_u64[0] = 0;
  return result;
}

void sub_100261B44(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void sub_100261B58(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = (v2 + 1240);
  v4 = atomic_load((v2 + 1240));
  if (v4 == 4 || (v5 = atomic_load(v3), v5 == 8) || (v6 = atomic_load(v3), v6 == 11))
  {
    if ((sub_10025BB8C(v2, *(a1 + 48), (*(*(a1 + 32) + 8) + 48)) & 1) == 0 && os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B38FC();
    }
  }

  else if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B3880(v3);
  }
}

CFDataRef sub_100261C08(uint64_t a1, uint64_t a2)
{
  if (sub_100478A14(a1, a2))
  {
    v3 = (a1 + 1240);
    v4 = atomic_load((a1 + 1240));
    if (v4 == 4 || (v5 = atomic_load(v3), v5 == 8))
    {
      result = sub_100478A28(a1 + 40);
      if (result)
      {
        return result;
      }

      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B39E0();
      }
    }

    else if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B3964(v3);
    }
  }

  else if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B3930();
  }

  return 0;
}

uint64_t sub_100261CCC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 64);
  v5 = *(a1 + 56);
  v4 = *(a1 + 40);
  v6 = 1;
  return (*(v1 + 16))(v1, v2, &v4);
}

id sub_100261D1C(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: _startReceivingHIDEvents", v4, 2u);
  }

  return sub_10041C1B8(a1 + 1248);
}

uint64_t sub_100261D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *(a1 + 40);
  v8 = *(a1 + 112);
  v21 = *(a1 + 128);
  v20 = v8;
  v9 = *(a1 + 80);
  v19 = *(a1 + 96);
  v18 = v9;
  *&v24[11] = *(a1 + 187);
  v10 = *(a1 + 160);
  *v24 = *(a1 + 176);
  v11 = *(a1 + 144);
  v23 = v10;
  v22 = v11;
  v12 = *(a1 + 64);
  v16 = *(a1 + 48);
  v13 = *(a1 + 32);
  v17 = v12;
  return (*(*(v13 + 1280) + 16))(*(v13 + 1280), &v15, a3, a4, a5, a6, a7, a8);
}

const char *sub_100261E38(uint64_t a1, int a2)
{
  if ((a2 - 1) > 0xA)
  {
    return "HostStartup";
  }

  else
  {
    return off_1009A1108[a2 - 1];
  }
}

void sub_100261E60(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = qword_1009F2630;
    v6 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      v7 = atomic_load((a1 + 1240));
      *buf = 136315394;
      *&buf[4] = sub_10025911C(v6, v7);
      *&buf[12] = 2080;
      *&buf[14] = sub_100261E38(*&buf[4], a2);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PRRose::setStateFromUnknownToHost ignoring unexpected event while in state: %s, event: %s", buf, 0x16u);
    }

    return;
  }

  sub_100261D1C(a1);
  if (!sub_10025D228(a1))
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B3A14();
    }

    abort_report_np("PRRose::setStateFromUnknownToHost failed to assert UWB comms ownership");
    goto LABEL_99;
  }

  if (sub_10025D750(a1))
  {
    v37 = 0;
    v9 = sub_10047A41C(a1 + 40, &v37);
    if (v37)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    if ((v11 & 1) == 0)
    {
      v12 = qword_1009F2630;
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Rose powered off or unable to read the power state. Powering it on", buf, 2u);
      }

      if ((sub_10047A320(a1 + 40, 1) & 1) == 0)
      {
        sub_100260B50(a1, 1, 0);
        return;
      }
    }

    v13 = sub_100478A20(a1 + 40, v10);
    v14 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      if ((v13 - 1) > 3)
      {
        v15 = "SecureROM";
      }

      else
      {
        v15 = off_1009A1178[v13 - 1];
      }

      *buf = 136315138;
      *&buf[4] = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "PRRose: Firmware State: %s", buf, 0xCu);
    }

    if (v13 != 1)
    {
      operator new();
    }

    v17 = sub_1000054A8();
    if (sub_100460A50(v17))
    {
      v18 = sub_100261448(a1);
      if (v18 <= 1)
      {
        if (v18 == 1)
        {
          v20 = qword_1009F2630;
          if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "PRRose: not in deep sleep, proceeding", buf, 2u);
          }
        }

        else if (!v18)
        {
          if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
          {
            sub_1004B3C14();
          }

          abort_report_np("failed to get deep sleep state during startup");
          goto LABEL_99;
        }
      }

      else if (v18 == 2)
      {
        v21 = qword_1009F2630;
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "PRRose: requesting deep sleep exit before proceeding", buf, 2u);
        }

        if ((sub_10025C7F4(a1, 0) & 1) == 0)
        {
          sub_1002601C8(a1);
          if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
          {
            sub_1004B3BE0();
          }

          goto LABEL_37;
        }
      }

      else if (v18 == 3)
      {
        v19 = qword_1009F2630;
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "PRRose: waiting for deep sleep exit to complete before proceeding", buf, 2u);
        }

        if ((sub_100267944(a1, 0) & 1) == 0)
        {
          sub_1002601C8(a1);
          if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
          {
            sub_1004B3BE0();
          }

LABEL_37:
          abort_report_np("failed to exit deep sleep during startup");
LABEL_99:
          __break(1u);
          return;
        }
      }
    }

    atomic_store(2u, (a1 + 1240));
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_100267B68;
    v36[3] = &unk_10098AD98;
    v36[4] = a1;
    sub_1002593D8(a1, v36);
    memset(buf, 0, sizeof(buf));
    if (!sub_10041BE14(a1 + 1248, 0xD6u, buf))
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B3C48();
      }

      abort_report_np("PRRose::setStateFromUnknownToHost: failed to get AOP property CmdQueueClearAllowed");
      goto LABEL_99;
    }

    v22 = **buf;
    __lk.__m_ = (a1 + 1344);
    __lk.__owns_ = 1;
    std::mutex::lock((a1 + 1344));
    v23 = atomic_load((a1 + 1456));
    v24 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 67109376;
      *&v38[4] = v22 != 0;
      v39 = 1024;
      v40 = v23 & 1;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "PRRose aopCmdQueueClearAllowedProperty = %d, fAopResetCompleted = %d", v38, 0xEu);
    }

    if (!v22 && (v23 & 1) == 0)
    {
      v25.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 200000000;
      while (1)
      {
        v26 = atomic_load((a1 + 1456));
        if (v26)
        {
          goto LABEL_72;
        }

        if (std::chrono::steady_clock::now().__d_.__rep_ >= v25.__d_.__rep_)
        {
          goto LABEL_71;
        }

        v27.__d_.__rep_ = v25.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
        if (v27.__d_.__rep_ >= 1)
        {
          break;
        }

LABEL_70:
        if (std::chrono::steady_clock::now().__d_.__rep_ >= v25.__d_.__rep_)
        {
LABEL_71:
          v31 = atomic_load((a1 + 1456));
          if (v31)
          {
            goto LABEL_72;
          }

          if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
          {
            sub_1004B3C7C();
          }

          atomic_store(6u, (a1 + 1240));
          sub_100004A08(v38, "PRRose::setStateFromUnknownToHost: failed to clear AOP command queue.");
          v32 = sub_10025BB8C(a1, 0, v38);
          if (v41 < 0)
          {
            operator delete(*v38);
          }

          if ((v32 & 1) == 0)
          {
            if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
            {
              sub_1004B3CB0();
            }

            abort_report_np("PRRose::setStateFromUnknownToHost: Failed to trigger fatal crashLog");
            goto LABEL_99;
          }

          goto LABEL_82;
        }
      }

      std::chrono::steady_clock::now();
      v28.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v28.__d_.__rep_)
      {
        v29 = 0;
        goto LABEL_68;
      }

      if (v28.__d_.__rep_ < 1)
      {
        if (v28.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v29 = 0x8000000000000000;
          goto LABEL_68;
        }
      }

      else if (v28.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v29 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_66;
      }

      v29 = 1000 * v28.__d_.__rep_;
LABEL_66:
      if (v29 > (v27.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v30.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_69:
        std::condition_variable::__do_timed_wait((a1 + 1408), &__lk, v30);
        std::chrono::steady_clock::now();
        goto LABEL_70;
      }

LABEL_68:
      v30.__d_.__rep_ = v29 + v27.__d_.__rep_;
      goto LABEL_69;
    }

LABEL_72:
    sub_10025D2FC(a1);
    if (*(a3 + 23) < 0)
    {
      sub_1000056BC(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v34 = *(a3 + 16);
    }

    sub_1002594BC(a1, 2, __p);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p[0]);
    }

LABEL_82:
    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B3A48();
    }

    atomic_store(6u, (a1 + 1240));
    sub_100004A08(buf, "PRRose::setStateFromUnknownToHost: failed to reset AOP jobs");
    v16 = sub_10025BB8C(a1, 0, buf);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    if ((v16 & 1) == 0)
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B3A7C();
      }

      abort_report_np("PRRose::setStateFromUnknownToHost: Failed to trigger fatal crashLog");
      goto LABEL_99;
    }
  }
}

void sub_100262874(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, std::mutex *a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a18 == 1)
  {
    std::mutex::unlock(a17);
  }

  v38 = *(v36 - 112);
  if (v38)
  {
    *(v36 - 104) = v38;
    operator delete(v38);
  }

  _Unwind_Resume(exception_object);
}

void sub_100262948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 <= 6)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        atomic_store(2u, (a1 + 1240));
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_100267FE4;
        v30[3] = &unk_10098AD98;
        v30[4] = a1;
        sub_1002593D8(a1, v30);
        if (sub_10025FCB0(a1))
        {
          v13 = 2;
        }

        else
        {
          v15 = *(a1 + 1517);
          if (v15 <= 0xC7)
          {
            *(a1 + 1517) = v15 + 1;
            v16 = *(a1 + 1532);
            if (v16 <= 0xC && v15 >= *(a1 + 1516 + v16))
            {
              *(a1 + 1532) = 1;
            }
          }

          v13 = 3;
        }

        if (*(a3 + 23) < 0)
        {
          sub_1000056BC(__p, *a3, *(a3 + 8));
        }

        else
        {
          *__p = *a3;
          v29 = *(a3 + 16);
        }

        sub_1002594BC(a1, v13, __p);
        if ((SHIBYTE(v29) & 0x80000000) == 0)
        {
          return;
        }

        v17 = __p[0];
      }

      else
      {
        if (a2 != 6)
        {
          goto LABEL_45;
        }

        atomic_store(6u, (a1 + 1240));
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_100268020;
        v27[3] = &unk_10098AD98;
        v27[4] = a1;
        sub_1002593D8(a1, v27);
        if (*(a3 + 23) < 0)
        {
          sub_1000056BC(&__dst, *a3, *(a3 + 8));
        }

        else
        {
          __dst = *a3;
          v26 = *(a3 + 16);
        }

        sub_1002594BC(a1, 6, &__dst);
        if ((SHIBYTE(v26) & 0x80000000) == 0)
        {
          return;
        }

        v17 = __dst;
      }

      goto LABEL_43;
    }

    v14 = qword_1009F2630;
    if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v8 = "PRRose, already started, ignoring HostStartup";
LABEL_25:
    v11 = v14;
    v12 = 2;
    goto LABEL_26;
  }

  if (a2 <= 9)
  {
    if (a2 != 7)
    {
      if (a2 == 8)
      {
        v5 = qword_1009F2630;
        v6 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
        if (v6)
        {
          v7 = atomic_load((a1 + 1240));
          *buf = 136315138;
          v32 = sub_10025911C(v6, v7);
          v8 = "PRRose, regulatory,configuration update ignored during %s";
LABEL_16:
          v11 = v5;
          v12 = 12;
LABEL_26:
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v8, buf, v12);
          return;
        }

        return;
      }

LABEL_45:
      v18 = a2;
      v19 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR);
      if (v19)
      {
        sub_1004B3CE4();
      }

      v20 = atomic_load((a1 + 1240));
      v21 = sub_10025911C(v19, v20);
      v22 = sub_100261E38(v21, v18);
      abort_report_np("PRRose unexpected event while in state: %s, event: %s", v21, v22);
      __break(1u);
      return;
    }

    sub_100257E7C(a1);
    if (*(a3 + 23) < 0)
    {
      sub_1000056BC(&v23, *a3, *(a3 + 8));
    }

    else
    {
      v23 = *a3;
      v24 = *(a3 + 16);
    }

    sub_1002594BC(a1, 1, &v23);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      return;
    }

    v17 = v23;
LABEL_43:
    operator delete(v17);
    return;
  }

  if (a2 == 10)
  {
    v14 = qword_1009F2630;
    if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v8 = "PRRose, already started, ignoring PowerOn";
    goto LABEL_25;
  }

  if (a2 != 11)
  {
    goto LABEL_45;
  }

  v5 = qword_1009F2630;
  v9 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    v10 = atomic_load((a1 + 1240));
    *buf = 136315138;
    v32 = sub_10025911C(v9, v10);
    v8 = "PRRose, LPEM enable event ignored during %s";
    goto LABEL_16;
  }
}

void sub_100262D48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

void sub_100262D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a2 > 5)
  {
    if (a2 <= 7)
    {
      if (a2 != 6)
      {
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
        {
          sub_1004B3D68();
        }

        return;
      }

      atomic_store(6u, (a1 + 1240));
      if (*(a3 + 23) < 0)
      {
        sub_1000056BC(__dst, *a3, *(a3 + 8));
      }

      else
      {
        *__dst = *a3;
        v152 = *(a3 + 16);
      }

      sub_1002594BC(a1, 6, __dst);
      if (SHIBYTE(v152) < 0)
      {
        operator delete(__dst[0]);
      }

      v150[0] = _NSConcreteStackBlock;
      v150[1] = 3221225472;
      v150[2] = sub_100268304;
      v150[3] = &unk_10098AD98;
      v150[4] = a1;
      v34 = v150;
LABEL_74:
      sub_1002593D8(a1, v34);
      return;
    }

    if (a2 == 8)
    {
      v5 = qword_1009F2630;
      v20 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
      if (!v20)
      {
        return;
      }

      v21 = atomic_load((a1 + 1240));
      LODWORD(buf) = 136315138;
      *(&buf + 4) = sub_10025911C(v20, v21);
      v8 = "PRRose, regulatory,configuration update ignored during %s";
      goto LABEL_32;
    }

    if (a2 == 11)
    {
      v5 = qword_1009F2630;
      v6 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
      if (!v6)
      {
        return;
      }

      v7 = atomic_load((a1 + 1240));
      LODWORD(buf) = 136315138;
      *(&buf + 4) = sub_10025911C(v6, v7);
      v8 = "PRRose, LPEM enable event ignored during %s";
LABEL_32:
      v18 = v5;
      v19 = 12;
      goto LABEL_33;
    }

    goto LABEL_269;
  }

  if (!a2)
  {
    v17 = qword_1009F2630;
    if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(buf) = 0;
    v8 = "PRRose, already started, ignoring HostStartup";
    v18 = v17;
    v19 = 2;
LABEL_33:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v8, &buf, v19);
    return;
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      atomic_store(6u, (a1 + 1240));
      if (*(a3 + 23) < 0)
      {
        sub_1000056BC(__p, *a3, *(a3 + 8));
      }

      else
      {
        *__p = *a3;
        v155 = *(a3 + 16);
      }

      sub_1002594BC(a1, 3, __p);
      if (SHIBYTE(v155) < 0)
      {
        operator delete(__p[0]);
      }

      v153[0] = _NSConcreteStackBlock;
      v153[1] = 3221225472;
      v153[2] = sub_1002682C4;
      v153[3] = &unk_10098AD98;
      v153[4] = a1;
      v34 = v153;
      goto LABEL_74;
    }

LABEL_269:
    v142 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR);
    if (v142)
    {
      sub_1004B3CE4();
    }

    v143 = atomic_load((a1 + 1240));
    v144 = sub_10025911C(v142, v143);
    v145 = sub_100261E38(v144, v3);
    abort_report_np("PRRose unexpected event while in state: %s, event: %s", v144, v145);
    __break(1u);
    return;
  }

  if (sub_100256090(a1, a2))
  {
    v9 = +[NSUserDefaults standardUserDefaults];
    v10 = [v9 BOOLForKey:@"TestResetChipAbort"];

    if (v10)
    {
      v11 = +[NSUserDefaults standardUserDefaults];
      v12 = [v11 integerForKey:@"TestResetChipAbortReason"];

      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B41B4();
      }

      if (v12 <= 0xC)
      {
        v13 = a1 + 1516;
        v14 = *(a1 + 1516 + (v12 & 0xF));
        if (v14 <= 0xC7)
        {
          *(v13 + (v12 & 0xF)) = v14 + 1;
          v15 = *(a1 + 1532);
          if (v15 <= 0xC && v14 >= *(v13 + v15))
          {
            *(a1 + 1532) = v12;
          }
        }
      }

      sub_100004A08(&v192, "Simulate boot error to test reset chip abort.");
      sub_1002594BC(a1, 3, &v192);
      if (v193 < 0)
      {
        v16 = v192;
LABEL_268:
        operator delete(v16);
        return;
      }

      return;
    }
  }

  sub_10025CF40(a1);
  atomic_store(3u, (a1 + 1240));
  sub_100004A08(&buf, "shenan");
  sub_10026AF30(&v191, &buf);
  if (SBYTE7(v200) < 0)
  {
    operator delete(buf);
  }

  sub_100475AA0(a1 + 40, &v191, v182);
  v22 = *(a1 + 1312);
  if (v22)
  {
    sub_1002DA260(v22, &v191);
  }

  if (v190)
  {
    v23 = sub_1000054A8();
    if (v190 != 1)
    {
      goto LABEL_272;
    }

    sub_100460188(v23, v182);
    v24 = qword_1009F2630;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      if ((v190 & 1) == 0)
      {
        sub_1000195BC();
      }

      sub_100456838(v182);
      if ((SBYTE7(v200) & 0x80u) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf;
      }

      LODWORD(v195) = 136315138;
      *(&v195 + 4) = p_buf;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Hello Response: %s", &v195, 0xCu);
      if (SBYTE7(v200) < 0)
      {
        operator delete(buf);
      }
    }

    if (*(a1 + 1496) == 1)
    {
      v26 = sub_1000054A8();
      if ((sub_100460A68(v26) & 1) == 0)
      {
        v27 = qword_1009F2630;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          sub_1004B3DD0();
        }

        *(a1 + 1496) = 0;
        *(a1 + 1457) = 0;
        sub_1001DABA8(*(a1 + 1544), 15000);
      }
    }

    v28 = *(a1 + 1312);
    if (v28)
    {
      if (v190 != 1)
      {
        goto LABEL_272;
      }

      sub_1002DA5B8(v28, v182);
    }

    if (sub_10025DB18(a1))
    {
      if (v190)
      {
        if (v189 == 1)
        {
          sub_10026B028(&buf, &v184);
          if (!v201)
          {
            v29 = qword_1009F2630;
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              sub_1004B3E38();
            }
          }

          sub_100019668(&buf);
        }

        v30 = +[NSUserDefaults standardUserDefaults];
        v149 = [v30 objectForKey:@"NBePAeLNA"];

        if (v149 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v31 = [v149 integerValue];
          v32 = v31;
          v147 = v31 >> 8;
          v33 = 1;
        }

        else
        {
          v32 = 0;
          LOBYTE(v147) = 0;
          v33 = 0;
        }

        v40 = +[NSUserDefaults standardUserDefaults];
        v148 = [v40 objectForKey:@"UWBePAeLNA"];

        if (v148 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v41 = [v148 integerValue];
          v42 = v41;
          v43 = v41 >> 8;
          v44 = 1;
        }

        else
        {
          v42 = 0;
          LOBYTE(v43) = 0;
          v44 = 0;
        }

        v45 = sub_1000054A8();
        v46 = sub_1004609DC(v45);
        v47 = sub_1000054A8();
        v48 = v46 & 0x1FFFF;
        if ((sub_100460AB8(v47) & (v33 | ((v46 & 0x1FFFF) == 65541))) == 1)
        {
          v169 = 0;
          *v168 = 0;
          v170 = 0;
          if (v33)
          {
            LOBYTE(buf) = v32;
            LOBYTE(v195) = v147;
            sub_1001FE4D0(v168, &buf);
            sub_1001FE4D0(v168, &v195);
          }

          else
          {
            LOBYTE(buf) = 2;
            sub_1001FE4D0(v168, &buf);
            LOBYTE(buf) = 2;
            sub_1001FE4D0(v168, &buf);
          }

          v50 = qword_1009F2630;
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v51 = **v168;
            v52 = *(*v168 + 1);
            LODWORD(buf) = 67109376;
            DWORD1(buf) = v51;
            WORD4(buf) = 1024;
            *(&buf + 10) = v52;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "Set NB ePA&eLNA to high gain mode, NB:(0x%02x, 0x%02x)", &buf, 0xEu);
          }

          LOBYTE(buf) = 45;
          *(&buf + 1) = 0;
          v200 = 0uLL;
          sub_100009A48(&buf + 1, *v168, v169, v169 - *v168);
          LOBYTE(v195) = buf;
          v197 = 0;
          *(&v195 + 1) = 0;
          v196 = 0;
          sub_100009A48(&v195 + 1, *(&buf + 1), v200, v200 - *(&buf + 1));
          v176 = 0;
          v175 = 0;
          v177 = 0;
          sub_10026B8B4(&v175, &v195, v198, 1uLL);
          if (*(&v195 + 1))
          {
            v196 = *(&v195 + 1);
            operator delete(*(&v195 + 1));
          }

          v195 = 0uLL;
          v196 = 0;
          sub_10026B35C(&v195, v175, v176, (v176 - v175) >> 5);
          sub_1004775F4(a1 + 40, &v195);
        }

        v49 = qword_1009F2630;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Use default NB ePA&eLNA settings", &buf, 2u);
        }

        v53 = sub_1000054A8();
        v54 = sub_100460A50(v53);
        if (v33)
        {
          if (v48 == 65541)
          {
            v55 = 1;
          }

          else
          {
            v55 = v44;
          }

          if (v54 & v55)
          {
            v176 = 0;
            v175 = 0;
            v177 = 0;
            v173 = 0;
            v172 = 0;
            v174 = 0;
            if (v44)
            {
              LOBYTE(buf) = v32;
              LOBYTE(v195) = v147;
              v168[0] = v42;
              v165[0] = v43;
              sub_1001FE4D0(&v175, &buf);
              sub_1001FE4D0(&v175, &v195);
              sub_1001FE4D0(&v172, v168);
              sub_1001FE4D0(&v172, v165);
              goto LABEL_123;
            }

LABEL_122:
            LOBYTE(buf) = 0;
            sub_1001FE4D0(&v175, &buf);
            LOBYTE(buf) = 2;
            sub_1001FE4D0(&v175, &buf);
            LOBYTE(buf) = 0;
            sub_1001FE4D0(&v172, &buf);
            LOBYTE(buf) = 2;
            sub_1001FE4D0(&v172, &buf);
LABEL_123:
            v57 = qword_1009F2630;
            if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
            {
              v58 = *(v175 + 1);
              v59 = *v172;
              v60 = *(v172 + 1);
              *&buf = __PAIR64__(*v175, 67109888);
              WORD4(buf) = 1024;
              *(&buf + 10) = v58;
              HIWORD(buf) = 1024;
              LODWORD(v200) = v59;
              WORD2(v200) = 1024;
              *(&v200 + 6) = v60;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Set NB&UWB eLNA to high gain mode: NB: (0x%02x, 0x%02x), UWB: (0x%02x, 0x%02x)", &buf, 0x1Au);
            }

            LOBYTE(v195) = 45;
            v197 = 0;
            *(&v195 + 1) = 0;
            v196 = 0;
            sub_100009A48(&v195 + 1, v175, v176, v176 - v175);
            v168[0] = 38;
            v171 = 0;
            v169 = 0;
            v170 = 0;
            sub_100009A48(&v169, v172, v173, v173 - v172);
            LOBYTE(buf) = v195;
            *(&buf + 1) = 0;
            v200 = 0uLL;
            sub_100009A48(&buf + 1, *(&v195 + 1), v196, v196 - *(&v195 + 1));
            LOBYTE(v201) = v168[0];
            v203[1] = 0;
            v202 = 0;
            v203[0] = 0;
            sub_100009A48(&v202, v169, v170, v170 - v169);
            v166 = 0;
            *v165 = 0;
            v167 = 0;
            sub_10026B8B4(v165, &buf, &v204, 2uLL);
            v61 = 0;
            while (1)
            {
              v62 = v203[v61 - 1];
              if (v62)
              {
                v203[v61] = v62;
                operator delete(v62);
              }

              v61 -= 4;
              if (v61 == -8)
              {
                buf = 0uLL;
                *&v200 = 0;
                sub_10026B35C(&buf, *v165, v166, (v166 - *v165) >> 5);
                sub_1004775F4(a1 + 40, &buf);
              }
            }
          }
        }

        else
        {
          if (v48 == 65541)
          {
            v56 = v54;
          }

          else
          {
            v56 = 0;
          }

          if (v56 == 1)
          {
            v176 = 0;
            v175 = 0;
            v177 = 0;
            v173 = 0;
            v172 = 0;
            v174 = 0;
            goto LABEL_122;
          }
        }

        v63 = qword_1009F2630;
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Use default NB&UWB eLNA settings", &buf, 2u);
        }

        sub_10025F8B4(a1);
        v64 = sub_1000054A8();
        if (sub_100460A50(v64))
        {
          v65 = +[NSUserDefaults standardUserDefaults];
          if (([v65 BOOLForKey:@"disableUWBRxLP"] & 1) == 0)
          {
            v66 = qword_1009F2630;
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf) = 0;
              _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "enable UWB RX LP", &buf, 2u);
            }

            LOBYTE(buf) = 1;
            v170 = 0;
            *v168 = 0;
            v169 = 0;
            sub_1000069DC(v168, &buf, &buf + 1, 1);
            LOBYTE(buf) = 40;
            *(&buf + 1) = 0;
            v200 = 0uLL;
            sub_100009A48(&buf + 1, *v168, v169, v169 - *v168);
            LOBYTE(v195) = buf;
            v197 = 0;
            *(&v195 + 1) = 0;
            v196 = 0;
            sub_100009A48(&v195 + 1, *(&buf + 1), v200, v200 - *(&buf + 1));
            v176 = 0;
            v175 = 0;
            v177 = 0;
            sub_10026B8B4(&v175, &v195, v198, 1uLL);
            if (*(&v195 + 1))
            {
              v196 = *(&v195 + 1);
              operator delete(*(&v195 + 1));
            }

            v195 = 0uLL;
            v196 = 0;
            sub_10026B35C(&v195, v175, v176, (v176 - v175) >> 5);
            sub_1004775F4(a1 + 40, &v195);
          }
        }

        v67 = sub_1000054A8();
        if (sub_1000149D4(v67))
        {
          v68 = qword_1009F2630;
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "Enable Host GTB", &buf, 2u);
          }

          LOBYTE(buf) = 1;
          v170 = 0;
          *v168 = 0;
          v169 = 0;
          sub_1000069DC(v168, &buf, &buf + 1, 1);
          LOBYTE(buf) = 51;
          *(&buf + 1) = 0;
          v200 = 0uLL;
          sub_100009A48(&buf + 1, *v168, v169, v169 - *v168);
          LOBYTE(v195) = buf;
          v197 = 0;
          *(&v195 + 1) = 0;
          v196 = 0;
          sub_100009A48(&v195 + 1, *(&buf + 1), v200, v200 - *(&buf + 1));
          v176 = 0;
          v175 = 0;
          v177 = 0;
          sub_10026B8B4(&v175, &v195, v198, 1uLL);
          if (*(&v195 + 1))
          {
            v196 = *(&v195 + 1);
            operator delete(*(&v195 + 1));
          }

          v195 = 0uLL;
          v196 = 0;
          sub_10026B35C(&v195, v175, v176, (v176 - v175) >> 5);
          sub_1004775F4(a1 + 40, &v195);
        }

        if (!sub_10025DDA0())
        {
          LOWORD(buf) = 1;
          v170 = 0;
          *v168 = 0;
          v169 = 0;
          sub_1000069DC(v168, &buf, &buf + 2, 2);
          LOBYTE(buf) = 13;
          *(&buf + 1) = 0;
          v200 = 0uLL;
          sub_100009A48(&buf + 1, *v168, v169, v169 - *v168);
          LOBYTE(v195) = buf;
          v197 = 0;
          *(&v195 + 1) = 0;
          v196 = 0;
          sub_100009A48(&v195 + 1, *(&buf + 1), v200, v200 - *(&buf + 1));
          v176 = 0;
          v175 = 0;
          v177 = 0;
          sub_10026B8B4(&v175, &v195, v198, 1uLL);
          if (*(&v195 + 1))
          {
            v196 = *(&v195 + 1);
            operator delete(*(&v195 + 1));
          }

          v195 = 0uLL;
          v196 = 0;
          sub_10026B35C(&v195, v175, v176, (v176 - v175) >> 5);
          sub_1004775F4(a1 + 40, &v195);
        }

        keyExistsAndHasValidFormat[0] = 0;
        AppBooleanValue = CFPreferencesGetAppBooleanValue(@"enableRoseFirmwareSleep", @"com.apple.nearbyd", keyExistsAndHasValidFormat);
        v70 = keyExistsAndHasValidFormat[0];
        v71 = qword_1009F2630;
        v72 = os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT);
        if (!v70 || AppBooleanValue)
        {
          if (v72)
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "Enabling FW sleep", &buf, 2u);
          }

          LOWORD(v195) = 257;
          BYTE2(v195) = 0;
          *(&v195 + 1) = 3;
          if (sub_10047A0D8(a1 + 40, &v195))
          {
            sub_10025D3CC(a1);
            LOBYTE(v175) = 1;
            buf = 0uLL;
            *&v200 = 0;
            sub_1000069DC(&buf, &v175, &v175 + 1, 1);
            v73 = sub_10041BAC8(a1 + 1248, 217, &buf);
            v74 = qword_1009F2630;
            v75 = v74;
            if (v73)
            {
              if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
              {
                *v168 = 0;
                _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "Wrote the OTPWorkaroundCompleted property", v168, 2u);
              }
            }

            else if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              sub_1004B3FA4();
            }

            if (buf)
            {
              *(&buf + 1) = buf;
              operator delete(buf);
            }

            goto LABEL_183;
          }

          v76 = qword_1009F2630;
          if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            sub_1004B3F70();
          }

          v77 = *(a1 + 1521);
          if (v77 <= 0xC7)
          {
            *(a1 + 1521) = v77 + 1;
            v78 = *(a1 + 1532);
            if (v78 <= 0xC && v77 >= *(a1 + 1516 + v78))
            {
              *(a1 + 1532) = 5;
            }
          }

          sub_100004A08(&v161, "Enabling sleep failed");
          sub_1002594BC(a1, 3, &v161);
          if (v162 < 0)
          {
            v79 = v161;
LABEL_162:
            operator delete(v79);
          }
        }

        else
        {
          if (v72)
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v71, OS_LOG_TYPE_DEFAULT, "enableRoseFirmwareSleep defaults value set to false. Disabling FW sleep", &buf, 2u);
          }

          LOWORD(buf) = 256;
          BYTE2(buf) = 0;
          *(&buf + 1) = 3;
          if (sub_10047A0D8(a1 + 40, &buf))
          {
            sub_10025D4A0(a1);
LABEL_183:
            v83 = +[NSUserDefaults standardUserDefaults];
            v84 = [v83 BOOLForKey:@"DisablePowerTable"];
            if (((sub_10045ED24(v84, v85) == 1) & v84) == 1)
            {
              LOBYTE(buf) = 0;
              v196 = 0;
              v195 = 0uLL;
              sub_1000069DC(&v195, &buf, &buf + 1, 1);
              LOBYTE(buf) = 17;
              *(&buf + 1) = 0;
              v200 = 0uLL;
              sub_100009A48(&buf + 1, v195, *(&v195 + 1), *(&v195 + 1) - v195);
              v176 = 0;
              v175 = 0;
              v177 = 0;
              sub_10026B8B4(&v175, &buf, &v201, 1uLL);
              v169 = 0;
              *v168 = 0;
              v170 = 0;
              sub_10026B35C(v168, v175, v176, (v176 - v175) >> 5);
              v172 = &v175;
              sub_100189A94(&v172);
              if (*(&buf + 1))
              {
                *&v200 = *(&buf + 1);
                operator delete(*(&buf + 1));
              }

              sub_10025EAE8(a1, v168);
            }

            v86 = +[NSUserDefaults standardUserDefaults];
            v87 = [v86 objectForKey:@"DisableSleepBetweenRangingCycles"];
            v88 = v87 == 0;

            if (v88)
            {
              v91 = 1;
            }

            else
            {
              v89 = [v86 BOOLForKey:@"DisableSleepBetweenRangingCycles"];
              v90 = qword_1009F2630;
              if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(buf) = 0;
                _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "OVERRIDE: UWB sleep between ranging settings", &buf, 2u);
              }

              v91 = v89 ^ 1;
            }

            v92 = qword_1009F2630;
            if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
            {
              v93 = "NO";
              if (v91)
              {
                v93 = "YES";
              }

              LODWORD(buf) = 136315138;
              *(&buf + 4) = v93;
              _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "Platform supports UWB sleep between ranging cycles. Enable? %s", &buf, 0xCu);
            }

            if (!v91)
            {
              goto LABEL_210;
            }

            sub_10026AD28(&buf, 5, 2);
            LOBYTE(v195) = buf;
            v197 = 0;
            *(&v195 + 1) = 0;
            v196 = 0;
            sub_100009A48(&v195 + 1, *(&buf + 1), v200, v200 - *(&buf + 1));
            v169 = 0;
            *v168 = 0;
            v170 = 0;
            sub_10026B8B4(v168, &v195, v198, 1uLL);
            if (*(&v195 + 1))
            {
              v196 = *(&v195 + 1);
              operator delete(*(&v195 + 1));
            }

            v176 = 0;
            v175 = 0;
            v177 = 0;
            sub_10026B35C(&v175, *v168, v169, (v169 - *v168) >> 5);
            *&v195 = off_1009A0EE8;
            v197 = &v195;
            v94 = sub_100477780(a1 + 40, &v175, &v195);
            sub_10026BCF8(&v195);
            *&v195 = &v175;
            sub_100189A94(&v195);
            v95 = qword_1009F2630;
            v96 = v95;
            if (v94)
            {
              if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v195) = 0;
                _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "Successfully enabled UWB sleep between ranging cycles", &v195, 2u);
              }
            }

            else
            {
              if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
              {
                sub_1004B4040();
              }

              sub_100004A08(v159, "Failed to enable UWB sleep between ranging cycles");
              sub_1002594BC(a1, 3, v159);
              if (v160 < 0)
              {
                operator delete(v159[0]);
              }
            }

            *&v195 = v168;
            sub_100189A94(&v195);
            if (*(&buf + 1))
            {
              *&v200 = *(&buf + 1);
              operator delete(*(&buf + 1));
            }

            if (v94)
            {
LABEL_210:
              v158 = v91;
              v176 = 0;
              v175 = 0;
              v177 = 0;
              sub_1000069DC(&v175, &v158, v159, 1);
              if (!sub_10041BAC8(a1 + 1248, 218, &v175))
              {
                v97 = qword_1009F2630;
                if (os_log_type_enabled(v97, OS_LOG_TYPE_FAULT))
                {
                  sub_1004B4074();
                }
              }

              if (*(a1 + 1336))
              {
LABEL_219:
                v101 = atomic_load((a1 + 1338));
                if (v101)
                {
                  v102 = qword_1009F2630;
                  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
                  {
                    LOWORD(buf) = 0;
                    _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "Skip parsing cal files because it was done previously", &buf, 2u);
                  }
                }

                else
                {
                  atomic_store(1u, (a1 + 1338));
                  sub_10032B340(&buf, 0);
                  sub_100477FAC(a1 + 40, 1, &v195);
                  sub_10032B388(&buf, &v195, v103, v104, v105, v106, v107, v108);
                  v109 = qword_1009F2630;
                  if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
                  {
                    *v168 = 0;
                    _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "Parsing rMCL file finished", v168, 2u);
                  }

                  if (v195)
                  {
                    *(&v195 + 1) = v195;
                    operator delete(v195);
                  }

                  sub_100477FAC(a1 + 40, 2, &v195);
                  sub_10032B388(&buf, &v195, v110, v111, v112, v113, v114, v115);
                  v116 = qword_1009F2630;
                  if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
                  {
                    *v168 = 0;
                    _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "Parsing rSCL file finished", v168, 2u);
                  }

                  if (v195)
                  {
                    *(&v195 + 1) = v195;
                    operator delete(v195);
                  }

                  v117 = *(a1 + 1312);
                  if (v117)
                  {
                    sub_1002E0AF0(v117, v205);
                  }

                  v118 = sub_1000054A8();
                  sub_1004604EC(v118, &buf, v119, v120, v121, v122, v123, v124, v146);
                  sub_100268128(&buf);
                }

                v125 = qword_1009F2630;
                if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
                {
                  v126 = sub_1000054A8();
                  v127 = sub_1000149D4(v126);
                  v128 = sub_1000054A8();
                  v129 = sub_1000149D4(v128);
                  LODWORD(buf) = 67109376;
                  DWORD1(buf) = v127;
                  WORD4(buf) = 1024;
                  *(&buf + 10) = !v129;
                  _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "Host and UWB share clock: %d. Enabling UWB time sync with host: %d", &buf, 0xEu);
                }

                v130 = qword_1009F2630;
                if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
                {
                  v131 = sub_1000054A8();
                  v132 = sub_100460AB0(v131);
                  v133 = sub_1000054A8();
                  v134 = sub_100460AB0(v133);
                  LODWORD(buf) = 67109376;
                  DWORD1(buf) = v132;
                  WORD4(buf) = 1024;
                  *(&buf + 10) = !v134;
                  _os_log_impl(&_mh_execute_header, v130, OS_LOG_TYPE_DEFAULT, "Host and BT share clock: %d. Enabling UWB time sync with BT: %d", &buf, 0xEu);
                }

                v135 = sub_1000054A8();
                v136 = sub_1000149D4(v135);
                v137 = sub_1000054A8();
                if (sub_100460AB0(v137))
                {
                  v138 = !v136;
                }

                else
                {
                  v138 = !v136 | 2;
                }

                sub_10026AD28(v168, 26, v138);
                LOBYTE(buf) = v168[0];
                *(&buf + 1) = 0;
                v200 = 0uLL;
                sub_100009A48(&buf + 1, v169, v170, v170 - v169);
                v173 = 0;
                v172 = 0;
                v174 = 0;
                sub_10026B8B4(&v172, &buf, &v201, 1uLL);
                if (*(&buf + 1))
                {
                  *&v200 = *(&buf + 1);
                  operator delete(*(&buf + 1));
                }

                v139 = qword_1009F2630;
                if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(buf) = 67109120;
                  DWORD1(buf) = v138;
                  _os_log_impl(&_mh_execute_header, v139, OS_LOG_TYPE_DEFAULT, "PRRose:enabling timesync on the FW with parameters: %d", &buf, 8u);
                }

                buf = 0uLL;
                *&v200 = 0;
                sub_10026B35C(&buf, v172, v173, (v173 - v172) >> 5);
                sub_1004775F4(a1 + 40, &buf);
              }

              LOWORD(buf) = 264;
              v98 = sub_100477BB8(a1 + 40, &buf);
              v99 = qword_1009F2630;
              v100 = v99;
              if (v98)
              {
                if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v195) = 0;
                  _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEFAULT, "Successfully disabled firmware logging", &v195, 2u);
                }

                goto LABEL_219;
              }

              if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
              {
                sub_1004B40B0();
              }

              v140 = *(a1 + 1522);
              if (v140 <= 0xC7)
              {
                *(a1 + 1522) = v140 + 1;
                v141 = *(a1 + 1532);
                if (v141 <= 0xC && v140 >= *(a1 + 1516 + v141))
                {
                  *(a1 + 1532) = 6;
                }
              }

              sub_100004A08(&v156, "Failed to disable firmware logging");
              sub_1002594BC(a1, 3, &v156);
              if (v157 < 0)
              {
                operator delete(v156);
              }

              if (v175)
              {
                v176 = v175;
                operator delete(v175);
              }
            }

            goto LABEL_257;
          }

          v80 = qword_1009F2630;
          if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
          {
            sub_1004B3FD8();
          }

          v81 = *(a1 + 1521);
          if (v81 <= 0xC7)
          {
            *(a1 + 1521) = v81 + 1;
            v82 = *(a1 + 1532);
            if (v82 <= 0xC && v81 >= *(a1 + 1516 + v82))
            {
              *(a1 + 1532) = 5;
            }
          }

          sub_100004A08(&v163, "Disabling sleep failed");
          sub_1002594BC(a1, 3, &v163);
          if (v164 < 0)
          {
            v79 = v163;
            goto LABEL_162;
          }
        }

LABEL_257:

        goto LABEL_258;
      }

LABEL_272:
      sub_1000195BC();
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B3E04();
    }

    AnalyticsSendEventLazy();
    v38 = *(a1 + 1519);
    if (v38 <= 0xC7)
    {
      *(a1 + 1519) = v38 + 1;
      v39 = *(a1 + 1532);
      if (v39 <= 0xC && v38 >= *(a1 + 1516 + v39))
      {
        *(a1 + 1532) = 3;
      }
    }

    sub_100004A08(v178, "Resetting chip since cal data has not been pushed");
    sub_1002594BC(a1, 3, v178);
    if (v179 < 0)
    {
      v37 = v178[0];
      goto LABEL_92;
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B3D9C();
    }

    v35 = *(a1 + 1518);
    if (v35 <= 0xC7)
    {
      *(a1 + 1518) = v35 + 1;
      v36 = *(a1 + 1532);
      if (v36 <= 0xC && v35 >= *(a1 + 1516 + v36))
      {
        *(a1 + 1532) = 2;
      }
    }

    sub_100004A08(&v180, "Failed to send hello.");
    sub_1002594BC(a1, 3, &v180);
    if (v181 < 0)
    {
      v37 = v180;
LABEL_92:
      operator delete(v37);
    }
  }

LABEL_258:
  if (v190 == 1)
  {
    if (v189 == 1)
    {
      if (v188 < 0)
      {
        operator delete(v187);
      }

      if (v186 < 0)
      {
        operator delete(v185);
      }
    }

    if (v183 < 0)
    {
      operator delete(v182[0]);
    }
  }

  if (SHIBYTE(v191.__r_.__value_.__r.__words[2]) < 0)
  {
    v16 = v191.__r_.__value_.__r.__words[0];
    goto LABEL_268;
  }
}

void sub_100265338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_10025C150(&STACK[0x380]);
  sub_10025C1B0(&STACK[0x3F0]);
  STACK[0x3F0] = &STACK[0x258];
  sub_100189A94(&STACK[0x3F0]);
  v38 = STACK[0x238];
  if (STACK[0x238])
  {
    STACK[0x240] = v38;
    operator delete(v38);
  }

  v39 = STACK[0x288];
  if (STACK[0x288])
  {
    STACK[0x290] = v39;
    operator delete(v39);
  }

  sub_100017E34(&STACK[0x2D0]);
  if (SLOBYTE(STACK[0x35F]) < 0)
  {
    operator delete(STACK[0x348]);
  }

  _Unwind_Resume(a1);
}

void sub_1002659F8(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a2 > 6)
  {
    if (a2 <= 8)
    {
      if (a2 != 7)
      {

        sub_10025A118(a1);
        return;
      }

      goto LABEL_20;
    }

    if (a2 == 9)
    {
      if (*(a1 + 1457) == 1)
      {

        sub_100268500(a1);
      }

      else
      {

        sub_100259C6C(a1);
      }

      return;
    }

    if (a2 != 10)
    {
      if (a2 != 11)
      {
        goto LABEL_51;
      }

      v6 = qword_1009F2630;
      v7 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
      if (!v7)
      {
        return;
      }

      v8 = atomic_load((a1 + 1240));
      *buf = 136315138;
      v31 = sub_10025911C(v7, v8);
      v9 = "PRRose, LPEM enable event ignored during %s";
      v10 = v6;
      v11 = 12;
LABEL_30:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
      return;
    }

    v13 = qword_1009F2630;
    if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v9 = "PRRose, already started, ignoring";
LABEL_29:
    v10 = v13;
    v11 = 2;
    goto LABEL_30;
  }

  if (a2 <= 3)
  {
    if (a2)
    {
      if (a2 == 3)
      {
        goto LABEL_20;
      }

LABEL_51:
      v16 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR);
      if (v16)
      {
        sub_1004B3CE4();
      }

      v17 = atomic_load((a1 + 1240));
      v18 = sub_10025911C(v16, v17);
      v19 = sub_100261E38(v18, a2);
      abort_report_np("PRRose unexpected event while in state: %s, event: %s", v18, v19);
      __break(1u);
      return;
    }

    v13 = qword_1009F2630;
    if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v9 = "PRRose, already started, ignoring HostStartup";
    goto LABEL_29;
  }

  if (a2 == 4)
  {
    atomic_store(4u, (a1 + 1240));
    sub_100005F4C((a1 + 1328), 0);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100268344;
    v29[3] = &unk_10098AD98;
    v29[4] = a1;
    sub_1002593D8(a1, v29);
    sub_10025D570(a1);
    dispatch_assert_queue_V2(*(a1 + 8));
    if (*(a1 + 1552) == 1)
    {
      sub_1002681D4(a1);
      return;
    }

    dispatch_assert_queue_V2(*(a1 + 8));
    if (*(a1 + 1552) == 2)
    {
      v14 = dispatch_time(0, 500000000);
      v15 = *(a1 + 8);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3321888768;
      block[2] = sub_100268394;
      block[3] = &unk_1009A08C8;
      block[4] = a1;
      if (*(a3 + 23) < 0)
      {
        sub_1000056BC(&v27, *a3, *(a3 + 1));
      }

      else
      {
        v27 = *a3;
        v28 = *(a3 + 2);
      }

      dispatch_after(v14, v15, block);
      if (SHIBYTE(v28) < 0)
      {
        v12 = v27;
        goto LABEL_46;
      }
    }

    return;
  }

  if (a2 != 5)
  {
    atomic_store(6u, (a1 + 1240));
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1002684C0;
    v22[3] = &unk_10098AD98;
    v22[4] = a1;
    sub_1002593D8(a1, v22);
    if (*(a3 + 23) < 0)
    {
      sub_1000056BC(__p, *a3, *(a3 + 1));
    }

    else
    {
      *__p = *a3;
      v21 = *(a3 + 2);
    }

    sub_1002594BC(a1, 6, __p);
    if (SHIBYTE(v21) < 0)
    {
      v12 = __p[0];
      goto LABEL_46;
    }

    return;
  }

LABEL_20:
  atomic_store(6u, (a1 + 1240));
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100268480;
  v25[3] = &unk_10098AD98;
  v25[4] = a1;
  sub_1002593D8(a1, v25);
  if (*(a3 + 23) < 0)
  {
    sub_1000056BC(&__dst, *a3, *(a3 + 1));
  }

  else
  {
    __dst = *a3;
    v24 = *(a3 + 2);
  }

  sub_1002594BC(a1, a2, &__dst);
  if (SHIBYTE(v24) < 0)
  {
    v12 = __dst;
LABEL_46:
    operator delete(v12);
  }
}

void sub_100265F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100265FA0(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  if (a2 <= 7)
  {
    if (a2)
    {
      if (a2 == 6)
      {
        operator new();
      }

      if (a2 == 7)
      {
        operator new();
      }

      goto LABEL_30;
    }

    v5 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PRRose, already started, ignoring HostStartup", buf, 2u);
    }
  }

  else
  {
    if (a2 <= 9)
    {
      if (a2 == 8)
      {

        sub_10025A118(a1);
      }

      else if (*(a1 + 1457) == 1)
      {

        sub_100268500(a1);
      }

      else
      {

        sub_100259C6C(a1);
      }

      return;
    }

    if (a2 != 10)
    {
      if (a2 == 11)
      {

        sub_100268718(a1);
        return;
      }

LABEL_30:
      v7 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR);
      if (v7)
      {
        sub_1004B3CE4();
      }

      v8 = atomic_load((a1 + 1240));
      v9 = sub_10025911C(v7, v8);
      v10 = sub_100261E38(v9, v3);
      v11 = abort_report_np("PRRose unexpected event while in state: %s, event: %s", v9, v10);
      if (SHIBYTE(v13) < 0)
      {
        operator delete(__p[0]);
      }

      _Unwind_Resume(v11);
    }

    v6 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRRose already Ready", buf, 2u);
    }

    sub_1002681D4(a1);
  }
}

void sub_1002664B4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v4 = a2;
  if (a2 <= 6)
  {
    if (a2 <= 2)
    {
      if (a2)
      {
        if (a2 != 1)
        {
LABEL_58:
          v23 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR);
          if (v23)
          {
            sub_1004B3CE4();
          }

          v24 = atomic_load((a1 + 1240));
          v25 = sub_10025911C(v23, v24);
          v26 = sub_100261E38(v25, v4);
          abort_report_np("PRRose unexpected event while in state: %s, event: %s", v25, v26);
LABEL_64:
          __break(1u);
          return;
        }

        v14 = qword_1009F2630;
        if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 0;
        v9 = "PRRose, in error state, but getting StartBoot dispatch block that is executed after the state changed to error due to firmware issues";
      }

      else
      {
        v14 = qword_1009F2630;
        if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 0;
        v9 = "PRRose, already started, ignoring HostStartup";
      }

LABEL_46:
      v12 = v14;
      v13 = 2;
      goto LABEL_47;
    }

    switch(a2)
    {
      case 3:
        v22 = *(a1 + 8);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3321888768;
        block[2] = sub_1002689E4;
        block[3] = &unk_1009A0B08;
        block[4] = a1;
        v34 = 3;
        if (*(a3 + 23) < 0)
        {
          sub_1000056BC(&v32, *a3, *(a3 + 1));
        }

        else
        {
          v32 = *a3;
          v33 = *(a3 + 2);
        }

        dispatch_async(v22, block);
        if (SHIBYTE(v33) < 0)
        {
          operator delete(v32);
        }

        break;
      case 6:
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
        {
          sub_1004B43A0();
        }

        atomic_store(7u, (a1 + 1240));
        break;
      case 5:
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
        {
          sub_1004B4338();
        }

        abort_report_np("RoseServiceHandshakeError");
        goto LABEL_64;
      default:
        goto LABEL_58;
    }
  }

  else
  {
    if (a2 > 8)
    {
      switch(a2)
      {
        case 9:
          v14 = qword_1009F2630;
          if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 0;
          v9 = "PRRose, in error state, Power off delayed";
          break;
        case 0xA:
          v14 = qword_1009F2630;
          if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
          {
            return;
          }

          *buf = 0;
          v9 = "PRRose, already started";
          break;
        case 0xB:
          v6 = qword_1009F2630;
          v7 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
          if (!v7)
          {
            return;
          }

          v8 = atomic_load((a1 + 1240));
          *buf = 136315138;
          *&buf[4] = sub_10025911C(v7, v8);
          v9 = "PRRose, LPEM enable event ignored during %s";
LABEL_17:
          v12 = v6;
          v13 = 12;
LABEL_47:
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v9, buf, v13);
          return;
        default:
          goto LABEL_58;
      }

      goto LABEL_46;
    }

    if (a2 != 7)
    {
      v6 = qword_1009F2630;
      v10 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
      if (!v10)
      {
        return;
      }

      v11 = atomic_load((a1 + 1240));
      *buf = 136315138;
      *&buf[4] = sub_10025911C(v10, v11);
      v9 = "PRRose, regulatory,configuration update ignored during %s";
      goto LABEL_17;
    }

    sub_100193120(buf);
    sub_10000EA44(&v36, "ChipReset", 9);
    v15 = *(a3 + 23);
    if (v15 < 0)
    {
      v15 = *(a3 + 1);
    }

    if (v15)
    {
      v16 = sub_10000EA44(&v36, ": ", 2);
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
        v19 = *(a3 + 1);
      }

      sub_10000EA44(v16, v18, v19);
    }

    std::stringbuf::str();
    v20 = sub_10025BB8C(a1, 3, &__p);
    if (v30 < 0)
    {
      operator delete(__p);
    }

    if ((v20 & 1) == 0)
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B436C();
      }

      abort_report_np("Failed to dump firmware logs");
      goto LABEL_64;
    }

    atomic_store(1u, (a1 + 1240));
    sub_100004A08(v27, "");
    sub_1002594BC(a1, 1, v27);
    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    v36 = v21;
    if (v39 < 0)
    {
      operator delete(v38[7].__locale_);
    }

    std::locale::~locale(v38);
    std::iostream::~basic_iostream();
    std::ios::~ios();
  }
}

void sub_100266A78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_100193C68(&a33);
  _Unwind_Resume(a1);
}

void sub_100266AC4(uint64_t a1, int a2)
{
  v3 = qword_1009F2630;
  if (a2 <= 6)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
        {
          sub_1004B43D4();
        }

        return;
      }

      if (a2 == 6)
      {
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
        {
          sub_1004B443C();
        }

        return;
      }
    }

    else
    {
      if (!a2)
      {
        if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 0;
        v6 = "PRRose, already started, ignoring HostStartup";
        goto LABEL_31;
      }

      if (a2 == 1)
      {
        if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 0;
        v6 = "PRRose, in error handling state, but getting StartBoot dispatch block that is executed after the state changed to error due to firmware issues";
        goto LABEL_31;
      }
    }

LABEL_34:
    v11 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR);
    if (v11)
    {
      sub_1004B3CE4();
    }

    v12 = atomic_load((a1 + 1240));
    v13 = sub_10025911C(v11, v12);
    v14 = sub_100261E38(v13, a2);
    abort_report_np("PRRose unexpected event while in state: %s, event: %s", v13, v14);
    __break(1u);
    return;
  }

  if (a2 > 8)
  {
    switch(a2)
    {
      case 9:
        if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 0;
        v6 = "PRRose, in error state, Power off delayed";
        break;
      case 10:
        if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        *buf = 0;
        v6 = "PRRose, already started";
        break;
      case 11:
        v4 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
        if (!v4)
        {
          return;
        }

        v5 = atomic_load((a1 + 1240));
        *buf = 136315138;
        v17 = sub_10025911C(v4, v5);
        v6 = "PRRose, LPEM enable event ignored during %s";
LABEL_20:
        v9 = v3;
        v10 = 12;
LABEL_32:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v6, buf, v10);
        return;
      default:
        goto LABEL_34;
    }

LABEL_31:
    v9 = v3;
    v10 = 2;
    goto LABEL_32;
  }

  if (a2 != 7)
  {
    v7 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
    if (!v7)
    {
      return;
    }

    v8 = atomic_load((a1 + 1240));
    *buf = 136315138;
    v17 = sub_10025911C(v7, v8);
    v6 = "PRRose, regulatory,configuration update ignored during %s";
    goto LABEL_20;
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B4408();
  }
}

void sub_100266D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 <= 8)
  {
    if (a2 == 6)
    {
      operator new();
    }

    if (a2 == 7)
    {
      operator new();
    }

LABEL_19:
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B4470();
    }

    return;
  }

  switch(a2)
  {
    case 9:
      v5 = qword_1009F2630;
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PRRose power down Rose after regulatory disallowment", buf, 2u);
      }

      sub_100259C6C(a1);
      break;
    case 0xA:
      v6 = qword_1009F2630;
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRRose already started", buf, 2u);
      }

      sub_1002681D4(a1);
      break;
    case 0xB:
      if (*(a1 + 1244) == 3)
      {
        v4 = qword_1009F2630;
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PRRose: enabling LPEM while in Airplane Mode", buf, 2u);
        }

        sub_100268718(a1);
      }

      return;
    default:
      goto LABEL_19;
  }
}

void sub_1002671F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v6 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRRose setStateFromPowerOff", buf, 2u);
  }

  v7 = qword_1009F2630;
  if (v4 == 8)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B44F4(a1);
    }
  }

  else if (v4 == 10)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PRRose Powering On", buf, 2u);
    }

    if ((sub_10047A320(a1 + 40, 1) & 1) == 0)
    {
      v8 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        sub_1004B457C(a1);
      }

      v9 = atomic_load((a1 + 1240));
      v10 = sub_10025911C(v8, v9);
      v11 = abort_report_np("PRRose Power On Failed  while in state: %s, event: %s", v10, "PowerOn");
      if (SHIBYTE(v13) < 0)
      {
        operator delete(__p[0]);
      }

      _Unwind_Resume(v11);
    }

    atomic_store(0, (a1 + 1240));
    if (*(a3 + 23) < 0)
    {
      sub_1000056BC(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v13 = *(a3 + 16);
    }

    sub_1002594BC(a1, 0, __p);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_FAULT))
  {
    sub_1004B4604();
  }
}

void sub_1002673BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PRRose setStateFromDeepSleep", buf, 2u);
  }

  if (v3 <= 7)
  {
    if (v3 == 6)
    {
      operator new();
    }

    if (v3 == 7)
    {
      operator new();
    }

LABEL_24:
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_FAULT))
    {
      sub_1004B4604();
    }

    return;
  }

  switch(v3)
  {
    case 8:
      v7 = qword_1009F2630;
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PRRose reconfigure Rose from deep sleep", buf, 2u);
      }

      sub_100259A44(a1);
      sub_10025A118(a1);
      v8 = atomic_load((a1 + 1240));
      v9 = qword_1009F2630;
      v10 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
      if (v8 == 8)
      {
        if (v10)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PRRose UWB not allowed. Power off rose", buf, 2u);
        }

        sub_100259C6C(a1);
      }

      else
      {
        if (v10)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PRRose Reconfigured. Reenter deep sleep", buf, 2u);
        }

        sub_100268D18(a1);
      }

      break;
    case 10:
      v11 = qword_1009F2630;
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PRRose Exiting Deep Sleep", buf, 2u);
      }

      sub_10025C7F4(a1, 1);
      break;
    case 11:
      v6 = qword_1009F2630;
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRRose: exiting Deep Sleep before entering LPEM", buf, 2u);
      }

      if (sub_10025C7F4(a1, 1))
      {
        sub_100268718(a1);
      }

      return;
    default:
      goto LABEL_24;
  }
}

const char *sub_10026791C(uint64_t a1, int a2)
{
  if ((a2 - 1) > 3)
  {
    return "SecureROM";
  }

  else
  {
    return off_1009A1178[a2 - 1];
  }
}

uint64_t sub_100267944(uint64_t a1, int a2)
{
  v3 = a1;
  v4 = (a1 + 1464);
  if (!*(a1 + 1472))
  {
    v4 = &unk_100567FD0;
  }

  v5 = *v4;
  v6.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000 * v5;
  while (1)
  {
    __p[0] = 10000000;
    std::this_thread::sleep_for (__p);
    v7 = sub_100261448(v3);
    if (v7 != 3)
    {
      break;
    }

    if (std::chrono::steady_clock::now().__d_.__rep_ >= v6.__d_.__rep_)
    {
      if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        if (a2)
        {
          goto LABEL_8;
        }

        goto LABEL_11;
      }

LABEL_30:
      sub_1004B4730();
      if (a2)
      {
LABEL_8:
        sub_100004A08(__p, "Deep sleep exit timeout");
        sub_10025BB8C(v3, 0, __p);
        if (v12 < 0)
        {
          operator delete(__p[0]);
        }

        AnalyticsSendEventLazy();
      }

LABEL_11:
      v8 = 0;
      return v8 & 1;
    }
  }

  if (v7 != 1)
  {
    if (v7)
    {
      if (v7 != 2)
      {
        return v8 & 1;
      }
    }

    else
    {
      sub_1004B4708();
    }

    v3 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B4680();
    }

    abort_report_np("PRRose: invalid deep sleep state after requesting deep sleep exit");
    goto LABEL_30;
  }

  v9 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PRRose: deep sleep exit completed successfully", __p, 2u);
  }

  if (a2)
  {
    atomic_store(4u, (v3 + 1240));
    dispatch_assert_queue_V2(*(v3 + 8));
    if (*(v3 + 1552) == 1)
    {
      sub_1002681D4(v3);
    }

    else
    {
      dispatch_assert_queue_V2(*(v3 + 8));
      if (*(v3 + 1552) == 2)
      {
        sub_100259C6C(v3);
      }
    }

    AnalyticsSendEventLazy();
  }

  v8 = 1;
  return v8 & 1;
}

void sub_100267B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100267B68(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 0;
  return (*(v1 + 16))();
}

void sub_100267BA4(uint64_t a1, int a2)
{
  v4 = qword_1009F2630;
  v5 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = atomic_load((a1 + 1240));
    v7 = sub_10025911C(v5, v6);
    if ((a2 - 1) > 2)
    {
      v8 = "DoNothing";
    }

    else
    {
      v8 = off_1009A1238[a2 - 1];
    }

    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    v31 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PRRose: errorHandlingRoutine. Current state: [%s], Next Step: [%s]", buf, 0x16u);
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  switch(a2)
  {
    case 1:
      if (sub_1002601C8(a1))
      {
        atomic_store(1u, (a1 + 1240));
        sub_100004A08(&v16, "");
        sub_1002594BC(a1, 1, &v16);
        if (v17 < 0)
        {
          v12 = v16;
LABEL_29:
          operator delete(v12);
        }
      }

      else
      {
        v26 = 0;
        v25 = 0;
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
        {
          sub_1004B4764();
        }

        v13 = sub_10047A520(a1 + 40, &v26 + 4, &v25, &v26);
        v14 = qword_1009F2630;
        v15 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR);
        if (v13)
        {
          if (v15)
          {
            *buf = 67109632;
            *&buf[4] = HIDWORD(v26);
            *&buf[8] = 1024;
            *&buf[10] = v25;
            LOWORD(v31) = 1024;
            *(&v31 + 2) = v26;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "RoseController Debug Info: PowerState: %d, ServiceState: %d, SecureROMState: %d", buf, 0x14u);
          }

          v18 = _NSConcreteStackBlock;
          v19 = 3221225472;
          v20 = sub_10026A148;
          v21 = &unk_10098B698;
          v22 = HIDWORD(v26);
          v23 = v25;
          v24 = v26;
          AnalyticsSendEventLazy();
        }

        else if (v15)
        {
          sub_1004B4798();
        }

        sub_100257F90(a1, 1);
        atomic_store(9u, (a1 + 1240));
      }

      break;
    case 3:
      atomic_store(7u, (a1 + 1240));
      sub_100004A08(buf, "PRRose::errorHandlingRoutine: current state: ErrorHandling, next step: PromoteToFatal");
      v11 = sub_10025BB8C(a1, 0, buf);
      if (v32 < 0)
      {
        operator delete(*buf);
      }

      if ((v11 & 1) == 0)
      {
        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
        {
          sub_1004B4800();
        }

        abort_report_np("PRRose::errorHandlingRoutine: Failed to promote error to fatal.");
LABEL_37:
        __break(1u);
      }

      break;
    case 2:
      atomic_store(1u, (a1 + 1240));
      if (sub_100478A20(a1 + 40, v9))
      {
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10026A0D4;
        v27[3] = &unk_10098AD98;
        v27[4] = a1;
        v10 = objc_retainBlock(v27);
        if (sub_100269EA0(a1, v10, 1u))
        {

          return;
        }

        if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
        {
          sub_1004B47CC();
        }

        abort_report_np("PRRose: Failed to start secureROM Timer.");
        goto LABEL_37;
      }

      sub_100004A08(&v28, "");
      sub_1002594BC(a1, 1, &v28);
      if (v29 < 0)
      {
        v12 = v28;
        goto LABEL_29;
      }

      break;
  }
}

void sub_100267F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 81) < 0)
  {
    operator delete(*(v14 - 104));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100267FE4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 0;
  return (*(v1 + 16))();
}

uint64_t sub_100268020(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 6;
  return (*(v1 + 16))();
}

NSDictionary *__cdecl sub_100268060(id a1)
{
  v4 = @"HasCalDataBeenPushed";
  v1 = [NSNumber numberWithBool:0];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

uint64_t sub_100268128(uint64_t a1)
{
  v7 = (a1 + 328);
  sub_100019848(&v7);
  if (*(a1 + 312) == 1)
  {
    v2 = *(a1 + 288);
    if (v2)
    {
      *(a1 + 296) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 248) == 1)
  {
    v3 = *(a1 + 224);
    if (v3)
    {
      *(a1 + 232) = v3;
      operator delete(v3);
    }
  }

  if (*(a1 + 184) == 1)
  {
    v4 = *(a1 + 160);
    if (v4)
    {
      *(a1 + 168) = v4;
      operator delete(v4);
    }
  }

  if (*(a1 + 120) == 1)
  {
    v5 = *(a1 + 96);
    if (v5)
    {
      *(a1 + 104) = v5;
      operator delete(v5);
    }
  }

  return a1;
}

void sub_1002681D4(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: notifyPowerOnReadyAndClearRequest", v3, 2u);
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  std::mutex::lock((a1 + 1608));
  *(a1 + 1672) = 1;
  std::condition_variable::notify_all((a1 + 1560));
  dispatch_assert_queue_V2(*(a1 + 8));
  *(a1 + 1552) = 0;
  std::mutex::unlock((a1 + 1608));
}

uint64_t sub_100268284(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 2;
  return (*(v1 + 16))();
}

uint64_t sub_1002682C4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 1;
  return (*(v1 + 16))();
}

uint64_t sub_100268304(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 6;
  return (*(v1 + 16))();
}

void sub_100268344(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 1288);
  v3 = 4;
  (*(v2 + 16))();
  sub_100259D80(v1);
}

void sub_100268394(uint64_t a1)
{
  v2 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v2 + 8));
  if (*(v2 + 1552) == 2)
  {
    v3 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "PRRose Executing pending power off", buf, 2u);
    }

    if (*(a1 + 63) < 0)
    {
      sub_1000056BC(__p, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      *__p = *(a1 + 40);
      v5 = *(a1 + 56);
    }

    sub_1002594BC(v2, 9, __p);
    if (SHIBYTE(v5) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_100268464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100268480(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 5;
  return (*(v1 + 16))();
}

uint64_t sub_1002684C0(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 6;
  return (*(v1 + 16))();
}

void sub_100268500(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: requestDeepSleepEntry", buf, 2u);
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  v12 = sub_1001B22B4(2);
  *buf = 0;
  v10 = 0;
  v11 = 0;
  sub_1000069DC(buf, &v12, &v13, 1);
  __p = 0;
  v7 = 0;
  v8 = 0;
  v3 = sub_10041B708(a1 + 1248, 45, buf, &__p);
  v4 = qword_1009F2630;
  if (v3)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PRRose: sent deep sleep entry request to RoseSupervisor. Going to DeepSleep state.", v5, 2u);
    }

    atomic_store(0xBu, (a1 + 1240));
    *(a1 + 1504) = std::chrono::steady_clock::now();
    dispatch_async(*(a1 + 16), &stru_1009A0C60);
    if (__p)
    {
      v7 = __p;
      operator delete(__p);
    }

    if (*buf)
    {
      v10 = *buf;
      operator delete(*buf);
    }
  }

  else
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B4834();
    }

    abort_report_np("PRRose: sending deep sleep entry request to RoseSupervisor failed");
    __break(1u);
  }
}

void sub_10026866C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100268698(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 6;
  return (*(v1 + 16))();
}

uint64_t sub_1002686D8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 5;
  return (*(v1 + 16))();
}

void sub_100268718(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: LPEMEnableInternal", buf, 2u);
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  v3 = atomic_load((a1 + 1240));
  if (v3 == 5)
  {
    v4 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PRRose: LPEM already enabled", buf, 2u);
    }
  }

  else
  {
    sub_1003299B0(*(a1 + 1296));
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    *buf = 0u;
    sub_1001B1ECC(v14, buf);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    sub_1000069DC(&v11, buf, v19, 52);
    __p = 0;
    v9 = 0;
    v10 = 0;
    v5 = sub_10041B708(a1 + 1248, 52, &v11, &__p);
    v6 = qword_1009F2630;
    if (v5)
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PRRose: sent LPEM Enable command to Rose. Going to LPEM state.", v7, 2u);
      }

      atomic_store(5u, (a1 + 1240));
      if (__p)
      {
        v9 = __p;
        operator delete(__p);
      }

      if (v11)
      {
        v12 = v11;
        operator delete(v11);
      }

      if (v14[0])
      {
        v14[1] = v14[0];
        operator delete(v14[0]);
      }
    }

    else
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B4868();
      }

      abort_report_np("PRRose: sending LPEM Enable command to Rose failed. Aborting nearbyd.");
      __break(1u);
    }
  }
}

void sub_100268914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100268964(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 6;
  return (*(v1 + 16))();
}

uint64_t sub_1002689A4(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 5;
  return (*(v1 + 16))();
}

void sub_1002689E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = atomic_load((v1 + 1240));
  if (v2 == 6)
  {
    v4 = sub_100193120(v15);
    v5 = sub_100261E38(v4, *(a1 + 64));
    v6 = strlen(v5);
    sub_10000EA44(&v16, v5, v6);
    if ((*(a1 + 63) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 48))
      {
LABEL_15:
        std::stringbuf::str();
        v11 = sub_10025BB8C(v1, 0, &__p);
        if (v14 < 0)
        {
          operator delete(__p);
        }

        if (v11)
        {
          *(v1 + 1536) = 1;
          v16 = v12;
          if (v19 < 0)
          {
            operator delete(v18[7].__locale_);
          }

          std::locale::~locale(v18);
          std::iostream::~basic_iostream();
          std::ios::~ios();
        }

        else
        {
          if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
          {
            sub_1004B48D0();
          }

          abort_report_np("Failed to trigger fatal crash logs");
          __break(1u);
        }

        return;
      }
    }

    else if (!*(a1 + 63))
    {
      goto LABEL_15;
    }

    v7 = sub_10000EA44(&v16, ": ", 2);
    v8 = *(a1 + 63);
    if (v8 >= 0)
    {
      v9 = a1 + 40;
    }

    else
    {
      v9 = *(a1 + 40);
    }

    if (v8 >= 0)
    {
      v10 = *(a1 + 63);
    }

    else
    {
      v10 = *(a1 + 48);
    }

    sub_10000EA44(v7, v9, v10);
    goto LABEL_15;
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B489C();
  }
}

void sub_100268C68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100193C68(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_100268C98(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 6;
  return (*(v1 + 16))();
}

uint64_t sub_100268CD8(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 1288);
  v3 = 5;
  return (*(v1 + 16))();
}

void sub_100268D18(uint64_t a1)
{
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: powerOffInternal", buf, 2u);
  }

  dispatch_assert_queue_V2(*(a1 + 8));
  v3 = atomic_load((a1 + 1240));
  if (v3 == 10)
  {
    v4 = qword_1009F2630;
    if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v5 = "PRRose: Already Powered Off";
    goto LABEL_6;
  }

  *(a1 + 1552) = 2;
  v6 = atomic_load((a1 + 1240));
  if (v6 == 4 || (v7 = atomic_load((a1 + 1240)), v7 == 8))
  {
    sub_100004A08(__p, "");
    sub_1002594BC(a1, 9, __p);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "PRRose: Delay Powering off";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
    }
  }
}

void sub_100268E64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

id sub_100268E80(uint64_t a1)
{
  v9[0] = @"CrashLogReason";
  v2 = [NSString alloc];
  v3 = *(a1 + 32);
  if (*(v3 + 23) < 0)
  {
    v3 = *v3;
  }

  v4 = [v2 initWithCString:v3 encoding:4];
  v10[0] = v4;
  v9[1] = @"IsFatal";
  v5 = [NSNumber numberWithInt:*(*(a1 + 32) + 28)];
  v10[1] = v5;
  v9[2] = @"Core";
  v6 = [NSNumber numberWithInt:*(*(a1 + 32) + 29)];
  v10[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

id sub_100268FD8(uint64_t a1)
{
  v9[0] = @"CrashStringSectionFound";
  v2 = a1 + 32;
  v3 = [NSNumber numberWithInt:**(a1 + 32)];
  v10[0] = v3;
  v9[1] = @"CrashStringSectionVersionFound";
  v4 = [NSNumber numberWithInt:*(*v2 + 1)];
  v10[1] = v4;
  v9[2] = @"IsFatal";
  v5 = [NSNumber numberWithInt:*(*(a1 + 32) + 8)];
  v10[2] = v5;
  v9[3] = @"Core";
  v6 = [NSNumber numberWithInt:*(*(a1 + 32) + 9)];
  v10[3] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

id sub_100269164(uint64_t a1)
{
  v4 = @"Core";
  v1 = [NSNumber numberWithInt:**(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_100269244(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  dispatch_assert_queue_V2(*(a1 + 8));
  v4 = qword_1009F2630;
  v5 = os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    v6 = atomic_load((a1 + 1240));
    *buf = 136315394;
    v25 = sub_10025911C(v5, v6);
    v26 = 2080;
    v27 = sub_1002697E4(v25, v2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "PRRose::debugEventHandler received DebugManagerEvent while in state: %s, event: %s", buf, 0x16u);
  }

  v7 = atomic_load((a1 + 1240));
  if (v7 == 10)
  {
    v8 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PRRose:Ignore event, Nothing to do", buf, 2u);
    }

    return;
  }

  v9 = 0;
  if (v2 > 5)
  {
    if ((v2 - 8) < 0xD)
    {
LABEL_8:
      AnalyticsSendEventLazy();
LABEL_9:
      v9 = 0;
LABEL_10:
      sub_100267BA4(a1, v9);
      return;
    }

    if (v2 == 6)
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B4904();
      }

      goto LABEL_8;
    }

    if (v2 != 7)
    {
      goto LABEL_10;
    }

    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B49D4((a1 + 1240));
    }

    if (sub_100478A20(a1 + 40, v12))
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B4A50();
      }

      return;
    }

    sub_100004A08(&v19, "");
    sub_1002594BC(a1, 7, &v19);
    if ((v20 & 0x80000000) == 0)
    {
      return;
    }

    v15 = v19;
LABEL_40:
    operator delete(v15);
    return;
  }

  if (v2 > 2)
  {
    if (v2 == 3)
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B496C();
      }

      AnalyticsSendEventLazy();
      v9 = 3;
      goto LABEL_10;
    }

    if (v2 != 4)
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B4938();
      }

      goto LABEL_8;
    }

    v17 = qword_1009F2630;
    if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v18 = "PRRose: DebugManagerEvent::LogCollectionNonFatalSucceeded";
    goto LABEL_57;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
      {
        sub_1004B49A0();
      }

      AnalyticsSendEventLazy();
      sub_100269AF4(a1);
      v16 = atomic_load((a1 + 1240));
      if (v16 == 7)
      {
LABEL_47:
        v9 = 1;
        goto LABEL_10;
      }

      v17 = qword_1009F2630;
      if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      *buf = 0;
      v18 = "PRRose: DebugManagerEvent::LogCollectionFatalFailed is ignored if the state is not ErrorHandling";
    }

    else
    {
      if (v2 != 2)
      {
        goto LABEL_10;
      }

      v10 = qword_1009F2630;
      if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PRRose: DebugManagerEvent::LogCollectionFatalSucceeded", buf, 2u);
      }

      sub_100269AF4(a1);
      v11 = atomic_load((a1 + 1240));
      if (v11 == 7)
      {
        if (*(a1 + 1536) != 1)
        {
          v9 = 2;
          goto LABEL_10;
        }

        *(a1 + 1536) = 0;
        goto LABEL_47;
      }

      v17 = qword_1009F2630;
      if (!os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_9;
      }

      *buf = 0;
      v18 = "PRRose: DebugManagerEvent::LogCollectionFatalSucceeded is ignored if the state is not ErrorHandling";
    }

LABEL_57:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
    goto LABEL_9;
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B4A84();
  }

  v13 = atomic_load((a1 + 1240));
  if (v13 == 7)
  {
LABEL_38:
    sub_100004A08(__p, "");
    sub_1002594BC(a1, 6, __p);
    if ((v22 & 0x80000000) == 0)
    {
      return;
    }

    v15 = __p[0];
    goto LABEL_40;
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10026980C;
  v23[3] = &unk_10098AD98;
  v23[4] = a1;
  v14 = objc_retainBlock(v23);
  if (sub_100269880(a1, v14, 0xAu))
  {

    goto LABEL_38;
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B4AB8();
  }

  abort_report_np("PRRose: Failed to start LogCollectionCompleted Timer.");
  __break(1u);
}

void sub_1002697A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *sub_1002697E4(uint64_t a1, int a2)
{
  if ((a2 - 1) > 0x13)
  {
    return "Dead";
  }

  else
  {
    return off_1009A1198[a2 - 1];
  }
}

void sub_10026980C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: Executing LogCollectionCompleted Timeout Callback.", v3, 2u);
  }

  sub_100267BA4(v1, 1);
}

uint64_t sub_100269880(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  sub_100269AF4(a1);
  if (!v5)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B4B20();
    }

    goto LABEL_10;
  }

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 8));
  v7 = *(a1 + 32);
  *(a1 + 32) = v6;

  v8 = *(a1 + 32);
  if (!v8)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B4AEC();
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v9 = dispatch_time(0, 1000000000 * a3);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
  v10 = *(a1 + 32);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10026A090;
  handler[3] = &unk_10099F470;
  v17 = a1;
  v16 = v5;
  dispatch_source_set_event_handler(v10, handler);
  v11 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PRRose: Starting LogCollectionCompleted timer.", v14, 2u);
  }

  dispatch_resume(*(a1 + 32));

  v12 = 1;
LABEL_11:

  return v12;
}

NSDictionary *__cdecl sub_100269A2C(id a1)
{
  v4 = @"IsFatal";
  v1 = [NSNumber numberWithInt:1];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

void sub_100269AF4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = qword_1009F2630;
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: Cancelling LogCollectionCompleted timer", v4, 2u);
    }

    dispatch_source_cancel(*(a1 + 32));
    v3 = *(a1 + 32);
    *(a1 + 32) = 0;
  }
}

NSDictionary *__cdecl sub_100269B7C(id a1)
{
  v4 = @"IsFatal";
  v1 = [NSNumber numberWithInt:0];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_100269C44(id a1)
{
  v4 = @"InterfaceError";
  v1 = [NSNumber numberWithInt:1];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

NSDictionary *__cdecl sub_100269D0C(id a1)
{
  v4 = @"FilesystemError";
  v1 = [NSNumber numberWithInt:1];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

id sub_100269DD4(uint64_t a1)
{
  v4 = @"ErrorCode";
  v1 = [NSNumber numberWithInt:*(a1 + 32)];
  v5 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

uint64_t sub_100269EA0(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  sub_100257E7C(a1);
  if (!v5)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B4B20();
    }

    goto LABEL_10;
  }

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(a1 + 8));
  v7 = *(a1 + 24);
  *(a1 + 24) = v6;

  v8 = *(a1 + 24);
  if (!v8)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B4B54();
    }

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v9 = dispatch_time(0, 1000000000 * a3);
  dispatch_source_set_timer(v8, v9, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
  v10 = *(a1 + 24);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10026A04C;
  handler[3] = &unk_10099F470;
  v17 = a1;
  v16 = v5;
  dispatch_source_set_event_handler(v10, handler);
  v11 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PRRose: Starting SecureROM timer.", v14, 2u);
  }

  dispatch_resume(*(a1 + 24));

  v12 = 1;
LABEL_11:

  return v12;
}

uint64_t sub_10026A04C(uint64_t a1)
{
  sub_100257E7C(*(a1 + 40));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

uint64_t sub_10026A090(uint64_t a1)
{
  sub_100269AF4(*(a1 + 40));
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

void sub_10026A0D4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = qword_1009F2630;
  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PRRose: Executing SecureROM Timeout Callback.", v3, 2u);
  }

  sub_100267BA4(v1, 1);
}

id sub_10026A148(unsigned int *a1)
{
  v7[0] = @"PowerState";
  v2 = [NSNumber numberWithInt:a1[8]];
  v8[0] = v2;
  v7[1] = @"ServiceState";
  v3 = [NSNumber numberWithInt:a1[9]];
  v8[1] = v3;
  v7[2] = @"SecureROMState";
  v4 = [NSNumber numberWithInt:a1[10]];
  v8[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

NSMutableDictionary *sub_10026A284(uint64_t a1)
{
  v2 = objc_opt_new();
  [*(a1 + 32) timeIntervalSinceNow];
  v4 = [NSNumber numberWithDouble:-v3];
  [v2 setObject:v4 forKeyedSubscript:@"TimeSinceFirstError"];

  v5 = [NSNumber numberWithInteger:*(a1 + 48)];
  [v2 setObject:v5 forKeyedSubscript:@"ErrorType"];

  v6 = [NSNumber numberWithInteger:*(a1 + 40)];
  [v2 setObject:v6 forKeyedSubscript:@"CumulativeErrors"];

  if (*(a1 + 48) == 2)
  {
    v7 = [NSNumber numberWithInteger:*(a1 + 52)];
    [v2 setObject:v7 forKeyedSubscript:@"MaxChipResetsReason"];
  }

  return v2;
}

uint64_t sub_10026A3DC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 > 6)
  {
    goto LABEL_7;
  }

  if (v1 > 3)
  {
    goto LABEL_12;
  }

  switch(v1)
  {
    case 1:
LABEL_20:
      abort_report_np("Unrecoverable error: Max chip resets (push FW failure)");
      goto LABEL_21;
    case 2:
LABEL_24:
      abort_report_np("Unrecoverable error: Max chip resets (ping FW failure)");
      goto LABEL_25;
    case 3:
      abort_report_np("Unrecoverable error: Max chip resets (cal data push failure)");
LABEL_7:
      if (v1 > 9)
      {
LABEL_16:
        switch(v1)
        {
          case 10:
LABEL_23:
            abort_report_np("Unrecoverable error: Max chip resets (apply config params update coex status failure)");
            goto LABEL_24;
          case 11:
LABEL_27:
            abort_report_np("Unrecoverable error: Max chip resets (apply config params send power table failure)");
            goto LABEL_28;
          case 12:
            abort_report_np("Unrecoverable error: Max chip resets (apply config params set MAC address failure)");
            goto LABEL_20;
        }

        break;
      }

      if (v1 == 7)
      {
LABEL_21:
        abort_report_np("Unrecoverable error: Max chip resets (time sync enable failure)");
        goto LABEL_22;
      }

      if (v1 == 8)
      {
LABEL_25:
        abort_report_np("Unrecoverable error: Max chip resets (activate AOP time sync failure)");
        goto LABEL_26;
      }

      if (v1 != 9)
      {
        break;
      }

      abort_report_np("Unrecoverable error: Max chip resets (apply config params CIR version failure)");
LABEL_12:
      if (v1 == 4)
      {
LABEL_22:
        abort_report_np("Unrecoverable error: Max chip resets (ext clock setting failure)");
        goto LABEL_23;
      }

      if (v1 == 5)
      {
LABEL_26:
        abort_report_np("Unrecoverable error: Max chip resets (configure sleep failure)");
        goto LABEL_27;
      }

      if (v1 != 6)
      {
        break;
      }

      abort_report_np("Unrecoverable error: Max chip resets (disable logs failure)");
      goto LABEL_16;
  }

LABEL_28:
  v2 = abort_report_np("Unrecoverable error: Max chip resets (unspecified failure)");
  return sub_10026A500(v2);
}

uint64_t sub_10026A510(uint64_t a1)
{
  dispatch_assert_queue_not_V2(*(a1 + 8));
  __lk.__m_ = (a1 + 1608);
  __lk.__owns_ = 1;
  std::mutex::lock((a1 + 1608));
  v2 = atomic_load((a1 + 1240));
  if (v2 == 9)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B4BBC();
    }

    goto LABEL_25;
  }

  *(a1 + 1672) = 0;
  v3 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10026A720;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_async(v3, block);
  v4.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 30000000000;
  do
  {
    if (*(a1 + 1672))
    {
      goto LABEL_22;
    }

    if (std::chrono::steady_clock::now().__d_.__rep_ >= v4.__d_.__rep_)
    {
      break;
    }

    v5.__d_.__rep_ = v4.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v5.__d_.__rep_ >= 1)
    {
      std::chrono::steady_clock::now();
      v6.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
      if (!v6.__d_.__rep_)
      {
        v7 = 0;
        goto LABEL_18;
      }

      if (v6.__d_.__rep_ < 1)
      {
        if (v6.__d_.__rep_ < 0xFFDF3B645A1CAC09)
        {
          v7 = 0x8000000000000000;
          goto LABEL_18;
        }
      }

      else if (v6.__d_.__rep_ > 0x20C49BA5E353F7)
      {
        v7 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_16;
      }

      v7 = 1000 * v6.__d_.__rep_;
LABEL_16:
      if (v7 > (v5.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
      {
        v8.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
LABEL_19:
        std::condition_variable::__do_timed_wait((a1 + 1560), &__lk, v8);
        std::chrono::steady_clock::now();
        continue;
      }

LABEL_18:
      v8.__d_.__rep_ = v7 + v5.__d_.__rep_;
      goto LABEL_19;
    }
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v4.__d_.__rep_);
  if (*(a1 + 1672))
  {
LABEL_22:
    dispatch_async(*(a1 + 16), &stru_1009A0C20);
    v9 = 1;
    goto LABEL_26;
  }

  if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B4B88();
  }

LABEL_25:
  v9 = 0;
LABEL_26:
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  return v9;
}

void sub_10026A730(uint64_t a1)
{
  dispatch_assert_queue_not_V2(*(a1 + 8));
  v2 = *(a1 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10026A7B4;
  block[3] = &unk_10098AD98;
  block[4] = a1;
  dispatch_async(v2, block);
}

NSDictionary *__cdecl sub_10026A7D8(id a1)
{
  v4[0] = @"NumberOfFailures";
  v4[1] = @"Reason";
  v5[0] = &off_1009C4028;
  v1 = [NSNumber numberWithInt:1];
  v5[1] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

NSDictionary *__cdecl sub_10026A8B8(id a1)
{
  v4[0] = @"NumberOfFailures";
  v4[1] = @"Reason";
  v5[0] = &off_1009C4028;
  v1 = [NSNumber numberWithInt:2];
  v5[1] = v1;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

_BYTE *sub_10026A998(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[96] = 0;
  if (*(a2 + 96) == 1)
  {
    sub_10026AA00(a1, a2);
    a1[96] = 1;
  }

  return a1;
}

void sub_10026A9E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 96) == 1)
  {
    sub_10026ACD4(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10026AA00(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_10026AADC((a1 + 8), *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 3);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  sub_10026ABDC((a1 + 32), *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  sub_10026AC58((a1 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  v4 = *(a2 + 80);
  *(a1 + 87) = *(a2 + 87);
  *(a1 + 80) = v4;
  return a1;
}

void sub_10026AAA8(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 40) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10026AADC(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10026AB58(result, a4);
  }

  return result;
}

void sub_10026AB3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10026AB58(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_10026AB94(a1, a2);
  }

  sub_100019B38();
}

void sub_10026AB94(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t *sub_10026ABDC(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10026AB58(result, a4);
  }

  return result;
}

void sub_10026AC3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10026AC58(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10026AB58(result, a4);
  }

  return result;
}

void sub_10026ACB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10026ACD4(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_10026AD28(uint64_t a1, char a2, char a3)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  __src = a3;
  sub_10026ADA4((a1 + 8), &__src, &v6, 1uLL);
  return a1;
}

void sub_10026AD88(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void **sub_10026ADA4(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_100009AC4(v6, v10);
    }

    sub_100019B38();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v15++ = v16;
        ++v14;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t sub_10026AED4(uint64_t a1, char a2, __int16 **a3)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_100426E3C(a1, a3);
  return a1;
}

void sub_10026AF10(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10026AF30(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1000056BC(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  v5 = *(a2 + 23);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 1);
  }

  if (v5 >= 0x20)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "string length exceeds maximum");
  }

  return __dst;
}

void sub_10026AFFC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10026B028(uint64_t a1, int *a2)
{
  v4 = *a2;
  *(a1 + 4) = *(a2 + 2);
  *a1 = v4;
  if (*(a2 + 31) < 0)
  {
    sub_1000056BC((a1 + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v5 = *(a2 + 2);
    *(a1 + 24) = *(a2 + 3);
    *(a1 + 8) = v5;
  }

  *(a1 + 32) = *(a2 + 4);
  if (*(a2 + 63) < 0)
  {
    sub_1000056BC((a1 + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v6 = *(a2 + 10);
    *(a1 + 56) = *(a2 + 7);
    *(a1 + 40) = v6;
  }

  return a1;
}

void sub_10026B0B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

void (__cdecl ***sub_10026B0D4(void (__cdecl ***a1)(std::ostringstream *__hidden this)))(std::ostringstream *__hidden this)
{
  a1[20] = 0;
  *a1 = v3;
  *(*(v3 - 3) + a1) = v2;
  v4 = (*(*a1 - 3) + a1);
  std::ios_base::init(v4, a1 + 1);
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  sub_100193514((a1 + 1), 16);
  return a1;
}

void sub_10026B218(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10026B240(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t *sub_10026B35C(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10026B3E4(result, a4);
  }

  return result;
}

void sub_10026B3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100189A94(&a9);
  _Unwind_Resume(a1);
}

void sub_10026B3E4(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_10026B420(a1, a2);
  }

  sub_100019B38();
}

void sub_10026B420(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_100013B04();
}

uint64_t sub_10026B468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 8) = 0;
      sub_100009A48((v4 + 8), *(v6 + 8), *(v6 + 16), *(v6 + 16) - *(v6 + 8));
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_10026B520(v8);
  return v4;
}

uint64_t sub_10026B520(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100189E18(a1);
  }

  return a1;
}

__n128 sub_10026B5D4(uint64_t a1, uint64_t a2)
{
  *a2 = off_1009A0CF0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10026B60C(void *a1, unsigned int *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  return v3(v4, *a2);
}

uint64_t sub_10026B638(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10026B684(uint64_t a1)
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

__n128 sub_10026B780(uint64_t a1, uint64_t a2)
{
  *a2 = off_1009A0DB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10026B7B8(void *a1, unsigned int *a2, void *a3)
{
  v3 = a1[2];
  v4 = a1[1];
  v5 = (a1[3] + (v3 >> 1));
  if (v3)
  {
    v4 = *(*v5 + v4);
  }

  return v4(v5, *a2, *a3);
}

uint64_t sub_10026B7E8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10026B834(uint64_t a1)
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

uint64_t *sub_10026B8B4(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10026B3E4(result, a4);
  }

  return result;
}

void sub_10026B91C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100189A94(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10026B93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = *v6;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 8) = 0;
      sub_100009A48((v4 + 8), *(v6 + 8), *(v6 + 16), *(v6 + 16) - *(v6 + 8));
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_10026B520(v8);
  return v4;
}

uint64_t sub_10026BA64(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1009A0E58;
  a2[1] = v2;
  return result;
}

uint64_t sub_10026BA90(uint64_t a1, uint64_t a2, void *a3)
{
  if (sub_100426398(a2))
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
    {
      sub_1004B4BF0();
    }
  }

  else if (sub_10042640C(a2) == 5)
  {
    v6 = sub_100462E10(a3);
    v7 = v6;
    if (!v6)
    {
      return 0;
    }

    v8 = *(a1 + 8);
    *v8 = v6;
    *(v8 + 2) = 1;
    if ((v6 & 0x100000000) != 0)
    {
      std::to_string(&v15, BYTE3(v6));
    }

    else
    {
      sub_100004A08(&v15, "N/A");
    }

    v10 = qword_1009F2630;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1004279E4(v7, __p);
      if (v14 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      v12 = &v15;
      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v12 = v15.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      v17 = v11;
      v18 = 1024;
      v19 = BYTE2(v7);
      v20 = 2080;
      v21 = v12;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "PRRose:applyConfigOptions,regulatory,failed to send regulatory config. Status: %s, numConfigsSetSuccessfully: %u, firstErroneousConfigId: %s", buf, 0x1Cu);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  else if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_ERROR))
  {
    sub_1004B4C64();
  }

  return 1;
}

void sub_10026BC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10026BCAC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10026BCF8(uint64_t a1)
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

uint64_t sub_10026BE00(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_100426398(a2);
  v6 = sub_10042640C(a2);
  if (v5 || v6 != 5)
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_FAULT))
    {
      sub_1004B4D4C();
    }

    return 1;
  }

  if (sub_100462E10(a3))
  {
    if (os_log_type_enabled(qword_1009F2630, OS_LOG_TYPE_FAULT))
    {
      sub_1004B4CD8();
    }

    return 1;
  }

  return 0;
}

uint64_t sub_10026BEB8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const char *sub_10026BF14(uint64_t a1)
{
  v2 = atomic_load((a1 + 1240));

  return sub_10025911C(a1, v2);
}

const char *sub_10026BF3C(unsigned int *a1)
{
  v2 = atomic_load(a1);

  return sub_10025911C(a1, v2);
}

void sub_10026BF54()
{
  v0 = objc_autoreleasePoolPush();
  qword_1009F2630 = os_log_create("com.apple.nearbyd", "Driver");

  objc_autoreleasePoolPop(v0);
}

double sub_10026BFA8(uint64_t **a1)
{
  v3[2] = xmmword_1005685F0;
  v3[3] = unk_100568600;
  v3[4] = xmmword_100568610;
  v3[0] = xmmword_1005685D0;
  v3[1] = unk_1005685E0;
  v1 = sub_10026CF28(a1, v3, 5);
  v1[4] = 0;
  v1[3] = (v1 + 4);
  v1[5] = 0;
  v1[6] = 0;
  *(v1 + 56) = 0;
  *(v1 + 108) = 0;
  result = 0.0;
  *(v1 + 4) = 0u;
  *(v1 + 5) = 0u;
  *(v1 + 89) = 0u;
  return result;
}

void sub_10026C044(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_100020444(a1);
}

void sub_10026C054(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  if (*(a1 + 56))
  {
    v4 = a3;
    if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_DEBUG))
    {
      sub_1004B4DBC();
    }

    v10 = *(a1 + 32);
    v9 = a1 + 32;
    v8 = v10;
    if (v10)
    {
      v11 = v9;
      do
      {
        v12 = *(v8 + 32);
        v13 = v12 >= a2;
        v14 = v12 < a2;
        if (v13)
        {
          v11 = v8;
        }

        v8 = *(v8 + 8 * v14);
      }

      while (v8);
      if (v11 != v9 && *(v11 + 32) <= a2)
      {
        sub_100330834((v11 + 40), v4, a4);
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_ERROR))
  {
    sub_1004B4D88();
  }
}

void sub_10026C12C(uint64_t a1, unint64_t a2, void *a3, double a4)
{
  v7 = a3;
  if (*(a1 + 56))
  {
    if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_DEBUG))
    {
      sub_1004B4E70();
    }

    v10 = *(a1 + 32);
    v9 = a1 + 32;
    v8 = v10;
    if (v10)
    {
      v11 = v9;
      do
      {
        v12 = *(v8 + 32);
        v13 = v12 >= a2;
        v14 = v12 < a2;
        if (v13)
        {
          v11 = v8;
        }

        v8 = *(v8 + 8 * v14);
      }

      while (v8);
      if (v11 != v9 && *(v11 + 32) <= a2)
      {
        sub_1003313C4(v11 + 40, v7, a4);
      }
    }
  }

  else if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_ERROR))
  {
    sub_1004B4E3C();
  }
}

double sub_10026C214(uint64_t a1, double a2)
{
  if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_DEBUG))
  {
    sub_1004B4EDC();
  }

  v4 = *(a1 + 40);
  if (v4 >= 4)
  {
    v4 = 4;
  }

  v8 = v4;
  v5 = a2 - *(a1 + 88);
  v9 = &v8;
  v6 = sub_10026D1E8(a1, &v8, &unk_100548C50, &v9);
  result = v5 + *(v6 + 5);
  *(v6 + 5) = result;
  *(a1 + 88) = a2;
  return result;
}

void sub_10026C2C0(uint64_t a1, unint64_t a2, uint64_t a3, double a4)
{
  v42 = a2;
  if (*(a1 + 56))
  {
    if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_DEBUG))
    {
      sub_1004B4F7C();
    }

    v8 = *(a1 + 32);
    if (!v8)
    {
      goto LABEL_12;
    }

    v9 = a1 + 32;
    do
    {
      v10 = *(v8 + 32);
      v11 = v10 >= a2;
      v12 = v10 < a2;
      if (v11)
      {
        v9 = v8;
      }

      v8 = *(v8 + 8 * v12);
    }

    while (v8);
    if (v9 == a1 + 32 || *(v9 + 32) > a2)
    {
LABEL_12:
      v13 = a1 + 24;
      if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_DEBUG))
      {
        sub_1004B4FE8();
      }

      v14 = sub_10026C214(a1, a4);
      sub_100330574(v31, v14);
      v43 = &v42;
      v15 = sub_10026D2BC(v13, &v42, &unk_100548C50, &v43);
      v16 = *&v32[9];
      v18 = v31[3];
      v17 = *v32;
      *(v15 + 9) = v31[2];
      *(v15 + 11) = v18;
      *(v15 + 13) = v17;
      *(v15 + 113) = v16;
      v19 = v31[1];
      *(v15 + 5) = v31[0];
      *(v15 + 7) = v19;
      v20 = v15 + 18;
      sub_10002074C((v15 + 17), v15[18]);
      v21 = v34;
      v15[17] = v33;
      v15[18] = v21;
      v22 = v35;
      v15[19] = v35;
      if (v22)
      {
        v21[2] = v20;
        v33 = &v34;
        v34 = 0;
        v35 = 0;
      }

      else
      {
        v15[17] = v20;
      }

      v23 = v15 + 21;
      sub_10002074C((v15 + 20), v15[21]);
      v24 = v37;
      v15[20] = v36;
      v15[21] = v24;
      v25 = v38;
      v15[22] = v38;
      if (v25)
      {
        v24[2] = v23;
        v36 = &v37;
        v37 = 0;
        v38 = 0;
      }

      else
      {
        v15[20] = v23;
      }

      v27 = v15[24];
      v26 = v15 + 24;
      sub_1001B93C0((v26 - 1), v27);
      v28 = v40;
      *(v26 - 1) = v39;
      *v26 = v28;
      v29 = v41;
      v26[1] = v41;
      if (v29)
      {
        *(v28 + 16) = v26;
        v39 = &v40;
        v40 = 0;
        v41 = 0;
        v28 = 0;
      }

      else
      {
        *(v26 - 1) = v26;
      }

      sub_1001B93C0(&v39, v28);
      sub_10002074C(&v36, v37);
      sub_10002074C(&v33, v34);
      *&v31[0] = &v42;
      v30 = sub_10026D2BC(v13, &v42, &unk_100548C50, v31);
      sub_100330578((v30 + 5), a3, *(a1 + 48), *(a1 + 104), a4);
    }
  }

  else if (os_log_type_enabled(qword_1009F2638, OS_LOG_TYPE_ERROR))
  {
    sub_1004B4F48();
  }
}