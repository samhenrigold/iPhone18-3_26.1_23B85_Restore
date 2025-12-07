void sub_1005DCF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DCFEC(uint64_t a1, char *a2, char *a3, double *a4)
{
  v8 = (a1 + 8);
  (*(*(a1 + 8) + 16))(a1 + 8);
  if (v8[112] == 1)
  {
    if (qword_1025D4860 != -1)
    {
      sub_1003115C0();
    }

    v9 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_INFO))
    {
      v10 = (a1 + 152);
      if (*(a1 + 175) < 0)
      {
        v10 = *v10;
      }

      *buf = 136380675;
      *&buf[4] = v10;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_INFO, "#Warning,CLFU,%{private}s downloading in progress, cannot change update settings", buf, 0xCu);
    }

    if (!sub_10000A100(121, 2))
    {
      goto LABEL_47;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4860 != -1)
    {
      sub_1018DE100();
    }

    v11 = (a1 + 152);
    if (*(a1 + 175) < 0)
    {
      v11 = *v11;
    }

    v35 = 136380675;
    v36 = v11;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 1, "#Warning,CLFU,%{private}s downloading in progress, cannot change update settings", &v35, 12);
    v13 = v12;
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLFileUpdate::setUpdateSource(const char *, const char *, const CFTimeInterval &)", "%s\n", v12);
LABEL_61:
    if (v13 != buf)
    {
      free(v13);
    }

LABEL_47:
    v26 = 0;
    goto LABEL_48;
  }

  v14 = (a1 + 152);
  sub_100006044((a1 + 152), a2);
  v15 = (a1 + 176);
  sub_100006044((a1 + 176), a3);
  v16 = *a4;
  if (*a4 <= 0.0)
  {
    if (qword_1025D4860 != -1)
    {
      sub_1003115C0();
    }

    v17 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_ERROR))
    {
      v18 = (a1 + 152);
      if (*(a1 + 175) < 0)
      {
        v18 = *v14;
      }

      *buf = 136380675;
      *&buf[4] = v18;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "CLFU,%{private}s download timeout must be greater than 0. Forcing to 30 seconds.", buf, 0xCu);
    }

    v19 = sub_10000A100(121, 0);
    v16 = 30.0;
    if (v19)
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4860 != -1)
      {
        sub_1018DE100();
      }

      v30 = (a1 + 152);
      if (*(a1 + 175) < 0)
      {
        v30 = *v14;
      }

      v35 = 136380675;
      v36 = v30;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 16, "CLFU,%{private}s download timeout must be greater than 0. Forcing to 30 seconds.", &v35, 12);
      v32 = v31;
      sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLFileUpdate::setUpdateSource(const char *, const char *, const CFTimeInterval &)", "%s\n", v31);
      if (v32 != buf)
      {
        free(v32);
      }

      v16 = 30.0;
    }
  }

  *(a1 + 72) = v16;
  std::operator+<char>();
  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  *(a1 + 128) = *buf;
  *(a1 + 144) = v38;
  if (*(a1 + 199) >= 0)
  {
    v20 = *(a1 + 199);
  }

  else
  {
    v20 = *(a1 + 184);
  }

  v21 = buf;
  sub_100070148(buf, v20 + 5);
  if (v38 < 0)
  {
    v21 = *buf;
  }

  if (v20)
  {
    if (*(a1 + 199) >= 0)
    {
      v22 = (a1 + 176);
    }

    else
    {
      v22 = *(a1 + 176);
    }

    memmove(v21, v22, v20);
  }

  strcpy(&v21[v20], ".temp");
  if (*(a1 + 223) < 0)
  {
    operator delete(*(a1 + 200));
  }

  *(a1 + 200) = *buf;
  *(a1 + 216) = v38;
  v23 = (a1 + 176);
  if (*(a1 + 199) < 0)
  {
    v23 = *v15;
  }

  v24 = getuid();
  v25 = getgid();
  if (!sub_1004E667C(v23, v24, v25))
  {
    if (qword_1025D4860 != -1)
    {
      sub_1018DE100();
    }

    v27 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_FAULT))
    {
      v28 = (a1 + 176);
      if (*(a1 + 199) < 0)
      {
        v28 = *v15;
      }

      *buf = 136446210;
      *&buf[4] = v28;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_FAULT, "CLFU,could not create path %{public}s", buf, 0xCu);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_47;
    }

    bzero(buf, 0x65CuLL);
    if (qword_1025D4860 != -1)
    {
      sub_1018DE100();
    }

    if (*(a1 + 199) < 0)
    {
      v15 = *v15;
    }

    v35 = 136446210;
    v36 = v15;
    LODWORD(v34) = 12;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 17, "CLFU,could not create path %{public}s", &v35, v34);
    v13 = v33;
    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLFileUpdate::setUpdateSource(const char *, const char *, const CFTimeInterval &)", "%s\n", v33);
    goto LABEL_61;
  }

  v26 = 1;
LABEL_48:
  (*(*v8 + 24))(v8);
  return v26;
}

void sub_1005DD5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DD610(uint64_t a1, void *a2)
{
  v4 = a1 + 8;
  (*(*(a1 + 8) + 16))(a1 + 8);
  if (sub_100255D4C(a1))
  {
    *(a1 + 96) = *a2;
    if (qword_1025D4860 != -1)
    {
      sub_1003115C0();
    }

    v5 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_INFO))
    {
      v6 = (a1 + 176);
      if (*(a1 + 199) < 0)
      {
        v6 = *v6;
      }

      v7 = *a2;
      *buf = 136446466;
      v20 = v6;
      v21 = 2050;
      v22 = v7;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "CLFU,file %{public}s,setting next update before deadline: %{public}.3fs (override)", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4860 != -1)
      {
        sub_1018DE100();
      }

      v11 = (a1 + 176);
      if (*(a1 + 199) < 0)
      {
        v11 = *v11;
      }

      v12 = *a2;
      v15 = 136446466;
      v16 = v11;
      v17 = 2050;
      v18 = v12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 1, "CLFU,file %{public}s,setting next update before deadline: %{public}.3fs (override)", &v15, 22);
      v14 = v13;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLFileUpdate::updateBefore(const CFAbsoluteTime &)", "%s\n", v13);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    v8 = *(a1 + 56);
    [v8 nextFireTime];
    if (*(a1 + 96) < v9)
    {
      v9 = *(a1 + 96);
    }

    [v8 setNextFireTime:v9];
  }

  return (*(*v4 + 24))(v4);
}

void sub_1005DD87C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DD8B0(uint64_t a1)
{
  v2 = (a1 + 8);
  (*(*(a1 + 8) + 16))(a1 + 8);
  [*(v2[27] + 16) unregister:*(v2[27] + 8) forNotification:6];
  [*(*(a1 + 232) + 16) unregister:*(*(a1 + 232) + 8) forNotification:5];
  if (qword_1025D4860 != -1)
  {
    sub_1003115C0();
  }

  v3 = qword_1025D4868;
  if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEBUG))
  {
    v4 = (a1 + 152);
    if (*(a1 + 175) < 0)
    {
      v4 = *v4;
    }

    *buf = 136380675;
    v23 = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "CLFU,unregistered for kNotificationCompanionConnectionUpdate for %{private}s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4860 != -1)
    {
      sub_1018DE100();
    }

    v13 = (a1 + 152);
    if (*(a1 + 175) < 0)
    {
      v13 = *v13;
    }

    v20 = 136380675;
    v21 = v13;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 2, "CLFU,unregistered for kNotificationCompanionConnectionUpdate for %{private}s", &v20, 12);
    v15 = v14;
    sub_100152C7C("Generic", 1, 0, 2, "virtual void CLFileUpdate::cancelUpdate()", "%s\n", v14);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  if (*(a1 + 120) == 1)
  {
    if (qword_1025D4860 != -1)
    {
      sub_1018DE100();
    }

    v5 = qword_1025D4868;
    if (os_log_type_enabled(qword_1025D4868, OS_LOG_TYPE_DEFAULT))
    {
      v6 = (a1 + 152);
      if (*(a1 + 175) < 0)
      {
        v6 = *v6;
      }

      *buf = 136380675;
      v23 = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "CLFU,stopping download of %{private}s", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4860 != -1)
      {
        sub_1018DE100();
      }

      v16 = (a1 + 152);
      if (*(a1 + 175) < 0)
      {
        v16 = *v16;
      }

      v20 = 136380675;
      v21 = v16;
      LODWORD(v19) = 12;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D4868, 0, "CLFU,stopping download of %{private}s", &v20, v19);
      v18 = v17;
      sub_100152C7C("Generic", 1, 0, 2, "virtual void CLFileUpdate::cancelUpdate()", "%s\n", v17);
      if (v18 != buf)
      {
        free(v18);
      }
    }

    (*(**(a1 + 48) + 24))(*(a1 + 48));
    *(a1 + 120) = 0;
  }

  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 80) = _Q0;
  *(a1 + 96) = 0xBFF0000000000000;
  [*(a1 + 56) setNextFireDelay:1.79769313e308];
  return (*(*v2 + 24))(v2);
}

void sub_1005DDC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DDCB8(uint64_t a1, unint64_t *a2)
{
  v4 = (a1 + 8);
  (*(*(a1 + 8) + 16))(a1 + 8);
  v5.n128_u64[0] = *a2;
  if (*a2 > v4[13])
  {
    *(a1 + 112) = v5.n128_u64[0];
  }

  return (*(*v4 + 24))(v4, v5);
}

uint64_t sub_1005DDD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 8;
  (*(*(a1 + 8) + 16))(a1 + 8);
  if (*(v4 + 167) < 0)
  {
    sub_100007244(a2, *(a1 + 152), *(a1 + 160));
  }

  else
  {
    *a2 = *(v4 + 144);
    *(a2 + 16) = *(v4 + 160);
  }

  return (*(*v4 + 24))(v4);
}

void sub_1005DDE0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DDE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 8;
  (*(*(a1 + 8) + 16))(a1 + 8);
  if (*(v4 + 191) < 0)
  {
    sub_100007244(a2, *(a1 + 176), *(a1 + 184));
  }

  else
  {
    *a2 = *(v4 + 168);
    *(a2 + 16) = *(v4 + 184);
  }

  return (*(*v4 + 24))(v4);
}

void sub_1005DDEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1005DDEF8(uint64_t a1, void *a2)
{
  v3 = (a1 + 8);
  (*(*(a1 + 8) + 16))(a1 + 8);
  [v3[6] nextFireTime];
  *a2 = v4;
  (*(*v3 + 3))(v3);
  return 1;
}

void sub_1005DDF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1017EC98C(va);
  _Unwind_Resume(a1);
}

id sub_1005DE15C(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_1005E5DC0(a1);
}

void sub_1005DE1BC(uint64_t a1, void *a2)
{
  v4 = [NSNumber numberWithInteger:a2[1]];
  v5 = +[NSMutableDictionary dictionary];
  v32 = v5;
  [v5 setObject:v4 forKeyedSubscript:@"CLMiLoConnectionReturnCode"];
  v6 = a2[1];
  if (v6 <= 6)
  {
    if (v6 <= 3)
    {
      if (v6 != 1)
      {
        if (v6 != 2)
        {
          if (v6 != 3)
          {
            goto LABEL_40;
          }

          v7 = [[NSUUID alloc] initWithUUIDBytes:a2 + 40];
          v8 = off_1024B3330;
          goto LABEL_39;
        }

        if (qword_1025D46D0 != -1)
        {
          sub_1018DE3D8();
        }

        v19 = qword_1025D46D8;
        if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
        {
          v20 = [objc_msgSend(*(a1 + 72) "UUIDString")];
          *buf = 68289282;
          v34 = 0;
          v35 = 2082;
          v36 = "";
          v37 = 2082;
          v38 = v20;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:MiLoConnectionSubscription, createServiceFailed, connectionToken:%{public, location:escape_only}s}", buf, 0x1Cu);
        }

        [v5 setObject:+[NSNumber numberWithInteger:](NSNumber forKeyedSubscript:{"numberWithInteger:", a2[39]), @"CLMiLoConnectionErrorMessage"}];
LABEL_40:
        sub_1005E02DC(a1, &v32);
      }

      v9 = [[NSUUID alloc] initWithUUIDBytes:a2 + 40];
      if (qword_1025D46D0 != -1)
      {
        sub_1018DE3D8();
      }

      v16 = qword_1025D46D8;
      if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
      {
        v17 = [objc_msgSend(*(a1 + 72) "UUIDString")];
        *buf = 68289794;
        v34 = 0;
        v35 = 2082;
        v36 = "";
        v37 = 2082;
        v38 = v17;
        v39 = 2082;
        v40 = [objc_msgSend(v9 "UUIDString")];
        v41 = 2050;
        v42 = a1;
        _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:MiLoConnectionSubscription, didCreateService, connectionToken:%{public, location:escape_only}s, serviceIdentifier:%{public, location:escape_only}s, self:%{public}p}", buf, 0x30u);
      }

LABEL_53:
      [v5 setObject:v9 forKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"];
      goto LABEL_40;
    }

    if (v6 == 4)
    {
      [v5 setObject:objc_msgSend([NSUUID alloc] forKeyedSubscript:{"initWithUUIDBytes:", a2 + 40), @"CLMiLoConnectionServiceIdentifier"}];
    }

    else if (v6 == 5)
    {
      v23 = objc_alloc_init(NSMutableArray);
      v24 = a2[43];
      if (a2[44] != v24)
      {
        v25 = a2[46];
        v26 = a2[47];
        v27 = (v24 + 8 * (v25 / 0x38));
        v28 = (*v27 + 72 * (v25 % 0x38));
        v29 = *(v24 + 8 * ((v26 + v25) / 0x38)) + 72 * ((v26 + v25) % 0x38);
        while (v28 != v29)
        {
          v30 = sub_1005DFD58(v28);
          [v23 addObject:v30];

          v28 += 9;
          if ((v28 - *v27) == 4032)
          {
            v31 = v27[1];
            ++v27;
            v28 = v31;
          }
        }
      }

      [v5 setObject:v23 forKeyedSubscript:@"CLMiLoConnectionServiceDescriptors"];

      goto LABEL_40;
    }

    goto LABEL_37;
  }

  if (v6 <= 9)
  {
    if (v6 == 7)
    {
      v18 = sub_1005DFE6C((a2 + 2));
      [v5 setObject:v18 forKeyedSubscript:@"CLMiLoConnectionServiceStatus"];

      goto LABEL_40;
    }

    if (v6 == 8)
    {
      [v5 setObject:+[NSNumber numberWithInteger:](NSNumber forKeyedSubscript:{"numberWithInteger:", a2[39]), @"CLMiLoConnectionErrorMessage"}];
      v9 = [[NSUUID alloc] initWithUUIDBytes:a2 + 40];
      if ([v9 isEqual:*(a1 + 80)])
      {
        if (qword_1025D46D0 != -1)
        {
          sub_1018DE3D8();
        }

        v21 = qword_1025D46D8;
        if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
        {
          v22 = *(*(*a1 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL;
          *buf = 68289538;
          v34 = 0;
          v35 = 2082;
          v36 = "";
          v37 = 2082;
          v38 = v22;
          v39 = 2082;
          v40 = [objc_msgSend(v9 "UUIDString")];
          _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:connect to service failed, clear fConnectedServiceIdentifier, class:%{public, location:escape_only}s, ServiceId:%{public, location:escape_only}s}", buf, 0x26u);
        }

        *(a1 + 80) = 0;
      }
    }

    else
    {
      [v5 setObject:+[NSNumber numberWithInteger:](NSNumber forKeyedSubscript:{"numberWithInteger:", a2[39]), @"CLMiLoConnectionErrorMessage"}];
      v9 = [[NSUUID alloc] initWithUUIDBytes:a2 + 40];
      if (!*(a1 + 80))
      {
        if (qword_1025D46D0 != -1)
        {
          sub_1018DE3D8();
        }

        v10 = qword_1025D46D8;
        if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
        {
          v11 = *(*(*a1 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL;
          *buf = 68289538;
          v34 = 0;
          v35 = 2082;
          v36 = "";
          v37 = 2082;
          v38 = v11;
          v39 = 2082;
          v40 = [objc_msgSend(v9 "UUIDString")];
          _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:disconnect to service failed, restore fConnectedServiceIdentifier, class:%{public, location:escape_only}s, ServiceId:%{public, location:escape_only}s}", buf, 0x26u);
        }

        *(a1 + 80) = [v9 copy];
      }
    }

    goto LABEL_53;
  }

  if (v6 == 10)
  {
    [v5 setObject:+[NSNumber numberWithInteger:](NSNumber forKeyedSubscript:{"numberWithInteger:", a2[39]), @"CLMiLoConnectionErrorMessage"}];
    v7 = [[NSUUID alloc] initWithUUIDBytes:a2 + 48];
    v8 = off_1024B3350;
    goto LABEL_39;
  }

  if (v6 == 12)
  {
LABEL_37:
    v7 = [NSNumber numberWithInteger:a2[39]];
    v8 = off_1024B3328;
LABEL_39:
    [v5 setObject:v7 forKeyedSubscript:*v8];
    goto LABEL_40;
  }

  if (v6 != 13)
  {
    goto LABEL_40;
  }

  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v12 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
  {
    v13 = a2[1];
    *buf = 68289282;
    v34 = 0;
    v35 = 2082;
    v36 = "";
    v37 = 1026;
    LODWORD(v38) = v13;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:onMiLoServiceEvent, unexpected event type, miloServiceEventType data:%{public}d}", buf, 0x18u);
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }
  }

  v14 = qword_1025D46D8;
  if (os_signpost_enabled(qword_1025D46D8))
  {
    v15 = a2[1];
    *buf = 68289282;
    v34 = 0;
    v35 = 2082;
    v36 = "";
    v37 = 1026;
    LODWORD(v38) = v15;
    _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "onMiLoServiceEvent, unexpected event type", "{msg%{public}.0s:onMiLoServiceEvent, unexpected event type, miloServiceEventType data:%{public}d}", buf, 0x18u);
  }
}

id sub_1005DEAA8(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_1005E5FF4(a1);
}

void sub_1005DEB08(uint64_t a1, void *a2)
{
  v5 = +[NSMutableDictionary dictionary];
  v4 = sub_1005E0360(a2);
  [v5 setObject:v4 forKeyedSubscript:@"CLMiLoConnectionPredictionUpdate"];

  sub_1005E09A0(a1, &v5);
}

id sub_1005DEC78(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_1005E61F8(a1);
}

void sub_1005DECD8(uint64_t a1, uint64_t *a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_INFO))
  {
    v5 = *a2;
    v8 = 68289282;
    v9 = 2082;
    v10 = "";
    v11 = 1026;
    v12 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:onMiLoServiceDebugResponse, Event Type:%{public}d}", &v8, 0x18u);
  }

  v6 = +[NSMutableDictionary dictionary];
  v8 = v6;
  v7 = sub_1005E0A24(a2);
  [v6 setObject:v7 forKeyedSubscript:@"CLMiLoConnectionDebugEventResponse"];

  sub_1005E0B60(a1, &v8);
}

id sub_1005DEEFC(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return sub_1005E63FC(a1);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {

      return sub_1005E65D4(a1);
    }

    else
    {
      return 0;
    }
  }
}

void sub_1005DEF98(uint64_t a1, void *a2)
{
  v5 = +[NSMutableDictionary dictionary];
  v4 = [[CLMiLoConnectionStatus alloc] initWithConnectionState:*a2];
  [v5 setObject:v4 forKeyedSubscript:@"CLMiLoConnectionStatusEvent"];

  sub_1005E0BE4(a1, &v5);
}

id sub_1005DF124(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_1005E6860(a1);
}

void sub_1005DF184(uint64_t a1, uint64_t a2)
{
  v3 = [NSNumber numberWithInteger:*a2];
  v4 = +[NSMutableDictionary dictionary];
  v17 = v4;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = *(a2 + 56);
  if (*(a2 + 64) != v6)
  {
    v7 = *(a2 + 80);
    v8 = (v6 + 8 * (v7 >> 9));
    v9 = (*v8 + 8 * (v7 & 0x1FF));
    v10 = *(v6 + (((*(a2 + 88) + v7) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a2 + 88) + v7) & 0x1FF);
    while (v9 != v10)
    {
      v11 = [CLMiLoFingerprintError alloc];
      v12 = *v9++;
      v13 = [v11 initWithFingerprintErrorEnum:v12];
      [v5 addObject:v13];

      if ((v9 - *v8) == 4096)
      {
        v14 = v8[1];
        ++v8;
        v9 = v14;
      }
    }
  }

  v15 = [[CLMiLoFingerprintMetaInfo alloc] initWithNumWiFiAccessPoints:+[NSNumber numberWithUnsignedInt:](NSNumber numBLESources:"numberWithUnsignedInt:" numUWBSources:*(a2 + 32)) requestIdentifier:+[NSNumber numberWithUnsignedInt:](NSNumber errors:{"numberWithUnsignedInt:", *(a2 + 36)), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(a2 + 40)), objc_msgSend([NSUUID alloc], "initWithUUIDBytes:", a2 + 16), v5}];

  [v4 setObject:v3 forKeyedSubscript:@"CLMiLoConnectionReturnCode"];
  [v4 setObject:v15 forKeyedSubscript:@"CLMiLoConnectionRecordingMetaInfo"];

  sub_1005E02DC(a1, &v17);
}

id sub_1005DF440(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return sub_1005E6A64(a1);
}

void sub_1005DF4A0(uint64_t a1, uint64_t *a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_INFO))
  {
    v5 = *a2;
    v8 = 68289282;
    v9 = 2082;
    v10 = "";
    v11 = 1026;
    v12 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "{msg%{public}.0s:onMiLoGenericEventResponse, Event Type:%{public}d}", &v8, 0x18u);
  }

  v6 = +[NSMutableDictionary dictionary];
  v8 = v6;
  v7 = sub_1005E0C68(a2);
  [v6 setObject:v7 forKeyedSubscript:@"CLMiLoConnectionGenericEventResponse"];

  sub_1005E0DE0(a1, &v8);
}

void sub_1005DF5F8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v5 = sub_10005C6F0(a1, a2, a3, a4, a5);
  *v5 = off_102462C58;
  *(v5 + 48) = 0;
  *(v5 + 112) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0u;
  *(v5 + 128) = 0;
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v6 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "Initialize CLMiLoConnectionSubscription", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DE414(buf);
    v9[0] = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D46D8, 0, "Initialize CLMiLoConnectionSubscription", v9, 2);
    v8 = v7;
    sub_100152C7C("Generic", 1, 0, 2, "CLMiLoConnectionSubscription::CLMiLoConnectionSubscription(Delegate *, id<CLIntersiloUniverse>, CLClientManagerAuthorizationContext *, CLClientKeyPath *)", "%s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  sub_100E71364();
}

void sub_1005DF87C(_Unwind_Exception *a1)
{
  if (*(v1 + 135) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  v4 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_100114E74(v1);
  _Unwind_Resume(a1);
}

void sub_1005DF8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 8) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018DE458();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v8 = 1;
    v5 = _os_activity_create(dword_100000000, "CL: CLMiLoConnectionSubscription::onMiLoServiceEventNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v5, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018DE46C();
    }

    v6 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2082;
      v14 = "activity";
      v15 = 2050;
      v16 = a4;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLMiLoConnectionSubscription::onMiLoServiceEventNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v8 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1005DFAA4(uint64_t a1)
{
  *a1 = off_102462C58;
  v2 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 80))
  {
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3D8();
    }

    v3 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(*(*a1 - 8) + 8);
      v5 = [objc_msgSend(*(a1 + 80) "UUIDString")];
      v12[0] = 68289538;
      v12[1] = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = v4 & 0x7FFFFFFFFFFFFFFFLL;
      v17 = 2082;
      v18 = v5;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:disconnect to a connected service in Dtor of, class:%{public, location:escape_only}s, serviceId:%{public, location:escape_only}s}", v12, 0x26u);
    }

    v6 = (a1 + 88);
    if (*(a1 + 111) < 0)
    {
      v6 = *v6;
    }

    v7 = *(a1 + 64);
    v8 = [NSString stringWithUTF8String:v6];
    v9 = (a1 + 112);
    if (*(a1 + 135) < 0)
    {
      v9 = *v9;
    }

    [v7 disconnectToServiceForClient:v8 withServiceIdentifier:*(a1 + 80) withConnectionToken:*(a1 + 72) forUser:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v9)}];

    *(a1 + 80) = 0;
  }

  [*(a1 + 64) unregisterForMiloServiceEventUpdatesForClient:*(a1 + 56) withToken:*(a1 + 72)];
  [*(a1 + 64) unregisterForMiloPredictionEventUpdates:*(a1 + 56)];

  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  [*(a1 + 56) setValid:0];

  *(a1 + 56) = 0;
  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v10 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  sub_100114E74(a1);
  return a1;
}

void sub_1005DFD10(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10037EA9C(a1);
}

void sub_1005DFD20(uint64_t a1)
{
  sub_1005DFAA4(a1);

  operator delete();
}

id sub_1005DFD58(void *a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = a1[4];
  if (a1[5] != v3)
  {
    v4 = a1[7];
    v5 = (v3 + 8 * (v4 >> 9));
    v6 = (*v5 + 8 * (v4 & 0x1FF));
    v7 = *(v3 + (((a1[8] + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((a1[8] + v4) & 0x1FF);
    while (v6 != v7)
    {
      v8 = [CLMiLoLocationType alloc];
      v9 = *v6++;
      v10 = [v8 initWithLocationTypeEnum:v9];
      [v2 addObject:v10];

      if ((v6 - *v5) == 4096)
      {
        v11 = v5[1];
        ++v5;
        v6 = v11;
      }
    }
  }

  v12 = [[NSUUID alloc] initWithUUIDBytes:a1];
  v13 = [[CLMiLoServiceDescriptor alloc] initWithServiceIdentifier:v12 serviceType:a1[2] locationTypes:v2];

  return v13;
}

id sub_1005DFE6C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = *(a1 + 88);
  if (*(a1 + 96) != v3)
  {
    v4 = *(a1 + 112);
    v5 = (v3 + 8 * (v4 >> 9));
    v6 = (*v5 + 8 * (v4 & 0x1FF));
    v7 = *(v3 + (((*(a1 + 120) + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 120) + v4) & 0x1FF);
    while (v6 != v7)
    {
      v8 = [CLMiLoLocationType alloc];
      v9 = *v6++;
      v10 = [v8 initWithLocationTypeEnum:v9];
      [v2 addObject:v10];

      if ((v6 - *v5) == 4096)
      {
        v11 = v5[1];
        ++v5;
        v6 = v11;
      }
    }
  }

  v12 = [[NSUUID alloc] initWithUUIDBytes:a1 + 56];
  v13 = [[CLMiLoServiceDescriptor alloc] initWithServiceIdentifier:v12 serviceType:*(a1 + 72) locationTypes:v2];

  v14 = objc_alloc_init(NSMutableArray);
  v15 = *(a1 + 16);
  if (*(a1 + 24) != v15)
  {
    v16 = *(a1 + 40);
    v17 = (v15 + 8 * (v16 >> 9));
    v18 = (*v17 + 8 * (v16 & 0x1FF));
    v19 = *(v15 + (((*(a1 + 48) + v16) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 48) + v16) & 0x1FF);
    while (v18 != v19)
    {
      v20 = [CLMiLoServiceSuspendReason alloc];
      v21 = *v18++;
      v22 = [v20 initWithSuspendReasonEnum:v21];
      [v14 addObject:v22];

      if ((v18 - *v17) == 4096)
      {
        v23 = v17[1];
        ++v17;
        v18 = v23;
      }
    }
  }

  v24 = objc_alloc_init(NSMutableArray);
  v25 = *(a1 + 184);
  v26 = *(a1 + 192);
  while (v25 != v26)
  {
    v27 = [CLMiLoServiceQualityReason alloc];
    v28 = *v25++;
    v29 = [v27 initWithQualityReasonEnum:v28];
    [v24 addObject:v29];
  }

  v30 = [[CLMiLoServiceQualityInfo alloc] initWithQuality:*(a1 + 176) andReasons:v24];

  if (*(a1 + 144))
  {
    v31 = [NSUUID alloc];
    if ((*(a1 + 144) & 1) == 0)
    {
      goto LABEL_27;
    }

    v32 = [v31 initWithUUIDBytes:a1 + 128];
  }

  else
  {
    v32 = 0;
  }

  if (*(a1 + 160) == 1)
  {
    v33 = [CLMiLoLocationType alloc];
    if (*(a1 + 160))
    {
      v47 = [v33 initWithLocationTypeEnum:*(a1 + 152)];
      goto LABEL_21;
    }

LABEL_27:
    sub_100173BA0();
  }

  v47 = 0;
LABEL_21:
  v48 = v32;
  v49 = v30;
  v34 = [NSError alloc];
  v46 = [v34 initWithDomain:kCLErrorDomainPrivate code:*(a1 + 168) userInfo:0];
  v35 = objc_alloc_init(NSMutableArray);
  v36 = *(a1 + 216);
  if (*(a1 + 224) != v36)
  {
    v37 = *(a1 + 240);
    v38 = (v36 + 8 * (v37 >> 8));
    v39 = *v38 + 16 * v37;
    v40 = *(v36 + (((*(a1 + 248) + v37) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(a1 + 248) + v37);
    while (v39 != v40)
    {
      v41 = [[NSUUID alloc] initWithUUIDBytes:v39];
      [v35 addObject:v41];

      v39 += 16;
      if (v39 - *v38 == 4096)
      {
        v42 = v38[1];
        ++v38;
        v39 = v42;
      }
    }
  }

  v43 = [[CLMiLoServiceMetaInfo alloc] initWithNumClustersLearnedInModel:+[NSNumber numberWithUnsignedInt:](NSNumber numRecordingTriggersAtCurrentLOI:"numberWithUnsignedInt:" numInputValidFingerprints:*(a1 + 256)) numInputValidFingerprintsLabeled:+[NSNumber numberWithUnsignedInt:](NSNumber numInputValidFingerprintsUnlabeled:"numberWithUnsignedInt:" numFingerprintsBeforePruning:*(a1 + 260)) numFingerprintsAfterPruning:+[NSNumber numberWithUnsignedInt:](NSNumber numWiFiAccessPoints:"numberWithUnsignedInt:" numBLESources:*(a1 + 264)) numUWBSources:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(a1 + 272)), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(a1 + 268)), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(a1 + 276)), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(a1 + 280)), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(a1 + 284)), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(a1 + 288)), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(a1 + 292))}];
  v44 = [[CLMiLoServiceStatus alloc] initWithServiceState:*a1 suspendReasons:v14 serviceDescriptor:v13 currentLocationOfInterestUuid:v48 currentLocationOfInterestType:v47 error:v46 serviceQualityInfo:v49 places:v35 metaInfo:v43];

  return v44;
}

void sub_1005E0348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

id sub_1005E0360(void *a1)
{
  v54 = objc_alloc_init(NSMutableArray);
  v2 = a1[1];
  v51 = a1;
  if (a1[2] != v2)
  {
    v3 = a1[4];
    v4 = (v2 + 8 * (v3 / 0x49));
    v5 = (*v4 + 56 * (v3 % 0x49));
    v52 = *(v2 + 8 * ((a1[5] + v3) / 0x49)) + 56 * ((a1[5] + v3) % 0x49);
    while (v5 != v52)
    {
      v55 = v4;
      v6 = objc_alloc_init(NSMutableArray);
      v7 = v5[1];
      if (v5[2] != v7)
      {
        v8 = v5[4];
        v9 = (v7 + 8 * (v8 >> 7));
        v10 = *v9 + 32 * (v8 & 0x7F);
        v11 = *(v7 + (((v5[5] + v8) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v5[5] + v8) & 0x7F);
        while (v10 != v11)
        {
          v12 = [[NSUUID alloc] initWithUUIDBytes:v10];
          v13 = [[CLMiLoPlace alloc] initWithPlaceIdentifier:v12 score:+[NSNumber numberWithDouble:](NSNumber confidence:"numberWithDouble:" placeMetadata:{*(v10 + 16)), *(v10 + 24), 0}];

          [v6 addObject:v13];
          v10 += 32;
          if (v10 - *v9 == 4096)
          {
            v14 = v9[1];
            ++v9;
            v10 = v14;
          }
        }
      }

      v15 = [[CLMiLoServicePlacePrediction alloc] initWithPlaces:v6 serviceType:v5[6]];

      [v54 addObject:v15];
      v5 += 7;
      v4 = v55;
      if ((v5 - *v55) == 4088)
      {
        v4 = v55 + 1;
        v5 = v55[1];
      }
    }
  }

  v16 = objc_alloc_init(NSMutableArray);
  v17 = a1[13];
  if (a1[14] != v17)
  {
    v18 = a1[16];
    v19 = (v17 + 8 * (v18 / 0x66));
    v20 = *v19 + 40 * (v18 % 0x66);
    v21 = *(v17 + 8 * ((v51[17] + v18) / 0x66)) + 40 * ((v51[17] + v18) % 0x66);
    while (v20 != v21)
    {
      v22 = v20;
      if (*(v20 + 23) < 0)
      {
        v22 = *v20;
      }

      v23 = [[CLMiLoPredictionDeviceDistanceIndication alloc] initWithDeviceIdentifier:+[NSString stringWithUTF8String:](NSString uwbRange:"stringWithUTF8String:" bleRSSI:{v22), +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", *(v20 + 24)), +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", *(v20 + 32))}];
      [v16 addObject:v23];

      v20 += 40;
      if (v20 - *v19 == 4080)
      {
        v24 = v19[1];
        ++v19;
        v20 = v24;
      }
    }
  }

  v56 = [[CLMiLoPredictionCloseDeviceList alloc] initWithCloseDeviceList:v16];

  v25 = objc_alloc_init(NSMutableArray);
  v26 = v51[7];
  if (v51[8] != v26)
  {
    v27 = v51[10];
    v28 = (v26 + 8 * (v27 >> 7));
    v29 = *v28 + 32 * (v27 & 0x7F);
    v30 = *(v26 + (((v51[11] + v27) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v51[11] + v27) & 0x7F);
    while (v29 != v30)
    {
      v31 = [[NSUUID alloc] initWithUUIDBytes:v29];
      v32 = [[CLMiLoPlace alloc] initWithPlaceIdentifier:v31 score:+[NSNumber numberWithDouble:](NSNumber confidence:"numberWithDouble:" placeMetadata:{*(v29 + 16)), *(v29 + 24), 0}];

      [v25 addObject:v32];
      v29 += 32;
      if (v29 - *v28 == 4096)
      {
        v33 = v28[1];
        ++v28;
        v29 = v33;
      }
    }
  }

  v53 = [[CLMiLoServicePredictionLocationSimilarityList alloc] initWithPlaces:v25];

  v34 = [NSError alloc];
  v50 = [v34 initWithDomain:kCLErrorDomainPrivate code:v51[18] userInfo:0];
  v35 = [[NSUUID alloc] initWithUUIDBytes:v51 + 19];
  v36 = objc_alloc_init(NSMutableArray);
  v37 = objc_alloc_init(NSMutableArray);
  v38 = v51[23];
  if (v51[24] != v38)
  {
    v39 = v51[26];
    v40 = (v38 + 8 * (v39 >> 9));
    v41 = (*v40 + 8 * (v39 & 0x1FF));
    v42 = *(v38 + (((v51[27] + v39) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v51[27] + v39) & 0x1FF);
    while (v41 != v42)
    {
      v43 = [[CLMiLoPlaceConfidenceReason alloc] initWithConfidenceReasonEnum:*v41];
      [v36 addObject:v43];

      v44 = *v41;
      if (*v41 <= 7uLL && ((0xFBu >> v44) & 1) != 0)
      {
        v45 = [[CLMiLoFingerprintError alloc] initWithFingerprintErrorEnum:qword_101C81038[v44]];
        [v37 addObject:v45];
      }

      if ((++v41 - *v40) == 4096)
      {
        v46 = v40[1];
        ++v40;
        v41 = v46;
      }
    }
  }

  v47 = [[CLMiLoFingerprintMetaInfo alloc] initWithNumWiFiAccessPoints:+[NSNumber numberWithUnsignedInt:](NSNumber numBLESources:"numberWithUnsignedInt:" numUWBSources:*(v51 + 56)) requestIdentifier:+[NSNumber numberWithUnsignedInt:](NSNumber errors:{"numberWithUnsignedInt:", *(v51 + 57)), +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", *(v51 + 58)), v35, v37}];

  v48 = [[CLMiLoPrediction alloc] initWithPlacePredictions:v54 locationSimilarityList:v53 closeDeviceList:v56 error:v50 requestIdentifier:v35 predictionTime:+[NSDate date](NSDate confidence:"date") placeConfidenceReasons:v51[21] localizationFingerprintMetaInfo:{v36, v47}];
  return v48;
}

void sub_1005E0A0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

id sub_1005E0A24(uint64_t a1)
{
  v2 = [[NSUUID alloc] initWithUUIDBytes:a1 + 16];
  v3 = [NSError alloc];
  v4 = [v3 initWithDomain:kCLErrorDomainPrivate code:*(a1 + 8) userInfo:0];
  v5 = 0;
  if (*(a1 + 104) == 1)
  {
    v6 = [CLMiLoExportDatabaseTableResult alloc];
    if (*(a1 + 55) >= 0)
    {
      v7 = a1 + 32;
    }

    else
    {
      v7 = *(a1 + 32);
    }

    v8 = [NSString stringWithUTF8String:v7];
    if (*(a1 + 79) >= 0)
    {
      v9 = a1 + 56;
    }

    else
    {
      v9 = *(a1 + 56);
    }

    v10 = [NSString stringWithUTF8String:v9];
    v13 = *(a1 + 80);
    v12 = a1 + 80;
    v11 = v13;
    if (*(v12 + 23) >= 0)
    {
      v14 = v12;
    }

    else
    {
      v14 = v11;
    }

    v5 = [v6 initWithExportDir:v8 fileName:v10 sandboxExtensionTok:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v14)}];
  }

  v15 = [[CLMiLoDebugResponse alloc] initWithExportDatabaseTablesResult:v5 requestIdentifier:v2 error:v4];

  return v15;
}

void sub_1005E0BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005E0C50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

id sub_1005E0C68(uint64_t *a1)
{
  v2 = [NSError alloc];
  v3 = [v2 initWithDomain:kCLErrorDomainPrivate code:a1[1] userInfo:0];
  v4 = [CLMiLoGenericEventResponse alloc];
  v5 = *a1;
  v6 = *(a1 + 39);
  v9 = a1[2];
  v8 = a1 + 2;
  v7 = v9;
  if (v6 >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v11 = [v4 initWithEventType:v5 withDescription:+[NSString stringWithUTF8String:](NSString withError:{"stringWithUTF8String:", v10), v3}];
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v12 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 68289538;
    v14[1] = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2050;
    v18 = [v11 eventType];
    v19 = 2082;
    v20 = [objc_msgSend(v11 "genericEventDescription")];
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:created GenericEventResponse with, EventType:%{public}lu, Description:%{public, location:escape_only}s}", v14, 0x26u);
  }

  return v11;
}

void sub_1005E0E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005E0E64@<X0>(uint64_t a1@<X8>)
{
  v24[0] = off_102462D40;
  v24[1] = sub_1005E1820;
  v24[2] = 0;
  v24[3] = v24;
  sub_10000EC00(v25, "kCLConnectionMessageMiLoServiceEvent");
  sub_1005E5D04(&v26, v24);
  v21 = off_102462DF0;
  v22[0] = sub_1005E1968;
  v22[1] = 0;
  v23 = &v21;
  sub_10000EC00(v27, "kCLConnectionMessageMiLoCreateService");
  sub_1005E5D04(&v28, &v21);
  v20[0] = off_102462DF0;
  v20[1] = sub_1005E1D60;
  v20[2] = 0;
  v20[3] = v20;
  sub_10000EC00(v29, "kCLConnectionMessageMiLoDeleteService");
  sub_1005E5D04(&v30, v20);
  v19[0] = off_102462DF0;
  v19[1] = sub_1005E1FF0;
  v19[2] = 0;
  v19[3] = v19;
  sub_10000EC00(v31, "kCLConnectionMessageMiLoQueryMyServices");
  sub_1005E5D04(&v32, v19);
  v18[0] = off_102462DF0;
  v18[1] = sub_1005E21CC;
  v18[2] = 0;
  v18[3] = v18;
  sub_10000EC00(v33, "kCLConnectionMessageMiLoConnectToService");
  sub_1005E5D04(&v34, v18);
  v17[0] = off_102462DF0;
  v17[1] = sub_1005E27C4;
  v17[2] = 0;
  v17[3] = v17;
  sub_10000EC00(v35, "kCLConnectionMessageMiLoDisconnectToService");
  sub_1005E5D04(&v36, v17);
  v16[0] = off_102462DF0;
  v16[1] = sub_1005E3250;
  v16[2] = 0;
  v16[3] = v16;
  sub_10000EC00(v37, "kCLConnectionMessageMiLoSingleShotPrediction");
  sub_1005E5D04(&v38, v16);
  v15[0] = off_102462DF0;
  v15[1] = sub_1005E34E0;
  v15[2] = 0;
  v15[3] = v15;
  sub_10000EC00(v39, "kCLConnectionMessageRequestObservation");
  sub_1005E5D04(&v40, v15);
  v14[0] = off_102462DF0;
  v14[1] = sub_1005E378C;
  v14[2] = 0;
  v14[3] = v14;
  sub_10000EC00(v41, "kCLConnectionMessageLabelSignleObservation");
  sub_1005E5D04(&v42, v14);
  v13[0] = off_102462DF0;
  v13[1] = sub_1005E3A68;
  v13[2] = 0;
  v13[3] = v13;
  sub_10000EC00(v43, "kCLConnectionMessageLabelObservationsBetweenDates");
  sub_1005E5D04(&v44, v13);
  v12[0] = off_102462DF0;
  v12[1] = sub_1005E3DA4;
  v12[2] = 0;
  v12[3] = v12;
  sub_10000EC00(v45, "kCLConnectionMessageRemoveLabels");
  sub_1005E5D04(&v46, v12);
  v11[0] = off_102462DF0;
  v11[1] = sub_1005E4074;
  v11[2] = 0;
  v11[3] = v11;
  sub_10000EC00(v47, "kCLConnectionMessageStartUpdatingMicroLocation");
  sub_1005E5D04(&v48, v11);
  v10[0] = off_102462DF0;
  v10[1] = sub_1005E4344;
  v10[2] = 0;
  v10[3] = v10;
  sub_10000EC00(v49, "kCLConnectionMessageStopUpdatingMicroLocation");
  sub_1005E5D04(&v50, v10);
  v9[0] = off_102462DF0;
  v9[1] = sub_1005E45E4;
  v9[2] = 0;
  v9[3] = v9;
  sub_10000EC00(v51, "kCLConnectionMessageMiLoQueryConnectionStatus");
  sub_1005E5D04(&v52, v9);
  v8[0] = off_102462DF0;
  v8[1] = sub_1005E4770;
  v8[2] = 0;
  v8[3] = v8;
  sub_10000EC00(v53, "kCLConnectionMessageMiLoEnableMiLoAtCurrentLocation");
  sub_1005E5D04(&v54, v8);
  v7[0] = off_102462DF0;
  v7[1] = sub_1005E49DC;
  v7[2] = 0;
  v7[3] = v7;
  sub_10000EC00(v55, "kCLConnectionMessageRemoveCustomLOI");
  sub_1005E5D04(&v56, v7);
  v6[0] = off_102462DF0;
  v6[1] = sub_1005E4C88;
  v6[2] = 0;
  v6[3] = v6;
  sub_10000EC00(v57, "kCLConnectionMessageRequestModelLearning");
  sub_1005E5D04(&v58, v6);
  v5[0] = off_102462DF0;
  v5[1] = sub_1005E5164;
  v5[2] = 0;
  v5[3] = v5;
  sub_10000EC00(v59, "kCLConnectionMessageRequestPurgeMiLoData");
  sub_1005E5D04(&v60, v5);
  v4[0] = off_102462DF0;
  v4[1] = sub_1005E5608;
  v4[2] = 0;
  v4[3] = v4;
  sub_10000EC00(v61, "kCLConnectionMessageRequestMiLoExportDatabaseTables");
  sub_1005E5D04(&v62, v4);
  sub_1005E721C(a1, v25, 19);
  v2 = 133;
  do
  {
    sub_1005E7000(&v24[v2]);
    if (SHIBYTE((&v23)[v2]) < 0)
    {
      operator delete(v22[v2]);
    }

    v2 -= 7;
  }

  while (v2 * 8);
  sub_1005E7000(v4);
  sub_1005E7000(v5);
  sub_1005E7000(v6);
  sub_1005E7000(v7);
  sub_1005E7000(v8);
  sub_1005E7000(v9);
  sub_1005E7000(v10);
  sub_1005E7000(v11);
  sub_1005E7000(v12);
  sub_1005E7000(v13);
  sub_1005E7000(v14);
  sub_1005E7000(v15);
  sub_1005E7000(v16);
  sub_1005E7000(v17);
  sub_1005E7000(v18);
  sub_1005E7000(v19);
  sub_1005E7000(v20);
  sub_1005E7000(&v21);
  return sub_1005E7000(v24);
}

void sub_1005E164C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v68 = -1064;
  v69 = v66;
  do
  {
    v69 = sub_1005E5D84(v69) - 56;
    v68 += 56;
  }

  while (v68);
  sub_1005E7000(&a9);
  sub_1005E7000(&a13);
  sub_1005E7000(&a17);
  sub_1005E7000(&a21);
  sub_1005E7000(&a25);
  sub_1005E7000(&a29);
  sub_1005E7000(&a33);
  sub_1005E7000(&a37);
  sub_1005E7000(&a41);
  sub_1005E7000(&a45);
  sub_1005E7000(&a49);
  sub_1005E7000(&a53);
  sub_1005E7000(&a57);
  sub_1005E7000(&a61);
  sub_1005E7000(&a65);
  sub_1005E7000(&a66);
  sub_1005E7000(&STACK[0x200]);
  sub_1005E7000(&STACK[0x220]);
  sub_1005E7000(&STACK[0x240]);
  _Unwind_Resume(a1);
}

uint64_t sub_1005E1820(uint64_t a1, int a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    v10 = a2;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:modifying subscription for kCLConnectionMessageMiLoServiceEvent and kCLConnectionMessageMiLoPredictionEventUpdate, subscribe?:%{public}hhd}", v6, 0x18u);
  }

  sub_1000F3B70(a1);
  sub_1000F3B70(a1);
  sub_1000F3B70(a1);
  sub_1000F3B70(a1);
  return sub_1000F3B70(a1);
}

uint64_t sub_1005E1968(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:kCLConnectionMessageMiLoCreateService received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if (sub_1005E5ADC(a1, buf))
  {
    v5 = objc_opt_class();
    v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
    DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v6);
    v8 = DictionaryOfClasses;
    if (DictionaryOfClasses && [DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceTypeKey"] && objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionLocationTypesKey"))
    {
      v9 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionServiceTypeKey"];
      v10 = [[NSKeyedUnarchiver alloc] initForReadingFromData:objc_msgSend(v8 error:{"objectForKeyedSubscript:", @"CLMiLoConnectionLocationTypesKey", 0}];
      v11 = objc_opt_class();
      v12 = [v10 decodeObjectOfClasses:+[NSSet setWithObjects:](NSSet forKey:{"setWithObjects:", v11, objc_opt_class(), 0), NSKeyedArchiveRootObjectKey}];
      [v10 finishDecoding];
      v13 = (a1 + 88);
      if (*(a1 + 111) < 0)
      {
        v13 = *v13;
      }

      v14 = *(a1 + 64);
      v15 = [NSString stringWithUTF8String:v13];
      v16 = [v9 integerValue];
      v17 = (a1 + 112);
      if (*(a1 + 135) < 0)
      {
        v17 = *v17;
      }

      [v14 createServiceForClient:v15 withServiceType:v16 locationTypes:v12 connectionToken:*(a1 + 72) forUser:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v17)}];
      v19 = @"CLMiLoConnectionReturnCode";
      v20 = &off_10254EC18;
      [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      return CLConnectionMessage::sendReply();
    }

    else
    {
      v21[0] = @"CLMiLoConnectionReturnCode";
      v21[1] = @"CLMiLoConnectionErrorMessage";
      v22[0] = &off_10254EBE8;
      v22[1] = &off_10254EC00;
      [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
      return CLConnectionMessage::sendReply();
    }
  }

  else
  {
    v24[0] = &off_10254EBE8;
    v23[0] = @"CLMiLoConnectionReturnCode";
    v23[1] = @"CLMiLoConnectionErrorMessage";
    v24[1] = [NSNumber numberWithInteger:*buf];
    [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
    return CLConnectionMessage::sendReply();
  }
}

uint64_t sub_1005E1D60(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v23 = 2082;
    v24 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageMiLoDeleteService received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if ((sub_1005E5ADC(a1, buf) & 1) == 0)
  {
    v21[0] = &off_10254EC30;
    v20[0] = @"CLMiLoConnectionReturnCode";
    v20[1] = @"CLMiLoConnectionErrorMessage";
    v21[1] = [NSNumber numberWithInteger:*buf];
    v12 = v21;
    v13 = v20;
LABEL_15:
    v14 = 2;
    goto LABEL_16;
  }

  v5 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  if (!DictionaryOfClasses || (v7 = DictionaryOfClasses, ![DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"]))
  {
    v18[0] = @"CLMiLoConnectionReturnCode";
    v18[1] = @"CLMiLoConnectionErrorMessage";
    v19[0] = &off_10254EC30;
    v19[1] = &off_10254EC00;
    v12 = v19;
    v13 = v18;
    goto LABEL_15;
  }

  v8 = [v7 objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"];
  v9 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v9 = *v9;
  }

  v10 = [NSString stringWithUTF8String:v9];
  v11 = (a1 + 112);
  if (*(a1 + 135) < 0)
  {
    v11 = *v11;
  }

  [*(a1 + 64) deleteServiceForClient:v10 withServiceIdentifier:v8 withConnectionToken:*(a1 + 72) forUser:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v11)}];
  v16 = @"CLMiLoConnectionReturnCode";
  v17 = &off_10254EC18;
  v12 = &v17;
  v13 = &v16;
  v14 = 1;
LABEL_16:
  [NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:v14];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_1005E1FF0(uint64_t a1, uint64_t *a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v3 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v16 = 2082;
    v17 = "";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageMiLoQueryMyServices received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if (sub_1005E5ADC(a1, buf))
  {
    v4 = (a1 + 88);
    if (*(a1 + 111) < 0)
    {
      v4 = *v4;
    }

    v5 = [NSString stringWithUTF8String:v4];
    v6 = (a1 + 112);
    if (*(a1 + 135) < 0)
    {
      v6 = *v6;
    }

    [*(a1 + 64) queryServicesForClient:v5 withConnectionToken:*(a1 + 72) forUser:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v6)}];
    v11 = @"CLMiLoConnectionReturnCode";
    v12 = &off_10254EC18;
    v7 = &v12;
    v8 = &v11;
    v9 = 1;
  }

  else
  {
    v14[0] = &off_10254EC48;
    v13[0] = @"CLMiLoConnectionReturnCode";
    v13[1] = @"CLMiLoConnectionErrorMessage";
    v14[1] = [NSNumber numberWithInteger:*buf];
    v7 = v14;
    v8 = v13;
    v9 = 2;
  }

  [NSDictionary dictionaryWithObjects:v7 forKeys:v8 count:v9, v11, v12];
  return CLConnectionMessage::sendReply();
}

void sub_1005E21CC(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v35 = 0;
    v36 = 2082;
    v37 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageMiLoConnectToService received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  v29 = 0;
  if ((sub_1005E5ADC(a1, &v29) & 1) == 0)
  {
    v45[0] = &off_10254EC60;
    v44[0] = @"CLMiLoConnectionReturnCode";
    v44[1] = @"CLMiLoConnectionErrorMessage";
    v45[1] = [NSNumber numberWithInteger:v29];
    v18 = v45;
    v19 = v44;
    goto LABEL_18;
  }

  v5 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  v7 = DictionaryOfClasses;
  if (DictionaryOfClasses && [DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"])
  {
    v8 = [v7 objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"];
    v9 = v8;
    if (!*(a1 + 80))
    {
      *(a1 + 80) = [v8 copy];
      v23 = (a1 + 88);
      if (*(a1 + 111) < 0)
      {
        v23 = *v23;
      }

      v24 = [NSString stringWithUTF8String:v23];
      if (qword_1025D46D0 != -1)
      {
        sub_1018DE3EC();
      }

      v25 = qword_1025D46D8;
      if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [(NSString *)v24 UTF8String];
        v27 = [objc_msgSend(v9 "UUIDString")];
        *buf = 68289539;
        v35 = 0;
        v36 = 2082;
        v37 = "";
        v38 = 2081;
        *v39 = v26;
        *&v39[8] = 2081;
        *&v39[10] = v27;
        _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMiLoConnectionSubscription::handleConnectToService, connecting to service, clientId:%{private, location:escape_only}s, serviceIdentifier:%{private, location:escape_only}s}", buf, 0x26u);
      }

      v28 = (a1 + 112);
      if (*(a1 + 135) < 0)
      {
        v28 = *v28;
      }

      [*(a1 + 64) connectToServiceForClient:v24 withServiceIdentifier:v9 withConnectionToken:*(a1 + 72) forUser:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v28)}];
      v30 = @"CLMiLoConnectionReturnCode";
      v31 = &off_10254EC18;
      v18 = &v31;
      v19 = &v30;
      v20 = 1;
      goto LABEL_19;
    }

    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }

    v10 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*(*a1 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL;
      v12 = [objc_msgSend(v9 "UUIDString")];
      v13 = [objc_msgSend(*(a1 + 80) "UUIDString")];
      *buf = 68289794;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2082;
      *v39 = v11;
      *&v39[8] = 2082;
      *&v39[10] = v12;
      v40 = 2082;
      v41 = v13;
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:connect to service failed, already has an active connection, class:%{public, location:escape_only}s, requestedServiceIdentifierToConnect:%{public, location:escape_only}s, activeConnectionServiceIdentifier:%{public, location:escape_only}s}", buf, 0x30u);
      if (qword_1025D46D0 != -1)
      {
        sub_1018DE3EC();
      }
    }

    v14 = qword_1025D46D8;
    if (os_signpost_enabled(qword_1025D46D8))
    {
      v15 = *(*(*a1 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL;
      v16 = [objc_msgSend(v9 "UUIDString")];
      v17 = [objc_msgSend(*(a1 + 80) "UUIDString")];
      *buf = 68289794;
      v35 = 0;
      v36 = 2082;
      v37 = "";
      v38 = 2082;
      *v39 = v15;
      *&v39[8] = 2082;
      *&v39[10] = v16;
      v40 = 2082;
      v41 = v17;
      _os_signpost_emit_with_name_impl(dword_100000000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "connect to service failed, already has an active connection", "{msg%{public}.0s:connect to service failed, already has an active connection, class:%{public, location:escape_only}s, requestedServiceIdentifierToConnect:%{public, location:escape_only}s, activeConnectionServiceIdentifier:%{public, location:escape_only}s}", buf, 0x30u);
    }

    v32[0] = @"CLMiLoConnectionReturnCode";
    v32[1] = @"CLMiLoConnectionErrorMessage";
    v33[0] = &off_10254EC60;
    v33[1] = &off_10254EC78;
    v18 = v33;
    v19 = v32;
LABEL_18:
    v20 = 2;
LABEL_19:
    [NSDictionary dictionaryWithObjects:v18 forKeys:v19 count:v20];
    CLConnectionMessage::sendReply();
    return;
  }

  v42[0] = @"CLMiLoConnectionReturnCode";
  v42[1] = @"CLMiLoConnectionErrorMessage";
  v43[0] = &off_10254EC60;
  v43[1] = &off_10254EC00;
  [NSDictionary dictionaryWithObjects:v43 forKeys:v42 count:2];
  CLConnectionMessage::sendReply();
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3EC();
  }

  v21 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    if ([v7 objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"])
    {
      v22 = [objc_msgSend(objc_msgSend(v7 objectForKeyedSubscript:{@"CLMiLoConnectionServiceIdentifier", "UUIDString"), "UTF8String"}];
    }

    else
    {
      v22 = "";
    }

    *buf = 68289538;
    v35 = 0;
    v36 = 2082;
    v37 = "";
    v38 = 1026;
    *v39 = v7 != 0;
    *&v39[4] = 2082;
    *&v39[6] = v22;
    _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:handleConnectToService, mesasge info missing, hasDictionary:%{public}hhd, serviceIdentifier:%{public, location:escape_only}s}", buf, 0x22u);
  }
}

uint64_t sub_1005E27C4(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v56 = 0;
    v57 = 2082;
    v58 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageMiLoDisconnectToService received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  v50 = 0;
  if ((sub_1005E5ADC(a1, &v50) & 1) == 0)
  {
    v74[0] = &off_10254EC90;
    v73[0] = @"CLMiLoConnectionReturnCode";
    v73[1] = @"CLMiLoConnectionErrorMessage";
    v74[1] = [NSNumber numberWithInteger:v50];
    v15 = v74;
    v16 = v73;
LABEL_56:
    v36 = 2;
    goto LABEL_57;
  }

  v5 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  if (!DictionaryOfClasses || (v7 = DictionaryOfClasses, ![DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"]))
  {
    v71[0] = @"CLMiLoConnectionReturnCode";
    v71[1] = @"CLMiLoConnectionErrorMessage";
    v72[0] = &off_10254EC90;
    v72[1] = &off_10254EC00;
    v15 = v72;
    v16 = v71;
    goto LABEL_56;
  }

  v8 = [v7 objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }

    v17 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = [NSStringFromClass(v18) UTF8String];
      v20 = (objc_opt_respondsToSelector() & 1) != 0 ? [objc_msgSend(*(a1 + 80) "UUIDString")] : "not available";
      *buf = 68289538;
      v56 = 0;
      v57 = 2082;
      v58 = "";
      v59 = 2082;
      v60 = v19;
      v61 = 2082;
      v62 = v20;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:disconnect to service failed, requested service identifier to disconnect is not a NSUUID object, class of requested service identifier to disconnect:%{public, location:escape_only}s, connected service identifier:%{public, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D46D0 != -1)
      {
        sub_1018DE3EC();
      }
    }

    v37 = qword_1025D46D8;
    if (os_signpost_enabled(qword_1025D46D8))
    {
      v38 = objc_opt_class();
      v39 = [NSStringFromClass(v38) UTF8String];
      if (objc_opt_respondsToSelector())
      {
        v40 = [objc_msgSend(*(a1 + 80) "UUIDString")];
      }

      else
      {
        v40 = "not available";
      }

      *buf = 68289538;
      v56 = 0;
      v57 = 2082;
      v58 = "";
      v59 = 2082;
      v60 = v39;
      v61 = 2082;
      v62 = v40;
      _os_signpost_emit_with_name_impl(dword_100000000, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "disconnect to service failed, requested service identifier to disconnect is not a NSUUID object", "{msg%{public}.0s:disconnect to service failed, requested service identifier to disconnect is not a NSUUID object, class of requested service identifier to disconnect:%{public, location:escape_only}s, connected service identifier:%{public, location:escape_only}s}", buf, 0x26u);
    }

    v69[0] = @"CLMiLoConnectionReturnCode";
    v69[1] = @"CLMiLoConnectionErrorMessage";
    v70[0] = &off_10254EC60;
    v70[1] = &off_10254ECA8;
    v15 = v70;
    v16 = v69;
    goto LABEL_56;
  }

  v9 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v9 = *v9;
  }

  v10 = [NSString stringWithUTF8String:v9];
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3EC();
  }

  v11 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [(NSString *)v10 UTF8String];
    v13 = [objc_msgSend(v8 "UUIDString")];
    *buf = 68289539;
    v56 = 0;
    v57 = 2082;
    v58 = "";
    v59 = 2081;
    v60 = v12;
    v61 = 2081;
    v62 = v13;
    _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMiLoConnectionSubscription::handleDisconnectToService, disconnecting, clientId:%{private, location:escape_only}s, serviceIdentifier:%{private, location:escape_only}s}", buf, 0x26u);
  }

  if (!*(a1 + 80))
  {
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }

    v21 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
    {
      v22 = *(*(*a1 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL;
      v23 = [objc_msgSend(v8 "UUIDString")];
      *buf = 68289538;
      v56 = 0;
      v57 = 2082;
      v58 = "";
      v59 = 2082;
      v60 = v22;
      v61 = 2082;
      v62 = v23;
      _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:disconnect to service failed, doesn't have an active connection, class:%{public, location:escape_only}s, requested service identifier to disconnect:%{public, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D46D0 != -1)
      {
        sub_1018DE3EC();
      }
    }

    v24 = qword_1025D46D8;
    if (os_signpost_enabled(qword_1025D46D8))
    {
      v25 = *(*(*a1 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL;
      v26 = [objc_msgSend(v8 "UUIDString")];
      *buf = 68289538;
      v56 = 0;
      v57 = 2082;
      v58 = "";
      v59 = 2082;
      v60 = v25;
      v61 = 2082;
      v62 = v26;
      _os_signpost_emit_with_name_impl(dword_100000000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "disconnect to service failed, doesn't have an active connection", "{msg%{public}.0s:disconnect to service failed, doesn't have an active connection, class:%{public, location:escape_only}s, requested service identifier to disconnect:%{public, location:escape_only}s}", buf, 0x26u);
    }

    v67[0] = @"CLMiLoConnectionReturnCode";
    v67[1] = @"CLMiLoConnectionErrorMessage";
    v68[0] = &off_10254EC60;
    v68[1] = &off_10254ECC0;
    v15 = v68;
    v16 = v67;
    goto LABEL_56;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }

    v27 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = [NSStringFromClass(v28) UTF8String];
      v30 = [objc_msgSend(v8 "UUIDString")];
      *buf = 68289538;
      v56 = 0;
      v57 = 2082;
      v58 = "";
      v59 = 2082;
      v60 = v29;
      v61 = 2082;
      v62 = v30;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:disconnect to service, connected service identifier is not a NSUUID object, class of connected service identifier:%{public, location:escape_only}s, requested service identifier to disconnect:%{public, location:escape_only}s}", buf, 0x26u);
      if (qword_1025D46D0 != -1)
      {
        sub_1018DE3EC();
      }
    }

    v31 = qword_1025D46D8;
    if (os_signpost_enabled(qword_1025D46D8))
    {
      v32 = objc_opt_class();
      v33 = [NSStringFromClass(v32) UTF8String];
      v34 = [objc_msgSend(v8 "UUIDString")];
      *buf = 68289538;
      v56 = 0;
      v57 = 2082;
      v58 = "";
      v59 = 2082;
      v60 = v33;
      v61 = 2082;
      v62 = v34;
      _os_signpost_emit_with_name_impl(dword_100000000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "disconnect to service, connected service identifier is not a NSUUID object", "{msg%{public}.0s:disconnect to service, connected service identifier is not a NSUUID object, class of connected service identifier:%{public, location:escape_only}s, requested service identifier to disconnect:%{public, location:escape_only}s}", buf, 0x26u);
    }

    *(a1 + 80) = 0;
    v35 = (a1 + 112);
    if (*(a1 + 135) < 0)
    {
      v35 = *v35;
    }

    [*(a1 + 64) disconnectToServiceForClient:v10 withServiceIdentifier:v8 withConnectionToken:*(a1 + 72) forUser:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v35)}];
    v65 = @"CLMiLoConnectionReturnCode";
    v66 = &off_10254EC18;
    v15 = &v66;
    v16 = &v65;
    goto LABEL_46;
  }

  if (([v8 isEqual:*(a1 + 80)] & 1) == 0)
  {
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }

    v42 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_ERROR))
    {
      v43 = *(*(*a1 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL;
      v44 = [objc_msgSend(*(a1 + 80) "UUIDString")];
      v45 = [objc_msgSend(v8 "UUIDString")];
      *buf = 68289794;
      v56 = 0;
      v57 = 2082;
      v58 = "";
      v59 = 2082;
      v60 = v43;
      v61 = 2082;
      v62 = v44;
      v63 = 2082;
      v64 = v45;
      _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:disconnect to service failed, disconnect a not connected service, class:%{public, location:escape_only}s, connected service identifier:%{public, location:escape_only}s, requested service identifierToDisconnect:%{public, location:escape_only}s}", buf, 0x30u);
      if (qword_1025D46D0 != -1)
      {
        sub_1018DE3EC();
      }
    }

    v46 = qword_1025D46D8;
    if (os_signpost_enabled(qword_1025D46D8))
    {
      v47 = *(*(*a1 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL;
      v48 = [objc_msgSend(*(a1 + 80) "UUIDString")];
      v49 = [objc_msgSend(v8 "UUIDString")];
      *buf = 68289794;
      v56 = 0;
      v57 = 2082;
      v58 = "";
      v59 = 2082;
      v60 = v47;
      v61 = 2082;
      v62 = v48;
      v63 = 2082;
      v64 = v49;
      _os_signpost_emit_with_name_impl(dword_100000000, v46, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "disconnect to service failed, disconnect a not connected service", "{msg%{public}.0s:disconnect to service failed, disconnect a not connected service, class:%{public, location:escape_only}s, connected service identifier:%{public, location:escape_only}s, requested service identifierToDisconnect:%{public, location:escape_only}s}", buf, 0x30u);
    }

    v53[0] = @"CLMiLoConnectionReturnCode";
    v53[1] = @"CLMiLoConnectionErrorMessage";
    v54[0] = &off_10254EC60;
    v54[1] = &off_10254ECA8;
    v15 = v54;
    v16 = v53;
    goto LABEL_56;
  }

  *(a1 + 80) = 0;
  v14 = (a1 + 112);
  if (*(a1 + 135) < 0)
  {
    v14 = *v14;
  }

  [*(a1 + 64) disconnectToServiceForClient:v10 withServiceIdentifier:v8 withConnectionToken:*(a1 + 72) forUser:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v14)}];
  v51 = @"CLMiLoConnectionReturnCode";
  v52 = &off_10254EC18;
  v15 = &v52;
  v16 = &v51;
LABEL_46:
  v36 = 1;
LABEL_57:
  [NSDictionary dictionaryWithObjects:v15 forKeys:v16 count:v36];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_1005E3250(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v22 = 2082;
    v23 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageMiLoSingleShotPrediction received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if ((sub_1005E5ADC(a1, buf) & 1) == 0)
  {
    v20[0] = &off_10254ECD8;
    v19[0] = @"CLMiLoConnectionReturnCode";
    v19[1] = @"CLMiLoConnectionErrorMessage";
    v20[1] = [NSNumber numberWithInteger:*buf];
    v11 = v20;
    v12 = v19;
LABEL_14:
    v13 = 2;
    goto LABEL_15;
  }

  v5 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  if (!DictionaryOfClasses || (v7 = DictionaryOfClasses, ![DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"]) || !objc_msgSend(v7, "objectForKeyedSubscript:", @"CLMiLoConnectionRequestIdentifier"))
  {
    v17[0] = @"CLMiLoConnectionReturnCode";
    v17[1] = @"CLMiLoConnectionErrorMessage";
    v18[0] = &off_10254ECD8;
    v18[1] = &off_10254ECA8;
    v11 = v18;
    v12 = v17;
    goto LABEL_14;
  }

  v8 = [v7 objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"];
  v9 = [v7 objectForKeyedSubscript:@"CLMiLoConnectionRequestIdentifier"];
  v10 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v10 = *v10;
  }

  [*(a1 + 64) requestSingleShotMiLoPredictionForClient:+[NSString stringWithUTF8String:](NSString withServiceIdentifier:"stringWithUTF8String:" withRequestIdentifier:v10) withConnectionToken:{v8, v9, *(a1 + 72)}];
  v15 = @"CLMiLoConnectionReturnCode";
  v16 = &off_10254EC18;
  v11 = &v16;
  v12 = &v15;
  v13 = 1;
LABEL_15:
  [NSDictionary dictionaryWithObjects:v11 forKeys:v12 count:v13];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_1005E34E0(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v23 = 2082;
    v24 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageRequestObservation received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if ((sub_1005E5ADC(a1, buf) & 1) == 0)
  {
    v21[0] = &off_10254ECD8;
    v20[0] = @"CLMiLoConnectionReturnCode";
    v20[1] = @"CLMiLoConnectionErrorMessage";
    v21[1] = [NSNumber numberWithInteger:*buf];
    v12 = v21;
    v13 = v20;
LABEL_14:
    v14 = 2;
    goto LABEL_15;
  }

  v5 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  if (!DictionaryOfClasses || (v7 = DictionaryOfClasses, ![DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"]) || !objc_msgSend(v7, "objectForKeyedSubscript:", @"CLMiLoConnectionRequestIdentifier"))
  {
    v18[0] = @"CLMiLoConnectionReturnCode";
    v18[1] = @"CLMiLoConnectionErrorMessage";
    v19[0] = &off_10254ECD8;
    v19[1] = &off_10254ECA8;
    v12 = v19;
    v13 = v18;
    goto LABEL_14;
  }

  v8 = [v7 objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"];
  v9 = [v7 objectForKeyedSubscript:@"CLMiLoConnectionRequestIdentifier"];
  v10 = [v7 objectForKeyedSubscript:@"CLMiLoConnectionPlaceLabelIdentifier"];
  v11 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v11 = *v11;
  }

  [*(a1 + 64) requestObservationForClient:+[NSString stringWithUTF8String:](NSString withServiceIdentifier:"stringWithUTF8String:" withRequestIdentifier:v11) withPlaceIdentifier:v8 withConnectionToken:{v9, v10, *(a1 + 72)}];
  v16 = @"CLMiLoConnectionReturnCode";
  v17 = &off_10254EC18;
  v12 = &v17;
  v13 = &v16;
  v14 = 1;
LABEL_15:
  [NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:v14];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_1005E378C(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v24 = 2082;
    v25 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageLabelSignleObservation received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if ((sub_1005E5ADC(a1, buf) & 1) == 0)
  {
    v22[0] = &off_10254ECD8;
    v21[0] = @"CLMiLoConnectionReturnCode";
    v21[1] = @"CLMiLoConnectionErrorMessage";
    v22[1] = [NSNumber numberWithInteger:*buf];
    v13 = v22;
    v14 = v21;
LABEL_15:
    v15 = 2;
    goto LABEL_16;
  }

  v5 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  if (!DictionaryOfClasses || (v7 = DictionaryOfClasses, ![DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"]) || !objc_msgSend(v7, "objectForKeyedSubscript:", @"CLMiLoConnectionRequestIdentifier") || !objc_msgSend(v7, "objectForKeyedSubscript:", @"CLMiLoConnectionPlaceLabelIdentifier"))
  {
    v19[0] = @"CLMiLoConnectionReturnCode";
    v19[1] = @"CLMiLoConnectionErrorMessage";
    v20[0] = &off_10254ECD8;
    v20[1] = &off_10254ECA8;
    v13 = v20;
    v14 = v19;
    goto LABEL_15;
  }

  v8 = [v7 objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"];
  v9 = [v7 objectForKeyedSubscript:@"CLMiLoConnectionRequestIdentifier"];
  v10 = [v7 objectForKeyedSubscript:@"CLMiLoConnectionPlaceLabelIdentifier"];
  v11 = [v7 objectForKeyedSubscript:@"CLMiLoConnectionObservationIdentifier"];
  v12 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v12 = *v12;
  }

  [*(a1 + 64) requestLabelSingleObservationForClient:+[NSString stringWithUTF8String:](NSString withServiceIdentifier:"stringWithUTF8String:" withRequestIdentifier:v12) withPlaceIdentifier:v8 withObservationRequestIdentifier:v9 withConnectionToken:{v10, v11, *(a1 + 72)}];
  v17 = @"CLMiLoConnectionReturnCode";
  v18 = &off_10254EC18;
  v13 = &v18;
  v14 = &v17;
  v15 = 1;
LABEL_16:
  [NSDictionary dictionaryWithObjects:v13 forKeys:v14 count:v15];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_1005E3A68(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v26 = 2082;
    v27 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageLabelObservationsBetweenDates received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if ((sub_1005E5ADC(a1, buf) & 1) == 0)
  {
    v24[0] = &off_10254ECD8;
    v23[0] = @"CLMiLoConnectionReturnCode";
    v23[1] = @"CLMiLoConnectionErrorMessage";
    v24[1] = [NSNumber numberWithInteger:*buf];
    v15 = v24;
    v16 = v23;
LABEL_17:
    v17 = 2;
    goto LABEL_18;
  }

  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v6);
  if (!DictionaryOfClasses || (v8 = DictionaryOfClasses, ![DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"]) || !objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionRequestIdentifier") || !objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionPlaceLabelIdentifier") || !objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionObservationStartDate") || !objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionObservationEndDate"))
  {
    v21[0] = @"CLMiLoConnectionReturnCode";
    v21[1] = @"CLMiLoConnectionErrorMessage";
    v22[0] = &off_10254ECD8;
    v22[1] = &off_10254ECA8;
    v15 = v22;
    v16 = v21;
    goto LABEL_17;
  }

  v9 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"];
  v10 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionRequestIdentifier"];
  v11 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionPlaceLabelIdentifier"];
  v12 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionObservationStartDate"];
  v13 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionObservationEndDate"];
  v14 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v14 = *v14;
  }

  [*(a1 + 64) requestLabelObservationsForClient:+[NSString stringWithUTF8String:](NSString withServiceIdentifier:"stringWithUTF8String:" withRequestIdentifier:v14) withPlaceIdentifier:v9 betweenStartDate:v10 endDate:v11 withConnectionToken:{v12, v13, *(a1 + 72)}];
  v19 = @"CLMiLoConnectionReturnCode";
  v20 = &off_10254EC18;
  v15 = &v20;
  v16 = &v19;
  v17 = 1;
LABEL_18:
  [NSDictionary dictionaryWithObjects:v15 forKeys:v16 count:v17];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_1005E3DA4(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v24 = 2082;
    v25 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageRemoveLabels received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if ((sub_1005E5ADC(a1, buf) & 1) == 0)
  {
    v22[0] = &off_10254ECD8;
    v21[0] = @"CLMiLoConnectionReturnCode";
    v21[1] = @"CLMiLoConnectionErrorMessage";
    v22[1] = [NSNumber numberWithInteger:*buf];
    v13 = v22;
    v14 = v21;
LABEL_15:
    v15 = 2;
    goto LABEL_16;
  }

  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v6);
  if (!DictionaryOfClasses || (v8 = DictionaryOfClasses, ![DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"]) || !objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionRequestIdentifier") || !objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionLabelArray"))
  {
    v19[0] = @"CLMiLoConnectionReturnCode";
    v19[1] = @"CLMiLoConnectionErrorMessage";
    v20[0] = &off_10254ECD8;
    v20[1] = &off_10254ECA8;
    v13 = v20;
    v14 = v19;
    goto LABEL_15;
  }

  v9 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"];
  v10 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionRequestIdentifier"];
  v11 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionLabelArray"];
  v12 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v12 = *v12;
  }

  [*(a1 + 64) requestRemoveLabelsForClient:+[NSString stringWithUTF8String:](NSString withServiceIdentifier:"stringWithUTF8String:" withRequestIdentifier:v12) withLabels:v9 withConnectionToken:{v10, v11, *(a1 + 72)}];
  v17 = @"CLMiLoConnectionReturnCode";
  v18 = &off_10254EC18;
  v13 = &v18;
  v14 = &v17;
  v15 = 1;
LABEL_16:
  [NSDictionary dictionaryWithObjects:v13 forKeys:v14 count:v15];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_1005E4074(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v24 = 2082;
    v25 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageStartUpdatingMicroLocation received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if ((sub_1005E5ADC(a1, buf) & 1) == 0)
  {
    v22[0] = &off_10254ECD8;
    v21[0] = @"CLMiLoConnectionReturnCode";
    v21[1] = @"CLMiLoConnectionErrorMessage";
    v22[1] = [NSNumber numberWithInteger:*buf];
    v13 = v22;
    v14 = v21;
LABEL_15:
    v15 = 2;
    goto LABEL_16;
  }

  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v6);
  if (!DictionaryOfClasses || (v8 = DictionaryOfClasses, ![DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"]) || !objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionRequestIdentifier") || !objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionUpdateConfiguration"))
  {
    v19[0] = @"CLMiLoConnectionReturnCode";
    v19[1] = @"CLMiLoConnectionErrorMessage";
    v20[0] = &off_10254ECD8;
    v20[1] = &off_10254ECA8;
    v13 = v20;
    v14 = v19;
    goto LABEL_15;
  }

  v9 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"];
  v10 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionRequestIdentifier"];
  v11 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionUpdateConfiguration"];
  v12 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v12 = *v12;
  }

  [*(a1 + 64) requestStartUpdatingMicroLocationForClient:+[NSString stringWithUTF8String:](NSString withServiceIdentifier:"stringWithUTF8String:" withRequestIdentifier:v12) withConfiguration:v9 withConnectionToken:{v10, v11, *(a1 + 72)}];
  v17 = @"CLMiLoConnectionReturnCode";
  v18 = &off_10254EC18;
  v13 = &v18;
  v14 = &v17;
  v15 = 1;
LABEL_16:
  [NSDictionary dictionaryWithObjects:v13 forKeys:v14 count:v15];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_1005E4344(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v23 = 2082;
    v24 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageStopUpdatingMicroLocation received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if ((sub_1005E5ADC(a1, buf) & 1) == 0)
  {
    v21[0] = &off_10254ECD8;
    v20[0] = @"CLMiLoConnectionReturnCode";
    v20[1] = @"CLMiLoConnectionErrorMessage";
    v21[1] = [NSNumber numberWithInteger:*buf];
    v12 = v21;
    v13 = v20;
LABEL_14:
    v14 = 2;
    goto LABEL_15;
  }

  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v6);
  if (!DictionaryOfClasses || (v8 = DictionaryOfClasses, ![DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"]) || !objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionRequestIdentifier"))
  {
    v18[0] = @"CLMiLoConnectionReturnCode";
    v18[1] = @"CLMiLoConnectionErrorMessage";
    v19[0] = &off_10254ECD8;
    v19[1] = &off_10254ECA8;
    v12 = v19;
    v13 = v18;
    goto LABEL_14;
  }

  v9 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"];
  v10 = [v8 objectForKeyedSubscript:@"CLMiLoConnectionRequestIdentifier"];
  v11 = (a1 + 88);
  if (*(a1 + 111) < 0)
  {
    v11 = *v11;
  }

  [*(a1 + 64) requestStopUpdatingMicroLocationForClient:+[NSString stringWithUTF8String:](NSString withServiceIdentifier:"stringWithUTF8String:" withRequestIdentifier:v11) withConnectionToken:{v9, v10, *(a1 + 72)}];
  v16 = @"CLMiLoConnectionReturnCode";
  v17 = &off_10254EC18;
  v12 = &v17;
  v13 = &v16;
  v14 = 1;
LABEL_15:
  [NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:v14];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_1005E45E4(uint64_t a1, uint64_t *a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v3 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v13 = 2082;
    v14 = "";
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageMiLoQueryConnectionStatus received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if (sub_1005E5ADC(a1, buf))
  {
    [*(a1 + 64) queryMiloConnectionStatus:*(a1 + 72)];
    v8 = @"CLMiLoConnectionReturnCode";
    v9 = &off_10254EC18;
    v4 = &v9;
    v5 = &v8;
    v6 = 1;
  }

  else
  {
    v11[0] = &off_10254ECF0;
    v10[0] = @"CLMiLoConnectionReturnCode";
    v10[1] = @"CLMiLoConnectionErrorMessage";
    v11[1] = [NSNumber numberWithInteger:*buf];
    v4 = v11;
    v5 = v10;
    v6 = 2;
  }

  [NSDictionary dictionaryWithObjects:v4 forKeys:v5 count:v6, v8, v9];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_1005E4770(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v19 = 2082;
    v20 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageMiLoEnableMiLoAtCurrentLocation received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if ((sub_1005E5ADC(a1, buf) & 1) == 0)
  {
    v17[0] = &off_10254ECD8;
    v16[0] = @"CLMiLoConnectionReturnCode";
    v16[1] = @"CLMiLoConnectionErrorMessage";
    v17[1] = [NSNumber numberWithInteger:*buf];
    v8 = v17;
    v9 = v16;
LABEL_12:
    v10 = 2;
    goto LABEL_13;
  }

  v5 = [NSSet setWithObjects:objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v5);
  if (!DictionaryOfClasses || (v7 = DictionaryOfClasses, ![DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"]) || !objc_msgSend(v7, "objectForKeyedSubscript:", @"CLMiLoConnectionRequestIdentifier"))
  {
    v14[0] = @"CLMiLoConnectionReturnCode";
    v14[1] = @"CLMiLoConnectionErrorMessage";
    v15[0] = &off_10254ECD8;
    v15[1] = &off_10254ECA8;
    v8 = v15;
    v9 = v14;
    goto LABEL_12;
  }

  [*(a1 + 64) enableMiLoAtCurrentLocationWithServiceIdentifier:objc_msgSend(v7 withRequestIdentifier:"objectForKeyedSubscript:" connectionToken:{@"CLMiLoConnectionServiceIdentifier", objc_msgSend(v7, "objectForKeyedSubscript:", @"CLMiLoConnectionRequestIdentifier", *(a1 + 72)}];
  v12 = @"CLMiLoConnectionReturnCode";
  v13 = &off_10254EC18;
  v8 = &v13;
  v9 = &v12;
  v10 = 1;
LABEL_13:
  [NSDictionary dictionaryWithObjects:v8 forKeys:v9 count:v10];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_1005E49DC(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v20 = 2082;
    v21 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:kCLConnectionMessageRemoveCustomLOI received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  *buf = 0;
  if ((sub_1005E5ADC(a1, buf) & 1) == 0)
  {
    v18[0] = &off_10254ECD8;
    v17[0] = @"CLMiLoConnectionReturnCode";
    v17[1] = @"CLMiLoConnectionErrorMessage";
    v18[1] = [NSNumber numberWithInteger:*buf];
    v9 = v18;
    v10 = v17;
LABEL_13:
    v11 = 2;
    goto LABEL_14;
  }

  v5 = objc_opt_class();
  v6 = [NSSet setWithObjects:v5, objc_opt_class(), 0];
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v6);
  if (!DictionaryOfClasses || (v8 = DictionaryOfClasses, ![DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"]) || !objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionRequestIdentifier") || !objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionLOIIdentifier"))
  {
    v15[0] = @"CLMiLoConnectionReturnCode";
    v15[1] = @"CLMiLoConnectionErrorMessage";
    v16[0] = &off_10254ECD8;
    v16[1] = &off_10254ECA8;
    v9 = v16;
    v10 = v15;
    goto LABEL_13;
  }

  [*(a1 + 64) requestRemoveCustomLoiWithServiceIdentifier:objc_msgSend(v8 withRequestIdentifier:"objectForKeyedSubscript:" withLoiIdentifier:@"CLMiLoConnectionServiceIdentifier" withConnectionToken:{objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionRequestIdentifier", objc_msgSend(v8, "objectForKeyedSubscript:", @"CLMiLoConnectionLOIIdentifier", *(a1 + 72)}];
  v13 = @"CLMiLoConnectionReturnCode";
  v14 = &off_10254EC18;
  v9 = &v14;
  v10 = &v13;
  v11 = 1;
LABEL_14:
  [NSDictionary dictionaryWithObjects:v9 forKeys:v10 count:v11];
  return CLConnectionMessage::sendReply();
}

uint64_t sub_1005E4C88(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v25 = 2082;
    v26 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:kCLConnectionMessageRequestModelLearning received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  v17 = 0;
  if (sub_1005E5ADC(a1, &v17))
  {
    sub_10000EC00(buf, "com.apple.locationd.private_info");
    v5 = sub_1001C2F40(a1);
    v6 = v5;
    if (v27 < 0)
    {
      operator delete(*buf);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    else if (v5)
    {
LABEL_8:
      v7 = [NSSet setWithObjects:objc_opt_class(), 0];
      DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7);
      v9 = DictionaryOfClasses;
      if (DictionaryOfClasses && [DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"] && objc_msgSend(v9, "objectForKeyedSubscript:", @"CLMiLoConnectionRequestIdentifier"))
      {
        v10 = [v9 objectForKeyedSubscript:@"CLMiLoConnectionServiceIdentifier"];
        v11 = [v9 objectForKeyedSubscript:@"CLMiLoConnectionRequestIdentifier"];
        v12 = (a1 + 88);
        if (*(a1 + 111) < 0)
        {
          v12 = *v12;
        }

        [*(a1 + 64) requestMicroLocationLearningForClient:+[NSString stringWithUTF8String:](NSString withServiceIdentifier:"stringWithUTF8String:" withRequestIdentifier:{v12), v10, v11}];
        v18 = @"CLMiLoConnectionReturnCode";
        v19 = &off_10254EC18;
        [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        return CLConnectionMessage::sendReply();
      }

      else
      {
        if (qword_1025D46D0 != -1)
        {
          sub_1018DE3EC();
        }

        v15 = qword_1025D46D8;
        if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          v25 = 2082;
          v26 = "";
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:invalid data for kCLConnectionMessageRequestModelLearning}", buf, 0x12u);
        }

        v20[0] = @"CLMiLoConnectionReturnCode";
        v20[1] = @"CLMiLoConnectionErrorMessage";
        v21[0] = &off_10254ECD8;
        v21[1] = &off_10254ECA8;
        [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
        return CLConnectionMessage::sendReply();
      }
    }

    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }

    v16 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v25 = 2082;
      v26 = "";
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:not qualified for kCLConnectionMessageRequestModelLearning}", buf, 0x12u);
    }

    v22[0] = @"CLMiLoConnectionReturnCode";
    v22[1] = @"CLMiLoConnectionErrorMessage";
    v23[0] = &off_10254ECD8;
    v23[1] = [NSNumber numberWithInteger:1];
    [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:2];
    return CLConnectionMessage::sendReply();
  }

  else
  {
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }

    v14 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v25 = 2082;
      v26 = "";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:not qualified for MiLo connection}", buf, 0x12u);
    }

    v29[0] = &off_10254ECD8;
    v28[0] = @"CLMiLoConnectionReturnCode";
    v28[1] = @"CLMiLoConnectionErrorMessage";
    v29[1] = [NSNumber numberWithInteger:v17];
    [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:2];
    return CLConnectionMessage::sendReply();
  }
}

void sub_1005E5140(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005E5164(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v24 = 2082;
    v25 = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:kCLConnectionMessageRequestPurgeMiLoData received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  v16 = 0;
  if (sub_1005E5ADC(a1, &v16))
  {
    sub_10000EC00(buf, "com.apple.locationd.milo_purge_data");
    v5 = sub_1001C2F40(a1);
    v6 = v5;
    if (v26 < 0)
    {
      operator delete(*buf);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    else if (v5)
    {
LABEL_8:
      v7 = [NSSet setWithObjects:objc_opt_class(), 0];
      DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7);
      v9 = DictionaryOfClasses;
      if (DictionaryOfClasses && [DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionRequestIdentifier"])
      {
        v10 = [v9 objectForKeyedSubscript:@"CLMiLoConnectionRequestIdentifier"];
        v11 = (a1 + 88);
        if (*(a1 + 111) < 0)
        {
          v11 = *v11;
        }

        [*(a1 + 64) requestPurgeAllMiLoDataFromClient:+[NSString stringWithUTF8String:](NSString withRequestIdentifier:{"stringWithUTF8String:", v11), v10}];
        v17 = @"CLMiLoConnectionReturnCode";
        v18 = &off_10254EC18;
        [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
        return CLConnectionMessage::sendReply();
      }

      else
      {
        if (qword_1025D46D0 != -1)
        {
          sub_1018DE3EC();
        }

        v15 = qword_1025D46D8;
        if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          v24 = 2082;
          v25 = "";
          _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:invalid data for kCLConnectionMessageRequestPurgeMiLoData}", buf, 0x12u);
        }

        v19[0] = @"CLMiLoConnectionReturnCode";
        v19[1] = @"CLMiLoConnectionErrorMessage";
        v20[0] = &off_10254ECD8;
        v20[1] = &off_10254ECA8;
        [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
        return CLConnectionMessage::sendReply();
      }
    }

    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }

    v14 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v24 = 2082;
      v25 = "";
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:not qualified for kCLConnectionMessageRequestMiLoExportDatabaseTables}", buf, 0x12u);
    }

    v21[0] = @"CLMiLoConnectionReturnCode";
    v21[1] = @"CLMiLoConnectionErrorMessage";
    v22[0] = &off_10254ECD8;
    v22[1] = [NSNumber numberWithInteger:1];
    [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    return CLConnectionMessage::sendReply();
  }

  else
  {
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }

    v13 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      v24 = 2082;
      v25 = "";
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:not qualified for kCLConnectionMessageRequestPurgeMiLoData}", buf, 0x12u);
    }

    v28[0] = &off_10254ECD8;
    v27[0] = @"CLMiLoConnectionReturnCode";
    v27[1] = @"CLMiLoConnectionErrorMessage";
    v28[1] = [NSNumber numberWithInteger:v16];
    [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:2];
    return CLConnectionMessage::sendReply();
  }
}

void sub_1005E55E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005E5608(uint64_t a1, CLConnectionMessage **a2)
{
  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3D8();
  }

  v4 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    LOWORD(v23) = 2082;
    *(&v23 + 2) = "";
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:kCLConnectionMessageRequestMiLoExportDatabaseTables received in CLMiLoConnectionSubscription}", buf, 0x12u);
  }

  v15 = 0;
  if (sub_1005E5ADC(a1, &v15))
  {
    sub_10000EC00(buf, "com.apple.locationd.microlocation.export-db");
    v5 = sub_1001C2F40(a1);
    v6 = v5;
    if (SHIBYTE(v23) < 0)
    {
      operator delete(*buf);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    else if (v5)
    {
LABEL_8:
      v7 = [NSSet setWithObjects:objc_opt_class(), 0];
      DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a2, v7);
      v9 = DictionaryOfClasses;
      if (DictionaryOfClasses && [DictionaryOfClasses objectForKeyedSubscript:@"CLMiLoConnectionRequestIdentifier"])
      {
        v10 = [v9 objectForKeyedSubscript:@"CLMiLoConnectionRequestIdentifier"];
        *buf = 0;
        v23 = 0uLL;
        sub_100F35660(a1);
        if (v23 >= 0)
        {
          v11 = buf;
        }

        else
        {
          v11 = *buf;
        }

        [*(a1 + 64) requestExportMiLoDatabaseTablesFromClient:+[NSString stringWithUTF8String:](NSString withRequestIdentifier:"stringWithUTF8String:" connectionToken:{v11), v10, *(a1 + 72)}];
        v16 = @"CLMiLoConnectionReturnCode";
        v17 = &off_10254EC18;
        [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
        CLConnectionMessage::sendReply();
        if (SHIBYTE(v23) < 0)
        {
          operator delete(*buf);
        }
      }

      else
      {
        if (qword_1025D46D0 != -1)
        {
          sub_1018DE3EC();
        }

        v14 = qword_1025D46D8;
        if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          *&buf[4] = 0;
          LOWORD(v23) = 2082;
          *(&v23 + 2) = "";
          _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:invalid data for kCLConnectionMessageRequestMiLoExportDatabaseTables}", buf, 0x12u);
        }

        v18[0] = @"CLMiLoConnectionReturnCode";
        v18[1] = @"CLMiLoConnectionErrorMessage";
        v19[0] = &off_10254ECD8;
        v19[1] = &off_10254ECA8;
        [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
        CLConnectionMessage::sendReply();
      }

      return;
    }

    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }

    v13 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v23) = 2082;
      *(&v23 + 2) = "";
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:not qualified for kCLConnectionMessageRequestMiLoExportDatabaseTables}", buf, 0x12u);
    }

    v20[0] = @"CLMiLoConnectionReturnCode";
    v20[1] = @"CLMiLoConnectionErrorMessage";
    v21[0] = &off_10254ECD8;
    v21[1] = [NSNumber numberWithInteger:1];
    [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];
    CLConnectionMessage::sendReply();
  }

  else
  {
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }

    v12 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      LOWORD(v23) = 2082;
      *(&v23 + 2) = "";
      _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:not qualified for CLMiLoConnection}", buf, 0x12u);
    }

    v25[0] = &off_10254ECD8;
    v24[0] = @"CLMiLoConnectionReturnCode";
    v24[1] = @"CLMiLoConnectionErrorMessage";
    v25[1] = [NSNumber numberWithInteger:v15];
    [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
    CLConnectionMessage::sendReply();
  }
}

void sub_1005E5AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005E5ADC(uint64_t a1, uint64_t *a2)
{
  sub_10000EC00(&__p, "com.apple.locationd.milo_connection");
  v4 = sub_1001C2F40(a1);
  v6 = v4;
  if (v14 < 0)
  {
    operator delete(__p);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (qword_1025D46D0 != -1)
    {
      sub_1018DE3EC();
    }

    v8 = qword_1025D46D8;
    if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
    {
      __p = 68289026;
      v12 = 2082;
      v13 = "";
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SPI request, client is not entitled for CLMiLoConnection}", &__p, 0x12u);
    }

    v9 = 1;
    goto LABEL_16;
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (sub_100E7133C(v4, v5))
  {
    return 1;
  }

  if (qword_1025D46D0 != -1)
  {
    sub_1018DE3EC();
  }

  v10 = qword_1025D46D8;
  if (os_log_type_enabled(qword_1025D46D8, OS_LOG_TYPE_DEFAULT))
  {
    __p = 68289026;
    v12 = 2082;
    v13 = "";
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SPI request, CLMiLoConnection is not available on this platform}", &__p, 0x12u);
  }

  v9 = 2;
LABEL_16:
  result = 0;
  *a2 = v9;
  return result;
}

void sub_1005E5C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005E5D04(uint64_t a1, uint64_t a2)
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

uint64_t sub_1005E5D84(uint64_t a1)
{
  sub_1005E7000(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

id sub_1005E5DC0(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018DE5E4();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80B49 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DE5F8();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018DE5E4();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80B49 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DE6E8();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

id sub_1005E5FF4(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018DE5E4();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80B7CLL & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DE7D8();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018DE5E4();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80B7CLL & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DE8C8();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

id sub_1005E61F8(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018DE5E4();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80BADLL & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DE9B8();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018DE5E4();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80BADLL & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DEAA8();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

id sub_1005E63FC(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (!v2)
  {
    return sub_1005E67D8(&v6, a1);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_1018DE5E4();
    }

    v3 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C80BE8 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DEB98();
    }
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_1018DE5E4();
    }

    v5 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C80BE8 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DEC88();
    }
  }

  return 0;
}

id sub_1005E65D4(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018DE5E4();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80BE8 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DED78();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018DE5E4();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80BE8 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DEE68();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

id sub_1005E67D8(uint64_t a1, void *a2)
{
  if (![a2 cppObjectPtr] && objc_msgSend(objc_msgSend(a2, "compatibilityInfo"), "isEqual:", &off_10254ED08))
  {
    if ([objc_msgSend(a2 "serialized")] != 8)
    {
      sub_1018DEF58();
    }

    [a2 setCppObjectPtr:{objc_msgSend(objc_msgSend(a2, "serialized"), "bytes")}];
  }

  return [a2 cppObjectPtr];
}

id sub_1005E6860(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018DE5E4();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80C24 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DF128();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018DE5E4();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80C24 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DF218();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

id sub_1005E6A64(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018DE5E4();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80C61 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DF308();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018DE5E4();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C80C61 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018DF3F8();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}

__n128 sub_1005E6CC4(uint64_t a1, uint64_t a2)
{
  *a2 = off_102462D40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1005E6CF4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *a3;
  *a3 = 0uLL;
  sub_1005E6DA0(a1 + 8, a2, &v3);
  if (*(&v3 + 1))
  {
    sub_100008080(*(&v3 + 1));
  }
}

void sub_1005E6D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005E6D54(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005E6DA0(uint64_t a1, uint64_t a2, CLConnectionMessage **a3)
{
  v6 = (*(*a2 + 16))(a2);
  DictionaryOfClasses = CLConnectionMessage::getDictionaryOfClasses(*a3, v6);
  sub_100005548(v15, DictionaryOfClasses);
  v14 = 0;
  if (sub_10001CB4C(v15, "kCLConnectionMessageSubscribeKey", &v14, 0xFFFFFFFFLL))
  {
    v8 = *a1;
    v9 = *(a1 + 8);
    v10 = (a2 + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    v8(v10, v14, v15);
  }

  else
  {
    if (qword_1025D4790 != -1)
    {
      sub_1018DF4E8();
    }

    v11 = qword_1025D4798;
    if (os_log_type_enabled(qword_1025D4798, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Couldn't get value for kCLConnectionMessageSubscribeKey key}", buf, 0x12u);
      if (qword_1025D4790 != -1)
      {
        sub_1018DF4E8();
      }
    }

    v12 = qword_1025D4798;
    if (os_signpost_enabled(qword_1025D4798))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_signpost_emit_with_name_impl(dword_100000000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Couldn't get value for kCLConnectionMessageSubscribeKey key", "{msg%{public}.0s:Couldn't get value for kCLConnectionMessageSubscribeKey key}", buf, 0x12u);
    }
  }

  return sub_100005DA4();
}

uint64_t sub_1005E7000(uint64_t a1)
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

__n128 sub_1005E70DC(uint64_t a1, uint64_t a2)
{
  *a2 = off_102462DF0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1005E710C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = (a2 + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  v8 = v3;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5(v7, &v8);
  if (v9)
  {
    sub_100008080(v9);
  }

  if (v4)
  {
    sub_100008080(v4);
  }
}

void sub_1005E71AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  if (v10)
  {
    sub_100008080(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005E71D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005E721C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 56 * a3;
    do
    {
      sub_1005E7298(a1, a2, a2);
      a2 += 7;
      v5 -= 56;
    }

    while (v5);
  }

  return a1;
}

const void **sub_1005E7298(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = sub_100007070(a1, a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    sub_1005E74F4();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100019DF4(a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_1005E74E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1005E7570(va);
  _Unwind_Resume(a1);
}

char **sub_1005E7570(char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_1005E76CC(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

char *sub_1005E75BC(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100007244(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  sub_1005E7634((__dst + 24), a2 + 24);
  return __dst;
}

void sub_1005E7618(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005E7634(uint64_t a1, uint64_t a2)
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

void sub_1005E76CC(uint64_t a1)
{
  sub_1005E7000(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_1005E771C(uint64_t a1)
{
  sub_1005E7758(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_1005E7758(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_1005E76CC((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_1005E78F4(id a1)
{
  sub_10001A3E8(a1, v1);
  if (sub_10001CF3C())
  {
    byte_102658248 = 1;
  }
}

void sub_1005E7D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  operator delete();
}

void sub_1005E7ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  sub_101896E40((v11 + 8), (v10 + 8));
  operator delete();
}

uint64_t sub_1005E81CC(uint64_t a1)
{
  if (qword_1025D4230 != -1)
  {
    sub_1018DF71C();
  }

  v2 = qword_1025D4238;
  if (os_log_type_enabled(qword_1025D4238, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Aggregating ElevationGrade db records", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018DF730();
  }

  return sub_1005E8278(*(*(a1 + 32) + 128));
}

uint64_t sub_1005E8278(uint64_t a1)
{
  if (*(a1 + 40))
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018DF814();
    }

    v2 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v3 = sub_1000137E0();
      v4 = *(*(a1 + 24) + 132);
      v17 = 134218240;
      *v18 = v3;
      *&v18[8] = 1024;
      v19 = v4;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "Aggregating records start %f, count ~%d", &v17, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DF828();
    }

    v5 = (*(**(a1 + 24) + 32))(*(a1 + 24), a1);
    if (qword_1025D48A0 != -1)
    {
      sub_1018DF944();
    }

    v6 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v7 = sub_1000137E0();
      v8 = *(*(a1 + 24) + 132);
      v17 = 134218240;
      *v18 = v7;
      *&v18[8] = 1024;
      v19 = v8;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Aggregating records stop %f, count ~%d", &v17, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018DF96C();
    }

    v9 = *(a1 + 24);
    v10 = *(v9 + 132);
    if (sub_1005EA05C(v9, a1) * 1.2 < v10)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018DF944();
      }

      v11 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 24);
        v13 = *(v12 + 132);
        v14 = sub_1005EA05C(v12, a1);
        v17 = 67109376;
        *v18 = v13;
        *&v18[4] = 1024;
        *&v18[6] = v14;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning Number of records after aggregation is %d and it greatly exceeds the number of records estimated to be needed %d", &v17, 0xEu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018DFA88((a1 + 24), a1);
      }
    }

    return v5;
  }

  else
  {
    v16 = *(**(a1 + 24) + 32);

    return v16();
  }
}

id sub_1005E8854(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005E88EC;
  v4[3] = &unk_102462ED0;
  v5 = *(a1 + 40);
  return sub_1005F5534(518400.0, a2, 32, v2, 300, 0, 1, 1, 0, v4);
}

id sub_1005E88EC(uint64_t a1, char a2, uint64_t a3)
{
  v6 = [objc_msgSend(*(a1 + 32) "universe")];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005E898C;
  v8[3] = &unk_102462EA8;
  v11 = a2;
  v9 = *(a1 + 32);
  v10 = a3;
  return [v6 async:v8];
}

id sub_1005E898C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  if (v3 == 1)
  {
    [v4 saveCurrentSyncProgress];
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);

    return [v5 continueSync:v6];
  }

  else
  {
    ++v4[42];
    if (qword_1025D4530 != -1)
    {
      sub_1018DF538();
    }

    v8 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 48);
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "[WatchService] Transfer to phone failed with error, %@", &v10, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018DFDDC();
    }

    return [*(a1 + 32) setActivityAsDone:*(a1 + 40)];
  }
}

void sub_1005E90CC(uint64_t a1, _xpc_activity_s *a2)
{
  if (qword_1025D4530 != -1)
  {
    sub_1018DF538();
  }

  v4 = qword_1025D4538;
  if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_INFO))
  {
    v7 = 134349056;
    state = xpc_activity_get_state(a2);
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_INFO, "[WatchService] Sync timer fired (%{public}ld)", &v7, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E01D8();
  }

  *(*(a1 + 32) + 160) = os_transaction_create();
  [*(a1 + 40) onSyncActivity:a2];
  if (xpc_activity_get_state(a2) == 2 && !xpc_activity_set_state(a2, 4))
  {
    if (qword_1025D4530 != -1)
    {
      sub_1018DFCB8();
    }

    v5 = qword_1025D4538;
    if (os_log_type_enabled(qword_1025D4538, OS_LOG_TYPE_FAULT))
    {
      v6 = xpc_activity_get_state(a2);
      v7 = 134349056;
      state = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "[WatchService] Failed to mark activity as Continue. Current state is %{public}ld", &v7, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E02E0();
    }
  }
}

id sub_1005E950C(uint64_t a1)
{
  [*(a1 + 32) resetAnalytics];
  *(*(a1 + 32) + 144) = 0;
  *(*(a1 + 32) + 148) = 0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 continueSync:v3];
}

void *sub_1005E9DD4(void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[5];
    if (v3)
    {
      sub_100008080(v3);
    }

    v4 = v2[3];
    if (v4)
    {
      sub_100008080(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      sub_100008080(v5);
    }

    operator delete();
  }

  return result;
}

void sub_1005E9E50(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *(a2 + 8);
    if (v2)
    {
      sub_100008080(v2);
    }

    operator delete();
  }
}

void *sub_1005E9EA8(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_100DC1170(result);

    operator delete();
  }

  return result;
}

void *sub_1005E9F60(void *a1, unsigned __int8 *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102462FB0;
  sub_100DC116C(a1 + 3, *a2);
  return a1;
}

void sub_1005E9FE0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102462FB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005EA05C(uint64_t a1, double **a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = (*a2)[1];
  v5 = *(a1 + 136);
  if (v4 <= v5)
  {
    v4 = *(a1 + 136);
  }

  v6 = v3 + 3;
  if (v3 + 3 == v2)
  {
    v7 = 0;
  }

  else
  {
    LODWORD(v7) = 0;
    v8 = *v3;
    do
    {
      v9 = *v6;
      v10 = v6[1];
      v6 += 3;
      v7 = (v7 + ((v9 - v8) / v4));
      if (v10 <= v5)
      {
        v4 = *(a1 + 136);
      }

      else
      {
        v4 = v10;
      }

      v8 = v9;
    }

    while (v6 != v2);
  }

  if (v4 != 1.79769313e308)
  {
    if (qword_1025D4200 != -1)
    {
      sub_1018E0CC4();
    }

    v11 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#Warning No expiration rule was added so the number of records will be unbounded.", v13, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E0CD8();
    }
  }

  return v7;
}

uint64_t sub_1005EA160(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v10 = a4[1];
  v26 = *a4;
  v27 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = a5[1];
  v24 = *a5;
  v25 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a6[1];
  v22 = *a6;
  v23 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *buf = xmmword_102658258;
  *&buf[16] = unk_102658268;
  *&buf[32] = xmmword_102658278;
  sub_100C72EC8(a1, a2, 8, &v26, &v24, &v22, a8, a7, buf);
  if (v23)
  {
    sub_100008080(v23);
  }

  if (v25)
  {
    sub_100008080(v25);
  }

  if (v27)
  {
    sub_100008080(v27);
  }

  *a1 = off_102463020;
  v13 = *a3;
  *(a1 + 352) = *a3;
  v14 = a3[1];
  *(a1 + 360) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    v13 = *(a1 + 352);
  }

  *(a1 + 368) = 10000;
  *(a1 + 372) = 0;
  *(a1 + 376) = 0;
  if (((*(*v13 + 16))(v13, a1 + 368) & 1) == 0)
  {
    *(a1 + 368) = 10000;
  }

  sub_10001CAF4(buf);
  v15 = sub_10001CB4C(*buf, "StationaryLocationHarvest", (a1 + 373), 0xFFFFFFFFLL);
  if (*&buf[8])
  {
    sub_100008080(*&buf[8]);
  }

  if ((v15 & 1) == 0)
  {
    *(a1 + 373) = 0;
  }

  if (qword_1025D47D0 != -1)
  {
    sub_1018E0DBC();
  }

  v16 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
  {
    v17 = *(a1 + 368);
    v18 = *(a1 + 373);
    v19 = (*(*a1 + 168))(a1);
    v20 = (*(**(a1 + 56) + 64))(*(a1 + 56)) - *(a1 + 96);
    *buf = 68290307;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2050;
    *&buf[20] = 8;
    *&buf[28] = 1025;
    *&buf[30] = v17;
    *&buf[34] = 1025;
    *&buf[36] = v18;
    *&buf[40] = 2049;
    *&buf[42] = v19;
    v29 = 2049;
    v30 = v20;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_INFO, "{msg%{public}.0s:construction, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, maxHarvestPointCount:%{private}d, allowStationaryHarvest:%{private}hhd, curHarvestPointCount:%{private}lu, timeSinceLastUpload_s:%{private}.09f}", buf, 0x3Cu);
  }

  return a1;
}

void sub_1005EA494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  if (a14)
  {
    sub_100008080(a14);
  }

  if (a16)
  {
    sub_100008080(a16);
  }

  JUMPOUT(0x1005EA48CLL);
}

id sub_1005EA4C4(uint64_t a1)
{
  v1 = [*(a1 + 72) requestArchivesForHarvester:8];

  return [v1 count];
}

id sub_1005EA4F4(uint64_t a1)
{
  v2 = (*(**(a1 + 56) + 64))(*(a1 + 56));
  v3 = v2 - (*(*a1 + 192))(a1);
  v4 = *(a1 + 72);

  return [v4 pruneSecondaryDataOlderThan:8 forHarvester:v3];
}

uint64_t sub_1005EA598(uint64_t a1, uint64_t a2)
{
  sub_10004FD18();
  v4 = (a1 + 280);
  v5 = unk_102658268;
  *v4 = xmmword_102658258;
  v4[1] = v5;
  *(v4 + 25) = unk_102658271;
  if (sub_100185ADC(a2, "Pressure", v11, 0xFFFFFFFFLL))
  {
    sub_1010FCEEC(v4, v11);
  }

  if (qword_1025D47D0 != -1)
  {
    sub_1018E0DBC();
  }

  v6 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_INFO))
  {
    sub_1010FCB7C(__p);
    if (v10 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 68289539;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2050;
    v17 = 8;
    v18 = 2081;
    v19 = v7;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "{msg%{public}.0s:harvest-apply-rules, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, rules:%{private, location:escape_only}s}", buf, 0x26u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return sub_100005DA4();
}

id sub_1005EA74C(uint64_t a1)
{
  v2 = [*(a1 + 72) requestArchivesForHarvester:8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, 0);
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [[CLHUploadRequest alloc] initWithArchive:*(*(&v8 + 1) + 8 * v6)];
        -[CLHUploadRequest setEndpoint:](v7, "setEndpoint:", [objc_msgSend(*(a1 + 80) "endpointSelector")]);
        [*(a1 + 80) submitRequest:v7];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(v2);
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1005EA880(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = sub_1000183C0(a1);
  (*(*v2 + 24))(v2, v3, 1);
  v4 = *(a1 + 56);
  v5 = sub_1000183C0(a1);
  (*(*v4 + 24))(v4, v5, 3);
  return 1;
}

uint64_t sub_1005EA918(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = sub_1000183C0(a1);
  (*(*v2 + 32))(v2, v3, 1);
  v4 = *(a1 + 56);
  v5 = sub_1000183C0(a1);
  v6 = *(*v4 + 32);

  return v6(v4, v5, 3);
}

void sub_1005EA9B8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v5 = *a4;
  v6 = v5 < 0x39;
  v7 = 0x110000000000C20uLL >> v5;
  if (qword_1025D47D0 != -1)
  {
    sub_1018E0DE4();
  }

  v8 = v6 & v7;
  v9 = qword_1025D47D8;
  if (os_log_type_enabled(qword_1025D47D8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 372);
    v11[0] = 68289795;
    v11[1] = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2050;
    v15 = 8;
    v16 = 1025;
    v17 = v10;
    v18 = 1025;
    v19 = v8;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:received motion state notif, subHarvester:%{public, location:CLSubHarvesterIdentifier}lld, oldIsDriving:%{private}hhd, newIsDriving:%{private}hhd}", v11, 0x28u);
  }

  *(a1 + 372) = v8;
}

uint64_t sub_1005EAAD4(void *a1)
{
  *a1 = off_102463020;
  v2 = a1[45];
  if (v2)
  {
    sub_100008080(v2);
  }

  return sub_100401ED8(a1);
}

void sub_1005EAB30(void *a1)
{
  *a1 = off_102463020;
  v2 = a1[45];
  if (v2)
  {
    sub_100008080(v2);
  }

  sub_100401ED8(a1);

  operator delete();
}

void sub_1005EAECC(id a1)
{
  if (sub_10098EAD4(a1, v1))
  {
    byte_102658298 = 1;
  }
}

void *sub_1005EB444(uint64_t a1, void *a2)
{
  result = sub_1005EB484(a1, "CLGyroCalibrationDatabase", a2);
  *result = off_102463178;
  return result;
}

uint64_t sub_1005EB484(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_102463380;
  sub_10000EC00((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = [a3 silo];
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_1005EB514(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005EB534(uint64_t a1)
{
  *a1 = off_102463380;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_1005EB64C()
{
  if (qword_1025D42F0 != -1)
  {
    sub_1018E0FB4();
  }

  v0 = off_1025D42F8;
  if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_INFO, "Warning: Not implemented.", v2, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E0FC8();
  }

  return 0;
}

uint64_t sub_1005EB6E4()
{
  if (qword_1025D42F0 != -1)
  {
    sub_1018E0FB4();
  }

  v0 = off_1025D42F8;
  if (os_log_type_enabled(off_1025D42F8, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(dword_100000000, v0, OS_LOG_TYPE_INFO, "Warning: Not implemented.", v2, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E10B0();
  }

  return 0x80000000;
}

uint64_t sub_1005EB77C(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005EB80C;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_1026582B0 != -1)
  {
    dispatch_once(&qword_1026582B0, block);
  }

  return byte_1026582A8;
}

id sub_1005EB80C(uint64_t a1)
{
  result = [objc_msgSend(*(a1 + 32) "vendor")];
  byte_1026582A8 = result;
  return result;
}

void sub_1005EB8FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t sub_1005EB92C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  *a1 = off_102463460;
  *(a1 + 8) = [[CLNotifierClientAdapter alloc] initWithClient:a1];
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v13 = [objc_msgSend(a4 "vendor")];
  *(a1 + 16) = v13;
  v14 = v13;
  if (a2)
  {
    [*(a1 + 16) setDelegateEntityName:a2];
  }

  [*(a1 + 16) registerDelegate:*(a1 + 8) inSilo:{objc_msgSend(a4, "silo")}];
  return a1;
}

void sub_1005EBA14(uint64_t a1)
{
  sub_1005EBAAC(a1);

  operator delete();
}

uint64_t sub_1005EBAAC(uint64_t a1)
{
  *a1 = off_102463460;
  v2 = (a1 + 8);
  [*(a1 + 16) forget:*(a1 + 8)];

  [*v2 invalidate];
  *v2 = 0;
  *(a1 + 16) = 0;
  return a1;
}

double sub_1005EBB1C(double *a1, double *a2, double *a3, double a4, double a5, double a6)
{
  v11 = __sincos_stret(a4 * 0.0174532925);
  v12 = __sincos_stret(a5 * 0.0174532925);
  v13 = 6378137.0 / sqrt(v11.__sinval * -0.00669437999 * v11.__sinval + 1.0);
  v14 = v11.__cosval * (v13 + a6);
  *a1 = v12.__cosval * v14;
  *a2 = v12.__sinval * v14;
  result = v11.__sinval * (a6 + v13 * 0.99330562);
  *a3 = result;
  return result;
}

void sub_1005EBBDC(double *a1, long double *a2, double *a3, long double a4, long double a5, long double a6)
{
  v9 = sqrt(a5 * a5 + a4 * a4);
  *a2 = atan2(a5, a4) / 0.0174532925;
  v10 = v9 * 0.99330562;
  v11 = 0.0;
  v12 = 1.57079633;
  if (v9 * 0.99330562 != 0.0)
  {
    __y = a6;
    v13 = 0;
    v14 = 0.0;
    v12 = 0.0;
    do
    {
      v15 = v12;
      v12 = atan2(__y, v10);
      v16 = __sincos_stret(v12);
      v17 = 6378137.0 / sqrt(v16.__sinval * -0.00669437999 * v16.__sinval + 1.0);
      v11 = v9 / v16.__cosval - v17;
      if (vabdd_f64(v15, v12) >= 0.000001)
      {
        if (v13 > 8)
        {
          goto LABEL_13;
        }
      }

      else if (vabdd_f64(v14, v11) < 0.001 || v13 >= 9)
      {
        goto LABEL_13;
      }

      ++v13;
      v10 = v9 * (v17 / (v11 + v17) * -0.00669437999 + 1.0);
      v14 = v9 / v16.__cosval - v17;
    }

    while (v10 != 0.0);
    v12 = 1.57079633;
  }

LABEL_13:
  *a1 = v12 / 0.0174532925;
  *a3 = v11;
}

double sub_1005EBD4C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a1 = off_1024634A0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 128) = 26;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 170) = 0u;
  return result;
}

void *sub_1005EBDB0(void *a1)
{
  *a1 = off_1024634A0;
  v2 = a1[19];
  if (v2)
  {
    sub_100008080(v2);
  }

  v6 = (a1 + 9);
  sub_1005ECEA4(&v6);
  v6 = (a1 + 6);
  sub_1005ECEA4(&v6);
  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;
    operator delete(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    sub_100008080(v4);
  }

  return a1;
}

void sub_1005EBE44(void *a1)
{
  sub_1005EBDB0(a1);

  operator delete();
}

uint64_t sub_1005EBE98(uint64_t a1)
{
  if ((*(a1 + 184) & 1) == 0)
  {
    if (*(a1 + 48) != *(a1 + 56))
    {
      sub_1005ED6A4();
    }

    *(a1 + 184) = 1;
  }

  return 1;
}

void sub_1005EC264(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a16)
  {
    sub_100008080(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005EC2A4(uint64_t a1)
{
  v1 = *(a1 + 184);
  if (v1 == 1)
  {
    if ((*(a1 + 185) & 1) == 0)
    {
      if (*(a1 + 72) != *(a1 + 80))
      {
        v6[0] = 0;
        v6[1] = 0;
        *buf = v6;
        v7 = xmmword_101C661F0;
        sub_1005ED858(&v4, &v7, 2);
        sub_10099658C();
      }

      *(a1 + 185) = 1;
      return v1;
    }
  }

  else
  {
    if (qword_1025D4520 != -1)
    {
      sub_1018E1204();
    }

    v2 = qword_1025D4528;
    if (os_log_type_enabled(qword_1025D4528, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "CLCyclingFTPCache, attempting to query cache records before preparing the query", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E1218();
    }
  }

  return v1;
}

void sub_1005EC660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24)
{
  if (a18)
  {
    sub_100008080(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005EC6B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 144);
  if (v3)
  {
    v3[1] = *v3;
  }

  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  if (v5 != v4)
  {
    v6 = *(a1 + 24);
    while (*v6 != a2)
    {
      v6 += 8;
      v5 += 8;
      if (v6 == v4)
      {
        v5 = *(a1 + 32);
        break;
      }
    }
  }

  if (v4 != v5)
  {
    v7 = (v4 - (v5 + 8));
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    *(a1 + 32) = &v7[v5];
  }

  *(a1 + 184) = 0;
  sub_1005EC7D4((a1 + 48));
  sub_1005EC7D4((a1 + 72));
  if (qword_1025D4520 != -1)
  {
    sub_1018E1204();
  }

  v8 = qword_1025D4528;
  if (os_log_type_enabled(qword_1025D4528, OS_LOG_TYPE_DEBUG))
  {
    v10[0] = 0;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "CLCyclingFTPCache, release()", v10, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E130C();
  }

  return 1;
}

void sub_1005EC7D4(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      v4 = *(v3 - 24);
      if (v4)
      {
        *(v3 - 16) = v4;
        operator delete(v4);
      }

      v5 = *(v3 - 32);
      if (v5)
      {
        sub_100008080(v5);
      }

      v6 = (v3 - 64);
      sub_1004CA974(&v6);
      v3 -= 80;
    }

    while (v3 != v2);
  }

  a1[1] = v2;
}

uint64_t sub_1005EC850(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 96);
  if (a1 + 96 != a2 || *(a1 + 120) != *(a2 + 24) || *(a1 + 112) != *(a2 + 16) || *(a1 + 128) != *(a2 + 32))
  {
    sub_10099668C(*(a1 + 8), a2);
    uuid_copy(v4, a2);
    *(a1 + 112) = *(a2 + 16);
    *(a1 + 128) = *(a2 + 32);
    v5 = *(a1 + 144);
    if (v5)
    {
      v5[1] = *v5;
    }

    v7 = *(a2 + 48);
    v6 = *(a2 + 56);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = *(a1 + 152);
    *(a1 + 144) = v7;
    *(a1 + 152) = v6;
    if (v8)
    {
      sub_100008080(v8);
    }
  }

  return 1;
}

void sub_1005EC91C(double a4, double a5)
{
  v5 = a4;
  v6 = a5;
  v7 = 0u;
  v8 = 0u;
  *__p = 0u;
  v10 = 0u;
  sub_1005ED6A4();
}

void sub_1005ECD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  sub_1005ECF28(&a9);
  if (a20)
  {
    sub_100008080(a20);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1005ECD58(uint64_t a1)
{
  sub_1005EBE98(a1);
  sub_1005EC2A4(a1);
  v2 = *(a1 + 72);
  v15 = *(a1 + 80);
  v16 = a1;
  if (v2 == v15)
  {
    LOBYTE(v3) = 1;
  }

  else
  {
    v3 = 1;
    do
    {
      v4 = v2[5];
      v5 = *v4;
      v6 = v4[1];
      while (v5 != v6)
      {
        v7 = *(v5 + 48);
        if (v7 && *v7 == v7[1])
        {
          sub_1005EC850(v16, v5);
        }

        v8 = v2[2];
        v9 = v2[3];
        while (v8 != v9)
        {
          v10 = *v8;
          v11 = v8[1];
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v13 = *(v10 + 56);
          v12 = *(v10 + 64);
          while (v13 != v12)
          {
            v3 &= (*(**v13 + 64))(*v13, v5);
            ++v13;
          }

          if (v11)
          {
            sub_100008080(v11);
          }

          v8 += 2;
        }

        v5 += 88;
      }

      v2 += 10;
    }

    while (v2 != v15);
  }

  return v3 & 1;
}

void sub_1005ECE8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100008080(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005ECEA4(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1005EC7D4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1005ECF28(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 64) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    sub_100008080(v3);
  }

  v5 = (a1 + 16);
  sub_1004CA974(&v5);
  return a1;
}

uint64_t *sub_1005ECF80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  sub_1005ED1F0((v4 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 4);
  v5 = *(a2 + 48);
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  result = sub_1005ED338((v4 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  *(a1 + 8) = v4 + 80;
  return result;
}

void sub_1005ED020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *(v4 + 48);
  if (v6)
  {
    sub_100008080(v6);
  }

  sub_1004CA974(va);
  *(v3 + 8) = v4;
  _Unwind_Resume(a1);
}

uint64_t sub_1005ED050(unint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_10028C64C();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_1005ED3F0(a1, v6);
  }

  v7 = 80 * v2;
  v16 = 0;
  v17 = v7;
  v18 = 80 * v2;
  *v7 = *a2;
  v8 = 80 * v2;
  *(v8 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  sub_1005ED1F0((v8 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 4);
  v9 = *(a2 + 48);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 48) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  sub_1005ED338((v7 + 56), *(a2 + 56), *(a2 + 64), (*(a2 + 64) - *(a2 + 56)) >> 3);
  *&v18 = v18 + 80;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  sub_1005ED448(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1005ED61C(&v16);
  return v15;
}

void sub_1005ED1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v9 = *(v6 + 48);
  if (v9)
  {
    sub_100008080(v9);
  }

  *(v7 - 40) = v5;
  sub_1004CA974((v7 - 40));
  sub_1005ED61C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1005ED1F0(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1004CA834(result, a4);
  }

  return result;
}

void sub_1005ED258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_1004CA974(&a9);
  _Unwind_Resume(a1);
}

void *sub_1005ED278(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
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

  v8 = 1;
  sub_1005ED300(v7);
  return v4;
}

uint64_t sub_1005ED300(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1004CA930(a1);
  }

  return a1;
}

uint64_t *sub_1005ED338(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1005ED3B4(result, a4);
  }

  return result;
}

void sub_1005ED398(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005ED3B4(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_10045E858(a1, a2);
  }

  sub_10028C64C();
}

void sub_1005ED3F0(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_1005ED448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 16) = 0;
      *(a4 + 16) = *(v6 + 16);
      *(a4 + 32) = *(v6 + 32);
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(a4 + 40) = *(v6 + 40);
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v6 + 56);
      *(a4 + 72) = *(v6 + 72);
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(v6 + 72) = 0;
      v6 += 80;
      a4 += 80;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 56);
      if (v7)
      {
        *(v5 + 64) = v7;
        operator delete(v7);
      }

      v8 = *(v5 + 48);
      if (v8)
      {
        sub_100008080(v8);
      }

      v14 = (v5 + 16);
      sub_1004CA974(&v14);
      v5 += 80;
    }
  }

  return sub_1005ED554(v10);
}

uint64_t sub_1005ED554(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1005ED5A0(*a1, **(a1 + 16), **(a1 + 16), **(a1 + 8), **(a1 + 8));
  }

  return a1;
}

void sub_1005ED5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 != a5)
  {
    v11[5] = v5;
    v11[6] = v6;
    v8 = a3;
    do
    {
      v9 = *(v8 - 24);
      if (v9)
      {
        *(v8 - 16) = v9;
        operator delete(v9);
      }

      v10 = *(v8 - 32);
      if (v10)
      {
        sub_100008080(v10);
      }

      v11[0] = (v8 - 64);
      sub_1004CA974(v11);
      v8 -= 80;
    }

    while (v8 != a5);
  }
}

uint64_t sub_1005ED61C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 32);
    if (v5)
    {
      sub_100008080(v5);
    }

    v7 = (i - 64);
    sub_1004CA974(&v7);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_1005ED710(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a1 + 8) = 0u;
  *a1 = off_102463500;
  *(a1 + 24) = *a2;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 40) = *(a2 + 16);
  *(a1 + 56) = *(a2 + 32);
  *(a2 + 32) = 0;
  *(a2 + 16) = 0u;
  *(a1 + 64) = *(a2 + 40);
  *(a2 + 40) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 80) = *(a2 + 56);
  *(a1 + 96) = *(a2 + 72);
  *(a2 + 72) = 0;
  *(a2 + 56) = 0u;
  return result;
}

void sub_1005ED7AC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102463500;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1005ED800(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 88) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_100008080(v3);
  }

  v4 = (a1 + 40);
  sub_1004CA974(&v4);
}

uint64_t **sub_1005ED858(uint64_t **a1, uint64_t *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = (a1 + 1);
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      sub_1005ED8D8(a1, v4, a2, a2);
      ++a2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

void *sub_1005ED8D8(uint64_t **a1, void *a2, uint64_t *a3, void *a4)
{
  v4 = *sub_1005ED970(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *sub_1005ED970(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
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
        v9 = v9[1];
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
    if (v10[4] < *a5)
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
          v18 = v16[4];
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
      v17 = a1 + 1;
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

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
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
      v21 = a1 + 1;
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

void *sub_1005EDB8C(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_102463550;
  sub_100D977E0((a1 + 3), a2, *a3);
  return a1;
}

void sub_1005EDC0C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102463550;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

id sub_1005EDE2C(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_1018E1400();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#SettingsMirror Received kCLCommonDaemonPreferencesChangedNotification", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E1414();
  }

  return [*(a1 + 32) refresh];
}

id sub_1005EDECC(uint64_t a1)
{
  if (qword_1025D47A0 != -1)
  {
    sub_1018E1400();
  }

  v2 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "#SettingsMirror Received kCLCommonManagedConfigurationProfileListChangedNotification", v4, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E1504();
  }

  return [*(a1 + 32) refresh];
}

void sub_1005EE07C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008080(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005EE134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1005EE17C(uint64_t a1, uint64_t a2)
{
  v3 = 11;
  result = sub_1007C3C8C(a1, &v3, qword_1026582B8, a2);
  *result = off_1024635C0;
  return result;
}

void sub_1005EE1D4(uint64_t a1)
{
  sub_100ED90F4(a1);

  operator delete();
}

uint64_t sub_1005EE238(uint64_t a1, FILE *a2)
{
  if (!a2)
  {
    sub_1018E1750(qword_1025D48A0 == -1);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018E15F4();
  }

  v4 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "TransitMac, Traversing transit mac tile", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E1608();
  }

  memset(&v51, 0, sizeof(v51));
  do
  {
    v5 = fread(__ptr, 1uLL, 0x400uLL, a2);
    std::string::append(&v51, __ptr, v5);
  }

  while (v5 && !feof(a2) && !ferror(a2));
  if (ferror(a2))
  {
    v6 = 0;
    goto LABEL_57;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018E16E4();
  }

  v7 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v51.__r_.__value_.__l.__size_;
    }

    *buf = 134217984;
    *v64 = size;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "TransitMac, Transit mac tile size = %lu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E170C(buf);
    v38 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v38 = v51.__r_.__value_.__l.__size_;
    }

    *v52 = 134217984;
    *&v52[4] = v38;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "TransitMac, Transit mac tile size = %lu", v52);
    v40 = v39;
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLTransitMacTile::traverseTileFile(FILE *, const CLTileFile::TraverseDetails &)", "%s\n", v39);
    if (v40 != buf)
    {
      free(v40);
    }
  }

  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v51;
  }

  else
  {
    v9 = v51.__r_.__value_.__r.__words[0];
  }

  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v51.__r_.__value_.__l.__size_;
  }

  v11 = [NSData dataWithBytes:v9 length:v10];
  v12 = objc_autoreleasePoolPush();
  v13 = [[PBDataReader alloc] initWithData:v11];
  v14 = objc_opt_new();
  v15 = [v14 readFrom:v13];
  if (!v14)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018E16E4();
    }

    v19 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_FAULT, "TransitMac, failed to allocate transit mac tile", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_55;
    }

    sub_1018E170C(buf);
    *v52 = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "TransitMac, failed to allocate transit mac tile", v52, 2);
    v21 = v20;
    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLTransitMacTile::traverseTileFile(FILE *, const CLTileFile::TraverseDetails &)", "%s\n", v20);
    goto LABEL_73;
  }

  if ((v15 & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_1018E16E4();
    }

    v22 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v23 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
      if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v23 = v51.__r_.__value_.__l.__size_;
      }

      *buf = 134349056;
      *v64 = v23;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_FAULT, "TransitMac, failed to decode transit mac tile protobuf, encrypted=%{public}lu", buf, 0xCu);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_55;
    }

    sub_1018E170C(buf);
    v24 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = v51.__r_.__value_.__l.__size_;
    }

    *v52 = 134349056;
    *&v52[4] = v24;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "TransitMac, failed to decode transit mac tile protobuf, encrypted=%{public}lu", v52, 12);
    v21 = v25;
    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLTransitMacTile::traverseTileFile(FILE *, const CLTileFile::TraverseDetails &)", "%s\n", v25);
    goto LABEL_73;
  }

  if ([v14 hasVersion] && objc_msgSend(v14, "hasGenerationTimeSecs") && objc_msgSend(v14, "macsCount"))
  {
    [v14 generationTimeSecs];
    v17 = v16;
    if ([v14 hasExpirationAgeSecs])
    {
      v18 = [v14 expirationAgeSecs];
    }

    else
    {
      v18 = 31536000;
    }

    v28 = [v14 version];
    v29 = [v14 tileX];
    v30 = [v14 tileY];
    v31 = v17 - kCFAbsoluteTimeIntervalSince1970;
    *(a1 + 184) = v28;
    *(a1 + 52) = v29;
    *(a1 + 56) = v30;
    *(a1 + 64) = -1;
    *(a1 + 176) = v17 - kCFAbsoluteTimeIntervalSince1970;
    *(a1 + 200) = v18;
    if (qword_1025D48A0 != -1)
    {
      sub_1018E16E4();
    }

    v32 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v33 = [v14 version];
      v34 = [v14 tileX];
      v35 = [v14 tileY];
      Current = CFAbsoluteTimeGetCurrent();
      v37 = [v14 macsCount];
      *buf = 67110656;
      *v64 = v33;
      *&v64[4] = 1024;
      *&v64[6] = v34;
      v65 = 1024;
      v66 = v35;
      v67 = 2048;
      v68 = v31;
      v69 = 2048;
      v70 = Current - v31;
      v71 = 1024;
      v72 = v18;
      v73 = 2048;
      v74 = v37;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "TransitMac, ver,%d, x, %d, y, %d, generated, %.01lf, age, %.01f, ageThresh, %d, numOfMacs, %lu", buf, 0x38u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E170C(buf);
      v42 = qword_1025D48A8;
      v43 = [v14 version];
      v44 = [v14 tileX];
      v45 = [v14 tileY];
      v46 = CFAbsoluteTimeGetCurrent();
      v47 = [v14 macsCount];
      *v52 = 67110656;
      *&v52[4] = v43;
      *&v52[8] = 1024;
      *&v52[10] = v44;
      v53 = 1024;
      v54 = v45;
      v55 = 2048;
      v56 = v31;
      v57 = 2048;
      v58 = v46 - v31;
      v59 = 1024;
      v60 = v18;
      v61 = 2048;
      v62 = v47;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v42, 2, "TransitMac, ver,%d, x, %d, y, %d, generated, %.01lf, age, %.01f, ageThresh, %d, numOfMacs, %lu", v52, 56, v50, *&v51.__r_.__value_.__l.__data_, *&v51.__r_.__value_.__l.__size_, LODWORD(v51.__r_.__value_.__r.__words[2]), *v52);
      v49 = v48;
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLTransitMacTile::traverseTileFile(FILE *, const CLTileFile::TraverseDetails &)", "%s\n", v48);
      if (v49 != buf)
      {
        free(v49);
      }
    }

    v6 = 1;
    goto LABEL_56;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018E16E4();
  }

  v26 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_FAULT, "TransitMac, failed to get fields in transit mac tile", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_1018E170C(buf);
    *v52 = 0;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 17, "TransitMac, failed to get fields in transit mac tile", v52, 2);
    v21 = v41;
    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLTransitMacTile::traverseTileFile(FILE *, const CLTileFile::TraverseDetails &)", "%s\n", v41);
LABEL_73:
    if (v21 != buf)
    {
      free(v21);
    }
  }

LABEL_55:
  v6 = 0;
LABEL_56:
  objc_autoreleasePoolPop(v12);
LABEL_57:
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_1005EEAE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005EEB3C(uint64_t a1, void ***a2, void *a3)
{
  if (!a3)
  {
    sub_1018E19B0(qword_1025D48A0 == -1);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018E15F4();
  }

  v6 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "TransitMac, Searching transit mac tile", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E18D4();
  }

  a3[1] = *a3;
  sub_100B4FFA8((a1 + 48), a1 + 8, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v8 = fopen(p_p, "rb");
  if (v8)
  {
    memset(&v56, 0, sizeof(v56));
    do
    {
      v9 = fread(&__ptr, 1uLL, 0x400uLL, v8);
      std::string::append(&v56, &__ptr, v9);
    }

    while (v9 && !feof(v8) && !ferror(v8));
    if (ferror(v8))
    {
      if (qword_1025D48A0 != -1)
      {
        sub_1018E16E4();
      }

      v10 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v11 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v11 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        v63 = v11;
        _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "TransitMac, failed to read tile file, %s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E170C(buf);
        v44 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v44 = __p.__r_.__value_.__r.__words[0];
        }

        v58 = 136315138;
        v59 = v44;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "TransitMac, failed to read tile file, %s", &v58);
        v46 = v45;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTransitMacTile::extractTransitMacAddresses(std::vector<uint64_t> *, std::vector<CLTilesManager_Type::TransitMac> *)", "%s\n", v45);
        if (v46 != buf)
        {
          free(v46);
        }
      }

      fclose(v8);
    }

    else
    {
      fclose(v8);
      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v15 = &v56;
      }

      else
      {
        v15 = v56.__r_.__value_.__r.__words[0];
      }

      if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v56.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v56.__r_.__value_.__l.__size_;
      }

      v17 = [[PBDataReader alloc] initWithData:{+[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", v15, size)}];
      v18 = objc_opt_new();
      if ([v18 readFrom:v17])
      {
        if ([v18 macsCount])
        {
          v19 = [v18 macs];
          v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19);
          if (v20)
          {
            v21 = MEMORY[0];
            do
            {
              for (i = 0; i != v20; i = i + 1)
              {
                if (MEMORY[0] != v21)
                {
                  objc_enumerationMutation(v19);
                }

                v23 = *(8 * i);
                v24 = *a2;
                v25 = a2[1];
                v26 = [v23 mac];
                if (v24 != v25)
                {
                  while (*v24 != v26)
                  {
                    if (++v24 == v25)
                    {
                      v24 = v25;
                      break;
                    }
                  }
                }

                if (v24 != a2[1])
                {
                  v27 = [v23 mac];
                  v29 = a3[1];
                  v28 = a3[2];
                  if (v29 >= v28)
                  {
                    v31 = *a3;
                    v32 = v29 - *a3;
                    v33 = v32 >> 3;
                    v34 = (v32 >> 3) + 1;
                    if (v34 >> 61)
                    {
                      sub_10028C64C();
                    }

                    v35 = v28 - v31;
                    if (v35 >> 2 > v34)
                    {
                      v34 = v35 >> 2;
                    }

                    v36 = v35 >= 0x7FFFFFFFFFFFFFF8;
                    v37 = 0x1FFFFFFFFFFFFFFFLL;
                    if (!v36)
                    {
                      v37 = v34;
                    }

                    if (v37)
                    {
                      sub_1000B9708(a3, v37);
                    }

                    *(8 * v33) = v27;
                    v30 = 8 * v33 + 8;
                    memcpy(0, v31, v32);
                    v38 = *a3;
                    *a3 = 0;
                    a3[1] = v30;
                    a3[2] = 0;
                    if (v38)
                    {
                      operator delete(v38);
                    }
                  }

                  else
                  {
                    *v29 = v27;
                    v30 = (v29 + 1);
                  }

                  a3[1] = v30;
                }
              }

              v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19);
            }

            while (v20);
          }
        }

        else
        {
          if (qword_1025D48A0 != -1)
          {
            sub_1018E16E4();
          }

          v42 = qword_1025D48A8;
          if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
          {
            v43 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v43 = __p.__r_.__value_.__r.__words[0];
            }

            *buf = 136315138;
            v63 = v43;
            _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "TransitMac, empty tile??, %s", buf, 0xCu);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1018E170C(buf);
            v53 = &__p;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v53 = __p.__r_.__value_.__r.__words[0];
            }

            v58 = 136315138;
            v59 = v53;
            _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "TransitMac, empty tile??, %s", &v58);
            v55 = v54;
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTransitMacTile::extractTransitMacAddresses(std::vector<uint64_t> *, std::vector<CLTilesManager_Type::TransitMac> *)", "%s\n", v54);
            if (v55 != buf)
            {
              free(v55);
            }
          }
        }

        v14 = 1;
        goto LABEL_74;
      }

      if (qword_1025D48A0 != -1)
      {
        sub_1018E16E4();
      }

      v39 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        v40 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v40 = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        v63 = v40;
        _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "TransitMac, failed to parse tile file, %s", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018E170C(buf);
        v50 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v50 = __p.__r_.__value_.__r.__words[0];
        }

        v58 = 136315138;
        v59 = v50;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "TransitMac, failed to parse tile file, %s", &v58);
        v52 = v51;
        sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTransitMacTile::extractTransitMacAddresses(std::vector<uint64_t> *, std::vector<CLTilesManager_Type::TransitMac> *)", "%s\n", v51);
        if (v52 != buf)
        {
          free(v52);
        }
      }
    }

    v14 = 0;
LABEL_74:
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    goto LABEL_76;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_1018E16E4();
  }

  v12 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v13 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v13 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v63 = v13;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "TransitMac, failed to open tile file, %s", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E170C(buf);
    v47 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v47 = __p.__r_.__value_.__r.__words[0];
    }

    __ptr = 136315138;
    v61 = v47;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D48A8, 2, "TransitMac, failed to open tile file, %s", &__ptr);
    v49 = v48;
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLTransitMacTile::extractTransitMacAddresses(std::vector<uint64_t> *, std::vector<CLTilesManager_Type::TransitMac> *)", "%s\n", v48);
    if (v49 != buf)
    {
      free(v49);
    }
  }

  v14 = 0;
LABEL_76:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_1005EF3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1005EF450@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v38 = *(a1 + 40);
  (*(*v38 + 16))(v38);
  v40 = 256;
  sub_10003848C(v29);
  v4 = sub_100038730(&v30, "CLTileFile(", 11);
  v5 = sub_100038730(v4, "tileId=", 7);
  sub_100B4EFD4((a1 + 48), __p);
  if ((v28 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v28 & 0x80u) == 0)
  {
    v7 = v28;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_100038730(v5, v6, v7);
  v9 = sub_100038730(v8, ", localFilename=", 16);
  v10 = *(a1 + 31);
  if (v10 >= 0)
  {
    v11 = a1 + 8;
  }

  else
  {
    v11 = *(a1 + 8);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 31);
  }

  else
  {
    v12 = *(a1 + 16);
  }

  v13 = sub_100038730(v9, v11, v12);
  v14 = sub_100038730(v13, ", tempFilename=", 15);
  v17 = *(a1 + 208);
  v16 = a1 + 208;
  v15 = v17;
  v18 = *(v16 + 23);
  if (v18 >= 0)
  {
    v19 = v16;
  }

  else
  {
    v19 = v15;
  }

  if (v18 >= 0)
  {
    v20 = *(v16 + 23);
  }

  else
  {
    v20 = *(v16 + 8);
  }

  v21 = sub_100038730(v14, v19, v20);
  sub_100038730(v21, ")", 1);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  if ((v37 & 0x10) != 0)
  {
    v23 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v23 = v33;
    }

    locale = v32[4].__locale_;
  }

  else
  {
    if ((v37 & 8) == 0)
    {
      v22 = 0;
      a2[23] = 0;
      goto LABEL_34;
    }

    locale = v32[1].__locale_;
    v23 = v32[3].__locale_;
  }

  v22 = v23 - locale;
  if ((v23 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100061080();
  }

  if (v22 >= 0x17)
  {
    operator new();
  }

  a2[23] = v22;
  if (v22)
  {
    memmove(a2, locale, v22);
  }

LABEL_34:
  a2[v22] = 0;
  v30 = v25;
  if (v35 < 0)
  {
    operator delete(v34);
  }

  std::locale::~locale(v32);
  std::iostream::~basic_iostream();
  result = std::ios::~ios();
  if (HIBYTE(v40) == 1)
  {
    if (v40)
    {
      return pthread_mutex_unlock(v39);
    }

    else
    {
      return (*(*v38 + 24))(v38);
    }
  }

  return result;
}

void sub_1005EF7DC(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, char a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  std::ios::~ios();
  sub_1017EC98C(v24 - 72);
  _Unwind_Resume(a1);
}

uint64_t sub_1005EF830(uint64_t a1)
{
  if (qword_1025D48A0 != -1)
  {
    sub_1018E15F4();
  }

  v1 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_DEBUG, "This instance has no : TEST_testBinarySearch", v3, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E1B34();
  }

  return 0;
}

BOOL sub_1005EF8C8()
{
  v1 = qword_1025D48A8;

  return os_log_type_enabled(v1, OS_LOG_TYPE_FAULT);
}

void sub_1005EFD0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100008080(a18);
  }

  _Unwind_Resume(exception_object);
}

id sub_1005EFF68(uint64_t a1, unsigned int *a2, _OWORD *a3, void *a4)
{
  v4 = *a2;
  v5 = a3[7];
  v11[6] = a3[6];
  v11[7] = v5;
  v6 = a3[9];
  v11[8] = a3[8];
  v11[9] = v6;
  v7 = a3[3];
  v11[2] = a3[2];
  v11[3] = v7;
  v8 = a3[5];
  v11[4] = a3[4];
  v11[5] = v8;
  v9 = a3[1];
  v11[0] = *a3;
  v11[1] = v9;
  return [a4 onMotionStateNotification:v4 data:v11];
}

id sub_1005EFFEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005F0060;
  v4[3] = &unk_102447418;
  v4[4] = v1;
  return [v2 async:v4];
}

void sub_1005F0664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_1005F3518(&a37);
  _Unwind_Resume(a1);
}

id sub_1005F06B8(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_1005F36F0;
  v4[3] = &unk_102463788;
  v4[4] = *a1;
  v5 = *(a1 + 8);
  if (*(a1 + 39) < 0)
  {
    sub_100007244(v6, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *v6 = *(a1 + 16);
    v7 = *(a1 + 32);
  }

  v9 = *(a1 + 56);
  v10 = *(a1 + 72);
  v11[0] = *(a1 + 88);
  *(v11 + 12) = *(a1 + 100);
  v8 = *(a1 + 40);
  if (*(a1 + 143) < 0)
  {
    sub_100007244(__p, *(a1 + 120), *(a1 + 128));
  }

  else
  {
    *__p = *(a1 + 120);
    v13 = *(a1 + 136);
  }

  v2 = [v4 copy];
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }

  return v2;
}

void sub_1005F07E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1005F168C(uint64_t a1, uint64_t a2)
{
  *(*(a1 + 32) + 36) = a2 == 2;
  result = *(a1 + 32);
  if (result[32] == 1)
  {
    return [result updateStatusBarLabel];
  }

  return result;
}

id *sub_1005F1D5C(id *result, int a2)
{
  if (!a2)
  {
    return result;
  }

  v2 = result;
  v3 = *(result + 136);
  if (v3)
  {
    result = [result[4] submitFalseDetectionMetricsWithType:1];
    v3 = *(v2 + 136);
    if ((v3 & 2) == 0)
    {
LABEL_4:
      if ((v3 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_10;
    }
  }

  else if ((result[17] & 2) == 0)
  {
    goto LABEL_4;
  }

  result = [v2[4] submitFalseDetectionMetricsWithType:2];
  v3 = *(v2 + 136);
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = [v2[4] submitFalseDetectionMetricsWithType:8];
    if ((v2[17] & 0x10) == 0)
    {
      return result;
    }

    goto LABEL_12;
  }

LABEL_10:
  result = [v2[4] submitFalseDetectionMetricsWithType:4];
  v3 = *(v2 + 136);
  if ((v3 & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v3 & 0x10) == 0)
  {
    return result;
  }

LABEL_12:
  v4 = v2[4];

  return [v4 submitFalseDetectionMetricsWithType:16];
}

id sub_1005F24C8(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1005F2540;
  v5[3] = &unk_102463700;
  v6 = a2;
  v5[4] = v2;
  return [v3 async:v5];
}

void sub_1005F2540(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4250 != -1)
  {
    sub_1018E1EA8();
  }

  v3 = qword_1025D4258;
  if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 40);
    v5[0] = 67109120;
    v5[1] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "status bar assertion acquired, %d", v5, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E38E8(a1);
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    [*(a1 + 32) clearStatusBarColorAndText];
  }
}

id sub_1005F2628(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1005F269C;
  v4[3] = &unk_102447418;
  v4[4] = v1;
  return [v2 async:v4];
}

id sub_1005F269C(uint64_t a1, uint64_t a2)
{
  if (qword_1025D4250 != -1)
  {
    sub_1018E1EA8();
  }

  v3 = qword_1025D4258;
  if (os_log_type_enabled(qword_1025D4258, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "status bar assertion invalidated", v5, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E39DC();
  }

  return [*(a1 + 32) clearStatusBarColorAndText];
}

id sub_1005F29CC(uint64_t a1, void *a2)
{
  v6[0] = [NSString stringWithFormat:@"%f", *(*(a1 + 32) + 152), @"accelLatency"];
  v5[1] = @"gpsLatency";
  v6[1] = [NSString stringWithFormat:@"%f", *(*(a1 + 32) + 160)];
  v5[2] = @"basebandLatency";
  v6[2] = [NSString stringWithFormat:@"%f", *(*(a1 + 32) + 168)];
  v5[3] = @"wifiLatency";
  v6[3] = [NSString stringWithFormat:@"%f", *(*(a1 + 32) + 176)];
  v5[4] = @"btLatency";
  v6[4] = [NSString stringWithFormat:@"%f", *(*(a1 + 32) + 184)];
  v5[5] = @"exitFromNoHints";
  v6[5] = [NSString stringWithFormat:@"%f", *(*(a1 + 32) + 200)];
  v5[6] = @"exitFromLastBTHint";
  v6[6] = [NSString stringWithFormat:@"%f", *(*(a1 + 32) + 208)];
  v5[7] = @"BTHintFromLastMotionHintDuration";
  v6[7] = [NSString stringWithFormat:@"%f", *(*(a1 + 32) + 216)];
  v5[8] = @"motionExitsWithBTCount";
  v6[8] = [NSString stringWithFormat:@"%d", *(*(a1 + 32) + 136)];
  v5[9] = @"sequentialVehicularIndex";
  v6[9] = [NSString stringWithFormat:@"%d", *(*(a1 + 32) + 144)];
  v5[10] = @"vehicularDuration";
  v6[10] = [NSString stringWithFormat:@"%f", *(*(a1 + 32) + 192)];
  return [a2 writeData:{+[NSJSONSerialization dataWithJSONObject:options:error:](NSJSONSerialization, "dataWithJSONObject:options:error:", +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", v6, v5, 11), 0, 0)}];
}

uint64_t sub_1005F3518(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_1005F355C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1026582C0 != -1)
  {
    sub_1018E4214();
  }

  v10 = dlsym(qword_1026582C8, "OSAWriteLogForSubmission");
  off_1025D75B8 = v10;

  return (v10)(a1, a2, a3, a4, a5);
}

uint64_t sub_1005F36D0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

char *sub_1005F36F0@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  *a2 = *(result + 4);
  *(a2 + 8) = result[40];
  if (result[71] < 0)
  {
    result = sub_100007244((a2 + 16), *(result + 6), *(result + 7));
  }

  else
  {
    *(a2 + 16) = *(result + 3);
    *(a2 + 32) = *(result + 8);
  }

  *(a2 + 56) = *(v2 + 88);
  *(a2 + 72) = *(v2 + 104);
  *(a2 + 88) = *(v2 + 120);
  *(a2 + 100) = *(v2 + 132);
  *(a2 + 40) = *(v2 + 72);
  if (v2[175] < 0)
  {
    return sub_100007244((a2 + 120), *(v2 + 19), *(v2 + 20));
  }

  *(a2 + 120) = *(v2 + 152);
  *(a2 + 136) = *(v2 + 21);
  return result;
}

void sub_1005F379C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_1005F37B8(_BYTE *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 32);
  result[40] = *(a2 + 40);
  *(result + 4) = v4;
  if (*(a2 + 71) < 0)
  {
    result = sub_100007244(result + 48, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    *(result + 8) = *(a2 + 64);
    *(result + 3) = v5;
  }

  *(v3 + 72) = *(a2 + 72);
  v6 = *(a2 + 88);
  v7 = *(a2 + 104);
  v8 = *(a2 + 120);
  *(v3 + 132) = *(a2 + 132);
  *(v3 + 120) = v8;
  *(v3 + 104) = v7;
  *(v3 + 88) = v6;
  if (*(a2 + 175) < 0)
  {
    return sub_100007244(v3 + 152, *(a2 + 152), *(a2 + 160));
  }

  v9 = *(a2 + 152);
  *(v3 + 21) = *(a2 + 168);
  *(v3 + 152) = v9;
  return result;
}

void sub_1005F3864(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F3880(uint64_t a1)
{
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  if (*(a1 + 71) < 0)
  {
    v2 = *(a1 + 48);

    operator delete(v2);
  }
}

void sub_1005F38D8()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

void sub_1005F3AB0(CLCompanionNotifierAdapter *self, SEL a2)
{
  [(CLNotifierServiceAdapter *)self setAdaptedNotifier:sub_1005F3AF4([(CLCompanionNotifierAdapter *)self universe])];
  if (![(CLNotifierServiceAdapter *)self notifier])
  {
    sub_1018E423C();
  }
}

uint64_t sub_1005F3AF4(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1005F3D14;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_102658360 != -1)
  {
    dispatch_once(&qword_102658360, block);
  }

  return qword_102637060;
}

void sub_1005F3B84(CLCompanionNotifierAdapter *self, SEL a2)
{
  v2 = *(*[(CLNotifierServiceAdapter *)self notifier]+ 16);

  v2();
}

void sub_1005F3D14(uint64_t a1, uint64_t a2)
{
  sub_10001A3E8(a1, a2);
  if (sub_10001CF3C())
  {
    operator new();
  }

  operator new();
}

void sub_1005F3DC0(uint64_t a1, void *a2)
{
  v3 = sub_1005F41AC(a1, "CLCompanionNotifier", a2);
  *v3 = off_1024637E8;
  *(v3 + 109) = 0;
  *(v3 + 111) = 0;
  *(v3 + 112) = 0x7FEFFFFFFFFFFFFFLL;
  v4 = (v3 + 112);
  v5 = [*(v3 + 40) newTimer];
  *(a1 + 128) = 0u;
  *(a1 + 120) = v5;
  *(a1 + 144) = 0u;
  v7 = sub_100011660(v5, v6);
  sub_100185AC0(v7, &v9);
  sub_1000B9370(v9, "CompanionStateSyncInterval", v4);
  if (v10)
  {
    sub_100008080(v10);
  }

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1005F4258;
  v8[3] = &unk_102449A78;
  v8[4] = a1;
  [*(a1 + 120) setHandler:v8];
  sub_100D8556C();
}

void sub_1005F40CC(_Unwind_Exception *a1)
{
  v4 = *(v1 + 144);
  *(v1 + 144) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(v1 + 136);
  *(v1 + 136) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *v2;
  *v2 = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_1005F482C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1005F41AC(uint64_t a1, char *a2, void *a3)
{
  *a1 = off_102463C58;
  sub_10000EC00((a1 + 8), a2);
  *(a1 + 32) = a3;
  *(a1 + 40) = [a3 silo];
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a1 + 88;
  *(a1 + 104) = 0;
  *(a1 + 108) = 0;
  return a1;
}

void sub_1005F423C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1005F4280(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018E43B0();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLCompanionNotifier::onDataProtectionNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018E43C4();
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLCompanionNotifier::onDataProtectionNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  if (*a2 == 1)
  {
    *(a4 + 109) = *(a3 + 4);
    if (qword_102637068)
    {
      v9 = [qword_102637068 isConnected];
    }

    else
    {
      v9 = 0;
    }

    sub_1005F4A20(a4, v9);
  }

  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1005F4474(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*(a4 + 32) "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018E43B0();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLCompanionNotifier::onFitnessTrackingNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018E43C4();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLCompanionNotifier::onFitnessTrackingNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_1005F59A4(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_1005F4640(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(a4[4] "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_1018E43B0();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 1;
    v7 = _os_activity_create(dword_100000000, "CL: CLCompanionNotifier::onMotionStateObserverNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v7, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_1018E43C4();
    }

    v8 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v12 = 0;
      v13 = 2082;
      v14 = "";
      v15 = 2082;
      v16 = "activity";
      v17 = 2050;
      v18 = a4;
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLCompanionNotifier::onMotionStateObserverNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v10 = 0;
  }

  (*(*a4 + 29))(a4, a2, a3);
  if (v10 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

uint64_t sub_1005F482C(uint64_t a1)
{
  *a1 = off_102463C58;
  [*(a1 + 48) invalidate];

  sub_10018F070(a1 + 80, *(a1 + 88));
  sub_10047BD74(a1 + 56, *(a1 + 64));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

CLCompanionTransport *sub_1005F48B0(uint64_t a1, uint64_t a2)
{
  result = [[CLCompanionTransport alloc] initWithSilo:*(a1 + 40) iDSService:a2];
  qword_102637068 = result;
  if (result)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1005F49F0;
    v6[3] = &unk_1024638D8;
    v6[4] = a1;
    [(CLCompanionTransport *)result setReceivedMessageHandler:v6];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1005F4A18;
    v5[3] = &unk_1024638F8;
    v5[4] = a1;
    [qword_102637068 setConnectionUpdateHandler:v5];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1005F4FE4;
    v4[3] = &unk_1024638F8;
    v4[4] = a1;
    return [qword_102637068 setDeviceNearbyHandler:v4];
  }

  return result;
}

void sub_1005F4A20(uint64_t a1, uint64_t a2)
{
  v3 = qword_102637068;
  if (qword_102637068)
  {
    if (a2 && (v5 = [qword_102637068 pairedDevice], v3 = qword_102637068, v5))
    {
      v6 = [objc_msgSend(objc_msgSend(qword_102637068 "pairedDevice")];
      v3 = qword_102637068;
    }

    else
    {
      v6 = "Unknown";
    }

    v7 = *(a1 + 111);
    if ([v3 pairedDevice])
    {
      v8 = [qword_102637068 pairedDevice];
      if (v8)
      {
        objc_msgSend_operatingSystemVersion(v8);
        v9 = *buf;
      }

      else
      {
        v9 = 0;
        memset(buf, 0, 24);
      }
    }

    else
    {
      v9 = 0;
    }

    if ([qword_102637068 pairedDevice])
    {
      v10 = [qword_102637068 pairedDevice];
      if (v10)
      {
        objc_msgSend_operatingSystemVersion(v10);
        v11 = *v50;
      }

      else
      {
        v11 = 0;
        v49 = 0;
        *v50 = 0;
        *&v50[8] = 0;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = (v7 & 1) == 0;
    if ([qword_102637068 pairedDevice])
    {
      v13 = [qword_102637068 pairedDevice];
      if (v13)
      {
        objc_msgSend_operatingSystemVersion(v13);
        v14 = v48;
      }

      else
      {
        v14 = 0;
        v46 = 0;
        v47 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = sub_1005F52D4(a1);
    LODWORD(v49) = 5;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    memset(buf, 0, sizeof(buf));
    buf[0] = a2;
    (*(*a1 + 152))(a1, &v49, buf, 1, 0xFFFFFFFFLL, 0);
    LODWORD(v49) = 6;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v56 = 0u;
    memset(&buf[16], 0, 32);
    buf[0] = a2;
    buf[1] = v12;
    *&buf[2] = 0;
    *&buf[4] = v9;
    *&buf[8] = v11;
    *&buf[12] = v14;
    buf[16] = v15;
    *&buf[17] = 0;
    buf[19] = 0;
    (*(*a1 + 152))(a1, &v49, buf, 1, 0xFFFFFFFFLL, 0);
    (*(*a1 + 208))(a1, a2);
    v16 = [objc_msgSend(qword_102637068 "pairedDevice")];
    v17 = v16 == 6;
    v19 = sub_1000A23E0(v16, v18);
    sub_100E041F0(v19, a2, v17);
    v20 = sub_1005F540C();
    v21 = v20;
    v23 = sub_1000DA93C(v20, v22);
    if (v23)
    {
      v25 = sub_1000DA93C(v23, v24);
      sub_101240074(v25, a2, v6, v21);
    }

    v26 = sub_100ACCA54(v23, v24);
    if (v26)
    {
      v28 = sub_100ACCA54(v26, v27);
      sub_100ACCF3C(v28, a2, v21);
    }

    v29 = objc_autoreleasePoolPush();
    v30 = objc_alloc_init(ALActivityLog);
    [(ALActivityLog *)v30 setTimestamp:CFAbsoluteTimeGetCurrent()];
    [(ALActivityLog *)v30 setIdsStatus:objc_alloc_init(ALCLIDSStatus)];
    if (([*(a1 + 152) isEqualToString:{objc_msgSend(objc_msgSend(qword_102637068, "pairedDevice"), "uniqueIDOverride")}] & 1) == 0)
    {

      *(a1 + 152) = 0;
      *(a1 + 152) = [objc_msgSend(objc_msgSend(qword_102637068 "pairedDevice")];
      -[ALCLIDSStatus setPairedModelId:](-[ALActivityLog idsStatus](v30, "idsStatus"), "setPairedModelId:", [objc_msgSend(qword_102637068 "pairedDevice")]);
    }

    [(ALCLIDSStatus *)[(ALActivityLog *)v30 idsStatus] setConnectionStatus:a2];
    [-[CLServiceVendor proxyForService:](+[CLServiceVendor sharedInstance](CLServiceVendor "sharedInstance")];
    if (objc_opt_class())
    {
      v31 = IDSCopyLocalDeviceUniqueID();
      if (qword_1025D4440 != -1)
      {
        sub_1018E43EC();
      }

      v32 = qword_1025D4448;
      if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_DEFAULT))
      {
        [qword_102637068 pairedDeviceLastSeenTimestamp];
        v34 = v33;
        v35 = [objc_msgSend(objc_msgSend(qword_102637068 "pairedDevice")];
        v36 = [v31 UTF8String];
        *buf = 67110146;
        *&buf[4] = a2;
        *&buf[8] = 2048;
        *&buf[10] = v34;
        *&buf[18] = 2080;
        *&buf[20] = v6;
        *&buf[28] = 2080;
        *&buf[30] = v35;
        *&buf[38] = 2080;
        *&buf[40] = v36;
        _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEFAULT, "IDS connection update,status,%d,prevDisconnection,%f,modelID,%s,uniqueIDOverride,%s,localDeviceID,%s", buf, 0x30u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4440 != -1)
        {
          sub_1018E43EC();
        }

        v37 = qword_1025D4448;
        [qword_102637068 pairedDeviceLastSeenTimestamp];
        v39 = v38;
        v40 = [objc_msgSend(objc_msgSend(qword_102637068 "pairedDevice")];
        v41 = [v31 UTF8String];
        LODWORD(v49) = 67110146;
        HIDWORD(v49) = a2;
        *v50 = 2048;
        *&v50[2] = v39;
        *&v50[10] = 2080;
        *&v50[12] = v6;
        v51 = 2080;
        v52 = v40;
        v53 = 2080;
        v54 = v41;
        LODWORD(v44) = 48;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v37, 0, "IDS connection update,status,%d,prevDisconnection,%f,modelID,%s,uniqueIDOverride,%s,localDeviceID,%s", &v49, v44, v45, v46, v47);
        v43 = v42;
        sub_100152C7C("Generic", 1, 0, 2, "void CLCompanionNotifier::connectionUpdate(BOOL)", "%s\n", v42);
        if (v43 != buf)
        {
          free(v43);
        }
      }
    }

    objc_autoreleasePoolPop(v29);
  }
}

void sub_1005F4FEC(uint64_t a1, uint64_t a2)
{
  if (qword_102637068)
  {
    v3 = a2;
    if ([qword_102637068 pairedDevice])
    {
      v4 = [objc_msgSend(qword_102637068 "pairedDevice")];
    }

    else
    {
      v4 = 0;
    }

    if ([qword_102637068 pairedDevice])
    {
      v5 = [objc_msgSend(qword_102637068 "pairedDevice")];
    }

    else
    {
      v5 = 0;
    }

    [qword_102637068 pairedDeviceLastNearbyTimestamp];
    v9 = 13;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    *&v11[8] = 0u;
    LOBYTE(buf) = v4;
    BYTE1(buf) = v3;
    BYTE2(buf) = v5;
    *(&buf + 3) = 0;
    HIBYTE(buf) = 0;
    *v11 = v6;
    (*(*a1 + 152))(a1, &v9, &buf, 1, 0xFFFFFFFFLL, 0);
    if (qword_1025D4440 != -1)
    {
      sub_1018E43EC();
    }

    v7 = qword_1025D4448;
    if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_DEFAULT))
    {
      [qword_102637068 pairedDeviceLastNearbyTimestamp];
      LODWORD(buf) = 67109376;
      HIDWORD(buf) = v3;
      *v11 = 2048;
      *&v11[2] = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "Companion proximity update, nearby %d, nearbyTimestamp %f", &buf, 0x12u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E4414(v3);
    }
  }
}

id sub_1005F51C4()
{
  result = qword_102637068;
  if (qword_102637068)
  {
    return [qword_102637068 isConnected];
  }

  return result;
}

uint64_t sub_1005F51D8(void *a1)
{
  *a1 = off_1024637E8;
  if (qword_102637068)
  {
  }

  v2 = a1[18];
  a1[18] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[17];
  a1[17] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[16];
  a1[16] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return sub_1005F482C(a1);
}

uint64_t sub_1005F52D4(uint64_t a1)
{
  if (*(a1 + 111))
  {
    return 0;
  }

  if (qword_102637068)
  {
    if ([qword_102637068 pairedDevice])
    {
      v2 = objc_msgSend_countByEnumeratingWithState_objects_count_(&off_1025542B8, 0);
      if (v2)
      {
        v3 = v2;
        v4 = MEMORY[0];
LABEL_7:
        v5 = 0;
        while (1)
        {
          if (MEMORY[0] != v4)
          {
            objc_enumerationMutation(&off_1025542B8);
          }

          if ([objc_msgSend(objc_msgSend(qword_102637068 "pairedDevice")])
          {
            return 0;
          }

          if (v3 == ++v5)
          {
            v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(&off_1025542B8);
            result = 1;
            if (v3)
            {
              goto LABEL_7;
            }

            return result;
          }
        }
      }
    }
  }

  return 1;
}

uint64_t sub_1005F540C()
{
  result = qword_102637068;
  if (qword_102637068)
  {
    result = [qword_102637068 pairedDevice];
    if (result)
    {
      result = objc_msgSend_countByEnumeratingWithState_objects_count_(&off_1025542D0, 0);
      if (result)
      {
        v1 = result;
        v2 = MEMORY[0];
        while (2)
        {
          for (i = 0; i != v1; i = i + 1)
          {
            if (MEMORY[0] != v2)
            {
              objc_enumerationMutation(&off_1025542D0);
            }

            if ([objc_msgSend(objc_msgSend(qword_102637068 "pairedDevice")])
            {
              return 1;
            }
          }

          v1 = objc_msgSend_countByEnumeratingWithState_objects_count_(&off_1025542D0);
          result = 0;
          if (v1)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  return result;
}

id sub_1005F5534(double a1, uint64_t a2, int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10)
{
  if (qword_1025D4440 != -1)
  {
    sub_1018E4544();
  }

  v18 = qword_1025D4448;
  if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_INFO))
  {
    *buf = 67110912;
    v33 = a3;
    v34 = 2048;
    v35 = [a4 length];
    v36 = 2048;
    v37 = a5;
    v38 = 1024;
    v39 = a6;
    v40 = 1024;
    v41 = a7;
    v42 = 1024;
    v43 = a8;
    v44 = 2048;
    v45 = a1;
    v46 = 1024;
    v47 = a9;
    _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_INFO, "Sending message,type,%d,size,%lu,priority,%ld,fireAndForget,%d,encrypt,%d,bypassConnectionCheck,%d,timeout,%f,nonWaking,%d", buf, 0x3Eu);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4440 != -1)
    {
      sub_1018E43EC();
    }

    v20 = qword_1025D4448;
    LODWORD(v25) = 67110912;
    HIDWORD(v25) = a3;
    *v26 = 2048;
    *&v26[2] = [a4 length];
    *&v26[10] = 2048;
    LOWORD(v27) = WORD1(a6);
    WORD1(v27) = 1024;
    HIDWORD(v27) = a7;
    LOWORD(v28) = 1024;
    HIWORD(v28) = a8;
    v29 = a1;
    v30 = 1024;
    v31 = a9;
    LODWORD(v24) = 62;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, v20, 1, "Sending message,type,%d,size,%lu,priority,%ld,fireAndForget,%d,encrypt,%d,bypassConnectionCheck,%d,timeout,%f,nonWaking,%d", &v25, v24, v25, *v26, *&v26[8], HIDWORD(a5), v27, v28);
    v22 = v21;
    sub_100152C7C("Generic", 1, 0, 2, "void CLCompanionNotifier::sendCompanionMessage(CLCompanionNotifier_Type::Type, NSData *, IDSMessagePriority, BOOL, BOOL, BOOL, CFTimeInterval, BOOL, CLCompanionTransportCompletionHandler) const", "%s\n", v21);
    if (v22 != buf)
    {
      free(v22);
    }
  }

  result = qword_102637068;
  if (qword_102637068)
  {
    LOBYTE(v23) = a9;
    return [qword_102637068 sendMessage:a4 type:a3 priority:a5 fireAndForget:a6 encrypt:a7 bypassConnectionCheck:a8 timeout:a1 nonWaking:v23 completionHandler:a10];
  }

  else if (a10)
  {
    return (*(a10 + 16))(a10, 0, 0);
  }

  return result;
}

uint64_t sub_1005F585C(_DWORD *a1)
{
  v1 = *a1 - 2;
  if (v1 > 3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return dword_101C81860[v1];
  }
}

void sub_1005F5894(uint64_t a1, int a2)
{
  v2 = 1.79769313e308;
  if (a2)
  {
    v2 = 10.0;
  }

  *(a1 + 112) = v2;
  v3 = (a1 + 112);
  [*(a1 + 120) setNextFireDelay:v2 interval:v2];
  if (qword_1025D4440 != -1)
  {
    sub_1018E4544();
  }

  v4 = qword_1025D4448;
  if (os_log_type_enabled(qword_1025D4448, OS_LOG_TYPE_DEBUG))
  {
    v5 = *v3;
    if (*v3 == 1.79769313e308)
    {
      v5 = 0.0;
    }

    v6 = 134217984;
    v7 = v5;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "timer interval,%f", &v6, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018E4558(v3);
  }
}

void sub_1005F59A4(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (!*a3)
  {
    *(a1 + 110) = *(a4 + 3);
    *(a1 + 111) = *(a4 + 2);
  }

  if (qword_102637068)
  {
    v5 = [qword_102637068 isConnected];
  }

  else
  {
    v5 = 0;
  }

  sub_1005F4A20(a1, v5);
}

void sub_1005F5DA4(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_1018E4924();
    }

    v4 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_FAULT))
    {
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = a3;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#CLCompanionNotifier IDS service failed to initialize, Error:%{public, location:escape_only}@}", &v9, 0x1Cu);
      if (qword_1025D47A0 != -1)
      {
        sub_1018E4938();
      }
    }

    v5 = off_1025D47A8;
    if (os_signpost_enabled(off_1025D47A8))
    {
      v9 = 68289282;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      v13 = 2114;
      v14 = a3;
      _os_signpost_emit_with_name_impl(dword_100000000, v5, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#CLCompanionNotifier IDS service failed to initialize", "{msg%{public}.0s:#CLCompanionNotifier IDS service failed to initialize, Error:%{public, location:escape_only}@}", &v9, 0x1Cu);
    }
  }

  else
  {
    if (qword_102658368)
    {

      qword_102658368 = 0;
    }

    qword_102658368 = a2;
    if (qword_1025D4200 != -1)
    {
      sub_1018E4670();
    }

    v8 = qword_1025D4208;
    if (os_log_type_enabled(qword_1025D4208, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 68289026;
      v10 = 0;
      v11 = 2082;
      v12 = "";
      _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLCompanionNotifier IDS became available so resuming silo (CLCompanionTransport)}", &v9, 0x12u);
    }

    [*(a1 + 32) resume];
  }
}

void *sub_1005F5FB8(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  result = sub_100058A40(a1, 0, a2, a3, a4, a5);
  *result = off_102463980;
  return result;
}

void sub_1005F60CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

BOOL sub_1005F61D4(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = a1 + 88;
  do
  {
    if (*(v5 + 32) >= a2)
    {
      v6 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < a2));
  }

  while (v5);
  if (v6 != a1 + 88 && *(v6 + 32) <= a2)
  {
    v13 = *(v6 + 48);
    v11 = v6 + 48;
    v12 = v13;
    if (!v13)
    {
      goto LABEL_24;
    }

    v14 = *a3;
    v15 = v11;
    do
    {
      if (*(v12 + 28) >= v14)
      {
        v15 = v12;
      }

      v12 = *(v12 + 8 * (*(v12 + 28) < v14));
    }

    while (v12);
    if (v15 == v11 || v14 < *(v15 + 28))
    {
LABEL_24:
      v15 = v11;
    }

    return v15 != v11;
  }

  else
  {
LABEL_8:
    if (qword_1025D47F0 != -1)
    {
      sub_1018E43B0();
    }

    v7 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
    {
      v8 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v8 = *v8;
      }

      v16 = 136446466;
      v17 = v8;
      v18 = 1026;
      v19 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "%{public}s; client %{public}d does not exist", &v16, 0x12u);
    }

    v9 = sub_10000A100(121, 0);
    result = 0;
    if (v9)
    {
      sub_1018E4B60(a1, a2);
      return 0;
    }
  }

  return result;
}

void sub_1005F64EC(_BYTE *a1, int *a2, _OWORD *a3, int a4, int a5)
{
  if ((a1[108] & 1) == 0)
  {
    v7 = a1 + 64;
    v6 = *(a1 + 8);
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = *a2;
    v9 = a1 + 64;
    do
    {
      if (*(v6 + 32) >= v8)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < v8));
    }

    while (v6);
    if (v9 == v7 || v8 < *(v9 + 8))
    {
LABEL_9:
      v12 = v13;
      memset(v13, 0, 32);
      sub_1005F7700(buf, a2, &v12);
      sub_10047D8C8((v7 - 8), buf);
    }

    if (a4)
    {
      operator new();
    }

    v10 = *(v9 + 9);
    *(v9 + 8) = 0;
    *(v9 + 9) = 0;
    if (v10)
    {
      sub_100008080(v10);
    }

    if (*(v9 + 7))
    {
      sub_1005F7270(a3);
    }
  }
}

void sub_1005F69FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_101865570(va);
  sub_101864718(v16 - 144);
  _Unwind_Resume(a1);
}

void sub_1005F6A28(uint64_t a1)
{
  if (*(a1 + 108) == 1)
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018E43B0();
    }

    v2 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v3 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v3 = *v3;
      }

      *buf = 136315138;
      v32 = v3;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEBUG, "%s; already shutdown; not listing clients", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E4D80(a1);
    }
  }

  else
  {
    if (qword_1025D47F0 != -1)
    {
      sub_1018E43B0();
    }

    v4 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      v5 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v5 = *v5;
      }

      v6 = *(a1 + 96);
      *buf = 136315394;
      v32 = v5;
      v33 = 2048;
      v34[0] = v6;
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEBUG, "%s; listing clients, num clients: %zu", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018E4C60(a1);
    }

    v7 = *(a1 + 80);
    if (v7 != (a1 + 88))
    {
      v8 = (a1 + 8);
      do
      {
        v9 = v7[5];
        if (v9 != v7 + 6)
        {
          do
          {
            if (qword_1025D47F0 != -1)
            {
              sub_1018E43C4();
            }

            v10 = qword_1025D47F8;
            if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
            {
              v11 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v11 = *v8;
              }

              v12 = *(v7 + 8);
              v13 = *(v9 + 7);
              *buf = 136315650;
              v32 = v11;
              v33 = 1024;
              LODWORD(v34[0]) = v12;
              WORD2(v34[0]) = 1024;
              *(v34 + 6) = v13;
              _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "%s; clients, id: %d, notification: %d", buf, 0x18u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D47F0 != -1)
              {
                sub_1018E43C4();
              }

              v17 = (a1 + 8);
              if (*(a1 + 31) < 0)
              {
                v17 = *v8;
              }

              v18 = *(v7 + 8);
              v19 = *(v9 + 7);
              v25 = 136315650;
              v26 = v17;
              v27 = 1024;
              v28 = v18;
              v29 = 1024;
              v30 = v19;
              _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 2, "%s; clients, id: %d, notification: %d", &v25, 24, v24);
              v21 = v20;
              sub_100152C7C("Generic", 1, 0, 2, "virtual void CLNotifier<CLCompanionNotifier_Type::Notification, CLCompanionNotifier_Type::NotificationData, char, CLCompanionNotifier_Type::RegistrationInfo>::listClients() [Notification_T = CLCompanionNotifier_Type::Notification, NotificationData_T = CLCompanionNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = CLCompanionNotifier_Type::RegistrationInfo]", "%s\n", v20);
              if (v21 != buf)
              {
                free(v21);
              }
            }

            v14 = v9[1];
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
                v15 = v9[2];
                v16 = *v15 == v9;
                v9 = v15;
              }

              while (!v16);
            }

            v9 = v15;
          }

          while (v15 != v7 + 6);
        }

        v22 = v7[1];
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
            v23 = v7[2];
            v16 = *v23 == v7;
            v7 = v23;
          }

          while (!v16);
        }

        v7 = v23;
      }

      while (v23 != (a1 + 88));
    }
  }
}

double sub_1005F6F04(uint64_t a1, double **a2)
{
  v2 = *a2;
  result = **a2;
  v4 = 0.0;
  while (v2 != a2[1])
  {
    v4 = v4 + v2[2];
    v2 += 3;
  }

  return result;
}

uint64_t sub_1005F6F30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1005F7004(uint64_t a1, double **a2)
{
  v2 = a2[1];
  result = **a2;
  v4 = 0.0;
  if (*a2 != v2)
  {
    v5 = *a2;
    do
    {
      v4 = v4 + v5[2];
      v5 += 3;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_1005F7054(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005F7138(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1005F7224(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1005F7344(void *a1, int *a2, void *a3)
{
  if ((*(a1 + 108) & 1) == 0)
  {
    v5 = a1 + 8;
    v4 = a1[8];
    if (v4)
    {
      v8 = *a2;
      v9 = a1 + 8;
      do
      {
        if (*(v4 + 32) >= v8)
        {
          v9 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 32) < v8));
      }

      while (v4);
      if (v9 != v5 && v8 >= *(v9 + 8))
      {
        v39 = v9;
        v10 = sub_1000589A4(a3);
        (*(*a1 + 184))(a1, a2, v10, v9 + 10);
        v11 = v9[5];
        if (v11 != v9 + 6)
        {
          v12 = a1 + 11;
          v13 = a1 + 1;
          do
          {
            v14 = *v12;
            if (!*v12)
            {
              goto LABEL_18;
            }

            v15 = *(v11 + 8);
            v16 = a1 + 11;
            do
            {
              if (*(v14 + 32) >= v15)
              {
                v16 = v14;
              }

              v14 = *(v14 + 8 * (*(v14 + 32) < v15));
            }

            while (v14);
            if (v16 != v12 && (v17 = *(v16 + 8), v15 >= v17))
            {
              v38 = v16;
              sub_1000593D8(a1, &v38, &v39, a3);
              v21 = a1[8];
              if (!v21)
              {
                return;
              }

              v22 = *a2;
              v23 = v5;
              do
              {
                if (*(v21 + 32) >= v22)
                {
                  v23 = v21;
                }

                v21 = *(v21 + 8 * (*(v21 + 32) < v22));
              }

              while (v21);
              if (v23 == v5 || v22 < *(v23 + 32))
              {
                return;
              }

              v39 = v23;
              v25 = *(v23 + 48);
              v11 = (v23 + 48);
              v24 = v25;
              if (v25)
              {
                v26 = v11;
                v27 = v24;
                do
                {
                  if (*(v27 + 32) >= v17)
                  {
                    v26 = v27;
                  }

                  v27 = *(v27 + 8 * (*(v27 + 32) < v17));
                }

                while (v27);
                if (v26 == v11 || v17 < *(v26 + 8))
                {
                  do
                  {
                    v28 = *(v24 + 32);
                    v29 = v17 < v28;
                    v30 = v17 >= v28;
                    if (v29)
                    {
                      v11 = v24;
                    }

                    v24 = *(v24 + 8 * v30);
                  }

                  while (v24);
                }

                else
                {
                  v31 = v26[1];
                  if (v31)
                  {
                    do
                    {
                      v11 = v31;
                      v31 = *v31;
                    }

                    while (v31);
                  }

                  else
                  {
                    do
                    {
                      v11 = v26[2];
                      v32 = *v11 == v26;
                      v26 = v11;
                    }

                    while (!v32);
                  }
                }
              }
            }

            else
            {
LABEL_18:
              v38 = a1 + 11;
              if (qword_1025D47F0 != -1)
              {
                sub_1018E43C4();
              }

              v18 = qword_1025D47F8;
              if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_FAULT))
              {
                v19 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v19 = *v13;
                }

                v20 = *(v11 + 8);
                *buf = 136446466;
                v45 = v19;
                v46 = 1026;
                v47 = v20;
                _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "%{public}s; unknown client %{public}d", buf, 0x12u);
              }

              if (sub_10000A100(121, 0))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D47F0 != -1)
                {
                  sub_1018E43C4();
                }

                v33 = a1 + 1;
                if (*(a1 + 31) < 0)
                {
                  v33 = *v13;
                }

                v34 = *(v11 + 8);
                v40 = 136446466;
                v41 = v33;
                v42 = 1026;
                v43 = v34;
                LODWORD(v37) = 18;
                _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, qword_1025D47F8, 17, "%{public}s; unknown client %{public}d", &v40, v37);
                v36 = v35;
                sub_100152C7C("Generic", 1, 0, 0, "void CLNotifier<CLCompanionNotifier_Type::Notification, CLCompanionNotifier_Type::NotificationData, char, CLCompanionNotifier_Type::RegistrationInfo>::invokeClientsWithData(const Notification_T &, CLCppContainer *) [Notification_T = CLCompanionNotifier_Type::Notification, NotificationData_T = CLCompanionNotifier_Type::NotificationData, NotificationInfo_T = char, RegistrationInfo_T = CLCompanionNotifier_Type::RegistrationInfo]", "%s\n", v35);
                if (v36 != buf)
                {
                  free(v36);
                }
              }
            }
          }

          while (v11 != v39 + 6);
        }
      }
    }
  }
}

uint64_t sub_1005F7700(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  sub_1005F7758((a1 + 8), a3);
  v5 = *(a3 + 32);
  *(a1 + 32) = *(a3 + 24);
  *(a1 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = *(a3 + 40);
  return a1;
}

void *sub_1005F7758(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1005F77B0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1005F77B0(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1005F7838(v5, (v5 + 8), v4 + 8, v4 + 2);
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

uint64_t sub_1005F7838(uint64_t **a1, uint64_t *a2, int *a3, _OWORD *a4)
{
  v4 = *sub_1005A4918(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void sub_1005F78F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_102463D38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1005F794C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    operator delete();
  }

  return result;
}

id sub_1005F796C(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (!v2)
  {
    return sub_1005F7B44(&v6, a1);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_1018E4E90();
    }

    v3 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C81800 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E4EA4();
    }
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_1018E4E90();
    }

    v5 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C81800 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E4F94();
    }
  }

  return 0;
}

id sub_1005F7B44(uint64_t a1, void *a2)
{
  if (![a2 cppObjectPtr] && objc_msgSend(objc_msgSend(a2, "compatibilityInfo"), "isEqual:", &off_10254ED50))
  {
    if ([objc_msgSend(a2 "serialized")] != 192)
    {
      sub_1018E5264();
    }

    [a2 setCppObjectPtr:{objc_msgSend(objc_msgSend(a2, "serialized"), "bytes")}];
  }

  return [a2 cppObjectPtr];
}

id sub_1005F7BFC(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (!v2)
  {
    return sub_1005F7FD8(&v6, a1);
  }

  if (getenv("_INTERSILO_UNIT_TEST"))
  {
    if (qword_1025D41A0 != -1)
    {
      sub_1018E4E90();
    }

    v3 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C81830 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E53D8();
    }
  }

  else
  {
    if (qword_1025D41A0 != -1)
    {
      sub_1018E4E90();
    }

    v5 = qword_1025D41A8;
    if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218498;
      v8 = v2;
      v9 = 2048;
      v10 = 0;
      v11 = 2080;
      v12 = 0x8000000101C81830 & 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", buf, 0x20u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018E54C8();
    }
  }

  return 0;
}

id sub_1005F7DD4(void *a1)
{
  v2 = [a1 binaryVersion];
  [a1 sizeOfType];
  if (v2)
  {
    if (getenv("_INTERSILO_UNIT_TEST"))
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018E4E90();
      }

      v3 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C81830 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018E55B8();
      }
    }

    else
    {
      if (qword_1025D41A0 != -1)
      {
        sub_1018E4E90();
      }

      v5 = qword_1025D41A8;
      if (os_log_type_enabled(qword_1025D41A8, OS_LOG_TYPE_FAULT))
      {
        v6 = 134218498;
        v7 = v2;
        v8 = 2048;
        v9 = 0;
        v10 = 2080;
        v11 = 0x8000000101C81830 & 0x7FFFFFFFFFFFFFFFLL;
        _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_FAULT, "Mismatch of versions between encoded (%llu) and decoded (%llu) objects! This is possibly because the version has changed on one side and possibly broken ABI compatibility. Please update your type for %s accordingly", &v6, 0x20u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018E56A8();
      }
    }

    return 0;
  }

  else
  {

    return [a1 cppObjectPtr];
  }
}